import NoFourMUBs.Reuse.Archive.CriticalZeroHornerBindingPilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def denQx_00_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 39)) 1) (.lit 10773)) 1) (.neg (.lit 540918))) 1) (.lit 7348320)) 1) (.neg (.lit 71449290))) 1) (.lit 5319724410)) 1) (.neg (.lit 91195275600)))
theorem denQx_00_23_interpret (X Y : R) : value X Y denQx_00_23_expr=denQx_00_23 X Y := by
  simp only [denQx_00_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_23]
#print axioms denQx_00_23_interpret
def denQx_00_24_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 10)) 1) (.lit 1206)) 1) (.neg (.lit 41310))) 1) (.lit 116640)) 1) (.neg (.lit 23094720))) 1) (.lit 2026561680)) 1) (.neg (.lit 34198228350)))
theorem denQx_00_24_interpret (X Y : R) : value X Y denQx_00_24_expr=denQx_00_24 X Y := by
  simp only [denQx_00_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_24]
#print axioms denQx_00_24_interpret
def denQx_00_25_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 18) 1) (.lit 1863)) 1) (.neg (.lit 119070))) 1) (.neg (.lit 7938810))) 1) (.lit 591080490)) 1) (.neg (.lit 10132808400)))
theorem denQx_00_25_interpret (X Y : R) : value X Y denQx_00_25_expr=denQx_00_25 X Y := by
  simp only [denQx_00_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_25]
#print axioms denQx_00_25_interpret
def denQx_00_26_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 4)) 1) (.lit 558)) 1) (.neg (.lit 12960))) 1) (.neg (.lit 2092230))) 1) (.lit 131351220)) 1) (.neg (.lit 2364321960)))
theorem denQx_00_26_interpret (X Y : R) : value X Y denQx_00_26_expr=denQx_00_26 X Y := by
  simp only [denQx_00_26_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_26]
#print axioms denQx_00_26_interpret
def denQx_00_27_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 21) 1) (.lit 945)) 1) (.neg (.lit 376650))) 1) (.lit 21891870)) 1) (.neg (.lit 429876720)))
theorem denQx_00_27_interpret (X Y : R) : value X Y denQx_00_27_expr=denQx_00_27 X Y := by
  simp only [denQx_00_27_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_27]
#print axioms denQx_00_27_interpret
def denQx_00_28_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 1)) 1) (.lit 270)) 1) (.neg (.lit 43740))) 1) (.lit 2653560)) 1) (.neg (.lit 59705100)))
theorem denQx_00_28_interpret (X Y : R) : value X Y denQx_00_28_expr=denQx_00_28 X Y := by
  simp only [denQx_00_28_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_28]
#print axioms denQx_00_28_interpret
def denQx_00_29_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 15) 1) (.neg (.lit 2970))) 1) (.lit 221130)) 1) (.neg (.lit 6123600)))
theorem denQx_00_29_interpret (X Y : R) : value X Y denQx_00_29_expr=denQx_00_29 X Y := by
  simp only [denQx_00_29_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_29]
#print axioms denQx_00_29_interpret
def denQx_00_30_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 90)) 1) (.lit 11340)) 1) (.neg (.lit 437400)))
theorem denQx_00_30_interpret (X Y : R) : value X Y denQx_00_30_expr=denQx_00_30 X Y := by
  simp only [denQx_00_30_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_30]
#print axioms denQx_00_30_interpret
def denQx_00_31_expr : HExpr := (.add (.mulX (.lit 270) 1) (.neg (.lit 19440)))
theorem denQx_00_31_interpret (X Y : R) : value X Y denQx_00_31_expr=denQx_00_31 X Y := by
  simp only [denQx_00_31_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_31]
#print axioms denQx_00_31_interpret
def denQx_00_32_expr : HExpr := (.neg (.lit 405))
theorem denQx_00_32_interpret (X Y : R) : value X Y denQx_00_32_expr=denQx_00_32 X Y := by
  simp only [denQx_00_32_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_32]
#print axioms denQx_00_32_interpret
def denQx_01_12_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 4)) 1) (.lit 152)) 1) (.neg (.lit 2160))) 1) (.lit 13608)) 1) (.neg (.lit 32076))) 6)
theorem denQx_01_12_interpret (X Y : R) : value X Y denQx_01_12_expr=denQx_01_12 X Y := by
  simp only [denQx_01_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_12]
#print axioms denQx_01_12_interpret
def denQx_01_13_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 15) 1) (.neg (.lit 405))) 1) (.lit 7290)) 1) (.neg (.lit 119070))) 1) (.lit 1060695)) 1) (.neg (.lit 3444525))) 4)
theorem denQx_01_13_interpret (X Y : R) : value X Y denQx_01_13_expr=denQx_01_13 X Y := by
  simp only [denQx_01_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_13]
#print axioms denQx_01_13_interpret
def denQx_01_14_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 240)) 1) (.lit 4644)) 1) (.neg (.lit 178200))) 1) (.lit 1772928)) 1) (.neg (.lit 6954660))) 1) (.lit 25981560)) 1) (.neg (.lit 138174660))) 2)
theorem denQx_01_14_interpret (X Y : R) : value X Y denQx_01_14_expr=denQx_01_14 X Y := by
  simp only [denQx_01_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_14]
#print axioms denQx_01_14_interpret
def denQx_01_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 27)) 1) (.lit 4113)) 1) (.neg (.lit 107973))) 1) (.lit 1068957)) 1) (.neg (.lit 7610760))) 1) (.lit 81487620)) 1) (.neg (.lit 416295450))) 1) (.lit 143489070)) 1) (.neg (.lit 2439314190)))
theorem denQx_01_15_interpret (X Y : R) : value X Y denQx_01_15_expr=denQx_01_15 X Y := by
  simp only [denQx_01_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_15]
#print axioms denQx_01_15_interpret
def denQx_01_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 1182)) 1) (.neg (.lit 22068))) 1) (.lit 263898)) 1) (.neg (.lit 6759288))) 1) (.lit 109962360)) 1) (.neg (.lit 552698640))) 1) (.lit 712130940)) 1) (.neg (.lit 10618191180)))
theorem denQx_01_16_interpret (X Y : R) : value X Y denQx_01_16_expr=denQx_01_16 X Y := by
  simp only [denQx_01_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_16]
#print axioms denQx_01_16_interpret
def denQx_01_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 9)) 1) (.lit 2544)) 1) (.lit 37314)) 1) (.neg (.lit 4729509))) 1) (.lit 83007585)) 1) (.neg (.lit 428006835))) 1) (.lit 1560665070)) 1) (.neg (.lit 21332041740)))
theorem denQx_01_17_interpret (X Y : R) : value X Y denQx_01_17_expr=denQx_01_17 X Y := by
  simp only [denQx_01_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_17]
#print axioms denQx_01_17_interpret
def denQx_01_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 28)) 1) (.lit 1208)) 1) (.lit 25740)) 1) (.neg (.lit 2228796))) 1) (.lit 37867176)) 1) (.neg (.lit 220187160))) 1) (.lit 2019475800)) 1) (.neg (.lit 26189412480)))
theorem denQx_01_18_interpret (X Y : R) : value X Y denQx_01_18_expr=denQx_01_18 X Y := by
  simp only [denQx_01_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_18]
