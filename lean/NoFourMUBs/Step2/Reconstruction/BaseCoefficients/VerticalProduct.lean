import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Centered
import NoFourMUBs.Step2.ActualCorners

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.BaseCoefficients
open Matrix Hadamard6 StrictReconstruction20261007.SideIntrinsic

/-- Reuse the column Gram equation as the row Gram equation of the transpose. -/
theorem vertical_candidate_transposed (p : Seed) {C : Mat3}
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p)) :
    Cᵀ ∈ invertibleHorizontalCandidates (seedCorner (transposedSeed p)) := by
  have hE : seedCorner (transposedSeed p) = (seedCorner p)ᵀ := by
    ext i j
    fin_cases i <;> fin_cases j <;> rfl
  refine ⟨⟨(fun i j => hC.1.1 j i),hC.1.2.1,?_⟩,?_⟩
  · rw [hE]
    have h := congrArg Matrix.transpose hC.1.2.2
    have hsix : sixI3ᵀ = sixI3 := by simp [sixI3]
    simpa only [Matrix.transpose_add,Matrix.transpose_mul,
      Matrix.conjTranspose_transpose,Matrix.transpose_conjTranspose,hsix] using h
  · simpa only [Matrix.det_transpose] using hC.2

/-- The same checked product formula on the opposite signed side. -/
theorem vertical_product_centered (p : StrictSeed) {C : Mat3}
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1)) (w : ℂ)
    (hsig : 2*sideSignature C = (seedChi p.1 : ℂ) - w) :
    rowU (rowsOfSide Cᵀ) =
      (cachedU (p.1 0) (p.1 2) (p.1 1) (p.1 3) -
        cachedDelta (p.1 0) (p.1 2) (p.1 1) (p.1 3) /
          cachedC6 (p.1 0) (p.1 2) (p.1 1) (p.1 3)*w)/2 := by
  let q : StrictSeed := ⟨transposedSeed p.1,
    by rw [(transposedSeed_invariants p.1).1]; exact p.2⟩
  have hCT := vertical_candidate_transposed p.1 hC
  have hs : sideSignature Cᵀ = sideSignature C := by
    rw [sig_rows Cᵀ hC.1.2.1,sig_cols C hC.1.2.1]
    rfl
  have hsig' : 2*sideSignature Cᵀ = (seedChi q.1 : ℂ) + (-w) := by
    rw [hs]
    change 2*sideSignature C = (seedChi (transposedSeed p.1) : ℂ) + (-w)
    rw [(transposedSeed_invariants p.1).2]
    exact hsig
  have hp := candidate_product_centered q hCT (-w) hsig'
  change rowU (rowsOfSide Cᵀ) =
    (cachedU (p.1 0) (p.1 2) (p.1 1) (p.1 3) +
      cachedDelta (p.1 0) (p.1 2) (p.1 1) (p.1 3) /
        cachedC6 (p.1 0) (p.1 2) (p.1 1) (p.1 3)*(-w))/2 at hp
  simpa only [mul_neg,← sub_eq_add_neg] using hp

/-- The exact affine-minus product used by the original cached companion.
Its displayed horizontal-gap divisor remains an explicit generic guard. -/
theorem matched_product_affine (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1)) (w : ℂ)
    (hsB : 2*sideSignature B = (seedChi p.1 : ℂ) + w)
    (hsC : 2*sideSignature C = (seedChi p.1 : ℂ) - w)
    (hd : cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) ≠ 0) :
    rowU (rowsOfSide Cᵀ) =
      (cachedU (p.1 0) (p.1 2) (p.1 1) (p.1 3) -
        (cachedDelta (p.1 0) (p.1 2) (p.1 1) (p.1 3) *
          cachedC6 (p.1 0) (p.1 1) (p.1 2) (p.1 3) /
          (cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) *
            cachedC6 (p.1 0) (p.1 2) (p.1 1) (p.1 3))) *
        (2*rowU (rowsOfSide B) - cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3)))/2 := by
  let q : StrictSeed := ⟨transposedSeed p.1,
    by rw [(transposedSeed_invariants p.1).1]; exact p.2⟩
  have hh := cachedC6_strict p
  have hv := cachedC6_strict q
  change cachedC6 (p.1 0) (p.1 2) (p.1 1) (p.1 3) ≠ 0 at hv
  rw [vertical_product_centered p hC w hsC,candidate_product_centered p hB w hsB]
  field_simp [hd,hh,hv]
  <;> ring

end NoFourMUBs.Step2.Reconstruction.BaseCoefficients
