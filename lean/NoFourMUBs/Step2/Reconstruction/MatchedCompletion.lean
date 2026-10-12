import NoFourMUBs.Step2.Reconstruction.MatchedSides
import NoFourMUBs.Step2.Reconstruction.ForcedRowNorms
import NoFourMUBs.Reuse.Archive.SideVerticalCandidates
import Hadamard6.FiniteCornerConsequences

set_option autoImplicit false
open Matrix Hadamard6
open scoped BigOperators

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction

/-- The repository's completion theorem in our matched-seed model.
The fourth block's unit-entry condition remains an explicit input. -/
theorem matched_completion_of_flat_signed_sides (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1))
    (hplus : 2 * sideSignature B = (seedChi p.1 : ℂ) +
      (Real.sqrt (seedR p.1) : ℂ) * Complex.I)
    (hminus : 2 * sideSignature C = (seedChi p.1 : ℂ) -
      (Real.sqrt (seedR p.1) : ℂ) * Complex.I)
    (hflat : EntrywiseUnit (forcedD (seedCorner p.1) B C)) :
    ∃ H : Had6, Matched p H := by
  have hR := (transposedSeed_invariants p.1).1
  let q : StrictSeed := ⟨transposedSeed p.1, by rw [hR]; exact p.2⟩
  have hE : seedCorner q.1 = (seedCorner p.1)ᵀ := by
    ext i j
    fin_cases i <;> fin_cases j <;> rfl
  have hRt := strict_seed_invariant_pos q
  rw [hE] at hRt
  have hfinB := StrictReconstruction20261007.SideIntrinsic.strict_horizontal_candidates_finite
    (seedCorner p.1) (seedCorner_entrywiseUnit p.1) (strict_seed_invariant_pos p)
  have hfinC := StrictReconstruction20261007.SideIntrinsic.strict_vertical_candidates_finite
    (seedCorner p.1) (seedCorner_entrywiseUnit p.1) hRt
  have hfinite : IsFiniteDilationCorner (seedCorner p.1) :=
    ⟨⟨B, hB⟩, ⟨C, hC⟩, hfinB.subset (fun _ h => h.1),
      hfinC.subset (fun _ h => h.1)⟩
  let d : CornerData :=
    ⟨p.1 0, p.1 1, p.1 2, p.1 3, Circle.normSq_coe _, Circle.normSq_coe _,
      Circle.normSq_coe _, Circle.normSq_coe _⟩
  have hret : Retained d.matrix B C := ⟨hfinite, hB, hC, hflat⟩
  have hH : Hadamard6.IsHadamard (completion (seedCorner p.1) B C) :=
    retained_completion_isHadamard (p := d) (B := B) (C := C) hret
  refine ⟨⟨completion (seedCorner p.1) B C, hH⟩, ⟨?_, ?_⟩, rfl, hplus, hminus⟩
  · intro j
    cases j with
    | inl j => exact cornerData_firstRow d j
    | inr j => exact hB.1.2.1 j
  · intro i
    cases i with
    | inl i => exact cornerData_firstColumn d i
    | inr i => exact hC.1.2.1 i

/-- The existing completion construction now needs only the row-product
norms: the row sums follow from the candidate Gram identities. -/
theorem matched_completion_of_row_products (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1))
    (hplus : 2 * sideSignature B = (seedChi p.1 : ℂ) +
      (Real.sqrt (seedR p.1) : ℂ) * Complex.I)
    (hminus : 2 * sideSignature C = (seedChi p.1 : ℂ) -
      (Real.sqrt (seedR p.1) : ℂ) * Complex.I)
    (hprod : ∀ i, Complex.normSq (∏ j, forcedD (seedCorner p.1) B C i j) = 1) :
    ∃ H : Had6, Matched p H :=
  matched_completion_of_flat_signed_sides p (B := B) (C := C)
    hB hC hplus hminus (forcedD_entrywiseUnit_of_row_products hB hC hprod)

#print axioms matched_completion_of_row_products

end NoFourMUBs.Step2.Reconstruction
