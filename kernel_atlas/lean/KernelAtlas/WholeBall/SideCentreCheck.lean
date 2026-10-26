import KernelAtlas.WholeBall.SideCoordinates
import KernelAtlas.WholeBall.IntervalTrig
import KernelAtlas.WholeBall.MatrixRefinement

/-! Centre-only exact enclosures of the two side signatures and their summed
gradients, using the 24-frequency identity. -/

open Matrix Complex Hadamard6 NoFourMUBs.Step2
open NoFourMUBs.SeedAtlas NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

def signatureFrequencies : Matrix (Fin 24) (Fin 9) ℚ :=
  fun i j => signatureFrequency i j

def signatureGradientWeights : Matrix (Fin 9) (Fin 24) ℚ :=
  fun j i => (signatureCoefficient i : ℚ) * (signatureFrequency i j : ℚ)

def signatureWeights : Matrix (Fin 1) (Fin 24) ℚ := fun _ i => signatureCoefficient i

structure SideCentreData where
  phase : MatrixBox 9 1
  angles : MatrixBox 24 1
  cosine : MatrixBox 24 1
  sine : MatrixBox 24 1
  gradient : MatrixBox 1 9
  signature : MatrixBox 1 1
  terms : ℕ
  precision : ℕ

def sideCentreCheck (P : MatrixBox 36 1) (vertical : Bool) (S : SideCentreData) : Bool :=
  (P.reindex (sideIndex vertical) id).enclosesCheck S.phase &&
  ((MatrixBox.exact signatureFrequencies).mul S.phase).enclosesCheck S.angles &&
  ((List.finRange 24).all fun i => (S.angles.entry i 0).cisCheck S.terms) &&
  (intervalMatrix (fun i (_ : Fin 1) => (S.angles.entry i 0).cos S.terms S.precision)).enclosesCheck S.cosine &&
  (intervalMatrix (fun i (_ : Fin 1) => (S.angles.entry i 0).sin S.terms S.precision)).enclosesCheck S.sine &&
  ((MatrixBox.exact signatureGradientWeights).mul S.cosine).transpose.enclosesCheck S.gradient &&
  ((MatrixBox.exact signatureWeights).mul S.sine).enclosesCheck S.signature

theorem sideCentreCheck_sound {P : MatrixBox 36 1} {Q : NoFourMUBs.RMat6}
    (hP : P.Has (fun a _ => flatPhase Q a)) {vertical : Bool} {S : SideCentreData}
    (h : sideCentreCheck P vertical S = true) :
    S.gradient.Has (fun _ j => signatureGradient (sidePhase vertical Q) j) ∧
    S.signature.Has (fun _ _ => (psi (signaturePhaseBlock (sidePhase vertical Q))).im) := by
  simp only [sideCentreCheck, Bool.and_eq_true] at h
  have hp := (hP.reindex (sideIndex vertical) id).enlarge h.1.1.1.1.1.1
  have ha := ((MatrixBox.has_exact signatureFrequencies).mul hp).enlarge h.1.1.1.1.1.2
  have ha' : ∀ i, (S.angles.entry i 0).Has (signatureDot i (sidePhase vertical Q)) := by
    intro i
    convert ha.entry i 0 using 1
    simp [signatureDot, signatureFrequencies, realMatrix, sidePhase, Matrix.mul_apply, Matrix.submatrix_apply]
  have hexp := h.1.1.1.1.2
  simp only [List.all_eq_true, List.mem_finRange, forall_const] at hexp
  have hcos := (intervalMatrix_sound (fun i (_ : Fin 1) => (ha' i).cos (hexp i) S.precision)).enlarge h.1.1.1.2
  have hsin := (intervalMatrix_sound (fun i (_ : Fin 1) => (ha' i).sin (hexp i) S.precision)).enlarge h.1.1.2
  have hg := ((MatrixBox.has_exact signatureGradientWeights).mul hcos).transpose.enlarge h.1.2
  have hs := ((MatrixBox.has_exact signatureWeights).mul hsin).enlarge h.2
  constructor
  · intro a j
    convert hg a j using 1
    simp [signatureGradient, signatureGradientWeights, realMatrix, Matrix.mul_apply]
  · intro a b
    convert hs a b using 1
    simp [signature_fourier, signatureWeights, realMatrix, Matrix.mul_apply, signatureDot]

/-- The signed lower endpoint is charged before the variation bound. -/
def sideSignedCheck (S : SideCentreData) (sign : ℤ) (lower : ℚ) : Bool :=
  let A := (MatrixBox.exact (fun (_ _ : Fin 1) => (sign : ℚ))).mul S.signature
  decide (lower ≤ A.mid 0 0 - A.rad 0 0)

lemma sideSignedCheck_sound {S : SideCentreData} {value : ℝ}
    (hS : S.signature.Has (fun _ _ => value)) {sign : ℤ} {lower : ℚ}
    (h : sideSignedCheck S sign lower = true) : (lower : ℝ) ≤ (sign : ℝ) * value := by
  let A := (MatrixBox.exact (fun (_ _ : Fin 1) => (sign : ℚ))).mul S.signature
  have ha := (MatrixBox.has_exact (fun (_ _ : Fin 1) => (sign : ℚ))).mul hS
  have hh := ha 0 0
  have hh' : |(sign : ℝ) * value - (A.mid 0 0 : ℝ)| ≤ (A.rad 0 0 : ℝ) := by
    simpa [Matrix.mul_apply, Fin.sum_univ_succ, realMatrix] using hh
  have hl : (lower : ℝ) ≤ (A.mid 0 0 : ℝ) - (A.rad 0 0 : ℝ) := by
    have hp : lower ≤ A.mid 0 0 - A.rad 0 0 := of_decide_eq_true h
    exact_mod_cast hp
  linarith [(abs_le.mp hh').1]

end NoFourMUBs.KernelAtlas.WholeBall
