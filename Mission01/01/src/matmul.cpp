#include "matmul.hpp"
#include <cblas.h>

void mat_destroy(float *m)
{
    delete (m);
}

float *mat_init(int n_rows, int n_cols)
{
    float *m = new float[n_rows * n_cols];
    return m;
}

float *mat_transpose(int n_rows, int n_cols, const float *a)
{
    int i, j;
    float *m;
    m = mat_init(n_cols, n_rows);
    for (i = 0; i < n_rows; ++i)
        for (j = 0; j < n_cols; ++j)
            m[j * n_rows + i] = a[i * n_cols + j];
    return m;
}

void mat_mul0(int n_a_rows, int n_a_cols, const float *a, int n_b_cols, const float *b, float *c)
{
    int i, j, k;
    for (i = 0; i < n_a_rows; ++i)
    {
        for (j = 0; j < n_b_cols; ++j)
        {
            float t = 0.0;
            for (k = 0; k < n_a_cols; ++k)
                t += a[i * n_a_cols + k] * b[k * n_b_cols + j];
            c[i * n_b_cols + j] = t;
        }
    }
}

void mat_mul1(int n_a_rows, int n_a_cols, const float *a, int n_b_cols, const float *b, float *c)
{
    int i, j, n_b_rows = n_a_cols;
    float *bT;
    bT = mat_transpose(n_b_rows, n_b_cols, b);
    for (i = 0; i < n_a_rows; i++)
    {
        for (j = 0; j < n_b_cols; j++)
        {
            c[i * n_b_cols + j] = cblas_sdot(n_a_cols, &a[i * n_a_cols], 1, &bT[j * n_b_rows], 1);
        }
    }
    mat_destroy(bT);
}

void mat_mul2(int n_a_rows, int n_a_cols, const float *a, int n_b_cols, const float *b, float *c)
{
    float n_b_rows = n_a_cols;
    cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, n_a_rows, n_b_cols, n_a_cols, 1.0f, a, n_a_rows, b, n_b_rows, 0.0f, c, n_a_rows);
}