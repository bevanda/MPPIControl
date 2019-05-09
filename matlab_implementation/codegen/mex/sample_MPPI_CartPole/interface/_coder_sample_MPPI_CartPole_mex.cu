/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_sample_MPPI_CartPole_mex.cu
 *
 * Code generation for function '_coder_sample_MPPI_CartPole_mex'
 *
 */

/* Include files */
#include "sample_MPPI_CartPole.h"
#include "_coder_sample_MPPI_CartPole_mex.h"
#include "sample_MPPI_CartPole_terminate.h"
#include "_coder_sample_MPPI_CartPole_api.h"
#include "sample_MPPI_CartPole_initialize.h"
#include "sample_MPPI_CartPole_data.h"

/* Function Declarations */
static void c_sample_MPPI_CartPole_mexFunct(int32_T nlhs, mxArray *plhs[3],
  int32_T nrhs, const mxArray *prhs[14]);

/* Function Definitions */
static void c_sample_MPPI_CartPole_mexFunct(int32_T nlhs, mxArray *plhs[3],
  int32_T nrhs, const mxArray *prhs[14])
{
  const mxArray *outputs[3];
  int32_T b_nlhs;

  /* Check for proper number of arguments. */
  if (nrhs != 14) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs",
                        5, 12, 14, 4, 20, "sample_MPPI_CartPole");
  }

  if (nlhs > 3) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal,
                        "EMLRT:runTime:TooManyOutputArguments", 3, 4, 20,
                        "sample_MPPI_CartPole");
  }

  /* Call the function. */
  sample_MPPI_CartPole_api(prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }

  emlrtReturnArrays(b_nlhs, plhs, outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(sample_MPPI_CartPole_atexit);

  /* Module initialization. */
  sample_MPPI_CartPole_initialize();

  /* Dispatch the entry-point. */
  c_sample_MPPI_CartPole_mexFunct(nlhs, plhs, nrhs, prhs);

  /* Module termination. */
  sample_MPPI_CartPole_terminate();
}

emlrtCTX mexFunctionCreateRootTLS()
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_sample_MPPI_CartPole_mex.cu) */
