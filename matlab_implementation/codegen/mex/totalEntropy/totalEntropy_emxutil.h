/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * totalEntropy_emxutil.h
 *
 * Code generation for function 'totalEntropy_emxutil'
 *
 */

#ifndef TOTALENTROPY_EMXUTIL_H
#define TOTALENTROPY_EMXUTIL_H

/* Include files */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "rtwtypes.h"
#include "totalEntropy_types.h"

/* Function Declarations */
extern void emxEnsureCapacity_real_T(emxArray_real_T *emxArray, int32_T oldNumel);
extern void emxFree_real_T(emxArray_real_T **pEmxArray);
extern void emxInit_real_T(emxArray_real_T **pEmxArray, int32_T numDimensions,
  boolean_T doPush);

#endif

/* End of code generation (totalEntropy_emxutil.h) */
