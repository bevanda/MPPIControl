/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * CartPole_Dynamics.cu
 *
 * Code generation for function 'CartPole_Dynamics'
 *
 */

/* Include files */
#include <math.h>
#include "rt_nonfinite.h"
#include "CartPole_Dynamics.h"

/* Function Definitions */
void CartPole_Dynamics(real_T, real_T x_dot, real_T theta, real_T theta_dot,
  real_T u, real_T mc, real_T mp, real_T l, real_T g, real_T kd, real_T dX[4])
{
  real_T b_x;

  /*  States of the Pendulum dX(1) is X_dot dX(2) is X double dor, dX(3) is */
  /*  Theta_dot and dX(4) is theta double dot */
  /*  u is the force horizontally applied */
  /*  down position theta=0, up position theta=PI */
  dX[0] = x_dot;
  b_x = sin(theta);
  dX[1] = ((u - kd * x_dot) + mp * sin(theta) * (l * (theta_dot * theta_dot) + g
            * cos(theta))) / (mc + mp * (b_x * b_x));
  dX[2] = theta_dot;
  b_x = sin(theta);
  dX[3] = ((-(u - kd * x_dot) * cos(theta) - mp * l * (theta_dot * theta_dot) *
            cos(theta) * sin(theta)) - (mc + mp) * g * sin(theta)) / (l * (mc +
    mp * (b_x * b_x)));
}

/* End of code generation (CartPole_Dynamics.cu) */
