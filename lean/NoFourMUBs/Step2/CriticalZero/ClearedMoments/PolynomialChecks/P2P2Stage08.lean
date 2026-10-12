import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage07Exact
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]
def v480 (X Y k : F) : F := (v396 X Y k)+(v479 X Y k)
def s480 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s396 s479
theorem s480_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s480) = v480 X Y k := by
  simp only [s480, v480, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s396_eval, s479_eval]
def v481 (X Y k : F) : F := (v281 X Y k)*(P2M4.v035 X Y k)
def s481 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s281 P2M4.s035
theorem s481_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s481) = v481 X Y k := by
  simp only [s481, v481, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s281_eval, P2M4.s035_eval]
def v482 (X Y k : F) : F := (v481 X Y k)*(P2M4.v079 X Y k)
def s482 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s481 P2M4.s079
theorem s482_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s482) = v482 X Y k := by
  simp only [s482, v482, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s481_eval, P2M4.s079_eval]
def v483 (X Y k : F) : F := (v482 X Y k)*(v284 X Y k)
def s483 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s482 s284
theorem s483_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s483) = v483 X Y k := by
  simp only [s483, v483, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s482_eval, s284_eval]
def v484 (X Y k : F) : F := (v483 X Y k)*(v305 X Y k)
def s484 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s483 s305
theorem s484_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s484) = v484 X Y k := by
  simp only [s484, v484, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s483_eval, s305_eval]
def v485 (X Y k : F) : F := (v290 X Y k)*(v296 X Y k)
def s485 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s290 s296
theorem s485_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s485) = v485 X Y k := by
  simp only [s485, v485, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s290_eval, s296_eval]
def v486 (X Y k : F) : F := (v485 X Y k)*(P2M4.v237 X Y k)
def s486 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s485 P2M4.s237
theorem s486_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s486) = v486 X Y k := by
  simp only [s486, v486, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s485_eval, P2M4.s237_eval]
def v487 (X Y k : F) : F := (P2M4.v051 X Y k)*(v305 X Y k)
def s487 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s051 s305
theorem s487_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s487) = v487 X Y k := by
  simp only [s487, v487, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s051_eval, s305_eval]
def v488 (X Y k : F) : F := (v486 X Y k)+(v487 X Y k)
def s488 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s486 s487
theorem s488_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s488) = v488 X Y k := by
  simp only [s488, v488, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s486_eval, s487_eval]
def v489 (X Y k : F) : F := (v484 X Y k)*(v488 X Y k)
def s489 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s484 s488
theorem s489_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s489) = v489 X Y k := by
  simp only [s489, v489, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s484_eval, s488_eval]
def v490 (X Y k : F) : F := (v489 X Y k)*(P2M4.v064 X Y k)
def s490 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s489 P2M4.s064
theorem s490_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s490) = v490 X Y k := by
  simp only [s490, v490, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s489_eval, P2M4.s064_eval]
def v491 (X Y k : F) : F := (v490 X Y k)*(P2M4.v006 X Y k)
def s491 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s490 P2M4.s006
theorem s491_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s491) = v491 X Y k := by
  simp only [s491, v491, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s490_eval, P2M4.s006_eval]
def v492 (X Y k : F) : F := (P2M4.v035 X Y k)*(v368 X Y k)
def s492 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s035 s368
theorem s492_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s492) = v492 X Y k := by
  simp only [s492, v492, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s035_eval, s368_eval]
def v493 (X Y k : F) : F := (v492 X Y k)*(v388 X Y k)
def s493 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s492 s388
theorem s493_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s493) = v493 X Y k := by
  simp only [s493, v493, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s492_eval, s388_eval]
def v494 (X Y k : F) : F := (v383 X Y k)*(v374 X Y k)
def s494 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s383 s374
theorem s494_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s494) = v494 X Y k := by
  simp only [s494, v494, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s383_eval, s374_eval]
