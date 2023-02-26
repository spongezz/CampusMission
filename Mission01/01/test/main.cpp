#include <matmul.hpp>
#include <iostream>
#include <benchmark/benchmark.h>
using namespace std;

static uint64_t mat_rng[2] = {11ULL, 1181783497276652981ULL};

static inline uint64_t xorshift128plus(uint64_t s[2])
{
    uint64_t x, y;
    x = s[0], y = s[1];
    s[0] = y;
    x ^= x << 23;
    s[1] = x ^ y ^ (x >> 17) ^ (y >> 26);
    y += s[1];
    return y;
}

static double mat_drand(void)
{
    return (xorshift128plus(mat_rng) >> 11) * (1.0 / 9007199254740992.0);
}

static float *mat_gen_random(int n_rows, int n_cols)
{
    float *m;
    int i, j;
    m = mat_init(n_rows, n_cols);
    for (i = 0; i < n_rows; ++i)
        for (j = 0; j < n_cols; ++j)
            m[i * n_cols + j] = mat_drand();
    return m;
}

static void BM_naive(benchmark::State &state)
{
    // Perform setup here
    int n = state.range(0);
    float *a, *b, *c;

    a = mat_gen_random(n, n);
    b = mat_gen_random(n, n);
    c = mat_init(n, n);

    for (auto _ : state)
    {
        // This code gets timed
        mat_mul0(n, n, a, n, b, c);
    }
}

static void BM_sdot(benchmark::State &state)
{
    // Perform setup here
    int n = state.range(0);
    float *a, *b, *c;

    a = mat_gen_random(n, n);
    b = mat_gen_random(n, n);
    c = mat_init(n, n);
    for (auto _ : state)
    {
        // This code gets timed
        mat_mul1(n, n, a, n, b, c);
    }
}

static void BM_blas(benchmark::State &state)
{
    // Perform setup here
    int n = state.range(0);
    float *a, *b, *c;

    a = mat_gen_random(5, n);
    b = mat_gen_random(n, n);
    c = mat_init(5, n);
    for (auto _ : state)
    {
        // This code gets timed
        mat_mul2(5, n, a, n, b, c);
    }
}

// Register the function as a benchmark
// BENCHMARK(BM_naive)->RangeMultiplier(10)->Range(10, 10000);
// BENCHMARK(BM_sdot)->RangeMultiplier(10)->Range(10, 10000);
BENCHMARK(BM_blas)->RangeMultiplier(10)->Range(10, 10000);

// Run the benchmark
BENCHMARK_MAIN();