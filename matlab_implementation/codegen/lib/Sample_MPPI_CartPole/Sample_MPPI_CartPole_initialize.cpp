//
// Prerelease License - for engineering feedback and testing purposes
// only. Not for sale.
// File: Sample_MPPI_CartPole_initialize.cpp
//
// MATLAB Coder version            : 4.2
// C/C++ source code generated on  : 13-May-2019 22:36:12
//

// Include Files
#include "Sample_MPPI_CartPole.h"
#include "Sample_MPPI_CartPole_initialize.h"
#include "eml_rand_shr3cong_stateful.h"
#include "eml_rand_mcg16807_stateful.h"
#include "eml_rand.h"
#include "eml_randn.h"
#include "eml_rand_mt19937ar_stateful.h"

// Function Definitions

//
// Arguments    : void
// Return Type  : void
//
void Sample_MPPI_CartPole_initialize()
{
  state_not_empty_init();
  method_not_empty_init();
  eml_rand_init();
  eml_rand_mcg16807_stateful_init();
  eml_rand_shr3cong_stateful_init();
}

//
// File trailer for Sample_MPPI_CartPole_initialize.cpp
//
// [EOF]
//
