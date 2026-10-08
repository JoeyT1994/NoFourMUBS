import ShiftedPolynomialIntervals
namespace Mub6.Classification.ShiftedPolynomialIntervals
open MvPolynomial
noncomputable section
theorem shiftedPolynomial_eval_rational {σ : Type*} (c p : σ → ℚ)
    (P : MvPolynomial σ ℚ) :
    eval p (shiftedPolynomial c P) = eval (fun i => c i + p i) P := by
  unfold eval shiftedPolynomial
  rw [← eval₂_assoc]
  simp
#print axioms Mub6.Classification.ShiftedPolynomialIntervals.shiftedPolynomial_eval_rational
end
end Mub6.Classification.ShiftedPolynomialIntervals
