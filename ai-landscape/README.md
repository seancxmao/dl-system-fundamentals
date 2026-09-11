# AI Landscape

AI是一个宏大的领域，我们需要一张地图。

## AI简史

关于历史，这句话耐人寻味：

> Computing is pop culture. [...] Pop culture holds a disdain for history. Pop culture is all about identity and feeling like you’re participating. It has nothing to do with cooperation, the past or the future—it’s living in the present. I think the same is true of most people who write code for money. They have no idea where [their culture came from]. 
> —Alan Kay, in interview with Dr. Dobb’s Journal (2012)

翻译成中文：计算是一种流行文化。流行文化蔑视历史。流行文化关心的是身份认同，以及让你觉得正在参与其中。它与合作无关，也与过去或未来无关——它只活在当下。我认为，大多数靠写代码谋生的人也是如此。他们根本不知道自己的文化是从哪里来的。

为什么需要知道自己的文化从哪里来呢？正如福克纳说的：

> The past is never dead. It's not even past.

因为过去从来没有真正过去。它仍然存在于现在，并持续影响我们对现实的理解以及未来的选择。整个计算机产业，就是流行文化，风口来了又走，热词层出不穷，不断有新东西要学，让人眼花缭乱、应接不暇。放到AI领域，同样如此。了解历史，有助于我们获得某些洞察：

* 为什么有的思想胜出，有的思想消失，还有的思想会回归？
* 什么是短期炒作，什么是长期趋势？
* 技术名词背后的本质是什么？是新东西、还是旧东西？
* 什么会周期性地反复出现？
* 变化当中有什么是不变的？
* ......

AI历史不是背景知识，而是一种判断能力。

让我们看看AI的历史。《AIMA》给了一个快速了解AI历史的好方法——看看哪些人因为AI拿了图灵奖。这些反映了AI发展史上的重要里程碑（milestone）。

* Marvin Minsky (1969) and John McCarthy (1971) for defining the foundations of the field based on representation and reasoning; （表示和推理）
* Allen Newell and Herbert Simon (1975) for symbolic models of problem solving and human cognition; （符号模型、问题求解）
* Ed Feigenbaum and Raj Reddy (1994) for developing expert systems that encode human knowledge to solve real-world problems; （专家系统）
* Judea Pearl (2011) for developing probabilistic reasoning techniques that deal with uncertainty in a principled manner; （概率推理、处理不确定性）
* and finally Yoshua Bengio, Geoffrey Hinton, and Yann LeCun (2019) for making “deep learning” (multilayer neural networks) a critical part of modern computing. （深度学习、多层神经网络）

《AIMA》出版于2021年，没有来得及记录后面的里程碑：

* 2024年诺贝尔奖迎来了人工智能与深度学习的里程碑时刻。诺贝尔物理学奖授予了John Hopfield和Geoffrey Hinton，表彰他们通过人工神经网络实现机器学习的基础性发现和发明；同年，诺贝尔化学奖也颁发给了因AlphaFold预测蛋白质结构的David Baker、Demis Hassabis和John Jumper，肯定了深度学习对科学前沿的变革性影响。这引发了AI for Science热潮。
* Richard Sutton won the 2024 ACM A.M. Turing Award alongside his long-time collaborator Andrew Barto for developing the conceptual and algorithmic foundations of reinforcement learning.

《AIMA》还把AI的发展过程划分为几个阶段（phase）：

* The inception of artificial intelligence (1943–1956)：萌芽，最终由达特茅斯会议开创Artificial Intelligence这一研究领域，属于计算机科学的一个分支
* Early enthusiasm, great expectations (1952–1969)：早期热情高涨，理想很丰满
* A dose of reality (1966–1973)：然而现实很骨感
* Expert systems (1969–1986)：专家系统，符号主义的回归
* The return of neural networks (1986–present)：神经网络的回归
* Probabilistic reasoning and machine learning (1987–present)：概率推理和机器学习
* Big data (2001–present)：大数据
* Deep learning (2011–present)：深度学习，神经网络的再次回归

《AIMA》没有赶上ChatGPT的发布，不然2022年可能会开启一个新的阶段。

另一本书《The Master Algorithm》总结了AI历史上的5大传统思想流派（school of thought）：

