---
title: A beginner guide to the link between statistical physics and machine learning
linkTitle: Satistical physics and machine learning
summary: A glimpse of the links between statistical physics and optimisation problems and how the former can help understanding the latter.
date: '2021-11-04'
type: book
math: true
draft: true
categories: ["Physics", "Machine learning", "Optimisation", "Beginner"]
---

<p align="justify">This post aims at being a non-heavy-mathematically introduction to the basics of statistical physics and the links it has with machine learning and optimisation. In an effort to make it accessible to anybody with no background in mathematics, some clickable spoiler can be found across the post explaining the notations or equations.
Some very nice ressources on the topics we will discuss here are available online such as <a href="http://www.stat.ucla.edu/~ywu/research/documents/BOOKS/MontanariInformationPhysicsComputation.pdf/">Marc Mézard and Andrea Montanari's book on information and physics</a> or <a href="https://sphinxteam.github.io/EPFLDoctoralLecture2021/">Florent Krzakala and Lenkà Zdeborova's lectures notes.</a> for more mathematically-enclined readers. </p>

## Statistical physics in a nutshell

<p align="justify">Statistical physics is the branch of physics focusing on the study of the matter in different states and its various properties. Example of prime importance are gases which are made of many molecules interacting together. The whole purpose of statistical physics is to describe how complex macroscopic behaviours, such as a change of state of the water boiling at 100°C, can emerge from these interactions. As its name suggests, statistical physics uses "statistical" (or "probabilistic") descriptions of the intereactions between several elementary components (molecules in a gas, spins in a ferromagnet, etc.) to make predictions of macroscopic behaviors, which are by essence deterministic: it does not matter how many times you try, water <i>always</i> boils at 100°C (in the right pressure conditions, but it has nothing to do with randomness).</p>

### Boltzmann distribution and partition function

<p align="justify"> Let us consider a system made of $N$ particles and call $x_i$ the <strong>state</strong> of the $i$th particle. The state can be understood as a property of the particle such as its position, velocity, orientation or whatever else. We can then attach to this set of particles a <strong>configuration</strong> $\boldsymbol{x} = \{x\}_{i=1}^N$ which summarises all the states of the $N$ particles. The statistical description of the microscopic physical configuration $\boldsymbol{x}$ is based on an energy function, called the Hamiltonian, written $H(\boldsymbol{x})$. The probability to find the system in a given configuration $\boldsymbol{x}$ is then given by the <strong>Boltzmann distribution</strong> </p>

$$ {label:test}
p(\boldsymbol{x}) = \frac{1}{Z(\beta)} \exp(-\beta H(\boldsymbol{x})),
$$

<p align="justify"> where $\beta$ is the inverse-temperature and $Z(\beta)$ is the <strong>partition function</strong> normalizing the probability distribution to one, i.e.</p>

$$
Z(\beta) = \int \mathrm{d} \boldsymbol{x} \exp(-\beta H(\boldsymbol{x})).
$$

<p align="justify"> To make these notions clearer, the diagram below sums up the several definitions introduced above on a simple example: eight particles are regularly spaced over a one-dimensional line and the state of each of them is given by either $+1$ or $-1$. There are therefore $2^8$ possible different configurations and three of them are represented on the diagram with their associated energy, given an energy function defined as $E(\boldsymbol{x}) = \sum_{i=1}^N B x_i$. This very simple example is however exempt from interactions between the particles and only serves an illustrative purpose without much interest scientifically.</p> 

  <p align="center">
  <img src="./Diagram_statPhys.png" alt="fig:diagram_statPhys" width="800"
  </p>

<p align="justify">Taking a few time to analyse the Boltzmann distribution of states in Eq. (1) already suggests that, at fixed inverse-temperature $\beta$, low energy configurations are exponentially more probable to occur because of the minus sign in the exponential. In our simple example from the figure above, we for instance have, for $\beta = 1$ and $B=1$,</p>

$$
p\left(\boldsymbol{x} = \{-1, -1, -1, -1, +1, -1, -1, -1\} \right) = \approx 0.05,
$$

<p align="justify">corresponding to an energy $H(\boldsymbol{x}) = -6$ while</p>

$$
p\left(\boldsymbol{x} = \{+1, +1, +1, -1, +1, -1, -1, -1\} \right) \approx 10^{-4},
$$

<p align="justify">for an energy of 0. Hence the low-energy state of the first example is much more <i>probable</i> to be observed than the second one. </p>

