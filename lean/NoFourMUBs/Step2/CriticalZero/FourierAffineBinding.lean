import NoFourMUBs.Step2.CriticalZero.FourierRoutingModel
import NoFourMUBs.Step2.SOS.CanonicalPermutations

/-! Generic coordinate binding extracted from KarlssonFourierImport.007.
Its permutation is the already checked canonicalPermutation45. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical
open Hadamard6

theorem raw_source_binding (w p q : ℂ) :
    (fun i j => FourierBridge.toOAI (affineFourierMatrix w p q)
      (SOS.Normalization.canonicalPermutation45 i) (SOS.Normalization.canonicalPermutation45 j)) =
    (fun i j => Worker12.fourierPhase w p q j i) := by
  funext i j
  fin_cases i <;> fin_cases j
  · change (1 : ℂ) = (1)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (w : ℂ) = (w)
    ring
  · change (w^2 : ℂ) = (w^2)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (w : ℂ) = (w)
    ring
  · change (w^2 : ℂ) = (w^2)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (w^2 : ℂ) = (w^2)
    ring
  · change (w : ℂ) = (w)
    ring
  · change (1 : ℂ) = (1)
    ring
  · change (w^2 : ℂ) = (w^2)
    ring
  · change (w : ℂ) = (w)
    ring
  · change (1 : ℂ) = ((1)*(1))
    ring
  · change (p : ℂ) = ((p)*(1))
    ring
  · change (q : ℂ) = ((q)*(1))
    ring
  · change (-1 : ℂ) = (-((1)*(1)))
    ring
  · change (-p : ℂ) = (-((p)*(1)))
    ring
  · change (-q : ℂ) = (-((q)*(1)))
    ring
  · change (1 : ℂ) = ((1)*(1))
    ring
  · change (w*p : ℂ) = ((p)*(w))
    ring
  · change (w^2*q : ℂ) = ((q)*(w^2))
    ring
  · change (-1 : ℂ) = (-((1)*(1)))
    ring
  · change (-w*p : ℂ) = (-((p)*(w)))
    ring
  · change (-(w^2*q) : ℂ) = (-((q)*(w^2)))
    ring
  · change (1 : ℂ) = ((1)*(1))
    ring
  · change (w^2*p : ℂ) = ((p)*(w^2))
    ring
  · change (w*q : ℂ) = ((q)*(w))
    ring
  · change (-1 : ℂ) = (-((1)*(1)))
    ring
  · change (-(w^2*p) : ℂ) = (-((p)*(w^2)))
    ring
  · change (-(w*q) : ℂ) = (-((q)*(w)))
    ring

#print axioms raw_source_binding
end NoFourMUBs.Step2.Critical
