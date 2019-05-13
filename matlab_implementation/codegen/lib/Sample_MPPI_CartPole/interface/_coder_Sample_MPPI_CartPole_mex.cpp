/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 * File: _coder_Sample_MPPI_CartPole_mex.cpp
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 13-May-2019 22:36:12
 */

/* Include Files */
#include "_coder_Sample_MPPI_CartPole_api.h"
#include "_coder_Sample_MPPI_CartPole_mex.h"

/* Function Declarations */
static void c_Sample_MPPI_CartPole_mexFunct(int32_T nlhs, mxArray *plhs[3],
  int32_T nrhs, const mxArray *prhs[14]);

/* Function Definitions */

/*
 * Arguments    : int32_T nlhs
 *                mxArray *plhs[3]
 *                int32_T nrhs
 *                const mxArray *prhs[14]
 * Return Type  : void
 */
static void c_Sample_MPPI_CartPole_mexFunct(int32_T nlhs, mxArray *plhs[3],
  int32_T nrhs, const mxArray *prhs[14])
{
  const mxArray *outputs[3];
  int32_T b_nlhs;
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 14) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 14, 4,
                        20, "Sample_MPPI_CartPole");
  }

  if (nlhs > 3) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 20,
                        "Sample_MPPI_CartPole");
  }

  /* Call the function. */
  Sample_MPPI_CartPole_api(prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }

  emlrtReturnArrays(b_nlhs, plhs, outputs);
}

/*
 * Arguments    : int32_T nlhs
 *                mxArray * const plhs[]
 *                int32_T nrhs
 *                const mxArray * const prhs[]
 * Return Type  : void
 */
void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(Sample_MPPI_CartPole_atexit);

  /* Module initialization. */
  Sample_MPPI_CartPole_initialize();

  /* Dispatch the entry-point. */
  c_Sample_MPPI_CartPole_mexFunct(nlhs, plhs, nrhs, prhs);

  /* Module termination. */
  Sample_MPPI_CartPole_terminate();
}

/*
 * Arguments    : void
 * Return Type  : emlrtCTX
 */
emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/*
 * File trailer for _coder_Sample_MPPI_CartPole_mex.cpp
 *
 * [EOF]
 */
