//
// Prerelease License - for engineering feedback and testing purposes
// only. Not for sale.
// File: main.cpp
//
// MATLAB Coder version            : 4.2
// C/C++ source code generated on  : 13-May-2019 22:36:12
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
#include "Sample_MPPI_CartPole_initialize.h"

// Function Declarations
static void argInit_1000x1_real_T(double result[1000]);
static void argInit_100x1000_real_T(double result[100000]);
static void argInit_1x100_real_T(double result[100]);
static void argInit_4x100_real_T(double result[400]);
static double argInit_real_T();
static void main_Sample_MPPI_CartPole();

// Function Definitions

//
// Arguments    : double result[1000]
// Return Type  : void
//
static void argInit_1000x1_real_T(double result[1000])
{
  int idx0;

  // Loop over the array to initialize each element.
  for (idx0 = 0; idx0 < 1000; idx0++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result[idx0] = argInit_real_T();
  }
}

//
// Arguments    : double result[100000]
// Return Type  : void
//
static void argInit_100x1000_real_T(double result[100000])
{
  int idx0;
  int idx1;

  // Loop over the array to initialize each element.
  for (idx0 = 0; idx0 < 100; idx0++) {
    for (idx1 = 0; idx1 < 1000; idx1++) {
      // Set the value of the array element.
      // Change this value to the value that the application requires.
      result[idx0 + 100 * idx1] = argInit_real_T();
    }
  }
}

//
// Arguments    : double result[100]
// Return Type  : void
//
static void argInit_1x100_real_T(double result[100])
{
  int idx1;

  // Loop over the array to initialize each element.
  for (idx1 = 0; idx1 < 100; idx1++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result[idx1] = argInit_real_T();
  }
}

//
// Arguments    : double result[400]
// Return Type  : void
//
static void argInit_4x100_real_T(double result[400])
{
  int idx0;
  int idx1;

  // Loop over the array to initialize each element.
  for (idx0 = 0; idx0 < 4; idx0++) {
    for (idx1 = 0; idx1 < 100; idx1++) {
      // Set the value of the array element.
      // Change this value to the value that the application requires.
      result[idx0 + (idx1 << 2)] = argInit_real_T();
    }
  }
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
// Return Type  : void
//
static void main_Sample_MPPI_CartPole()
{
  double K_tmp;
  double variance;
  double Stk[1000];
  double x[400];
  static double delta_u[100000];
  double dv0[100];

  // Initialize function 'Sample_MPPI_CartPole' input arguments.
  K_tmp = argInit_real_T();
  variance = argInit_real_T();

  // Initialize function input argument 'Stk'.
  argInit_1000x1_real_T(Stk);

  // Initialize function input argument 'x'.
  argInit_4x100_real_T(x);

  // Initialize function input argument 'delta_u'.
  argInit_100x1000_real_T(delta_u);

  // Initialize function input argument 'u'.
  // Call the entry-point 'Sample_MPPI_CartPole'.
  argInit_1x100_real_T(dv0);
  Sample_MPPI_CartPole(K_tmp, K_tmp, variance, Stk, x, delta_u, dv0,
                       argInit_real_T(), argInit_real_T(), argInit_real_T(),
                       argInit_real_T(), argInit_real_T(), argInit_real_T(),
                       argInit_real_T());
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
