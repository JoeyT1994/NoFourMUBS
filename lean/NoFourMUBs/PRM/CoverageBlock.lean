import NoFourMUBs.PRM.CoverageFourierLocus
import NoFourMUBs.PRM.FourierBlock

/-!
# An all-critical matrix with a `3 × 3` Hadamard block is `F6`

Both Fourier-routing lemmas of `PRM.md` §7.1 end by exhibiting a `3 × 3` Hadamard submatrix (the block
`F`).  Here we prove what follows from such a block for an all-critical matrix:

* `tao_or_fourier_of_block`: a Hadamard matrix whose top rows contain a `3 × 3` Hadamard block is in
  Tao's orbit, or is equivalent to a core Fourier matrix `fourierCore ω x y` or to its transpose
  (`PRM.md` §5.1–5.3, via upstream's normalization and `FourierBlock.fourierNormalForm_tao_or_character`,
  with the character forms `v_form_*`, `w_form_*` of `FourierMatch`);
* `tao_not_allCritical`: Tao's matrix has a strict corner (its right block has signature `−9 + 9ω`);
* `equivalent_F6_of_block`: **an all-critical Hadamard matrix with a `3 × 3` Hadamard submatrix is
  equivalent to `F6`** (with `CoverageFourierLocus`).
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

/-! ### A Hadamard block: Tao or Fourier -/

/-- `H` is equivalent to a core Fourier matrix or to its transpose. -/
def InFourierFamily (H : Mat6) : Prop :=
  ∃ ω x y : ℂ, IsPrimitiveCubicPhase ω ∧ Complex.normSq x = 1 ∧ Complex.normSq y = 1 ∧
    (Equivalent H (fourierCore ω x y) ∨ Equivalent H (fourierCore ω x y)ᵀ)

/-- **Fourier critical locus, for the whole family up to equivalence.** -/
theorem equivalent_F6_of_fourierFamily {H : Mat6} (hF : InFourierFamily H) (hc : AllCritical H) :
    Equivalent H Step2.fourierHadamard.1 := by
  obtain ⟨ω, x, y, hω, hx, hy, hK | hK⟩ := hF
  · exact equivalent_trans hK (fourierCore_criticalLocus hω hx hy (allCritical_of_equivalent hK hc))
  · exact equivalent_trans hK
      (fourierCore_transpose_criticalLocus hω hx hy (allCritical_of_equivalent hK hc))

/-- `PRM.md` §5.1–5.3: a Hadamard matrix whose top three rows contain a `3 × 3` Hadamard block (on the
columns `τ (inr ·)`) is in Tao's orbit or in the Fourier family. -/
theorem tao_or_fourier_of_block (H : Mat6) (hH : Hadamard6.IsHadamard H) (τ : Equiv.Perm I6)
    (h3 : IsHadamard3 (Matrix.toBlocks₁₂ (H.submatrix id τ))) :
    IsTaoOrbit H ∨ InFourierFamily H := by
  have hHH' : Equivalent H (H.submatrix id τ) :=
    equivalent_reindexMatrix (Equiv.refl I6) τ H
  have hH' : Hadamard6.IsHadamard (H.submatrix id τ) := isHadamard_of_equivalent hHH' hH
  obtain ⟨n₃⟩ := simultaneous_threeBlockFourierNormalization _ hH'
    (allFourBlocksHadamard_of_topRight hH' h3)
  let n := n₃.toNormalization
  have hω : IsPrimitiveCubicPhase n.ω := ⟨n.omega_unit, n.omega_quadratic⟩
  have hHK : Equivalent H n.K := equivalent_trans hHH' n.equivalent
  have hK := n.hK
  rw [n.normalForm] at hHK hK
  have back : ∀ {M : Mat6} (σ τ : Equiv.Perm I6), Equivalent H (M.submatrix σ τ) → Equivalent H M :=
    fun σ τ h => equivalent_trans h (equivalent_symm (equivalent_reindexMatrix σ τ _))
  rcases fourierNormalForm_tao_or_character hω n.p_unit n.q_unit n.r_unit n.s_unit hK with
    hT | hc | hc
  · exact Or.inl (isTaoOrbit_of_equivalent hHK hT)
  · refine Or.inr ⟨n.ω, n.r, n.s, hω, n.r_unit, n.s_unit, Or.inl ?_⟩
    rcases hc with ⟨hp, hq⟩ | ⟨hp, hq⟩ | ⟨hp, hq⟩ <;> rw [hp, hq] at hHK
    · rw [v_form_one hω] at hHK; exact back _ _ hHK
    · rw [v_form_sq hω] at hHK; exact back _ _ hHK
    · rw [v_form_om hω] at hHK; exact back _ _ hHK
  · refine Or.inr ⟨n.ω, n.p, n.q, hω, n.p_unit, n.q_unit, Or.inr ?_⟩
    rcases hc with ⟨hr, hs⟩ | ⟨hr, hs⟩ | ⟨hr, hs⟩ <;> rw [hr, hs] at hHK
    · rw [w_form_one hω] at hHK; exact back _ _ hHK
    · rw [w_form_sq hω] at hHK; exact back _ _ hHK
    · rw [w_form_om hω] at hHK; exact back _ _ hHK

/-- Three rows `r` and three columns `c` of `H` (both injective) form a `3 × 3` Hadamard matrix. -/
def HasHadamardBlock (H : Mat6) : Prop :=
  ∃ σ τ : Equiv.Perm I6, IsHadamard3 (Step2.rightBlock (H.submatrix σ τ))

/-- **An all-critical Hadamard matrix with a `3 × 3` Hadamard submatrix is equivalent to `F6`.** -/
theorem equivalent_F6_of_block {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H)
    (hb : HasHadamardBlock H) : Equivalent H Step2.fourierHadamard.1 := by
  obtain ⟨σ, τ, h3⟩ := hb
  have hHσ : Equivalent H (H.submatrix σ id) := equivalent_reindexMatrix σ (Equiv.refl I6) H
  have hσ : Hadamard6.IsHadamard (H.submatrix σ id) := isHadamard_of_equivalent hHσ hH
  rcases tao_or_fourier_of_block (H.submatrix σ id) hσ τ h3 with hT | hF
  · exact absurd hc (not_allCritical_of_taoOrbit (isTaoOrbit_of_equivalent hHσ hT))
  · exact equivalent_trans hHσ
      (equivalent_F6_of_fourierFamily hF (allCritical_of_equivalent hHσ hc))

end NoFourMUBs.PRM.Coverage
