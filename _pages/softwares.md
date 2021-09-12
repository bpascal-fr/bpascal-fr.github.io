---
permalink: "/softwares/"
layout: home
classes: wide
author_profile: true
title: "Softwares"
---

## Automated texture segmentation [gsugar](https://github.com/bpascal-fr/gsugar)

Penalized Least Squares are widely used in signal and image processing. Yet, it suffers from a major limitation since it requires fine-tuning of the regularization parameters. Under assumptions on the noise probability distribution, Stein-based approaches provide unbiased estimator of the quadratic risk. The Generalized Stein Unbiased Risk Estimator is revisited to handle correlated Gaussian noise without requiring to invert the covariance matrix. Then, in order to avoid expansive grid search, it is necessary to design algorithmic scheme minimizing the quadratic risk with respect to regularization parameters. This work extends the Stein's Unbiased GrAdient estimator of the Risk of Deledalle *et al.* to the case of correlated Gaussian noise, deriving a general automatic tuning of regularization parameters. First, the theoretical asymptotic unbiasedness of the gradient estimator is demonstrated in the case of general correlated Gaussian noise. Then, the proposed parameter selection strategy is particularized to fractal texture segmentation, where problem formulation naturally entails inter-scale and spatially correlated noise. Numerical assessment is provided, as well as discussion of the practical issues.  

[GitHub](https://github.com/bpascal-fr/gsugar) (Matlab toolbox)  

B. Pascal, S. Vaiter, N. Pustelnik, and P. Abry (2021). Automated data-driven selection of the hyperparameters for Total-Variation based texture segmentation. *J. Math. Imaging Vis.,* 1–30. [arxiv](https://arxiv.org/abs/2004.09434)
