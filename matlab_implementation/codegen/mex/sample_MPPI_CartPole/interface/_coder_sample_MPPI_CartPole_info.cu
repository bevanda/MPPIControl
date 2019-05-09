/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_sample_MPPI_CartPole_info.cu
 *
 * Code generation for function '_coder_sample_MPPI_CartPole_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "sample_MPPI_CartPole.h"
#include "_coder_sample_MPPI_CartPole_info.h"

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
  xInputs = emlrtCreateLogicalMatrix(1, 14);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString(
    "sample_MPPI_CartPole"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar
                (14.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (3.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "C:\\Users\\petar\\OneDrive\\TUM\\atTUM\\RLR\\MPPIController\\matlab_implementation\\sample_MPPI_CartPole.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737553.74642361107));
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
  const char * data[26] = {
    "789ced5d4d6cdbc81566b2c92201ba2df7d06e8316db045d04bb4d6149966cc5050a48a2f5e7583f96e448f2fec814359218f34726a9df937b297a59604f7bea"
    "a9bd740b14686f0bb487e456b43d6eb38b023d2e50f4d04381f6589494445be4722226a44626330338e3c9a3e79b7978f3debc377fc4956cee0a41105f577fae",
    "aa3fbd2f89697a6d9611e43cbf4a1893997e659edf3595f5749db866f83b9dfef379ce88820246caacc0b102c8f7f92690d48240f3e0bc9a96c8b3022d289571"
    "0f101290456e005a534a9be54085e5c1beb850c8b06a814f2d90ce0b1a49fb9dea02e6a4dce709a92b5f34975b2c100bfcf9e342ff7776a2e7fdbf66c19f45ba",
    "dedf16843fa489fe6ef27dea478143194872a007145a0a1404b02bb10310a81ce602b4a2fd5bda2f0572c56296529927891c07a4004f2b1cdd6cb07c8f033c10"
    "145a61452120d35ab9a17ddba06849298a1cd8e017fb75bcd0eec5f6bc6ad1af45fa1548aea79bc48d85d27763cbf0acf86885771d8247ce29122db4046279ff",
    "ece2bd6a2a5fe0cd282db1dfe4c005de6f1de23d80e219e9ef66f76b5351294a6247a2f9db9a4ccb815cbcb21f4f044a9bc1d00e1d5044916b8aa300e0b900c7"
    "36e74212d078d4ee0bd35c9889034a7928bc79f3691cadfca196f7f5e18d20f5d995bf6f41f048135d2ac54389bd5cb79f670759850a453a27ed87a98b761497",
    "e02c6b070129a3aa1f8f63ebf61be5eeed985b72f74d081e69a2ab2c68b07243eb72439d3748ac20b30ce15cdf9b13ac1d7ab29a173c0fde73cf0b5439293a15"
    "949e3a8fa01510b06422ea79c1d9efaab7fe8aedc08af050d981d603aa7a3fbbc3977bc32a2894f6c56ae47498f08f1d4036be7d39efbfed9a7d781d82479ae8",
    "7a6f1bbb63d5816419dd9d5b973fe0547e68289e91eeaefc7c858bf3d90552fbf0b55f463ec7f6614578a8ec438a16e9879947cd14db2f8052bf1a1d47f37b69"
    "6c1f2efbf886c9875d797c05d2af9bf3fcdb86ffbd1b9be51bf33ce85abc08d60e724e9159619aafcb3efcca215e1a8a67a43bf13301a7390f2aa7542941a7af",
    "624f0eef62ffc0ebfa9fa63389a3e149867d98a3fa5c2221ec468bf95dffe87f3c7e8dc9286f6f9debf133487d76f9740b82479ae88cd802d2062b284012686e"
    "4366688e9636742dbfbe38d1a72f88a7d75f5e82a7d39f5b4eb49f7b53ae05eee96c0bdc9bf16d2e338bfd3886b4d33db9791cfbf813acf7bdaef7835b99edfb",
    "d4b0ba194c0c875cb0c745763b131fc585b0de372698deff08529f5d3ebd03c1234d7493dea77b3d6e5c9e2ab1545f6034a7272b14399ad1b7149cef7b70d8be"
    "6f2c699f4e6fcf5bd1e8d2424b7500dcf21f9b4bf075ba3b7601ce56dd8144286707d57fe27564afdb897e91a24651aadacb57b64034df0de7f6a327947fec04",
    "1edfd6fdb2278f3f742d0e74c35426cebf9b515859eed1920cbcba6f280fc533d29dcc27340e69330a9d579a4c208c07ddf8f10758df7b5ddf0fab5939c59d3c"
    "4c6db6a532377854d813260758df637d3f4d1bbe8b17bda83dc0f122eb5c4f385e84060fc78bdca91faf135bf7ebb2ac132fd3cf7c4f1c6ac752bcba4e9c81e2",
    "19e94efc03b12707667cdae011ee13faecc3a7d82ff0bafe0f4d4037141eb6faa164bc564e77c6db2dbeeea3f3045e1dbfb0f8b85d79bb6a2aeb49d7efa4e17f"
    "b762b33cea9a1ff03d083e69a29bfc00564ef4594ec90af93e0f2496f1ecfe51068a67a43f97dcc85d5a02adc0cc0b98fb026697c0cc41f4e753fe44fc0fdb05",
    "afdb85e151e270321975a3855e3f99dca498ad127ddf477e8157edc231a45deeca5b0261fc5fedacc48ebc1affdf87e219e9cef613a8bf04744ea13e4f127bf2"
    "8334d6e75ed7e779e6a49a95524c3ba5d4c24ce8602b51cf257c741e00eb736332c8db590ad93d10f3708d67e33528f687697230170394e7ba70bc668578a8ce",
    "e18f833b42374b0d0b1920c8c2f6e176f3289d21b01e5ff7f8451bafd1e3f0211caf2170bce659fdc2f19af5e2e1788d3bf53bf5d38ba63261fa4ea7bb6417ee"
    "b43965fa2b52b98b155dbbf7e10d081e69a25beee34976d666072ead9c58eedfd1d985d21f7cfceffa9fb1bebfacfadeae1f108f086d712fc89683f5ed6231b4",
    "df896f453802ebfb97671cabe92c175be67fd8e5d76ba63261fa4ea7b3b2309ba72ada8db0debdefb300c533d25f683ed06647a0d51355f10818f885f63ce06f"
    "f03d6f9757cfdb9dd7a7c327e3f26987e5a80a75523a4d742a2787491fdde380f5bc75fb617a1e86e7de7a6c9b55dd99ae57f5fa1e14cf4877aed7677c5ac379",
    "0dacd75788876afe3e3805c9de8091776ac3b02816e572285c3f22fca3d79d9ea3a941ea274d74b7f5fa9d362bc94a9b451bb7a15d8be3bf09c1234df4e955c4"
    "82d2688b12278abd863800529b13870d467b9f617df7f53c7e413cbdfe6353d98ca7d31dedc79989d133f887349ef3872fafe378ce65b50776e7f9f283e428b9",
    "3b9914f7469b91dc66903a88878249ffd8837f40fede2e1f7f0aa99f34d1573daeef3cfb834617703d3be795dc95d7b46bfec135539938ff6e46d1e6bd5abee6"
    "75065668815156505cdb37905ad20e9dee86df80f6fe06e2d3fffc0dfb0b5eb70fe5718fe5b74e4bd510db6c45b24707c55c68e0a338101ebfc66494b78bf3b6",
    "5e8ff32fb32f4c97d6b68fe2383f24d7138e07a1c1c3717e77eac7f37f637bdd95d72cb2fb18d4aef3f4c8bbf660a5eb03c6f35a534ea15f1f38bbfe932f703c"
    "c8ebf6a02ed199f2a03968464b603739e6b776aa7580ed01b607907e1bd78bd1da03edd2366c0fecd883f36bda10cac3e3dfbf81dffdf5bc3de8d0f568215ccd",
    "9f469b7185daa20b111039f0d1f95dbc5e6c9debc9207fc7b46bfafd79e3fd4ef1509fe7f5715c10c7f5578887e3faeed4ef59bd3e019228f7d7731f5bec83d8"
    "347ffc3e323ddfee73daf111cfeee747318fd7efe1d778b586b80e7eb77d8578a8f4bdb2bdc99776abe9ee51589c0c941c9fca85141fe97ba7e3b8682a13a6ef",
    "74baa7cfe91217e7747f06a9cf2ebfde86e09126bad53b5d0956a025d333046ead33affb7d2e7a09be4e77f13d072b76aee1fd76fc3ed72af190bddf5e9313b5"
    "83f4837cf97037b39f95a49d4c51f051bc078f6feb7ed993c7a86bf6e3fb103cd24437db8f81c8b6e292448f531cad28406085cef43baf9e1b786f099e4e7749",
    "9e2cd887fa5e4fe2ecbf4d6c27bc6e27267b993075d8abf107cd422b5e6b677223be90f18f9d780cf97bbb7c3c82d44f9ae86ef913b30852a3cd89b4d2d02fc3"
    "2410cb61ec3d7c0f9043bc95f9a197e65c39be07689578f81e2077ea77ba7e5085d44f9ae86ee97f4154f274be2065d5a1dd51953f5af9abbbb65eb0ec9e6756",
    "166881f0ee7a41168a67a4bb716fbfcaa935f88967787d788578a8f4fb69bc5fe023e35a24589236fb5408ec0cf83ce11ffd8ec7b175fb8d72f7966bf743e07b"
    "9e6178463abee7d931de34bd2c78f89e6777eac7f37deb5c4fb0f9fe19a43ebb7cfb0e048f34d1addf6d6f73a2380b74adcb2e38959b43289e91eeeebbed53be",
    "4d2d0142bfe0d7781f91f7ed40b3bb5dac099cd22a8b7cb22f64c2cd64620faf0f9fd74743ea274d74d4efb6f720ed5ecd3b317763b37cc3b5b8d02b107c724e"
    "6144799a7bf5bc008af78300a7ed22553985f69e88278777b1def7badeef55468fa205a5b81d2dd095f2a38a941e33828fe6ff78fc1ad3aae240b72078a4896e",
    "3ddfd7b5fcfaf6fb389def9797e0e97477e7fb339959ecc731a49deec94d6cfbe34fb0def7badebf2fedcbf40193ab579bf55a3391d88eb43b00ebfd974eef7f"
    "04a9cf2e9fde81e09126bad57901e3d6d7ac50e46806ccbff7cbb981e6127c9deee2be624bb6aee15d017c6e608578a8ec44bf4851a32855ede52b5b209aef86",
    "73fbd113ca3f76028f6feb7ed993c70ddff90feb5a2fc0fec3aaf066e965c1c3fe833bf53bb50b2d48fda489eeee7a814c6be586f66d435f3b407e0e484db75d"
    "3b2ff03a048f34d1b56bf37885e5817c7e45de34e178d2b3f71d7c856fe8f711fdfd5f7fc17e82d7ed4131d12a8f8ec6dd54687fb2b9d78d0e8483dda88feea1",
    "b8b4e78b978fe73b8cc8f3a230bb40d43c4f86c55756b27e7c56884df38577e5cf20f5e3fda7f6f0f0fed397438fa3c6c3fb4fdda91ffb11d6fdb2278f41d7fc"
    "08bbf2c888b2d2385f0c60d4bef7c4457d7decb01da8ed431b8a67a4bb2b3fd65c447b9fe9d917bf887c8eedc38af0508dc7c35a755279b4dbd92aa74b0fc36c",
    "a7343a186d62fb80c7f7ecaf5cdb87ba4c2ff3f3bb37bcba0f3503c533d29dfa9ffcfc200b423dffd9874fb11fe0753d1f9a806e283c6cf543c978ad9cee8cb7"
    "5b7c3d85f53cd6f3d3bfc2e70d6ce2f978df1a3e6fb0423c7cdec059fdff07481dedbd", ""
  };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 58760U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_sample_MPPI_CartPole_info.cu) */
