---
abstract: <p align="justify">How is the landscape of a high-dimensional learning problem organized, and how many minima, saddles and maxima does it contain? Building on tools from the statistical physics of random landscapes (the Kac-Rice formula), we develop a general and tractable framework to count and characterize the critical points of empirical risk landscapes, and use it to draw complete topological phase diagrams for the phase retrieval problem.</p>
draft: false
url_pdf: https://arxiv.org/abs/2602.17779
title: "Topological Exploration of High-Dimensional Empirical Risk Landscapes: General Approach, and Applications to Phase Retrieval"
publication_types:
  - "2"
authors:
  - Antoine Maillard
  - admin
  - Giulio Biroli
publication: arXiv:2602.17779
publication_short: ""
featured: true
summary: <p align="justify">We consider the landscape of empirical risk minimization for high-dimensional Gaussian single-index models (generalized linear models). The objective is to recover an unknown signal $\boldsymbol{\theta}^\star \in \mathbb{R}^d$ (where $d \gg 1$) from a loss function $\hat{R}(\boldsymbol{\theta})$ that depends on pairs of labels $(\mathbf{x}_i \cdot \boldsymbol{\theta}, \mathbf{x}_i \cdot \boldsymbol{\theta}^\star)_{i=1}^n$, with $\mathbf{x}_i \sim \mathcal{N}(0, I_d)$, in the proportional asymptotic regime $n \asymp d$. Using the Kac-Rice formula, we analyze different complexities of the landscape -- defined as the expected number of critical points -- corresponding to various types of critical points, including local minima. We first show that some variational formulas previously established in the literature for these complexities can be drastically simplified, reducing to explicit variational problems over a finite number of scalar parameters that we can efficiently solve numerically. Our framework also provides detailed predictions for properties of the critical points, including the spectral properties of the Hessian and the joint distribution of labels. We apply our analysis to the real phase retrieval problem for which we derive complete topological phase diagrams of the loss landscape, characterizing notably BBP-type transitions where the Hessian at local minima (as predicted by the Kac-Rice formula) becomes unstable in the direction of the signal. We test the predictive power of our analysis to characterize gradient flow dynamics, finding excellent agreement with finite-size simulations of local optimization algorithms, and capturing fine-grained details such as the empirical distribution of labels. Overall, our results open new avenues for the asymptotic study of loss landscapes and topological trivialization phenomena in high-dimensional statistical models.</p>
date: 2026-02-19T00:00:00.000Z
---
