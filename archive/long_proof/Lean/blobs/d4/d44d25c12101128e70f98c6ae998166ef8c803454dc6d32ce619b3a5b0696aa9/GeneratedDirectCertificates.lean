import DirectCubeCertificates

namespace Mub6.PhaseCube.DirectExamples
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
def box0 : RationalRectangle := { reLo := (124999 / 1000000), reHi := (125001 / 1000000), imLo := (-1 / 1000000), imHi := (1 / 1000000) }
def recipe0 : DirectRecipe := { cx := (1 / 2), cy := (0 / 1), coarse := (1795495 / 274877906944), M := (1 / 2), k := (56667657478350647643407 / 75557863725914323419136), radius := (2073287 / 1099511627776) }
theorem valid0 : recipe0.Valid box0 := by
  norm_num [DirectRecipe.Valid,DirectRecipe.power,rootResidual,recipe0,box0,
    boxNormSq,boxSub,boxPow,boxPoint,boxMul,boxAdd,boxNeg,reInterval,imInterval,
    rectangle,point,add,sub,neg,mul,square]
theorem enclosure0 (T : ℂ) (hm : MemRectangle box0 T) :
    ∃ tau : ℂ, tau^3=T ∧ MemRectangle (centerBox recipe0.cx recipe0.cy recipe0.radius) tau :=
  directRecipe_sound recipe0 box0 valid0 T hm
#print axioms valid0
#print axioms enclosure0
def box1 : RationalRectangle := { reLo := (-125001 / 1000000), reHi := (-124999 / 1000000), imLo := (-1 / 1000000), imHi := (1 / 1000000) }
def recipe1 : DirectRecipe := { cx := (-1 / 2), cy := (0 / 1), coarse := (1795495 / 274877906944), M := (1 / 2), k := (56667657478350647643407 / 75557863725914323419136), radius := (2073287 / 1099511627776) }
theorem valid1 : recipe1.Valid box1 := by
  norm_num [DirectRecipe.Valid,DirectRecipe.power,rootResidual,recipe1,box1,
    boxNormSq,boxSub,boxPow,boxPoint,boxMul,boxAdd,boxNeg,reInterval,imInterval,
    rectangle,point,add,sub,neg,mul,square]
theorem enclosure1 (T : ℂ) (hm : MemRectangle box1 T) :
    ∃ tau : ℂ, tau^3=T ∧ MemRectangle (centerBox recipe1.cx recipe1.cy recipe1.radius) tau :=
  directRecipe_sound recipe1 box1 valid1 T hm
#print axioms valid1
#print axioms enclosure1
def box2 : RationalRectangle := { reLo := (9999 / 10000), reHi := (10001 / 10000), imLo := (-1 / 10000), imHi := (1 / 10000) }
def recipe2 : DirectRecipe := { cx := (1 / 1), cy := (0 / 1), coarse := (179549497 / 1099511627776), M := (1 / 1), k := (3626185176326727155079503 / 1208925819614629174706176), radius := (25919971 / 549755813888) }
theorem valid2 : recipe2.Valid box2 := by
  norm_num [DirectRecipe.Valid,DirectRecipe.power,rootResidual,recipe2,box2,
    boxNormSq,boxSub,boxPow,boxPoint,boxMul,boxAdd,boxNeg,reInterval,imInterval,
    rectangle,point,add,sub,neg,mul,square]
theorem enclosure2 (T : ℂ) (hm : MemRectangle box2 T) :
    ∃ tau : ℂ, tau^3=T ∧ MemRectangle (centerBox recipe2.cx recipe2.cy recipe2.radius) tau :=
  directRecipe_sound recipe2 box2 valid2 T hm
#print axioms valid2
#print axioms enclosure2
def box3 : RationalRectangle := { reLo := (9 / 10), reHi := (11 / 10), imLo := (-1 / 10), imHi := (1 / 10) }
def recipe3 : DirectRecipe := { cx := (1 / 1), cy := (0 / 1), coarse := (89774748477 / 549755813888), M := (1 / 1), k := (750572289500172396864375 / 302231454903657293676544), radius := (31306315951 / 549755813888) }
theorem valid3 : recipe3.Valid box3 := by
  norm_num [DirectRecipe.Valid,DirectRecipe.power,rootResidual,recipe3,box3,
    boxNormSq,boxSub,boxPow,boxPoint,boxMul,boxAdd,boxNeg,reInterval,imInterval,
    rectangle,point,add,sub,neg,mul,square]
theorem enclosure3 (T : ℂ) (hm : MemRectangle box3 T) :
    ∃ tau : ℂ, tau^3=T ∧ MemRectangle (centerBox recipe3.cx recipe3.cy recipe3.radius) tau :=
  directRecipe_sound recipe3 box3 valid3 T hm
#print axioms valid3
#print axioms enclosure3
def box4 : RationalRectangle := { reLo := (99 / 100), reHi := (101 / 100), imLo := (-1 / 100), imHi := (1 / 100) }
def recipe4 : DirectRecipe := { cx := (1 / 1), cy := (0 / 1), coarse := (280546089 / 17179869184), M := (1 / 1), k := (870905774102696817519 / 295147905179352825856), radius := (2634834637 / 549755813888) }
theorem valid4 : recipe4.Valid box4 := by
  norm_num [DirectRecipe.Valid,DirectRecipe.power,rootResidual,recipe4,box4,
    boxNormSq,boxSub,boxPow,boxPoint,boxMul,boxAdd,boxNeg,reInterval,imInterval,
    rectangle,point,add,sub,neg,mul,square]
theorem enclosure4 (T : ℂ) (hm : MemRectangle box4 T) :
    ∃ tau : ℂ, tau^3=T ∧ MemRectangle (centerBox recipe4.cx recipe4.cy recipe4.radius) tau :=
  directRecipe_sound recipe4 box4 valid4 T hm
#print axioms valid4
#print axioms enclosure4
def box5 : RationalRectangle := { reLo := (999999 / 1000000), reHi := (1000001 / 1000000), imLo := (-1 / 1000000), imHi := (1 / 1000000) }
def recipe5 : DirectRecipe := { cx := (1 / 1), cy := (0 / 1), coarse := (1795495 / 1099511627776), M := (1 / 1), k := (3626771536337773380816143 / 1208925819614629174706176), radius := (129579 / 274877906944) }
theorem valid5 : recipe5.Valid box5 := by
  norm_num [DirectRecipe.Valid,DirectRecipe.power,rootResidual,recipe5,box5,
    boxNormSq,boxSub,boxPow,boxPoint,boxMul,boxAdd,boxNeg,reInterval,imInterval,
    rectangle,point,add,sub,neg,mul,square]
theorem enclosure5 (T : ℂ) (hm : MemRectangle box5 T) :
    ∃ tau : ℂ, tau^3=T ∧ MemRectangle (centerBox recipe5.cx recipe5.cy recipe5.radius) tau :=
  directRecipe_sound recipe5 box5 valid5 T hm
#print axioms valid5
#print axioms enclosure5
end Mub6.PhaseCube.DirectExamples
