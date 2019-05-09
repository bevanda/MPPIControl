//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
// File: totalEntropy.cu
//
// GPU Coder version                    : 1.3
// CUDA/C/C++ source code generated on  : 08-May-2019 12:21:38
//

// Include Files
#include <cmath>
#include "totalEntropy.h"

// Function Definitions

//
// Calculation of expectation over all trajectorties
// Arguments    : const emxArray_real_T *Sk
//                const emxArray_real_T *del_uk
//                double lambda
// Return Type  : double
//
double totalEntropy(const emxArray_real_T *Sk, const emxArray_real_T *del_uk,
                    double lambda)
{
  double sum1;
  double sum2;
  int i0;
  int i;

  //  Normalization of cost function
  //      Sk = Sk./sum(Sk);\
  sum1 = 0.0;
  sum2 = 0.0;
  i0 = Sk->size[0];
  for (i = 0; i < i0; i++) {
    sum1 += std::exp(-(1.0 / lambda) * Sk->data[i]) * del_uk->data[i];
    sum2 += std::exp(-(1.0 / lambda) * Sk->data[i]);
  }

  return sum1 / sum2;
}

//
// File trailer for totalEntropy.cu
//
// [EOF]
//
