import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage00Exact
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
abbrev s118 := e118
theorem s118_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s118) = v118 X Y k := e118_eval X Y k
abbrev s119 := e119
theorem s119_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s119) = v119 X Y k := e119_eval X Y k
abbrev s120 := e120
theorem s120_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s120) = v120 X Y k := e120_eval X Y k
abbrev s121 := e121
theorem s121_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s121) = v121 X Y k := e121_eval X Y k
abbrev s122 := e122
theorem s122_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s122) = v122 X Y k := e122_eval X Y k
abbrev s123 := e123
theorem s123_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s123) = v123 X Y k := e123_eval X Y k
abbrev s124 := e124
theorem s124_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s124) = v124 X Y k := e124_eval X Y k
def s125 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s117 s124
theorem s125_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s125) = v125 X Y k := by
  simp only [s125, v125, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s117_eval, s124_eval]
abbrev s126 := e126
theorem s126_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s126) = v126 X Y k := e126_eval X Y k
abbrev s127 := e127
theorem s127_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s127) = v127 X Y k := e127_eval X Y k
abbrev s128 := e128
theorem s128_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s128) = v128 X Y k := e128_eval X Y k
abbrev s129 := e129
theorem s129_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s129) = v129 X Y k := e129_eval X Y k
abbrev s130 := e130
theorem s130_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s130) = v130 X Y k := e130_eval X Y k
abbrev s131 := e131
theorem s131_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s131) = v131 X Y k := e131_eval X Y k
def s132_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,0,0,0,0,-225,90,-9],[0,0,0,0,-130,541,-188,17],[0,0,0,175,-44,-340,104,-7],[0,0,0,-95,64,52,-4,-1],[0,0,0,17,-20,5,-2],[0,0,0,-1,2,-1]],[[],[],[0,0,0,0,120,-384,72],[0,0,0,1920,-2560,1232,-144],[0,0,1800,-4304,2944,-832,72],[0,0,-720,1344,-672,112],[0,0,72,-112,40]],[[],[0,0,0,0,2880,-576],[0,0,0,384,-7232,-1652,1152,-108],[0,0,-1920,-3520,3816,6660,-2392,204],[0,0,384,2300,-208,-4688,1304,-84],[0,0,0,-948,576,648,-40,-12],[0,0,0,196,-240,68,-24],[0,0,0,-12,24,-12]],[[],[0,0,0,6144,1536],[0,0,-37888,8192,720,-4320,720],[0,-30720,44544,14816,-28640,13152,-1440],[0,6144,14736,-48096,32544,-8800,720],[0,0,-7776,14304,-7072,1120],[0,0,720,-1120,400]],[[],[0,0,8192,20480,25344,-4608],[0,-53248,36864,6144,-67328,-7690,6732,-594],[0,12288,2304,-51712,37516,39826,-13904,1122],[0,0,-768,14310,2664,-29096,7480,-462],[0,0,0,-4430,2224,3680,-176,-66],[0,0,0,1034,-1320,418,-132],[0,0,0,-66,132,-66]],[[],[0,131072,32768,30720,9216],[98304,-65536,-249856,47104,6456,-21600,3240],[0,-208896,285696,73056,-147808,62928,-6480],[0,36864,71208,-243536,161184,-41760,3240],[0,0,-37584,68256,-33408,5040],[0,0,3240,-5040,1800]],[[],[262144,0,-49152,81920,96768,-16128],[0,-344064,196608,84480,-268800,-31316,23760,-1980],[0,49152,85248,-272640,139048,149060,-48840,3740],[0,0,-16128,49660,26864,-108112,25960,-1540],[0,0,0,-12676,4448,12600,-440,-220],[0,0,0,3300,-4400,1540,-440],[0,0,0,-220,440,-220]],[[],[0,131072,65536,61440,23040],[196608,-131072,-648192,112640,35520,-63360,8640],[0,-583680,760320,267648,-454016,177792,-17280],[0,92160,236736,-730240,471168,-117120,8640],[0,0,-107136,192384,-93312,13440],[0,0,8640,-13440,4800]]]
def s132_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,-196608,122880,209664,-32256],[0,-712704,368640,362496,-603904,-98407,56430,-4455],[0,73728,355584,-747008,266034,381115,-115500,8415],[0,0,-59136,101689,110444,-268844,60720,-3465],[0,0,0,-24257,3376,28980,-660,-495],[0,0,0,7095,-9900,3795,-990],[0,0,0,-495,990,-495]],[[],[0,0,32768,61440,30720],[98304,-65536,-851968,143360,104688,-120960,15120],[0,-860160,1075200,661120,-909184,328608,-30240],[0,122880,529296,-1429920,900480,-215040,15120],[0,0,-199584,354816,-170688,23520],[0,0,15120,-23520,8400]],[[],[0,0,-212992,81920,282240,-40320],[0,-606208,294912,745728,-837760,-215720,95040,-7128],[0,49152,714240,-1208960,257360,692552,-193776,13464],[0,0,-107520,120504,269664,-472480,100848,-5544],[0,0,0,-31720,-5632,47184,-528,-792],[0,0,0,10824,-15840,6600,-1584],[0,0,0,-792,1584,-792]],[[],[0,0,0,30720,23040],[0,0,-596992,102400,183264,-157248,18144],[0,-706560,852480,1060416,-1234496,415296,-36288],[0,92160,788832,-1907008,1176000,-270144,18144],[0,0,-254016,447552,-213696,28224],[0,0,18144,-28224,10080]],[[],[0,0,-73728,20480,241920,-32256],[0,-184320,86016,854016,-736512,-325612,116424,-8316],[0,12288,817920,-1205760,37352,911260,-236544,15708],[0,0,-112896,63476,436912,-602672,121968,-6468],[0,0,0,-27524,-20384,55776,0,-924],[0,0,0,12012,-18480,8316,-1848],[0,0,0,-924,1848,-924]],[[],[0,0,0,6144,9216],[0,0,-208896,38912,202800,-141120,15120],[0,-307200,359424,1102656,-1149760,363552,-30240],[0,36864,784656,-1753376,1063104,-235200,15120],[0,0,-223776,391104,-185472,23520],[0,0,15120,-23520,8400]],[[],[0,0,0,0,129024,-16128],[0,0,0,563712,-401408,-341384,104544,-7128],[0,0,547584,-731392,-214512,872552,-211728,13464],[0,0,-69888,-30184,491104,-562720,108240,-5544],[0,0,0,-13864,-30400,48240,528,-792],[0,0,0,9768,-15840,7656,-1584],[0,0,0,-792,1584,-792]],[[],[0,0,0,0,1536],[0,0,-27648,6144,144576,-86400,8640],[0,-55296,62976,738176,-725888,217728,-17280],[0,6144,516288,-1097856,657024,-140160,8640],[0,0,-134784,233856,-110208,13440],[0,0,8640,-13440,4800]]]
def s132_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,0,0,39168,-4608],[0,0,0,202752,-124160,-249151,68310,-4455],[0,0,200448,-248320,-282302,603235,-137940,8415],[0,0,-23808,-79215,387564,-381932,69960,-3465],[0,0,0,-1361,-27872,30300,660,-495],[0,0,0,5775,-9900,5115,-990],[0,0,0,-495,990,-495]],[[],[],[0,0,0,0,64920,-34560,3240],[0,0,0,307968,-297856,85392,-6480],[0,0,216936,-448400,265728,-54720,3240],[0,0,-53136,91584,-42912,5040],[0,0,3240,-5040,1800]],[[],[0,0,0,0,5184,-576],[0,0,0,31104,-16704,-124772,31680,-1980],[0,0,31104,-36288,-183096,293940,-63800,3740],[0,0,-3456,-63796,211824,-183824,32120,-1540],[0,0,0,3228,-16704,13480,440,-220],[0,0,0,2420,-4400,2420,-440],[0,0,0,-220,440,-220]],[[],[],[0,0,0,0,16848,-8160,720],[0,0,0,73440,-71904,19808,-1440],[0,0,53136,-108000,63520,-12640,720],[0,0,-12384,21216,-9888,1120],[0,0,720,-1120,400]],[[],[],[0,0,0,0,0,-41130,9900,-594],[0,0,0,0,-69300,95986,-19888,1122],[0,0,0,-28026,76648,-59560,9944,-462],[0,0,0,2290,-6416,4032,176,-66],[0,0,0,682,-1320,770,-132],[0,0,0,-66,132,-66]],[[],[],[0,0,0,0,1944,-864,72],[0,0,0,7776,-7776,2064,-144],[0,0,5832,-11664,6816,-1312,72],[0,0,-1296,2208,-1024,112],[0,0,72,-112,40]],[[],[],[0,0,0,0,0,-8100,1872,-108],[0,0,0,0,-14904,18900,-3752,204],[0,0,0,-6804,16560,-11664,1864,-84],[0,0,0,684,-1440,728,40,-12],[0,0,0,116,-240,148,-24],[0,0,0,-12,24,-12]],[]]
def s132_part03 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,0,0,0,0,-729,162,-9],[0,0,0,0,-1458,1701,-324,17],[0,0,0,-729,1620,-1044,160,-7],[0,0,0,81,-144,60,4,-1],[0,0,0,9,-20,13,-2],[0,0,0,-1,2,-1]]]
def s132 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := s132_part00 ++ s132_part01 ++ s132_part02 ++ s132_part03
def calculation132 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s129 s131
theorem calculation132_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculation132) = v132 X Y k := by
  simp only [calculation132, v132, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s129_eval, s131_eval]
def residual132 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.add calculation132 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s132)
theorem residual132_length : residual132.length = 25 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
