import NoFourMUBs.Reuse.Archive.CriticalZeroHornerBindingPilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def denQy_01_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 9)) 1) (.neg (.lit 243)))) 1) (.add (.mulY (.lit 243) 1) (.neg (.lit 4617)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 5) 1) (.neg (.lit 135))) 1) (.lit 1863)) 1) (.lit 180063))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 4)) 1) (.neg (.lit 117))) 1) (.lit 6723)) 1) (.neg (.lit 161109))) 1) (.neg (.lit 1738665)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 3)) 1) (.lit 27)) 1) (.lit 1863)) 1) (.neg (.lit 118827))) 1) (.lit 2329155)) 1) (.lit 5491557))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 135)) 1) (.lit 5265)) 1) (.lit 3645)) 1) (.neg (.lit 32805))) 1) (.neg (.lit 7144929))) 1) (.neg (.lit 33480783)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 90)) 1) (.lit 7290)) 1) (.neg (.lit 116640))) 1) (.neg (.lit 1082565))) 1) (.lit 24505335)) 1) (.neg (.lit 110008287))) 1) (.lit 463947993))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 2430) 1) (.neg (.lit 109350))) 1) (.lit 787320)) 1) (.lit 19190925)) 1) (.neg (.lit 273692115))) 1) (.lit 942244893)) 1) (.neg (.lit 1162261467)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 21870)) 1) (.lit 688905)) 1) (.neg (.lit 649539))) 1) (.neg (.lit 131265927))) 1) (.lit 1085733963)) 1) (.neg (.lit 1463588514))) 1) (.neg (.lit 3874204890)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 65610) 1) (.neg (.lit 1594323))) 1) (.neg (.lit 6908733))) 1) (.lit 320458923)) 1) (.neg (.lit 1162261467))) 1) (.neg (.lit 3874204890))) 1))
theorem denQy_01_14_interpret (X Y : R) : value X Y denQy_01_14_expr=denQy_01_14 X Y := by
  simp only [denQy_01_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_14]
#print axioms denQy_01_14_interpret
def denQy_01_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 27) 1) (.add (.mulY (.lit 9) 1) (.neg (.lit 4131)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 39)) 1) (.lit 2268)) 1) (.lit 109107))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 9) 1) (.lit 2133)) 1) (.neg (.lit 91611))) 1) (.neg (.lit 1060695)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 87) 1) (.neg (.lit 3726))) 1) (.neg (.lit 2673))) 1) (.lit 1027890)) 1) (.lit 7381125))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 45) 1) (.neg (.lit 4185))) 1) (.lit 159165)) 1) (.neg (.lit 1519965))) 1) (.lit 2066715)) 1) (.neg (.lit 104339583)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 810)) 1) (.lit 87480)) 1) (.neg (.lit 3061800))) 1) (.lit 32772195)) 1) (.neg (.lit 104162436))) 1) (.lit 801944469))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 270) 2) (.neg (.lit 1071630))) 1) (.lit 31591215)) 1) (.neg (.lit 270503469))) 1) (.lit 384231843)) 1) (.neg (.lit 272629233)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 4860)) 1) (.lit 65610)) 1) (.lit 7381125)) 1) (.neg (.lit 169706826))) 1) (.lit 814699053)) 1) (.lit 2324522934)) 1) (.neg (.lit 10331213040)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 21870) 1) (.neg (.lit 295245))) 1) (.neg (.lit 21080493))) 1) (.lit 371477259)) 1) (.neg (.lit 129140163))) 1) (.neg (.lit 12914016300))) 1) (.neg (.lit 11622614670))))
theorem denQy_01_15_interpret (X Y : R) : value X Y denQy_01_15_expr=denQy_01_15 X Y := by
  simp only [denQy_01_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_15]
#print axioms denQy_01_15_interpret
def denQy_01_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 15)) 1) (.neg (.lit 1188)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.lit 846)) 1) (.lit 22275))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 5) 1) (.lit 171)) 1) (.neg (.lit 20817))) 1) (.neg (.lit 260253)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.neg (.lit 828))) 1) (.lit 6885)) 1) (.lit 129762)) 1) (.lit 6889050))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 720)) 1) (.lit 50220)) 1) (.neg (.lit 612360))) 1) (.lit 1705860)) 1) (.neg (.lit 127486791)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 270)) 1) (.lit 33615)) 1) (.neg (.lit 1232010))) 1) (.lit 11973825)) 1) (.lit 1180980)) 1) (.lit 771652332))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 6075) 1) (.neg (.lit 597780))) 1) (.lit 14729445)) 1) (.neg (.lit 76704651))) 1) (.neg (.lit 610625709))) 1) (.lit 765275040))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 405)) 1) (.neg (.lit 43740))) 1) (.lit 4887945)) 1) (.neg (.lit 86802030))) 1) (.neg (.lit 52612659))) 1) (.lit 6275255328)) 1) (.neg (.lit 7877549943)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 3645) 1) (.lit 98415)) 1) (.neg (.lit 15293691))) 1) (.lit 203010462)) 1) (.lit 1482720390)) 1) (.neg (.lit 19069697403))) 1) (.neg (.lit 50364663570))))
theorem denQy_01_16_interpret (X Y : R) : value X Y denQy_01_16_expr=denQy_01_16 X Y := by
  simp only [denQy_01_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_16]
#print axioms denQy_01_16_interpret
def denQy_01_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 9) 1) (.add (.mulY (.lit 33) 1) (.neg (.lit 2565)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 999)) 1) (.neg (.lit 35721)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 21)) 1) (.lit 675)) 1) (.neg (.lit 53460))) 1) (.lit 4815774))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 15) 1) (.lit 3375)) 1) (.neg (.lit 30132))) 1) (.neg (.lit 489888))) 1) (.neg (.lit 90187506)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 2970) 1) (.neg (.lit 146529))) 1) (.neg (.lit 317115))) 1) (.lit 49286232)) 1) (.lit 484674192))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 810) 1) (.neg (.lit 115182))) 1) (.lit 2438505)) 1) (.lit 31827411)) 1) (.neg (.lit 854557128))) 1) (.lit 358722675))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 13851)) 1) (.lit 1401867)) 1) (.neg (.lit 17635968))) 1) (.neg (.lit 455976378))) 1) (.lit 6126983289)) 1) (.lit 6213076731))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 243) 1) (.lit 59049)) 1) (.neg (.lit 5649021))) 1) (.lit 47121102)) 1) (.lit 1937102445)) 1) (.neg (.lit 16171218189))) 1) (.neg (.lit 101375027955))))
theorem denQy_01_17_interpret (X Y : R) : value X Y denQy_01_17_expr=denQy_01_17 X Y := by
  simp only [denQy_01_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_17]