#print axioms denQx_01_18_interpret
def denQx_01_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 21)) 1) (.lit 12801)) 1) (.neg (.lit 631827))) 1) (.lit 10349127)) 1) (.neg (.lit 85905360))) 1) (.lit 1730135700)) 1) (.neg (.lit 21921941250)))
theorem denQx_01_19_interpret (X Y : R) : value X Y denQx_01_19_expr=denQx_01_19 X Y := by
  simp only [denQx_01_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_19]
#print axioms denQx_01_19_interpret
def denQx_01_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 2334)) 1) (.neg (.lit 90540))) 1) (.lit 1492830)) 1) (.neg (.lit 30413880))) 1) (.lit 1038475080)) 1) (.neg (.lit 13211623260)))
theorem denQx_01_20_interpret (X Y : R) : value X Y denQx_01_20_expr=denQx_01_20 X Y := by
  simp only [denQx_01_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_20]
#print axioms denQx_01_20_interpret
def denQx_01_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 81) 1) (.neg (.lit 1746))) 1) (.lit 55755)) 1) (.neg (.lit 10660410))) 1) (.lit 449166060)) 1) (.neg (.lit 5897814120)))
theorem denQx_01_21_interpret (X Y : R) : value X Y denQx_01_21_expr=denQx_01_21 X Y := by
  simp only [denQx_01_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_21]
#print axioms denQx_01_21_interpret
def denQx_01_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 1032)) 1) (.neg (.lit 4140))) 1) (.neg (.lit 3257820))) 1) (.lit 141367680)) 1) (.neg (.lit 1974598560)))
theorem denQx_01_22_interpret (X Y : R) : value X Y denQx_01_22_expr=denQx_01_22 X Y := by
  simp only [denQx_01_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_22]
#print axioms denQx_01_22_interpret
def denQx_01_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 63) 1) (.lit 3117)) 1) (.neg (.lit 734670))) 1) (.lit 32185350)) 1) (.neg (.lit 495814770)))
theorem denQx_01_23_interpret (X Y : R) : value X Y denQx_01_23_expr=denQx_01_23 X Y := by
  simp only [denQx_01_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_23]
#print axioms denQx_01_23_interpret
def denQx_01_24_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 4)) 1) (.lit 854)) 1) (.neg (.lit 109080))) 1) (.lit 5175900)) 1) (.neg (.lit 92218500)))
theorem denQx_01_24_interpret (X Y : R) : value X Y denQx_01_24_expr=denQx_01_24 X Y := by
  simp only [denQx_01_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_24]
#print axioms denQx_01_24_interpret
def denQx_01_25_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 60) 1) (.neg (.lit 9435))) 1) (.lit 558630)) 1) (.neg (.lit 12349260)))
theorem denQx_01_25_interpret (X Y : R) : value X Y denQx_01_25_expr=denQx_01_25 X Y := by
  simp only [denQx_01_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_25]
#print axioms denQx_01_25_interpret
def denQx_01_26_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 360)) 1) (.lit 36360)) 1) (.neg (.lit 1127520)))
theorem denQx_01_26_interpret (X Y : R) : value X Y denQx_01_26_expr=denQx_01_26 X Y := by
  simp only [denQx_01_26_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_26]
#print axioms denQx_01_26_interpret
def denQx_01_27_expr : HExpr := (.add (.mulX (.lit 1080) 1) (.neg (.lit 62910)))
theorem denQx_01_27_interpret (X Y : R) : value X Y denQx_01_27_expr=denQx_01_27 X Y := by
  simp only [denQx_01_27_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_27]
#print axioms denQx_01_27_interpret
def denQx_01_28_expr : HExpr := (.neg (.lit 1620))
theorem denQx_01_28_interpret (X Y : R) : value X Y denQx_01_28_expr=denQx_01_28 X Y := by
  simp only [denQx_01_28_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_28]
#print axioms denQx_01_28_interpret
def denQx_02_12_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.lit 240)) 1) (.neg (.lit 3628))) 1) (.lit 24480)) 1) (.neg (.lit 62046))) 4)
theorem denQx_02_12_interpret (X Y : R) : value X Y denQx_02_12_expr=denQx_02_12 X Y := by
  simp only [denQx_02_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_12]
#print axioms denQx_02_12_interpret
def denQx_02_13_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 45) 1) (.neg (.lit 1335))) 1) (.lit 16740)) 1) (.neg (.lit 160380))) 1) (.lit 1313415)) 1) (.neg (.lit 4931685))) 2)
theorem denQx_02_13_interpret (X Y : R) : value X Y denQx_02_13_expr=denQx_02_13 X Y := by
  simp only [denQx_02_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_13]
#print axioms denQx_02_13_interpret
def denQx_02_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 174)) 1) (.lit 5920)) 1) (.neg (.lit 214974))) 1) (.lit 2516832)) 1) (.neg (.lit 10577790))) 1) (.lit 15352740)) 1) (.neg (.lit 128136330)))
theorem denQx_02_14_interpret (X Y : R) : value X Y denQx_02_14_expr=denQx_02_14 X Y := by
  simp only [denQx_02_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_14]
#print axioms denQx_02_14_interpret
def denQx_02_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 18) 1) (.lit 3612)) 1) (.neg (.lit 144543))) 1) (.lit 1912113)) 1) (.neg (.lit 10219365))) 1) (.lit 51186735)) 1) (.neg (.lit 432041850)))
theorem denQx_02_15_interpret (X Y : R) : value X Y denQx_02_15_expr=denQx_02_15 X Y := by
  simp only [denQx_02_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_15]
#print axioms denQx_02_15_interpret
def denQx_02_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 18)) 1) (.lit 1296)) 1) (.neg (.lit 45984))) 1) (.lit 714762)) 1) (.neg (.lit 6375186))) 1) (.lit 75210930)) 1) (.neg (.lit 655509510)))
theorem denQx_02_16_interpret (X Y : R) : value X Y denQx_02_16_expr=denQx_02_16 X Y := by
  simp only [denQx_02_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_16]
#print axioms denQx_02_16_interpret
def denQx_02_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 108) 1) (.neg (.lit 5064))) 1) (.lit 132519)) 1) (.neg (.lit 3174228))) 1) (.lit 64009845)) 1) (.neg (.lit 589352760)))
theorem denQx_02_17_interpret (X Y : R) : value X Y denQx_02_17_expr=denQx_02_17 X Y := by
  simp only [denQx_02_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_17]
#print axioms denQx_02_17_interpret
def denQx_02_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 390)) 1) (.lit 14056)) 1) (.neg (.lit 1328274))) 1) (.lit 34810560)) 1) (.neg (.lit 347718420)))
theorem denQx_02_18_interpret (X Y : R) : value X Y denQx_02_18_expr=denQx_02_18 X Y := by
  simp only [denQx_02_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_18]
