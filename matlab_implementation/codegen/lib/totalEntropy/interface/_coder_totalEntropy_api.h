/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_totalEntropy_api.h
 *
 * GPU Coder version                    : 1.3
 * CUDA/C/C++ source code generated on  : 08-May-2019 12:21:38
 */

#ifndef _CODER_TOTALENTROPY_API_H
#define _CODER_TOTALENTROPY_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_totalEntropy_api.h"

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
extern real_T totalEntropy(emxArray_real_T *Sk, emxArray_real_T *del_uk, real_T
  lambda);
extern void totalEntropy_api(const mxArray * const prhs[3], int32_T nlhs, const
  mxArray *plhs[1]);
extern void totalEntropy_atexit(void);
extern void totalEntropy_initialize(void);
extern void totalEntropy_terminate(void);
extern void totalEntropy_xil_shutdown(void);
extern void totalEntropy_xil_terminate(void);

#endif

/*
 * File trailer for _coder_totalEntropy_api.h
 *
 * [EOF]
 */