#print axioms denQy_01_17_interpret
def denQy_01_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 28) 1) (.add (.mulY (.neg (.lit 15)) 1) (.neg (.lit 1215)))) 1) (.add (.mulY (.lit 1017) 1) (.neg (.lit 25515)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 3) 1) (.neg (.lit 225))) 1) (.neg (.lit 16200))) 1) (.lit 2255526))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 495)) 1) (.lit 31995)) 1) (.neg (.lit 765450))) 1) (.neg (.lit 39628440)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 90)) 1) (.lit 17415)) 1) (.neg (.lit 1476225))) 1) (.lit 33067440)) 1) (.lit 217418418))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 6480)) 1) (.neg (.lit 251505))) 1) (.lit 32378535)) 1) (.neg (.lit 494240130))) 1) (.neg (.lit 754646220)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1215)) 1) (.lit 185895)) 1) (.lit 1837080)) 1) (.neg (.lit 334807830))) 1) (.lit 3314597517)) 1) (.lit 18964472085))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 10935) 1) (.neg (.lit 1148175))) 1) (.neg (.lit 5786802))) 1) (.lit 1291401630)) 1) (.neg (.lit 8394110595))) 1) (.neg (.lit 125653378599))))
theorem denQy_01_18_interpret (X Y : R) : value X Y denQy_01_18_expr=denQy_01_18 X Y := by
  simp only [denQy_01_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_18]
#print axioms denQy_01_18_interpret
def denQy_01_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 21) 1) (.add (.mulY (.lit 63) 1) (.neg (.lit 12825)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 39)) 1) (.lit 1350)) 1) (.lit 637146))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 45)) 1) (.lit 7695)) 1) (.neg (.lit 305208))) 1) (.neg (.lit 10602576)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 5130) 1) (.neg (.lit 458055))) 1) (.lit 10624446)) 1) (.lit 79165026))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 270) 1) (.neg (.lit 151875))) 1) (.lit 11514555)) 1) (.neg (.lit 155062674))) 1) (.neg (.lit 1210622598)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 7047) 1) (.lit 1745226)) 1) (.neg (.lit 130262094))) 1) (.lit 1020366720)) 1) (.lit 20335589865))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 729) 1) (.neg (.lit 115911))) 1) (.neg (.lit 7046514))) 1) (.lit 543132702)) 1) (.neg (.lit 2463229035))) 1) (.neg (.lit 107171986383))))
theorem denQy_01_19_interpret (X Y : R) : value X Y denQy_01_19_expr=denQy_01_19 X Y := by
  simp only [denQy_01_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_19]
#print axioms denQy_01_19_interpret
def denQy_01_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 9)) 1) (.neg (.lit 2340)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.lit 900)) 1) (.lit 91125))) 1) (.add (.mulY (.add (.mulY (.lit 630) 1) (.neg (.lit 56700))) 1) (.neg (.lit 1508301)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 270) 1) (.neg (.lit 63585))) 1) (.lit 1700028)) 1) (.lit 28231983))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 19845)) 1) (.lit 2211057)) 1) (.neg (.lit 22891329))) 1) (.neg (.lit 899198172)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 405)) 1) (.lit 373248)) 1) (.neg (.lit 31158189))) 1) (.lit 122585724)) 1) (.lit 13535802270))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 2916)) 1) (.neg (.lit 2079837))) 1) (.lit 153055008)) 1) (.neg (.lit 143489070))) 1) (.neg (.lit 66555013635))))
theorem denQy_01_20_interpret (X Y : R) : value X Y denQy_01_20_expr=denQy_01_20 X Y := by
  simp only [denQy_01_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_20]
#print axioms denQy_01_20_interpret
def denQy_01_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 81)) 1) (.add (.mulY (.lit 69) 1) (.lit 1755))) 1) (.add (.mulY (.add (.mulY (.lit 15) 1) (.neg (.lit 3645))) 1) (.neg (.lit 54432)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 4050)) 1) (.lit 44955)) 1) (.lit 10316079))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 810)) 1) (.lit 237168)) 1) (.lit 1226907)) 1) (.neg (.lit 425448045)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 35235) 1) (.neg (.lit 4677993))) 1) (.neg (.lit 34012224))) 1) (.lit 6291198558))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 243) 1) (.neg (.lit 312741))) 1) (.lit 29229255)) 1) (.lit 211513518)) 1) (.neg (.lit 31041468810))))
theorem denQy_01_21_interpret (X Y : R) : value X Y denQy_01_21_expr=denQy_01_21 X Y := by
  simp only [denQy_01_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_21]
#print axioms denQy_01_21_interpret
def denQy_01_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 3)) 1) (.neg (.lit 1035)))) 1) (.add (.mulY (.lit 315) 1) (.lit 4455))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 90)) 1) (.neg (.lit 31185))) 1) (.lit 3234573))) 1) (.add (.mulY (.add (.mulY (.lit 12960) 1) (.lit 1216701)) 1) (.neg (.lit 139191615)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1215) 1) (.neg (.lit 423549))) 1) (.neg (.lit 19236852))) 1) (.lit 2131432704))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24057)) 1) (.lit 3706965)) 1) (.lit 104871024)) 1) (.neg (.lit 11048658390))))
theorem denQy_01_22_interpret (X Y : R) : value X Y denQy_01_22_expr=denQy_01_22 X Y := by
  simp only [denQy_01_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_22]
#print axioms denQy_01_22_interpret
def denQy_01_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 63)) 1) (.add (.mulY (.lit 45) 1) (.neg (.lit 3105)))) 1) (.add (.mulY (.neg (.lit 5130)) 1) (.lit 735561))) 1) (.add (.mulY (.add (.mulY (.lit 270) 1) (.lit 234495)) 1) (.neg (.lit 32181705)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 20655)) 1) (.neg (.lit 4325886))) 1) (.lit 533606130))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 729)) 1) (.lit 295245)) 1) (.lit 26965710)) 1) (.neg (.lit 3016459116))))
theorem denQy_01_23_interpret (X Y : R) : value X Y denQy_01_23_expr=denQy_01_23 X Y := by
  simp only [denQy_01_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_23]
#print axioms denQy_01_23_interpret
def denQy_01_24_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4) 1) (.neg (.lit 855))) 1) (.add (.mulY (.neg (.lit 270)) 1) (.lit 109350))) 1) (.add (.mulY (.lit 21465) 1) (.neg (.lit 5199228)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 405)) 1) (.neg (.lit 551124))) 1) (.lit 98185365))) 1) (.add (.mulY (.add (.mulY (.lit 13122) 1) (.lit 4363065)) 1) (.neg (.lit 628753752))))
theorem denQy_01_24_interpret (X Y : R) : value X Y denQy_01_24_expr=denQy_01_24 X Y := by
  simp only [denQy_01_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_24]
#print axioms denQy_01_24_interpret
def denQy_01_25_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 60)) 1) (.lit 9450)) 1) (.add (.mulY (.lit 810) 1) (.neg (.lit 561087)))) 1) (.add (.mulY (.neg (.lit 39123)) 1) (.lit 12957975))) 1) (.add (.mulY (.add (.mulY (.lit 243) 1) (.lit 448335)) 1) (.neg (.lit 98513415))))
theorem denQy_01_25_interpret (X Y : R) : value X Y denQy_01_25_expr=denQy_01_25 X Y := by
  simp only [denQy_01_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_25]
