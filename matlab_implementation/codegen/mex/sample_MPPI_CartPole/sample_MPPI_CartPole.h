/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * sample_MPPI_CartPole.h
 *
 * Code generation for function 'sample_MPPI_CartPole'
 *
 */

#ifndef SAMPLE_MPPI_CARTPOLE_H
#define SAMPLE_MPPI_CARTPOLE_H

/* Include files */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "rtwtypes.h"
#include "sample_MPPI_CartPole_types.h"

/* Function Declarations */
extern void sample_MPPI_CartPole(real_T k, real_T N, real_T variance, real_T
  Stk[1000], real_T x[400], real_T delta_u[100000], const real_T u[100], real_T
  R, real_T mc, real_T mp, real_T l, real_T g, real_T kd, real_T dt);

#endif

/* End of code generation (sample_MPPI_CartPole.h) */
