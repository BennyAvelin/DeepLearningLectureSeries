# Deep Learning Lecture Series

This is the repository for the lecture series held at Uppsala University during the spring of 2019. 

This is a series of lectures essentially making up a mini course on the subject. The idea is to cover the practical as well as the theoretical aspects. In fact, my hope with this series of lectures is to shine light on interesting pure math problems arising in the context of deep learning, that so far has gathered only a minute amount of attention. 

The layout is as follows:
1. History of the subject 45 min
	1. Brief history of the subject
	2. What is the perceptron algorithm?
	3. What is known about the perceptron algorithm?
	4. How does this relate to modern neural networks?
		1. What is a neural network?
2. VC-Theory 45 min
	1. Quick recap
	2. Detour into VC-theory and generalization bounds
	3. Why Deep Neural Networks are difficult
	4. Open problems
3. Understanding SGD and its link to PDE 45 min
    1. Quick recap
    2. Gradient descent algorithm
    3. Stochastic gradient descent
    4. Can we model gradient descent?
    5. What is the connection to PDE?
4. Survey of network topologies
5. The ups and downs of the loss landscape

The slides are jupyter notebooks to be displayed using jupyter nbconvert slides or using the live [RISE](https://github.com/damianavila/RISE) slide display.

The repository contains a Dockerfile with the necessities for running and/or converting the python notebooks to slides.

To convert the slides please issue the command while running the docker image:

```jupyter nbconvert --to slides SessionX.ipynb```

The converted slides can also be found on my personal [homepage](https://sites.google.com/site/bennyavelin/home/deep-learning-lecture-series).