/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_totalEntropy_info.c
 *
 * GPU Coder version                    : 1.3
 * CUDA/C/C++ source code generated on  : 08-May-2019 12:21:38
 */

/* Include Files */
#include "_coder_totalEntropy_info.h"

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : const mxArray *
 */
const mxArray *emlrtMexFcnResolvedFunctionsInfo()
{
  const mxArray *nameCaptureInfo;
  const char * data[9] = {
    "789ced58dd6e1241145e6a35f44225319a9878614c6c6a6a5868ab141313909696ba505a7e63b5ed0043593bfbe3eed282575ef8003e800fe0a5975e56e3852f"
    "a00fe13b98b8bbecc18530592cb8fd714fb20c67be65be3387b3dfcc0ee34ba57d0cc35cd1af09fd9ab9cb9876b9d33001ab9d607aad1ff759eda53e1fec2233",
    "d9f33bc0df5b6d551235dcd23a0ee1459c690a15ace88e8804dc1da62609bc88442ddf9631a360552207b86622759ee03c2f604eb239abbcee08491bd4750cc8"
    "f89e68e0ea7eae29304a43fd132eb13b8c2d3f47b6f947a391eefc2707e4c78ec37c9f53f213b0fa00df5a7e9178c41654aca8ac8c35a4b0eb225e52f803cce6",
    "0b691669c6e726b7c9a6b3d954424f9e2211821556401a41951d5e900916b0a8218d974456933444968d9be47650b0cf67d7162fc46118fc8f0c05f7515ab029"
    "c66ff36ec580af45196f50fe06f15da7f041fe00af4a35ac0479bda814119120c1e29ed6609ce7ed1447bfd1e20003be8fc7e483b1320e7c806fa5b8b2593a59",
    "45da539070dba871954dc7f35cfc09bb39170a47915e0e12a9482d160bc4bc66cd6cb1b3902eb6932ea352dcab93d8f6d76b3fe2eed6a5dbcfc1c9f1b9f5dce5"
    "b9e2b3a8502b2bf1d242a4159e2f0aa1cc535b1c59071ea738188aefd6f84794df0f9bc7d3a6ff3225de61eb70a2cf079beabbbf63d3b14e3b131b558781ef02",
    "853fa023461f6e7566382e3edafe26a023465f4d6a5608fec3f76144be152a5fa70ff0bfd67dc257ac626131a9374556cf945e1a2eead3e7c2f4774fefff11df"
    "a87a7f83c2077507783b542aa7f9c3f5b5879cc41fa6e616170aedf0caf9d17beff9edb5de7abbd3d5f13794f186cdd34d0a1fe409f0be7dbd5a4504294150f9",
    "93dbdf7f3a261f8c9573e0037c3cfbfbd94edeac9ab1cf639712e7f8eae6e8edaf2f9eee9f75dd4fd5d7eae1554e5b2ca1f0ab62351342e5d5c692a7fbff9bee"
    "bfa38c376c9eee51f8204f80f7e93e9265d2ce9922966c8a55e32527256609aac251a1d3fbcdb0f15d75880ff0ba15c54e038935fd0500f8bf8dc85f71e0077c",
    "3ceb023dadd632e1669d6d947e7ae741677d9d686613895624519233f907389269cca7b9c87ee2fcac13def33d785ec3d5e3fdb19d03f9fb7ca67b9fdfece355"
    "55468a8a4fea1ce8d49effdbf61346868c1d05e4cae5f37fffe36d4fefcfbade1f96526a92ec1793737525470e5eaeaf89af373cbdf7f4deb4e0b93b2f3aee7a",
    "e09d170d6ec1bcf32277f8bcf3a2d1c6ff0dd7bc4eb0", "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 9536U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/*
 * Arguments    : void
 * Return Type  : mxArray *
 */
mxArray *emlrtMexFcnProperties()
{
  mxArray *xResult;
  mxArray *xEntryPoints;
  const char * fldNames[6] = { "Name", "NumberOfInputs", "NumberOfOutputs",
    "ConstantInputs", "FullPath", "TimeStamp" };

  mxArray *xInputs;
  const char * b_fldNames[4] = { "Version", "ResolvedFunctions", "EntryPoints",
    "CoverageInfo" };

  xEntryPoints = emlrtCreateStructMatrix(1, 1, 6, *(const char * (*)[6])&
    fldNames[0]);
  xInputs = emlrtCreateLogicalMatrix(1, 3);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString("totalEntropy"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar(3.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "C:\\Users\\petar\\OneDrive\\TUM\\atTUM\\RLR\\MPPIController\\matlab_implementation\\totalEntropy.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737553.4011342593));
  xResult = emlrtCreateStructMatrix(1, 1, 4, *(const char * (*)[4])&b_fldNames[0]);
  emlrtSetField(xResult, 0, "Version", emlrtMxCreateString(
    "9.6.0.1099231 (R2019a) Update 1"));
  emlrtSetField(xResult, 0, "ResolvedFunctions", (mxArray *)
                emlrtMexFcnResolvedFunctionsInfo());
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  return xResult;
}

/*
 * File trailer for _coder_totalEntropy_info.c
 *
 * [EOF]
 */
