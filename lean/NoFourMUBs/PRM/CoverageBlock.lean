import NoFourMUBs.PRM.CoverageCorners
import NoFourMUBs.PRM.FourierBlock
import NoFourMUBs.Step2.FourierFamily

/-!
# An all-critical matrix with a `3 × 3` Hadamard block is in the Fourier family

Both Fourier-routing lemmas of `PRM.md` §7.1 end by exhibiting a `3 × 3` Hadamard submatrix (the block
`F`).  Here we prove what follows from such a block for an all-critical matrix:

* `tao_not_allCritical`: Tao's matrix has a strict corner (its right block has signature `−9 + 9ω`);
* `inFourierFamily_of_block`: **an all-critical Hadamard matrix with a `3 × 3` Hadamard submatrix is in
  the Fourier family** (`Step2.InFourierFamily`), by `FourierBlock.tao_or_fourier_of_block`.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

/-! ### Tao's matrix is not all-critical -/

theorem im_ne_zero_of_primitive {ω : ℂ} (hω : IsPrimitiveCubicPhase ω) : ω.im ≠ 0 := by
  intro h
  have h2 := congrArg Complex.re hω.2
  simp only [Complex.add_re, sq, Complex.mul_re, h, mul_zero, sub_zero, Complex.one_re,
    Complex.zero_re] at h2
  nlinarith [sq_nonneg (ω.re + 1 / 2)]

/-- The right block of Tao's matrix has side signature `−9 + 9ω`. -/
theorem tao_sig {ω : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    Step2.sideSignature (Step2.rightBlock (taoMatrix ω)) = -9 + 9 * ω := by
  have hs : conj ω = ω ^ 2 := primitiveCubicPhase_star hω
  rw [Step2.sideSignature, Step2.permanent3_expand, Matrix.det_fin_three]
  simp [Fin.prod_univ_three, Step2.rightBlock, taoMatrix, hs]
  linear_combination (-3 * ω ^ 30 + 13 * ω ^ 29 - 21 * ω ^ 28 + 12 * ω ^ 27 + 8 * ω ^ 26 -
    18 * ω ^ 25 + 9 * ω ^ 24 + 9 * ω ^ 23 - 18 * ω ^ 22 + 9 * ω ^ 21 + 9 * ω ^ 20 - 18 * ω ^ 19 +
    9 * ω ^ 18 + 9 * ω ^ 17 - 18 * ω ^ 16 + 9 * ω ^ 15 + 9 * ω ^ 14 - 18 * ω ^ 13 + 9 * ω ^ 12 +
    9 * ω ^ 11 - 18 * ω ^ 10 + 9 * ω ^ 9 + 9 * ω ^ 8 - 18 * ω ^ 7 + 9 * ω ^ 6 + 9 * ω ^ 5 -
    18 * ω ^ 4 + 9 * ω ^ 3 + 9 * ω ^ 2 - 18 * ω + 9) * hω.2

theorem tao_not_allCritical {ω : ℂ} (hω : IsPrimitiveCubicPhase ω) : ¬ AllCritical (taoMatrix ω) := by
  intro h
  have h0 := h (Equiv.refl _) (Equiv.refl _)
  simp only [Equiv.coe_refl, Matrix.submatrix_id_id] at h0
  rw [tao_sig hω] at h0
  simp only [Complex.add_im, Complex.neg_im, Complex.mul_im] at h0
  norm_num at h0
  exact im_ne_zero_of_primitive hω h0

theorem not_allCritical_of_taoOrbit {H : Mat6} (hT : IsTaoOrbit H) : ¬ AllCritical H := by
  obtain ⟨ω, hω, hHT⟩ := hT
  exact fun h => tao_not_allCritical hω (allCritical_of_equivalent hHT h)

/-! ### A Hadamard block -/

/-- Three rows `r` and three columns `c` of `H` (both injective) form a `3 × 3` Hadamard matrix. -/
def HasHadamardBlock (H : Mat6) : Prop :=
  ∃ σ τ : Equiv.Perm I6, IsHadamard3 (Step2.rightBlock (H.submatrix σ τ))

/-- **An all-critical Hadamard matrix with a `3 × 3` Hadamard submatrix is in the Fourier family.** -/
theorem inFourierFamily_of_block {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H)
    (hb : HasHadamardBlock H) : Step2.InFourierFamily H := by
  obtain ⟨σ, τ, h3⟩ := hb
  have hHσ : Equivalent H (H.submatrix σ id) := equivalent_reindexMatrix σ (Equiv.refl I6) H
  have hσ : Hadamard6.IsHadamard (H.submatrix σ id) := isHadamard_of_equivalent hHσ hH
  rcases tao_or_fourier_of_block (H.submatrix σ id) hσ τ h3 with hT | hF
  · exact absurd hc (not_allCritical_of_taoOrbit (isTaoOrbit_of_equivalent hHσ hT))
  · exact hF.of_equivalent hHσ

end NoFourMUBs.PRM.Coverage
