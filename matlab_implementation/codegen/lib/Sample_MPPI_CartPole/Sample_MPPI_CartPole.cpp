//
// Prerelease License - for engineering feedback and testing purposes
// only. Not for sale.
// File: Sample_MPPI_CartPole.cpp
//
// MATLAB Coder version            : 4.2
// C/C++ source code generated on  : 13-May-2019 22:36:12
//

// Include Files
#include "Sample_MPPI_CartPole.h"
#include "randn.h"
#include "sampleTraj_MPPI_CartPole.h"

// Function Definitions

//
// Arguments    : double K
//                double N
//                double variance
//                double Stk[1000]
//                double x[400]
//                double delta_u[100000]
//                const double u[100]
//                double R
//                double mc
//                double mp
//                double l
//                double g
//                double kd
//                double dt
// Return Type  : void
//
void Sample_MPPI_CartPole(double K, double N, double variance, double Stk[1000],
  double x[400], double delta_u[100000], const double u[100], double R, double
  mc, double mp, double l, double g, double kd, double dt)
{
  int i0;
  int k;
  i0 = static_cast<int>(K);
  for (k = 0; k < i0; k++) {
    sampleTraj_MPPI_CartPole(1.0 + static_cast<double>(k), N, variance, Stk, x,
      delta_u, u, R, mc, mp, l, g, kd, dt);
    delta_u[(static_cast<int>(N) + 100 * k) - 1] = variance * randn();
  }

  //  end function
}

//
// File trailer for Sample_MPPI_CartPole.cpp
//
// [EOF]
//
