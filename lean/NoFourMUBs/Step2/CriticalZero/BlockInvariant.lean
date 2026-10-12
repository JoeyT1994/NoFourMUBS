import NoFourMUBs.Reuse.Archive.CriticalStripPhysical

/-! The archived invariant data and elementary square identities, with one
binding to the signature proof already used in the unified argument.
See audit/CRITICAL_BLOCK_INVARIANT_REUSE_REVIEW.json. -/

noncomputable section
open scoped BigOperators
namespace CriticalStripMoments20261003
open NoFourMUBs.Step2.Critical CriticalPhysical20261003

/-- The six positive permutation monomials of a literal 3 by 3 matrix. -/
def permanent3 (E : Hadamard6.Mat3) : ℂ :=
    E 0 0 * E 1 1 * E 2 2 + E 0 1 * E 1 2 * E 2 0
  + E 0 2 * E 1 0 * E 2 1 + E 0 0 * E 1 2 * E 2 1
  + E 0 1 * E 1 0 * E 2 2 + E 0 2 * E 1 1 * E 2 0

def entryProduct (E : Hadamard6.Mat3) : ℂ := ∏ i, ∏ j, E i j

/-- Literal invariant of the external critical-strip square sum. -/
def phaseInvariant (E : Hadamard6.Mat3) : ℂ :=
  permanent3 E * E.det^2 / entryProduct E

def signedInvariant (E : Hadamard6.Mat3) : ℂ :=
  phaseInvariant E - star (phaseInvariant E)

def phaseExpression (a b c d e f : ℂ) : ℂ :=
  FourierPhysicalSide.permanent a b c d e f *
    (b*f+c*d+a*e-c*e-a*f-b*d)^2 / (a*b*c*d*e*f)

def signedExpression (a b c d e f : ℂ) : ℂ :=
  phaseExpression a b c d e f - star (phaseExpression a b c d e f)

theorem normalized_invariant (E : Hadamard6.Mat3) (hE : ∀ j, E 0 j=1) :
    signedInvariant E = signedExpression (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2) := by
  have he : phaseInvariant E = phaseExpression (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2) := by
    simp [phaseInvariant,phaseExpression,permanent3,entryProduct,
      Matrix.det_fin_three,Fin.prod_univ_succ,hE,FourierPhysicalSide.permanent]
    ring
  exact congrArg (fun z : ℂ => z-star z) he

theorem signedInvariant_re (E : Hadamard6.Mat3) : (signedInvariant E).re=0 := by
  simp [signedInvariant]

theorem negative_square_re (E : Hadamard6.Mat3) :
    (-(signedInvariant E)^2).re = (signedInvariant E).im^2 := by
  simp [pow_two,Complex.mul_re,signedInvariant_re]

theorem negative_square_im (E : Hadamard6.Mat3) :
    (-(signedInvariant E)^2).im=0 := by
  simp [pow_two,Complex.mul_im,signedInvariant_re]

theorem negative_square_nonnegative (E : Hadamard6.Mat3) :
    0 ≤ (-(signedInvariant E)^2).re := by
  rw [negative_square_re]
  exact sq_nonneg _

/-- Unit phases turn the archived quotient into the existing signature. -/
theorem phaseInvariant_eq_neg_sideSignature (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E) :
    phaseInvariant E = -NoFourMUBs.Step2.sideSignature E := by
  have hp : Complex.normSq (entryProduct E) = 1 := by
    have he : ∀ i j, Complex.normSq (E i j) = 1 := hE
    simp [entryProduct, map_prod, he]
  have hi : (entryProduct E)⁻¹ = star (entryProduct E) := by
    simpa only [one_div] using Hadamard6.one_div_eq_star_of_normSq_eq_one hp
  have hperm : permanent3 E = NoFourMUBs.Step2.permanent3 E := by
    rw [NoFourMUBs.Step2.permanent3_expand]
    dsimp [permanent3]
    ring
  rw [phaseInvariant, div_eq_mul_inv, hi, hperm]
  simp [NoFourMUBs.Step2.sideSignature, entryProduct]

/-- Reuse the existing scalar signature identity, including singular blocks. -/
theorem invariant_square_scalar (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E) (h0 : ∀ j, E 0 j = 1) :
    (-(signedInvariant E)^2).re =
      CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E) := by
  have hi : (signedInvariant E).im = -2 * (NoFourMUBs.Step2.sideSignature E).im := by
    rw [signedInvariant, phaseInvariant_eq_neg_sideSignature E hE]
    simp [Complex.star_def]
    <;> ring
  have hb : CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E) =
      4 * (NoFourMUBs.Step2.sideSignature E).im ^ 2 := by
    simpa [sideP, sideJ, sideW, sideS, sideT, sideR,
      NoFourMUBs.Side.sS, NoFourMUBs.Side.rS,
      FourierPhysicalSide.s, FourierPhysicalSide.t, FourierPhysicalSide.r,
      Complex.star_def] using NoFourMUBs.Step2.Critical.moment_R_signature hE h0
  rw [negative_square_re, hi]
  nlinarith [hb]

#print axioms normalized_invariant
#print axioms signedInvariant_re
#print axioms negative_square_re
#print axioms negative_square_im
#print axioms negative_square_nonnegative
#print axioms phaseInvariant_eq_neg_sideSignature
#print axioms invariant_square_scalar
end CriticalStripMoments20261003
