---
permalink: "/softwares/"
layout: home
classes: wide
author_profile: true
title: "Softwares"
---

## Estimation of Covid19 reproduction number via nonsmooth convex optimization
[Covid-Estim-R](https://github.com/bpascal-fr/Covid-Estim-R)

In an epidemic outbreak context, such as for example during the Covid19 pandemic, it is of utmost importance for Health Authorities to achieve close daily surveillance of the pathogen transmission.
The intensity of an epidemic can be quantified at day $t$ through its *effective reproduction number* R(t), defined as the *average number of secondary infections caused by a standard contagious individual*. The major advantage of the effective reproduction number is that it has a straightforward interpretation: if R(t) > 1$, then the epidemic is spreading exponentially fast, and an epidemic wave is to be expected in the absence of countermeasures;  while if R(t), the epidemic is regressing, indicating for example the effectiveness of some social distancing rules.

The estimation of the reproduction number on a daily basis crucially relies on collected new infection counts.
In an emergency situation, these counts are of medium to low quality, due to errors and imprecisions occurring during the measurement and reporting processes, such as irrelevant
or missing counts, pseudo-seasonalities, week-end, etc. The low quality of collected data severely incurs accurate estimation of $\mathsf{R}_t$ from state-of-the-art epidemiological tools.
To provide robust estimates of the daily reproduction number, capable to manage low quality Covid19 data, the present work elaborates on a state-of-the-art Poisson propagation model and designs regularizing convex functionals balancing the fidelity to the epidemiological mechanisms and spatiotemporal regularity constraints, leading to four estimators:

- Univariate ($\mathsf{U}$): enforcing temporal piecewise linearity of the estimated $\widehat{\mathsf{R}}_t$;

- Univariate Corrected ($\mathsf{U}$-$\mathsf{C}$): enforcing temporal piecewise linearity of the estimated $\widehat{\mathsf{R}}_t$ and including the estimation of a sparse corrective term accounting for misreported infection counts;
  
- Multivariate ($\mathsf{M}$): enforcing temporal piecewise linearity and spatial piecewise constancy of the estimated $\widehat{\mathsf{R}}_{c,t}$ in county $c$ at day $t$, based on a prior connectivity structure between counties;

 - Multivariate Corrected ($\mathsf{M}$-$\mathsf{C}$): enforcing temporal piecewise linearity and spatial piecewise constancy of the estimated $\widehat{\mathsf{R}}_{c,t}$ based on a prior connectivity structure between counties, and including the estimation of a sparse corrective term accounting for misreported infection counts.

Fast and memory efficient implementation of the nonsmooth convex optimization problems defining the aforementioned estimators permits daily estimation of the reproduction number in hundreds, possibly connected, territories simultaneously.

[GitHub](https://github.com/bpascal-fr/Covid-Estim-R) (Matlab toolbox)  

Abry, P., Pustelnik, N., Roux, S., Jensen, P., Flandrin, P., Gribonval, R., ... & Garnier, N. (2020). Spatial and temporal regularization to estimate COVID-19 reproduction number R (t): Promoting piecewise smoothness via convex optimization. Plos one, 15(8), e0237901.

Pascal, B., Abry, P., Pustelnik, N., Roux, S., Gribonval, R., & Flandrin, P. (2022). Nonsmooth convex optimization to estimate the Covid-19 reproduction number space-time evolution with robustness against low quality data. IEEE Transactions on Signal Processing, 70, 2859-2868. [arxiv:2109.09595](https://arxiv.org/abs/2109.09595)

## Signal detection based on the zeros of the *Kravchuk* spectrogram
[kravchuk-transform-and-its-zeros](https://github.com/bpascal-fr/kravchuk-transform-and-its-zeros)

Recent work in time-frequency analysis proposed to switch the focus from the maxima of the spectrogram toward its zeros. The zeros of signals in white Gaussian noise indeed form a random point pattern with a very stable structure. Using modern spatial statistics tools on the pattern of zeros of a spectrogram has led to component disentanglement and signal detection procedures. The major bottlenecks of this approach are the discretization of the Short-Time Fourier Transform and the necessarily bounded observation window in the time-frequency plane. Both impact the estimation of summary statistics of the zeros, which are then used in standard statistical tests. To circumvent these limitations, we propose a generalized time-frequency representation, which we call the *Kravchuk transform*. It naturally applies to *finite* signals, i.e., finite-dimensional vectors. The corresponding phase space, instead of the whole time- frequency plane, is compact, and particularly amenable to spatial statistics. On top of this, the Kravchuk transform has several natural properties for signal processing, among which covariance under the group action of SO(3), invertibility and symmetry with respect to complex conjugation. We further show that the point process of the zeros of the Kravchuk transform of discrete white Gaussian noise coincides in law with the zeros of the spherical Gaussian Analytic Function. This implies that the law of the zeros is invariant under isometries of the sphere. Elaborating on this theorem, we develop a procedure for signal detection based on the spatial statistics of the zeros of the Kravchuk spectrogram. The statistical power of this procedure is assessed by intensive numerical simulation, and compares favorably with respect to state-of-the-art zeros-based detection procedures. Furthermore it appears to be particularly robust to both low signal-to-noise ratio and small number of samples.  

[GitHub](https://github.com/bpascal-fr/kravchuk-transform-and-its-zeros) (Python toolbox)  

Pascal, B., & Bardenet, R. (2022). A covariant, discrete time-frequency representation tailored for zero-based signal detection. IEEE Transactions on Signal Processing, 70, 2950-2961. [arxiv:2202.03835](https://arxiv.org/abs/2202.03835)

## Point processes and spatial statistics in time-frequency analysis
[GeoSto-PP-for-TF](https://github.com/bpascal-fr/GeoSto-PP-for-TF)

Point processes in 2D or 3D have been major statistical models for spatial data in signal processing, from seismology to telecommunications. They come with an arsenal of exploration and inference tools, known as spatial statistics. Starting in 2015, point processes have also appeared in a more indirect way in signal processing, not as a statistical model for observed data, but as a natural way to describe and process nonstationary signals in the time-frequency plane. More precisely, consider linear “time-frequency” transforms from the space of square-integrable signal to spaces of analytic functions, such as the Gabor transform. The Gabor transform sends a one-dimensional signal, say a function of time like an audio recording, onto a function of a complex argument, the real part of which is interpreted as time, and the imaginary part as frequency. The modulus of that complex function is known as a spectrogram, and is to be read as the “musical score” of the initial signal, with a large value of the spectrogram at a given time and frequency being akin to a musical note on a score. Many signal processing algorithms revolve around identifying regions in the complex plane where the spectrogram is significantly large. In contrast, zeros of the spectrogram indicate perfect silence, a time at which a particular frequency is absent. Being the zeros of an analytic function, and actually a random analytic function if the input signal is considered random, these zeros form a point process in the complex plane. This tutorial is devoted to such point processes arising as the zeros of time-frequency transforms of random signals, to their links to the rich research around zeros of Gaussian analytic functions, and to how spatial statistics can yield signal detection and denoising algorithms that rely on identifying perturbations in the (point) pattern of silence.

[GitHub](https://github.com/bpascal-fr/GeoSto-PP-for-TF) (Python toolbox)  

R. Bardenet, and B. Pascal. Invited mini-course given at the *Stochastic Geometry Days*, November 15-19, 2021. Dunkerque, France
## Automated texture segmentation  
[gsugar](https://github.com/bpascal-fr/gsugar)

Penalized Least Squares are widely used in signal and image processing. Yet, it suffers from a major limitation since it requires fine-tuning of the regularization parameters. Under assumptions on the noise probability distribution, Stein-based approaches provide unbiased estimator of the quadratic risk. The Generalized Stein Unbiased Risk Estimator is revisited to handle correlated Gaussian noise without requiring to invert the covariance matrix. Then, in order to avoid expansive grid search, it is necessary to design algorithmic scheme minimizing the quadratic risk with respect to regularization parameters. This work extends the Stein's Unbiased GrAdient estimator of the Risk of Deledalle *et al.* to the case of correlated Gaussian noise, deriving a general automatic tuning of regularization parameters. First, the theoretical asymptotic unbiasedness of the gradient estimator is demonstrated in the case of general correlated Gaussian noise. Then, the proposed parameter selection strategy is particularized to fractal texture segmentation, where problem formulation naturally entails inter-scale and spatially correlated noise. Numerical assessment is provided, as well as discussion of the practical issues.  

[GitHub](https://github.com/bpascal-fr/gsugar) (Matlab toolbox)  

B. Pascal, S. Vaiter, N. Pustelnik, and P. Abry (2021). Automated data-driven selection of the hyperparameters for Total-Variation based texture segmentation. *J. Math. Imaging Vis.,* 1–30. [arxiv:2004.09434](https://arxiv.org/abs/2004.09434)

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
*Annals of Telecommunications,* 75(11), 655-671. [arxiv:2006.03297](https://arxiv.org/abs/2006.03297)