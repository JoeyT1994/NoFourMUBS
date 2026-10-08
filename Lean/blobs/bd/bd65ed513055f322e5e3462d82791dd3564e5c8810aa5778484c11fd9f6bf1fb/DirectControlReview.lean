import DirectControlExclusion

set_option autoImplicit false
namespace DirectControlIndependentReview20261006
open Centiradian20261006 ExactMeanChecker20261006
open Centiradian20261006.NativeEvaluation20261006
open ExactMeanDirect20261006.Control

theorem positiveWidth (i : Fin 4) :
    (controlBox i).re.lo<(controlBox i).re.hi ∧
    (controlBox i).im.lo<(controlBox i).im.hi := by
  have h := control_positive_width i
  constructor <;> linarith

theorem containsUnitSeed : ∃ q : Fin 4 → ℂ,
    (∀ i, (controlBox i).Contains (q i)) ∧
    (∀ i, Complex.normSq (q i)=1) ∧ 0<exactSeedR q := by
  refine ⟨controlCenter,control_center_member,control_center_unit,?_⟩
  exact control_R_positive controlCenter control_center_member

/-- The review statement has no assumed coefficient bounds, side roots,
positive corner invariant or oracle success condition. -/
theorem noPhysicalMaximalCarrier (H : Mat6)
    (hp : Physical H) (hd : Dephased H) (hm : Maximal H)
    (hbox : ∀ i, (controlBox i).Contains (seedEntry H i)) : False :=
  control_excludes hp hd hm hbox
end DirectControlIndependentReview20261006

#print axioms DirectControlIndependentReview20261006.positiveWidth
#print axioms DirectControlIndependentReview20261006.containsUnitSeed
#print axioms DirectControlIndependentReview20261006.noPhysicalMaximalCarrier
