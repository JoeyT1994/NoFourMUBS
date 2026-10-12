import NoFourMUBs.Reuse.Archive.CriticalRationalSideData
import NoFourMUBs.Reuse.Archive.CriticalReconstructionGauge

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
noncomputable section

def numeratorWeight (a b : ℂ) : Fin 3 → ℂ := ![a*b,b/a^2,a/b^2]
def conumeratorWeight (a b : ℂ) : Fin 3 → ℂ := ![a⁻¹*b⁻¹,a^2/b,b^2/a]

theorem rationalNumerator_scale (a b s S t T r Q : ℂ)
    (ha : a≠0) (hb : b≠0) (i : Fin 3) :
    rationalNumerator (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) i =
      numeratorWeight a b i*rationalNumerator s S t T r Q i := by
  fin_cases i <;> simp [rationalNumerator,numeratorWeight] <;> field_simp [ha,hb] <;> ring

theorem rationalConumerator_scale (a b s S t T r Q : ℂ)
    (ha : a≠0) (hb : b≠0) (i : Fin 3) :
    rationalConumerator (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) i =
      conumeratorWeight a b i*rationalConumerator s S t T r Q i := by
  fin_cases i <;> simp [rationalConumerator,conumeratorWeight] <;> field_simp [ha,hb] <;> ring

theorem rationalDenominator_scale (a b s S t T r Q z g : ℂ)
    (ha : a≠0) (hb : b≠0) (i : Fin 3) :
    rationalDenominator (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) z g i =
      rationalDenominator s S t T r Q z g i := by
  fin_cases i <;> dsimp only [rationalDenominator] <;> field_simp [ha,hb] <;> ring

/-- Rational reconstruction has the same covariance as all actual Newton
fields. This identity even preserves the totalized rational expression at poles;
the separate physical recovery theorem requires every denominator nonzero. -/
theorem scaleData_rationalSide (a b s S t T r Q z g : ℂ)
    (ha : a≠0) (hb : b≠0) :
    scaleData a b (rationalSide s S t T r Q z g) =
      rationalSide (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) z g := by
  have hP (i : Fin 3) :
      rationalNumerator (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) i /
        rationalDenominator (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) z g i =
      numeratorWeight a b i *
        (rationalNumerator s S t T r Q i / rationalDenominator s S t T r Q z g i) := by
    rw [rationalNumerator_scale a b s S t T r Q ha hb,
      rationalDenominator_scale a b s S t T r Q z g ha hb]
    ring
  have hB (i : Fin 3) :
      rationalConumerator (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) i /
        rationalDenominator (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) z g i =
      conumeratorWeight a b i *
        (rationalConumerator s S t T r Q i / rationalDenominator s S t T r Q z g i) := by
    rw [rationalConumerator_scale a b s S t T r Q ha hb,
      rationalDenominator_scale a b s S t T r Q z g ha hb]
    ring
  dsimp only [rationalSide]
  rw [scaleData_reconstruction a b _ _ _ _ _ _ _ _ _ _ _ _ _ ha hb]
  rw [hP 0,hP 1,hP 2,hB 0,hB 1,hB 2]
  rfl

end
#print axioms rationalNumerator_scale
#print axioms rationalConumerator_scale
#print axioms rationalDenominator_scale
#print axioms scaleData_rationalSide
end CriticalNewtonGauge20261003
