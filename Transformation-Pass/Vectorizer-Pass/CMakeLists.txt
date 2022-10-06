cmake_minimum_required(VERSION 3.8)
project(ALC_Vectorizer)


# Add LLVM to build.
find_package(LLVM REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)
include_directories(${LLVM_INCLUDE_DIRS} ${CMAKE_SOURCE_DIR})
add_definitions(${LLVM_DEFINITIONS})

link_directories(${CMAKE_BINARY_DIR}/Unroller)
link_directories(${CMAKE_BINARY_DIR}/SVE-Vectorizer)
link_directories(${CMAKE_BINARY_DIR}/SVE-ALC)
link_directories(${CMAKE_BINARY_DIR}/IntrinsicCallGenerator)

add_subdirectory(${CMAKE_SOURCE_DIR}/Unroller)
add_subdirectory(${CMAKE_SOURCE_DIR}/SVE-Vectorizer)
add_subdirectory(${CMAKE_SOURCE_DIR}/SVE-ALC)
add_subdirectory(${CMAKE_SOURCE_DIR}/IntrinsicCallGenerator)

list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/Unroller")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/SVE-Vectorizer")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/SVE-ALC")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_BINARY_DIR}/IntrinsicCallGenerator")

# Export compile commands db.
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Collect MyLoopPass src.
set(srcs
        "${CMAKE_CURRENT_SOURCE_DIR}/ALC_Vectorizer.cpp"
        )

# Create the MyLoopPass library.
add_llvm_library(ALC_Vectorizer MODULE ${srcs}
  LINK_COMPONENTS
  Unroller
  SVE_Vectorizer
  SVE_ALC
  IntrinsicCallGenerator
  PLUGIN_TOOL
  opt)



