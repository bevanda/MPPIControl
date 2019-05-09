/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_sample_MPPI_CartPole_api.cu
 *
 * Code generation for function '_coder_sample_MPPI_CartPole_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "sample_MPPI_CartPole.h"
#include "_coder_sample_MPPI_CartPole_api.h"
#include "sample_MPPI_CartPole_data.h"

/* Function Declarations */
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static void b_emlrt_marshallOut(const real_T u[100000], const mxArray *y);
static real_T (*c_emlrt_marshallIn(const mxArray *Stk, const char_T *identifier))
  [1000];
static void c_emlrt_marshallOut(const real_T u[400], const mxArray *y);
static real_T (*d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[1000];
static real_T (*e_emlrt_marshallIn(const mxArray *x, const char_T *identifier))
  [400];
static real_T emlrt_marshallIn(const mxArray *k, const char_T *identifier);
static void emlrt_marshallOut(const real_T u[1000], const mxArray *y);
static real_T (*f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[400];
static real_T (*g_emlrt_marshallIn(const mxArray *delta_u, const char_T
  *identifier))[100000];
static real_T (*h_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[100000];
static real_T (*i_emlrt_marshallIn(const mxArray *u, const char_T *identifier))
  [100];
static real_T (*j_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[100];
static real_T k_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);
static real_T (*l_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId))[1000];
static real_T (*m_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId))[400];
static real_T (*n_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId))[100000];
static real_T (*o_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId))[100];

/* Function Definitions */
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId)
{
  real_T y;
  y = k_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static void b_emlrt_marshallOut(const real_T u[100000], const mxArray *y)
{
  static const int32_T iv1[2] = { 100, 1000 };

  emlrtMxSetData((mxArray *)y, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)y, *(int32_T (*)[2])&iv1[0], 2);
}

static real_T (*c_emlrt_marshallIn(const mxArray *Stk, const char_T *identifier))
  [1000]
{
  real_T (*y)[1000];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = d_emlrt_marshallIn(emlrtAlias(Stk), &thisId);
  emlrtDestroyArray(&Stk);
  return y;
}
  static void c_emlrt_marshallOut(const real_T u[400], const mxArray *y)
{
  static const int32_T iv2[2] = { 4, 100 };

  emlrtMxSetData((mxArray *)y, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)y, *(int32_T (*)[2])&iv2[0], 2);
}

