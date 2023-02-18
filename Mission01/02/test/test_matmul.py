import matmul
import numpy as np
import pytest

size_list = [10, 100, 1000]
a = [np.random.normal(0, 1.0, size=(n, n)) for n in size_list]
b = [np.random.normal(0, 1.0, size=(n, n)) for n in size_list]
c = [np.dot(i, j) for i, j in zip(a, b)]
l = [(i, j, k) for i, j, k in zip(a, b, c)]


@pytest.mark.parametrize('ma, mb, mc', l)
def test_demo0(ma, mb, mc):
    c1 = matmul.matmul_naive(ma, mb)
    assert (c1 - mc < 1e-3).all()


@pytest.mark.parametrize('ma, mb, mc', l)
def test_demo1(ma, mb, mc):
    c1 = matmul.matmul_sdot(ma, mb)
    assert (c1 - mc < 1e-3).all()


@pytest.mark.parametrize('ma, mb, mc', l)
def test_demo2(ma, mb, mc):
    c1 = matmul.matmul_blas(ma, mb)
    assert (c1 - mc < 1e-3).all()
