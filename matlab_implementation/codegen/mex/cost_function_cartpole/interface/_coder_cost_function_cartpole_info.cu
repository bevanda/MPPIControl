/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_cost_function_cartpole_info.cu
 *
 * Code generation for function '_coder_cost_function_cartpole_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "cost_function_cartpole.h"
#include "_coder_cost_function_cartpole_info.h"

/* Function Definitions */
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
  xInputs = emlrtCreateLogicalMatrix(1, 7);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString(
    "cost_function_cartpole"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar(7.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "C:\\Users\\petar\\OneDrive\\TUM\\atTUM\\RLR\\MPPIController\\matlab_implementation\\cost_function_cartpole.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737553.41335648147));
  xResult = emlrtCreateStructMatrix(1, 1, 4, *(const char * (*)[4])&b_fldNames[0]);
  emlrtSetField(xResult, 0, "Version", emlrtMxCreateString(
    "9.6.0.1099231 (R2019a) Update 1"));
  emlrtSetField(xResult, 0, "ResolvedFunctions", (mxArray *)
                emlrtMexFcnResolvedFunctionsInfo());
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  return xResult;
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo()
{
  const mxArray *nameCaptureInfo;
  const char * data[19] = {
    "789ced5dcb8fe34819f7ecceac660e0bbec06a41da650442c0a276a7934eb65742caa3f3eacdfb4192de47da71ca89a7fd6adb4927393517c405891327fe0040"
    "4282db4a70e8bd21b8b22bc41d0971448223c24ee2745ca426d9b15319a7aba4ee4ae9e7d4afead3e7efabfaea11ea4136ff80a2a82f997f567efb0b6a9a5e9f",
    "65143dcf5fa19c09c61fccf3af41653b3da21e3abe67e3733a8a5364038c8c594114645018481da099059995c0a29aae2209322b1bb5b10a280de88a3804dd29"
    "c20b22a80912c8294b858c6016a4d412b4285890f539d107dc657520515a5fbf6baeb85ca096e4f3c7a5fe9f9c4416fd7fb8423ecbb8dd5f1e211f1ac23f487e",
    "94788fa9eb40d3191518acc6146570aa0943c0d4ea798635acff955c85c9974ad984293c4d1145a031126b886ca72d48aa0824201bac212832c329bad1e60732"
    "6795da1cab19aa228203e9ae5f174bed5e6ecf6b2bfab58c3f40e4767a423d5eee65741ddf2a39aee27b0d2a2f18e688a42ad796fae0e2eb2a838e08eef87ee9",
    "922f83e473e21f6473cda9aa9434a5a7b1d2372c9dd6997cac968bc599cad161e084650c45113bca880192c8884267ae248ca2eacc4c4e07123e3db8f9cb4f3f"
    "ff3c8657ef70ebf9eef84688fa36d5bbaf22f868080f4c403f10bcee0e02c958b39aee8dc35da995ba6b47690dcfba76508832aefafdfafeaa88766daa6faf40",
    "653b3d819e9fa5e3e82c8f2cecfa0da2fe4de5f636829f86704ee99add16cc418326b3e281a0c7078268646573d8003481db99dd5f1e1fbc081f87e473e25f48"
    "6ff43eab812e3395d9fcff3bf3cc9620034bd01a1c5058edd89fa8ff12bfe077bf707d1eaf4f26a37ea4a80e92c9a304775c61df8d13bfb06bbf70816897b7fa",
    "16f76c7cff182a538be76688a09b9dd584d1aeecfc6f5df2e5907c4edc8d1e00d1fcc0d8929a19747cfa10fdf47b6962cffd6ecf0bdc6523aba5383e6534835c"
    "a07c1c6fe5e36962cfef853dbf497966cf1f21f8e839320fd7f8365e9346f23971b77a3057038c7687c46bb6c9e7d68e7f05c14743f8f8f044ee6713d7c50c90",
    "75395c0f77ced3198ad8f15dbfbf78e33507d1591e20f11a8ac46b9ed72f12afd92d1f89d77853bfdb797a092a53d07336ee915f78ca8bc6f42356bd8b96a25e"
    "e9dd1b083e1ac2217fa073acc86ac9decefcc04bab27d6dfff197f5b5c38e783b7ff6afd99d8fb97d5de6f3a0f8885645e393b14aa87ad70a914c8f562c72191",
    "22f6fefebcc766bac947d7cd3f3695d7eb5099829eb371419767e354c3dab9b5bb388f5bfd2822f99cf80b8d07786104baaa62aa07e39017d6780ff59bc69b9f"
    "113bbf253e5ce3fa74f0725cbdea0962a296b8ac5cc57bb5cb7af294d8f9fb6ae7517cdeadc7f282399de9fbd5ae9f21f99cb87bbb3e93d33c5c43ecfa9ef0e1",
    "1abf0faf40521d72fa49f33aa82825bd1a08b6cea9fdb1eb9f20bebfa91c9b88fa6908f7daae3fe5054d3778016fdc86f52c8eff16828f8670530c6db3fb6d5e"
    "d1444551dbca1068bca85cb739eb1c85fb713d9c50edb1d3e2dcca0bf2d9f55f406598cfc65dedc799a9d173e487359ef387bf3f22f19c97d51f6c3aced7df4f",
    "8e92a79349e96c7414ca1f1d26cab1c061727ffcc13f10dfdf548e3f46d44f43f8b6dfeba7cf7fa0dd07a2bac979256ff535edd9fce02154a616cfcd106bdc6b"
    "e53b5e6710e42e186565c3b37d03a935edb0712fe60d98cfeb7df2efbf91f982dffd4375ac0ad2f155a511103add50f6bc5cca07867b140722efaf3339f5ed70",
    "6fe2fcebfc0bd767adeda324ce8fc8ed44e24178f8489cdf9bfac9f8dfd95e6ff5358bed3e06b3eb123bf2af3fd8eafa80f3bcd65452f8d7076e1efde8af241e"
    "e4777fd0d2d84c75d819762215709a1c4bc7278d1620fe80f80344bf9debc578fd8120137fb0993f1064fcfee0f6f76f3c21fec0effea0c7b622c560a37015e9",
    "c48cc4315b0c8150798fceef92f5e2d5b99d1cfa77c17a66dfbf68bcdf2d1feef3bc7b1c172471fd2df291b8be37f5fbd6ae4f80a6e883dddcc716fd383acd6f"
    "3fc266e7f981681d1ff1ed7e7e1ce3785d65357e203396ac7610d7f91d89f3fbdfde1be123a972da48f7cf83ca6468e4a5543e60ec91bd77fb1e97a032053d67",
    "e3be3ea74bdd9dd3fd09a2be4de5f51d041f0de1d0fe195655c5715c90596d5c9dfabcd4fc5269afd699bfbca65d36beb8ccbacfca5dd321d8fc6eef7360d7f0"
    "dbb837e306a4386d3781d3ae951bff24f11ebffb8954538f37cbe9f70bd5fa692697d5b4934c49dea3780f79bf57f76b337d8c78e63fbe89e0a3211cf61f4345",
    "e8c6348d1da744d630802cc8bde9737e3d37f0e11a3e1bf7489f56880ff7bd9ed4cd7f3ac44ff8dd4f4cce32c1445d6d4ae54eb11b6bf299fc482a66f6c74fdc"
    "22bebfa91ccf11f5d310eed57c6216416af3a2c21a6dfb324c0ab31e463f24f700b9e4dbda3cf4a539574eee01da261fb907c89bfaddae1f3410f5d310ee95fd",
    "9715a3c0168a5ad67cb57ba6f1c7ab7f2dcfd60bd6ddf32ce8322b53fe5d2fc822f99cb817f7f69b92dac13cf186ac0f6f910f977dbf8a0d8a5268dc0c1d56b4"
    "a34122004e865281da1ffb4edee3d5ed77eaddb73cbb1f82dcf38ce273e2e49e67d77cd3745ff8c83dcfded44fc6fbab733ba1c6fb3788fa3695dbd7117c3484",
    "af8cf31cf0a2a2cc025dbbf20b6ef5a68ee473e2dec47bde99c98d99ca6dea0930ce0b7e4df611f9df0f74fae15253168d6e559192033913ec24e367647d7851"
    "1f8fa89f8670f2fbeccfe77b15c147cf11b3c7d3dcafe70370fc5e1010ad5da3a6a4f0de0bf169fddbc4cefbddceabb5d1b348d128852345b6567d56d3d2634e",
    "dea3f13e797f9d695b719f37117c3484af1edfdb567e77fb7bdc8eefab6bf86cdcdbf1fd4c6796fb718168a7777a130dfffc57c4eefbddeebfabe574b6cce55b"
    "8d4eabd989c7c321be0788ddbf7776ff6788fa3695d377117c3484af3a1fe0dcea9a954b22cb81f9f3fb724ea0b386dfc63ddc47bc52ac3bf81d01724e608b7c",
    "b8fcc4a094488c2289865aa81d8348a11fcce7229789fdf113e4fd5eddafcdf4f1fb9ec581d6ff6e8c753a56077edd0f5440f239712fce0fdbb2c21b178c3efe"
    "c1c7c4defbddde5f37b27a4abcfc61ea88d7aae2f059f14c9e9489bd27f67e9a0ef62e5ef4a2fe80c48b56e77622f1223c7c245ee4aefeff0160bf7a9a",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 40152U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_cost_function_cartpole_info.cu) */
