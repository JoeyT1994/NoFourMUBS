import Worker12.R0Binding

/-! # Fixed R0 completion and full-matrix assembly — UNVERIFIED DRAFT

This file retains the literal fixed completion, binds it to the independently
replayed `Worker12R0.C`, assembles the six columns in the same split order used
by the boundary packet, and gives an explicit monomial map to `d0Phase`.
-/

namespace Worker12
set_option maxHeartbeats 4000000

/-- Literal canonical completion of `r0.transpose`. -/
def r0Completion : PartialPhaseBasis :=
  (!![1, Complex.I, -Complex.I, -1, -Complex.I, Complex.I;
      1, 1, Complex.I, -Complex.I, -1, -1;
      1, -Complex.I, -1, Complex.I, 1, -1]).transpose

/-- UNVERIFIED DRAFT: exact literal binding to the independently replayed
completion. -/
theorem r0Completion_eq_standalone : r0Completion = Worker12R0.C := rfl

/-- UNVERIFIED DRAFT: direct phase-Hadamard check for the six-by-six matrix
whose first three rows are R0 and last three rows are its canonical
completion. -/
theorem hTimes_phaseHadamard : Mub6.IsPhaseHadamard6 hTimes := by
  constructor
  · intro i j
    fin_cases i <;> fin_cases j <;>
      norm_num [hTimes, Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail,
        Complex.normSq_apply]
  · ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [hTimes, Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail,
        Matrix.mul_apply, Matrix.conjTranspose_apply, Fin.sum_univ_succ,
        Matrix.smul_apply, Matrix.one_apply, Complex.ext_iff]

/-- UNVERIFIED DRAFT: direct local partial-basis check for R0. -/
theorem r0_isPartialPhaseBasis : IsPartialPhaseBasis r0.transpose := by
  constructor
  · intro i j
    fin_cases i <;> fin_cases j <;>
      norm_num [r0, Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail,
        Complex.normSq_apply]
  · ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [r0, Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail,
        Matrix.mul_apply, Matrix.conjTranspose_apply, Fin.sum_univ_succ,
        Matrix.smul_apply, Matrix.one_apply, Complex.ext_iff]

/-- UNVERIFIED DRAFT: reuse of the audited standalone completion existence
through the literal binding. -/
theorem r0Completion_isCompletion :
    IsPhaseCompletion r0.transpose r0Completion := by
  simpa [r0Completion, Worker12R0.C] using r0Completion_exists_checked

/-- Involution used in the historical D0 gauge. -/
def d0ColumnPermutation : Equiv.Perm (Fin 6) where
  toFun := d0ColumnOrder
  invFun := d0ColumnOrder
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl

/-- UNVERIFIED DRAFT: explicit old local `hTimes -> d0Phase` witness.
Rows are not permuted; columns use `[3,5,4,0,2,1]`; row phases are the
conjugates of column 3 of `hTimes`; column phases are one. -/
theorem hTimes_monomial_d0 :
    Mub6.MonomialEquivalent hTimes d0Phase := by
  refine ⟨Equiv.refl _, d0ColumnPermutation,
    (fun i ↦ star (hTimes i 3)), (fun _ ↦ 1), ?_, ?_, ?_⟩
  · intro i
    simpa [Complex.star_def, Complex.normSq_conj] using
      hTimes_phaseHadamard.1 i 3
  · intro j
    norm_num
  · funext i j
    simp [d0Phase, Mub6.monomialEdge, d0ColumnPermutation]

/-- Assemble two six-by-three partial bases into one six-by-six basis matrix,
using exactly the packet's `splitIndex` order. -/
def joinPartialPhaseBases (A B : PartialPhaseBasis) : Mub6.BasisMatrix :=
  fun i j ↦
    match splitIndex.symm j with
    | Sum.inl k => A i k
    | Sum.inr k => B i k

/-- Full phase matrix obtained from R0 and its literal canonical completion. -/
def r0CompletedPhase : Mub6.BasisMatrix :=
  joinPartialPhaseBases r0.transpose r0Completion