#print axioms denQx_02_18_interpret
def denQx_02_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 63) 1) (.lit 3399)) 1) (.neg (.lit 420117))) 1) (.lit 12555405)) 1) (.neg (.lit 140672700)))
theorem denQx_02_19_interpret (X Y : R) : value X Y denQx_02_19_expr=denQx_02_19 X Y := by
  simp only [denQx_02_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_19]
#print axioms denQx_02_19_interpret
def denQx_02_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.lit 942)) 1) (.neg (.lit 87706))) 1) (.lit 3005370)) 1) (.neg (.lit 39519900)))
theorem denQx_02_20_interpret (X Y : R) : value X Y denQx_02_20_expr=denQx_02_20 X Y := by
  simp only [denQx_02_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_20]
#print axioms denQx_02_20_interpret
def denQx_02_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 90) 1) (.neg (.lit 10485))) 1) (.lit 460635)) 1) (.neg (.lit 7612920)))
theorem denQx_02_21_interpret (X Y : R) : value X Y denQx_02_21_expr=denQx_02_21 X Y := by
  simp only [denQx_02_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_21]
#print axioms denQx_02_21_interpret
def denQx_02_22_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 540)) 1) (.lit 41040)) 1) (.neg (.lit 962370)))
theorem denQx_02_22_interpret (X Y : R) : value X Y denQx_02_22_expr=denQx_02_22 X Y := by
  simp only [denQx_02_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_22]
#print axioms denQx_02_22_interpret
def denQx_02_23_expr : HExpr := (.add (.mulX (.lit 1620) 1) (.neg (.lit 72090)))
theorem denQx_02_23_interpret (X Y : R) : value X Y denQx_02_23_expr=denQx_02_23 X Y := by
  simp only [denQx_02_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_23]
#print axioms denQx_02_23_interpret
def denQx_02_24_expr : HExpr := (.neg (.lit 2430))
theorem denQx_02_24_interpret (X Y : R) : value X Y denQx_02_24_expr=denQx_02_24 X Y := by
  simp only [denQx_02_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_02_24]
#print axioms denQx_02_24_interpret
def denQx_03_12_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 4)) 1) (.lit 168)) 1) (.neg (.lit 2720))) 1) (.lit 20312)) 1) (.neg (.lit 58716))) 2)
theorem denQx_03_12_interpret (X Y : R) : value X Y denQx_03_12_expr=denQx_03_12 X Y := by
  simp only [denQx_03_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_12]
#print axioms denQx_03_12_interpret
def denQx_03_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 45) 1) (.neg (.lit 1455))) 1) (.lit 17430)) 1) (.neg (.lit 103410))) 1) (.lit 547965)) 1) (.neg (.lit 2994975)))
theorem denQx_03_13_interpret (X Y : R) : value X Y denQx_03_13_expr=denQx_03_13 X Y := by
  simp only [denQx_03_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_13]
#print axioms denQx_03_13_interpret
def denQx_03_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 4)) 1) (.neg (.lit 84))) 1) (.lit 5236)) 1) (.neg (.lit 99604))) 1) (.lit 1168416)) 1) (.neg (.lit 7157160)))
theorem denQx_03_14_interpret (X Y : R) : value X Y denQx_03_14_expr=denQx_03_14 X Y := by
  simp only [denQx_03_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_14]
#print axioms denQx_03_14_interpret
def denQx_03_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 21) 1) (.lit 1227)) 1) (.neg (.lit 62097))) 1) (.lit 1036389)) 1) (.neg (.lit 7330500)))
theorem denQx_03_15_interpret (X Y : R) : value X Y denQx_03_15_expr=denQx_03_15 X Y := by
  simp only [denQx_03_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_15]
#print axioms denQx_03_15_interpret
def denQx_03_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 4)) 1) (.lit 402)) 1) (.neg (.lit 23132))) 1) (.lit 489554)) 1) (.neg (.lit 4171320)))
theorem denQx_03_16_interpret (X Y : R) : value X Y denQx_03_16_expr=denQx_03_16 X Y := by
  simp only [denQx_03_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_16]
#print axioms denQx_03_16_interpret
def denQx_03_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 60) 1) (.neg (.lit 4545))) 1) (.lit 129900)) 1) (.neg (.lit 1424235)))
theorem denQx_03_17_interpret (X Y : R) : value X Y denQx_03_17_expr=denQx_03_17 X Y := by
  simp only [denQx_03_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_17]
#print axioms denQx_03_17_interpret
def denQx_03_18_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 360)) 1) (.lit 18360)) 1) (.neg (.lit 291780)))
theorem denQx_03_18_interpret (X Y : R) : value X Y denQx_03_18_expr=denQx_03_18 X Y := by
  simp only [denQx_03_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_18]
#print axioms denQx_03_18_interpret
def denQx_03_19_expr : HExpr := (.add (.mulX (.lit 1080) 1) (.neg (.lit 33210)))
theorem denQx_03_19_interpret (X Y : R) : value X Y denQx_03_19_expr=denQx_03_19 X Y := by
  simp only [denQx_03_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_19]
#print axioms denQx_03_19_interpret
def denQx_03_20_expr : HExpr := (.neg (.lit 1620))
theorem denQx_03_20_interpret (X Y : R) : value X Y denQx_03_20_expr=denQx_03_20 X Y := by
  simp only [denQx_03_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_03_20]
#print axioms denQx_03_20_interpret
def denQx_04_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 1)) 1) (.lit 44)) 1) (.neg (.lit 766))) 1) (.lit 6524)) 1) (.neg (.lit 26281)))
theorem denQx_04_12_interpret (X Y : R) : value X Y denQx_04_12_expr=denQx_04_12 X Y := by
  simp only [denQx_04_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_12]
#print axioms denQx_04_12_interpret
def denQx_04_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 15) 1) (.neg (.lit 525))) 1) (.lit 6765)) 1) (.neg (.lit 36975)))
theorem denQx_04_13_interpret (X Y : R) : value X Y denQx_04_13_expr=denQx_04_13 X Y := by
  simp only [denQx_04_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_13]
#print axioms denQx_04_13_interpret
def denQx_04_14_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 90)) 1) (.lit 2340)) 1) (.neg (.lit 19530)))
theorem denQx_04_14_interpret (X Y : R) : value X Y denQx_04_14_expr=denQx_04_14 X Y := by
  simp only [denQx_04_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_14]
#print axioms denQx_04_14_interpret
def denQx_04_15_expr : HExpr := (.add (.mulX (.lit 270) 1) (.neg (.lit 4590)))
theorem denQx_04_15_interpret (X Y : R) : value X Y denQx_04_15_expr=denQx_04_15 X Y := by
  simp only [denQx_04_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_15]
#print axioms denQx_04_15_interpret
def denQx_04_16_expr : HExpr := (.neg (.lit 405))
theorem denQx_04_16_interpret (X Y : R) : value X Y denQx_04_16_expr=denQx_04_16 X Y := by
  simp only [denQx_04_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_16]
