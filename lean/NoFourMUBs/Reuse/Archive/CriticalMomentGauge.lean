import NoFourMUBs.Reuse.Archive.CriticalMomentReductionData

set_option autoImplicit false
set_option maxRecDepth 16000
set_option maxHeartbeats 1800000
namespace CriticalNewtonGauge20261003
open CriticalLaurent20261003
open scoped BigOperators
noncomputable section

def scaleMoments (a b : ℂ) (M : ℤ → ℤ → ℂ) : ℤ → ℤ → ℂ :=
  fun i j => a^i*b^j*M i j

/-- Each of the 66 terms has total exponent zero in both complete rows.
All nonzero complex row gauges preserve the actual finite polynomial. -/
theorem momentPolynomial66_scale (a b : ℂ) (M : ℤ → ℤ → ℂ)
    (ha : a≠0) (hb : b≠0) :
    momentPolynomial66 (scaleMoments a b M)=momentPolynomial66 M := by
  norm_num [momentPolynomial66,scaleMoments,zpow_neg,zpow_ofNat]
  field_simp [ha,hb]

end
#print axioms momentPolynomial66_scale
end CriticalNewtonGauge20261003
