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
CMAKE_SOURCE_DIR = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/build"

# Include any dependencies generated for this target.
include CMakeFiles/Test_Generator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Test_Generator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Test_Generator.dir/flags.make

CMakeFiles/Test_Generator.dir/Test_Generator.cpp.o: CMakeFiles/Test_Generator.dir/flags.make
CMakeFiles/Test_Generator.dir/Test_Generator.cpp.o: ../Test_Generator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Test_Generator.dir/Test_Generator.cpp.o"
	/home/rouzbeh/Graduate/LLVM/llvm-project/build/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Generator.dir/Test_Generator.cpp.o -c "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/Test_Generator.cpp"

CMakeFiles/Test_Generator.dir/Test_Generator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Generator.dir/Test_Generator.cpp.i"
	/home/rouzbeh/Graduate/LLVM/llvm-project/build/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/Test_Generator.cpp" > CMakeFiles/Test_Generator.dir/Test_Generator.cpp.i

CMakeFiles/Test_Generator.dir/Test_Generator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Generator.dir/Test_Generator.cpp.s"
	/home/rouzbeh/Graduate/LLVM/llvm-project/build/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/Test_Generator.cpp" -o CMakeFiles/Test_Generator.dir/Test_Generator.cpp.s

# Object files for target Test_Generator
Test_Generator_OBJECTS = \
"CMakeFiles/Test_Generator.dir/Test_Generator.cpp.o"

# External object files for target Test_Generator
Test_Generator_EXTERNAL_OBJECTS =

Test_Generator.so: CMakeFiles/Test_Generator.dir/Test_Generator.cpp.o
Test_Generator.so: CMakeFiles/Test_Generator.dir/build.make
Test_Generator.so: CMakeFiles/Test_Generator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module Test_Generator.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Test_Generator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Test_Generator.dir/build: Test_Generator.so

.PHONY : CMakeFiles/Test_Generator.dir/build

CMakeFiles/Test_Generator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Test_Generator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Test_Generator.dir/clean

CMakeFiles/Test_Generator.dir/depend:
	cd "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/build" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/build" "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/build/CMakeFiles/Test_Generator.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Test_Generator.dir/depend

