# GRPC matmul service

## How To Build

```
cd matmul_service/cmake/build
cmake ../..
make
```

## How To Test Using ghz

```
cd cmake/build
cmake ../..
make

# generate test data
python generate_data.py

# open server in container(need to copy matmul_server to /user/bin in advance)

sudo docker run -d -p 50051:50051 ubuntu_netease matmul_server

# test set_weight
ghz --insecure --proto ../../../protos/matmul.proto --call matmul.Mat_Mul.set_weight -D data.json 0.0.0.0:50051

ghz --insecure --proto ../../../protos/matmul.proto --call matmul.Mat_Mul.matmul_with_x -D data.json 0.0.0.0:50051

```