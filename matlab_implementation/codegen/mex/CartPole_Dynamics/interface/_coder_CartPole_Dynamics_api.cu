/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_CartPole_Dynamics_api.cu
 *
 * Code generation for function '_coder_CartPole_Dynamics_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "CartPole_Dynamics.h"
#include "_coder_CartPole_Dynamics_api.h"
#include "CartPole_Dynamics_data.h"

/* Function Declarations */
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static real_T c_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);
static real_T emlrt_marshallIn(const mxArray *x, const char_T *identifier);
static const mxArray *emlrt_marshallOut(const real_T u[4]);

/* Function Definitions */
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId)
{
  real_T y;
  y = c_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T c_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId)
{
  real_T ret;
  static const int32_T dims = 0;
  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, (const emlrtMsgIdentifier *)msgId,
    src, "double", false, 0U, (int32_T *)&dims);
  ret = *(real_T *)emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T emlrt_marshallIn(const mxArray *x, const char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(emlrtAlias(x), &thisId);
  emlrtDestroyArray(&x);
  return y;
}

static const mxArray *emlrt_marshallOut(const real_T u[4])
{
  const mxArray *y;
  const mxArray *m0;
  static const int32_T iv0[1] = { 0 };

  static const int32_T iv1[1] = { 4 };

  y = NULL;
  m0 = emlrtCreateNumericArray(1, iv0, mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m0, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m0, *(int32_T (*)[1])&iv1[0], 1);
  emlrtAssign(&y, m0);
  return y;
}

void CartPole_Dynamics_api(const mxArray * const prhs[10], int32_T, const
  mxArray *plhs[1])
{
  real_T (*dX)[4];
  real_T x;
  real_T x_dot;
  real_T theta;
  real_T theta_dot;
  real_T u;
  real_T mc;
  real_T mp;
  real_T l;
  real_T g;
  real_T kd;
  dX = (real_T (*)[4])mxMalloc(sizeof(real_T [4]));

  /* Marshall function inputs */
  x = emlrt_marshallIn(emlrtAliasP(prhs[0]), "x");
  x_dot = emlrt_marshallIn(emlrtAliasP(prhs[1]), "x_dot");
  theta = emlrt_marshallIn(emlrtAliasP(prhs[2]), "theta");
  theta_dot = emlrt_marshallIn(emlrtAliasP(prhs[3]), "theta_dot");
  u = emlrt_marshallIn(emlrtAliasP(prhs[4]), "u");
  mc = emlrt_marshallIn(emlrtAliasP(prhs[5]), "mc");
  mp = emlrt_marshallIn(emlrtAliasP(prhs[6]), "mp");
  l = emlrt_marshallIn(emlrtAliasP(prhs[7]), "l");
  g = emlrt_marshallIn(emlrtAliasP(prhs[8]), "g");
  kd = emlrt_marshallIn(emlrtAliasP(prhs[9]), "kd");

  /* Invoke the target function */
  CartPole_Dynamics(x, x_dot, theta, theta_dot, u, mc, mp, l, g, kd, *dX);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(*dX);
}

/* End of code generation (_coder_CartPole_Dynamics_api.cu) */
