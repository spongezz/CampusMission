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
CMAKE_SOURCE_DIR = /home/zhuangzhong/Desktop/Netease/Mission01/02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhuangzhong/Desktop/Netease/Mission01/02

# Include any dependencies generated for this target.
include CMakeFiles/matmul.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/matmul.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matmul.dir/flags.make

CMakeFiles/matmul.dir/src/matmul_py.o: CMakeFiles/matmul.dir/flags.make
CMakeFiles/matmul.dir/src/matmul_py.o: src/matmul_py.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhuangzhong/Desktop/Netease/Mission01/02/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/matmul.dir/src/matmul_py.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matmul.dir/src/matmul_py.o -c /home/zhuangzhong/Desktop/Netease/Mission01/02/src/matmul_py.cpp

CMakeFiles/matmul.dir/src/matmul_py.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matmul.dir/src/matmul_py.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhuangzhong/Desktop/Netease/Mission01/02/src/matmul_py.cpp > CMakeFiles/matmul.dir/src/matmul_py.i

CMakeFiles/matmul.dir/src/matmul_py.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matmul.dir/src/matmul_py.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhuangzhong/Desktop/Netease/Mission01/02/src/matmul_py.cpp -o CMakeFiles/matmul.dir/src/matmul_py.s

# Object files for target matmul
matmul_OBJECTS = \
"CMakeFiles/matmul.dir/src/matmul_py.o"

# External object files for target matmul
matmul_EXTERNAL_OBJECTS =

matmul.cpython-39-x86_64-linux-gnu.so: CMakeFiles/matmul.dir/src/matmul_py.o
matmul.cpython-39-x86_64-linux-gnu.so: CMakeFiles/matmul.dir/build.make
matmul.cpython-39-x86_64-linux-gnu.so: /home/zhuangzhong/Desktop/Netease/Mission01/01/bin/libmatmul.so
matmul.cpython-39-x86_64-linux-gnu.so: /home/zhuangzhong/Desktop/Netease/lib/libopenblas.so
matmul.cpython-39-x86_64-linux-gnu.so: CMakeFiles/matmul.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhuangzhong/Desktop/Netease/Mission01/02/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module matmul.cpython-39-x86_64-linux-gnu.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matmul.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/strip /home/zhuangzhong/Desktop/Netease/Mission01/02/matmul.cpython-39-x86_64-linux-gnu.so

# Rule to build all files generated by this target.
CMakeFiles/matmul.dir/build: matmul.cpython-39-x86_64-linux-gnu.so

.PHONY : CMakeFiles/matmul.dir/build

CMakeFiles/matmul.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matmul.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matmul.dir/clean

CMakeFiles/matmul.dir/depend:
	cd /home/zhuangzhong/Desktop/Netease/Mission01/02 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhuangzhong/Desktop/Netease/Mission01/02 /home/zhuangzhong/Desktop/Netease/Mission01/02 /home/zhuangzhong/Desktop/Netease/Mission01/02 /home/zhuangzhong/Desktop/Netease/Mission01/02 /home/zhuangzhong/Desktop/Netease/Mission01/02/CMakeFiles/matmul.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matmul.dir/depend

