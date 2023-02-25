/*
 *
 * Copyright 2015 gRPC authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#include <algorithm>
#include <chrono>
#include <cmath>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

#include <matmul.hpp>
#include <grpc/grpc.h>
#include <grpcpp/security/server_credentials.h>
#include <grpcpp/server.h>
#include <grpcpp/server_builder.h>
#include <grpcpp/server_context.h>
#include "matmul.grpc.pb.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::ServerReader;
using grpc::ServerReaderWriter;
using grpc::ServerWriter;
using grpc::Status;
using matmul::IsOK;
using matmul::Matrix;

void Matrix2Vec(const Matrix *X, std::vector<float> &v)
{
  for (int i = 0; i < v.size(); i++)
    v[i] = X->m_data(i);
}

class MatMulImpl final : public matmul::Mat_Mul::Service
{
public:
  MatMulImpl() {}
  Status set_weight(ServerContext *context, const Matrix *_W, IsOK *response) override
  {
    W = *_W;
    response->set_isok(true);
    return Status::OK;
  }

  Status matmul_with_x(ServerContext *context, const Matrix *X, Matrix *result) override
  {
    size_t n_w_rows = W.m_rows();
    size_t n_w_cols = W.m_cols();
    size_t n_x_cols = X->m_cols();

    result->set_m_rows(n_w_cols);
    result->set_m_cols(n_x_cols);

    std::vector<float> w(n_w_rows * n_w_cols);
    std::vector<float> x(n_w_cols * n_x_cols);
    std::vector<float> res(n_w_rows * n_x_cols, 0.0);

    Matrix2Vec(&W, w);
    Matrix2Vec(X, x);
    mat_mul2(n_w_rows, n_w_cols, &*w.begin(), n_x_cols, &*x.begin(), &*res.begin());

    *result->mutable_m_data() = {res.begin(), res.end()};

    return Status::OK;
  }

private:
  Matrix W;
};

void RunServer()
{
  std::string server_address("0.0.0.0:50051");
  MatMulImpl service;
  ServerBuilder builder;
  builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
  builder.RegisterService(&service);
  std::unique_ptr<Server> server(builder.BuildAndStart());
  std::cout << "Server listening on " << server_address << std::endl;
  server->Wait();
}

int main(int argc, char **argv)
{
  RunServer();
  return 0;
}