#print axioms denQy_01_25_interpret
def denQy_01_26_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 360) 1) (.neg (.lit 36450))) 1) (.add (.mulY (.neg (.lit 1215)) 1) (.lit 1164213))) 1) (.add (.mulY (.lit 26973) 1) (.neg (.lit 11252115))))
theorem denQy_01_26_interpret (X Y : R) : value X Y denQy_01_26_expr=denQy_01_26 X Y := by
  simp only [denQy_01_26_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_26]
#print axioms denQy_01_26_interpret
def denQy_01_27_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 1080)) 1) (.lit 63909)) 1) (.add (.mulY (.lit 729) 1) (.neg (.lit 885735))))
theorem denQy_01_27_interpret (X Y : R) : value X Y denQy_01_27_expr=denQy_01_27 X Y := by
  simp only [denQy_01_27_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_27]
#print axioms denQy_01_27_interpret
def denQy_01_28_expr : HExpr := (.add (.mulX (.lit 1620) 1) (.neg (.lit 43011)))
theorem denQy_01_28_interpret (X Y : R) : value X Y denQy_01_28_expr=denQy_01_28 X Y := by
  simp only [denQy_01_28_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_28]
#print axioms denQy_01_28_interpret
def denQy_01_29_expr : HExpr := (.neg (.lit 972))
theorem denQy_01_29_interpret (X Y : R) : value X Y denQy_01_29_expr=denQy_01_29 X Y := by
  simp only [denQy_01_29_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_29]
#print axioms denQy_01_29_interpret
def denQy_02_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.neg (.lit 3)) 1) (.neg (.lit 243)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 2)) 1) (.lit 144)) 1) (.lit 3726))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 2) 1) (.lit 54)) 1) (.neg (.lit 2673))) 1) (.neg (.lit 25515)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1) 1) (.neg (.lit 108))) 1) (.lit 81)) 1) (.lit 21870)) 1) (.lit 65610))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 45)) 1) (.lit 2430)) 1) (.neg (.lit 18225))) 1) (.neg (.lit 32805))) 1) (.neg (.lit 59049)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 810) 1) (.neg (.lit 29160))) 1) (.lit 262440)) 1) (.neg (.lit 708588))) 1) (.lit 1062882))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 7290)) 1) (.lit 196830)) 1) (.neg (.lit 1653372))) 1) (.lit 4782969)) 1) (.neg (.lit 4782969)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 32805) 1) (.neg (.lit 708588))) 1) (.lit 4782969)) 1) (.neg (.lit 9565938))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 59049)) 1) (.lit 1062882)) 1) (.neg (.lit 4782969))) 2))
theorem denQy_02_12_interpret (X Y : R) : value X Y denQy_02_12_expr=denQy_02_12 X Y := by
  simp only [denQy_02_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_12]
#print axioms denQy_02_12_interpret
def denQy_02_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 45)) 1) (.add (.mulY (.lit 30) 1) (.lit 1350))) 1) (.add (.mulY (.add (.mulY (.lit 15) 1) (.neg (.lit 1080))) 1) (.neg (.lit 17010)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 30)) 2) (.lit 13365)) 1) (.lit 164025))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 15)) 1) (.lit 1350)) 1) (.neg (.lit 12150))) 1) (.neg (.lit 54675))) 1) (.neg (.lit 1476225)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 540) 1) (.neg (.lit 24300))) 1) (.lit 218700)) 2) (.lit 7085880))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 7290)) 1) (.lit 218700)) 1) (.neg (.lit 1476225))) 1) (.neg (.lit 1771470))) 1)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 43740) 1) (.neg (.lit 984150))) 1) (.lit 3542940)) 1) (.lit 23914845)) 1) (.neg (.lit 71744535)))) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 98415)) 1) (.lit 1771470)) 2) (.neg (.lit 71744535))) 1))
theorem denQy_02_13_interpret (X Y : R) : value X Y denQy_02_13_expr=denQy_02_13 X Y := by
  simp only [denQy_02_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_13]
#print axioms denQy_02_13_interpret
def denQy_02_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 6)) 1) (.neg (.lit 180)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.lit 117)) 1) (.neg (.lit 5832)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 2) 1) (.neg (.lit 45))) 1) (.lit 1053)) 1) (.lit 218700))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 90) 1) (.lit 810)) 1) (.neg (.lit 72900))) 1) (.neg (.lit 2690010)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 90) 1) (.neg (.lit 4860))) 1) (.neg (.lit 14580))) 1) (.lit 1443420)) 1) (.lit 12282192))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 2430)) 1) (.lit 72900)) 1) (.lit 426465)) 1) (.neg (.lit 15293691))) 1)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 21870) 1) (.neg (.lit 459270))) 1) (.neg (.lit 4664871))) 1) (.lit 83436237)) 1) (.neg (.lit 38263752)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 65610)) 1) (.lit 1062882)) 1) (.lit 15943230)) 1) (.neg (.lit 181752822))) 1) (.neg (.lit 430467210))))
theorem denQy_02_14_interpret (X Y : R) : value X Y denQy_02_14_expr=denQy_02_14 X Y := by
  simp only [denQy_02_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_14]
#print axioms denQy_02_14_interpret
def denQy_02_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 18)) 1) (.add (.mulY (.lit 42) 1) (.neg (.lit 3618)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 18)) 1) (.lit 162)) 1) (.lit 147015))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 30)) 1) (.lit 2160)) 1) (.neg (.lit 57105))) 1) (.neg (.lit 2001105)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 540) 1) (.neg (.lit 68040))) 1) (.lit 1421550)) 1) (.lit 10825650))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 270)) 2) (.lit 1027890)) 1) (.neg (.lit 15943230))) 1) (.neg (.lit 30823578)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 4860) 1) (.neg (.lit 43740))) 1) (.neg (.lit 7676370))) 1) (.lit 87864912)) 1) (.lit 285383817))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 21870)) 1) (.lit 196830)) 1) (.lit 22320522)) 1) (.neg (.lit 192913083))) 1) (.neg (.lit 1506635235))))
theorem denQy_02_15_interpret (X Y : R) : value X Y denQy_02_15_expr=denQy_02_15 X Y := by
  simp only [denQy_02_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_15]
#print axioms denQy_02_15_interpret
def denQy_02_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 18) 1) (.add (.mulY (.neg (.lit 6)) 1) (.neg (.lit 1305)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 2)) 1) (.lit 360)) 1) (.lit 46656))) 1) (.add (.mulY (.add (.mulY (.lit 495) 1) (.neg (.lit 21465))) 1) (.neg (.lit 736290)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 180) 1) (.neg (.lit 25920))) 1) (.lit 575910)) 1) (.lit 6429780))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 4050)) 1) (.lit 517590)) 1) (.neg (.lit 7315515))) 1) (.neg (.lit 63064332)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 405) 1) (.lit 29160)) 1) (.neg (.lit 4559895))) 1) (.lit 44641044)) 1) (.lit 611157150))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 3645)) 1) (.neg (.lit 65610))) 1) (.lit 14880348)) 1) (.neg (.lit 106288200))) 1) (.neg (.lit 2396267469))))
theorem denQy_02_16_interpret (X Y : R) : value X Y denQy_02_16_expr=denQy_02_16 X Y := by
  simp only [denQy_02_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_16]
