/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * CartPole_Dynamics.h
 *
 * Code generation for function 'CartPole_Dynamics'
 *
 */

#ifndef CARTPOLE_DYNAMICS_H
#define CARTPOLE_DYNAMICS_H

/* Include files */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "rtwtypes.h"
#include "CartPole_Dynamics_types.h"

/* Function Declarations */
extern void CartPole_Dynamics(real_T x, real_T x_dot, real_T theta, real_T
  theta_dot, real_T u, real_T mc, real_T mp, real_T l, real_T g, real_T kd,
  real_T dX[4]);

#endif

/* End of code generation (CartPole_Dynamics.h) */
