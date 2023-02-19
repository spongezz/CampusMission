# Netease campus mission

## benchmark

```
# Go to the library root directory
$ cd benchmark
# Make a build directory to place the build output.
$ cmake -E make_directory "build"
# Generate build system files with cmake, and download any dependencies.
$ cmake -E chdir "build" cmake -DBENCHMARK_DOWNLOAD_DEPENDENCIES=on -DCMAKE_BUILD_TYPE=Release ../
# or, starting with CMake 3.13, use a simpler form: cmake -DCMAKE_BUILD_TYPE=Release -S . -B "build" #Build the library.
$ cmake --build "build" --config Release
# install the library globally
$ sudo cmake --build "build" --config Release --target install
```

## pybind11
```
$ cd pybind11
$ mkdir build
$ cd build
$ cmake ..
$ make