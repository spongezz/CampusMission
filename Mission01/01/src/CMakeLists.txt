SET(LIBRARY_SRC matmul.cpp)

ADD_LIBRARY(matmul SHARED ${LIBRARY_SRC})

INCLUDE_DIRECTORIES("~/Desktop/Netease/include")
LINK_DIRECTORIES("~/Desktop/Netease/lib")