#print axioms denQy_02_16_interpret
def denQy_02_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 108)) 1) (.add (.mulY (.lit 57) 1) (.lit 5103))) 1) (.add (.mulY (.add (.mulY (.lit 30) 1) (.neg (.lit 3105))) 1) (.neg (.lit 133893)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 3780)) 1) (.lit 94284)) 1) (.lit 3153654))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 540)) 1) (.lit 120771)) 1) (.neg (.lit 1434672))) 1) (.neg (.lit 60348078)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 9234) 1) (.neg (.lit 1434672))) 1) (.lit 10195794)) 1) (.lit 610448562))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 243)) 1) (.neg (.lit 39366))) 1) (.lit 5786802)) 1) (.neg (.lit 27280638))) 1) (.neg (.lit 2286259182))))
theorem denQy_02_17_interpret (X Y : R) : value X Y denQy_02_17_expr=denQy_02_17 X Y := by
  simp only [denQy_02_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_17]
#print axioms denQy_02_17_interpret
def denQy_02_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 3)) 1) (.neg (.lit 396)))) 1) (.add (.mulY (.lit 90) 1) (.neg (.lit 13770)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 180)) 1) (.neg (.lit 3240))) 1) (.lit 1326780))) 1) (.add (.mulY (.add (.mulY (.lit 13365) 1) (.lit 54675)) 1) (.neg (.lit 34445250)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 810) 1) (.neg (.lit 251505))) 1) (.neg (.lit 459270))) 1) (.lit 373662072))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 7290)) 1) (.lit 1377810)) 1) (.lit 1653372)) 1) (.neg (.lit 1454022576))))
theorem denQy_02_18_interpret (X Y : R) : value X Y denQy_02_18_expr=denQy_02_18 X Y := by
  simp only [denQy_02_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_18]
#print axioms denQy_02_18_interpret
def denQy_02_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 63)) 1) (.add (.mulY (.lit 45) 1) (.neg (.lit 3375)))) 1) (.add (.mulY (.neg (.lit 2970)) 1) (.lit 422334))) 1) (.add (.mulY (.add (.mulY (.lit 540) 1) (.lit 79218)) 1) (.neg (.lit 12662730)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 22842)) 1) (.neg (.lit 892296))) 1) (.lit 152385786))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 486)) 1) (.lit 196830)) 1) (.lit 3582306)) 1) (.neg (.lit 647295138))))
theorem denQy_02_19_interpret (X Y : R) : value X Y denQy_02_19_expr=denQy_02_19 X Y := by
  simp only [denQy_02_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_19]
#print axioms denQy_02_19_interpret
def denQy_02_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 6) 1) (.neg (.lit 945))) 1) (.add (.mulY (.neg (.lit 270)) 1) (.lit 88290))) 1) (.add (.mulY (.lit 13770) 1) (.neg (.lit 3046491)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 810)) 1) (.neg (.lit 228906))) 1) (.lit 42541524))) 1) (.add (.mulY (.add (.mulY (.lit 15309) 1) (.lit 1207224)) 1) (.neg (.lit 205844814))))
theorem denQy_02_20_interpret (X Y : R) : value X Y denQy_02_20_expr=denQy_02_20 X Y := by
  simp only [denQy_02_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_20]
#print axioms denQy_02_20_interpret
def denQy_02_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 90)) 1) (.lit 10530)) 1) (.add (.mulY (.lit 810) 1) (.neg (.lit 466074)))) 1) (.add (.mulY (.neg (.lit 26487)) 1) (.lit 8080965))) 1) (.add (.mulY (.add (.mulY (.lit 486) 1) (.lit 207765)) 1) (.neg (.lit 46766808))))
theorem denQy_02_21_interpret (X Y : R) : value X Y denQy_02_21_expr=denQy_02_21 X Y := by
  simp only [denQy_02_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_21]
#print axioms denQy_02_21_interpret
def denQy_02_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 540) 1) (.neg (.lit 41310))) 1) (.add (.mulY (.neg (.lit 1215)) 1) (.lit 1003104))) 1) (.add (.mulY (.lit 18954) 1) (.neg (.lit 7440174))))
theorem denQy_02_22_interpret (X Y : R) : value X Y denQy_02_22_expr=denQy_02_22 X Y := by
  simp only [denQy_02_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_22]
#print axioms denQy_02_22_interpret
def denQy_02_23_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 1620)) 1) (.lit 73629)) 1) (.add (.mulY (.lit 729) 1) (.neg (.lit 789507))))
theorem denQy_02_23_interpret (X Y : R) : value X Y denQy_02_23_expr=denQy_02_23 X Y := by
  simp only [denQy_02_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_23]
#print axioms denQy_02_23_interpret
def denQy_02_24_expr : HExpr := (.add (.mulX (.lit 2430) 1) (.neg (.lit 50301)))
theorem denQy_02_24_interpret (X Y : R) : value X Y denQy_02_24_expr=denQy_02_24 X Y := by
  simp only [denQy_02_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_24]
#print axioms denQy_02_24_interpret
def denQy_02_25_expr : HExpr := (.neg (.lit 1458))
theorem denQy_02_25_interpret (X Y : R) : value X Y denQy_02_25_expr=denQy_02_25 X Y := by
  simp only [denQy_02_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_02_25]
#print axioms denQy_02_25_interpret
def denQy_03_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4) 1) (.add (.mulY (.neg (.lit 1)) 1) (.neg (.lit 171)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.lit 54)) 1) (.lit 2835))) 1) (.add (.mulY (.add (.mulY (.lit 45) 1) (.neg (.lit 1215))) 1) (.neg (.lit 21870)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 810)) 1) (.lit 14580)) 1) (.lit 65610))) 1) (.add (.mulY (.add (.mulY (.lit 7290) 1) (.neg (.lit 98415))) 1) (.lit 59049))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 32805)) 1) (.lit 354294)) 1) (.neg (.lit 531441)))) 1) (.mulY (.add (.mulY (.lit 59049) 1) (.neg (.lit 531441))) 1))
theorem denQy_03_12_interpret (X Y : R) : value X Y denQy_03_12_expr=denQy_03_12 X Y := by
  simp only [denQy_03_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_12]
#print axioms denQy_03_12_interpret
def denQy_03_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 45)) 1) (.add (.mulY (.lit 15) 1) (.lit 1485))) 1) (.add (.mulY (.add (.mulY (.lit 15) 1) (.neg (.lit 675))) 1) (.neg (.lit 18225)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 540)) 1) (.lit 12150)) 1) (.lit 109350))) 1) (.add (.mulY (.add (.mulY (.lit 7290) 1) (.neg (.lit 109350))) 1) (.neg (.lit 492075)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 43740)) 1) (.lit 492075)) 1) (.lit 2657205))) 1) (.add (.mulY (.add (.mulY (.lit 98415) 1) (.neg (.lit 885735))) 1) (.neg (.lit 7971615))))
theorem denQy_03_13_interpret (X Y : R) : value X Y denQy_03_13_expr=denQy_03_13 X Y := by
  simp only [denQy_03_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_13]
