/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 * File: _coder_Sample_MPPI_CartPole_api.h
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 14-May-2019 00:18:02
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

/* Type Definitions */
#ifndef struct_emxArray_real_T
#define struct_emxArray_real_T

struct emxArray_real_T
{
  real_T *data;
  int32_T *size;
  int32_T allocatedSize;
  int32_T numDimensions;
  boolean_T canFreeData;
};

#endif                                 /*struct_emxArray_real_T*/

#ifndef typedef_emxArray_real_T
#define typedef_emxArray_real_T

typedef struct emxArray_real_T emxArray_real_T;

#endif                                 /*typedef_emxArray_real_T*/

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void Sample_MPPI_CartPole(real_T K, real_T N, real_T variance,
  emxArray_real_T *Stk, emxArray_real_T *x, emxArray_real_T *delta_u,
  emxArray_real_T *u, real_T R, real_T mc, real_T mp, real_T l, real_T g, real_T
  kd, real_T dt);
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
