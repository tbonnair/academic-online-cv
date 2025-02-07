---
abstract: <p align="justify">Using statistical physics methods, we study generative diffusion models in the regime where the dimension of space and the number of data are large, and the score function has been trained optimally. Our analysis reveals three distinct dynamical regimes during the backward generative diffusion process. The generative dynamics, starting from pure noise, encounters first a 'speciation' transition where the gross structure of data is unraveled, through a mechanism similar to symmetry breaking in phase transitions. It is followed at later time by a 'collapse' transition where the trajectories of the dynamics become attracted to one of the memorized data points, through a mechanism which is similar to the condensation in a glass phase. For any dataset, the speciation time can be found from a spectral analysis of the correlation matrix, and the collapse time can be found from the estimation of an 'excess entropy' in the data. The dependence of the collapse time on the dimension and number of data provides a thorough characterization of the curse of dimensionality for diffusion models. Analytical solutions for simple models like high-dimensional Gaussian mixtures substantiate these findings and provide a theoretical framework, while extensions to more complex scenarios and numerical validations with real datasets confirm the theoretical predictions.</p>
draft: false
url_pdf: https://arxiv.org/abs/2402.18491
title: Dynamical Regimes of Diffusion Models
publication_types:
  - "2"
links:
  - icon: code
    name: Code
    url: 'https://github.com/tbonnair/Dynamical-Regimes-of-Diffusion-Models'
authors:
  - Giulio Biroli
  - admin
  - Valentin de Bortoli
  - Marc Mézard
publication: In arxiv
publication_short: ""
featured: true
image:
  filename: featured.png
  focal_point: Smart
  preview_only: false
  caption: The three dynamical regimes of the backward generative process of a diffusion model under the exact score hypothesis. In the grey phase, the stochastic trajectory samples noise until a first transition, called speciation, after which the trajectory specialises to one of the two clusters (green phase). At the end of the dynamics (red phase), the trajectory collapse to one of the training sample to reproduce it exactly.
summary: <p align="justify">Generative models, with at its forefront diffusion models, are becoming central in both science and industry with many relevant applications. We however still lack a theoretical understanding of how they are able to create new samples. In this work, we provide the first quantitative analytical analysis of the behaviour of the generative backward dynamics using methods from statistical physics.</p>
date: 2024-02-28T19:59:55.824Z
---
