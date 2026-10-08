import ShiftedPolynomialIntervals
namespace Mub6.Classification.ShiftedPolynomialIntervals
open MvPolynomial
noncomputable section
theorem shiftedPolynomial_eval_rational {σ : Type*} (c p : σ → ℚ)
    (P : MvPolynomial σ ℚ) :
    eval p (shiftedPolynomial c P) = eval (fun i => c i + p i) P := by
  change eval₂ (RingHom.id ℚ) p (eval₂ C (fun i => C (c i) + X i) P) =
    eval₂ (RingHom.id ℚ) (fun i => c i + p i) P
  rw [← eval₂_assoc]
  simp
#print axioms Mub6.Classification.ShiftedPolynomialIntervals.shiftedPolynomial_eval_rational
end
end Mub6.Classification.ShiftedPolynomialIntervals
