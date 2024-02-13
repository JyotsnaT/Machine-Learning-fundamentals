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


#### Gradient descent with momentum [source](https://boostedml.com/2020/07/gradient-descent-and-momentum-the-heavy-ball-method.html)
Issues with naive gradient descent
- Error function has different curvature in different regions
- If learning rate is large, gradient descent moves faster in the regions of low curvature and oscillates in the regions of high curvature leading to slow convergence.
- If learning rate is small, gradeint descent moves slower in the regions of low curvature and moves fast in the regions of high curvature.
- We need to take smaller steps in high curvature regions to dampen the oscillations
- We need to take larger steps in low curvature regions to move faster.

Solution
- Using momentum, which is based on the heavy ball method. Heavy ball moves faster in the regions of high curvature avoiding oscillations.
- The heavy ball carries high momentum and used that to move faster to the lowest point.
- Momentum term is added to the regular gradient descent algorithm
  
  $\theta _{i+1} = \theta _i - \alpha \Delta L$ + \beta(\theta _{i+1} - \theta _{i})$
- Momentum term $\beta(\theta _{i+1} - \theta _{i})$ accounts for the amount of change in gradient from the last change.
- If there is large change in direction, this term will penalize it and we take small steps.
- If there is small change in direction, we take large steps.


