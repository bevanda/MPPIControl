/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * CartPole_Dynamics_terminate.cu
 *
 * Code generation for function 'CartPole_Dynamics_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "CartPole_Dynamics.h"
#include "CartPole_Dynamics_terminate.h"
#include "_coder_CartPole_Dynamics_mex.h"
#include "CartPole_Dynamics_data.h"

/* Function Definitions */
void CartPole_Dynamics_atexit()
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void CartPole_Dynamics_terminate()
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (CartPole_Dynamics_terminate.cu) */
