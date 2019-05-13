/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 * File: _coder_Sample_MPPI_CartPole_api.h
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 13-May-2019 22:36:12
 */

#ifndef _CODER_SAMPLE_MPPI_CARTPOLE_API_H
#define _CODER_SAMPLE_MPPI_CARTPOLE_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_Sample_MPPI_CartPole_api.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void Sample_MPPI_CartPole(real_T K, real_T N, real_T variance, real_T
  Stk[1000], real_T x[400], real_T delta_u[100000], real_T u[100], real_T R,
  real_T mc, real_T mp, real_T l, real_T g, real_T kd, real_T dt);
extern void Sample_MPPI_CartPole_api(const mxArray *prhs[14], int32_T nlhs,
  const mxArray *plhs[3]);
extern void Sample_MPPI_CartPole_atexit(void);
extern void Sample_MPPI_CartPole_initialize(void);
extern void Sample_MPPI_CartPole_terminate(void);
extern void Sample_MPPI_CartPole_xil_shutdown(void);
extern void Sample_MPPI_CartPole_xil_terminate(void);

#endif

/*
 * File trailer for _coder_Sample_MPPI_CartPole_api.h
 *
 * [EOF]
 */
