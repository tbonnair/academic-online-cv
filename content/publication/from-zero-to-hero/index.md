---
abstract: "We provide an analytical study of the evolution of the Hessian during gradient descent dynamics, and relate a transition in its spectral properties to the ability of finding good minima. We focus on the phase retrieval problem as a case study for complex loss landscapes. We first characterize the high-dimensional limit where both the number $M$ and the dimension $N$ of the data are going to infinity at fixed signal-to-noise ratio $\alpha = M/N$. For small $\alpha$, the Hessian is uninformative with respect to the signal. For $\alpha$ larger than a critical value, the Hessian displays at short-times a downward direction pointing towards good minima. While descending, a transition in the spectrum takes place: the direction is lost and the system gets trapped in bad minima. Hence, the local landscape is benign and informative at first, before gradient descent brings the system into an uninformative maze. Through both theoretical analysis and numerical experiments, we show that this dynamical transition plays a crucial role for finite (even very large) $N$: it allows the system to recover the signal well before the algorithmic threshold corresponding to the $N\rightarrow\infty$ limit. Our analysis sheds light on this new mechanism that facilitates gradient descent dynamics in finite dimensions, and highlights the importance of a good initialization based on spectral properties for optimization in complex high-dimensional landscapes."
draft: false
url_pdf: https://arxiv.org/abs/2403.02418
title: "From Zero to Hero: How local curvature at artless initial conditions leads away from bad minima"
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
  caption: "(Left) Phases of the gradient flow dynamics in the phase retrieval loss landscape for N going to infinity with a pictural representation of the Hessian eigenvalue distribution when varying the signal-to-noise ratio $\alpha$. The red bar shows when an outlier exists in this distribution. (Right) Evolution of the local curvature: dynamics projected in the direction of least stability of the Hessian matrix (black arrows) in the intermediate (orange) regime of signal-to-noise ratio. Starting from an artless initial condition, gradient descent reaches a bad minimum. The green arrows indicate downward directions towards the good solution during the dynamics. At the end, the local curvature has become positive (red arrows)."
summary: <p align="justify">The reasons of why local iterative algorithms like gradient descent are able to converge towards good solutions in high-dimensional and non-convex landscapes currently remain a complete mystery in several cases. In this work, we focus on a single-layer neural network with a quadratic activation function, a reminiscence of a common problem called phase retrieval. Leveraging methods and intuitions from statistical physics, we show the success of gradient descent is conditioned by a transition in the Hessian of some peculiar states in the loss landscapes stopping the dynamics when the dimension is infinite. When it is finite, we show this picture changes drastically and the system exploits the initial information to slip away from the bad minima and find back the good solution before reaching the bad ones. </p>
date: 2024-03-04T19:59:55.824Z
---
