# Parameter-Optimal-State-Transition-Algorithm (POSTA)
State transition algorithm (STA) is a new metaheuristic method, which is used for global optimization with box constraints without the derivative information.  
$\min f(x)$  
$\mathrm{s.t.}  x_{lb} \leq x \leq x_{ub}$  
In POSTA, we have four state tranformation operators, namely, rotation, translation, expansion and axesion.  
Rotation Tranformation(RT)

$$ x_{k+1}=x_{k}+\alpha R_{r} \frac{x_{k}}{n \|x_{k}\|_{2}}  $$ 

where, $\alpha$ is a positive constant, called rotation factor; $R_{r}$ $\in$ $\Re^{n\times n}$, is random matrix with its entries obeying the uniform distribution in the range of [-1, 1] and $\|\cdot\|_{2}$ is 2-norm of vector or Euclidean norm. The rotation transformation has the function of searching in a hypersphere.  

Translation Tranformation(RT)  

$$x_{k+1} = x_{k}+  \beta  R_{t}  \frac{x_{k}-x_{k-1}}{\|x_{k}-x_{k-1}\|_{2}}$$

where, $\beta$ is a positive constant, called translation factor; $R_{t}$ $\in \Re$ is a random variable with its components obeying the uniform distribution in the range of [0,1]. It is obvious to find  the translation transformation has the function of searching along a line from $x_{k-1}$ to $x_{k}$ at the starting point $x_{k}$, with the maximum length of $\beta$. 

Expansion Tranformation(RT)  

$$x_{k+1} = x_{k}+  \gamma  R_{e}x_{k}$$

where, $\gamma$ is a positive constant, called expansion factor; $R_{e} \in \Re^{n \times n}$ is a random diagonal matrix with its elements obeying the Gaussian distribution. It is also obvious to find  the expansion transformation has the function of expanding the components in $x_{k}$ to the range of $[-\infty, +\infty]$, searching in the whole space.

Axesion Tranformation(RT) 

$$x_{k+1} = x_{k}+  \delta  R_{a}x_{k}$$

where, $\delta$ is a positive constant, called axesion factor; $R_{a}$ $\in \Re^{n \times n}$ is a random diagonal matrix with its entries obeying the Gaussian distribution and only one random position having nonzero value. The axesion transformation aims to search along the axes and strengthens single dimensional search.

In POSTA, the state tranformation factors $\alpha, \beta, \gamma, \delta$ are dynamically changed, and they are chosen form a set $\Omega$ = {1, 1e-1, 1e-2, 1e-3, 1e-4, 1e-5, 1e-6, 1e-7, 1e-8}, and the optimal value will be maintained for some time.

This is a MATLAB implementation of the parameter optimal state transition algorithm for continuous optimization.  
the following reference is used:  
X.J. Zhou, C.H. Yang, W.H. Gui, A Statistical Study on Parameter Selection of Operators in Continuous State Transition Algorithm, IEEE Transactions on Cybernetics, 49(10):3722-3730,2019.

