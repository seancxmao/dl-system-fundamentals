#include <iostream>

__global__
void vecAdd(float* a, float* b, float* c, int n)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
        c[i] = a[i] + b[i];
}

int main()
{
    constexpr int N = 8;

    float h_a[N];
    float h_b[N];
    float h_c[N];

    for (int i = 0; i < N; i++)
    {
        h_a[i] = i;
        h_b[i] = i * 10;
    }

    float *d_a, *d_b, *d_c;

    cudaMalloc(&d_a, N * sizeof(float));
    cudaMalloc(&d_b, N * sizeof(float));
    cudaMalloc(&d_c, N * sizeof(float));

    cudaMemcpy(d_a, h_a, N * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, h_b, N * sizeof(float), cudaMemcpyHostToDevice);

    vecAdd<<<1, N>>>(d_a, d_b, d_c, N);

    cudaMemcpy(h_c, d_c, N * sizeof(float), cudaMemcpyDeviceToHost);

    for (int i = 0; i < N; i++)
        std::cout << h_c[i] << std::endl;

    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);
}
