cmake_minimum_required(VERSION 3.8)
project(IntrinsicCallGenerator)


# Add LLVM to build.
find_package(LLVM REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)
include_directories(${LLVM_INCLUDE_DIRS} ${CMAKE_SOURCE_DIR}/include)
add_definitions(${LLVM_DEFINITIONS})

# Export compile commands db.
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Collect MyLoopPass src.
set(srcs
        "${CMAKE_CURRENT_SOURCE_DIR}/IntrinsicCallGenerator.cpp"
        )

# Create the MyLoopPass library.
add_llvm_component_library(libLLVMIntrinsicCallGenerator MODULE ${srcs})
