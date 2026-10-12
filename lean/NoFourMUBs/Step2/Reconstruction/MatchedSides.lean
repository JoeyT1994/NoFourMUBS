import NoFourMUBs.Step2.Reconstruction.FourierSignature
import NoFourMUBs.Step2.ActualCorners

set_option autoImplicit false
open Matrix Hadamard6

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction

/-- Construct the two prescribed signed sides. Entrywise flatness of the
forced fourth block is a separate obligation. -/
theorem strict_seed_signed_sides_exist (p : StrictSeed) :
    ∃ B C : Mat3,
      B ∈ invertibleHorizontalCandidates (seedCorner p.1) ∧
      C ∈ invertibleVerticalCandidates (seedCorner p.1) ∧
      2 * sideSignature B = (seedChi p.1 : ℂ) +
        (Real.sqrt (seedR p.1) : ℂ) * Complex.I ∧
      2 * sideSignature C = (seedChi p.1 : ℂ) -
        (Real.sqrt (seedR p.1) : ℂ) * Complex.I := by
  obtain ⟨hR, hchi⟩ := transposedSeed_invariants p.1
  let q : StrictSeed := ⟨transposedSeed p.1, by rw [hR]; exact p.2⟩
  obtain ⟨B, huB, hB0, hgB, htB⟩ :=
    strict_seed_signed_side_exists p (epsilon := 1) (by norm_num)
  obtain ⟨T, huT, hT0, hgT, htT⟩ :=
    strict_seed_signed_side_exists q (epsilon := -1) (by norm_num)
  have hE : seedCorner q.1 = (seedCorner p.1)ᵀ := by
    ext i j
    fin_cases i <;> fin_cases j <;> rfl
  have hB : B ∈ horizontalCandidates (seedCorner p.1) := by
    refine ⟨huB, hB0, ?_⟩
    rw [hgB]
    abel
  have hT : seedCorner q.1 * (seedCorner q.1)ᴴ + T * Tᴴ = sixI3 := by
    rw [hgT]
    abel
  have hC : Tᵀ ∈ verticalCandidates (seedCorner p.1) := by
    refine ⟨(fun i j => huT j i), hT0, ?_⟩
    rw [hE] at hT
    have h := congrArg Matrix.transpose hT
    have hsix : sixI3ᵀ = sixI3 := by simp [sixI3]
    simpa only [Matrix.transpose_add, Matrix.transpose_mul,
      Matrix.conjTranspose_transpose, Matrix.transpose_conjTranspose,
      Matrix.transpose_transpose, Matrix.conjTranspose, Matrix.transpose_map,
      hsix] using h
  have hsT : sideSignature Tᵀ = sideSignature T := by
    rw [sig_cols Tᵀ hT0, sig_rows T hT0]
    rfl
  have hb : 2 * sideSignature B = (seedChi p.1 : ℂ) +
      (Real.sqrt (seedR p.1) : ℂ) * Complex.I := by
    simpa only [Complex.ofReal_one, one_mul] using htB
  have hc : 2 * sideSignature Tᵀ = (seedChi p.1 : ℂ) -
      (Real.sqrt (seedR p.1) : ℂ) * Complex.I := by
    rw [hsT]
    change 2 * sideSignature T = (seedChi (transposedSeed p.1) : ℂ) +
      ((-1 : ℝ) : ℂ) * (Real.sqrt (seedR (transposedSeed p.1)) : ℂ) * Complex.I at htT
    simpa only [hR, hchi, Complex.ofReal_neg, Complex.ofReal_one,
      neg_one_mul, neg_mul, one_mul, sub_eq_add_neg] using htT
  exact ⟨B, Tᵀ, ⟨hB, det_ne_of_sig (im_of_matched p.2 (Or.inl hb))⟩,
    ⟨hC, det_ne_of_sig (im_of_matched p.2 (Or.inr hc))⟩, hb, hc⟩

end NoFourMUBs.Step2.Reconstruction
