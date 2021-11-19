---
title: Mixture models and Expectation-Maximisation algorithm
linkTitle: Mixture models and EM algorithm
summary: An overview of how the EM algorithm works with some practical implementation on the Gaussian Mixture Model.
date: '2021-11-04'
type: book
math: true
---

## Context

  Clustering is a one of the most ancient unsupervised tasks of ML aiming at identifying a partition of a given dataset into multiple groups called "clusters". Figure \ref{fig:clustering} illustrates this objective in a 2D case where the aim is to go from the left panel to the right one, by attributing a class to each input datapoint. 
  
  
  The common ground to many methods that have been proposed these past decades is that they all embed, in some ways, a measure of the "similarity" between datapoints living inside the same cluster. The simplest way of thinking this is a measure based on the Euclidean distance leading to representations in which "close" datapoints more likely fall into the same cluster while distant ones should reside in different clusters. The prototypical method to partition a $D$-dimensional dataset into $K$ clusters is the K-means algorithm proposed by Macqueen in 1967. We can write the K-means goal as the optimisation problem aiming at finding the set of $K$ points (hereafter called centres) minimising the sum of squared distances between datapoints and cluster centres. We end up in a setting seeking to find the set of points ${\mu} = \{{\mu}_1, \ldots, {\mu}_k\}^T$ minimising
$$
\sum_{i=1}^N \operatorname*{min}_{k \in \{1, \ldots, K\}} \lVert {x}_i - {\mu}_k \rVert^2_2.
$$
    
## Mixture models

The general form of the **normal** probability density function is:

$$
f(x) = \frac{1}{\sigma \sqrt{2\pi} } e^{-\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2}
$$

{{< callout note >}}
The parameter $\mu$ is the mean or expectation of the distribution.
$\sigma$ is its standard deviation.
The variance of the distribution is $\sigma^{2}$.
{{< /callout >}}

## Quiz

{{< spoiler text="What is the parameter $\mu$?" >}}
The parameter $\mu$ is the mean or expectation of the distribution.
{{< /spoiler >}}

## EM and its drawbacks

## Practical implementation: a Python tutorial
