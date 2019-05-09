/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_totalEntropy_api.cu
 *
 * Code generation for function '_coder_totalEntropy_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "totalEntropy.h"
#include "_coder_totalEntropy_api.h"
#include "totalEntropy_emxutil.h"
#include "totalEntropy_data.h"

/* Function Declarations */
static void b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void c_emlrt_marshallIn(const mxArray *del_uk, const char_T *identifier,
  emxArray_real_T *y);
static void d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static real_T e_emlrt_marshallIn(const mxArray *lambda, const char_T *identifier);
static void emlrt_marshallIn(const mxArray *Sk, const char_T *identifier,
  emxArray_real_T *y);
static const mxArray *emlrt_marshallOut(const real_T u);
static real_T f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static void g_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);
static void h_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);
static real_T i_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);

/* Function Definitions */
static void b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  g_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void c_emlrt_marshallIn(const mxArray *del_uk, const char_T *identifier,
  emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  d_emlrt_marshallIn(emlrtAlias(del_uk), &thisId, y);
  emlrtDestroyArray(&del_uk);
}

static void d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  h_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static real_T e_emlrt_marshallIn(const mxArray *lambda, const char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = f_emlrt_marshallIn(emlrtAlias(lambda), &thisId);
  emlrtDestroyArray(&lambda);
  return y;
}

static void emlrt_marshallIn(const mxArray *Sk, const char_T *identifier,
  emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  b_emlrt_marshallIn(emlrtAlias(Sk), &thisId, y);
  emlrtDestroyArray(&Sk);
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

static real_T f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId)
{
  real_T y;
  y = i_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static void g_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret)
{
  static const int32_T dims[1] = { -1 };

  const boolean_T bv0[1] = { true };

  int32_T iv0[1];
  int32_T i1;
  emlrtCheckVsBuiltInR2012b(emlrtRootTLSGlobal, (const emlrtMsgIdentifier *)
    msgId, src, "double", false, 1U, *(int32_T (*)[1])&dims[0], (boolean_T *)
    &bv0[0], iv0);
  ret->allocatedSize = iv0[0];
  i1 = ret->size[0];
  ret->size[0] = iv0[0];
  emxEnsureCapacity_real_T(ret, i1);
  ret->data = (real_T *)emlrtMxGetData(src);
  ret->canFreeData = false;
  emlrtDestroyArray(&src);
}

static void h_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret)
{
  static const int32_T dims[2] = { 1, -1 };

  const boolean_T bv1[2] = { false, true };

  int32_T iv1[2];
  int32_T i2;
  emlrtCheckVsBuiltInR2012b(emlrtRootTLSGlobal, (const emlrtMsgIdentifier *)
    msgId, src, "double", false, 2U, *(int32_T (*)[2])&dims[0], (boolean_T *)
    &bv1[0], iv1);
  ret->allocatedSize = iv1[0] * iv1[1];
  i2 = ret->size[0] * ret->size[1];
  ret->size[0] = iv1[0];
  ret->size[1] = iv1[1];
  emxEnsureCapacity_real_T(ret, i2);
  ret->data = (real_T *)emlrtMxGetData(src);
  ret->canFreeData = false;
  emlrtDestroyArray(&src);
}

static real_T i_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
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

void totalEntropy_api(const mxArray * const prhs[3], int32_T, const mxArray
                      *plhs[1])
{
  emxArray_real_T *Sk;
  emxArray_real_T *del_uk;
  real_T lambda;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);
  emxInit_real_T(&Sk, 1, true);
  emxInit_real_T(&del_uk, 2, true);

  /* Marshall function inputs */
  Sk->canFreeData = false;
  emlrt_marshallIn(emlrtAlias(prhs[0]), "Sk", Sk);
  del_uk->canFreeData = false;
  c_emlrt_marshallIn(emlrtAlias(prhs[1]), "del_uk", del_uk);
  lambda = e_emlrt_marshallIn(emlrtAliasP(prhs[2]), "lambda");

  /* Invoke the target function */
  lambda = totalEntropy(Sk, del_uk, lambda);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(lambda);
  emxFree_real_T(&del_uk);
  emxFree_real_T(&Sk);
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (_coder_totalEntropy_api.cu) */