#print axioms denQy_03_13_interpret
def denQy_03_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4) 1) (.add (.mulY (.neg (.lit 1)) 1) (.lit 81))) 1) (.add (.mulY (.neg (.lit 45)) 1) (.neg (.lit 5265)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 90)) 1) (.lit 2430)) 1) (.lit 102060))) 1) (.add (.mulY (.add (.mulY (.lit 2430) 1) (.neg (.lit 36450))) 1) (.neg (.lit 1180980)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 21870)) 1) (.lit 229635)) 1) (.lit 7735419))) 1) (.add (.mulY (.add (.mulY (.lit 65610) 1) (.neg (.lit 531441))) 1) (.neg (.lit 20726199))))
theorem denQy_03_14_interpret (X Y : R) : value X Y denQy_03_14_expr=denQy_03_14 X Y := by
  simp only [denQy_03_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_14]
#print axioms denQy_03_14_interpret
def denQy_03_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 21)) 1) (.add (.mulY (.lit 15) 1) (.neg (.lit 1215)))) 1) (.add (.mulY (.neg (.lit 270)) 1) (.lit 63180))) 1) (.add (.mulY (.lit 270) 2) (.neg (.lit 1071630)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 4860)) 1) (.lit 21870)) 1) (.lit 8168445))) 1) (.add (.mulY (.add (.mulY (.lit 21870) 1) (.neg (.lit 98415))) 1) (.neg (.lit 23560551))))
theorem denQy_03_15_interpret (X Y : R) : value X Y denQy_03_15_expr=denQy_03_15 X Y := by
  simp only [denQy_03_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_15]
#print axioms denQy_03_15_interpret
def denQy_03_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4) 1) (.neg (.lit 405))) 1) (.add (.mulY (.neg (.lit 90)) 1) (.lit 23490))) 1) (.add (.mulY (.lit 2025) 1) (.neg (.lit 506655)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 405)) 1) (.neg (.lit 14580))) 1) (.lit 4625505))) 1) (.add (.mulY (.add (.mulY (.lit 3645) 1) (.lit 32805)) 1) (.neg (.lit 15293691))))
theorem denQy_03_16_interpret (X Y : R) : value X Y denQy_03_16_expr=denQy_03_16 X Y := by
  simp only [denQy_03_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_16]
#print axioms denQy_03_16_interpret
def denQy_03_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 60)) 1) (.lit 4590)) 1) (.add (.mulY (.lit 270) 1) (.neg (.lit 133407)))) 1) (.add (.mulY (.neg (.lit 4617)) 1) (.lit 1550583))) 1) (.add (.mulY (.add (.mulY (.lit 243) 1) (.lit 19683)) 1) (.neg (.lit 6200145))))
theorem denQy_03_17_interpret (X Y : R) : value X Y denQy_03_17_expr=denQy_03_17 X Y := by
  simp only [denQy_03_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_17]
#print axioms denQy_03_17_interpret
def denQy_03_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 360) 1) (.neg (.lit 18630))) 1) (.add (.mulY (.neg (.lit 405)) 1) (.lit 309825))) 1) (.add (.mulY (.lit 3645) 1) (.neg (.lit 1607445))))
theorem denQy_03_18_interpret (X Y : R) : value X Y denQy_03_18_expr=denQy_03_18 X Y := by
  simp only [denQy_03_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_18]
#print axioms denQy_03_18_interpret
def denQy_03_19_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 1080)) 1) (.lit 34263)) 1) (.add (.mulY (.lit 243) 1) (.neg (.lit 260253))))
theorem denQy_03_19_interpret (X Y : R) : value X Y denQy_03_19_expr=denQy_03_19 X Y := by
  simp only [denQy_03_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_19]
#print axioms denQy_03_19_interpret
def denQy_03_20_expr : HExpr := (.add (.mulX (.lit 1620) 1) (.neg (.lit 24057)))
theorem denQy_03_20_interpret (X Y : R) : value X Y denQy_03_20_expr=denQy_03_20 X Y := by
  simp only [denQy_03_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_20]
#print axioms denQy_03_20_interpret
def denQy_03_21_expr : HExpr := (.neg (.lit 972))
theorem denQy_03_21_interpret (X Y : R) : value X Y denQy_03_21_expr=denQy_03_21 X Y := by
  simp only [denQy_03_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_21]
#print axioms denQy_03_21_interpret
def denQy_04_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1) 1) (.neg (.lit 45))) 1) (.lit 810)) 1) (.neg (.lit 7290))) 1) (.lit 32805)) 1) (.neg (.lit 59049)))
theorem denQy_04_12_interpret (X Y : R) : value X Y denQy_04_12_expr=denQy_04_12 X Y := by
  simp only [denQy_04_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_04_12]
#print axioms denQy_04_12_interpret
def denQy_04_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 15)) 1) (.lit 540)) 1) (.neg (.lit 7290))) 1) (.lit 43740)) 1) (.neg (.lit 98415)))
theorem denQy_04_13_interpret (X Y : R) : value X Y denQy_04_13_expr=denQy_04_13 X Y := by
  simp only [denQy_04_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_04_13]
#print axioms denQy_04_13_interpret
def denQy_04_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 90) 1) (.neg (.lit 2430))) 1) (.lit 21870)) 1) (.neg (.lit 65610)))
theorem denQy_04_14_interpret (X Y : R) : value X Y denQy_04_14_expr=denQy_04_14 X Y := by
  simp only [denQy_04_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_04_14]
#print axioms denQy_04_14_interpret
def denQy_04_15_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 270)) 1) (.lit 4860)) 1) (.neg (.lit 21870)))
theorem denQy_04_15_interpret (X Y : R) : value X Y denQy_04_15_expr=denQy_04_15 X Y := by
  simp only [denQy_04_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_04_15]
#print axioms denQy_04_15_interpret
def denQy_04_16_expr : HExpr := (.add (.mulX (.lit 405) 1) (.neg (.lit 3645)))
theorem denQy_04_16_interpret (X Y : R) : value X Y denQy_04_16_expr=denQy_04_16 X Y := by
  simp only [denQy_04_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_04_16]
#print axioms denQy_04_16_interpret
def denQy_04_17_expr : HExpr := (.neg (.lit 243))
theorem denQy_04_17_interpret (X Y : R) : value X Y denQy_04_17_expr=denQy_04_17 X Y := by
  simp only [denQy_04_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_04_17]
#print axioms denQy_04_17_interpret
def numQx_00_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 3456)) 1) (.lit 248832)) 1) (.neg (.lit 7838208))) 1) (.lit 141087744)) 1) (.neg (.lit 1587237120))) 1) (.lit 11428107264)) 1) (.neg (.lit 51426482688))) 1) (.lit 132239526912)) 1) (.neg (.lit 148769467776))) 16)
theorem numQx_00_00_interpret (X Y : R) : value X Y numQx_00_00_expr=numQx_00_00 X Y := by
  simp only [numQx_00_00_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_00]
#print axioms numQx_00_00_interpret
def numQx_00_04_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 82944)) 1) (.lit 4852224)) 1) (.neg (.lit 118024128))) 1) (.lit 1552509504)) 1) (.neg (.lit 11717141184))) 1) (.lit 32401052352)) 1) (.lit 532552065984)) 1) (.neg (.lit 9873986712768))) 1) (.lit 81486180149184)) 1) (.neg (.lit 354377137212864))) 1) (.lit 712010672775936)) 1) (.neg (.lit 368204432745600))) 12)
theorem numQx_00_04_interpret (X Y : R) : value X Y numQx_00_04_expr=numQx_00_04 X Y := by
  simp only [numQx_00_04_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_04]
