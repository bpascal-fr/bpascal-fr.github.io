% B. Pascal
% June 2026
% Texture segmentation from fractal features with
% Automatic tuning of hyperparameters from a Stein-based approach
%
% from
% - B. Pascal, N. Pustelnik, P. Abry: Strongly Convex Optimization for 
% Joint Fractal Feature Estimation and Texture Segmentation, 
% (2019) arxiv:1910.05246
% and
% - B. Pascal, S. Vaiter, N. Pustelnik, P. Abry: Automated data-driven 
% selection of the hyperparameters for Total-Variation based texture
% segmentation, (2020) arxiv:2004.09434


close all
clear variables
clear global variables
clc

addpath(genpath('./'))

run = false;

%% 1. HOMOGENEOUS ISOTROPIC FRACTAL TEXTURES 

% Image of size 2^N X 2^N
N   = 9;

% Local regularity, a.k.a Hurst exponent 
H   = 0.75;

% Local variance
Var = 1;

% Generate an homogeneous texture
HOM = fgn2D(N,H,Var);

figure(100); clf; colormap(gray)
imagesc(HOM); axis off image; title('Homogeneous texture','interpreter','latex','fontsize',20)


%% 2. PIECEWISE HOMOGENEOUS FRACTAL TEXTURE

% Image of size 2^N X 2^N
N = 9;

% Local regularities H
H1 = 0.5; H2 = 0.75;

% Local variances 
Var1 = 1; Var2 = 10;

% Choose among the three masks
[H, Var, MASK] = mask_ellipse(N,H1,H2,Var1,Var2);         % one central ellipse
% [H, Var, MASK] = mask_ellipse_PIECES(N,H1,H2,Var1,Var2);  % four ellipses
% [H, Var, MASK] = mask_rectangle(N,H1,H2,Var1,Var2);       % central rectangle

% Piecewise monofractal
X = fgn2D_piecewise(N,H,Var);
figure(101); clf; colormap(gray)
subplot(121); imagesc(MASK); axis off image; title('Mask','interpreter','latex','fontsize',20)
subplot(122); imagesc(X); axis off image; title('Texture','interpreter','latex','fontsize',20)

%% LOAD DATA IF NOT RUNNING THE CODE LIVE

if ~run
    load 'from_Matlab'
end

%% 3. MULTI-SCALE ANALYSIS - LEADERS COEFFICIENTS

% range of octaves (default 1:3)
jmin = 1;
jmax = 3;
JJ   = jmin:jmax;              

% Compute leaders and perform ordinary linear regression
if run
    [L_X, C_X] = multiscale_analysis(X,  JJ);
    h_LR = L_X.h_LR;
end

% Do not display intermediate results when optimizing hyperparameters
L_X.disp = false;

% Segmentation and score
K = 2;      % number of regions
[seg_LR,Th_LR]= trof(h_LR,K);
    % Th_LR: thresholded optimal estimate of local regularity 
    % seg_LR: obtained segmentation 
perf_LR = score(seg_LR,MASK);
    % percentage of well-classified pixels

f2 = figure(102); colormap(gray)
subplot(231); imagesc(h_LR); axis off image; title('$\widehat{h}^{\mathrm{LR}}$','interpreter','latex','fontsize',20)
subplot(234); imagesc(seg_LR); axis off image; title(['$\mathrm{LR}$ seg.: $',num2str(100*perf_LR,3),'$ \%'],'interpreter','latex','fontsize',20)
f2.Position = [131 178 1168 539];

%% 4. ROF FUNCTIONAL WITH MANUAL CHOICE OF REGULARIZATION PARAMETER

% Small value of the regularization parameter
lambda_rof = 0.5;

% % Medium value of the regularization parameter
% lambda_rof = 5;
% 
% % Large value of the regularization parameter
% lambda_rof = 50;

% Minimization of the ROF functional
if run
    x_rof_man = rof_manual(L_X,lambda_rof);
    h_rof_man = x_rof_man.h;
end

% Segmentation and score
K = 2;      % number of regions
[seg_rof_man,Th_rof_man]= trof(h_rof_man,K);
    % Th_man: thresholded optimal estimate of local regularity 
    % seg_man: obtained segmentation for selected hyperparameter
perf_rof_man = score(seg_rof_man,MASK);
    % percentage of well-classified pixels

f2 = figure(102); colormap(gray)
subplot(232); imagesc(h_rof_man); axis off image; title(['$\widehat{h}^{\mathrm{ROF}}$ -- $\theta = ',num2str(lambda_rof,3),'$'],'interpreter','latex','fontsize',20)
subplot(235); imagesc(seg_rof_man); axis off image; title(['$\mathrm{ROF}$ manual seg.: $',num2str(100*perf_rof_man,3),'$ \%'],'interpreter','latex','fontsize',20)
f2.Position = [131 178 1168 539];

%% 5. BFGS MINIMIZATION USING SUGAR -- ROF FUNCTIONAL

% Automatic search for best lambda for rof algorithm
% maxit = 10;
% lbd_in.l = 1e-2;
if run
    [x_rof_opt,lbd_rof_opt] = bfgs_rof_gsugar(L_X);
    h_rof_opt = x_rof_opt.h;
    l_rof_opt = lbd_rof_opt.l;
