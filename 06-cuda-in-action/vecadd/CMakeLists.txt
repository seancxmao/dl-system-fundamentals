cmake_minimum_required(VERSION 3.25)

project(cuda_learning LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)

add_executable(vecadd
    src/vecadd.cu
)

set_target_properties(vecadd PROPERTIES
    CUDA_SEPARABLE_COMPILATION ON
)
