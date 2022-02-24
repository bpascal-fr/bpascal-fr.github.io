---
permalink: "/softwares/"
layout: home
classes: wide
author_profile: true
title: "Softwares"
---

## Signal detection based on the zeros of the *Kravchuk* spectrogram
[kravchuk-transform-and-its-zeros](https://github.com/bpascal-fr/kravchuk-transform-and-its-zeros)

Recent work in time-frequency analysis proposed to switch the focus from the maxima of the spectrogram toward its zeros. The zeros of signals in white Gaussian noise indeed form a random point pattern with a very stable structure. Using modern spatial statistics tools on the pattern of zeros of a spectrogram has led to component disentanglement and signal detection procedures. The major bottlenecks of this approach are the discretization of the Short-Time Fourier Transform and the necessarily bounded observation window in the time-frequency plane. Both impact the estimation of summary statistics of the zeros, which are then used in standard statistical tests. To circumvent these limitations, we propose a generalized time-frequency representation, which we call the *Kravchuk transform*. It naturally applies to *finite* signals, i.e., finite-dimensional vectors. The corresponding phase space, instead of the whole time- frequency plane, is compact, and particularly amenable to spatial statistics. On top of this, the Kravchuk transform has several natural properties for signal processing, among which covariance under the group action of SO(3), invertibility and symmetry with respect to complex conjugation. We further show that the point process of the zeros of the Kravchuk transform of discrete white Gaussian noise coincides in law with the zeros of the spherical Gaussian Analytic Function. This implies that the law of the zeros is invariant under isometries of the sphere. Elaborating on this theorem, we develop a procedure for signal detection based on the spatial statistics of the zeros of the Kravchuk spectrogram. The statistical power of this procedure is assessed by intensive numerical simulation, and compares favorably with respect to state-of-the-art zeros-based detection procedures. Furthermore it appears to be particularly robust to both low signal-to-noise ratio and small number of samples.  

[GitHub](https://github.com/bpascal-fr/kravchuk-transform-and-its-zeros) (Python toolbox)  

B. Pascal, and R. Bardenet (2022). A covariant, discrete time-frequency representation tailored for zero-based signal detection. Submitted. [arxiv](https://arxiv.org/abs/2202.03835)

## Point processes and spatial statistics in time-frequency analysis
[GeoSto-PP-for-TF](https://github.com/bpascal-fr/GeoSto-PP-for-TF)

Point processes in 2D or 3D have been major statistical models for spatial data in signal processing, from seismology to telecommunications. They come with an arsenal of exploration and inference tools, known as spatial statistics. Starting in 2015, point processes have also appeared in a more indirect way in signal processing, not as a statistical model for observed data, but as a natural way to describe and process nonstationary signals in the time-frequency plane. More precisely, consider linear “time-frequency” transforms from the space of square-integrable signal to spaces of analytic functions, such as the Gabor transform. The Gabor transform sends a one-dimensional signal, say a function of time like an audio recording, onto a function of a complex argument, the real part of which is interpreted as time, and the imaginary part as frequency. The modulus of that complex function is known as a spectrogram, and is to be read as the “musical score” of the initial signal, with a large value of the spectrogram at a given time and frequency being akin to a musical note on a score. Many signal processing algorithms revolve around identifying regions in the complex plane where the spectrogram is significantly large. In contrast, zeros of the spectrogram indicate perfect silence, a time at which a particular frequency is absent. Being the zeros of an analytic function, and actually a random analytic function if the input signal is considered random, these zeros form a point process in the complex plane. This tutorial is devoted to such point processes arising as the zeros of time-frequency transforms of random signals, to their links to the rich research around zeros of Gaussian analytic functions, and to how spatial statistics can yield signal detection and denoising algorithms that rely on identifying perturbations in the (point) pattern of silence.

[GitHub](https://github.com/bpascal-fr/GeoSto-PP-for-TF) (Python toolbox)  

R. Bardenet, and B. Pascal. Invited mini-course given at the *Stochastic Geometry Days*, November 15-19, 2021. Dunkerque, France
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