#print axioms denQx_04_16_interpret
def denQy_00_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1) 1) (.add (.mulY (.neg (.lit 1)) 1) (.neg (.lit 36)))) 1) (.add (.mulY (.lit 36) 1) (.lit 486))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1) 1) (.neg (.lit 9))) 1) (.neg (.lit 486))) 1) (.neg (.lit 2916)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.neg (.lit 18))) 1) (.lit 243)) 1) (.lit 2916)) 1) (.lit 6561))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1) 1) (.neg (.lit 18))) 1) (.lit 810)) 1) (.neg (.lit 9477))) 1) (.lit 26244)) 1) (.neg (.lit 59049)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 5) 1) (.neg (.lit 234))) 1) (.lit 4698)) 1) (.neg (.lit 56862))) 1) (.lit 400221)) 1) (.neg (.lit 1417176))) 1) (.lit 2125764))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 4) 1) (.neg (.lit 369))) 1) (.lit 11259)) 1) (.neg (.lit 175689))) 1) (.lit 1600884)) 1) (.neg (.lit 8562105))) 1) (.lit 24446286)) 1) (.neg (.lit 28697814)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1) 1) (.neg (.lit 216))) 1) (.lit 11016)) 1) (.neg (.lit 250776))) 1) (.lit 3123036)) 1) (.neg (.lit 22792914))) 1) (.lit 96190821)) 1) (.neg (.lit 210450636))) 1) (.lit 172186884))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 45)) 1) (.lit 4860)) 1) (.neg (.lit 174960))) 1) (.lit 3116475)) 1) (.neg (.lit 31236921))) 1) (.lit 181752822)) 1) (.neg (.lit 588305187))) 1) (.lit 903981141)) 1) (.neg (.lit 387420489)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 810) 1) (.neg (.lit 58320))) 1) (.lit 1607445)) 1) (.neg (.lit 22792914))) 1) (.lit 181752822)) 1) (.neg (.lit 813104730))) 1) (.lit 1851009003)) 1) (.neg (.lit 1549681956))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 7290)) 1) (.lit 393660)) 1) (.neg (.lit 8562105))) 1) (.lit 96190821)) 1) (.neg (.lit 588305187))) 1) (.lit 1851009003)) 1) (.neg (.lit 2324522934))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 32805) 1) (.neg (.lit 1417176))) 1) (.lit 24446286)) 1) (.neg (.lit 210450636))) 1) (.lit 903981141)) 1) (.neg (.lit 1549681956))) 3)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 59049)) 1) (.lit 2125764)) 1) (.neg (.lit 28697814))) 1) (.lit 172186884)) 1) (.neg (.lit 387420489))) 4))
theorem denQy_00_12_interpret (X Y : R) : value X Y denQy_00_12_expr=denQy_00_12 X Y := by
  simp only [denQy_00_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_12]
#print axioms denQy_00_12_interpret
def denQy_00_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 1215)) 1) (.add (.mulY (.lit 1215) 1) (.lit 32805))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 15)) 1) (.lit 540)) 1) (.neg (.lit 7290))) 1) (.lit 10935)) 1) (.neg (.lit 393660)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 60)) 1) (.lit 2700)) 1) (.neg (.lit 49815))) 1) (.lit 448335)) 1) (.neg (.lit 1673055))) 1) (.lit 4428675))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 90)) 1) (.lit 5400)) 1) (.neg (.lit 126360))) 1) (.lit 1541835)) 1) (.neg (.lit 10038330))) 1) (.lit 31000725)) 1) (.neg (.lit 39858075)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 60)) 1) (.lit 5400)) 1) (.neg (.lit 171315))) 1) (.lit 2657205)) 1) (.neg (.lit 22537035))) 1) (.lit 101859525)) 1) (.neg (.lit 199290375))) 1) (.lit 71744535))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 15)) 1) (.lit 2700)) 1) (.neg (.lit 127575))) 1) (.lit 2679075)) 1) (.neg (.lit 29032425))) 1) (.lit 163860975)) 1) (.neg (.lit 398580750))) 1) (.neg (.lit 71744535))) 1) (.lit 1291401630))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 540) 1) (.neg (.lit 48600))) 1) (.lit 1530900)) 1) (.neg (.lit 22635450))) 1) (.lit 164746710)) 1) (.neg (.lit 470325285))) 1) (.neg (.lit 645700815))) 1) (.lit 5811307335)) 1) (.neg (.lit 5811307335)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 7290)) 1) (.lit 437400)) 1) (.neg (.lit 9841500))) 1) (.lit 100973790)) 1) (.neg (.lit 398580750))) 1) (.neg (.lit 645700815))) 1) (.lit 9039811410)) 1) (.neg (.lit 17433922005))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 43740) 1) (.neg (.lit 1968300))) 1) (.lit 31886460)) 1) (.neg (.lit 199290375))) 1) (.neg (.lit 71744535))) 1) (.lit 5811307335)) 1) (.neg (.lit 17433922005))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 98415)) 1) (.lit 3542940)) 1) (.neg (.lit 39858075))) 1) (.lit 71744535)) 1) (.lit 1291401630)) 1) (.neg (.lit 5811307335))) 3))
theorem denQy_00_13_interpret (X Y : R) : value X Y denQy_00_13_expr=denQy_00_13 X Y := by
  simp only [denQy_00_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_13]
#print axioms denQy_00_13_interpret
def denQy_00_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4) 1) (.add (.mulY (.neg (.lit 4)) 1) (.neg (.lit 72)))) 1) (.add (.mulY (.add (.mulY (.lit 1) 1) (.lit 81)) 1) (.neg (.lit 1620)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 2) 1) (.neg (.lit 63))) 1) (.lit 1377)) 1) (.lit 49572))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 3)) 1) (.lit 117)) 1) (.neg (.lit 1701))) 1) (.neg (.lit 25515))) 1) (.neg (.lit 485514)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 6) 1) (.lit 207)) 1) (.neg (.lit 12231))) 1) (.lit 159651)) 1) (.neg (.lit 505197))) 1) (.lit 3897234))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 11) 1) (.neg (.lit 99))) 1) (.neg (.lit 10773))) 1) (.lit 309825)) 1) (.neg (.lit 2735937))) 1) (.lit 6436341)) 1) (.neg (.lit 17006112)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 4) 1) (.neg (.lit 27))) 1) (.neg (.lit 8505))) 1) (.lit 206307)) 1) (.neg (.lit 1568079))) 1) (.neg (.lit 5373459))) 1) (.lit 133391691)) 1) (.neg (.lit 334807830)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 180) 1) (.neg (.lit 12960))) 1) (.lit 240570)) 1) (.lit 229635)) 1) (.neg (.lit 50604993))) 1) (.lit 577676367)) 1) (.neg (.lit 2664113733))) 1) (.lit 3960298332))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 90) 1) (.neg (.lit 9720))) 1) (.lit 291600)) 1) (.neg (.lit 1705860))) 1) (.neg (.lit 50014503))) 1) (.lit 907169787)) 1) (.neg (.lit 5830439211))) 1) (.lit 14851118745)) 1) (.neg (.lit 6198727824)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 2430)) 1) (.lit 145800)) 1) (.neg (.lit 2460375))) 1) (.neg (.lit 6554439))) 1) (.lit 582990777)) 1) (.neg (.lit 5878268901))) 1) (.lit 21351173616)) 1) (.neg (.lit 14721978582))) 1) (.neg (.lit 34867844010)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 21870) 1) (.neg (.lit 918540))) 1) (.lit 8207811)) 1) (.lit 122762871)) 1) (.neg (.lit 2616284043))) 1) (.lit 14851118745)) 1) (.neg (.lit 14721978582))) 1) (.neg (.lit 69735688020))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 65610)) 1) (.lit 2125764)) 1) (.neg (.lit 6377292))) 1) (.neg (.lit 382637520))) 1) (.lit 3960298332)) 1) (.neg (.lit 6198727824))) 1) (.neg (.lit 34867844010))) 2))
theorem denQy_00_14_interpret (X Y : R) : value X Y denQy_00_14_expr=denQy_00_14 X Y := by
  simp only [denQy_00_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_14]
