import FiniteSquareRootLoop
import SquareRootBinomialRadial

/-! Exact-real semantic consumer for the supplier PM::root coefficient loop
and analytic tail. Interval rounding and centered-input construction remain
separate obligations; the output error is derived here, never assumed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialProduct20261008
open RadialSquareRoot20261008 RadialReciprocal20261008
noncomputable section

theorem centered_squareRoot_model_sound {n : ℕ} (m : ℕ)
    (S : Finset (MultiIndex n)) (X : FiniteModel n)
    (h0 : 0∈S) (hclosed : ∀ p∈keptPairs m S S,p.1+p.2∈S)
    (f : (Fin n→ℝ)→ℝ) (xi : Fin n→ℝ) (hc : 0<f 0)
    {alpha h : ℝ} (ha : 0≤alpha) (ha1 : alpha<1) (hh : 0≤h) (hh1 : h≤1)
    (hxi : ∀ i,|xi i|≤h)
    (hX : ModelSoundAt m S X (centeredRatio f xi) xi h)
    (hx : |centeredRatio f xi|≤alpha*h) :
    0<f xi ∧ ModelSoundAt m S (squareRootModel m S X (f 0) alpha) (Real.sqrt (f xi)) xi h := by
  have hb := sqrtPolynomialModel_sound m S X h0 hclosed hh hh1 hxi hX (f 0)
  obtain ⟨hp,hr⟩ := centered_sqrt_radial_remainder m f xi hc ha ha1 hh hh1 hx
  let base := sqrtPolynomialModel m S X (f 0)
  let ctail := Real.sqrt (f 0)*|sqrtCoefficient (m+1)| *alpha^(m+1)/(1-alpha)
  have hctail : 0≤ctail := div_nonneg
    (mul_nonneg (mul_nonneg (Real.sqrt_nonneg _) (abs_nonneg _)) (pow_nonneg ha _))
    (sub_nonneg.mpr (le_of_lt ha1))
  refine ⟨hp,add_nonneg hb.1 hctail,?_⟩
  change |Real.sqrt (f xi)-modelEval S base xi|≤(base.tail+ctail)*h^(m+1)
  change |Real.sqrt (f xi)-Real.sqrt (f 0)*sqrtPartial m (centeredRatio f xi)|≤ctail*h^(m+1) at hr
  calc
    _ = |(Real.sqrt (f xi)-Real.sqrt (f 0)*sqrtPartial m (centeredRatio f xi))+
        (Real.sqrt (f 0)*sqrtPartial m (centeredRatio f xi)-modelEval S base xi)| := by
      congr 1
      ring
    _ ≤ |Real.sqrt (f xi)-Real.sqrt (f 0)*sqrtPartial m (centeredRatio f xi)|+
        |Real.sqrt (f 0)*sqrtPartial m (centeredRatio f xi)-modelEval S base xi| := abs_add_le _ _
    _ ≤ ctail*h^(m+1)+base.tail*h^(m+1) := add_le_add hr hb.2
    _ = _ := by ring

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.centered_squareRoot_model_sound
