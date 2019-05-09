//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
// File: main.cu
//
// GPU Coder version                    : 1.3
// CUDA/C/C++ source code generated on  : 08-May-2019 12:21:38
//

//***********************************************************************
// This automatically generated example CUDA main file shows how to call
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
#include "totalEntropy.h"
#include "main.h"
#include "totalEntropy_terminate.h"
#include "totalEntropy_emxAPI.h"
#include "totalEntropy_initialize.h"

// Function Declarations
static emxArray_real_T *argInit_1xUnbounded_real_T();
static emxArray_real_T *argInit_Unboundedx1_real_T();
static double argInit_real_T();
static void main_totalEntropy();

// Function Definitions

//
// Arguments    : void
// Return Type  : emxArray_real_T *
//
static emxArray_real_T *argInit_1xUnbounded_real_T()
{
  emxArray_real_T *result;
  int loopUpperBound;
  int idx1;

  // Set the size of the array.
  // Change this size to the value that the application requires.
  result = emxCreate_real_T(1, 2);

  // Loop over the array to initialize each element.
  loopUpperBound = result->size[1U];
  for (idx1 = 0; idx1 < loopUpperBound; idx1++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result->data[idx1] = argInit_real_T();
  }

  return result;
}

//
// Arguments    : void
// Return Type  : emxArray_real_T *
//
static emxArray_real_T *argInit_Unboundedx1_real_T()
{
  emxArray_real_T *result;
  static int iv0[1] = { 2 };

  int loopUpperBound;
  int idx0;

  // Set the size of the array.
  // Change this size to the value that the application requires.
  result = emxCreateND_real_T(1, iv0);

  // Loop over the array to initialize each element.
  loopUpperBound = result->size[0U];
  for (idx0 = 0; idx0 < loopUpperBound; idx0++) {
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
// Return Type  : void
//
static void main_totalEntropy()
{
  emxArray_real_T *Sk;
  emxArray_real_T *del_uk;
  double entropy;

  // Initialize function 'totalEntropy' input arguments.
  // Initialize function input argument 'Sk'.
  Sk = argInit_Unboundedx1_real_T();

  // Initialize function input argument 'del_uk'.
  del_uk = argInit_1xUnbounded_real_T();

  // Call the entry-point 'totalEntropy'.
  entropy = totalEntropy(Sk, del_uk, argInit_real_T());
  emxDestroyArray_real_T(del_uk);
  emxDestroyArray_real_T(Sk);
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
  totalEntropy_initialize();

  // Invoke the entry-point functions.
  // You can call entry-point functions multiple times.
  main_totalEntropy();

  // Terminate the application.
  // You do not need to do this more than one time.
  totalEntropy_terminate();
  return 0;
}

//
// File trailer for main.cu
//
// [EOF]
//
