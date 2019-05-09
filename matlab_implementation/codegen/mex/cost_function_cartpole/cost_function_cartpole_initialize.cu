/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * cost_function_cartpole_initialize.cu
 *
 * Code generation for function 'cost_function_cartpole_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "cost_function_cartpole.h"
#include "cost_function_cartpole_initialize.h"
#include "_coder_cost_function_cartpole_mex.h"
#include "cost_function_cartpole_data.h"

/* Function Definitions */
void cost_function_cartpole_initialize()
{
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal, "Distrib_Computing_Toolbox", 2);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (cost_function_cartpole_initialize.cu) */