<p align="justify"> An interactive version of this simplistic model is the <strong>1D Ising model</strong>, well-known in statistical physics and in which the $+1$ or $-1$ states corresponds to the spin of the particles and with an energy function taking additionally into account the interactions between the spins on the line, such as $E(\boldsymbol{x}) = \sum_{i=1}^N J x_{i-1} x_i$. This model exhibits a lot of interesting phenomenon from statistical physics such as a phase transition. </p>

### The free energy and concentration phenomena

<p align="justify"> As we will see, the partition function $Z(\beta)$ is at the heart of many developments both in statistical physics and in optimisation as it contains many relevant information about the system. For instance, a quantity of particular interest is the <strong>free energy</strong> defined through the log of the partition function as</p>

$$
F(\beta) = -\frac{1}{\beta} \log Z(\beta),
$$

<p align="justify"> characterizing the available-for-work energy in the system.</p>

<p align="justify">In physics we call <strong>extensive</strong> the quantities that scales with the dimension $N$ of the system. This includes for instance the free energy, the mass or the volume. Indeed, when a system doubles in size, its mass is multiplied by a factor of two. This is also the case of the free energy defined just above. On the other hand, quantities that remain unchanged when varying $N$ are instead called <strong>intensive</strong> and for instance include the temperature. The intensive version of the free energy is the free energy density. </p>

$$
f(\beta) = \underset{N\rightarrow+\infty}{\operatorname{lim}} -\frac{1}{N\beta} \log Z(\beta).
$$



TODO: go to concentration of intensive quantities like the free energy and explain that this mechanism at the heart of the success of statistical physics. Indeed, concentration explains why we actually *can* adopt a probabilistic description of the microscopic state of a system 

## Supervised machine learning and optimisation

<p align="justify">In supervised learning, one seeks to learn a statistical model that predicts a - let's say scalar - quantity called a label based on $M$ example vectors $\{\boldsymbol{x}_i\}_{i=1}^M$. The central question in supervised machine learning is then <i>Can we learn a function that predicts $y_i$ based on $\boldsymbol{x}_i$?</i> Ultimately, data scientists want to apply this model to data for which they do not have the label, a task that we call <strong>inference</strong>. Taking as an example the case of image classification, we aim at finding a function $\phi_\theta(\boldsymbol{x})$ parametrised by some values $\theta$ that can predict an estimate of $y$. Most of supervised machine learning problems therefore come formulated mathematically as</p>

$$
\underset{{\boldsymbol{\theta} \in \Theta}}{\operatorname{min}} \sum_{i=1}^M \ell( \phi_{\theta}(\boldsymbol{x}_i), y_i)),
$$
<p align="justify">where the function $\ell$ is usually called "loss" or "cost" function and quantifies the error we make by replacing $y_$ by $\boldsymbol{x}$.</p>

<p align="justify">The figure below provides an example of this procedure: from a set of $N$ images of dogs $\{\boldsymbol{x}_i\}_{i\in \{1,\ldots, N\}}, the data scientist builds and train a network playing the role of $\phi_{\theta}(\boldsymbol{x})$ and then applies it to new data, the images from the set $\boldsymbol{\tilde{X}}$.</p>

<p align="justify">Let's take a moment to analyse the barbarian notations of the previous equation. Consider for instance a typical squared $L_2$ norm as a loss function, using the squared distance between the estimated label $\phi_\theta(\boldsymbol{x}_i)$ and the true one $y_i$ as a measure of the error,</p>

$$
\ell( \phi_{\theta}(\boldsymbol{x}_i), y_i)) = \left|\phi_\theta(\boldsymbol{x}_i) - y_i \right|^2.
$$
<p align="justify">In this case, Eq. TODO simply means that we are trying to identify the set of parameters $\theta$ that minimizes the sum over all example of our loss function. If $\phi_\theta$ represents a neural networks, then $\theta$ refers to all the weights and bias that parametrises the network. When the estimated label is far away from the true one, then the loss function is large meaning our model is not a good one, if the two are equal, then the loss cancels out, meaning our model $\phi_\theta$ works perfectly.</p>



## Glossary between statistical physics and machine learning

|       Statistical physics        |            Machine learning            |
| :------------------------------: | :------------------------------------: |
| Energy function (or Hamiltonian) |             Loss function              |
|          Ground states           |             Global minima              |
|        Degrees of freedom        |               Parameters               |
|      Boltzmann distribution      | Probability distribution of parameters |
|       Thermodynamic limit        |         High-dimensional limit         |
