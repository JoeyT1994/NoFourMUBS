import PhaseSideIntervals

namespace Mub6.PhaseCube.AdapterExamples
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals

/- positive real radicand -/
def radicand0 : RationalRectangle := { reLo := (124999 / 1000000), reHi := (125001 / 1000000), imLo := (-1 / 1000000), imHi := (1 / 1000000) }
def radial0 : Interval := { lo := (137438220463 / 549755813888), hi := (68719843241 / 274877906944) }
def target0 : TargetBox := { reLo := (7812375000 / 7812625001), reHi := (1 / 1), imLo := (-250002 / 15624750001), imHi := (250002 / 15624750001) }
def recipe0 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (250001 / 7812625001), ry := (250002 / 15624750001), residual := (19073303229003968750343752000005 / 14901161191940277099914552734374999750001), coarse := (2458571 / 137438953472), radius := (13112379 / 1099511627776) }
theorem target_binding0 : target0=asTarget (phaseTargetBox radicand0) := by
  norm_num [target0,radicand0,phaseTargetBox,asTarget,boxMeet,boxDivide,boxConj,boxMul,boxNormSq,boxDivideReal,clampLower,divide,reciprocal,unitBox,rectangle,reInterval,imInterval,add,sub,neg,mul,square]
theorem radial_valid0 : RadialValid radial0 radicand0 := by
  norm_num [RadialValid,radial0,radicand0,boxNormSq,reInterval,imInterval,add,square]
theorem phase_valid0 : recipe0.Valid (asTarget (phaseTargetBox radicand0)) := by
  rw [← target_binding0]
  norm_num [RootRecipe.Valid,RootRecipe.cubeRe,RootRecipe.cubeIm,recipe0,target0]
theorem old_cube_enclosure0 (T : ℂ) (rho : ℝ)
    (hm : MemRectangle radicand0 T) (hn : Complex.normSq T=rho^3)
    (hl : 1/10 ≤ rho) (hu : rho ≤ 1) :
    ∃ tau : ℂ, tau^3=T ∧ Complex.normSq tau=rho ∧
      MemRectangle (phaseTauBox radicand0 radial0 recipe0) tau :=
  phaseTauBox_sound radicand0 radial0 recipe0 radial_valid0 phase_valid0 T rho hm hn hl hu
#print axioms target_binding0
#print axioms radial_valid0
#print axioms phase_valid0
#print axioms old_cube_enclosure0

/- negative real radicand -/
def radicand1 : RationalRectangle := { reLo := (-125001 / 1000000), reHi := (-124999 / 1000000), imLo := (-1 / 1000000), imHi := (1 / 1000000) }
def radial1 : Interval := { lo := (137438220463 / 549755813888), hi := (68719843241 / 274877906944) }
def target1 : TargetBox := { reLo := (7812375000 / 7812625001), reHi := (1 / 1), imLo := (-250002 / 15624750001), imHi := (250002 / 15624750001) }
def recipe1 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (250001 / 7812625001), ry := (250002 / 15624750001), residual := (19073303229003968750343752000005 / 14901161191940277099914552734374999750001), coarse := (2458571 / 137438953472), radius := (13112379 / 1099511627776) }
theorem target_binding1 : target1=asTarget (phaseTargetBox radicand1) := by
  norm_num [target1,radicand1,phaseTargetBox,asTarget,boxMeet,boxDivide,boxConj,boxMul,boxNormSq,boxDivideReal,clampLower,divide,reciprocal,unitBox,rectangle,reInterval,imInterval,add,sub,neg,mul,square]
theorem radial_valid1 : RadialValid radial1 radicand1 := by
  norm_num [RadialValid,radial1,radicand1,boxNormSq,reInterval,imInterval,add,square]
theorem phase_valid1 : recipe1.Valid (asTarget (phaseTargetBox radicand1)) := by
  rw [← target_binding1]
  norm_num [RootRecipe.Valid,RootRecipe.cubeRe,RootRecipe.cubeIm,recipe1,target1]
theorem old_cube_enclosure1 (T : ℂ) (rho : ℝ)
    (hm : MemRectangle radicand1 T) (hn : Complex.normSq T=rho^3)
    (hl : 1/10 ≤ rho) (hu : rho ≤ 1) :
    ∃ tau : ℂ, tau^3=T ∧ Complex.normSq tau=rho ∧
      MemRectangle (phaseTauBox radicand1 radial1 recipe1) tau :=
  phaseTauBox_sound radicand1 radial1 recipe1 radial_valid1 phase_valid1 T rho hm hn hl hu
#print axioms target_binding1
#print axioms radial_valid1
#print axioms phase_valid1
#print axioms old_cube_enclosure1

