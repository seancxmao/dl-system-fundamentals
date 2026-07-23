# Inside Deep Learning Systems

## Background

### 核心理念
这个项目的重点，不是学习高层深度学习框架（如PyTorch或JAX）的API，也不是各种DL模型（MLP、CNN、Transformer等等），而是深入探究深度学习系统的内部工作原理。

为了深入理解一个深度学习模型是如何被训练并最终运行起来的，从第一性原理出发，打开黑盒，穿越不同抽象层级，从高层框架（PyTorch），直到AI软件栈的最底层（CUDA）。最终，理解PyTorch的一行代码是如何在GPU上执行的，不同抽象层级之间是如何映射的。

### 任务和模型

基于以上动机，选择尽量简单的任务和模型，把重点放在深度学习系统内部工作原理上。

任务选MNIST，这是深度学习的果蝇。

模型选择MLP。MLP是现代深度学习中最基本的计算单元之一，也是Transformer的一个核心组件。

## 子项目

### 01 pytorch

用PyTorch API实现MLP。

### 02 manual
用NumPy从零开始实现MLP。

### 03 autograd
先用NumPy从零开始实现一个深度学习框架，然后再利用该框架实现MLP。该框架支持动态计算图（define-by-run），自动微分（auto differentiation，也叫autograd）。

[03-autograd](03-autograd/README.md)

### 04 blas
利用cuBLAS实现kernel。其他的选项还有cuDNN或者CUTLASS，cuBLAS的抽象层级介于两者之间。

### 05 cuda
直接面对CUDA programming model，不使用库实现kernel。这是整个AI软件栈的最底层。

## 总结

### Key Takeaway

至此，深入理解了深度学习系统内部的工作原理。虽然生产级的深度学习模型和深度学习系统，要复杂得多，但是很多核心的基本原理已经能够体现出来：

* 模型的本质是分层表示学习
* 训练是通过梯度下降在假设空间中搜索最优解
* 用高层框架API写一行代码，底层到底发生什么，如何穿越整个软件栈的层次结构已经清晰

### Next Step

LLM是最重要的AI workload，所以下一步的目标是深入理解LLM workload。
