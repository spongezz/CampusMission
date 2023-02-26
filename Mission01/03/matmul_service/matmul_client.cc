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

#include <chrono>
#include <iostream>
#include <memory>
#include <random>
#include <string>
#include <thread>
#include <vector>

#include <grpc/grpc.h>
#include <grpcpp/channel.h>
#include <grpcpp/client_context.h>
#include <grpcpp/create_channel.h>
#include <grpcpp/security/credentials.h>

#include "matmul.grpc.pb.h"

static uint64_t mat_rng[2] = {11ULL, 1181783497276652981ULL};

using grpc::Channel;
using grpc::ClientContext;
using grpc::ClientReader;
using grpc::ClientReaderWriter;
using grpc::ClientWriter;
using grpc::Status;
using matmul::IsOK;
using matmul::Matrix;

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

Matrix MakeMatrix(size_t rows, size_t cols, bool is_zero = true)
{
  std::vector<float> m;
  Matrix res;
  res.set_m_rows(rows);
  res.set_m_cols(cols);
  for (size_t i = 0; i < rows; ++i)
    for (size_t j = 0; j < cols; ++j)
      m.push_back(is_zero ? 0.0 : (float)mat_drand());

  *res.mutable_m_data() = {m.begin(), m.end()};
  return res;
}

void printMatrix(const Matrix &X)
{
  for (size_t i = 0; i < X.m_rows(); i++)
  {
    for (size_t j = 0; j < X.m_cols(); j++)
    {
      std::cout << X.m_data(i * X.m_cols() + j) << ' ';
    }
    std::cout << std::endl;
  }
}

class MatMulClient
{
public:
  MatMulClient(std::shared_ptr<Channel> channel)
      : stub_(matmul::Mat_Mul::NewStub(channel))
  {
  }

  void SetWeight(Matrix *W)
  {
    ClientContext context;
    IsOK ok;
    Status status = stub_->set_weight(&context, *W, &ok);
    if (!status.ok())
    {
      std::cout << "SetWeight rpc failed." << std::endl;
      return;
    }
    set_W_rows(W->m_rows());
    set_W_cols(W->m_cols());
  }

  void MatMulWithX(Matrix *X, Matrix *res)
  {
    ClientContext context;
    assert(X->m_rows() == this->W_cols);
    Status status = stub_->matmul_with_x(&context, *X, res);
  }

private:
  void set_W_rows(size_t rows) { W_rows = rows; }
  void set_W_cols(size_t cols) { W_cols = cols; }
  size_t W_rows;
  size_t W_cols;
  std::unique_ptr<matmul::Mat_Mul::Stub> stub_;
};

int main(int argc, char **argv)
{
  // Expect only arg: --db_path=path/to/route_guide_db.json.
  MatMulClient guide(
      grpc::CreateChannel("localhost:50051",
                          grpc::InsecureChannelCredentials()));

  std::cout << "-------------- Set_Weight --------------" << std::endl;
  Matrix W = MakeMatrix(4, 3, false);
  printMatrix(W);
  guide.SetWeight(&W);

  std::cout << "-------------- MatMulWithX --------------" << std::endl;
  Matrix X = MakeMatrix(3, 3, false);
  printMatrix(X);
  Matrix res;
  guide.MatMulWithX(&X, &res);
  std::cout << "-------------- MatMulWithX --------------" << std::endl;
  printMatrix(res);

  return 0;
}
