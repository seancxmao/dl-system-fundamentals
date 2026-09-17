# DL Framework

## DL Overview

分层表示学习视角，是理解DL最经典、最直观的视角。《DL with Python, 3e》对深度学习有很精辟的解释。

### What is learning?

机器学习模型对数据进行变换，生成更加有用的表示。所谓有用，是使表示更接近期望的输出。

> A machine learning model transforms its input data into meaningful outputs, a process that is “learned” from exposure to known examples of inputs and outputs. Therefore, the central problem in machine learning and deep learning is to meaningfully transform data: in other words, to learn useful representations of the input data at hand—representations that get us closer to the expected output.

所谓学习，就是基于某种反馈信号，自动地在假设空间中搜索有效的变换和表示。

> Learning, in the context of machine learning, describes an automatic search process for data transformations that produce useful representations of some data, guided by some feedback signal—representations that are amenable to simpler rules solving the task at hand. Machine learning algorithms aren’t usually creative in finding these transformations; they’re merely searching through a predefined set of operations, called a hypothesis space.

> So that’s what machine learning is, concisely: searching for useful representations and rules over some input data, within a predefined space of possibilities, using guidance from a feedback signal.

### What is deep learning?

深度学习是机器学习的一种，所以深度学习本质上也是在学习表示。深度学习跟浅层学习的区别在于层数不同。浅层学习只学习1到2层，深度学习会学习很多层，数十甚至上百层。所以深度学习又被称为分层表示学习，或者层次表示学习。

> Deep learning is a specific subfield of machine learning; it’s a new take on learning representations from data, which emphasizes learning successive layers of increasingly meaningful representations. The “deep” in “deep learning” isn’t a reference to any kind of deeper understanding achieved by the approach; rather, it stands for this idea of successive layers of representations. How many layers contribute to a model of the data is called the depth of the model. Other appropriate names for the field could have been layered representations learning or hierarchical representations learning. Modern deep learning often involves tens or even hundreds of successive layers of representations, and they’re all learned automatically from exposure to training data. Meanwhile, other approaches to machine learning tend to focus on learning only one or two layers of representations of the data (say, taking a pixel histogram and then applying a classification rule); hence they’re sometimes called shallow learning.

深度学习模型被称为神经网络，是因为曾经受到脑神经科学的启发。但是现代深度学习模型和大脑并没有什么关系，理解神经网络不需要脑科学的知识。对我们来说，深度学习就是从数据学习表示的数学框架。

> In deep learning, these layered representations are learned via models called neural networks, structured in literal layers stacked on top of each other. The term neural network is a reference to neurobiology, but although some of the central concepts in deep learning were developed in part by drawing inspiration from our understanding of the brain (in particular, the visual cortex), deep learning models are not models of the brain. For our purposes, deep learning is a mathematical framework for learning representations from data.

### How deep learning works?

用3张图说明深度神经网络是如何工作的。

模型结构？

<img src="images/nn.png" width="480">

如何评估？loss function.

<img src="images/measure.png" width="480">

如何学习？通过optimizer实现backpropagation算法.

<img src="images/training.png" width="480">

### 深度学习的数学基础

深度学习是从数据学习表示的数学框架，其数学基础主要是线性代数、微积分、概率和统计等。

* 线性代数用来表示数据和描述变换
* 微积分用来训练神经网络
* 概率和统计，用来处理不确定性和解释数据模式

### 深度学习引发AI革命的特点

深度学习之所以能引发AI革命，是因为其具有某些特点。多年以后，我们也许不再使用神经网络，但是那时我们所用的技术将直接继承自现代深度学习及其核心概念。这些特点可以概括为三类：简单、可扩展、通用。

> Deep learning has several properties that justify its status as an AI revolution, and it’s here to stay. We may not be using neural networks many decades from now, but whatever we use will directly inherit from modern deep learning and its core concepts. These important properties can be broadly sorted into three categories

消除了特征工程，使ML工作流大大简化：

> Simplicity. Deep learning makes problem solving much easier, because it automates what used to be the most crucial step in a machine learning workflow: feature engineering.

对算力和数据的扩展性：

> Scalability. Deep learning is highly amenable to parallelization on GPUs or more  specialized machine learning hardware, so it can take full advantage of Moore’s law. In addition, deep learning models are trained by iterating over small batches of data, allowing them to be trained on datasets of arbitrary size.

通用性，基础模型能迁移、定制、微调：

> Versatility and reusability. Unlike many prior machine learning approaches, deep learning models can be trained on additional data without restarting from scratch, making them viable for continuous online learning—an important property for very large production models. Furthermore, trained deep learning models are repurposable and thus reusable: this is the big idea behind “foundation models”—large models trained on humongous amounts of data, which can be used across many new tasks with little retraining, or even none at all.