/- complex radicand -/
def radicand2 : RationalRectangle := { reLo := (1 / 10), reHi := (1001 / 10000), imLo := (1 / 5), imHi := (2001 / 10000) }
def radial2 : Interval := { lo := (50632943373 / 137438953472), hi := (202612780801 / 549755813888) }
def target2 : TargetBox := { reLo := (-3004001 / 5000000), reHi := (-2997999 / 5006002), imLo := (2000000 / 2503001), imHi := (2003001 / 2500000) }
def recipe2 : RootRecipe := { cx := (131581236 / 177862045), cy := (119671573 / 177862045), rx := (216097775289713636251289929 / 225065970463171978069645000000), ry := (121587412076950545337260929 / 112532985231585989034822500000), residual := (470227655338779174300770119529 / 225065970463171978069645000000000000), coarse := (49664837 / 68719476736), radius := (264879177 / 549755813888) }
theorem target_binding2 : target2=asTarget (phaseTargetBox radicand2) := by
  norm_num [target2,radicand2,phaseTargetBox,asTarget,boxMeet,boxDivide,boxConj,boxMul,boxNormSq,boxDivideReal,clampLower,divide,reciprocal,unitBox,rectangle,reInterval,imInterval,add,sub,neg,mul,square]
theorem radial_valid2 : RadialValid radial2 radicand2 := by
  norm_num [RadialValid,radial2,radicand2,boxNormSq,reInterval,imInterval,add,square]
theorem phase_valid2 : recipe2.Valid (asTarget (phaseTargetBox radicand2)) := by
  rw [← target_binding2]
  norm_num [RootRecipe.Valid,RootRecipe.cubeRe,RootRecipe.cubeIm,recipe2,target2]
theorem old_cube_enclosure2 (T : ℂ) (rho : ℝ)
    (hm : MemRectangle radicand2 T) (hn : Complex.normSq T=rho^3)
    (hl : 1/10 ≤ rho) (hu : rho ≤ 1) :
    ∃ tau : ℂ, tau^3=T ∧ Complex.normSq tau=rho ∧
      MemRectangle (phaseTauBox radicand2 radial2 recipe2) tau :=
  phaseTauBox_sound radicand2 radial2 recipe2 radial_valid2 phase_valid2 T rho hm hn hl hu
#print axioms target_binding2
#print axioms radial_valid2
#print axioms phase_valid2
#print axioms old_cube_enclosure2

/- unit boundary radicand -/
def radicand3 : RationalRectangle := { reLo := (9999 / 10000), reHi := (10001 / 10000), imLo := (-1 / 10000), imHi := (1 / 10000) }
def radial3 : Interval := { lo := (1099438325779 / 1099511627776), hi := (1 / 1) }
def target3 : TargetBox := { reLo := (49990000 / 50010001), reHi := (1 / 1), imLo := (-20002 / 99980001), imHi := (20002 / 99980001) }
def recipe3 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (20001 / 50010001), ry := (20002 / 99980001), residual := (4999400260032002200160005 / 24999999499900012500999999980001), coarse := (61460883 / 274877906944), radius := (163895691 / 1099511627776) }
theorem target_binding3 : target3=asTarget (phaseTargetBox radicand3) := by
  norm_num [target3,radicand3,phaseTargetBox,asTarget,boxMeet,boxDivide,boxConj,boxMul,boxNormSq,boxDivideReal,clampLower,divide,reciprocal,unitBox,rectangle,reInterval,imInterval,add,sub,neg,mul,square]
theorem radial_valid3 : RadialValid radial3 radicand3 := by
  norm_num [RadialValid,radial3,radicand3,boxNormSq,reInterval,imInterval,add,square]
theorem phase_valid3 : recipe3.Valid (asTarget (phaseTargetBox radicand3)) := by
  rw [← target_binding3]
  norm_num [RootRecipe.Valid,RootRecipe.cubeRe,RootRecipe.cubeIm,recipe3,target3]
theorem old_cube_enclosure3 (T : ℂ) (rho : ℝ)
    (hm : MemRectangle radicand3 T) (hn : Complex.normSq T=rho^3)
    (hl : 1/10 ≤ rho) (hu : rho ≤ 1) :
    ∃ tau : ℂ, tau^3=T ∧ Complex.normSq tau=rho ∧
      MemRectangle (phaseTauBox radicand3 radial3 recipe3) tau :=
  phaseTauBox_sound radicand3 radial3 recipe3 radial_valid3 phase_valid3 T rho hm hn hl hu
#print axioms target_binding3
#print axioms radial_valid3
#print axioms phase_valid3
#print axioms old_cube_enclosure3
end Mub6.PhaseCube.AdapterExamples
