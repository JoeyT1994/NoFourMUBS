import AngularLeaf

set_option autoImplicit false
namespace AngularCoreIndependentReview20261003
open Root0Angular20261003 Mub6.Numerical Mub6.Numerical.IntervalKernel

theorem unit_circle_complete {z : ℂ} (hz : Complex.normSq z=1) :
    ∃ t : ℝ, 0≤t ∧ t≤1 ∧ z=turnPhase t := unit_turnPhase hz

theorem seam_preserved : turnPhase 0 = turnPhase 1 := by
  simp [turnPhase,ShoulderRadian20261003.cis]

/-- Both children of an angular split are used; the split point is retained. -/
theorem closed_split_x {P : ℝ → ℝ → Prop} (A B : Interval) (q : ℚ)
    (left : Holds P ⟨A.lo,q⟩ B) (right : Holds P ⟨q,A.hi⟩ B) :
    ∀ x y : ℝ, Mem A x → Mem B y → P x y :=
  split_x A B q left right

/-- The interval rejection demands a strict lower bound above the physical cap. -/
theorem literal_corner_rejection {A B C D E F : RationalRectangle} {a b c d e f : ℂ}
    (checked : cornerCheck A B C D E F=true)
    (ha : MemRectangle A a) (hb : MemRectangle B b) (hc : MemRectangle C c)
    (hd : MemRectangle D d) (he : MemRectangle E e) (hf : MemRectangle F f)
    (cap : 64*(sixValue a b c d e f)^2 ≤ (1/80:ℝ)) : False :=
  cornerCheck_sound checked ha hb hc hd he hf cap

#print axioms unit_circle_complete
#print axioms seam_preserved
#print axioms closed_split_x
#print axioms literal_corner_rejection
end AngularCoreIndependentReview20261003
