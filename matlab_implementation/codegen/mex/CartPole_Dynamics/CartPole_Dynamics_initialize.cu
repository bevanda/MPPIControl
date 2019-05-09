/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * CartPole_Dynamics_initialize.cu
 *
 * Code generation for function 'CartPole_Dynamics_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "CartPole_Dynamics.h"
#include "CartPole_Dynamics_initialize.h"
#include "_coder_CartPole_Dynamics_mex.h"
#include "CartPole_Dynamics_data.h"

/* Function Definitions */
void CartPole_Dynamics_initialize()
{
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal, "Distrib_Computing_Toolbox", 2);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (CartPole_Dynamics_initialize.cu) */