* Symbolists view learning as the inverse of deduction and take ideas from philosophy, psychology, and logic. （符号主义）
* Connectionists reverse engineer the brain and are inspired by neuroscience and physics. （联结主义）
* Evolutionaries simulate evolution on the computer and draw on genetics and evolutionary biology. （进化论）
* Bayesians believe learning is a form of probabilistic inference and have their roots in statistics. （贝叶斯主义、概率主义）
* Analogizers learn by extrapolating from similarity judgments and are influenced by psychology and mathematical optimization. （类比主义）

从上面的里程碑、发展阶段、思想流派，可以一窥AI历史。是不是觉得脉络很清晰？其实这是一种极大的简化。在搜罗和查阅更多AI历史资料后，我发现AI的发展史实际上复杂得多，简直可以说是错综复杂。这和数学史有点像，并不是线性发展的，各个分支此起彼伏，交错融合，剪不断理还乱。好在我们不必了解每一个历史细节，很多大牛已经帮我们总结好了经验教训，比如Sutton的《The Bitter Lesson》、《The Hardware Lottery》、《Scaling Law》核心的洞见是：利用计算能力而非人类知识才是最有效的道路。

> The biggest lesson that can be read from 70 years of AI research is that general methods that leverage computation are ultimately the most effective, and by a large margin. The ultimate reason for this is Moore's law, or rather its generalization of continued exponentially falling cost per unit of computation. [...] We have to learn the bitter lesson that building in how we think we think does not work in the long run. [...] The two methods that seem to scale arbitrarily in this way are search and learning.

这解释了：

* 为什么符号主义会没落，机器学习会兴起？
* 为什么依赖于人工特征的传统机器学习会没落，端到端深度学习会兴起？
* 为什么深度学习曾受生物学启发，但现在越来越倾向数学和工程？
* 为什么大数据和GPU对深度学习至关重要？
* 为什么Scaling Law一旦成立，产业就爆发了？

从AI和DL的历史，隐约也看到了人类的一些永恒主题。

* 好奇、坚持、勇气是人性之光
* 意识到并承认无知，是现代科学的基础
* 傲慢自大是一种无知
* 历史决定论是一种无知

## DL简史

相比整个AI的历史，DL的历史想对清晰。《花书》（Deep Learning）有云，Broadly speaking, there have been three waves of development: 

* deep learning known as cybernetics in the 1940s–1960s, （控制论）
* deep learning known as connectionism in the 1980s–1990s, （联结主义）
* and the current resurgence under the name deep learning beginning in 2006. （深度学习）

## DL本质

DL本质上是分层表示学习（layered representation learning）。

深度学习曾经受生物学启发，从神经网络这个名字就能看出来。但是因为意识到人类对人类大脑工作机制了解太少，现代深度学习越来越倾向于数学和工程的方法，而不是仿生的方法。神经网络这个名字是历史遗留，现代深度学习跟生物神经网络已经没有多大关系了。

从思想流派的角度看，现代深度学习已经高度融合了各种思想流派，已经很难将DL再按照传统流派进行归类了。符号主义、概率主义、联结主义，是AI最主要的3个流派。现代深度学习的网络结构不仅体现了联结主义，很多地方也融入了概率主义，甚至Reasoning也已经成为LLM的主流能力。

## 未来

莎士比亚说：一切过往，皆为序章。

> What's past is prologue.

这一波的AI热潮还在进行中，未来会怎样，拭目以待。

# References

* Designing Data-Intensive Applications: The Big Ideas Behind Reliable, Scalable, and Maintainable Systems. Second Edition. Martin Kleppmann (Author), Chris Riccomini. 2026. 俗称《DDIA》
* Artificial Intelligence: A Modern Approach. by Peter Norvig, Stuart Russell. 2021. 俗称《AMIA》.
* The Master Algorithm: How the Quest for the Ultimate Learning Machine Will Remake Our World. Pedro Domingos. 2015.
* The Bitter Lesson. Rich Sutton. 2019.
* The Hardware Lottery. Sara Hooker. Google Research, Brain Team. 2020.
* Scaling Laws for Neural Language Models. Jared Kaplan. OpenAI. 2020.
* Deep Learning (Adaptive Computation and Machine Learning series). Ian Goodfellow, Yoshua Bengio, Aaron Courville. 2016. 俗称《花书》
* Understanding Deep Learning. Simon J.D. Prince. 2023. 俗称《UDL》.
* Why Machines Learn: The Elegant Math Behind Modern AI. Anil Ananthaswamy. 2024.
* Deep Learning with Python, Third Edition. Francois Chollet, Matthew Watson. 2025.