end
% [x_rof_opt,lbd_rof_opt] = bfgs_rof_gsugar(L_X, maxit,lbd_in);
    % maxit: max. number iterations (defaut 20)
    % lbd_in.h: initial lambda (defaut (5.5) of the article)
    % x_opt.h: estimate of local regularity with lowest estimated risk
    % lbd_rof_opt.l: optimal hyperparameter lambda
    
% Segmentation and score
K = 2;      % number of regions
[seg_rof_opt,Th_rof_opt]= trof(h_rof_opt,K);
    % Th_opt: thresholded optimal estimate of local regularity 
    % seg_opt: obtained segmentation for optimal hyperparameters
perf_rof = score(seg_rof_opt,MASK);
    % percentage of well-classified pixels
    

f2 = figure(102); colormap(gray)
subplot(233); imagesc(h_rof_opt); axis off image; title(['$\widehat{h}^{\mathrm{ROF}}$ -- $\widehat{\theta}^\dagger = ',num2str(l_rof_opt,3),'$'],'interpreter','latex','fontsize',20)
subplot(236); imagesc(seg_rof_opt); axis off image; title(['$\mathrm{ROF}$ GSUGAR seg.: $',num2str(100*perf_rof,3),'$ \%'],'interpreter','latex','fontsize',20)
f2.Position = [131 178 1168 539];

%% 6.1 BFGS MINIMIZATION USING SUGAR -- JOINT FUNCTIONAL

% Automatic search for best (lambda_h,lambda_v) for joint algorithm
% maxit = 10;
% lbd_in.h = 1e-2; lbd_in.v = 1e-2;
if run
    [x_j_opt,lbd_j_opt] = bfgs_joint_gsugar(L_X);
    h_j_opt = x_j_opt.h;
    lh_j_opt = lbd_j_opt.h;
    lv_j_opt = lbd_j_opt.v;
end
% [x_j_opt,lbd_j_opt] = bfgs_joint_gsugar(L_X, maxit,lbd_in);
    % maxit: max. number iterations (defaut 20)
    % lbd_in.h: initial lambda_h (defaut (5.5) of the article)
    % lbd_in.v: initial lambda_v (defaut (5.5) of the article)
    % x_opt.h: estimate of local regularity with lowest estimated risk
    % x_opt.v: estimate of local power with lowest estimated risk
    % lbd_j_opt.h: optimal hyperparameter lambda_h
    % lbd_j_opt.v: optimal hyperparameter lambda_v
    
% Segmentation and score
K = 2;      % number of regions
[seg_j_opt,Th_j_opt]= trof(h_j_opt,K);
    % Th_opt: thresholded optimal estimate of local regularity 
    % seg_opt: obtained segmentation for optimal hyperparameters
perf_j = score(seg_j_opt,MASK);
    % percentage of well-classified pixels
    

f3 = figure(103); colormap(gray)
subplot(231); imagesc(h_rof_opt); axis off image; title('$\widehat{h}^{\mathrm{ROF}}$','interpreter','latex','fontsize',20)
subplot(234); imagesc(seg_rof_opt); axis off image; title(['$\mathrm{ROF}$ GSUGAR seg.: $',num2str(100*perf_rof,3),'$ \%'],'interpreter','latex','fontsize',20)
subplot(232); imagesc(h_j_opt); axis off image; title('$\widehat{h}^{\mathrm{J}}$','interpreter','latex','fontsize',20)
subplot(235); imagesc(seg_j_opt); axis off image; title(['$\mathrm{J}$ GSUGAR seg.: $',num2str(100*perf_j,3),'$ \%'],'interpreter','latex','fontsize',20)
f3.Position = [131 178 1168 539];

%% 6.2 BFGS MINIMIZATION USING SUGAR -- COUPLED FUNCTIONAL

% Automatic search for best (lambda,alpha) for coupled algorithm
% maxit = 10;
% lbd_in.l = 1e-2; lbd_in.a = 1e-2;
if run
    [x_c_opt,lbd_c_opt] = bfgs_coupled_gsugar(L_X);
    h_c_opt = x_c_opt.h;
    l_c_opt = lbd_c_opt.l;
    a_c_opt = lbd_c_opt.a;
end
% [x_c_opt,lbd_c_opt] = bfgs_coupled_gsugar(L_X, maxit,lbd_in);
    % maxit: max. number iterations (defaut 20)
    % lbd_in.l: initial lambda 
    % lbd_in.a: initial alpha
    % x_opt.h: estimate of local regularity with lowest estimated risk
    % x_opt.v: estimate of local power with lowest estimated risk
    % lbd_c_opt.l: optimal hyperparameter lambda
    % lbd_c_opt.a: optimal hyperparameter alpha
    
% Segmentation and score
K = 2;      % number of regions
[seg_c_opt,Th_c_opt]= trof(h_c_opt,K);
    % Th_opt: thresholded optimal estimate of local regularity 
    % seg_opt: obtained segmentation for optimal hyperparameters
perf_c = score(seg_c_opt,MASK);
    % percentage of well-classified pixels
    

f3 = figure(103); colormap(gray)
subplot(233); imagesc(h_c_opt); axis off image; title('$\widehat{h}^{\mathrm{C}}$','interpreter','latex','fontsize',20)
subplot(236); imagesc(seg_c_opt); axis off image; title(['$\mathrm{C}$ GSUGAR seg.: $',num2str(100*perf_c,3),'$ \%'],'interpreter','latex','fontsize',20)
f3.Position = [131 178 1168 539];
