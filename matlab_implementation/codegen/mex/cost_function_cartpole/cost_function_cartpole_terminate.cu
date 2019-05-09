/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * cost_function_cartpole_terminate.cu
 *
 * Code generation for function 'cost_function_cartpole_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "cost_function_cartpole.h"
#include "cost_function_cartpole_terminate.h"
#include "_coder_cost_function_cartpole_mex.h"
#include "cost_function_cartpole_data.h"

/* Function Definitions */
void cost_function_cartpole_atexit()
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void cost_function_cartpole_terminate()
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (cost_function_cartpole_terminate.cu) */
