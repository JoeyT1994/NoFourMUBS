import NoFourMUBs.Step2.Reconstruction.ThirdMoment.WeightedDefect
import NoFourMUBs.Step2.AnchorTransport

set_option autoImplicit false
set_option maxHeartbeats 1500000
open Matrix Hadamard6 NoFourMUBs.Step1Geo
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- Relabel the corner rows and columns, with the same relabelling of its sides. -/
theorem candidates_permuted {E B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E)
    (hC : C ∈ invertibleVerticalCandidates E)
    (π τ : Equiv.Perm (Fin 3)) (hπ : π 0 = 0) (hτ : τ 0 = 0) :
    B.submatrix π (Equiv.refl _) ∈ invertibleHorizontalCandidates (E.submatrix π τ) ∧
    C.submatrix (Equiv.refl _) τ ∈ invertibleVerticalCandidates (E.submatrix π τ) := by
  constructor
  · refine ⟨⟨(fun i j => hB.1.1 (π i) j), ?_, ?_⟩, ?_⟩
    · intro j
      simpa only [Matrix.submatrix_apply,hπ,Equiv.refl_apply] using hB.1.2.1 j
    · calc
        _ = (E*Eᴴ+B*Bᴴ).submatrix π π := by
          simp only [Matrix.conjTranspose_submatrix,Matrix.submatrix_mul_equiv]
          rfl
        _ = sixI3 := by
          rw [hB.1.2.2]
          simp only [sixI3,Matrix.submatrix_smul,Pi.smul_apply,Matrix.submatrix_one_equiv]
    · apply (Matrix.isUnit_iff_isUnit_det _).mp
      exact (Matrix.isUnit_submatrix_equiv π (Equiv.refl _)).mpr
        ((Matrix.isUnit_iff_isUnit_det B).mpr hB.2)
  · refine ⟨⟨(fun i j => hC.1.1 i (τ j)), ?_, ?_⟩, ?_⟩
    · intro i
      simpa only [Matrix.submatrix_apply,hτ,Equiv.refl_apply] using hC.1.2.1 i
    · calc
        _ = (Eᴴ*E+Cᴴ*C).submatrix τ τ := by
          simp only [Matrix.conjTranspose_submatrix,Matrix.submatrix_mul_equiv]
          rfl
        _ = sixI3 := by
          rw [hC.1.2.2]
          simp only [sixI3,Matrix.submatrix_smul,Pi.smul_apply,Matrix.submatrix_one_equiv]
    · apply (Matrix.isUnit_iff_isUnit_det _).mp
      exact (Matrix.isUnit_submatrix_equiv (Equiv.refl _) τ).mpr
        ((Matrix.isUnit_iff_isUnit_det C).mpr hC.2)

/-- These relabellings leave the forced fourth block unchanged. -/
theorem forcedD_permuted (E B C : Mat3) (π τ : Equiv.Perm (Fin 3)) :
    forcedD (E.submatrix π τ) (B.submatrix π (Equiv.refl _))
      (C.submatrix (Equiv.refl _) τ) = forcedD E B C := by
  unfold forcedD
  rw [Matrix.inv_submatrix_equiv B π (Equiv.refl _)]
  simp only [Matrix.conjTranspose_submatrix,neg_mul]
  congr 1
  rw [Matrix.submatrix_mul_equiv,Matrix.submatrix_mul_equiv]
  rfl

/-- The corresponding weighted defect is just reindexed. -/
theorem weightedDefect_permuted (B C D : Mat3) (π τ : Equiv.Perm (Fin 3)) :
    weightedDefect (B.submatrix π (Equiv.refl _))
      (C.submatrix (Equiv.refl _) τ) D = (weightedDefect B C D).submatrix τ π := by
  simp only [weightedDefect,Matrix.conjTranspose_submatrix]
  change Cᴴ.submatrix τ (Equiv.refl _) *
    (flatnessDefect D).submatrix (Equiv.refl _) (Equiv.refl _) *
    Bᴴ.submatrix (Equiv.refl _) π = _
  rw [Matrix.submatrix_mul_equiv,Matrix.submatrix_mul_equiv]

private def swapChoice (b : Bool) : Equiv.Perm (Fin 3) :=
  if b then Equiv.swap 1 2 else Equiv.refl _

private def swapSeed (p : Seed) (rows cols : Bool) : Seed :=
  let q := if cols then mC12 p else p
  if rows then mR12 q else q

private theorem swapChoice_zero (b : Bool) : swapChoice b 0 = 0 := by
  cases b <;> simp [swapChoice,Equiv.swap_apply_def]

private theorem swapSeed_interface (p : Seed) (rows cols : Bool) :
    seedCorner (swapSeed p rows cols) =
      (seedCorner p).submatrix (swapChoice rows) (swapChoice cols) ∧
    seedR (swapSeed p rows cols) = seedR p := by
  have hr (q : Seed) : seedR (mR12 q) = seedR q := (move_invariants 0 q).1
  have hc (q : Seed) : seedR (mC12 q) = seedR q := (move_invariants 1 q).1
  constructor
  · ext i j
    cases rows <;> cases cols <;> fin_cases i <;> fin_cases j <;>
      simp [swapSeed,swapChoice,seedCorner,corner,mR12,mC12,Equiv.swap_apply_def]
  · cases rows <;> cases cols <;> simp [swapSeed,hr,hc]

/-- A universal proof of W11 suffices for all four weighted entries. The swaps
fix the normalized row and column and preserve strictness and matching. -/
theorem flatness_of_one_weighted_identity
    (h : ∀ (p : StrictSeed) (B C : Mat3),
      B ∈ invertibleHorizontalCandidates (seedCorner p.1) →
      C ∈ invertibleVerticalCandidates (seedCorner p.1) →
      sideSignature C = conj (sideSignature B) →
      weightedDefect B C (forcedD (seedCorner p.1) B C) 1 1 = 0)
    (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1))
    (hsig : sideSignature C = conj (sideSignature B)) :
    EntrywiseUnit (forcedD (seedCorner p.1) B C) := by
  have hall (rows cols : Bool) :
      weightedDefect B C (forcedD (seedCorner p.1) B C)
        (if cols then 2 else 1) (if rows then 2 else 1) = 0 := by
    obtain ⟨hE,hR⟩ := swapSeed_interface p.1 rows cols
    let q : StrictSeed := ⟨swapSeed p.1 rows cols, by rw [hR]; exact p.2⟩
    obtain ⟨hb,hc⟩ := candidates_permuted hB hC (swapChoice rows) (swapChoice cols)
      (swapChoice_zero rows) (swapChoice_zero cols)
    rw [← hE] at hb hc
    have hs : sideSignature (C.submatrix (Equiv.refl _) (swapChoice cols)) =
        conj (sideSignature (B.submatrix (swapChoice rows) (Equiv.refl _))) := by
      rw [sideSignature_submatrix,sideSignature_submatrix]
      exact hsig
    have hw := h q _ _ hb hc hs
    change weightedDefect _ _ (forcedD (seedCorner (swapSeed p.1 rows cols)) _ _) 1 1 = 0 at hw
    rw [hE,forcedD_permuted,weightedDefect_permuted] at hw
    cases rows <;> cases cols <;> simpa [swapChoice] using hw
  apply forcedD_entrywiseUnit_of_four_weighted_defects hB hC
  intro i j hi hj
  fin_cases i <;> fin_cases j
  all_goals try contradiction
  · exact hall false false
  · exact hall true false
  · exact hall false true
  · exact hall true true

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