#print axioms numQx_00_04_interpret
def numQx_00_06_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 207360)) 1) (.lit 8626848)) 1) (.neg (.lit 105096096))) 1) (.neg (.lit 41422752))) 1) (.lit 6649747488)) 1) (.lit 36206852256)) 1) (.neg (.lit 1474907971104))) 1) (.lit 18193203492768)) 1) (.neg (.lit 165326408677152))) 1) (.lit 985582316478528)) 1) (.neg (.lit 2973895232531904))) 1) (.lit 3129894712775808)) 1) (.neg (.lit 616054366060416))) 10)
theorem numQx_00_06_interpret (X Y : R) : value X Y numQx_00_06_expr=numQx_00_06 X Y := by
  simp only [numQx_00_06_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_06]
#print axioms numQx_00_06_interpret
def numQx_00_07_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 124416) 1) (.neg (.lit 7562112))) 1) (.lit 216385344)) 1) (.neg (.lit 3361611456))) 1) (.lit 27110145312)) 1) (.neg (.lit 69451841664))) 1) (.neg (.lit 986094365472))) 1) (.lit 19471524588288)) 1) (.neg (.lit 202354190469216))) 1) (.lit 1169829628998912)) 1) (.neg (.lit 3262247653448736))) 1) (.lit 3392547208134336)) 1) (.neg (.lit 2084185858807872))) 1) (.lit 1156831381426176)) 1) (.lit 108452942008704)) 8)
theorem numQx_00_07_interpret (X Y : R) : value X Y numQx_00_07_expr=numQx_00_07 X Y := by
  simp only [numQx_00_07_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_07]
#print axioms numQx_00_07_interpret
def numQx_00_08_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 3456)) 1) (.neg (.lit 10760736))) 1) (.lit 636715296)) 1) (.neg (.lit 13746273984))) 1) (.lit 162424784736)) 1) (.neg (.lit 1623574912320))) 1) (.lit 17069170538880)) 1) (.neg (.lit 134946925206624))) 1) (.lit 638472317335776)) 1) (.neg (.lit 1887721009635744))) 1) (.lit 4544954738627616)) 1) (.neg (.lit 7733124635516064))) 1) (.lit 3538977689278080)) 1) (.lit 775460850782400)) 8)
theorem numQx_00_08_interpret (X Y : R) : value X Y numQx_00_08_expr=numQx_00_08 X Y := by
  simp only [numQx_00_08_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_08]
#print axioms numQx_00_08_interpret
def numQx_00_09_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 387072) 1) (.neg (.lit 19985280))) 1) (.lit 440879040)) 1) (.neg (.lit 3853716192))) 1) (.lit 3125096640)) 1) (.neg (.lit 48316743648))) 1) (.lit 3577224625056)) 1) (.neg (.lit 37781393578560))) 1) (.lit 248211736458048)) 1) (.neg (.lit 1643607865212480))) 1) (.lit 6834450693924576)) 1) (.neg (.lit 9477273080810592))) 1) (.lit 1254132123331968)) 1) (.lit 1518923868537312)) 1) (.neg (.lit 496071790299072))) 1) (.lit 186780066792768)) 6)
theorem numQx_00_09_interpret (X Y : R) : value X Y numQx_00_09_expr=numQx_00_09 X Y := by
  simp only [numQx_00_09_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_09]
#print axioms numQx_00_09_interpret
def numQx_00_10_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1862784) 1) (.neg (.lit 111159552))) 1) (.lit 3154625472)) 1) (.neg (.lit 40069931904))) 1) (.lit 173138052096)) 1) (.lit 739043164944)) 1) (.neg (.lit 17856005413680))) 1) (.lit 231010472674368)) 1) (.neg (.lit 1707569601624576))) 1) (.lit 5282181410723856)) 1) (.neg (.lit 3684904474893552))) 1) (.lit 5358812958432)) 1) (.neg (.lit 1270855372671072))) 1) (.neg (.lit 3747279739075776))) 1) (.lit 1068685471768896)) 6)
theorem numQx_00_10_interpret (X Y : R) : value X Y numQx_00_10_expr=numQx_00_10 X Y := by
  simp only [numQx_00_10_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_10]
#print axioms numQx_00_10_interpret
def numQx_00_11_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 919296) 1) (.neg (.lit 33637632))) 1) (.lit 452879520)) 1) (.lit 2777796288)) 1) (.neg (.lit 113186859840))) 1) (.lit 1091753720352)) 1) (.neg (.lit 13466651837760))) 1) (.lit 167435691911712)) 1) (.neg (.lit 957145813368336))) 1) (.lit 1965125201804064)) 1) (.neg (.lit 1674105122377152))) 1) (.lit 4671847118774016)) 1) (.lit 3567520688137488)) 1) (.neg (.lit 16296641411130720))) 1) (.lit 4593592048886496)) 1) (.neg (.lit 489377164249152))) 1) (.neg (.lit 319333662581184))) 4)
theorem numQx_00_11_interpret (X Y : R) : value X Y numQx_00_11_expr=numQx_00_11 X Y := by
  simp only [numQx_00_11_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_11]
#print axioms numQx_00_11_interpret
def numQx_00_12_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 7451136) 1) (.neg (.lit 301705824))) 1) (.lit 6002844192)) 1) (.neg (.lit 40193219520))) 1) (.lit 8295654240)) 1) (.neg (.lit 3151647597168))) 1) (.lit 57036479268240)) 1) (.neg (.lit 300839573972880))) 1) (.lit 1125070082351424)) 1) (.neg (.lit 4957643978017776))) 1) (.lit 2815916354225280)) 1) (.lit 23145938321788512)) 1) (.neg (.lit 30807315233658576))) 1) (.lit 12142499906356272)) 1) (.neg (.lit 3155177257327296))) 1) (.neg (.lit 1909976812042176))) 4)
theorem numQx_00_12_interpret (X Y : R) : value X Y numQx_00_12_expr=numQx_00_12 X Y := by
  simp only [numQx_00_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_12]
#print axioms numQx_00_12_interpret
def numQx_00_13_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1741824) 1) (.neg (.lit 26927808))) 1) (.neg (.lit 300633408))) 1) (.lit 23188532256)) 1) (.neg (.lit 245291162976))) 1) (.neg (.lit 267496756128))) 1) (.lit 12898662691680)) 1) (.neg (.lit 138136249260864))) 1) (.lit 1454571141781536)) 1) (.neg (.lit 5189588456211360))) 1) (.neg (.lit 5871402567071568))) 1) (.lit 33936514940649168)) 1) (.neg (.lit 35523928000215216))) 1) (.lit 32085630430892064)) 1) (.neg (.lit 13016460608504640))) 1) (.neg (.lit 4912907115284208))) 1) (.lit 600507956677824)) 1) (.lit 343434316360896)) 2)
theorem numQx_00_13_interpret (X Y : R) : value X Y numQx_00_13_expr=numQx_00_13 X Y := by
  simp only [numQx_00_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_13]
