import FiniteModelCenterValue
import FiniteReciprocalComposition

/-! A complete exact-real inverse operation on a radial input model.
Both the shared center and normalized-deviation bound are obtained from the
input model. Only the executable alpha<1 guard remains to be checked. -/
set_option autoImplicit false
namespace Centiradian20261006.RadialProduct20261008
open RadialReciprocal20261008
noncomputable section

def centeredAlpha {n : ℕ} (S : Finset (MultiIndex n)) (A : FiniteModel n) : ℝ :=
  let X := centeredModel A (A.coeff 0)
  coefficientNorm S X.coeff + X.tail

def computedReciprocalModel {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A : FiniteModel n) : FiniteModel n :=
  reciprocalModel m S (centeredModel A (A.coeff 0)) (A.coeff 0) (centeredAlpha S A)

theorem computed_reciprocal_model_sound {n : ℕ} (m : ℕ)
    (S : Finset (MultiIndex n)) (A : FiniteModel n)
    (h0 : 0 ∈ S) (hclosed : ∀ p ∈ keptPairs m S S, p.1+p.2 ∈ S)
    (f : (Fin n → ℝ) → ℝ) (xi : Fin n → ℝ)
    (hc : A.coeff 0 ≠ 0) (ha1 : centeredAlpha S A < 1)
    (hcenter : ModelSoundAt m S A (f 0) 0 0)
    {h : ℝ} (hh : 0 ≤ h) (hh1 : h ≤ 1) (hxi : ∀ i, |xi i| ≤ h)
    (hA : ModelSoundAt m S A (f xi) xi h) :
    f xi ≠ 0 ∧ ModelSoundAt m S (computedReciprocalModel m S A) ((f xi)⁻¹) xi h := by
  have he : f 0 = A.coeff 0 := model_center_value m S A h0 hcenter
  have hf0 : f 0 ≠ 0 := he.symm ▸ hc
  let X := centeredModel A (A.coeff 0)
  have hX : ModelSoundAt m S X (centeredRatio f xi) xi h := by
    simpa only [X, centeredRatio, he] using centeredModel_sound m S A (A.coeff 0) h0 hA
  have ha : 0 ≤ centeredAlpha S A :=
    add_nonneg (Finset.sum_nonneg (fun _ _ => abs_nonneg _)) hX.1
  have hx : |centeredRatio f xi| ≤ centeredAlpha S A * h := by
    simpa only [centeredRatio, he, centeredAlpha] using
      centeredModel_alpha_bound m S A hc rfl h0 hh hh1 hxi hA
  simpa only [computedReciprocalModel, he, X] using
    centered_reciprocal_model_sound m S X h0 hclosed f xi hf0
      ha ha1 hh hh1 hxi hX hx

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.computed_reciprocal_model_sound