static real_T (*d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[1000]
{
  real_T (*y)[1000];
  y = l_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T (*e_emlrt_marshallIn(const mxArray *x, const char_T *identifier))
  [400]
{
  real_T (*y)[400];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = f_emlrt_marshallIn(emlrtAlias(x), &thisId);
  emlrtDestroyArray(&x);
  return y;
}

static real_T emlrt_marshallIn(const mxArray *k, const char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(emlrtAlias(k), &thisId);
  emlrtDestroyArray(&k);
  return y;
}

static void emlrt_marshallOut(const real_T u[1000], const mxArray *y)
{
  static const int32_T iv0[1] = { 1000 };

  emlrtMxSetData((mxArray *)y, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)y, *(int32_T (*)[1])&iv0[0], 1);
}

static real_T (*f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[400]
{
  real_T (*y)[400];
  y = m_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T (*g_emlrt_marshallIn(const mxArray *delta_u, const char_T
  *identifier))[100000]
{
  real_T (*y)[100000];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = h_emlrt_marshallIn(emlrtAlias(delta_u), &thisId);
  emlrtDestroyArray(&delta_u);
  return y;
}

static real_T (*h_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[100000]
{
  real_T (*y)[100000];
  y = n_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T (*i_emlrt_marshallIn(const mxArray *u, const char_T *identifier))
  [100]
{
  real_T (*y)[100];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = j_emlrt_marshallIn(emlrtAlias(u), &thisId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*j_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[100]
{
  real_T (*y)[100];
  y = o_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T k_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId)
{
  real_T ret;
  static const int32_T dims = 0;
  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, (const emlrtMsgIdentifier *)msgId,
    src, "double", false, 0U, (int32_T *)&dims);
  ret = *(real_T *)emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*l_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId))[1000]
{
  real_T (*ret)[1000];
  static const int32_T dims[1] = { 1000 };

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, (const emlrtMsgIdentifier *)msgId,
    src, "double", false, 1U, *(int32_T (*)[1])&dims[0]);
  ret = (real_T (*)[1000])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static real_T (*m_emlrt_marshallIn(const mxArray *src, const
  emlrtMsgIdentifier *msgId))[400]
{
  real_T (*ret)[400];
  static const int32_T dims[2] = { 4, 100 };

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, (const emlrtMsgIdentifier *)msgId,
    src, "double", false, 2U, *(int32_T (*)[2])&dims[0]);
  ret = (real_T (*)[400])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*n_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId))[100000]
{
  real_T (*ret)[100000];
  static const int32_T dims[2] = { 100, 1000 };

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, (const emlrtMsgIdentifier *)msgId,
    src, "double", false, 2U, *(int32_T (*)[2])&dims[0]);
  ret = (real_T (*)[100000])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static real_T (*o_emlrt_marshallIn(const mxArray *src, const
  emlrtMsgIdentifier *msgId))[100]
{
  real_T (*ret)[100];
  static const int32_T dims[2] = { 1, 100 };

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, (const emlrtMsgIdentifier *)msgId,
    src, "double", false, 2U, *(int32_T (*)[2])&dims[0]);
  ret = (real_T (*)[100])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

void sample_MPPI_CartPole_api(const mxArray *prhs[14], int32_T nlhs, const
  mxArray *plhs[3])
{
  const mxArray *prhs_copy_idx_3;
  const mxArray *prhs_copy_idx_4;
  const mxArray *prhs_copy_idx_5;
  real_T k;
  real_T N;
  real_T variance;
  real_T (*Stk)[1000];
  real_T (*x)[400];
  real_T (*delta_u)[100000];
  real_T (*u)[100];
  real_T R;
  real_T mc;
  real_T mp;
  real_T l;
  real_T g;
  real_T kd;
  real_T dt;
  prhs_copy_idx_3 = emlrtProtectR2012b(prhs[3], 3, true, -1);
  prhs_copy_idx_4 = emlrtProtectR2012b(prhs[4], 4, true, -1);
  prhs_copy_idx_5 = emlrtProtectR2012b(prhs[5], 5, true, -1);

  /* Marshall function inputs */
  k = emlrt_marshallIn(emlrtAliasP(prhs[0]), "k");
  N = emlrt_marshallIn(emlrtAliasP(prhs[1]), "N");
  variance = emlrt_marshallIn(emlrtAliasP(prhs[2]), "variance");
  Stk = c_emlrt_marshallIn(emlrtAlias(prhs_copy_idx_3), "Stk");
  x = e_emlrt_marshallIn(emlrtAlias(prhs_copy_idx_4), "x");
  delta_u = g_emlrt_marshallIn(emlrtAlias(prhs_copy_idx_5), "delta_u");
  u = i_emlrt_marshallIn(emlrtAlias(prhs[6]), "u");
  R = emlrt_marshallIn(emlrtAliasP(prhs[7]), "R");
  mc = emlrt_marshallIn(emlrtAliasP(prhs[8]), "mc");
  mp = emlrt_marshallIn(emlrtAliasP(prhs[9]), "mp");
  l = emlrt_marshallIn(emlrtAliasP(prhs[10]), "l");
  g = emlrt_marshallIn(emlrtAliasP(prhs[11]), "g");
  kd = emlrt_marshallIn(emlrtAliasP(prhs[12]), "kd");
  dt = emlrt_marshallIn(emlrtAliasP(prhs[13]), "dt");

  /* Invoke the target function */
  sample_MPPI_CartPole(k, N, variance, *Stk, *x, *delta_u, *u, R, mc, mp, l, g,
                       kd, dt);

  /* Marshall function outputs */
  emlrt_marshallOut(*Stk, prhs_copy_idx_3);
  plhs[0] = prhs_copy_idx_3;
  if (nlhs > 1) {
    b_emlrt_marshallOut(*delta_u, prhs_copy_idx_5);
    plhs[1] = prhs_copy_idx_5;
  }

  if (nlhs > 2) {
    c_emlrt_marshallOut(*x, prhs_copy_idx_4);
    plhs[2] = prhs_copy_idx_4;
  }
}

/* End of code generation (_coder_sample_MPPI_CartPole_api.cu) */
