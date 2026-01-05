---
permalink: "/softwares/"
layout: home
classes: wide
author_profile: true
title: "Softwares"
---

## A novel aligned Kravchuk transform based on Spin Spherical Harmonics Transform

[from-kravchuk-to-ssht](https://github.com/bpascal-fr/from-kravchuk-to-ssht)

The recently introduced Kravchuk transform represents discrete signals by a square-integrable function on the unit
sphere. Its initial formulation has two major drawbacks: on the one hand, a prohibitive computational cost and, on the other, a lack
of interpretability of its spherical coordinates. By establishing a connection between the Kravchuk transform and the decomposition
into spin spherical harmonics, a new aligned transform is proposed. Thanks to a new implementation akin to Fast Fourier Transform,
the new transform and its inverse are computed in a fast and robust manner. Moreover, the new Kravchuk transform can indeed be
interpreted as a time–frequency transform for discrete signals.  

[GitHub](https://github.com/bpascal-fr/from-kravchuk-to-ssht) (Python toolbox)

Pascal, B., Flamant, J., & Bardenet, R. (2025, August). Transformée de Kravchuk réalignée, implémentation efficace et illustration sur signaux élémentaires et réels. *GRETSI’25 XXXème Colloque Francophone De Traitement Du Signal Et Des Images.* [hal-05013793](https://hal.science/hal-05013793v2/document)

## Risk Estimate under a Nonstationary Autoregressive Model for Data-Driven Reproduction Number Estimation

[APURE-Estim-Epi](https://github.com/bpascal-fr/APURE-Estim-Epi)

COVID-19 pandemic has brought to the fore epidemiological models which, though describing a rich variety of behaviors, have previously received little attention in the signal processing literature.
During the pandemic, several works successfully leveraged state-of-the-art signal processing strategies to robustly infer epidemiological indicators despite the low quality of COVID-19 data.
In the present work, a novel nonstationary autoregressive model is introduced, encompassing, but not reducing to, one of the most popular models for the propagation of viral epidemics.
Using a variational framework, penalized likelihood estimators of the parameters of this new model are designed.
In practice, the main bottleneck is that the estimation accuracy strongly depends on hyperparameters tuning.
Without available ground truth, hyperparameters are selected by minimizing specifically designed data-driven oracles, used as proxy for the estimation error.
Focusing on the nonstationary autoregressive Poisson model, the Stein's Unbiased Risk Estimate formalism is generalized to construct asymptotically unbiased risk estimators based on the derivation of an original autoregressive counterpart of Stein's lemma.
The accuracy of these oracles and of the resulting estimates are assessed through intensive Monte Carlo simulations on synthetic data.
Then, elaborating on recent epidemiological models, a novel weekly scaled Poisson model is proposed, enabling to better account for intrinsic variability of the contamination while being robust to reporting errors.
Finally, the overall data-driven procedure is particularized to the estimation of COVID-19 reproduction number and exemplified on real COVID-19 infection counts in different countries and at different stages of the pandemic, demonstrating its ability to yield consistent estimates.

[GitHub](https://github.com/bpascal-fr/APURE-Estim-Epi) (Matlab toolbox)  

Pascal, B., & Vaiter, S. (2025). Risk estimate under a time-varying autoregressive model for data-driven reproduction number estimation. *Signal Processing,* 110246. [arXiv:2409.14937](https://arXiv.org/abs/2409.14937).  

## Estimation of Covid19 reproduction number via nonsmooth convex optimization

[Covid-Estim-R](https://github.com/bpascal-fr/Covid-Estim-R)

In an epidemic outbreak context, such as for example during the Covid19 pandemic, it is of utmost importance for Health Authorities to achieve close daily surveillance of the pathogen transmission.
The intensity of an epidemic can be quantified at day t through its *effective reproduction number* R(t), defined as the *average number of secondary infections caused by a standard contagious individual*. The major advantage of the effective reproduction number is that it has a straightforward interpretation: if R(t) > 1, then the epidemic is spreading exponentially fast, and an epidemic wave is to be expected in the absence of countermeasures;  while if R(t), the epidemic is regressing, indicating for example the effectiveness of some social distancing rules.

The estimation of the reproduction number on a daily basis crucially relies on collected new infection counts.
In an emergency situation, these counts are of medium to low quality, due to errors and imprecisions occurring during the measurement and reporting processes, such as irrelevant
or missing counts, pseudo-seasonalities, week-end, etc. The low quality of collected data severely incurs accurate estimation of R(t) from state-of-the-art epidemiological tools.
To provide robust estimates of the daily reproduction number, capable to manage low quality Covid19 data, the present work elaborates on a state-of-the-art Poisson propagation model and designs regularizing convex functionals balancing the fidelity to the epidemiological mechanisms and spatiotemporal regularity constraints, leading to four estimators:

- Univariate: enforcing temporal piecewise linearity of the estimated R(t);

- Univariate Corrected: enforcing temporal piecewise linearity of the estimated R(t) and including the estimation of a sparse corrective term accounting for misreported infection counts;
  
- Multivariate: enforcing temporal piecewise linearity and spatial piecewise constancy of the estimated R(t) in county c at day t, based on a prior connectivity structure between counties;

- Multivariate Corrected: enforcing temporal piecewise linearity and spatial piecewise constancy of the estimated R(t) based on a prior connectivity structure between counties, and including the estimation of a sparse corrective term accounting for misreported infection counts.

Fast and memory efficient implementation of the nonsmooth convex optimization problems defining the aforementioned estimators permits daily estimation of the reproduction number in hundreds, possibly connected, territories simultaneously.

[GitHub](https://github.com/bpascal-fr/Covid-Estim-R) (Matlab toolbox)  

P. Abry, N. Pustelnik, S. Roux, P. Jensen, P. Flandrin, R. Gribonval, C.-G. Lucas, É. Guichard, P. Borgnat, & N. Garnier, N. (2020). Spatial and temporal regularization to estimate COVID-19 reproduction number R (t): Promoting piecewise smoothness via convex optimization. *PlosOne*, 15(8), e0237901.

B. Pascal, P. Abry, N. Pustelnik, S. Roux, R. Gribonval, & P. Flandrin. (2022). Nonsmooth convex optimization to estimate the Covid-19 reproduction number space-time evolution with robustness against low quality data. *IEEE Transactions on Signal Processing*, 70, 2859-2868. [arXiv:2109.09595](https://arXiv.org/abs/2109.09595)

## Musical Timbre Perception Models: From Perceptual to Learned Approaches

[timbre-metric-learning](https://github.com/bpascal-fr/timbre-metric-learning)

Timbre, encompassing an intricate set of acoustic cues, is key to identify sound sources, and especially to discriminate musical instruments and playing styles. Psychoacoustic studies focusing on timbre deploy massive efforts to explain human timbre perception. To uncover the acoustic substrates of timbre perceived dissimilarity, a recent work leveraged metric learning strategies on different perceptual representations and performed a meta-analysis of seventeen dissimilarity rated musical audio datasets. By learning salient patterns in very high-dimensional representations, metric learning accounts for a reasonably large part of the variance in human ratings. The present work shows that combining the most recent deep audio embeddings with a metric learning approach makes it possible to explains almost all the variance in human dissimilarity ratings. Furthermore, the robustness of the learning procedure against simulated human rating variability is thoroughly investigated. Intensive numerical experiments support the explanatory power and robustness against degraded training data of deep embeddings.

[GitHub](https://github.com/bpascal-fr/timbre-metric-learning) (Python toolbox) 

B. Pascal, & M. Lagrange. (2024). On the Robustness of Musical Timbre Perception Models: From Perceptual to Learned Approaches. *32nd European Signal Processing Conference,*, Aug. 24-30, Lyon, France. [hal-04501973](https://hal.science/hal-04501973v1/document)

## Signal detection based on the zeros of the *Kravchuk* spectrogram
[kravchuk-transform-and-its-zeros](https://github.com/bpascal-fr/kravchuk-transform-and-its-zeros)

Recent work in time-frequency analysis proposed to switch the focus from the maxima of the spectrogram toward its zeros. The zeros of signals in white Gaussian noise indeed form a random point pattern with a very stable structure. Using modern spatial statistics tools on the pattern of zeros of a spectrogram has led to component disentanglement and signal detection procedures. The major bottlenecks of this approach are the discretization of the Short-Time Fourier Transform and the necessarily bounded observation window in the time-frequency plane. Both impact the estimation of summary statistics of the zeros, which are then used in standard statistical tests. To circumvent these limitations, we propose a generalized time-frequency representation, which we call the *Kravchuk transform*. It naturally applies to *finite* signals, i.e., finite-dimensional vectors. The corresponding phase space, instead of the whole time- frequency plane, is compact, and particularly amenable to spatial statistics. On top of this, the Kravchuk transform has several natural properties for signal processing, among which covariance under the group action of SO(3), invertibility and symmetry with respect to complex conjugation. We further show that the point process of the zeros of the Kravchuk transform of discrete white Gaussian noise coincides in law with the zeros of the spherical Gaussian Analytic Function. This implies that the law of the zeros is invariant under isometries of the sphere. Elaborating on this theorem, we develop a procedure for signal detection based on the spatial statistics of the zeros of the Kravchuk spectrogram. The statistical power of this procedure is assessed by intensive numerical simulation, and compares favorably with respect to state-of-the-art zeros-based detection procedures. Furthermore it appears to be particularly robust to both low signal-to-noise ratio and small number of samples.  

[GitHub](https://github.com/bpascal-fr/kravchuk-transform-and-its-zeros) (Python toolbox)  

B. Pascal, & R. Bardenet, (2022). A covariant, discrete time-frequency representation tailored for zero-based signal detection. *IEEE Transactions on Signal Processing*, 70, 2950-2961. [arXiv:2202.03835](https://arXiv.org/abs/2202.03835)

## Point processes and spatial statistics in time-frequency analysis
[GeoSto-PP-for-TF](https://github.com/bpascal-fr/GeoSto-PP-for-TF)

Point processes in 2D or 3D have been major statistical models for spatial data in signal processing, from seismology to telecommunications. They come with an arsenal of exploration and inference tools, known as spatial statistics. Starting in 2015, point processes have also appeared in a more indirect way in signal processing, not as a statistical model for observed data, but as a natural way to describe and process nonstationary signals in the time-frequency plane. More precisely, consider linear “time-frequency” transforms from the space of square-integrable signal to spaces of analytic functions, such as the Gabor transform. The Gabor transform sends a one-dimensional signal, say a function of time like an audio recording, onto a function of a complex argument, the real part of which is interpreted as time, and the imaginary part as frequency. The modulus of that complex function is known as a spectrogram, and is to be read as the “musical score” of the initial signal, with a large value of the spectrogram at a given time and frequency being akin to a musical note on a score. Many signal processing algorithms revolve around identifying regions in the complex plane where the spectrogram is significantly large. In contrast, zeros of the spectrogram indicate perfect silence, a time at which a particular frequency is absent. Being the zeros of an analytic function, and actually a random analytic function if the input signal is considered random, these zeros form a point process in the complex plane. This tutorial is devoted to such point processes arising as the zeros of time-frequency transforms of random signals, to their links to the rich research around zeros of Gaussian analytic functions, and to how spatial statistics can yield signal detection and denoising algorithms that rely on identifying perturbations in the (point) pattern of silence.

[GitHub](https://github.com/bpascal-fr/GeoSto-PP-for-TF) (Python toolbox)  

R. Bardenet, & B. Pascal. Invited mini-course given at the *Stochastic Geometry Days*, November 15-19, 2021. Dunkerque, France.

Pascal, B., & Bardenet, R. (2025). Point Processes and spatial statistics in time-frequency analysis. In H. Biermé (Ed.), *Stochastic Geometry: Percolation, Tesselations, Gaussian Fields and Point Processes.* Springer. [arXiv:2402.19172](https://arxiv.org/abs/2402.19172)

## Automated texture segmentation  
[gsugar](https://github.com/bpascal-fr/gsugar)

Penalized Least Squares are widely used in signal and image processing. Yet, it suffers from a major limitation since it requires fine-tuning of the regularization parameters. Under assumptions on the noise probability distribution, Stein-based approaches provide unbiased estimator of the quadratic risk. The Generalized Stein Unbiased Risk Estimator is revisited to handle correlated Gaussian noise without requiring to invert the covariance matrix. Then, in order to avoid expansive grid search, it is necessary to design algorithmic scheme minimizing the quadratic risk with respect to regularization parameters. This work extends the Stein's Unbiased GrAdient estimator of the Risk of Deledalle *et al.* to the case of correlated Gaussian noise, deriving a general automatic tuning of regularization parameters. First, the theoretical asymptotic unbiasedness of the gradient estimator is demonstrated in the case of general correlated Gaussian noise. Then, the proposed parameter selection strategy is particularized to fractal texture segmentation, where problem formulation naturally entails inter-scale and spatially correlated noise. Numerical assessment is provided, as well as discussion of the practical issues.  

[GitHub](https://github.com/bpascal-fr/gsugar) (Matlab toolbox)  

B. Pascal, S. Vaiter, N. Pustelnik, & P. Abry (2021). Automated data-driven selection of the hyperparameters for Total-Variation based texture segmentation. *Journal of Mathematical Imaging and Vision,* 1–30. [arXiv:2004.09434](https://arXiv.org/abs/2004.09434)

## Signal and image processing for nonlinear physics  
[stein-piecewise-filtering](https://github.com/bpascal-fr/stein-piecewise-filtering)

Numerous fields of nonlinear physics, very different in nature, produce signals and images, that share the common feature of being essentially constituted of piecewise homogeneous phases.
Analyzing signals and images from corresponding experiments to construct relevant physical interpretations thus often requires detecting such phases and estimating accurately  their characteristics (borders, feature differences,...).
However, situations of physical relevance often comes with low to very low signal to noise precluding the standard use of classical linear filtering for analysis and denoising and thus calling for the design of advanced nonlinear signal/image filtering techniques.
Additionally, when dealing with experimental physics signals/images, a second limitation is the large amount of data that need to be analyzed to yield accurate and relevant conclusions (e.g., in producing a phase diagram or in analyzing  video frames of large size images) requiring the design of fast algorithms.
The present work proposes a unified signal/image nonlinear filtering procedure, with fast algorithms and an data-driven automated hyperparameter tuning, based on proximal operators and Stein unbiased estimator principles.
The interest and potential of these tools are illustrated at work on low-confinement solid friction signals and porous media multiphase flows.  

[GitHub](https://github.com/bpascal-fr/stein-piecewise-filtering) (MATLAB toolbox)

B. Pascal, N. Pustelnik, P. Abry, J.-C. Géminard & V. Vidal (2020).
Parameter-free and fast nonlinear piecewise fitering. Application to experimental physics.
*Annals of Telecommunications,* 75(11), 655-671. [arXiv:2006.03297](https://arXiv.org/abs/2006.03297)