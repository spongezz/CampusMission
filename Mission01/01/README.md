# C++ Matmul shared library and benchmark test

## 项目运行
1. 在01目录下cmake .然后make生成bin下的libmatmul.so
2. cd test然后cmake .再mak生成可执行文件test。再./test --benchmark_format=csv > benchmark.csv后python plot.py可以生成figure.png


## References:
https://github.com/attractivechaos/matmul
https://github.com/lakshayg/google_benchmark_plot