#print axioms numQx_00_13_interpret
def numQx_00_14_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 18313344) 1) (.neg (.lit 494008800))) 1) (.lit 7539607584)) 1) (.lit 591283440)) 1) (.neg (.lit 631258803504))) 1) (.lit 4201941514608)) 1) (.neg (.lit 98656296536736))) 1) (.lit 1047307654431504)) 1) (.neg (.lit 2292387101027568))) 1) (.neg (.lit 6923303803064304))) 1) (.lit 23213247932042352)) 1) (.neg (.lit 42285092317001424))) 1) (.lit 66534844505210784)) 1) (.neg (.lit 27738482581599408))) 1) (.neg (.lit 8093858682903696))) 1) (.lit 4105144693810944)) 1) (.lit 1265284323434880)) 2)
theorem numQx_00_14_interpret (X Y : R) : value X Y numQx_00_14_expr=numQx_00_14 X Y := by
  simp only [numQx_00_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_14]
#print axioms numQx_00_14_interpret
def numQx_00_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2709504) 1) (.lit 24377856)) 1) (.neg (.lit 1433390112))) 1) (.lit 40516317408)) 1) (.neg (.lit 184925371680))) 1) (.neg (.lit 8826561792))) 1) (.neg (.lit 43025242210560))) 1) (.lit 385286276544480)) 1) (.neg (.lit 670460623301376))) 1) (.neg (.lit 137813061559968))) 1) (.lit 10275214531180464)) 1) (.neg (.lit 56540814785462448))) 1) (.lit 87432603909553872)) 1) (.neg (.lit 35726230752864336))) 1) (.neg (.lit 6697378285073856))) 1) (.lit 13126209084628560)) 1) (.lit 1263778032573648)) 1) (.neg (.lit 343434316360896))) 1) (.neg (.lit 813397065065280)))
theorem numQx_00_15_interpret (X Y : R) : value X Y numQx_00_15_expr=numQx_00_15 X Y := by
  simp only [numQx_00_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_15]
#print axioms numQx_00_15_interpret
def numQx_00_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 33035904) 1) (.neg (.lit 440238912))) 1) (.lit 4770048672)) 1) (.lit 112631028336)) 1) (.neg (.lit 708440251248))) 1) (.neg (.lit 11945258973072))) 1) (.lit 75833262832320)) 1) (.neg (.lit 595185401772720))) 1) (.lit 3996124583235408)) 1) (.lit 7112117459470320)) 1) (.neg (.lit 56672324446893984))) 1) (.lit 72295235719446960)) 1) (.neg (.lit 37767071203824096))) 1) (.lit 1653818517200592)) 1) (.lit 29919771511770240)) 1) (.neg (.lit 3486226515495840))) 1) (.neg (.lit 1494240534342144))) 1) (.neg (.lit 4880382390391680)))
theorem numQx_00_16_interpret (X Y : R) : value X Y numQx_00_16_expr=numQx_00_16 X Y := by
  simp only [numQx_00_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_16]
#print axioms numQx_00_16_interpret
def numQx_00_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 3511296) 1) (.lit 127413312)) 1) (.neg (.lit 2092329216))) 1) (.lit 57250117536)) 1) (.lit 46322940960)) 1) (.neg (.lit 3069552901536))) 1) (.lit 10199075889312)) 1) (.neg (.lit 556603384003776))) 1) (.lit 3024038465034624)) 1) (.lit 5995001095215552)) 1) (.neg (.lit 34572191683384512))) 1) (.lit 42062307972764256)) 1) (.neg (.lit 41575948236979488))) 1) (.lit 2831695268336784)) 1) (.lit 55790645586004512)) 1) (.neg (.lit 16635029963042880))) 1) (.neg (.lit 2502953314413840))) 1) (.neg (.lit 13457202554246688)))
theorem numQx_00_17_interpret (X Y : R) : value X Y numQx_00_17_expr=numQx_00_17 X Y := by
  simp only [numQx_00_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_17]
#print axioms numQx_00_17_interpret
def numQx_00_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 46825344) 1) (.neg (.lit 25630176))) 1) (.lit 3909806592)) 1) (.lit 193822330608)) 1) (.neg (.lit 169535627712))) 1) (.lit 1966199130576)) 1) (.neg (.lit 288940989716496))) 1) (.lit 1017520425378144)) 1) (.lit 2068433056986480)) 1) (.neg (.lit 10426054270438368))) 1) (.lit 25016130029222928)) 1) (.neg (.lit 38438296670889072))) 1) (.neg (.lit 19916981306001504))) 1) (.lit 84502504066593600)) 1) (.neg (.lit 38373336171572832))) 1) (.neg (.lit 211550183177472))) 1) (.neg (.lit 22732941677713344)))
theorem numQx_00_18_interpret (X Y : R) : value X Y numQx_00_18_expr=numQx_00_18 X Y := by
  simp only [numQx_00_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_18]
#print axioms numQx_00_18_interpret
def numQx_00_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 3825792) 1) (.lit 244876800)) 1) (.neg (.lit 751096320))) 1) (.lit 60075095904)) 1) (.lit 583728147792)) 1) (.lit 1221101445600)) 1) (.neg (.lit 86273621553600))) 1) (.lit 150241997493792)) 1) (.neg (.lit 1216314792992736))) 1) (.lit 185822849225376)) 1) (.lit 19650285889060608)) 1) (.neg (.lit 18594202217436720))) 1) (.neg (.lit 55171325561765904))) 1) (.lit 102787837868160864)) 1) (.neg (.lit 65678973986677968))) 1) (.lit 8715231557437104)) 1) (.neg (.lit 26599590318495888)))
theorem numQx_00_19_interpret (X Y : R) : value X Y numQx_00_19_expr=numQx_00_19 X Y := by
  simp only [numQx_00_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_19]
#print axioms numQx_00_19_interpret
def numQx_00_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 53426304) 1) (.lit 650361888)) 1) (.lit 6383151360)) 1) (.lit 329712558336)) 1) (.lit 1498353562944)) 1) (.neg (.lit 11689445883312))) 1) (.lit 24078724441488)) 1) (.neg (.lit 1737312394512096))) 1) (.lit 893657381221008)) 1) (.lit 13253510619232560)) 1) (.lit 5874363396360864)) 1) (.neg (.lit 73396023254703792))) 1) (.lit 104797711081989504)) 1) (.neg (.lit 93273724599979680))) 1) (.lit 23461149626293392)) 1) (.neg (.lit 23153196827997072)))
theorem numQx_00_20_interpret (X Y : R) : value X Y numQx_00_20_expr=numQx_00_20 X Y := by
  simp only [numQx_00_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_20]
#print axioms numQx_00_20_interpret
def numQx_00_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 3511296) 1) (.lit 320721408)) 1) (.lit 1770350400)) 1) (.lit 84910110912)) 1) (.lit 1026243298656)) 1) (.lit 3512983361184)) 1) (.lit 32950449323568)) 1) (.neg (.lit 916842470085360))) 1) (.neg (.lit 93561374208816))) 1) (.lit 4873971592256976)) 1) (.lit 17006865472798272)) 1) (.neg (.lit 64362163448211264))) 1) (.lit 96934945640542272)) 1) (.neg (.lit 111989577956359680))) 1) (.lit 36731671293392496)) 1) (.neg (.lit 15197972692877136)))
theorem numQx_00_21_interpret (X Y : R) : value X Y numQx_00_21_expr=numQx_00_21 X Y := by
  simp only [numQx_00_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_21]
