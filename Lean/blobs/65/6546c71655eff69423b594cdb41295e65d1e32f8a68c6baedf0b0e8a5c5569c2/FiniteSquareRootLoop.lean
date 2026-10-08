import FiniteRadialModel
import SquareRootCoefficients
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-! Literal finite PM::root loop over the already checked total-degree cutoff.
No analytic square-root error is assumed or claimed by this loop module. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialProduct20261008
open RadialSquareRoot20261008
noncomputable section

def sqrtModels {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (X : FiniteModel n) : ℕ → FiniteModel n × FiniteModel n
  | 0 => (modelConst 1,modelConst 1)
  | k+1 =>
    let previous := sqrtModels m S X k
    let term := modelMul m S previous.1 X
    (term,modelAdd previous.2 (modelScale (sqrtCoefficient (k+1)) term))

theorem sqrtModels_sound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (X : FiniteModel n) (h0 : 0∈S)
    (hclosed : ∀ p∈keptPairs m S S,p.1+p.2∈S)
    {x h : ℝ} {xi : Fin n → ℝ} (hh : 0≤h) (hh1 : h≤1) (hxi : ∀ i,|xi i|≤h)
    (hX : ModelSoundAt m S X x xi h) (k : ℕ) :
    ModelSoundAt m S (sqrtModels m S X k).1 (x^k) xi h ∧
      ModelSoundAt m S (sqrtModels m S X k).2 (sqrtPartial k x) xi h := by
  induction k with
  | zero =>
    constructor
    · simpa [sqrtModels] using modelConst_sound m S h0 1 xi h
    · simpa [sqrtModels,sqrtPartial,sqrtCoefficient] using modelConst_sound m S h0 1 xi h
  | succ k ih =>
    have ht := modelMul_sound m S (sqrtModels m S X k).1 X hclosed hh hh1 hxi ih.1 hX
    have hc := modelScale_sound m S (sqrtCoefficient (k+1))
      (modelMul m S (sqrtModels m S X k).1 X) ht
    have hs := modelAdd_sound m S (sqrtModels m S X k).2
      (modelScale (sqrtCoefficient (k+1)) (modelMul m S (sqrtModels m S X k).1 X)) ih.2 hc
    constructor
    · simpa only [sqrtModels,pow_succ] using ht
    · simpa only [sqrtModels,sqrtPartial_succ,pow_succ] using hs

def sqrtPolynomialModel {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (X : FiniteModel n) (c : ℝ) : FiniteModel n :=
  modelScale (Real.sqrt c) (sqrtModels m S X m).2

/-- The supplier's exact-real output object, including the analytic tail
coefficient. Soundness of that analytic addition is proved in the final module. -/
def squareRootModel {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (X : FiniteModel n) (c alpha : ℝ) : FiniteModel n :=
  let base := sqrtPolynomialModel m S X c
  ⟨base.coeff,base.tail+Real.sqrt c*|sqrtCoefficient (m+1)| *alpha^(m+1)/(1-alpha)⟩

theorem sqrtPolynomialModel_sound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (X : FiniteModel n) (h0 : 0∈S)
    (hclosed : ∀ p∈keptPairs m S S,p.1+p.2∈S)
    {x h : ℝ} {xi : Fin n → ℝ} (hh : 0≤h) (hh1 : h≤1) (hxi : ∀ i,|xi i|≤h)
    (hX : ModelSoundAt m S X x xi h) (c : ℝ) :
    ModelSoundAt m S (sqrtPolynomialModel m S X c) (Real.sqrt c*sqrtPartial m x) xi h := by
  exact modelScale_sound m S (Real.sqrt c) (sqrtModels m S X m).2
    (sqrtModels_sound m S X h0 hclosed hh hh1 hxi hX m).2

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.sqrtModels_sound
#print axioms Centiradian20261006.RadialProduct20261008.sqrtPolynomialModel_sound
