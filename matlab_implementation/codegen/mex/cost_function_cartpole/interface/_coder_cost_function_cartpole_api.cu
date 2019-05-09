/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_cost_function_cartpole_api.cu
 *
 * Code generation for function '_coder_cost_function_cartpole_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "cost_function_cartpole.h"
#include "_coder_cost_function_cartpole_api.h"
#include "cost_function_cartpole_data.h"

/* Function Declarations */
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static real_T c_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);
static real_T emlrt_marshallIn(const mxArray *p, const char_T *identifier);
static const mxArray *emlrt_marshallOut(const real_T u);

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

static real_T emlrt_marshallIn(const mxArray *p, const char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(emlrtAlias(p), &thisId);
  emlrtDestroyArray(&p);
  return y;
}

static const mxArray *emlrt_marshallOut(const real_T u)
{
  const mxArray *y;
  const mxArray *m0;
  y = NULL;
  m0 = emlrtCreateDoubleScalar(u);
  emlrtAssign(&y, m0);
  return y;
}

void cost_function_cartpole_api(const mxArray * const prhs[7], int32_T, const
  mxArray *plhs[1])
{
  real_T p;
  real_T p_dot;
  real_T theta;
  real_T theta_dot;
  real_T u;
  real_T dt;
  real_T R;

  /* Marshall function inputs */
  p = emlrt_marshallIn(emlrtAliasP(prhs[0]), "p");
  p_dot = emlrt_marshallIn(emlrtAliasP(prhs[1]), "p_dot");
  theta = emlrt_marshallIn(emlrtAliasP(prhs[2]), "theta");
  theta_dot = emlrt_marshallIn(emlrtAliasP(prhs[3]), "theta_dot");
  u = emlrt_marshallIn(emlrtAliasP(prhs[4]), "u");
  dt = emlrt_marshallIn(emlrtAliasP(prhs[5]), "dt");
  R = emlrt_marshallIn(emlrtAliasP(prhs[6]), "R");

  /* Invoke the target function */
  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(cost_function_cartpole(p, p_dot, theta, theta_dot,
    u, dt, R));
}

/* End of code generation (_coder_cost_function_cartpole_api.cu) */
