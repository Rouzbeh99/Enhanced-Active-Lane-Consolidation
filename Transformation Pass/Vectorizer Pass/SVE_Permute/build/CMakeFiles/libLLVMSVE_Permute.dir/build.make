# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/build"

# Include any dependencies generated for this target.
include CMakeFiles/libLLVMSVE_Permute.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libLLVMSVE_Permute.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libLLVMSVE_Permute.dir/flags.make

CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.o: CMakeFiles/libLLVMSVE_Permute.dir/flags.make
CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.o: ../SVE_Permute.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.o"
	/home/rouzbeh/Graduate/LLVM/llvm-project/build/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.o -c "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/SVE_Permute.cpp"

CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.i"
	/home/rouzbeh/Graduate/LLVM/llvm-project/build/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/SVE_Permute.cpp" > CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.i

CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.s"
	/home/rouzbeh/Graduate/LLVM/llvm-project/build/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/SVE_Permute.cpp" -o CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.s

# Object files for target libLLVMSVE_Permute
libLLVMSVE_Permute_OBJECTS = \
"CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.o"

# External object files for target libLLVMSVE_Permute
libLLVMSVE_Permute_EXTERNAL_OBJECTS =

libLLVMSVE_Permute.so: CMakeFiles/libLLVMSVE_Permute.dir/SVE_Permute.cpp.o
libLLVMSVE_Permute.so: CMakeFiles/libLLVMSVE_Permute.dir/build.make
libLLVMSVE_Permute.so: CMakeFiles/libLLVMSVE_Permute.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libLLVMSVE_Permute.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libLLVMSVE_Permute.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libLLVMSVE_Permute.dir/build: libLLVMSVE_Permute.so

.PHONY : CMakeFiles/libLLVMSVE_Permute.dir/build

CMakeFiles/libLLVMSVE_Permute.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libLLVMSVE_Permute.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libLLVMSVE_Permute.dir/clean

CMakeFiles/libLLVMSVE_Permute.dir/depend:
	cd "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/build" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/build" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/SVE_Permute/build/CMakeFiles/libLLVMSVE_Permute.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/libLLVMSVE_Permute.dir/depend