成功的技术有其共性，失败的技术却各有各的问题。

## DL Framework Overview

深度学习的发展离不开软件框架的支撑，曾经百花齐放的局面已经渐渐收敛。

现在最流行的深度学习框架无疑是PyTorch，它是现代AI software stack的核心之一。

> TF was the leading deep learning library for many years, used internally by Google and therefore optimized for production at scale. But PyTorch has gradually taken the lead, owing to its simplicity, flexibility and openness: it now dominates research papers and open source projects, which means that most new models are available in PyTorch first. As a result, the industry has also gradually shifted toward PyTorch.

Google已经从TensorFlow转向JAX。

> In recent years, Google has reduced its investments in TensorFlow, and focused more on JAX, another excellent deep learning library with a great mix of qualities for both research and production. However, its adoption is still low compared to PyTorch.

关于深度学习框架的未来，Francois Chollet在《DL with Python, 3e》给出了3个洞见，值得细细品味.

> Looking back on this chaotic history, we can ask, What’s next? Will a new framework arise tomorrow? Will we switch to a new programming language or a new hardware platform? If you ask me, three things today are certain:

> * Python has won. Its machine learning and data science ecosystem simply has too much momentum at this point. There won’t be a brand new language to replace it—at least not in the next 15 years. （Python赢了）

> * We’re in a multiframework world. It’s a good idea for you to learn a little bit about each one. It’s highly possible that new frameworks will gain popularity in the future, in addition to them; Apple’s recently released MLX could be one such example. （依然是多框架共存）

> * New chips may certainly arise in the future, alongside NVIDIA’s GPUs and Google’s TPUs. For instance, AMD’s GPU line likely has bright days ahead. But any new such chip will have to work with the existing frameworks to gain traction. New hardware is unlikely to disrupt your workflows. （软硬件协同）

## PyTorch

### PyTorch是什么

<img src="images/pytorch.png" width="480">

### PyTorch的过去、现在和未来

PyTorch为何成功，通常的解释是：

> PyTorch has gradually taken the lead, owing to its simplicity, flexibility and openness.

这个偏技术的解释可能只是一个直接的、浅层的原因，表象之下是否还有深层的原因？这是一个很值得研究的问题，也是一个相当复杂的问题。探究这个问题，可以对PyTorch的本质、优势以及发展方向有更加深入的理解，并且可以提升对未来出现的框架的洞察力和判断力。另外，很容易联想到，其他领域的技术框架也会有类似的情况，可以参考借鉴。鉴于问题的复杂性，而且PyTorch和AI还在飞速发展中，暂且记录一些思考和线索。

AI技术长期存在从学术研究、到开源社区、再到工业产品的知识/工具扩散链条。如果2012是Deep Learning的算法和计算范式转折点；2017是Transformer与现代AI framework生态的重要转折点；2022则是AI从学术研究驱动的技术浪潮进入工业规模frontier model竞争的显著转折点。2020年代以来，尤其foundation models/LLM时代，AI前沿研究越来越受到工业界的计算资源、数据、人才和工程能力约束，frontier AI已明显向工业界集中。

为什么恰恰是PyTorch这种一开始研究友好的工具最终成为工业界的主流基础设施？一个原因是，PyTorch的发展与AI的这种发展历程是同步的，是协同演化的。可以把PyTorch的发展压缩成四个阶段：

* 2016–17：Research-first
* 2018：Research → Production，PyTorch 1.0
* 2019–22：Industrial AI platform
* 2022–26：AI systems substrate

PyTorch博客《PyTorch: The Open Language of AI》

> When we look back at the early days of PyTorch, our main focus was initially on accelerated training and developer experience for AI researchers. We wanted to empower researchers to easily express their ideas (no matter how crazy they were) and accelerate training, enabling them to quickly validate those ideas. This evolved to be broader when we established PyTorch 1.0, brought in Caffe2 and expanded the mission to become ‘research to production’. With PyTorch 2.0, the scope and vision yet again expanded to include a major focus on performance, including an expansion in our compiler investments, heterogenous hardware support, which has led to torch.compile, TorchInductor and investment in the Triton project. Throughout all of this, we maintained a design philosophy that values: (1) Usability over performance; (2) Simple over easy; and (3) Python first with a focus on language interoperability.

> With the PyTorch Foundation joining the Linux Foundation in 2022, this set the stage for the next phase of growth for the project. [...]

换句话说，PyTorch的历史不仅是一个软件框架竞争的故事，也是AI从算法驱动的研究活动逐渐演化为大规模系统工程的一个缩影。

