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
include build/test/CMakeFiles/perf_counters_gtest.dir/depend.make

# Include the progress variables for this target.
include build/test/CMakeFiles/perf_counters_gtest.dir/progress.make

# Include the compile flags for this target's objects.
include build/test/CMakeFiles/perf_counters_gtest.dir/flags.make

build/test/CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.o: build/test/CMakeFiles/perf_counters_gtest.dir/flags.make
build/test/CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.o: /home/zhuangzhong/Netease/benchmark/test/perf_counters_gtest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhuangzhong/Netease/Mission01/01/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object build/test/CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.o"
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.o -c /home/zhuangzhong/Netease/benchmark/test/perf_counters_gtest.cc

build/test/CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.i"
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhuangzhong/Netease/benchmark/test/perf_counters_gtest.cc > CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.i

build/test/CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.s"
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhuangzhong/Netease/benchmark/test/perf_counters_gtest.cc -o CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.s

# Object files for target perf_counters_gtest
perf_counters_gtest_OBJECTS = \
"CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.o"

# External object files for target perf_counters_gtest
perf_counters_gtest_EXTERNAL_OBJECTS =

build/test/perf_counters_gtest: build/test/CMakeFiles/perf_counters_gtest.dir/perf_counters_gtest.cc.o
build/test/perf_counters_gtest: build/test/CMakeFiles/perf_counters_gtest.dir/build.make
build/test/perf_counters_gtest: build/src/libbenchmark.a
build/test/perf_counters_gtest: lib/libgmock_main.a
build/test/perf_counters_gtest: lib/libgmock.a
build/test/perf_counters_gtest: lib/libgtest.a
build/test/perf_counters_gtest: build/test/CMakeFiles/perf_counters_gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhuangzhong/Netease/Mission01/01/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable perf_counters_gtest"
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/perf_counters_gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build/test/CMakeFiles/perf_counters_gtest.dir/build: build/test/perf_counters_gtest

.PHONY : build/test/CMakeFiles/perf_counters_gtest.dir/build

build/test/CMakeFiles/perf_counters_gtest.dir/clean:
	cd /home/zhuangzhong/Netease/Mission01/01/test/build/build/test && $(CMAKE_COMMAND) -P CMakeFiles/perf_counters_gtest.dir/cmake_clean.cmake
.PHONY : build/test/CMakeFiles/perf_counters_gtest.dir/clean

build/test/CMakeFiles/perf_counters_gtest.dir/depend:
	cd /home/zhuangzhong/Netease/Mission01/01/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhuangzhong/Netease/Mission01/01/test /home/zhuangzhong/Netease/benchmark/test /home/zhuangzhong/Netease/Mission01/01/test/build /home/zhuangzhong/Netease/Mission01/01/test/build/build/test /home/zhuangzhong/Netease/Mission01/01/test/build/build/test/CMakeFiles/perf_counters_gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build/test/CMakeFiles/perf_counters_gtest.dir/depend

