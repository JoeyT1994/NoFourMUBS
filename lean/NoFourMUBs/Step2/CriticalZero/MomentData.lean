import NoFourMUBs.Reuse.Archive.CriticalZeroPoles

/-! The three literal moment definitions from the archived CriticalMomentBinding.
Keeping data separate avoids importing unrelated physical and interval machinery.
See audit/CRITICAL_ZERO_MODULI_INPUTS_REUSE_REVIEW.json for the pinned source. -/

set_option autoImplicit false
namespace CriticalPhysical20261003
noncomputable section

def momentP (s t r : ℂ) : ℝ :=
  Complex.normSq s + Complex.normSq t + Complex.normSq r

def momentJ (s t r : ℂ) : ℝ := 2 * (r*s*star t).re

def momentW (s t r : ℂ) : ℝ :=
  Complex.normSq s * Complex.normSq t +
  Complex.normSq s * Complex.normSq r +
  Complex.normSq t * Complex.normSq r -
  Complex.normSq s * Complex.normSq t * Complex.normSq r

end
end CriticalPhysical20261003
