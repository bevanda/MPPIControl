//
// Prerelease License - for engineering feedback and testing purposes
// only. Not for sale.
// File: eml_rand_mt19937ar_stateful.cpp
//
// MATLAB Coder version            : 4.2
// C/C++ source code generated on  : 14-May-2019 00:18:02
//

// Include Files
#include <string.h>
#include "Sample_MPPI_CartPole.h"
#include "eml_rand_mt19937ar_stateful.h"
#include "Sample_MPPI_CartPole_data.h"

// Function Definitions

//
// Arguments    : void
// Return Type  : void
//
void c_eml_rand_mt19937ar_stateful_i()
{
  unsigned int r;
  int mti;
  memset(&state[0], 0, 625U * sizeof(unsigned int));
  r = 5489U;
  state[0] = 5489U;
  for (mti = 0; mti < 623; mti++) {
    r = ((r ^ r >> 30U) * 1812433253U + mti) + 1U;
    state[mti + 1] = r;
  }

  state[624] = 624U;
}

//
// File trailer for eml_rand_mt19937ar_stateful.cpp
//
// [EOF]
//
