//
// Prerelease License - for engineering feedback and testing purposes
// only. Not for sale.
// File: Sample_MPPI_CartPole.h
//
// MATLAB Coder version            : 4.2
// C/C++ source code generated on  : 14-May-2019 00:18:02
//
#ifndef SAMPLE_MPPI_CARTPOLE_H
#define SAMPLE_MPPI_CARTPOLE_H

// Include Files
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "Sample_MPPI_CartPole_types.h"

// Function Declarations
extern void Sample_MPPI_CartPole(double K, double N, double variance,
  emxArray_real_T *Stk, emxArray_real_T *x, emxArray_real_T *delta_u, const
  emxArray_real_T *u, double R, double mc, double mp, double l, double g, double
  kd, double dt);

#endif

//
// File trailer for Sample_MPPI_CartPole.h
//
// [EOF]
//
