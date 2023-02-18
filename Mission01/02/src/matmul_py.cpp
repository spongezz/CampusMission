#include <pybind11/pybind11.h>
#include <pybind11/numpy.h>
#include <pybind11/stl.h>
#include <matmul.hpp>

namespace py = pybind11;

py ::array_t<float> matmul_naive(py ::array_t<float> a, py ::array_t<float> b)
{
    py::buffer_info buf_a = a.request(), buf_b = b.request();

    int n_a_rows = a.shape(0), n_a_cols = a.shape(1), n_b_cols = b.shape(1);
    auto c = py::array_t<float>({n_a_rows, n_b_cols});
    py::buffer_info buf_c = c.request();

    float *ptr_a = static_cast<float *>(buf_a.ptr);
    float *ptr_b = static_cast<float *>(buf_b.ptr);
    float *ptr_c = static_cast<float *>(buf_c.ptr);
    mat_mul0(n_a_rows, n_a_cols, ptr_a, n_b_cols, ptr_b, ptr_c);
    return c;
}

py ::array_t<float> matmul_sdot(py ::array_t<float> a, py ::array_t<float> b)
{
    py::buffer_info buf_a = a.request(), buf_b = b.request();

    int n_a_rows = a.shape(0), n_a_cols = a.shape(1), n_b_cols = b.shape(1);
    auto c = py::array_t<float>({n_a_rows, n_b_cols});
    py::buffer_info buf_c = c.request();

    float *ptr_a = static_cast<float *>(buf_a.ptr);
    float *ptr_b = static_cast<float *>(buf_b.ptr);
    float *ptr_c = static_cast<float *>(buf_c.ptr);
    mat_mul1(n_a_rows, n_a_cols, ptr_a, n_b_cols, ptr_b, ptr_c);
    return c;
}

py ::array_t<float> matmul_blas(py ::array_t<float> a, py ::array_t<float> b)
{
    py::buffer_info buf_a = a.request(), buf_b = b.request();

    int n_a_rows = a.shape(0), n_a_cols = a.shape(1), n_b_cols = b.shape(1);
    auto c = py::array_t<float>({n_a_rows, n_b_cols});
    py::buffer_info buf_c = c.request();

    float *ptr_a = static_cast<float *>(buf_a.ptr);
    float *ptr_b = static_cast<float *>(buf_b.ptr);
    float *ptr_c = static_cast<float *>(buf_c.ptr);
    mat_mul2(n_a_rows, n_a_cols, ptr_a, n_b_cols, ptr_b, ptr_c);
    return c;
}

PYBIND11_MODULE(matmul, m)
{
    m.doc() = "my matmul";
    m.def("matmul_naive", &matmul_naive);
    m.def("matmul_sdot", &matmul_sdot);
    m.def("matmul_blas", &matmul_blas);
}
