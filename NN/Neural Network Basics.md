# Neural Network building blocks

## Gradient Descent
- Numerical gradient
- Analytical gradient
  
#### Computational graph
Neural network is to be thought of as a copmutational graph. Derive gradeints on inputs w.r.t loss function. Let's say there is a function.
- $f(x,y,z) = (x+y)z$
- $x = -2, y = 5, z = -4$
- $q = (x+y)$
- $f = q*z$

We want ${\partial f} \over {\partial x}$, ${\partial f} \over {\partial y}$ and ${\partial f} \over {\partial z}$.

#### computing gradients
- $\frac{\partial f}{\partial f}$ = 1
- $\frac{\partial f}{\partial z}$ = q = 3
- $\frac{\partial f}{\partial q}$ = z = -4
- $\frac{\partial q}{\partial x}$ = 1
- $\frac{\partial q}{\partial y}$ = 1
- $\frac{\partial f}{\partial y}$ = $\frac{\partial f}{\partial q}\times \frac{\partial q}{\partial y}$ [Chain rule]
                                  = -4 $\times$ 1 = -4
-  $\frac{\partial f}{\partial x}$ = $\frac{\partial f}{\partial q}\times \frac{\partial q}{\partial x}$ [Chain rule]
                                  = -4 $\times$ 1 = -4