/-- UNVERIFIED DRAFT: the assembled matrix is literally `hTimes.transpose`.
This pins the row/column convention rather than relying on prose. -/
theorem r0CompletedPhase_eq_hTimes_transpose :
    r0CompletedPhase = Mub6.transposeEdge hTimes := by
  funext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [r0CompletedPhase, joinPartialPhaseBases, r0Completion, r0,
      hTimes, Mub6.transposeEdge, splitIndex, finSumFinEquiv,
      Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail]

/-- UNVERIFIED DRAFT: the fixed D0 phase matrix is symmetric. -/
theorem d0Phase_transpose : Mub6.transposeEdge d0Phase = d0Phase := by
  funext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [d0Phase, hTimes, d0ColumnOrder, Mub6.transposeEdge,
      Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, Complex.ext_iff]

/-- UNVERIFIED DRAFT: transpose the explicit `hTimes -> d0Phase` witness to
obtain the canonical full R0-completion-to-D0 witness.  Its row permutation is
`[3,5,4,0,2,1]`, its column permutation is the identity, its row phases are
one, and its column phases are
`[1,-i,i,-1,i,-i]`. -/
theorem r0CompletedPhase_monomial_d0 :
    Mub6.MonomialEquivalent r0CompletedPhase d0Phase := by
  have h := monomialEquivalent_transpose hTimes_monomial_d0
  simpa [r0CompletedPhase_eq_hTimes_transpose, d0Phase_transpose] using h

/-- Lift a permutation of the completion's three rays to the right three
columns of a full six-column matrix. -/
def liftCompletionColumnPermutation (p : Equiv.Perm (Fin 3)) :
    Equiv.Perm (Fin 6) :=
  (splitIndex.symm.trans (Equiv.sumCongr (Equiv.refl (Fin 3)) p)).trans splitIndex

/-- Lift completion ray phases to the right three columns; the R0 columns
remain unchanged. -/
def liftCompletionColumnPhase (c : Fin 3 → ℂ) : Fin 6 → ℂ :=
  fun j ↦
    match splitIndex.symm j with
    | Sum.inl _ => 1
    | Sum.inr k => c k

/-- UNVERIFIED DRAFT: projectively equal completions give physically
monomial-equivalent assembled six-by-six matrices, for an arbitrary fixed
left partial basis. -/
theorem joinPartialPhaseBases_monomial_of_projectivelySame
    (A : PartialPhaseBasis) {B C : PartialPhaseBasis}
    (hBC : ProjectivelySameCompletion B C) :
    Mub6.MonomialEquivalent
      (joinPartialPhaseBases A B)
      (joinPartialPhaseBases A C) := by
  rcases hBC with ⟨p, c, hc, hBC⟩
  refine ⟨Equiv.refl _, liftCompletionColumnPermutation p,
    (fun _ ↦ 1), liftCompletionColumnPhase c, ?_, ?_, ?_⟩
  · intro i
    norm_num
  · intro j
    obtain ⟨x, rfl⟩ := splitIndex.surjective j
    cases x with
    | inl k =>
        simp [liftCompletionColumnPhase]
    | inr k =>
        simpa [liftCompletionColumnPhase] using hc k
  · funext i j
    obtain ⟨x, rfl⟩ := splitIndex.surjective j
    cases x with
    | inl k =>
        simp [joinPartialPhaseBases, liftCompletionColumnPermutation,
          liftCompletionColumnPhase, Mub6.monomialEdge]
    | inr k =>
        simp [joinPartialPhaseBases, liftCompletionColumnPermutation,
          liftCompletionColumnPhase, Mub6.monomialEdge, hBC]

/-- UNVERIFIED DRAFT: specialization of the preceding transport to fixed R0.
The original public draft declaration is retained. -/
theorem joinedCompletion_monomial_of_projectivelySame
    {B C : PartialPhaseBasis}
    (hBC : ProjectivelySameCompletion B C) :
    Mub6.MonomialEquivalent
      (joinPartialPhaseBases r0.transpose B)
      (joinPartialPhaseBases r0.transpose C) :=
  joinPartialPhaseBases_monomial_of_projectivelySame r0.transpose hBC

