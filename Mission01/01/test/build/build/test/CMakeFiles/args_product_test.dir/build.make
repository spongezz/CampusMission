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
CMAKE_SOURCE_DIR = /home/zhuangzhong/Netease/Mission01/01/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhuangzhong/Netease/Mission01/01/test/build

# Include any dependencies generated for this target.
include build/test/CMakeFiles/args_product_test.dir/depend.make

# Include the progress variables for this target.
include build/test/CMakeFiles/args_product_test.dir/progress.make

# Include the compile flags for this target's objects.
include build/test/CMakeFiles/args_product_test.dir/flags.make

build/test/CMakeFiles/args_product_test.dir/args_product_test.cc.o: build/test/CMakeFiles/args_product_test.dir/flags.make
build/test/CMakeFiles/args_product_test.dir/args_product_test.cc.o: /home/zhuangzhong/Netease/benchmark/test/args_product_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhuangzhong/Netease/Mission01/01/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object build/test/CMakeFiles/args_product_test.dir/args_product_test.cc.o"
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/args_product_test.dir/args_product_test.cc.o -c /home/zhuangzhong/Netease/benchmark/test/args_product_test.cc

build/test/CMakeFiles/args_product_test.dir/args_product_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/args_product_test.dir/args_product_test.cc.i"
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhuangzhong/Netease/benchmark/test/args_product_test.cc > CMakeFiles/args_product_test.dir/args_product_test.cc.i

build/test/CMakeFiles/args_product_test.dir/args_product_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/args_product_test.dir/args_product_test.cc.s"
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhuangzhong/Netease/benchmark/test/args_product_test.cc -o CMakeFiles/args_product_test.dir/args_product_test.cc.s

# Object files for target args_product_test
args_product_test_OBJECTS = \
"CMakeFiles/args_product_test.dir/args_product_test.cc.o"

# External object files for target args_product_test
args_product_test_EXTERNAL_OBJECTS =

build/test/args_product_test: build/test/CMakeFiles/args_product_test.dir/args_product_test.cc.o
build/test/args_product_test: build/test/CMakeFiles/args_product_test.dir/build.make
build/test/args_product_test: build/src/libbenchmark_main.a
build/test/args_product_test: build/src/libbenchmark.a
build/test/args_product_test: build/test/CMakeFiles/args_product_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhuangzhong/Netease/Mission01/01/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable args_product_test"
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/args_product_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build/test/CMakeFiles/args_product_test.dir/build: build/test/args_product_test

.PHONY : build/test/CMakeFiles/args_product_test.dir/build

build/test/CMakeFiles/args_product_test.dir/clean:
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && $(CMAKE_COMMAND) -P CMakeFiles/args_product_test.dir/cmake_clean.cmake
.PHONY : build/test/CMakeFiles/args_product_test.dir/clean

build/test/CMakeFiles/args_product_test.dir/depend:
	cd /home/zhuangzhong/Netease/Mission01/01/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhuangzhong/Netease/Mission01/01/test /home/zhuangzhong/Netease/benchmark/test /home/zhuangzhong/Netease/Mission01/01/test/build /home/zhuangzhong/Netease/Mission01/01/test/build/build/test /home/zhuangzhong/Netease/Mission01/01/test/build/build/test/CMakeFiles/args_product_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build/test/CMakeFiles/args_product_test.dir/depend

