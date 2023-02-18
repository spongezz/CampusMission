cmake_minimum_required(VERSION 3.16)
project(test)

find_library(libmatmul matmul ../bin)
find_library(libblas openblas ../../../lib)

find_package(benchmark REQUIRED)
include_directories(benchmark/include)
include_directories(../src)
find_package(benchmark REQUIRED)
add_executable(test main.cpp)

target_link_libraries(test benchmark::benchmark)
target_link_libraries(test ${libmatmul})
target_link_libraries(test ${libblas})

