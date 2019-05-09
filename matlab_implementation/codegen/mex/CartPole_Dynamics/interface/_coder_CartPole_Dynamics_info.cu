/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_CartPole_Dynamics_info.cu
 *
 * Code generation for function '_coder_CartPole_Dynamics_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "CartPole_Dynamics.h"
#include "_coder_CartPole_Dynamics_info.h"

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
  xInputs = emlrtCreateLogicalMatrix(1, 10);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString("CartPole_Dynamics"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar
                (10.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "C:\\Users\\petar\\OneDrive\\TUM\\atTUM\\RLR\\MPPIController\\matlab_implementation\\CartPole_Dynamics.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737553.41576388886));
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
  const char * data[22] = {
    "789ced5dcd6f234915efd99d19cd1c1672816584043b6235621994b6e3249e2021d9eed8b1b3b1dd899db59dfd48ca76d9ee497fa5bbfd9553b8202e487bda13"
    "7f008b840407a495e090bd21b82e2bc41d0971448223a2dbed97d8a66bed49b7db69a74a9a2957bd4efdaa9e5ebf57efd54733f732d97b0cc37ccdfc67e56ffd",
    "8e19a437ec8c5919e6af31e369927e6f987f67a20ce901737fecef80fe8b615e536403f70cbb200a32ceb5a52ad6cc828c247cd54c5d910419c946b1af6246c3"
    "ba2276707d406908222e0a12de53460a69c12c48a911d255c12259bfb916ae9d16da12a3b5f4ebee8aa30566843f7f1c19ffd656f46afcf71df8334a87f12202",
    "7f568675407f3ff921f723f650c79aceaad8401a9b97f1b62674305b3cccb2c8b0fe3fd83b60b33c9fe14ce6698a28628d959021a2eab120a92296b06c204350"
    "6496439ac12b223edeee9bec146afaaa3431aede48bfa13f567ae830ae513a8ce375c2b81e0ff36f8dd53e8bd9f9ea300fc5a01f27041c27febe4a3f564c8a55",
    "a70bf2a0ec15dec389f235dec3415d5d6957457c8df74b97783b443cbb0ee8ef67f6ca0311e235a5a921e92d4bd675361b2feec513ecc15a28bc85584351c4aa"
    "d263b124b2a2501d0a0f8bc5465b664d4e9952328d4fb3cac7640ee931f368f82bf6f9e1b3bfc4fdc3b3d35dc123bddfb3cadd37097820774047289d38ea9ea6",
    "85f7b25c5b4c24e4ed289fdbbeee073f05675a3f1842d9aff6e9fb3b9ec6e5eded2b3d7e41686f563e3d21e0019f805e53ea585b15ccc98326237155af211169"
    "aba0e5ddebf9c944ea0f24c0fbec8678d056610a1ed05f594eac7fcf075c639f03dbd8e736df8632333a8e13423fbd939bcbd8279f52bd1f74bd1fda486fbee0",
    "baa5b550a2db1543aab8bedd3c4f50bd7fd7f4fec784f666e5d33b043ce013d027f43e5255b15f1828b1545bae594e4f46e6455403d711faa7baecdfd7a7f40f"
    "e88d612f8e5b48ae9b0e8093ff7813fcea147ca07b6317c86c0507d24739db2ffdf34b6a27e684e7979d68f31cd78b72253557dcc0d15c2b92dd8b9e72cb6327",
    "e8fbed3caed9e4f1879ec5811e4d9499abe71e0dea045d5791a6e345c5817ee3122f47c4b3eb80ee663e6171c89a5100af2c99f0311ef4e8c71f517d1f747ddf"
    "2d65f49478fa5e6aada115c4cecbfcae7cbe4ff53dd5f783b4ba74f1a29bda031a2f72ce21d178913f78345ee44dfb6eed0222b40f7c043a5d271ec7f14a3f4b",
    "aad2b5b61f04759d384dc4b3eb80eec63f50549db5f9b42af9a7af2ebef8f997d42f08bafe0f9fe35638d2adb7c3c978b9b0d3ec6fd6a54a6a79f47f50df5f52"
    "7c7c56797b6da20c09f4fbca58ed46cccea39ef901df25e003df803ee107087aa22d884646ceb525ac09b585e97db7f3861a11cfae03fa2bc98dde421aaeb3b6",
    "1730f405265d82490efaee17307f62fe4bed42d0ed42f72871787ede6b45f36a3b995ce36a1b07e8c512f90541b50b27847e792b6f091fe3ffe66035a117d4f8"
    "ff1e11cfae03babbfd04e60f1638652b743ff783fe6087eaf3a0ebf35cedb494d152b546ca28476ae1fd8d44259bd8a1fafc4ee8f38b9467fafc01016fc5a40c",
    "fc163b5c13d8788d1ffbc32c39188a818f7a87c66be689e7568f7f8380077207f47e684b6e65b86e3e8d655dde3cdcac1eeda419aac717fdfefa1baf81387c98"
    "c66b86cfd0788df3b866d063345e33473c1aaff1a67db77e3a3f5166469e1bedbf4776e1694334063f7d95bb181ff34aeede24e001bf80eeb88f27d95c981db8",
    "b572e2b87f07d8e5a73f78f9afca9fa9bebfadfa7e563f20be2e3794dd9050085536793ebcd78c6fac8b0cd5f777e73d36d3453636cdff98955f6f4c949991e7"
    "ee8dd0055db6e7a98675f3c7e2e23c6ee5234fc4b3eb807ea3f94043e8e1baaa98e2c18ef1cbdff380bf2e3da1fb336fab9e9f755ebf1339ed17ce9a82c815b9",
    "d383b344b3787a985ca27b1ca89e77ee3f49cf93f0bc5b8f6d08a63bd30aaa5edf25e2d9754077afd76d3e2de0bc06d5eb73c4f36bfede39c349b553d3b7cadd"
    "88a2f07a211ca91c31cba3d7dd9ea32913da073e02dd6bbdfeb42168bad110fc8ddb20cfe2f8a47bff806f4037d9706c0effb8a168a2a2a8c74a076b0d51e91e",
    "d7ac7bf816775fcfe50df1a0ad9389f2241ed05dedc7b1c5e82bf8e76b3ce70f7f7f40e339b7d51ecc3acfd7df4df692dbe7e7fc6e6f6d3dbb16e2f6e3e15072"
    "79ecc13f087f3f2b1f7f4a681ff808f479bfd74fbffa81e31616d559ce2b792baf3b9ef907f727caccd573f7affc03abbce0750641aee35e46363cdb37909ad2",
    "0fa07be137f87b7f03f3d9bfff46fd85a0db87425f15a48db3835258a8d6d73347fb7c36dc59a238107d7fc7d3b8bc5d9fb70d7a9c7f9a7da9b590b57d94c6f9"
    "0939241a0ff2078fc6f9bd699fceffc7c7e5adbc667cbb8fc11cba847ac1b507735d1f183faf35e094ffeb03170f7ef2571a0f0aba3da868285de8543bd5e801",
    "de4ef6a58dad5205537b40ed0161dce3ebc5feda03ebd2366a0f66b10757d7b4f9280f97bf7ff331b50741b7074d5489e623a5dc59b41a37b80d945fc7ebfb4b"
    "747e97ae173be790c6e4ef0479a6df5f35deef16cfeff3bc4b1c17a471fd39e2d1b8be37ed0756af9f634dd1db8bb98f2df6516c905f7ee89b9e6fb445ebf848",
    "60f7f3fb318f877bf82d5e2d20aef35b1ae70fbebe3736d7a483edd24eeb28a29c778cac94ca868d25d2f76edf637ea2cc8c3c37daff409fd365aecfe9fe8cd0"
    "deacfcfa3e010ff80574a7ef7425041969139f21f06a9d79d1dfe74253f081eee1f71c9cd8f97ff7769f10fa4dbfcf150c3cbfec44aaac27cafb3befe60a87db",
    "e9bd8ca66da5797989e23df4fd761ed76cf218f5cc7e7c8f80077c04faa4fde828423dae69a89f1291616059909b83e7827a6ee083297840f7489e1cd8e7f7bd"
    "9eccc57faad44e04dd4e9cefa623dca15a96f6abf97abcdc48677b523ebd3c76e292f0f7b3f2f188d03ef011e85ef9137604e9b8212ac83886cb30199fe530f6",
    "01bd07c825dedcfcd05b73ae9cde03344f3c7a0f9037edbb5d3f2811da073e02dd2bfd2f2b460ee5f25ac67cb59ba6f2f757fe2a9ead174cbbe759d0652433c1"
    "5d2fc810f1ec3aa07b716fbfc9a905f88917747d788e787ee9f7b3783b2fadf7cbeba1036dadcd85f15647ca31cba3dfe97becdcff71b97bdbb3fb21e83dcf24",
    "3cbb8edef3ec19de20dd153c7acfb337edd3f9be730e8934dfbf20b4372bdfbe4dc003be01ddf9bbed0d5151ec40d7a2ec825bb93924e2d97540f7f6bbed03be"
    "0d2c818f7ec1afe83ea2e0db816a6b932fcba2512f2852b22da723d5646297ae0f5fb58708ed031f81eef777db5542bfe7f39d98ebefb67ba5975f27e0af9894",
    "c1fc59d107e5a09e17f0e3fb4158b476919a9cf2f79e88cf0f9f51bd1f74bdaf167b2fa37983df8ce651b1f0b2a8edf46bf212cdffe9fb3b9ee615077a42c003"
    "3e01dd79be0f5a7e71fb7ddccef70b53f080eeed7cdf9699d1719c10fae99ddcc4363ff994eafda0ebfd17da9e8ef66bd94aa95a29571389cdf5461353bd7fe7",
    "f4fec784f666e5d33b043ce013d09dce0b8c6f7dcdc8bc886a78f8fcb29c1ba84ec107ba87fb8a1dd9ba80ef0ad0730373c4f3cb4eb4798eeb45b9929a2b6ee0"
    "68ae15c9ee454fb9e5b113f4fd761ed76cf2b8ba74fe03e0fbbd5e40fd8779e1d9e9aee051ffc15dfbff032cb1e7f8",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 46392U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_CartPole_Dynamics_info.cu) */
