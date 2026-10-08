import CriticalScalarReduction
import PhysicalSideForward

set_option autoImplicit false
set_option maxHeartbeats 2000000
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

theorem momentP_nonnegative (s t r : ℂ) : 0 ≤ momentP s t r := by
  exact add_nonneg (add_nonneg (Complex.normSq_nonneg s) (Complex.normSq_nonneg t))
    (Complex.normSq_nonneg r)

theorem momentP_neg (s t r : ℂ) : momentP (-s) (-t) (-r) = momentP s t r := by
  simp [momentP]

theorem momentJ_neg (s t r : ℂ) : momentJ (-s) (-t) (-r) = -momentJ s t r := by
  simp [momentJ, star_neg]

theorem momentW_neg (s t r : ℂ) : momentW (-s) (-t) (-r) = momentW s t r := by
  simp [momentW]

/-- The literal Gram eta is the scalar expression used in the critical strip. -/
theorem eta_binding (s t r : ℂ) :
    FourierGramNumerators.eta s t r = 9-momentP s t r+momentJ s t r := by
  simp [FourierGramNumerators.eta, FourierGramNumerators.g,
    FourierGramNumerators.sigma, FourierGramNumerators.q, momentP, momentJ]
  ring

/-- Exact identification, with no unit, nonzero, or branch assumption. -/
theorem R_binding (s t r : ℂ) :
    CriticalScalarReduction20261003.R (momentP s t r) (momentJ s t r) (momentW s t r) =
      FourierRadicalGuards.radicand (FourierGramNumerators.g s t r)
        (FourierGramNumerators.chi s t r) (FourierGramNumerators.eta s t r) := by
  simp [CriticalScalarReduction20261003.R, FourierRadicalGuards.radicand,
    FourierGramNumerators.g, FourierGramNumerators.chi, FourierGramNumerators.eta,
    FourierGramNumerators.sigma, FourierGramNumerators.q, momentP, momentJ, momentW]
  ring

/-- Positivity follows from the existing permanent identity for six actual
unit phases, including a zero permanent. -/
theorem unit_side_eta_nonnegative (a b c d e f : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1)
    (hd : Complex.normSq d=1) (he : Complex.normSq e=1) (hf : Complex.normSq f=1) :
    0 ≤ FourierGramNumerators.eta (a+b+c) (d+e+f)
      (d*star a+e*star b+f*star c) := by
  have h := FourierPhysicalSide.eta_permanent a b c d e f ha hb hc hd he hf
  rw [show FourierGramNumerators.eta (a+b+c) (d+e+f) (d*star a+e*star b+f*star c) =
      Complex.normSq (FourierPhysicalSide.permanent a b c d e f) from h]
  exact Complex.normSq_nonneg _

/-- Two physically nonnegative complementary etas give the closed bound. -/
theorem complementary_eta_bound (s t r : ℂ)
    (hplus : 0 ≤ FourierGramNumerators.eta s t r)
    (hminus : 0 ≤ FourierGramNumerators.eta (-s) (-t) (-r)) :
    momentP s t r + |momentJ s t r| ≤ 9 := by
  rw [eta_binding] at hplus hminus
  rw [momentP_neg, momentJ_neg] at hminus
  have h : |momentJ s t r| ≤ 9-momentP s t r :=
    abs_le.mpr ⟨by linarith, by linarith⟩
  linarith

end
#print axioms momentP_nonnegative
#print axioms momentP_neg
#print axioms momentJ_neg
#print axioms momentW_neg
#print axioms eta_binding
#print axioms R_binding
#print axioms unit_side_eta_nonnegative
#print axioms complementary_eta_bound
end CriticalPhysical20261003
