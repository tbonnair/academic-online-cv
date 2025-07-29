---
abstract: <p align="justify">Diffusion models have achieved remarkable success across a wide range of generative tasks. A key challenge is understanding the mechanisms that prevent their memorization of training data and allow generalization. In this work, we investigate the role of the training dynamics in the transition from generalization to memorization. Through extensive experiments and theoretical analysis, we identify two distinct timescales: an early time at which models begin to generate high-quality samples, and a later time beyond which memorization emerges. Crucially, we find that the memorization time increases linearly with the training set size n, while τgen remains constant. This creates a growing window of training times with n where models generalize effectively, despite showing strong memorization if training continues beyond it. It is only when n becomes larger than a model-dependent threshold that overfitting disappears at infinite training times. These findings reveal a form of implicit dynamical regularization in the training dynamics, which allow to avoid memorization even in highly overparameterized settings. Our results are supported by numerical experiments with standard U-Net architectures on realistic and synthetic datasets, and by a theoretical analysis using a tractable random features model studied in the high-dimensional limit.</p>
draft: false
url_pdf: https://arxiv.org/abs/2403.02418
title: "Why Diffusion Models Don't Memorize: The Role of Implicit Dynamical Regularization in Training"
publication_types:
  - "2"
authors:
  - admin
  - Raphaël Urfin
  - Giulio Biroli
  - Marc Mézard
publication: arXiv:2505.17638
publication_short: ""
featured: true
image:
  filename: featured.png
  focal_point: Smart
  preview_only: false
  caption: "Illustration of the training dynamics of a diffusion model. Depending on the training time τ, we identify three regimes measured by the inverse quality of the generated samples (blue curve) and their memorization fraction (red curve). The generalization regime extends over a large window of training times which increases with the training set size n. On top, we show a one dimensional example of the learned score function during training (orange). The gray line gives the exact empirical score, at a given noise level, while the black dashed line corresponds to the true (population) score. </p>
date: 2025-05-23T19:59:55.824Z
---
