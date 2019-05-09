/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * cost_function_cartpole.cu
 *
 * Code generation for function 'cost_function_cartpole'
 *
 */

/* Include files */
#include <math.h>
#include "rt_nonfinite.h"
#include "cost_function_cartpole.h"

/* Function Definitions */
real_T cost_function_cartpole(real_T p, real_T p_dot, real_T theta, real_T
  theta_dot, real_T u, real_T dt, real_T R)
{
  real_T a;

  /*  p is position of Cart Pole Theta is angle theta_dot is change in */
  /*  angle and p_dot is change in position */
  a = 1.0 + cos(theta);
  return ((((6.0 * (p * p) + 12.0 * (a * a)) + R * (u * u)) + 0.1 * (theta_dot *
            theta_dot)) + 0.1 * (p_dot * p_dot)) * dt;
}

/* End of code generation (cost_function_cartpole.cu) */