#print axioms denQy_00_14_interpret
def denQy_00_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 18)) 1) (.neg (.lit 1458)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 6)) 1) (.lit 1296)) 1) (.lit 24057))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 18) 1) (.neg (.lit 270))) 1) (.neg (.lit 17739))) 1) (.neg (.lit 203391)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 66)) 2) (.lit 7533)) 1) (.lit 78732)) 1) (.lit 2854035))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 198)) 1) (.lit 8316)) 1) (.neg (.lit 114939))) 1) (.lit 1117557)) 1) (.neg (.lit 9546255))) 1) (.neg (.lit 11160261)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 186)) 1) (.lit 12852)) 1) (.neg (.lit 362313))) 1) (.lit 5384394)) 1) (.neg (.lit 49109085))) 1) (.lit 282726612)) 1) (.neg (.lit 416118303)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 60)) 1) (.lit 7290)) 1) (.neg (.lit 348705))) 1) (.lit 8299665)) 1) (.neg (.lit 106977105))) 1) (.lit 766515069)) 1) (.neg (.lit 2858621139))) 1) (.lit 3027619377))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1080) 1) (.neg (.lit 121500))) 1) (.lit 5358150)) 1) (.neg (.lit 108453330))) 1) (.lit 1070676468)) 1) (.neg (.lit 4998202605))) 1) (.lit 7576222896)) 1) (.lit 13301436789))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 270)) 2) (.lit 1202850)) 1) (.neg (.lit 49404330))) 1) (.lit 781572564)) 1) (.neg (.lit 5125748445))) 1) (.lit 7590571803)) 1) (.lit 41195711997)) 1) (.neg (.lit 98792224695)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 4860) 1) (.neg (.lit 87480))) 1) (.neg (.lit 7282710))) 1) (.lit 252611622)) 1) (.neg (.lit 2731075299))) 1) (.lit 7432733826)) 1) (.lit 42487113627)) 1) (.neg (.lit 185961834720))) 1) (.neg (.lit 104603532030)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 21870)) 1) (.lit 393660)) 1) (.lit 19840464)) 1) (.neg (.lit 543664143))) 1) (.lit 3171108447)) 1) (.lit 12010035159)) 1) (.neg (.lit 98792224695))) 1) (.neg (.lit 104603532030))) 1))
theorem denQy_00_15_interpret (X Y : R) : value X Y denQy_00_15_expr=denQy_00_15 X Y := by
  simp only [denQy_00_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_15]
#print axioms denQy_00_15_interpret
def denQy_00_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 10) 1) (.add (.mulY (.neg (.lit 9)) 1) (.neg (.lit 288)))) 1) (.mulY (.add (.mulY (.lit 2) 1) (.lit 288)) 1)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 3) 1) (.neg (.lit 81))) 1) (.lit 405)) 1) (.neg (.lit 28431)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 3)) 1) (.lit 234)) 1) (.neg (.lit 8019))) 1) (.lit 58320)) 1) (.lit 2663766))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 6) 1) (.lit 1233)) 1) (.neg (.lit 46980))) 1) (.lit 801900)) 1) (.neg (.lit 7991298))) 1) (.neg (.lit 20667150)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 5) 1) (.lit 1512)) 1) (.neg (.lit 93555))) 1) (.lit 2067444)) 1) (.neg (.lit 23973894))) 1) (.lit 168525846)) 1) (.neg (.lit 153055008)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1080) 1) (.neg (.lit 94365))) 1) (.lit 2813940)) 1) (.neg (.lit 38808315))) 1) (.lit 278002692)) 1) (.neg (.lit 965628297))) 1) (.neg (.lit 693530505)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 360) 1) (.neg (.lit 46575))) 1) (.lit 2128680)) 1) (.neg (.lit 41301495))) 1) (.lit 323116128)) 1) (.neg (.lit 460227906))) 1) (.neg (.lit 6217859700))) 1) (.lit 35470498104))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 8100)) 1) (.lit 747225)) 1) (.neg (.lit 23718015))) 1) (.lit 295717392)) 1) (.neg (.lit 593088156))) 1) (.neg (.lit 14114541519))) 1) (.lit 82434470715)) 1) (.neg (.lit 103053850074)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 405) 1) (.lit 58320)) 1) (.neg (.lit 5609655))) 1) (.lit 133096446)) 1) (.neg (.lit 822139227))) 1) (.neg (.lit 6839645670))) 1) (.lit 87600077235)) 1) (.neg (.lit 163491446358))) 1) (.neg (.lit 400980206115)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 3645)) 1) (.neg (.lit 131220))) 1) (.lit 16533720)) 1) (.neg (.lit 301858488))) 1) (.neg (.lit 23914845))) 1) (.lit 30304891584)) 1) (.neg (.lit 103053850074))) 1) (.neg (.lit 418414128120))) 1) (.neg (.lit 156905298045))))
theorem denQy_00_16_interpret (X Y : R) : value X Y denQy_00_16_expr=denQy_00_16 X Y := by
  simp only [denQy_00_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_16]
#print axioms denQy_00_16_interpret
def denQy_00_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 57) 1) (.add (.mulY (.neg (.lit 39)) 1) (.neg (.lit 2673)))) 1) (.add (.mulY (.lit 2673) 1) (.neg (.lit 24300)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 15) 1) (.neg (.lit 2295))) 1) (.lit 19926)) 1) (.lit 1963926))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 84)) 1) (.neg (.lit 2727))) 1) (.lit 163053)) 1) (.neg (.lit 3162402))) 1) (.neg (.lit 17242308)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 153)) 1) (.lit 2187)) 1) (.lit 97200)) 1) (.neg (.lit 3214890))) 1) (.lit 44700093)) 1) (.lit 46943955))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 75)) 1) (.lit 405)) 1) (.lit 47628)) 1) (.lit 616734)) 1) (.neg (.lit 23580234))) 1) (.lit 253143063)) 1) (.neg (.lit 3040373961)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 2160)) 1) (.lit 149202)) 1) (.neg (.lit 1067256))) 1) (.neg (.lit 81093960))) 1) (.lit 1510709616)) 1) (.neg (.lit 9427231899))) 1) (.lit 37723276503))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1080)) 1) (.lit 116640)) 1) (.neg (.lit 3070548))) 1) (.neg (.lit 12951414))) 1) (.lit 1457565516)) 1) (.neg (.lit 17331885333))) 1) (.lit 56807322813)) 1) (.neg (.lit 23761789992)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 18468) 1) (.neg (.lit 1452168))) 1) (.lit 23147208)) 1) (.lit 342602298)) 1) (.neg (.lit 10638917379))) 1) (.lit 66134112363)) 1) (.lit 24149210481)) 1) (.neg (.lit 668300343525)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 243)) 1) (.neg (.lit 78732))) 1) (.lit 5786802)) 1) (.neg (.lit 62001450))) 1) (.neg (.lit 1669256181))) 1) (.lit 28396486953)) 1) (.neg (.lit 22470388362))) 1) (.neg (.lit 761281260885))) 1) (.neg (.lit 784526490225))))
theorem denQy_00_17_interpret (X Y : R) : value X Y denQy_00_17_expr=denQy_00_17 X Y := by
  simp only [denQy_00_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_17]
