//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
// File: totalEntropy_emxAPI.h
//
// GPU Coder version                    : 1.3
// CUDA/C/C++ source code generated on  : 08-May-2019 12:21:38
//
#ifndef TOTALENTROPY_EMXAPI_H
#define TOTALENTROPY_EMXAPI_H

// Include Files
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "totalEntropy_types.h"

// Function Declarations
extern emxArray_real_T *emxCreateND_real_T(int numDimensions, int *size);
extern emxArray_real_T *emxCreateWrapperND_real_T(double *data, int
  numDimensions, int *size);
extern emxArray_real_T *emxCreateWrapper_real_T(double *data, int rows, int cols);
extern emxArray_real_T *emxCreate_real_T(int rows, int cols);
extern void emxDestroyArray_real_T(emxArray_real_T *emxArray);
extern void emxInitArray_real_T(emxArray_real_T **pEmxArray, int numDimensions);

#endif

//
// File trailer for totalEntropy_emxAPI.h
//
// [EOF]
//
