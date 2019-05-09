/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * sample_MPPI_CartPole.cu
 *
 * Code generation for function 'sample_MPPI_CartPole'
 *
 */

/* Include files */
#include <stdlib.h>
#include "MWCudaDimUtility.h"
#include <math.h>
#include "rt_nonfinite.h"
#include "sample_MPPI_CartPole.h"
#include "sample_MPPI_CartPole_data.h"

/* Function Declarations */
static void checkCudaError(cudaError_t errCode, const char * file, uint32_T line);
static __global__ void sample_MPPI_CartPole_kernel1(real_T dt, real_T dX[4],
  real_T x[400], int32_T i, real_T b_x[4]);
static __global__ void sample_MPPI_CartPole_kernel2(int32_T i, int32_T *b_i);
static __global__ void sample_MPPI_CartPole_kernel3(real_T x[4], int32_T *i,
  real_T b_x[400]);

/* Function Definitions */
static void checkCudaError(cudaError_t errCode, const char * file, uint32_T line)
{
  emlrtRTEInfo rtInfo;
  char_T *pn;
  char_T *fn;
  char_T *brk;
  uint32_T len;
  if (errCode != cudaSuccess) {
    len = strlen(file);
    pn = (char_T *)calloc(len + 1U, 1U);
    fn = (char_T *)calloc(len + 1U, 1U);
    memcpy(pn, file, len);
    memcpy(fn, file, len);
    brk = strrchr(fn, '.');
    *brk = '\x00';
    brk = strrchr(fn, '/');
    if (brk == NULL) {
      brk = strrchr(fn, '\\');
    }

    if (brk == NULL) {
      brk = fn;
    } else {
      brk++;
    }

    rtInfo.lineNo = static_cast<int32_T>(line);
    rtInfo.colNo = 0;
    rtInfo.fName = brk;
    rtInfo.pName = pn;
    emlrtCUDAError(errCode, cudaGetErrorName(errCode), cudaGetErrorString
                   (errCode), &rtInfo, emlrtRootTLSGlobal);
  }
}

static __global__ __launch_bounds__(32, 1) void sample_MPPI_CartPole_kernel1
  (real_T dt, real_T dX[4], real_T x[400], int32_T i, real_T b_x[4])
{
  uint32_T threadId;
  int32_T i1;
  threadId = static_cast<uint32_T>(mwGetGlobalThreadIndex());
  i1 = static_cast<int32_T>(threadId);
  if (i1 < 4) {
    b_x[i1] = x[i1 + (i << 2)] + dX[i1] * dt;
  }
}

static __global__ __launch_bounds__(32, 1) void sample_MPPI_CartPole_kernel2
  (int32_T i, int32_T *b_i)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = static_cast<uint32_T>(mwGetGlobalThreadIndex());
  tmpIdx = static_cast<int32_T>(threadId);
  if (tmpIdx < 1) {
    *b_i = i + 1;
  }
}

static __global__ __launch_bounds__(32, 1) void sample_MPPI_CartPole_kernel3
  (real_T x[4], int32_T *i, real_T b_x[400])
{
  uint32_T threadId;
  int32_T i1;
  threadId = static_cast<uint32_T>(mwGetGlobalThreadIndex());
  i1 = static_cast<int32_T>(threadId);
  if (i1 < 4) {
    b_x[i1 + (*i << 2)] = x[i1];
  }
}

