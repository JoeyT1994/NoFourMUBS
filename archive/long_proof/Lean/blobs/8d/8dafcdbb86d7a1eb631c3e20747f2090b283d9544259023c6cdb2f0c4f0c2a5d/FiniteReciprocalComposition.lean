import FiniteRadialModel
import CenteredReciprocalRadial

/-! The exact real PM inverse loop: term=term*(-x), sum=sum+term, then
scale by the one fixed inverse center and add the analytic geometric tail.
The source's interval arithmetic and construction of the centered input model
remain separate. Every multiplication here uses the actual cutoff operator. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialProduct20261008
open RadialReciprocal20261008
noncomputable section

/-- First component is the current power, second is its running partial sum.
The polynomial cutoff m remains fixed while k advances. -/
def geometricModels {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (X : FiniteModel n) : ℕ → FiniteModel n × FiniteModel n
  | 0 => (modelConst 1,modelConst 1)
  | k+1 =>
    let previous := geometricModels m S X k
    let term := modelMul m S previous.1 (modelScale (-1) X)
    (term,modelAdd previous.2 term)

theorem geometricModels_sound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (X : FiniteModel n) (h0 : 0∈S)
    (hclosed : ∀ p∈keptPairs m S S, p.1+p.2∈S)
    {x h : ℝ} {xi : Fin n → ℝ} (hh : 0≤h) (hh1 : h≤1) (hxi : ∀ i, |xi i|≤h)
    (hX : ModelSoundAt m S X x xi h) (k : ℕ) :
    ModelSoundAt m S (geometricModels m S X k).1 ((-x)^k) xi h ∧
      ModelSoundAt m S (geometricModels m S X k).2 (geometricPartial k x) xi h := by
  induction k with
  | zero =>
    constructor
    · simpa [geometricModels] using modelConst_sound m S h0 1 xi h
    · simpa [geometricModels,geometricPartial] using modelConst_sound m S h0 1 xi h
  | succ k ih =>
    have hneg : ModelSoundAt m S (modelScale (-1) X) (-x) xi h := by
      simpa only [neg_one_mul] using modelScale_sound m S (-1) X hX
    have ht := modelMul_sound m S (geometricModels m S X k).1 (modelScale (-1) X)
      hclosed hh hh1 hxi ih.1 hneg
    have hs := modelAdd_sound m S (geometricModels m S X k).2
      (modelMul m S (geometricModels m S X k).1 (modelScale (-1) X)) ih.2 ht
    constructor
    · simpa only [geometricModels,pow_succ] using ht
    · simpa only [geometricModels,geometricPartial_succ] using hs

/-- This has the supplier's computed polynomial tail plus the extra analytic
geometric tail. c is the shared exact center, not a point-dependent bound. -/
def reciprocalModel {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (X : FiniteModel n) (c alpha : ℝ) : FiniteModel n :=
  let base := modelScale c⁻¹ (geometricModels m S X m).2
  ⟨base.coeff,base.tail+(|c|⁻¹*alpha^(m+1)/(1-alpha))⟩

/-- The finite cutoff loop is linked to the prior analytic reciprocal kernel.
Only the input model error and its normalized deviation bound are assumed;
the error of the actual repeatedly truncated reciprocal polynomial is derived. -/
theorem centered_reciprocal_model_sound {n : ℕ} (m : ℕ)
    (S : Finset (MultiIndex n)) (X : FiniteModel n)
    (h0 : 0∈S) (hclosed : ∀ p∈keptPairs m S S, p.1+p.2∈S)
    (f : (Fin n → ℝ) → ℝ) (xi : Fin n → ℝ) (hc : f 0≠0)
    {alpha h : ℝ} (ha : 0≤alpha) (ha1 : alpha<1) (hh : 0≤h) (hh1 : h≤1)
    (hxi : ∀ i, |xi i|≤h)
    (hX : ModelSoundAt m S X (centeredRatio f xi) xi h)
    (hx : |centeredRatio f xi|≤alpha*h) :
    f xi≠0 ∧ ModelSoundAt m S (reciprocalModel m S X (f 0) alpha) ((f xi)⁻¹) xi h := by
  have hs := (geometricModels_sound m S X h0 hclosed hh hh1 hxi hX m).2
  have hb := modelScale_sound m S (f 0)⁻¹ (geometricModels m S X m).2 hs
  obtain ⟨hn,hr⟩ := centered_reciprocal_radial_remainder m f xi hc ha ha1 hh hh1 hx
  let base := modelScale (f 0)⁻¹ (geometricModels m S X m).2
  let ctail := |f 0|⁻¹*alpha^(m+1)/(1-alpha)
  have hctail : 0≤ctail := div_nonneg
    (mul_nonneg (inv_nonneg.mpr (abs_nonneg _)) (pow_nonneg ha _))
    (sub_nonneg.mpr (le_of_lt ha1))
  refine ⟨hn,add_nonneg hb.1 hctail,?_⟩
  change |(f xi)⁻¹-modelEval S base xi|≤(base.tail+ctail)*h^(m+1)
  change |(f xi)⁻¹-((f 0)⁻¹*geometricPartial m (centeredRatio f xi))|≤ctail*h^(m+1) at hr
  calc
    _ = |((f xi)⁻¹-((f 0)⁻¹*geometricPartial m (centeredRatio f xi)))+
        (((f 0)⁻¹*geometricPartial m (centeredRatio f xi))-modelEval S base xi)| := by
      congr 1
      ring
    _ ≤ |(f xi)⁻¹-((f 0)⁻¹*geometricPartial m (centeredRatio f xi))|+
        |((f 0)⁻¹*geometricPartial m (centeredRatio f xi))-modelEval S base xi| := abs_add_le _ _
    _ ≤ ctail*h^(m+1)+base.tail*h^(m+1) := add_le_add hr hb.2
    _ = _ := by ring

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.geometricModels_sound
#print axioms Centiradian20261006.RadialProduct20261008.centered_reciprocal_model_sound
