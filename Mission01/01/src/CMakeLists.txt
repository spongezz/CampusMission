SET(LIBRARY_SRC matmul.cpp)

ADD_LIBRARY(matmul SHARED ${LIBRARY_SRC})

INCLUDE_DIRECTORIES("../../../include")
LINK_DIRECTORIES("../../../lib")