/-- Assemble R0 with an arbitrary candidate completion. -/
def completedR0Phase (B : PartialPhaseBasis) : Mub6.BasisMatrix :=
  joinPartialPhaseBases r0.transpose B

/-- UNVERIFIED DRAFT: every actual completion of fixed R0 is monomially
represented by the canonical assembled completion. -/
theorem r0CompletedPhase_monomial_completedR0Phase
    {B : PartialPhaseBasis} (hB : IsPhaseCompletion r0.transpose B) :
    Mub6.MonomialEquivalent r0CompletedPhase (completedR0Phase B) := by
  have hs := r0Completion_canonical_checked hB
  rw [← r0Completion_eq_standalone] at hs
  exact joinedCompletion_monomial_of_projectivelySame hs

/-- UNVERIFIED DRAFT: every fixed-R0 completion is therefore monomially
represented by fixed D0. -/
theorem completedR0Phase_monomial_d0
    {B : PartialPhaseBasis} (hB : IsPhaseCompletion r0.transpose B) :
    Mub6.MonomialEquivalent (completedR0Phase B) d0Phase := by
  exact monomialEquivalent_trans
    (Mub6.monomialEquivalent_symm
      (r0CompletedPhase_monomial_completedR0Phase hB))
    r0CompletedPhase_monomial_d0

/-- UNVERIFIED DRAFT: the previous theorem at the exact physical
`1 / sqrt 6` normalization. -/
theorem physical_completedR0Phase_monomial_d0
    {B : PartialPhaseBasis} (hB : IsPhaseCompletion r0.transpose B) :
    Mub6.MonomialEquivalent
      (physicalNormalize (completedR0Phase B))
      (physicalNormalize d0Phase) :=
  physicalNormalize_monomialEquivalent (completedR0Phase_monomial_d0 hB)

/-- Entrywise conjugation of a six-by-three partial phase basis. -/
def conjugatePartialPhaseBasis (A : PartialPhaseBasis) : PartialPhaseBasis :=
  fun i j ↦ star (A i j)

/-- Canonical completion for the conjugated fixed-R0 branch. -/
def conjugateR0Completion : PartialPhaseBasis :=
  conjugatePartialPhaseBasis r0Completion

/-- Full canonical matrix for the conjugated fixed-R0 branch. -/
def conjugateR0CompletedPhase : Mub6.BasisMatrix :=
  joinPartialPhaseBases (conjugatePartialPhaseBasis r0.transpose)
    conjugateR0Completion

/-- Full matrix obtained from the conjugated fixed R0 and an arbitrary
completion. -/
def completedConjugateR0Phase (B : PartialPhaseBasis) : Mub6.BasisMatrix :=
  joinPartialPhaseBases (conjugatePartialPhaseBasis r0.transpose) B

/-- UNVERIFIED DRAFT: the conjugated canonical completion is an actual
completion of the conjugated fixed R0. -/
theorem conjugateR0Completion_isCompletion :
    IsPhaseCompletion (conjugatePartialPhaseBasis r0.transpose)
      conjugateR0Completion := by
  change IsPhaseCompletion (fun i j ↦ star (r0.transpose i j))
    (fun i j ↦ star (r0Completion i j))
  rw [r0Completion_eq_standalone]
  exact conjugate_r0Completion_exists_checked

/-- Row permutation in the direct conjugated-R0-completion-to-D0 witness:
`[0,1,2,4,5,3]`. -/
def conjugateR0ToD0RowPermutation : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 2, 4, 5, 3]
  invFun := ![0, 1, 2, 5, 3, 4]
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl

/-- Column permutation in the direct conjugated-R0-completion-to-D0 witness:
`[3,5,4,2,1,0]`. -/
def conjugateR0ToD0ColumnPermutation : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 4, 2, 1, 0]
  invFun := ![5, 4, 3, 0, 2, 1]
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl

/-- Row phases in the direct conjugated-R0-completion-to-D0 witness. -/
def conjugateR0ToD0RowPhase : Fin 6 → ℂ :=
  ![1, Complex.I, -Complex.I, -Complex.I, Complex.I, -1]

