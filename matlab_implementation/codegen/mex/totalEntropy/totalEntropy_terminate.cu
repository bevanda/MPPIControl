/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * totalEntropy_terminate.cu
 *
 * Code generation for function 'totalEntropy_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "totalEntropy.h"
#include "totalEntropy_terminate.h"
#include "_coder_totalEntropy_mex.h"
#include "totalEntropy_data.h"

/* Function Definitions */
void totalEntropy_atexit()
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void totalEntropy_terminate()
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (totalEntropy_terminate.cu) */
