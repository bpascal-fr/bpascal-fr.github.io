---
permalink: "/softwares/"
layout: home
classes: wide
author_profile: true
title: "Softwares"
---

## Automated texture segmentation  
[gsugar](https://github.com/bpascal-fr/gsugar)

Penalized Least Squares are widely used in signal and image processing. Yet, it suffers from a major limitation since it requires fine-tuning of the regularization parameters. Under assumptions on the noise probability distribution, Stein-based approaches provide unbiased estimator of the quadratic risk. The Generalized Stein Unbiased Risk Estimator is revisited to handle correlated Gaussian noise without requiring to invert the covariance matrix. Then, in order to avoid expansive grid search, it is necessary to design algorithmic scheme minimizing the quadratic risk with respect to regularization parameters. This work extends the Stein's Unbiased GrAdient estimator of the Risk of Deledalle *et al.* to the case of correlated Gaussian noise, deriving a general automatic tuning of regularization parameters. First, the theoretical asymptotic unbiasedness of the gradient estimator is demonstrated in the case of general correlated Gaussian noise. Then, the proposed parameter selection strategy is particularized to fractal texture segmentation, where problem formulation naturally entails inter-scale and spatially correlated noise. Numerical assessment is provided, as well as discussion of the practical issues.  

[GitHub](https://github.com/bpascal-fr/gsugar) (Matlab toolbox)  

B. Pascal, S. Vaiter, N. Pustelnik, and P. Abry (2021). Automated data-driven selection of the hyperparameters for Total-Variation based texture segmentation. *J. Math. Imaging Vis.,* 1–30. [arxiv](https://arxiv.org/abs/2004.09434)

## Signal and image processing for nonlinear physics  
[stein-piecewise-filtering](https://github.com/bpascal-fr/stein-piecewise-filtering)

Numerous fields of nonlinear physics, very different in nature, produce signals and images, that share the common feature of being essentially constituted of piecewise homogeneous phases.
Analyzing signals and images from corresponding experiments to construct relevant physical interpretations thus often requires detecting such phases and estimating accurately  their characteristics (borders, feature differences,...).
However, situations of physical relevance often comes with low to very low signal to noise precluding the standard use of classical linear filtering for analysis and denoising and thus calling for the design of advanced nonlinear signal/image filtering techniques.
Additionally, when dealing with experimental physics signals/images, a second limitation is the large amount of data that need to be analyzed to yield accurate and relevant conclusions (e.g., in producing a phase diagram or in analyzing  video frames of large size images) requiring the design of fast algorithms.
The present work proposes a unified signal/image nonlinear filtering procedure, with fast algorithms and an data-driven automated hyperparameter tuning, based on proximal operators and Stein unbiased estimator principles.
The interest and potential of these tools are illustrated at work on low-confinement solid friction signals and porous media multiphase flows.  

[GitHub](https://github.com/bpascal-fr/stein-piecewise-filtering) (MATLAB toolbox)

B. Pascal, N. Pustelnik, P. Abry, J.-C. Géminard and V. Vidal (2020).
Parameter-free and fast nonlinear piecewise fitering. Application to experimental physics.
*Annals of Telecommunications,* 75(11), 655-671. [arxiv](https://arxiv.org/abs/2006.03297)