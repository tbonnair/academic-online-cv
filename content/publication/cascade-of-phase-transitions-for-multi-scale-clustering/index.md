---
abstract: "We present a novel framework exploiting the cascade of phase
  transitions occurring during a simulated annealing of the
  Expectation-Maximisation algorithm to cluster datasets with multi-scale
  structures. Using the weighted local covariance, we can extract, a posteriori
  and without any prior knowledge, information on the number of clusters at
  different scales together with their size. We also study the linear stability
  of the iterative scheme to derive the threshold at which the first transition
  occurs and show how to approximate the next ones. Finally, we combine
  simulated annealing together with recent developments of regularised Gaussian
  mixture models to learn a principal graph from spatially structured datasets
  that can also exhibit many scales. "
draft: false
url_pdf: https://arxiv.org/abs/2010.07955
title: Cascade of Phase Transitions for Multi-Scale Clustering
publication_types:
  - "2"
authors:
  - admin
  - Aurélien Decelle
  - Nabila Aghanim
publication: In Physical Review E
publication_short: ""
featured: true
image:
  filename: featured.png
  focal_point: Smart
  preview_only: false
  caption: Evolution of Gaussian components during the annealing (upper panel) and
    two-dimensional diagram showing the successive phase transitions (lower
    panel).
summary: The task of clustering point-cloud data is nowadays believed to be
  either easy to carry or uninformative because the lack of knowledge (number of
  clusters, sizes, etc.) on the underlying pattern. This work proposes to use a
  statistical physics formulation of the clustering performed by means of a
  Gaussian Mixture Model to alleviate some of the drawbacks of the clustering
  task. In particular, it shows that we can explore the dataset to obtain
  several key information on the number of clusters, their size and how they are
  embedded in space, even in high dimensions.
date: 2020-10-15T19:59:55.824Z
---