#print axioms denQy_00_17_interpret
def denQy_00_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 16) 1) (.add (.mulY (.neg (.lit 13)) 1) (.neg (.lit 360)))) 1) (.add (.mulY (.add (.mulY (.lit 3) 1) (.lit 495)) 1) (.neg (.lit 24300)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 3) 1) (.neg (.lit 351))) 1) (.lit 15390)) 1) (.lit 822312))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 3)) 1) (.lit 405)) 1) (.lit 9720)) 1) (.neg (.lit 836892))) 1) (.neg (.lit 6193584)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1) 1) (.lit 1845)) 1) (.neg (.lit 68850))) 1) (.lit 683802)) 1) (.lit 1712421)) 1) (.lit 82314306))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1440) 1) (.neg (.lit 105705))) 1) (.lit 3371625)) 1) (.neg (.lit 45008460))) 1) (.lit 323470422)) 1) (.neg (.lit 2912296680)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 450) 1) (.neg (.lit 50220))) 1) (.lit 2759265)) 1) (.neg (.lit 78994440))) 1) (.lit 947264058)) 1) (.neg (.lit 4488019245))) 1) (.lit 24153993450))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 2025)) 1) (.lit 681615)) 1) (.neg (.lit 42252840))) 1) (.lit 964978758)) 1) (.neg (.lit 8062491411))) 1) (.lit 7676665245)) 1) (.lit 51742158642))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1620) 1) (.neg (.lit 112995))) 1) (.neg (.lit 4592700))) 1) (.lit 361261782)) 1) (.neg (.lit 5891023485))) 1) (.lit 17625240765)) 1) (.lit 178773032313)) 1) (.neg (.lit 595077871104)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 14580)) 1) (.lit 918540)) 1) (.lit 13226976)) 1) (.neg (.lit 1275458400))) 1) (.lit 14157588240)) 1) (.lit 57768699582)) 1) (.neg (.lit 827530164504))) 1) (.neg (.lit 1847995732530))))
theorem denQy_00_18_interpret (X Y : R) : value X Y denQy_00_18_expr=denQy_00_18 X Y := by
  simp only [denQy_00_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_18]
#print axioms denQy_00_18_interpret
def denQy_00_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 99) 1) (.add (.mulY (.neg (.lit 45)) 1) (.neg (.lit 8343)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 21)) 1) (.lit 6156)) 1) (.lit 152118))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 15) 1) (.neg (.lit 729))) 1) (.neg (.lit 138510))) 1) (.neg (.lit 494262)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 9) 1) (.neg (.lit 10098))) 1) (.lit 246402)) 1) (.neg (.lit 2685636))) 1) (.lit 56588625))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 15)) 1) (.neg (.lit 11475))) 1) (.lit 716364)) 1) (.neg (.lit 12133476))) 1) (.lit 109102869)) 1) (.neg (.lit 1757475387)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 6750)) 1) (.lit 597294)) 1) (.neg (.lit 19722366))) 1) (.lit 222535998)) 1) (.neg (.lit 469439550))) 1) (.lit 10431655389))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1350)) 1) (.lit 231822)) 1) (.neg (.lit 12592746))) 1) (.lit 255603438)) 1) (.neg (.lit 1165981554))) 1) (.neg (.lit 15099833133))) 1) (.lit 61915533705))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 13122) 1) (.neg (.lit 2698758))) 1) (.lit 125931834)) 1) (.neg (.lit 1541178900))) 1) (.neg (.lit 8260187463))) 1) (.lit 182862470808)) 1) (.neg (.lit 228707228673)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 972)) 1) (.lit 17496)) 1) (.lit 10825650)) 1) (.neg (.lit 489988602))) 1) (.lit 3400690959)) 1) (.lit 74973039075)) 1) (.neg (.lit 590299685073))) 1) (.neg (.lit 2725503140115))))
theorem denQy_00_19_interpret (X Y : R) : value X Y denQy_00_19_expr=denQy_00_19 X Y := by
  simp only [denQy_00_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_19]
#print axioms denQy_00_19_interpret
def denQy_00_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 19) 1) (.add (.mulY (.neg (.lit 13)) 1) (.neg (.lit 882)))) 1) (.add (.mulY (.add (.mulY (.lit 2) 1) (.lit 864)) 1) (.neg (.lit 8100)))) 1) (.add (.mulY (.add (.mulY (.lit 2) 1) (.neg (.lit 171))) 2) (.lit 252234))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.neg (.lit 162))) 1) (.lit 18225)) 1) (.neg (.lit 1035180))) 1) (.lit 29426085))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 315) 1) (.lit 32805)) 1) (.neg (.lit 738477))) 1) (.lit 11068407)) 1) (.neg (.lit 771947577)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 90) 1) (.lit 24705)) 1) (.neg (.lit 1353024))) 1) (.neg (.lit 1213785))) 1) (.lit 506994714)) 1) (.lit 3186520236))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 17010) 1) (.neg (.lit 1350837))) 1) (.lit 18075555)) 1) (.lit 560493108)) 1) (.neg (.lit 12755646882))) 1) (.lit 31519765710))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 2025) 1) (.neg (.lit 433026))) 1) (.lit 20909907)) 1) (.neg (.lit 58104216))) 1) (.neg (.lit 9715804362))) 1) (.lit 103646938230)) 1) (.lit 110027418876))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 13122)) 1) (.lit 2650644)) 1) (.neg (.lit 106465347))) 1) (.neg (.lit 204073344))) 1) (.lit 48929772870)) 1) (.neg (.lit 281697742224))) 1) (.neg (.lit 2820808580409))))
theorem denQy_00_20_interpret (X Y : R) : value X Y denQy_00_20_expr=denQy_00_20 X Y := by
  simp only [denQy_00_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_20]
