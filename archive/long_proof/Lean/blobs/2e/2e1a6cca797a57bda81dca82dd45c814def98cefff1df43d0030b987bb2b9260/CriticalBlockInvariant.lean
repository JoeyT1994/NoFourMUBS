import CriticalStripPhysical
import GlobalCornerSixSkew

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
namespace CriticalStripMoments20261003
open Mub6 Mub6.Classification
open CompactCover FourierSeedBinding FourPhase GlobalCornerDomain
open CriticalPhysical20261003
open scoped BigOperators
noncomputable section

/-- The six positive permutation monomials of a literal 3 by 3 matrix. -/
def permanent3 (E : CompactCover.Mat3) : ℂ :=
    E 0 0 * E 1 1 * E 2 2 + E 0 1 * E 1 2 * E 2 0
  + E 0 2 * E 1 0 * E 2 1 + E 0 0 * E 1 2 * E 2 1
  + E 0 1 * E 1 0 * E 2 2 + E 0 2 * E 1 1 * E 2 0

def entryProduct (E : CompactCover.Mat3) : ℂ := ∏ i, ∏ j, E i j

/-- Literal invariant of the external critical-strip square sum. -/
def phaseInvariant (E : CompactCover.Mat3) : ℂ :=
  permanent3 E * E.det^2 / entryProduct E

def signedInvariant (E : CompactCover.Mat3) : ℂ :=
  phaseInvariant E - star (phaseInvariant E)

def phaseExpression (a b c d e f : ℂ) : ℂ :=
  FourierPhysicalSide.permanent a b c d e f *
    (b*f+c*d+a*e-c*e-a*f-b*d)^2 / (a*b*c*d*e*f)

def signedExpression (a b c d e f : ℂ) : ℂ :=
  phaseExpression a b c d e f - star (phaseExpression a b c d e f)

theorem normalized_invariant (E : CompactCover.Mat3) (hE : ∀ j, E 0 j=1) :
    signedInvariant E = signedExpression (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2) := by
  have he : phaseInvariant E = phaseExpression (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2) := by
    simp [phaseInvariant,phaseExpression,permanent3,entryProduct,
      Matrix.det_fin_three,Fin.prod_univ_succ,hE,FourierPhysicalSide.permanent]
    ring
  exact congrArg (fun z : ℂ => z-star z) he

/-- This Laurent identity divides only by actual unit entries, never by a
determinant, correlation, reconstruction sheet, or moment denominator. -/
theorem signedExpression_eq_sixSkew (a b c d e f : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1)
    (hd : Complex.normSq d=1) (he : Complex.normSq e=1) (hf : Complex.normSq f=1) :
    signedExpression a b c d e f = GlobalCornerSixSine.sixSkew a b c d e f := by
  dsimp only [signedExpression,phaseExpression,FourierPhysicalSide.permanent,
    GlobalCornerSixSine.sixSkew,GlobalCornerSixSine.skew]
  simp only [star_add,star_mul,star_sub,star_pow,star_div₀,star_star,star_ofNat]
  have ha0 := Hadamard6.ne_zero_of_normSq_eq_one ha
  have hb0 := Hadamard6.ne_zero_of_normSq_eq_one hb
  have hc0 := Hadamard6.ne_zero_of_normSq_eq_one hc
  have hd0 := Hadamard6.ne_zero_of_normSq_eq_one hd
  have he0 := Hadamard6.ne_zero_of_normSq_eq_one he
  have hf0 := Hadamard6.ne_zero_of_normSq_eq_one hf
  have hsa := Hadamard6.one_div_eq_star_of_normSq_eq_one ha
  have hsb := Hadamard6.one_div_eq_star_of_normSq_eq_one hb
  have hsc := Hadamard6.one_div_eq_star_of_normSq_eq_one hc
  have hsd := Hadamard6.one_div_eq_star_of_normSq_eq_one hd
  have hse := Hadamard6.one_div_eq_star_of_normSq_eq_one he
  have hsf := Hadamard6.one_div_eq_star_of_normSq_eq_one hf
  rw [← hsa,← hsb,← hsc,← hsd,← hse,← hsf]
  field_simp [ha0,hb0,hc0,hd0,he0,hf0]
  ring

theorem signedInvariant_re (E : CompactCover.Mat3) : (signedInvariant E).re=0 := by
  simp [signedInvariant]

theorem negative_square_re (E : CompactCover.Mat3) :
    (-(signedInvariant E)^2).re = (signedInvariant E).im^2 := by
  simp [pow_two,Complex.mul_re,signedInvariant_re]

theorem negative_square_im (E : CompactCover.Mat3) :
    (-(signedInvariant E)^2).im=0 := by
  simp [pow_two,Complex.mul_im,signedInvariant_re]

theorem negative_square_nonnegative (E : CompactCover.Mat3) :
    0 ≤ (-(signedInvariant E)^2).re := by
  rw [negative_square_re]
  exact sq_nonneg _

/-- Physical radicand binding for a literal normalized phase block, with no
invertibility or nonzero-correlation hypothesis. -/
theorem invariant_square_radicand (E : CompactCover.Mat3)
    (hE : ∀ i j, IsPhase (E i j)) (h0 : ∀ j, E 0 j=1) :
    -(signedInvariant E)^2 =
      ShoulderPhaseGate20261002.radicand (sideS E) (sideT E) (sideR E) := by
  rw [normalized_invariant E h0, signedExpression_eq_sixSkew _ _ _ _ _ _
    (hE 1 0) (hE 1 1) (hE 1 2) (hE 2 0) (hE 2 1) (hE 2 2)]
  exact (GlobalCornerSixSine.physical_radicand_sixSkew _ _ _ _ _ _
    (hE 1 0) (hE 1 1) (hE 1 2) (hE 2 0) (hE 2 1) (hE 2 2)).symm

theorem invariant_square_scalar (E : CompactCover.Mat3)
    (hE : ∀ i j, IsPhase (E i j)) (h0 : ∀ j, E 0 j=1) :
    (-(signedInvariant E)^2).re =
      CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E) := by
  rw [invariant_square_radicand E hE h0,side_R_complex]

end
#print axioms normalized_invariant
#print axioms signedExpression_eq_sixSkew
#print axioms signedInvariant_re
#print axioms negative_square_re
#print axioms negative_square_im
#print axioms negative_square_nonnegative
#print axioms invariant_square_radicand
#print axioms invariant_square_scalar
end CriticalStripMoments20261003
