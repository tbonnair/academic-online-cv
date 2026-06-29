---
abstract: <p align="justify">Diffusion models trained with sufficiently large number of data generate original and high-quality samples instead of simply copying their training data as the curse of dimensionality suggets. How do they avoid it? We uncover one of the key mechanism answering this question and it lies in an implicit form of regularization in the training dynamics itself, the training time required to start memorizing the samples scales linearly with the dataset size.</p>
draft: false
url_pdf: https://arxiv.org/abs/2505.17638
title: "Why Diffusion Models Don't Memorize: The Role of Implicit Dynamical Regularization in Training"
publication_types:
  - "2"
links:
  - icon: code
    name: Code
    url: 'https://github.com/tbonnair/Why-Diffusion-Models-Don-t-Memorize'
authors:
  - admin
  - Raphaël Urfin
  - Giulio Biroli
  - Marc Mézard
publication: "NeurIPS 2025 — Best Paper Award"
publication_short: "NeurIPS 2025"
featured: true
image:
  filename: featured.png
  focal_point: Smart
  preview_only: false
  caption: "(Left) Illustration of the training dynamics of a diffusion model. (Right) Phase diagram illustrating the different regimes of diffusion models (memorization, architectural regularization or dynamical regularization)."
summary: <p align="justify">Diffusion models have achieved remarkable success across a wide range of generative tasks. A key challenge is understanding the mechanisms that prevent their memorization of training data and allow generalization. In this work, we investigate the role of the training dynamics in the transition from generalization to memorization. Through extensive experiments and theoretical analysis, we identify two distinct timescales; an early time τgen at which models begin to generate high-quality samples, and a later time τmem beyond which memorization emerges. Crucially, we find that τmem increases linearly with the training set size n, while τgen remains constant. This creates a growing window of training times with n where models generalize effectively, despite showing strong memorization if training continues beyond it. It is only when n becomes larger than a model-dependent threshold that overfitting disappears at infinite training times. These findings reveal a form of implicit dynamical regularization in the training dynamics, which allow to avoid memorization even in highly overparameterized settings. Our results are supported by numerical experiments with standard U-Net architectures on realistic and synthetic datasets, and by a theoretical analysis using a tractable random features model studied in the high-dimensional limit. </p>
date: 2025-12-04T19:59:55.824Z
---
