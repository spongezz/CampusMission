# C++ Matmul shared library and benchmark test

## How to build
```
cmake .
make
cd test
cmake \
-DBENCHMARK_DOWNLOAD_DEPENDENCIES=on \
-DCMAKE_BUILD_TYPE=Release .
make
./test --benchmark_format=csv > benchmark.csv
python plot.py
```


## References:
https://github.com/attractivechaos/matmul
https://github.com/lakshayg/google_benchmark_plot
