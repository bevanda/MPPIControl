/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_totalEntropy_mex.cu
 *
 * Code generation for function '_coder_totalEntropy_mex'
 *
 */

/* Include files */
#include "totalEntropy.h"
#include "_coder_totalEntropy_mex.h"
#include "totalEntropy_terminate.h"
#include "_coder_totalEntropy_api.h"
#include "totalEntropy_initialize.h"
#include "totalEntropy_data.h"

/* Function Declarations */
static void totalEntropy_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T
  nrhs, const mxArray *prhs[3]);

/* Function Definitions */
static void totalEntropy_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T
  nrhs, const mxArray *prhs[3])
{
  const mxArray *outputs[1];

  /* Check for proper number of arguments. */
  if (nrhs != 3) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs",
                        5, 12, 3, 4, 12, "totalEntropy");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal,
                        "EMLRT:runTime:TooManyOutputArguments", 3, 4, 12,
                        "totalEntropy");
  }

  /* Call the function. */
  totalEntropy_api(prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  emlrtReturnArrays(1, plhs, outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(totalEntropy_atexit);

  /* Module initialization. */
  totalEntropy_initialize();

  /* Dispatch the entry-point. */
  totalEntropy_mexFunction(nlhs, plhs, nrhs, prhs);

  /* Module termination. */
  totalEntropy_terminate();
}

emlrtCTX mexFunctionCreateRootTLS()
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_totalEntropy_mex.cu) */
