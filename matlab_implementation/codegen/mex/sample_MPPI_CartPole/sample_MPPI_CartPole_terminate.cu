/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * sample_MPPI_CartPole_terminate.cu
 *
 * Code generation for function 'sample_MPPI_CartPole_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "sample_MPPI_CartPole.h"
#include "sample_MPPI_CartPole_terminate.h"
#include "_coder_sample_MPPI_CartPole_mex.h"
#include "sample_MPPI_CartPole_data.h"

/* Function Definitions */
void sample_MPPI_CartPole_atexit()
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void sample_MPPI_CartPole_terminate()
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (sample_MPPI_CartPole_terminate.cu) */
