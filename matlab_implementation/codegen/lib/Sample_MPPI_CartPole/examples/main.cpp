//
// Prerelease License - for engineering feedback and testing purposes
// only. Not for sale.
// File: main.cpp
//
// MATLAB Coder version            : 4.2
// C/C++ source code generated on  : 14-May-2019 00:18:02
//

//***********************************************************************
// This automatically generated example C++ main file shows how to call
// entry-point functions that MATLAB Coder generated. You must customize
// this file for your application. Do not modify this file directly.
// Instead, make a copy of this file, modify it, and integrate it into
// your development environment.
//
// This file initializes entry-point function arguments to a default
// size and value before calling the entry-point functions. It does
// not store or use any values returned from the entry-point functions.
// If necessary, it does pre-allocate memory for returned values.
// You can use this file as a starting point for a main function that
// you can deploy in your application.
//
// After you copy the file, and before you deploy it, you must make the
// following changes:
// * For variable-size function arguments, change the example sizes to
// the sizes that your application requires.
// * Change the example values of function arguments to the values that
// your application requires.
// * If the entry-point functions return values, store these values or
// otherwise use them as required by your application.
//
//***********************************************************************
// Include Files
#include "Sample_MPPI_CartPole.h"
#include "main.h"
#include "Sample_MPPI_CartPole_terminate.h"
#include "Sample_MPPI_CartPole_emxAPI.h"
#include "Sample_MPPI_CartPole_initialize.h"

// Function Declarations
static emxArray_real_T *argInit_Unboundedx1_real_T();
static double argInit_real_T();
static emxArray_real_T *c_argInit_UnboundedxUnbounded_r();
static void main_Sample_MPPI_CartPole();

// Function Definitions

//
// Arguments    : void
// Return Type  : emxArray_real_T *
//
static emxArray_real_T *argInit_Unboundedx1_real_T()
{
  emxArray_real_T *result;
  static int iv0[1] = { 2 };

  int idx0;

  // Set the size of the array.
  // Change this size to the value that the application requires.
  result = emxCreateND_real_T(1, iv0);

  // Loop over the array to initialize each element.
  for (idx0 = 0; idx0 < result->size[0U]; idx0++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result->data[idx0] = argInit_real_T();
  }

  return result;
}

//
// Arguments    : void
// Return Type  : double
//
static double argInit_real_T()
{
  return 0.0;
}

//
// Arguments    : void
// Return Type  : emxArray_real_T *
//
static emxArray_real_T *c_argInit_UnboundedxUnbounded_r()
{
  emxArray_real_T *result;
  int idx0;
  int idx1;

  // Set the size of the array.
  // Change this size to the value that the application requires.
  result = emxCreate_real_T(2, 2);

  // Loop over the array to initialize each element.
  for (idx0 = 0; idx0 < result->size[0U]; idx0++) {
    for (idx1 = 0; idx1 < result->size[1U]; idx1++) {
      // Set the value of the array element.
      // Change this value to the value that the application requires.
      result->data[idx0 + result->size[0] * idx1] = argInit_real_T();
    }
  }

  return result;
}

//
// Arguments    : void
// Return Type  : void
//
static void main_Sample_MPPI_CartPole()
{
  double K_tmp;
  double variance;
  emxArray_real_T *Stk;
  emxArray_real_T *x;
  emxArray_real_T *delta_u;
  emxArray_real_T *u;

  // Initialize function 'Sample_MPPI_CartPole' input arguments.
  K_tmp = argInit_real_T();
  variance = argInit_real_T();

  // Initialize function input argument 'Stk'.
  Stk = argInit_Unboundedx1_real_T();

  // Initialize function input argument 'x'.
  x = c_argInit_UnboundedxUnbounded_r();

  // Initialize function input argument 'delta_u'.
  delta_u = c_argInit_UnboundedxUnbounded_r();

  // Initialize function input argument 'u'.
  u = c_argInit_UnboundedxUnbounded_r();

  // Call the entry-point 'Sample_MPPI_CartPole'.
  Sample_MPPI_CartPole(K_tmp, K_tmp, variance, Stk, x, delta_u, u,
                       argInit_real_T(), argInit_real_T(), argInit_real_T(),
                       argInit_real_T(), argInit_real_T(), argInit_real_T(),
                       argInit_real_T());
  emxDestroyArray_real_T(u);
  emxDestroyArray_real_T(delta_u);
  emxDestroyArray_real_T(x);
  emxDestroyArray_real_T(Stk);
}

//
// Arguments    : int argc
//                const char * const argv[]
// Return Type  : int
//
int main(int, const char * const [])
{
  // Initialize the application.
  // You do not need to do this more than one time.
  Sample_MPPI_CartPole_initialize();

  // Invoke the entry-point functions.
  // You can call entry-point functions multiple times.
  main_Sample_MPPI_CartPole();

  // Terminate the application.
  // You do not need to do this more than one time.
  Sample_MPPI_CartPole_terminate();
  return 0;
}

//
// File trailer for main.cpp
//
// [EOF]
//
