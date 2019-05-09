/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * sample_MPPI_CartPole_initialize.cu
 *
 * Code generation for function 'sample_MPPI_CartPole_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "sample_MPPI_CartPole.h"
#include "sample_MPPI_CartPole_initialize.h"
#include "_coder_sample_MPPI_CartPole_mex.h"
#include "sample_MPPI_CartPole_data.h"

/* Function Definitions */
void sample_MPPI_CartPole_initialize()
{
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal, "Distrib_Computing_Toolbox", 2);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (sample_MPPI_CartPole_initialize.cu) */
