import NoFourMUBs.Reuse.Archive.CriticalZeroActualComputedNoAudit
import NoFourMUBs.Reuse.Archive.CriticalZeroRawModuliJoin
import NoFourMUBs.Step2.CriticalZero.NumeratorIdentity

/-! Join the existing physical equation, numerator identity and scalar modulus
theorem. All regular-chart and original correlation guards remain explicit. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalStripMoments20261003
open CriticalZeroPhysicalInputs20261003 CriticalZeroSumAssembly20261003

theorem allCritical_regular_zero_moduli {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (z : ℝ)
    (hzlo : -3 ≤ z) (hz0 : z ≠ 0) (hz3 : z ≠ -3) (hz2 : z ≠ -2)
    (hp : sideP (stripLeftBlock H) = 9-z^2)
    (hj : sideJ (stripLeftBlock H) = 0)
    (hw : sideW (stripLeftBlock H) = z^2*(z+3)^2)
    (hs : (stripLeftData H).s ≠ 0) (ht : (stripLeftData H).t ≠ 0) :
    let D := stripLeftData H
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    let Z := Complex.normSq D.r
    z ≤ 1 ∧ ((X=z+3 ∧ Y=z+3 ∧ Z=(1-z)*(z+3)) ∨
      (X=z+3 ∧ Y=(1-z)*(z+3) ∧ Z=z+3) ∨
      (X=(1-z)*(z+3) ∧ Y=z+3 ∧ Z=z+3)) := by
  have h := allCritical_computed_numerator_zero hH z
    hzlo hz0 hz3 hz2 hp hj hw hs ht
  apply raw_zero_moduli_from_inputs z
    (Complex.normSq (stripLeftData H).s)
    (Complex.normSq (stripLeftData H).t)
    (Complex.normSq (stripLeftData H).r)
    (Complex.normSq_nonneg _) (Complex.normSq_nonneg _) (Complex.normSq_nonneg _)
    hz0 hz3 hz2 h.1
  exact (computed_coefficients_eq_rawNumerator
    (Complex.normSq (stripLeftData H).s : ℂ)
    (Complex.normSq (stripLeftData H).t : ℂ) (z : ℂ)).symm.trans h.2.1

#print axioms allCritical_regular_zero_moduli
end NoFourMUBs.Step2.Critical
