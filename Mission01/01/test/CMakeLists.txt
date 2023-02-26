cmake_minimum_required(VERSION 3.16)
project(test)

find_library(libmatmul matmul ../bin)
find_library(libblas openblas ../../../lib)

include_directories(../../../include)
include_directories(../src)
add_subdirectory(../../../benchmark build)
add_executable(test main.cpp)

target_link_libraries(test benchmark::benchmark ${libmatmul} ${libblas})

