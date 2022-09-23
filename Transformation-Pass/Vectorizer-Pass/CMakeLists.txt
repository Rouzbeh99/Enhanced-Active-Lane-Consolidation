cmake_minimum_required(VERSION 3.8)
project(ALC_Vectorizer)


# Add LLVM to build.
find_package(LLVM REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)
include_directories(${LLVM_INCLUDE_DIRS} ${CMAKE_SOURCE_DIR}/include ${CMAKE_SOURCE_DIR}}/Unroller ${CMAKE_SOURCE_DIR}}/SVE-Vectorizer ${CMAKE_SOURCE_DIR}}/SVE-ALC ${CMAKE_SOURCE_DIR}}/IntrinsicCallGenerator )
add_definitions(${LLVM_DEFINITIONS})

link_directories(${CMAKE_SOURCE_DIR}/Unroller/build)
link_directories(${CMAKE_SOURCE_DIR}/SVE-Vectorizer/build)
link_directories(${CMAKE_SOURCE_DIR}/SVE-ALC/build)
link_directories(${CMAKE_SOURCE_DIR}/IntrinsicCallGenerator/build)

list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_SOURCE_DIR}/Unroller/build")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_SOURCE_DIR}/SVE-Vectorizer/build")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_SOURCE_DIR}/SVE-ALC/build")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_SOURCE_DIR}/IntrinsicCallGenerator/build")

# Export compile commands db.
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Collect MyLoopPass src.
set(srcs
        "${CMAKE_CURRENT_SOURCE_DIR}/ALC_Vectorizer.cpp"
        )

# Create the MyLoopPass library.
llvm_add_library(ALC_Vectorizer MODULE ${srcs} LINK_COMPONENTS Unroller  MODULE ${srcs} LINK_COMPONENTS SVE_Vectorizer MODULE ${srcs} LINK_COMPONENTS SVE_ALC MODULE ${srcs} LINK_COMPONENTS IntrinsicCallGenerator)



