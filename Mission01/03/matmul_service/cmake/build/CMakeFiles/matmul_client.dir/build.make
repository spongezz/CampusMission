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
CMAKE_SOURCE_DIR = /home/zhuangzhong/Netease/Mission01/03/matmul_service

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhuangzhong/Netease/Mission01/03/matmul_service/cmake/build

# Include any dependencies generated for this target.
include CMakeFiles/matmul_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/matmul_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matmul_client.dir/flags.make

CMakeFiles/matmul_client.dir/matmul_client.cc.o: CMakeFiles/matmul_client.dir/flags.make
CMakeFiles/matmul_client.dir/matmul_client.cc.o: ../../matmul_client.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhuangzhong/Netease/Mission01/03/matmul_service/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/matmul_client.dir/matmul_client.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matmul_client.dir/matmul_client.cc.o -c /home/zhuangzhong/Netease/Mission01/03/matmul_service/matmul_client.cc

CMakeFiles/matmul_client.dir/matmul_client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matmul_client.dir/matmul_client.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhuangzhong/Netease/Mission01/03/matmul_service/matmul_client.cc > CMakeFiles/matmul_client.dir/matmul_client.cc.i

CMakeFiles/matmul_client.dir/matmul_client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matmul_client.dir/matmul_client.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhuangzhong/Netease/Mission01/03/matmul_service/matmul_client.cc -o CMakeFiles/matmul_client.dir/matmul_client.cc.s

# Object files for target matmul_client
matmul_client_OBJECTS = \
"CMakeFiles/matmul_client.dir/matmul_client.cc.o"

# External object files for target matmul_client
matmul_client_EXTERNAL_OBJECTS =

matmul_client: CMakeFiles/matmul_client.dir/matmul_client.cc.o
matmul_client: CMakeFiles/matmul_client.dir/build.make
matmul_client: libmm_grpc_proto.a
matmul_client: /home/zhuangzhong/.local/lib/libgrpc++_reflection.a
matmul_client: /home/zhuangzhong/.local/lib/libgrpc++.a
matmul_client: /home/zhuangzhong/.local/lib/libprotobuf.a
matmul_client: /home/zhuangzhong/.local/lib/libgrpc.a
matmul_client: /home/zhuangzhong/.local/lib/libcares.a
matmul_client: /home/zhuangzhong/.local/lib/libaddress_sorting.a
matmul_client: /home/zhuangzhong/.local/lib/libre2.a
matmul_client: /home/zhuangzhong/.local/lib/libupb.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_raw_hash_set.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_hashtablez_sampler.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_hash.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_city.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_low_level_hash.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_statusor.a
matmul_client: /home/zhuangzhong/.local/lib/libgpr.a
matmul_client: /home/zhuangzhong/.local/lib/libz.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_bad_variant_access.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_status.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_strerror.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_distributions.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_seed_sequences.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_internal_pool_urbg.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_internal_randen.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_internal_randen_hwaes.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_internal_randen_hwaes_impl.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_internal_randen_slow.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_internal_platform.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_internal_seed_material.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_random_seed_gen_exception.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_cord.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_bad_optional_access.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_cordz_info.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_cord_internal.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_cordz_functions.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_exponential_biased.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_cordz_handle.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_str_format_internal.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_synchronization.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_stacktrace.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_symbolize.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_debugging_internal.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_demangle_internal.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_graphcycles_internal.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_malloc_internal.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_time.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_strings.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_throw_delegate.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_int128.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_strings_internal.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_base.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_spinlock_wait.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_raw_logging_internal.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_log_severity.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_civil_time.a
matmul_client: /home/zhuangzhong/.local/lib/libabsl_time_zone.a
matmul_client: /home/zhuangzhong/.local/lib/libssl.a
matmul_client: /home/zhuangzhong/.local/lib/libcrypto.a
matmul_client: /home/zhuangzhong/Netease/Mission01/01/bin/libmatmul.so
matmul_client: /usr/local/lib/libopenblas.so
matmul_client: CMakeFiles/matmul_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhuangzhong/Netease/Mission01/03/matmul_service/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable matmul_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matmul_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matmul_client.dir/build: matmul_client

.PHONY : CMakeFiles/matmul_client.dir/build

CMakeFiles/matmul_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matmul_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matmul_client.dir/clean

CMakeFiles/matmul_client.dir/depend:
	cd /home/zhuangzhong/Netease/Mission01/03/matmul_service/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhuangzhong/Netease/Mission01/03/matmul_service /home/zhuangzhong/Netease/Mission01/03/matmul_service /home/zhuangzhong/Netease/Mission01/03/matmul_service/cmake/build /home/zhuangzhong/Netease/Mission01/03/matmul_service/cmake/build /home/zhuangzhong/Netease/Mission01/03/matmul_service/cmake/build/CMakeFiles/matmul_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matmul_client.dir/depend
