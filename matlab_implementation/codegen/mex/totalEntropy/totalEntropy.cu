/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * totalEntropy.cu
 *
 * Code generation for function 'totalEntropy'
 *
 */

/* Include files */
#include <math.h>
#include "rt_nonfinite.h"
#include "totalEntropy.h"

/* Function Definitions */
real_T totalEntropy(const emxArray_real_T *Sk, const emxArray_real_T *del_uk,
                    real_T lambda)
{
  real_T sum1;
  real_T sum2;
  int32_T i0;
  int32_T i;

  /*  Calculation of expectation over all trajectorties  */
  /*  Normalization of cost function  */
  /*      Sk = Sk./sum(Sk);\ */
  sum1 = 0.0;
  sum2 = 0.0;
  i0 = Sk->size[0];
  for (i = 0; i < i0; i++) {
    sum1 += exp(-(1.0 / lambda) * Sk->data[i]) * del_uk->data[i];
    sum2 += exp(-(1.0 / lambda) * Sk->data[i]);
  }

  return sum1 / sum2;
}

/* End of code generation (totalEntropy.cu) */
