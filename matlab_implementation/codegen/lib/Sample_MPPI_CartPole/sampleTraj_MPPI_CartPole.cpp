//
// Prerelease License - for engineering feedback and testing purposes
// only. Not for sale.
// File: sampleTraj_MPPI_CartPole.cpp
//
// MATLAB Coder version            : 4.2
// C/C++ source code generated on  : 13-May-2019 22:36:12
//

// Include Files
#include <cmath>
#include "Sample_MPPI_CartPole.h"
#include "sampleTraj_MPPI_CartPole.h"
#include "randn.h"

// Function Definitions

//
// Arguments    : double k
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
void sampleTraj_MPPI_CartPole(double k, double N, double variance, double Stk
  [1000], double x[400], double delta_u[100000], const double u[100], double R,
  double mc, double mp, double l, double g, double kd, double dt)
{
  int i1;
  int i;
  int i2;
  int i3;
  double b_u;
  int dX_idx_0_tmp;
  double b_dX_idx_0_tmp;
  double a_tmp_tmp;
  double a_tmp;
  int dX_idx_1_tmp;
  double b_dX_idx_1_tmp;
  double c_dX_idx_1_tmp;
  double d_dX_idx_1_tmp;
  double dX_idx_2;
  int i4;
  int i5;
  i1 = static_cast<int>((N - 1.0));
  for (i = 0; i < i1; i++) {
    i2 = static_cast<int>(k) - 1;
    i3 = i + 100 * i2;
    delta_u[i3] = variance * randn();
    b_u = u[i] + delta_u[i3];

    //  States of the Pendulum dX(1) is X_dot dX(2) is X double dor, dX(3) is
    //  Theta_dot and dX(4) is theta double dot
    //  u is the force horizontally applied
    //  down position theta=0, up position theta=PI
    dX_idx_0_tmp = i << 2;
    b_dX_idx_0_tmp = x[1 + dX_idx_0_tmp];
    a_tmp_tmp = x[2 + dX_idx_0_tmp];
    a_tmp = std::sin(a_tmp_tmp);
    dX_idx_1_tmp = 3 + dX_idx_0_tmp;
    b_dX_idx_1_tmp = kd * b_dX_idx_0_tmp;
    c_dX_idx_1_tmp = std::cos(a_tmp_tmp);
    d_dX_idx_1_tmp = x[dX_idx_1_tmp] * x[dX_idx_1_tmp];
    dX_idx_2 = a_tmp_tmp + x[3 + (i << 2)] * dt;
    a_tmp_tmp = x[3 + (i << 2)] + ((-(b_u - b_dX_idx_1_tmp) * c_dX_idx_1_tmp -
      mp * l * d_dX_idx_1_tmp * c_dX_idx_1_tmp * a_tmp) - (mc + mp) * g * a_tmp)
      / (l * (mc + mp * (a_tmp * a_tmp))) * dt;
    i4 = (i + 1) << 2;
    x[i4] = x[dX_idx_0_tmp] + b_dX_idx_0_tmp * dt;
    dX_idx_1_tmp = 1 + i4;
    x[dX_idx_1_tmp] = b_dX_idx_0_tmp + ((b_u - b_dX_idx_1_tmp) + mp * a_tmp * (l
      * d_dX_idx_1_tmp + g * c_dX_idx_1_tmp)) / (mc + mp * (a_tmp * a_tmp)) * dt;
    dX_idx_0_tmp = 2 + i4;
    x[dX_idx_0_tmp] = dX_idx_2;
    i5 = 3 + i4;
    x[i5] = a_tmp_tmp;
    a_tmp_tmp = u[i] + delta_u[i3];

    //  p is position of Cart Pole Theta is angle theta_dot is change in
    //  angle and p_dot is change in position
    dX_idx_2 = std::cos(x[dX_idx_0_tmp]);
    Stk[i2] += ((((6.0 * (x[i4] * x[i4]) + 12.0 * ((1.0 + dX_idx_2) * (1.0 +
      dX_idx_2))) + R * (a_tmp_tmp * a_tmp_tmp)) + 0.1 * (x[i5] * x[i5])) + 0.1 *
                (x[dX_idx_1_tmp] * x[dX_idx_1_tmp])) * dt;
  }

  //  end function
}

//
// File trailer for sampleTraj_MPPI_CartPole.cpp
//
// [EOF]
//
