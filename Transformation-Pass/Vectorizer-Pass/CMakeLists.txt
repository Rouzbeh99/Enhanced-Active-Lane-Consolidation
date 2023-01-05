cmake_minimum_required(VERSION 3.8)
project(ALC_Vectorizer)



# Add LLVM to build.
find_package(LLVM REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)
include_directories(${LLVM_INCLUDE_DIRS} ${CMAKE_SOURCE_DIR})
add_definitions(${LLVM_DEFINITIONS})

link_directories(${CMAKE_BINARY_DIR}/SVE-Vectorizer)
link_directories(${CMAKE_BINARY_DIR}/Iterative_ALC)
link_directories(${CMAKE_BINARY_DIR}/Simple_ALC)
link_directories(${CMAKE_BINARY_DIR}/IntrinsicCallGenerator)
link_directories(${CMAKE_BINARY_DIR}/ALC_Analysis)

add_subdirectory(${CMAKE_SOURCE_DIR}/SVE-Vectorizer)
add_subdirectory(${CMAKE_SOURCE_DIR}/Iterative_ALC)
add_subdirectory(${CMAKE_SOURCE_DIR}/Simple_ALC)
add_subdirectory(${CMAKE_SOURCE_DIR}/IntrinsicCallGenerator)
add_subdirectory(${CMAKE_SOURCE_DIR}/ALC_Analysis)

list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/SVE-Vectorizer")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/Iterative_ALC")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/Simple_ALC")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/IntrinsicCallGenerator")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/ALC_Analysis")

# Export compile commands db.
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Enable or disable clang tidy.
if (NOT DISABLE_CLANG_TIDY)
  set(CMAKE_CXX_CLANG_TIDY clang-tidy -checks=llvm-*)
endif()

# Collect MyLoopPass src.
set(srcs
        "${CMAKE_CURRENT_SOURCE_DIR}/ALC_Vectorizer.cpp"
        )

# Create the MyLoopPass library.
add_llvm_library(ALC_Vectorizer MODULE ${srcs}
  LINK_COMPONENTS
  SVE_Vectorizer
  Iterative_ALC
  Simple_ALC
  IntrinsicCallGenerator
  ALC_Analysis
  PLUGIN_TOOL
  opt)



