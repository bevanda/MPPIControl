/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * totalEntropy_initialize.cu
 *
 * Code generation for function 'totalEntropy_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "totalEntropy.h"
#include "totalEntropy_initialize.h"
#include "_coder_totalEntropy_mex.h"
#include "totalEntropy_data.h"

/* Function Definitions */
void totalEntropy_initialize()
{
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal, "Distrib_Computing_Toolbox", 2);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (totalEntropy_initialize.cu) */
