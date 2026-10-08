import ExactPhaseInput

set_option autoImplicit false
namespace ExactMeanChecker20261006.IndependentReview
open SignedMeanIntake20261006 Mub6.GlobalBoxCover20261006

theorem reviewed_phase_input_sound (p : PhaseInput) (b : Box 4)
    (hp : p.check b=true) {x : Fin 4 → ℝ} (hx : b.Contains x) :
    ∀ i, (p.rectangles i).Contains (Complex.exp ((x i:ℂ)*Complex.I)) := by
  intro i
  exact PhaseInput.sound p b hp hx i

end ExactMeanChecker20261006.IndependentReview
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_phase_input_sound
