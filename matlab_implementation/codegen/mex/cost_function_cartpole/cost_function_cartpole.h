/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * cost_function_cartpole.h
 *
 * Code generation for function 'cost_function_cartpole'
 *
 */

#ifndef COST_FUNCTION_CARTPOLE_H
#define COST_FUNCTION_CARTPOLE_H

/* Include files */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "rtwtypes.h"
#include "cost_function_cartpole_types.h"

/* Function Declarations */
extern real_T cost_function_cartpole(real_T p, real_T p_dot, real_T theta,
  real_T theta_dot, real_T u, real_T dt, real_T R);

#endif

/* End of code generation (cost_function_cartpole.h) */