#print axioms denQy_00_20_interpret
def denQy_00_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 78) 1) (.add (.mulY (.neg (.lit 15)) 1) (.neg (.lit 8073)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 15)) 1) (.lit 5589)) 1) (.lit 14337))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 3) 1) (.neg (.lit 1323))) 1) (.neg (.lit 200961))) 1) (.lit 11667645))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 15) 1) (.neg (.lit 4185))) 1) (.lit 235224)) 1) (.neg (.lit 3820689))) 1) (.neg (.lit 249678855)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 2970)) 1) (.lit 244701)) 1) (.neg (.lit 13167927))) 1) (.lit 295933905)) 1) (.lit 709119441))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 270)) 1) (.lit 16524)) 1) (.neg (.lit 6606927))) 1) (.lit 354766392)) 1) (.neg (.lit 5232036645))) 1) (.lit 4875439734))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 22113)) 1) (.lit 1100061)) 1) (.lit 88081425)) 1) (.neg (.lit 4472076015))) 1) (.lit 36495647793)) 1) (.lit 229883839047))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1215)) 1) (.lit 299619)) 1) (.neg (.lit 11416140))) 1) (.neg (.lit 440564589))) 1) (.lit 20834612964)) 1) (.neg (.lit 83496289833))) 1) (.neg (.lit 2175753466224))))
theorem denQy_00_21_interpret (X Y : R) : value X Y denQy_00_21_expr=denQy_00_21 X Y := by
  simp only [denQy_00_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_21]
#print axioms denQy_00_21_interpret
def denQy_00_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 16) 1) (.add (.mulY (.neg (.lit 9)) 1) (.neg (.lit 954)))) 1) (.add (.mulY (.add (.mulY (.lit 1) 1) (.lit 927)) 1) (.neg (.lit 34020)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 1) 1) (.neg (.lit 279))) 1) (.neg (.lit 14175))) 1) (.lit 3203226))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 360)) 1) (.lit 52245)) 1) (.neg (.lit 1776573))) 1) (.neg (.lit 55873476)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 90)) 1) (.lit 49005)) 1) (.neg (.lit 3306015))) 1) (.lit 81034911)) 1) (.lit 134513622))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 10935) 1) (.neg (.lit 1884465))) 1) (.lit 94544010)) 1) (.neg (.lit 1254909348))) 1) (.neg (.lit 4431155058)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 405) 1) (.neg (.lit 136323))) 1) (.lit 29071791)) 1) (.neg (.lit 1254909348))) 1) (.lit 7243009389)) 1) (.lit 183092053320))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 11664) 1) (.lit 26244)) 1) (.neg (.lit 157778928))) 1) (.lit 6208293762)) 1) (.neg (.lit 8418025440))) 1) (.neg (.lit 1296050675868))))
theorem denQy_00_22_interpret (X Y : R) : value X Y denQy_00_22_expr=denQy_00_22 X Y := by
  simp only [denQy_00_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_22]
#print axioms denQy_00_22_interpret
def denQy_00_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 39) 1) (.add (.mulY (.lit 21) 1) (.neg (.lit 10773)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 21)) 1) (.lit 2592)) 1) (.lit 540675))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 15)) 1) (.lit 4455)) 1) (.neg (.lit 356481))) 1) (.neg (.lit 7206165)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 2970) 1) (.neg (.lit 399249))) 1) (.lit 12465900)) 1) (.lit 40251735))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 270) 1) (.neg (.lit 204849))) 1) (.lit 14672583)) 1) (.neg (.lit 148311405))) 1) (.neg (.lit 3996613467)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 18711)) 1) (.lit 4527090)) 1) (.neg (.lit 232751475))) 1) (.lit 109122552)) 1) (.lit 96509154159))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 243)) 1) (.lit 142155)) 1) (.neg (.lit 31197555))) 1) (.lit 1323110943)) 1) (.lit 5313878559)) 1) (.neg (.lit 609412429197))))
theorem denQy_00_23_interpret (X Y : R) : value X Y denQy_00_23_expr=denQy_00_23 X Y := by
  simp only [denQy_00_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_23]
#print axioms denQy_00_23_interpret
def denQy_00_24_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 10) 1) (.add (.mulY (.neg (.lit 4)) 1) (.neg (.lit 1206)))) 1) (.add (.mulY (.lit 594) 1) (.lit 41310))) 1) (.add (.mulY (.add (.mulY (.lit 180) 1) (.neg (.lit 38475))) 1) (.neg (.lit 104247)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 90) 1) (.neg (.lit 25920))) 1) (.lit 787320)) 1) (.lit 19315584))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 10530)) 1) (.lit 1382913)) 1) (.lit 8706447)) 1) (.neg (.lit 1825204590)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 405)) 1) (.lit 386370)) 1) (.neg (.lit 28822473))) 1) (.neg (.lit 429994818))) 1) (.lit 37518671718))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12393) 1) (.neg (.lit 3779136))) 1) (.lit 201357090)) 1) (.lit 3320443368)) 1) (.neg (.lit 229128129945))))
theorem denQy_00_24_interpret (X Y : R) : value X Y denQy_00_24_expr=denQy_00_24 X Y := by
  simp only [denQy_00_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_24]
#print axioms denQy_00_24_interpret
def denQy_00_25_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 18)) 1) (.add (.mulY (.lit 27) 1) (.neg (.lit 1863)))) 1) (.add (.mulY (.neg (.lit 1215)) 1) (.lit 119313))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 810)) 1) (.neg (.lit 89181))) 1) (.lit 7661061))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 270)) 1) (.lit 76059)) 1) (.lit 7061823)) 1) (.neg (.lit 569626020)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 17739) 1) (.neg (.lit 2320407))) 1) (.neg (.lit 153035325))) 1) (.lit 11179215729))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 243) 1) (.neg (.lit 277749))) 1) (.lit 21454470)) 1) (.lit 1046407329)) 1) (.neg (.lit 69308409456))))
theorem denQy_00_25_interpret (X Y : R) : value X Y denQy_00_25_expr=denQy_00_25 X Y := by
  simp only [denQy_00_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_25]
#print axioms denQy_00_25_interpret
def denQy_00_26_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4) 1) (.add (.mulY (.neg (.lit 1)) 1) (.neg (.lit 558)))) 1) (.add (.mulY (.lit 180) 1) (.lit 12960))) 1) (.add (.mulY (.neg (.lit 25515)) 1) (.lit 2080566))) 1) (.add (.mulY (.add (.mulY (.lit 2025) 1) (.lit 1403325)) 1) (.neg (.lit 129815946)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 405) 1) (.neg (.lit 112995))) 1) (.neg (.lit 30423357))) 1) (.lit 2585873808))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 11664)) 1) (.lit 1535274)) 1) (.lit 221551848)) 1) (.neg (.lit 16871125986))))
theorem denQy_00_26_interpret (X Y : R) : value X Y denQy_00_26_expr=denQy_00_26 X Y := by
  simp only [denQy_00_26_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_26]
