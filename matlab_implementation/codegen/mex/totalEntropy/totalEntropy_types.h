/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * totalEntropy_types.h
 *
 * Code generation for function 'totalEntropy'
 *
 */

#ifndef TOTALENTROPY_TYPES_H
#define TOTALENTROPY_TYPES_H

/* Include files */
#include "rtwtypes.h"

/* Type Definitions */
struct emxArray_real_T
{
  real_T *data;
  int32_T *size;
  int32_T allocatedSize;
  int32_T numDimensions;
  boolean_T canFreeData;
};

#endif

/* End of code generation (totalEntropy_types.h) */
