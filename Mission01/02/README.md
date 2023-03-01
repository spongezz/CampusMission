# Python matmul

## How to build
```
cmake .
make
cp matmul.cpython-39-x86_64-linux-gnu.so mat_mul
cp matmul.cpython-39-x86_64-linux-gnu.so test
cd test && pytest
cd ..
python setup.py sdist

```