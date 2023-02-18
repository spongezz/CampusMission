# Python matmul

## 项目运行
1. 先cmake . 再make生成matmul.cpython-39-x86_64-linux-gnu.so, 再将该文件放到mat_mul文件夹下.
2. 将matmul.cpython-39-x86_64-linux-gnu.so放到test下, 在test下pytest可以生成测试结果
3. 将matmul.cpython-39-x86_64-linux-gnu.so放到mat_mul下, 在02下python setup.py sdist生成在dist文件夹下可生成mat_mul安装包