#print axioms denQy_00_26_interpret
def denQy_00_27_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 21)) 1) (.add (.mulY (.lit 15) 1) (.neg (.lit 945)))) 1) (.add (.mulY (.neg (.lit 2430)) 1) (.lit 376407))) 1) (.add (.mulY (.lit 155277) 1) (.neg (.lit 21824073)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 2673)) 1) (.neg (.lit 3954096))) 1) (.lit 463239405))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 243)) 1) (.lit 67797)) 1) (.lit 33362685)) 1) (.neg (.lit 3286253997))))
theorem denQy_00_27_interpret (X Y : R) : value X Y denQy_00_27_expr=denQy_00_27 X Y := by
  simp only [denQy_00_27_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_27]
#print axioms denQy_00_27_interpret
def denQy_00_28_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1) 1) (.neg (.lit 270))) 1) (.add (.mulY (.neg (.lit 90)) 1) (.lit 43740))) 1) (.add (.mulY (.lit 9720) 1) (.neg (.lit 2652102)))) 1) (.add (.mulY (.neg (.lit 336798)) 1) (.lit 63274284))) 1) (.add (.mulY (.add (.mulY (.lit 1458) 1) (.lit 3569184)) 1) (.neg (.lit 505872783))))
theorem denQy_00_28_interpret (X Y : R) : value X Y denQy_00_28_expr=denQy_00_28 X Y := by
  simp only [denQy_00_28_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_28]
#print axioms denQy_00_28_interpret
def denQy_00_29_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 15)) 1) (.lit 2970)) 1) (.add (.mulY (.lit 270) 1) (.neg (.lit 221130)))) 1) (.add (.mulY (.neg (.lit 17253)) 1) (.lit 6383853))) 1) (.add (.mulY (.lit 260253) 1) (.neg (.lit 60229980))))
theorem denQy_00_29_interpret (X Y : R) : value X Y denQy_00_29_expr=denQy_00_29 X Y := by
  simp only [denQy_00_29_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_29]
#print axioms denQy_00_29_interpret
def denQy_00_30_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 90) 1) (.neg (.lit 11340))) 1) (.add (.mulY (.neg (.lit 405)) 1) (.lit 449064))) 1) (.add (.mulY (.lit 11664) 1) (.neg (.lit 5353776))))
theorem denQy_00_30_interpret (X Y : R) : value X Y denQy_00_30_expr=denQy_00_30 X Y := by
  simp only [denQy_00_30_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_30]
#print axioms denQy_00_30_interpret
def denQy_00_31_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 270)) 1) (.lit 19683)) 1) (.add (.mulY (.lit 243) 1) (.neg (.lit 334611))))
theorem denQy_00_31_interpret (X Y : R) : value X Y denQy_00_31_expr=denQy_00_31 X Y := by
  simp only [denQy_00_31_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_31]
#print axioms denQy_00_31_interpret
def denQy_00_32_expr : HExpr := (.add (.mulX (.lit 405) 1) (.neg (.lit 13122)))
theorem denQy_00_32_interpret (X Y : R) : value X Y denQy_00_32_expr=denQy_00_32 X Y := by
  simp only [denQy_00_32_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_32]
#print axioms denQy_00_32_interpret
def denQy_00_33_expr : HExpr := (.neg (.lit 243))
theorem denQy_00_33_interpret (X Y : R) : value X Y denQy_00_33_expr=denQy_00_33 X Y := by
  simp only [denQy_00_33_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_33]
#print axioms denQy_00_33_interpret
def denQy_01_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4) 1) (.add (.mulY (.neg (.lit 3)) 1) (.neg (.lit 153)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.lit 126)) 1) (.lit 2187))) 1) (.add (.mulY (.add (.mulY (.lit 3) 2) (.neg (.lit 1944))) 1) (.neg (.lit 13851)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.neg (.lit 90))) 1) (.lit 648)) 1) (.lit 13122)) 1) (.lit 32805))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 3)) 1) (.lit 126)) 1) (.neg (.lit 324))) 1) (.neg (.lit 1458))) 1) (.neg (.lit 65610))) 1) (.lit 59049))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 1)) 1) (.lit 162)) 1) (.neg (.lit 4698))) 1) (.lit 48114)) 1) (.neg (.lit 262440))) 1) (.lit 1062882)) 1) (.neg (.lit 1594323)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 45) 1) (.neg (.lit 3645))) 1) (.lit 83835)) 1) (.neg (.lit 852930))) 1) (.lit 4487724)) 1) (.neg (.lit 12754584))) 1) (.lit 14348907))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 810)) 1) (.lit 43740)) 1) (.neg (.lit 820125))) 1) (.lit 7203978)) 1) (.neg (.lit 31886460))) 1) (.lit 66961566)) 1) (.neg (.lit 43046721)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 7290) 1) (.neg (.lit 295245))) 1) (.lit 4487724)) 1) (.neg (.lit 31886460))) 1) (.lit 105225318)) 1) (.neg (.lit 129140163))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 32805)) 1) (.lit 1062882)) 1) (.neg (.lit 12754584))) 1) (.lit 66961566)) 1) (.neg (.lit 129140163))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 59049) 1) (.neg (.lit 1594323))) 1) (.lit 14348907)) 1) (.neg (.lit 43046721))) 3))
theorem denQy_01_12_interpret (X Y : R) : value X Y denQy_01_12_expr=denQy_01_12 X Y := by
  simp only [denQy_01_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_12]
#print axioms denQy_01_12_interpret
def denQy_01_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 15)) 1) (.add (.mulY (.lit 15) 1) (.lit 405))) 1) (.add (.mulY (.neg (.lit 405)) 1) (.neg (.lit 7290)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 15)) 1) (.lit 135)) 1) (.lit 6075)) 1) (.lit 120285))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 30) 1) (.neg (.lit 405))) 1) (.lit 6075)) 1) (.neg (.lit 142155))) 1) (.neg (.lit 984150)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 45) 1) (.neg (.lit 2295))) 1) (.lit 35235)) 1) (.neg (.lit 317115))) 1) (.lit 2460375)) 1) (.lit 885735))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 15) 1) (.neg (.lit 2025))) 1) (.lit 60750)) 1) (.neg (.lit 710775))) 1) (.lit 4428675)) 1) (.neg (.lit 18600435))) 1) (.lit 15943230))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 540)) 1) (.lit 36450)) 1) (.neg (.lit 765450))) 1) (.lit 6396975)) 1) (.neg (.lit 22143375))) 1) (.lit 23914845)) 1) (.lit 71744535))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 7290) 1) (.neg (.lit 328050))) 1) (.lit 4920750)) 1) (.neg (.lit 25686315))) 1) (.neg (.lit 7971615))) 1) (.lit 358722675)) 1) (.neg (.lit 645700815)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 43740)) 1) (.lit 1476225)) 1) (.neg (.lit 15057495))) 1) (.lit 23914845)) 1) (.lit 358722675)) 1) (.neg (.lit 1291401630))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 98415) 1) (.neg (.lit 2657205))) 1) (.lit 15943230)) 1) (.lit 71744535)) 1) (.neg (.lit 645700815))) 2))
theorem denQy_01_13_interpret (X Y : R) : value X Y denQy_01_13_expr=denQy_01_13 X Y := by
  simp only [denQy_01_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_01_13]
#print axioms denQy_01_13_interpret
end
end CriticalZeroSplitReduction20261003
