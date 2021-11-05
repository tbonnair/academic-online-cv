---
title: Mixture models and Expectation-Maximisation algorithm
linkTitle: Mixture models and EM algorithm
summary: An overview of how the EM algorithm works with some practical implementation on the Gaussian Mixture Model.
date: '2021-11-04'
type: book
math: true
---

## Context

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
