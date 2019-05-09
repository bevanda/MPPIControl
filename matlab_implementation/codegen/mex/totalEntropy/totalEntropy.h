/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * totalEntropy.h
 *
 * Code generation for function 'totalEntropy'
 *
 */

#ifndef TOTALENTROPY_H
#define TOTALENTROPY_H

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
extern real_T totalEntropy(const emxArray_real_T *Sk, const emxArray_real_T
  *del_uk, real_T lambda);

#endif

/* End of code generation (totalEntropy.h) */