/-- UNVERIFIED DRAFT: direct exact witness for the conjugate branch.  The
canonical conjugated fixed-R0 completion maps to the same fixed D0 target by
row permutation `[0,1,2,4,5,3]`, column permutation `[3,5,4,2,1,0]`, row
phases `[1,i,-i,-i,i,-1]`, and unit column phases. -/
theorem conjugateR0CompletedPhase_monomial_d0 :
    Mub6.MonomialEquivalent conjugateR0CompletedPhase d0Phase := by
  refine ⟨conjugateR0ToD0RowPermutation,
    conjugateR0ToD0ColumnPermutation, conjugateR0ToD0RowPhase,
    (fun _ ↦ 1), ?_, ?_, ?_⟩
  · intro i
    fin_cases i <;>
      norm_num [conjugateR0ToD0RowPhase, Complex.normSq_apply]
  · intro j
    norm_num
  · funext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [conjugateR0CompletedPhase, completedConjugateR0Phase,
        conjugatePartialPhaseBasis, conjugateR0Completion,
        joinPartialPhaseBases, r0Completion, r0, d0Phase, hTimes,
        d0ColumnOrder, conjugateR0ToD0RowPermutation,
        conjugateR0ToD0ColumnPermutation, conjugateR0ToD0RowPhase,
        Mub6.monomialEdge, splitIndex, finSumFinEquiv,
        Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, Complex.ext_iff]

/-- UNVERIFIED DRAFT: every completion of the conjugated fixed R0 is
monomially represented by the conjugated canonical assembly. -/
theorem conjugateR0CompletedPhase_monomial_completedConjugateR0Phase
    {B : PartialPhaseBasis}
    (hB : IsPhaseCompletion (conjugatePartialPhaseBasis r0.transpose) B) :
    Mub6.MonomialEquivalent conjugateR0CompletedPhase
      (completedConjugateR0Phase B) := by
  have hs : ProjectivelySameCompletion conjugateR0Completion B :=
    conjugate_r0Completion_unique_checked
      (B := conjugateR0Completion) (C := B)
      conjugateR0Completion_isCompletion hB
  exact joinPartialPhaseBases_monomial_of_projectivelySame
    (conjugatePartialPhaseBasis r0.transpose) hs

/-- UNVERIFIED DRAFT: every completion in the conjugated fixed-R0 branch maps
to the same fixed D0 representative. -/
theorem completedConjugateR0Phase_monomial_d0
    {B : PartialPhaseBasis}
    (hB : IsPhaseCompletion (conjugatePartialPhaseBasis r0.transpose) B) :
    Mub6.MonomialEquivalent (completedConjugateR0Phase B) d0Phase := by
  exact monomialEquivalent_trans
    (Mub6.monomialEquivalent_symm
      (conjugateR0CompletedPhase_monomial_completedConjugateR0Phase hB))
    conjugateR0CompletedPhase_monomial_d0

/-- UNVERIFIED DRAFT: normalized form of the complete conjugated fixed-R0
binding. -/
theorem physical_completedConjugateR0Phase_monomial_d0
    {B : PartialPhaseBasis}
    (hB : IsPhaseCompletion (conjugatePartialPhaseBasis r0.transpose) B) :
    Mub6.MonomialEquivalent
      (physicalNormalize (completedConjugateR0Phase B))
      (physicalNormalize d0Phase) :=
  physicalNormalize_monomialEquivalent
    (completedConjugateR0Phase_monomial_d0 hB)

#print axioms hTimes_phaseHadamard
#print axioms r0_isPartialPhaseBasis
#print axioms r0Completion_isCompletion
#print axioms hTimes_monomial_d0
#print axioms r0CompletedPhase_eq_hTimes_transpose
#print axioms r0CompletedPhase_monomial_d0
#print axioms joinPartialPhaseBases_monomial_of_projectivelySame
#print axioms joinedCompletion_monomial_of_projectivelySame
#print axioms completedR0Phase_monomial_d0
#print axioms conjugateR0Completion_isCompletion
#print axioms conjugateR0CompletedPhase_monomial_d0
#print axioms completedConjugateR0Phase_monomial_d0

end Worker12