这也解释了为什么理解现代深度学习框架不能停留在Python API层面。今天的PyTorch已经覆盖模型与workload、自动微分、分布式执行、编译、GPU kernel以及runtime等多个层次。它越来越像是连接AI workloads与computing systems的桥梁。

并且PyTorch还在飞速发展中，其vision和ecosystem在扩大、roadmap在不断更新。

### PyTorch Foundation

> The PyTorch Foundation is the vendor-neutral home for the open source intelligence layer developers use for training, optimizing, serving, orchestrating, and running models on any chip in any cloud for any agent. As a community-driven hub hosted by the Linux Foundation, the PyTorch Foundation supports the core PyTorch framework alongside a growing portfolio of innovative projects including vLLM, DeepSpeed, Ray, Helion, and Safetensors. Through open governance, strategic support, and a global contributor community, the PyTorch Foundation empowers developers, researchers, and enterprises to build and deploy AI at scale.

## References

**《DL with Python, 3e》**

Deep Learning with Python, Third Edition. Francois Chollet, Matthew Watson. 2025. Francois Chollet是Keras作者。相比《HOMLP》和《MLP》，这本书最有价值的不是具体技术，而是对AI和DL的深刻洞见。

**《HOMLP》**

Hands-On Machine Learning with Scikit-Learn and PyTorch: Concepts, Tools, and Techniques to Build Intelligent Systems. Aurélien Géron. 2025.

**《MLP》**

Machine Learning with PyTorch and Scikit-Learn: Develop machine learning and deep learning models with Python. Sebastian Raschka, Yuxi (Hayden) Liu, Vahid Mirjalili. 2022.

《HOMLP》和《MLP》都是关于ML和DL通识和实战的好书，《HOMLP》比《MLP》内容更新，可以结合着看。两本书都是一半讲ML，一半讲DL，讲解DL时也捎带讲了LLM。不必从头到尾精读，可以根据需要侧重ML基础、DL基础还是LLM基础有选择地看。

**《DLP》**

Deep Learning with PyTorch, Second Edition: Training and applying deep learning and generative AI models. Luca Antiga, Eli Stevens, Howard Huang, Thomas Viehmann. 2026.

**《花书》**

Deep Learning (Adaptive Computation and Machine Learning series). Ian Goodfellow, Yoshua Bengio, Aaron Courville. 2016. 俗称《花书》。DL的经典教材，第一章关于DL的概览、历史和本质，值得一读。关于DL的其他内容，看更新的《UDL》和《DLFC》更好。

**《UDL》**

Understanding Deep Learning. Simon J.D. Prince. 2023. 俗称《UDL》. DL的理论、数学。相比《DLFC》，《UDL》对工程师更友好。

**《DLFC》**

Deep Learning: Foundations and Concepts. Christopher Bishop, Hugh Bishop. 2023. 相比《UDL》，更偏理论。

《花书》、《UDL》、《DLFC》都是偏理论和数学的经典书，《UDL》和《DLFC》更新，被称为new bible。

**《Math for ML》**

Mathematics for Machine Learning. Marc Peter Deisenroth. 2020. 关于ML和DL数学的经典书籍，《UDL》和《DLFC》都推荐它。

**《Math of ML》**

Mathematics of Machine Learning: Master linear algebra, calculus, and probability for machine learning. Tivadar Danka. 2025. 相比《Math for ML》，本书从更加基础的内容讲起，学习曲线没有那么陡峭。

**《Why Machines Learn》**

Why Machines Learn: The Elegant Math Behind Modern AI. Anil Ananthaswamy. 2024.

**《PyTorch: The Open Language of AI》**

By Joe Spisak (Meta), Luca Antiga (Lightning.AI). May 7, 2025.

https://pytorch.org/blog/pytorch-the-open-language-of-ai/

**《PyTorch Foundation in 2025: A Year in Review and the Road Ahead》**

By PyTorch Foundation. January 15, 2026.

https://pytorch.org/blog/pytorch-foundation-in-2025-a-year-in-review

**《Driving the Future of Open Source AI: An Update from PyTorch Foundation Projects》**

By PyTorch Foundation. July 22, 2026. 

https://pytorch.org/blog/driving-the-future-of-open-source-ai-an-update-from-pytorch-foundation-projects

**《Meta PyTorch Team 2026 H1 Roadmaps》**

https://dev-discuss.pytorch.org/t/meta-pytorch-team-2026-h1-roadmaps

**《Meta PyTorch Team 2026 H2 Roadmaps》**

https://dev-discuss.pytorch.org/t/meta-pytorch-team-2026-h2-roadmaps