#print axioms numQx_00_21_interpret
def numQx_00_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 49735296) 1) (.lit 1161860256)) 1) (.lit 15493919616)) 1) (.lit 390873309552)) 1) (.lit 3467802465648)) 1) (.lit 25104163376736)) 1) (.neg (.lit 252746648072496))) 1) (.neg (.lit 137408855842080))) 1) (.neg (.lit 344039576904000))) 1) (.lit 13531910300021520)) 1) (.neg (.lit 42886318232046960))) 1) (.lit 85402525776573312)) 1) (.neg (.lit 111532640112308592))) 1) (.lit 39545329641256512)) 1) (.neg (.lit 5937073323821136)))
theorem numQx_00_22_interpret (X Y : R) : value X Y numQx_00_22_expr=numQx_00_22 X Y := by
  simp only [numQx_00_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_22]
#print axioms numQx_00_22_interpret
def numQx_00_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2709504) 1) (.lit 312786432)) 1) (.lit 4170366432)) 1) (.lit 95641322976)) 1) (.lit 1552651238592)) 1) (.lit 12316369105152)) 1) (.neg (.lit 15023627141328))) 1) (.lit 108561592447344)) 1) (.neg (.lit 1435534626248208))) 1) (.lit 5889601882057104)) 1) (.neg (.lit 24901394442730560))) 1) (.lit 69619926786389856)) 1) (.neg (.lit 89957732675329296))) 1) (.lit 29803842904005792)) 1) (.lit 2601271336430304))
theorem numQx_00_23_interpret (X Y : R) : value X Y numQx_00_23_expr=numQx_00_23 X Y := by
  simp only [numQx_00_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_23]
#print axioms numQx_00_23_interpret
def numQx_00_24_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 37666944) 1) (.lit 1257337920)) 1) (.lit 19438600608)) 1) (.lit 461769172560)) 1) (.lit 4688163533088)) 1) (.lit 20157407033904)) 1) (.lit 157937502986496)) 1) (.neg (.lit 806888089646784))) 1) (.lit 1222297225058736)) 1) (.neg (.lit 14215850438056560))) 1) (.lit 49214448266226768)) 1) (.neg (.lit 57555358221573072))) 1) (.lit 14303965304945952)) 1) (.lit 8514291530051712))
theorem numQx_00_24_interpret (X Y : R) : value X Y numQx_00_24_expr=numQx_00_24 X Y := by
  simp only [numQx_00_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_24]
#print axioms numQx_00_24_interpret
def numQx_00_25_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1741824) 1) (.lit 235455936)) 1) (.lit 4355745408)) 1) (.lit 99991939104)) 1) (.lit 1426066954848)) 1) (.lit 11512391252256)) 1) (.lit 91209590864352)) 1) (.neg (.lit 227236257936288))) 1) (.neg (.lit 142639825194144))) 1) (.neg (.lit 8039352115670976))) 1) (.lit 28733178971399904)) 1) (.neg (.lit 28468248298541712))) 1) (.lit 1843025194617696)) 1) (.lit 10440608188637952))
theorem numQx_00_25_interpret (X Y : R) : value X Y numQx_00_25_expr=numQx_00_25 X Y := by
  simp only [numQx_00_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_25]
#print axioms numQx_00_25_interpret
def numQx_00_26_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 23030784) 1) (.lit 921913248)) 1) (.lit 17936984448)) 1) (.lit 338032292688)) 1) (.lit 3940811811792)) 1) (.lit 33969547717632)) 1) (.neg (.lit 18982533679920))) 1) (.neg (.lit 176060270500992))) 1) (.neg (.lit 4113910426601808))) 1) (.lit 13489640963358048)) 1) (.neg (.lit 10302288044184144))) 1) (.neg (.lit 3784686485067648))) 1) (.lit 8868940492958784))
theorem numQx_00_26_interpret (X Y : R) : value X Y numQx_00_26_expr=numQx_00_26 X Y := by
  simp only [numQx_00_26_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_26]
#print axioms numQx_00_26_interpret
def numQx_00_27_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 919296) 1) (.lit 134276352)) 1) (.lit 3078273024)) 1) (.lit 62130692160)) 1) (.lit 1006365650256)) 1) (.lit 9317406812256)) 1) (.lit 11874498092064)) 1) (.neg (.lit 46195307550576))) 1) (.neg (.lit 1757879444476224))) 1) (.lit 4999326924204000)) 1) (.neg (.lit 2257080226355376))) 1) (.neg (.lit 4201465050366048))) 1) (.lit 5774685404070816))
theorem numQx_00_27_interpret (X Y : R) : value X Y numQx_00_27_expr=numQx_00_27 X Y := by
  simp only [numQx_00_27_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_27]
#print axioms numQx_00_27_interpret
def numQx_00_28_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 11055744) 1) (.lit 484450464)) 1) (.lit 9342799872)) 1) (.lit 198072358848)) 1) (.lit 2007602293536)) 1) (.lit 6208317107712)) 1) (.lit 733943145312)) 1) (.neg (.lit 602797039465392))) 1) (.lit 1425423005154288)) 1) (.lit 77274089007984)) 1) (.neg (.lit 2663533739550240))) 1) (.lit 2991353758129440))
theorem numQx_00_28_interpret (X Y : R) : value X Y numQx_00_28_expr=numQx_00_28 X Y := by
  simp only [numQx_00_28_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_28]
#print axioms numQx_00_28_interpret
def numQx_00_29_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 387072) 1) (.lit 56762880)) 1) (.lit 1270542720)) 1) (.lit 29888030880)) 1) (.lit 348595160256)) 1) (.lit 1716550582320)) 1) (.lit 4341536262720)) 1) (.neg (.lit 162811668492432))) 1) (.lit 294868092653280)) 1) (.lit 322987912728048)) 1) (.neg (.lit 1230910158353184))) 1) (.lit 1255509159238944))
theorem numQx_00_29_interpret (X Y : R) : value X Y numQx_00_29_expr=numQx_00_29 X Y := by
  simp only [numQx_00_29_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_29]
#print axioms numQx_00_29_interpret
def numQx_00_30_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4005504) 1) (.lit 158916864)) 1) (.lit 3485482848)) 1) (.lit 47739196656)) 1) (.lit 345778027776)) 1) (.lit 1570532776128)) 1) (.neg (.lit 34095451045536))) 1) (.lit 36188259668928)) 1) (.lit 164474438612688)) 1) (.neg (.lit 443168616517632))) 1) (.lit 431032238071200))
theorem numQx_00_30_interpret (X Y : R) : value X Y numQx_00_30_expr=numQx_00_30 X Y := by
  simp only [numQx_00_30_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_30]
#print axioms numQx_00_30_interpret
end
end CriticalZeroSplitReduction20261003
