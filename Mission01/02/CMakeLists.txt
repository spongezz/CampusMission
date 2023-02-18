project(matmul)

find_library(libmatmul matmul ../01/bin)
find_library(libblas openblas ../../lib)

include_directories(../01/src)
add_subdirectory(pybind11)
pybind11_add_module(matmul src/matmul_py.cpp)
target_link_libraries(matmul ${libmatmul})
target_link_libraries(matmul ${libblas})