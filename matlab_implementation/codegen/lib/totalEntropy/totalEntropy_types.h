//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
// File: totalEntropy_types.h
//
// GPU Coder version                    : 1.3
// CUDA/C/C++ source code generated on  : 08-May-2019 12:21:38
//
#ifndef TOTALENTROPY_TYPES_H
#define TOTALENTROPY_TYPES_H

// Include Files
#include "rtwtypes.h"

// Type Definitions
struct emxArray_real_T
{
  double *data;
  int *size;
  int allocatedSize;
  int numDimensions;
  boolean_T canFreeData;
};

#endif

//
// File trailer for totalEntropy_types.h
//
// [EOF]
//
