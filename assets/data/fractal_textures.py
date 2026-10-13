import numpy as np
from afbf import tbfield, coordinates

def fgn2D(N=9,H=0.5,Var=1):

    # Generate homogeneous fractional Brownian field of Hurst exponent 0.5
    Z = tbfield('fbf')

    # Change the parameter of the Hurst function so that if matches the targetted H
    Z.hurst.ChangeParameters(np.array([[H]]))
    Z.NormalizeModel()
    
    # Define the grid of coordinates
    coord = coordinates(2**N+1)
    
    # Simulate the field
    z = Z.Simulate(coord)
    z_array = z.values.reshape(z.M)
    
    # Generate the stationary fractional Gaussian field
    fGf = 0.5*(z_array[:-1,:-1] - z_array[1:,:-1]) + 0.5*(z_array[:-1,0:-1] - z_array[:-1,1:])

    # Impose the local variance
    X = fGf/np.std(fGf)*np.sqrt(Var)

    return X

def mask_ellipse(N,H0,H1,S0,S1):

    # CREATION OF MASKS

    MASK = np.zeros((2**N,2**N));
    H = H0*np.ones((2**N,2**N));
    S = S0*np.ones((2**N,2**N));
    x = np.linspace(-20,20,2**N);
    y = x;
    [X,Y] = np.meshgrid(x,y);
    
    MASK[np.sqrt(3)*X**2+5*Y**2 < 500] = 1;
    H[np.sqrt(3)*X**2+5*Y**2 < 500] = H1;
    S[np.sqrt(3)*X**2+5*Y**2 < 500] = S1;

    return H, S, MASK

def mask_ellipse_PIECES(N,H0,H1,S0,S1):
    
    # CREATION OF MASKS

    MASK = np.zeros((2**N,2**N));
    H = H0*np.ones((2**N,2**N));
    S = S0*np.ones((2**N,2**N));
    x = np.linspace(-20,20,2**N);
    y = x;
    [X,Y] = np.meshgrid(x,y);
    
    MASK[np.sqrt(3)*(X-10)**2+5*(Y-10)**2 < 125] = 1;
    H[np.sqrt(3)*(X-10)**2+5*(Y-10)**2 < 125] = H1;
    S[np.sqrt(3)*(X-10)**2+5*(Y-10)**2 < 125] = S1;
    
    MASK[np.sqrt(3)*(X-10)**2+5*(Y+10)**2 < 125] = 1;
    H[np.sqrt(3)*(X-10)**2+5*(Y+10)**2 < 125] = H1;
    S[np.sqrt(3)*(X-10)**2+5*(Y+10)**2 < 125] = S1;
    
    MASK[np.sqrt(3)*(X+10)**2+5*(Y-10)**2 < 125] = 1;
    H[np.sqrt(3)*(X+10)**2+5*(Y-10)**2 < 125] = H1;
    S[np.sqrt(3)*(X+10)**2+5*(Y-10)**2 < 125] = S1;
    
    MASK[np.sqrt(3)*(X+10)**2+5*(Y+10)**2 < 125] = 1;
    H[np.sqrt(3)*(X+10)**2+5*(Y+10)**2 < 125] = H1;
    S[np.sqrt(3)*(X+10)**2+5*(Y+10)**2 < 125] = S1;
    
    return H, S, MASK

def mask_rectangle(N,H0,H1,S0,S1):
    
    H = H0*np.ones((2**N,2**N)); 
    S = S0*np.ones((2**N,2**N));
    MASK = np.zeros((2**N,2**N));
    x1 = np.linspace(-5,5,2**N);
    x2 = x1;
    [X1, X2] = np.meshgrid(x1,x2);
    
    S[(X1<2.5)&(X1>-2.5)&(X2<2.5)&(X2>-2.5)] = S1;
    H[(X1<2.5)&(X1>-2.5)&(X2<2.5)&(X2>-2.5)] = H1;
    MASK[(X1<2.5)&(X1>-2.5)&(X2<2.5)&(X2>-2.5)] = 1;

    return H, S, MASK

def fgn2D_piecewise(N,H0,H1,Var0,Var1,MASK):

    X0 = fgn2D(N,H0,Var0)
    X1 = fgn2D(N,H1,Var1)
    
    X = X0
    X[MASK==1] = X1[MASK==1]

    return X