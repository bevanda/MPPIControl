/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_cost_function_cartpole_mex.cu
 *
 * Code generation for function '_coder_cost_function_cartpole_mex'
 *
 */

/* Include files */
#include "cost_function_cartpole.h"
#include "_coder_cost_function_cartpole_mex.h"
#include "cost_function_cartpole_terminate.h"
#include "_coder_cost_function_cartpole_api.h"
#include "cost_function_cartpole_initialize.h"
#include "cost_function_cartpole_data.h"

/* Function Declarations */
static void c_cost_function_cartpole_mexFun(int32_T nlhs, mxArray *plhs[1],
  int32_T nrhs, const mxArray *prhs[7]);

/* Function Definitions */
static void c_cost_function_cartpole_mexFun(int32_T nlhs, mxArray *plhs[1],
  int32_T nrhs, const mxArray *prhs[7])
{
  const mxArray *outputs[1];

  /* Check for proper number of arguments. */
  if (nrhs != 7) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs",
                        5, 12, 7, 4, 22, "cost_function_cartpole");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal,
                        "EMLRT:runTime:TooManyOutputArguments", 3, 4, 22,
                        "cost_function_cartpole");
  }

  /* Call the function. */
  cost_function_cartpole_api(prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  emlrtReturnArrays(1, plhs, outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(cost_function_cartpole_atexit);

  /* Module initialization. */
  cost_function_cartpole_initialize();

  /* Dispatch the entry-point. */
  c_cost_function_cartpole_mexFun(nlhs, plhs, nrhs, prhs);

  /* Module termination. */
  cost_function_cartpole_terminate();
}

emlrtCTX mexFunctionCreateRootTLS()
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_cost_function_cartpole_mex.cu) */