void sample_MPPI_CartPole(real_T k, real_T N, real_T variance, real_T Stk[1000],
  real_T x[400], real_T delta_u[100000], const real_T u[100], real_T R, real_T
  mc, real_T mp, real_T l, real_T g, real_T kd, real_T dt)
{
  int32_T i0;
  int32_T i;
  real_T r;
  real_T dX[4];
  real_T b_u;
  real_T b_x;
  real_T (*gpu_dX)[4];
  real_T (*gpu_x)[400];
  real_T (*b_gpu_x)[4];
  int32_T *gpu_i;
  boolean_T x_dirtyOnCpu;

#define CUDACHECK(errCall)             checkCudaError(errCall, __FILE__, __LINE__)

  checkCudaError(cudaGetLastError(), __FILE__, __LINE__);
  CUDACHECK(cudaMalloc(&gpu_i, 4ULL));
  CUDACHECK(cudaMalloc(&b_gpu_x, 32ULL));
  CUDACHECK(cudaMalloc(&gpu_x, 3200ULL));
  CUDACHECK(cudaMalloc(&gpu_dX, 32ULL));
  x_dirtyOnCpu = true;
  i0 = static_cast<int32_T>((N - 1.0));
  for (i = 0; i < i0; i++) {
    emlrtRandn(&r, 1);
    delta_u[i + 100 * (static_cast<int32_T>(k) - 1)] = variance * r;
    r = u[i];
    b_u = u[i] + delta_u[i + 100 * (static_cast<int32_T>(k) - 1)];

    /*  States of the Pendulum dX(1) is X_dot dX(2) is X double dor, dX(3) is */
    /*  Theta_dot and dX(4) is theta double dot */
    /*  u is the force horizontally applied */
    /*  down position theta=0, up position theta=PI */
    dX[0] = x[1 + (i << 2)];
    b_x = sin(x[2 + (i << 2)]);
    dX[1] = ((b_u - kd * x[1 + (i << 2)]) + mp * sin(x[2 + (i << 2)]) * (l * (x
               [3 + (i << 2)] * x[3 + (i << 2)]) + g * cos(x[2 + (i << 2)]))) /
      (mc + mp * (b_x * b_x));
    dX[2] = x[3 + (i << 2)];
    b_x = sin(x[2 + (i << 2)]);
    dX[3] = ((-(b_u - kd * x[1 + (i << 2)]) * cos(x[2 + (i << 2)]) - mp * l *
              (x[3 + (i << 2)] * x[3 + (i << 2)]) * cos(x[2 + (i << 2)]) * sin
              (x[2 + (i << 2)])) - (mc + mp) * g * sin(x[2 + (i << 2)])) / (l *
      (mc + mp * (b_x * b_x)));
    CUDACHECK(cudaMemcpy(gpu_dX, &dX[0], 32ULL, cudaMemcpyHostToDevice));
    if (x_dirtyOnCpu) {
      CUDACHECK(cudaMemcpy(gpu_x, (void *)x, 3200ULL, cudaMemcpyHostToDevice));
      x_dirtyOnCpu = false;
    }

    sample_MPPI_CartPole_kernel1<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(dt,
      *gpu_dX, *gpu_x, i, *b_gpu_x);
    CUDACHECK(cudaGetLastError());
    sample_MPPI_CartPole_kernel2<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(i,
      gpu_i);
    CUDACHECK(cudaGetLastError());
    sample_MPPI_CartPole_kernel3<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
      (*b_gpu_x, gpu_i, *gpu_x);
    CUDACHECK(cudaGetLastError());
    b_u = u[i] + delta_u[i + 100 * (static_cast<int32_T>(k) - 1)];

    /*  p is position of Cart Pole Theta is angle theta_dot is change in */
    /*  angle and p_dot is change in position */
    CUDACHECK(cudaMemcpy((void *)x, gpu_x, 3200ULL, cudaMemcpyDeviceToHost));
    b_x = cos(x[2 + ((1 + i) << 2)]);
    Stk[static_cast<int32_T>(k) - 1] += ((((6.0 * (x[(1 + i) << 2] * x[(1 + i) <<
      2]) + 12.0 * ((1.0 + b_x) * (1.0 + b_x))) + R * (b_u * b_u)) + 0.1 * (x[3
      + ((1 + i) << 2)] * x[3 + ((1 + i) << 2)])) + 0.1 * (x[1 + ((1 + i) << 2)]
      * x[1 + ((1 + i) << 2)])) * dt;
  }

  /*  end function */
  CUDACHECK(cudaFree(*gpu_dX));
  CUDACHECK(cudaFree(*gpu_x));
  CUDACHECK(cudaFree(*b_gpu_x));
  CUDACHECK(cudaFree(gpu_i));

#undef CUDACHECK

}

/* End of code generation (sample_MPPI_CartPole.cu) */
