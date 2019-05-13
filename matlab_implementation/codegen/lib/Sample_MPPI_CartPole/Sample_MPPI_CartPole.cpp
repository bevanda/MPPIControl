//
// Prerelease License - for engineering feedback and testing purposes
// only. Not for sale.
// File: Sample_MPPI_CartPole.cpp
//
// MATLAB Coder version            : 4.2
// C/C++ source code generated on  : 14-May-2019 00:18:02
//

// Include Files
#include <cmath>
#include "Sample_MPPI_CartPole.h"
#include "Sample_MPPI_CartPole_emxutil.h"
#include "randn.h"

// Function Definitions

//
// Arguments    : double K
//                double N
//                double variance
//                emxArray_real_T *Stk
//                emxArray_real_T *x
//                emxArray_real_T *delta_u
//                const emxArray_real_T *u
//                double R
//                double mc
//                double mp
//                double l
//                double g
//                double kd
//                double dt
// Return Type  : void
//
void Sample_MPPI_CartPole(double K, double N, double variance, emxArray_real_T
  *Stk, emxArray_real_T *x, emxArray_real_T *delta_u, const emxArray_real_T *u,
  double R, double mc, double mp, double l, double g, double kd, double dt)
{
  int i0;
  emxArray_real_T *b_x;
  int k;
  int i1;
  int i;
  double x_dot;
  double theta;
  double theta_dot;
  double b_u;
  double a_tmp;
  double dX_tmp;
  double b_dX_tmp;
  double dX[4];
  int loop_ub;
  int b_loop_ub;
  int i2;
  i0 = static_cast<int>(K);
  emxInit_real_T(&b_x, 1);
  for (k = 0; k < i0; k++) {
    i1 = static_cast<int>((N - 1.0));
    for (i = 0; i < i1; i++) {
      delta_u->data[i + delta_u->size[0] * k] = variance * randn();
      x_dot = x->data[1 + x->size[0] * i];
      theta = x->data[2 + x->size[0] * i];
      theta_dot = x->data[3 + x->size[0] * i];
      b_u = u->data[i] + delta_u->data[i + delta_u->size[0] * k];

      //  States of the Pendulum dX(1) is X_dot dX(2) is X double dor, dX(3) is
      //  Theta_dot and dX(4) is theta double dot
      //  u is the force horizontally applied
      //  down position theta=0, up position theta=PI
      a_tmp = std::sin(theta);
      dX_tmp = b_u - kd * x_dot;
      b_u = std::cos(theta);
      b_dX_tmp = theta_dot * theta_dot;
      dX[1] = (dX_tmp + mp * a_tmp * (l * b_dX_tmp + g * b_u)) / (mc + mp *
        (a_tmp * a_tmp));
      dX[3] = ((-dX_tmp * b_u - mp * l * b_dX_tmp * b_u * a_tmp) - (mc + mp) * g
               * a_tmp) / (l * (mc + mp * (a_tmp * a_tmp)));
      loop_ub = x->size[0];
      b_loop_ub = x->size[0] - 1;
      i2 = b_x->size[0];
      b_x->size[0] = b_loop_ub + 1;
      emxEnsureCapacity_real_T(b_x, i2);
      for (i2 = 0; i2 <= b_loop_ub; i2++) {
        b_x->data[i2] = x->data[i2 + x->size[0] * i];
      }

      dX[0] = b_x->data[0] + x_dot * dt;
      dX[1] = b_x->data[1] + dX[1] * dt;
      dX[2] = b_x->data[2] + theta_dot * dt;
      dX[3] = b_x->data[3] + dX[3] * dt;
      for (i2 = 0; i2 < loop_ub; i2++) {
        x->data[i2 + x->size[0] * (i + 1)] = dX[i2];
      }

      b_u = x->data[x->size[0] * (i + 1)];
      theta = x->data[1 + x->size[0] * (i + 1)];
      b_dX_tmp = x->data[3 + x->size[0] * (i + 1)];
      dX_tmp = u->data[i] + delta_u->data[i + delta_u->size[0] * k];

      //  p is position of Cart Pole Theta is angle theta_dot is change in
      //  angle and p_dot is change in position
      x_dot = std::cos(x->data[2 + x->size[0] * (1 + i)]);
      Stk->data[k] += ((((6.0 * (b_u * b_u) + 12.0 * ((1.0 + x_dot) * (1.0 +
        x_dot))) + R * (dX_tmp * dX_tmp)) + 0.1 * (b_dX_tmp * b_dX_tmp)) + 0.1 *
                       (theta * theta)) * dt;
    }

    //  end function
    delta_u->data[(static_cast<int>(N) + delta_u->size[0] * k) - 1] = variance *
      randn();
  }

  emxFree_real_T(&b_x);

  //  end function
}

//
// File trailer for Sample_MPPI_CartPole.cpp
//
// [EOF]
//