def s495_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,0,0,0,0,0,50,5,-8,1],[0,0,0,0,0,-430,426,-188,34,-2],[0,0,0,0,430,0,-404,193,-28,1],[0,0,0,-50,-426,404,0,-26,2],[0,0,0,-5,188,-193,26],[0,0,0,8,-34,28,-2],[0,0,0,-1,2,-1]],[[],[0,0,0,0,0,0,1200,-480,48],[0,0,0,0,0,-1840,-872,553,-66,1],[0,0,0,0,80,2136,34,-238,38,-2],[0,0,0,560,488,-1728,180,105,-22,1],[0,0,0,-1272,686,396,-48,-20,2],[0,0,0,407,-242,-105,20],[0,0,0,-30,10,22,-2],[0,0,0,-1,2,-1]],[[],[0,0,0,0,0,-640,1648,-544,48],[0,0,0,0,1280,-4496,-476,892,-188,12],[0,0,0,0,3920,-2908,6088,-2868,464,-24],[0,0,-640,-880,4764,-1728,-5400,2556,-348,12],[0,0,-192,-900,-5368,5976,-48,-324,24],[0,0,64,68,2388,-2556,324],[0,0,0,92,-416,348,-24],[0,0,0,-12,24,-12]],[[0,0,0,0,0,-7680,1536],[0,0,0,0,15360,-1024,13728,-5248,480],[0,0,0,0,-7936,-20384,-10728,6020,-680,12],[0,0,0,0,4256,25816,296,-2688,440,-24],[0,-7680,5888,4000,4392,-19584,1512,1356,-264,12],[0,1536,-1600,-14296,8440,4632,-480,-240,24],[0,0,64,4348,-2496,-1356,240],[0,0,0,-280,40,264,-24],[0,0,0,-12,24,-12]],[[0,0,0,0,0,-11776,1536],[0,0,0,0,23552,1280,15456,-5696,480],[0,0,0,0,-10752,-42528,-11560,9594,-1476,66],[0,0,0,0,41888,-3912,41172,-19300,2844,-132],[0,-11776,6400,-10720,27208,-19584,-33408,15442,-1980,66],[0,1536,-4096,-6552,-32436,39552,-480,-1848,132],[0,0,512,774,14116,-15442,1848],[0,0,0,516,-2364,1980,-132],[0,0,0,-66,132,-66]],[[0,0,0,0,0,-56320,9216],[0,0,0,0,112640,-4608,72304,-25568,2160],[0,0,0,0,-69120,-100464,-57560,29322,-3188,66],[0,0,0,0,30864,138216,1380,-13892,2348,-132],[0,-56320,55296,10352,16088,-99264,4624,7922,-1452,66],[0,9216,-13056,-71688,45612,24752,-2160,-1320,132],[0,0,512,20790,-11164,-7922,1320],[0,0,0,-1132,-188,1452,-132],[0,0,0,-66,132,-66]],[[0,0,0,0,0,-68608,9216],[0,0,0,0,137216,35584,71280,-26848,2160],[0,0,0,0,-124416,-177552,-78644,47436,-6180,220],[0,0,0,0,178320,22924,170472,-76524,10400,-440],[0,-68608,70400,-49776,106804,-99264,-126312,56300,-6820,220],[0,9216,-22272,-26028,-123480,155688,-2160,-6380,440],[0,0,1792,2676,51468,-56300,6380],[0,0,0,1860,-8240,6820,-440],[0,0,0,-220,440,-220]],[[0,0,0,0,0,-162304,23040],[0,0,0,0,324608,-12288,225408,-73216,5760],[0,0,0,0,-256512,-290432,-178520,84324,-9000,220],[0,0,0,0,108928,434600,4680,-43536,7640,-440],[0,-162304,222720,3712,28760,-296448,3096,27740,-4840,220],[0,23040,-47616,-213416,143160,79848,-5760,-4400,440],[0,0,1792,58524,-27888,-27740,4400],[0,0,0,-2520,-1880,4840,-440],[0,0,0,-220,440,-220]]]
def s495_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,0,0,0,0,-170496,23040],[0,0,0,0,340992,146688,207488,-75008,5760],[0,0,0,0,-436736,-422272,-287302,139899,-16260,495],[0,0,0,0,397696,114682,474966,-200376,25350,-990],[0,-170496,243968,-124544,305670,-296448,-324468,138015,-15840,495],[0,23040,-58368,-61626,-327126,407412,-5760,-14850,990],[0,0,3584,2949,128952,-138015,14850],[0,0,0,4740,-19590,15840,-990],[0,0,0,-495,990,-495]],[[0,0,0,0,0,-239616,30720],[0,0,0,0,479232,-28160,455520,-136640,10080],[0,0,0,0,-544256,-546400,-355344,158991,-17070,495],[0,0,0,0,229792,892784,12222,-92394,16890,-990],[0,-239616,510976,-37792,16656,-577920,-19836,64935,-10890,495],[0,30720,-101120,-421040,289506,173052,-10080,-9900,990],[0,0,3584,107121,-40662,-64935,9900],[0,0,0,-3090,-6810,10890,-990],[0,0,0,-495,990,-495]],[[0,0,0,0,0,-231424,30720],[0,0,0,0,462848,289280,409824,-137536,10080],[0,0,0,0,-783360,-616224,-658520,272376,-29016,792],[0,0,0,0,489376,242856,931728,-366600,43488,-1584],[0,-231424,432640,-195296,634328,-577920,-595440,239736,-26136,792],[0,30720,-87680,-85608,-630000,748656,-10080,-24552,1584],[0,0,4480,-6264,233544,-239736,24552],[0,0,0,8856,-33408,26136,-1584],[0,0,0,-792,1584,-792]],[[0,0,0,0,0,-193024,23040],[0,0,0,0,386048,-46080,621248,-173824,12096],[0,0,0,0,-737280,-700608,-473872,206280,-22992,792],[0,0,0,0,303552,1256304,24144,-140352,26736,-1584],[0,-193024,737280,-87872,-34160,-768768,-71664,107160,-17424,792],[0,23040,-136320,-578928,393840,265200,-12096,-15840,1584],[0,0,4480,132408,-28992,-107160,15840],[0,0,0,-1200,-14640,17424,-1584],[0,0,0,-792,1584,-792]],[[0,0,0,0,0,-180736,23040],[0,0,0,0,361472,321280,561216,-172928,12096],[0,0,0,0,-806400,-547008,-1009792,366828,-36456,924],[0,0,0,0,280512,289856,1315608,-481992,53928,-1848],[0,-180736,439040,-214848,943040,-768768,-799008,302652,-31416,924],[0,23040,-79872,-53760,-897624,992544,-12096,-29568,1848],[0,0,3584,-28140,312648,-302652,29568],[0,0,0,12264,-41832,31416,-1848],[0,0,0,-924,1848,-924]],[[0,0,0,0,0,-80896,9216],[0,0,0,0,161792,-44544,579168,-152768,10080],[0,0,0,0,-662016,-621664,-426160,188076,-22680,924],[0,0,0,0,242336,1230544,35448,-157080,31080,-1848],[0,-80896,688128,-80800,-89936,-706944,-124992,127932,-20328,924],[0,9216,-119040,-565264,363048,294336,-10080,-18480,1848],[0,0,3584,110292,7896,-127932,18480],[0,0,0,2520,-21000,20328,-1848],[0,0,0,-924,1848,-924]],[[0,0,0,0,0,-76800,9216],[0,0,0,0,153600,206080,532576,-150976,10080],[0,0,0,0,-481792,-256928,-1063208,348024,-32712,792],[0,0,0,0,-46432,190040,1346064,-459864,48768,-1584],[0,-76800,257280,-185440,993576,-706944,-788688,279864,-27720,792],[0,9216,-43776,28776,-947568,958032,-10080,-26136,1584],[0,0,1792,-49656,310680,-279864,26136],[0,0,0,12552,-38688,27720,-1584],[0,0,0,-792,1584,-792]],[[0,0,0,0,0,-13824,1536],[0,0,0,0,27648,-22528,365184,-91648,5760],[0,0,0,0,-386560,-377984,-250800,121128,-16656,792],[0,0,0,0,97664,832336,38352,-131040,26736,-1584],[0,-13824,406016,-19328,-101712,-443904,-136656,111384,-17424,792],[0,1536,-65536,-389968,220080,238032,-5760,-15840,1584],[0,0,1792,58584,41184,-111384,15840],[0,0,0,5136,-20976,17424,-1584],[0,0,0,-792,1584,-792]]]
def s495_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,0,0,0,0,-13824,1536],[0,0,0,0,27648,71424,343680,-90368,5760],[0,0,0,0,-155136,-12672,-769594,232011,-20880,495],[0,0,0,0,-184960,37734,990582,-316524,31950,-990],[0,-13824,80640,-132736,729754,-443904,-567612,188175,-17820,495],[0,1536,-13312,91962,-732150,668988,-5760,-16830,990],[0,0,512,-52299,226668,-188175,16830],[0,0,0,9360,-26190,17820,-990],[0,0,0,-495,990,-495]],[[],[0,0,0,0,0,-4608,149488,-35936,2160],[0,0,0,0,-133632,-151152,-87560,54999,-9150,495],[0,0,0,0,528,375480,30270,-81186,16890,-990],[0,0,138240,21872,-67960,-182208,-99204,70215,-10890,495],[0,0,-20736,-184536,78930,138948,-2160,-9900,990],[0,0,512,15849,45762,-70215,9900],[0,0,0,4830,-14730,10890,-990],[0,0,0,-495,990,-495]],[[],[0,0,0,0,0,10368,144048,-35488,2160],[0,0,0,0,-20736,51888,-374412,106124,-9260,220],[0,0,0,0,-121584,-39948,511656,-153476,14800,-440],[0,0,10368,-72624,362060,-182208,-290168,89740,-8140,220],[0,0,-1728,87724,-402456,329912,-2160,-7700,440],[0,0,64,-35276,118052,-89740,7700],[0,0,0,4940,-12640,8140,-440],[0,0,0,-220,440,-220]],[[],[0,0,0,0,0,0,36000,-8320,480],[0,0,0,0,-20736,-36000,-12424,17716,-3720,220],[0,0,0,0,-14688,104504,17032,-36544,7640,-440],[0,0,20736,17568,-27704,-44160,-47736,31260,-4840,220],[0,0,-2880,-56120,10136,56952,-480,-4400,440],[0,0,64,-1204,28288,-31260,4400],[0,0,0,2760,-7160,4840,-440],[0,0,0,-220,440,-220]],[[],[0,0,0,0,0,0,35424,-8256,480],[0,0,0,0,0,25056,-115800,31546,-2708,66],[0,0,0,0,-35424,-35064,176212,-49812,4604,-132],[0,0,0,-25056,114168,-44160,-99936,28818,-2508,66],[0,0,0,44952,-149044,109152,-480,-2376,132],[0,0,0,-15034,41556,-28818,2376],[0,0,0,1748,-4124,2508,-132],[0,0,0,-66,132,-66]],[[],[0,0,0,0,0,0,3888,-864,48],[0,0,0,0,0,-3888,1800,4202,-1076,66],[0,0,0,0,-3888,15048,6500,-11364,2348,-132],[0,0,0,3888,-6408,-4800,-14544,9330,-1452,66],[0,0,0,-9576,-3476,15504,-48,-1320,132],[0,0,0,-2474,10500,-9330,1320],[0,0,0,980,-2300,1452,-132],[0,0,0,-66,132,-66]],[[],[0,0,0,0,0,0,3888,-864,48],[0,0,0,0,0,3888,-20196,5436,-468,12],[0,0,0,0,-3888,-11556,36360,-9724,864,-24],[0,0,0,-3888,20196,-4800,-20808,5596,-468,12],[0,0,0,12420,-33336,21768,-48,-444,24],[0,0,0,-3708,8860,-5596,444],[0,0,0,372,-816,468,-24],[0,0,0,-12,24,-12]],[[],[],[0,0,0,0,0,0,648,756,-200,12],[0,0,0,0,0,648,1512,-2192,440,-24],[0,0,0,0,-648,0,-2504,1676,-264,12],[0,0,0,-648,-1512,2504,0,-240,24],[0,0,0,-756,2192,-1676,240],[0,0,0,200,-440,264,-24],[0,0,0,-12,24,-12]]]
def s495_part03 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,0,0,0,0,0,-1458,405,-36,1],[0,0,0,0,0,-1458,3402,-864,74,-2],[0,0,0,0,1458,0,-1980,497,-40,1],[0,0,0,1458,-3402,1980,0,-38,2],[0,0,0,-405,864,-497,38],[0,0,0,36,-74,40,-2],[0,0,0,-1,2,-1]],[[],[],[0,0,0,0,0,0,0,81,-18,1],[0,0,0,0,0,0,162,-198,38,-2],[0,0,0,0,0,0,-180,137,-22,1],[0,0,0,0,-162,180,0,-20,2],[0,0,0,-81,198,-137,20],[0,0,0,18,-38,22,-2],[0,0,0,-1,2,-1]]]
def s495 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := s495_part00 ++ s495_part01 ++ s495_part02 ++ s495_part03
def v495 (X Y k : F) : F := (v493 X Y k)+(v494 X Y k)
def calculation495 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s493 s494
theorem calculation495_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculation495) = v495 X Y k := by
  simp only [calculation495, v495, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s493_eval, s494_eval]
def residual495 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add calculation495 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s495)
theorem residual495_length : residual495.length = 26 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
