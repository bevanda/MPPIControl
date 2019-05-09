/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_CartPole_Dynamics_mex.cu
 *
 * Code generation for function '_coder_CartPole_Dynamics_mex'
 *
 */

/* Include files */
#include "CartPole_Dynamics.h"
#include "_coder_CartPole_Dynamics_mex.h"
#include "CartPole_Dynamics_terminate.h"
#include "_coder_CartPole_Dynamics_api.h"
#include "CartPole_Dynamics_initialize.h"
#include "CartPole_Dynamics_data.h"

/* Function Declarations */
static void CartPole_Dynamics_mexFunction(int32_T nlhs, mxArray *plhs[1],
  int32_T nrhs, const mxArray *prhs[10]);

/* Function Definitions */
static void CartPole_Dynamics_mexFunction(int32_T nlhs, mxArray *plhs[1],
  int32_T nrhs, const mxArray *prhs[10])
{
  const mxArray *outputs[1];

  /* Check for proper number of arguments. */
  if (nrhs != 10) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs",
                        5, 12, 10, 4, 17, "CartPole_Dynamics");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal,
                        "EMLRT:runTime:TooManyOutputArguments", 3, 4, 17,
                        "CartPole_Dynamics");
  }

  /* Call the function. */
  CartPole_Dynamics_api(prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  emlrtReturnArrays(1, plhs, outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(CartPole_Dynamics_atexit);

  /* Module initialization. */
  CartPole_Dynamics_initialize();

  /* Dispatch the entry-point. */
  CartPole_Dynamics_mexFunction(nlhs, plhs, nrhs, prhs);

  /* Module termination. */
  CartPole_Dynamics_terminate();
}

emlrtCTX mexFunctionCreateRootTLS()
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_CartPole_Dynamics_mex.cu) */
