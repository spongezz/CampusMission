#ifndef _MATMUL_H
#define _MATMUL_H

#include <iostream>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <xmmintrin.h>

float *mat_init(int n_rows, int n_cols);
void mat_destroy(float *m);
float *mat_transpose(int n_rows, int n_cols, const float *a);
void mat_mul0(int n_a_rows, int n_a_cols, const float *a, int n_b_cols, const float *b, float *c);
void mat_mul1(int n_a_rows, int n_a_cols, const float *a, int n_b_cols, const float *b, float *c);
void mat_mul2(int n_a_rows, int n_a_cols, const float *a, int n_b_cols, const float *b, float *c);

#endif