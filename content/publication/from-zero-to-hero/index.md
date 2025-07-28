---
abstract: <p align="justify">Gradient descent is commonly used to find minima in rough landscapes, particularly in recent machine learning applications. However, a theoretical understanding of why good solutions are found remains elusive, especially in strongly non-convex and high-dimensional settings. Here, we focus on the phase retrieval problem as a typical example, which has received a lot of attention recently in theoretical machine learning. We analyze the Hessian during gradient descent, identify a dynamical transition in its spectral properties, and relate it to the ability of escaping rough regions in the loss landscape. When the signal-to-noise ratio (SNR) is large enough, an informative negative direction exists in the Hessian at the beginning of the descent, i.e in the initial condition. While descending, a BBP transition in the spectrum takes place in finite time: the direction is lost, and the dynamics is trapped in a rugged region filled with marginally stable bad minima. Surprisingly, for finite system sizes, this window of negative curvature allows the system to recover the signal well before the theoretical SNR found for infinite sizes, emphasizing the central role of initialization and early-time dynamics for efficiently navigating rough landscapes.</p>
draft: false
url_pdf: https://arxiv.org/abs/2403.02418
title: "The Role of the Time-Dependent Hessian in High-Dimensional Optimization"
publication_types:
  - "2"
authors:
  - admin
  - Giulio Biroli
  - Chiara Cammarota
publication: arXiv:2403.02418
publication_short: ""
featured: true
image:
  filename: featured.png
  focal_point: Smart
  preview_only: false
  caption: "(Left) Phases of the gradient flow dynamics in the phase retrieval loss landscape for N going to infinity with a pictural representation of the Hessian eigenvalue distribution when varying the signal-to-noise ratio \alpha. The red bar shows when an outlier exists in this distribution. (Right) Evolution of the local curvature: dynamics projected in the direction of least stability of the Hessian matrix (black arrows) in the intermediate (orange) regime of signal-to-noise ratio. Starting from an artless initial condition, gradient descent reaches a bad minimum. The green arrows indicate downward directions towards the good solution during the dynamics. At the end, the local curvature has become positive (red arrows)."
summary: <p align="justify">The reasons of why local iterative algorithms like gradient descent are able to converge towards good solutions in high-dimensional and non-convex landscapes currently remain a complete mystery in several cases. In this work, we focus on a single-layer neural network with a quadratic activation function, a reminiscence of a common problem called phase retrieval. Leveraging methods and intuitions from statistical physics, we show the success of gradient descent is conditioned by a transition in the Hessian of some peculiar states in the loss landscapes stopping the dynamics when the dimension is infinite. When it is finite, we show this picture changes drastically and the system exploits the initial information to slip away from the bad minima and find back the good solution before reaching the bad ones. </p>
date: 2024-03-04T19:59:55.824Z
---
