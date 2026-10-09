import NoFourMUBs.Skeleton

/-!
# Quartet edges are invariant under Hadamard equivalence

Upstream `Hadamard6.Equivalent H K` means `K i j = r i * H (σ i) (τ j) * c j` with unit phases `r`, `c` and permutations
`σ`, `τ`.  If `K₁, L₁` witness that `H` is a quartet edge, then the row-transformed bases `i j ↦ r i * K₁ (σ i) j` witness
that `K` is one.  The key identity: a row permutation with phases preserves Gram products, `(ρ M)ᴴ (ρ N) = Mᴴ N`.
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-- Row permutation `σ` with unit phases `r`. -/
def rowOp (σ : Equiv.Perm I6) (r : I6 → ℂ) (M : Mat6) : Mat6 := Matrix.of fun i j => r i * M (σ i) j

lemma star_mul_self_of_normSq {z : ℂ} (h : Complex.normSq z = 1) : star z * z = 1 := by
  have := Complex.normSq_eq_conj_mul_self (z := z)
  rw [h] at this; exact_mod_cast this.symm

lemma rowOp_gram {σ : Equiv.Perm I6} {r : I6 → ℂ} (hr : ∀ i, Complex.normSq (r i) = 1) (M N : Mat6) :
    (rowOp σ r M)ᴴ * rowOp σ r N = Mᴴ * N := by
  ext j l
  simp only [rowOp, Matrix.mul_apply, conjTranspose_apply, of_apply, star_mul']
  have h : ∀ i, star (r i) * star (M (σ i) j) * (r i * N (σ i) l) = star (M (σ i) j) * N (σ i) l := fun i => by
    calc _ = (star (r i) * r i) * (star (M (σ i) j) * N (σ i) l) := by ring
      _ = _ := by rw [star_mul_self_of_normSq (hr i), one_mul]
  rw [Finset.sum_congr rfl (fun i _ => h i)]
  exact Equiv.sum_comp σ (fun k => star (M k j) * N k l)

lemma isUnitary_rowOp {σ : Equiv.Perm I6} {r : I6 → ℂ} (hr : ∀ i, Complex.normSq (r i) = 1) {U : Mat6}
    (hU : IsUnitary U) : IsUnitary (rowOp σ r U) := by
  have h2 : (rowOp σ r U)ᴴ * rowOp σ r U = 1 := by rw [rowOp_gram hr, hU.2]
  exact ⟨mul_eq_one_comm.mp h2, h2⟩

lemma unbiased_one_rowOp {σ : Equiv.Perm I6} {r : I6 → ℂ} (hr : ∀ i, Complex.normSq (r i) = 1) {U : Mat6}
    (hU : Unbiased 1 U) : Unbiased 1 (rowOp σ r U) := by
  intro i j
  have := hU (σ i) j
  simp only [conjTranspose_one, Matrix.one_mul] at this ⊢
  simp [rowOp, Complex.normSq_mul, hr i, this]

lemma unbiased_rowOp {σ : Equiv.Perm I6} {r : I6 → ℂ} (hr : ∀ i, Complex.normSq (r i) = 1) {U V : Mat6}
    (h : Unbiased U V) : Unbiased (rowOp σ r U) (rowOp σ r V) := by
  intro i j; rw [rowOp_gram hr]; exact h i j

/-- The matrix `K` of an equivalence, written as a column operation applied to a row operation of `H`. -/
lemma equivalent_form {H K : Mat6} {σ τ : Equiv.Perm I6} {r c : I6 → ℂ}
    (hK : ∀ i j, K i j = r i * H (σ i) (τ j) * c j) :
    ∀ i j, K i j = rowOp σ r H i (τ j) * c j := by
  intro i j; simp [rowOp, hK]

/-- Quartet edges are invariant under Hadamard equivalence. -/
theorem quartetEdge_of_equivalent {H K : Mat6} (hHK : Equivalent H K) (hq : QuartetEdge H) :
    QuartetEdge K := by
  obtain ⟨σ, τ, r, c, hr, hc, hK⟩ := hHK
  obtain ⟨K₁, L₁, hK₁, hL₁, h1K, h1L, hHK₁, hHL₁, hKL⟩ := hq
  set s : ℂ := (((Real.sqrt 6 : ℝ) : ℂ))⁻¹
  -- entries of (s • K)ᴴ * rowOp W  are phase multiples of entries of (s • H)ᴴ * W
  have key : ∀ W : Mat6, ∀ j l,
      ((s • K)ᴴ * rowOp σ r W) j l = star (c j) * (((s • H)ᴴ * W) (τ j) l) := by
    intro W j l
    have hg := congrFun (congrFun (rowOp_gram (σ := σ) hr (s • H) W) (τ j)) l
    rw [← hg]
    simp only [Matrix.mul_apply, conjTranspose_apply, Matrix.smul_apply, smul_eq_mul, rowOp, of_apply,
      Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hK i j]; simp only [star_mul']; ring
  have hcc : ∀ j, Complex.normSq (star (c j)) = 1 := fun j => by simpa [Complex.normSq_conj] using hc j
  refine ⟨rowOp σ r K₁, rowOp σ r L₁, isUnitary_rowOp hr hK₁, isUnitary_rowOp hr hL₁,
    unbiased_one_rowOp hr h1K, unbiased_one_rowOp hr h1L, ?_, ?_, unbiased_rowOp hr hKL⟩
  · intro j l; rw [key, Complex.normSq_mul, hcc, one_mul]; exact hHK₁ (τ j) l
  · intro j l; rw [key, Complex.normSq_mul, hcc, one_mul]; exact hHL₁ (τ j) l

/-- If `H` is Hadamard and a quartet edge, so is `Hᴴ`: left-multiplying the four bases by `Hᴴ/√6` swaps `1` and `H/√6`. -/
theorem quartetEdge_conjTranspose {H : Mat6} (hH : Hadamard6.IsHadamard H) (hq : QuartetEdge H) :
    QuartetEdge Hᴴ := by
  obtain ⟨K, L, hK, hL, h1K, h1L, hHK, hHL, hKL⟩ := hq
  set s : ℂ := (((Real.sqrt 6 : ℝ) : ℂ))⁻¹
  have hs_star : star s = s := by simp [s, Complex.conj_ofReal]
  have hss : s * s * 6 = 1 := by
    have h6 : (((Real.sqrt 6 : ℝ) : ℂ)) * (((Real.sqrt 6 : ℝ) : ℂ)) = 6 := by
      rw [← Complex.ofReal_mul, Real.mul_self_sqrt (by norm_num)]; norm_num
    simp only [s]; rw [← mul_inv, h6]; norm_num
  set W : Mat6 := s • H
  have hW1 : W * Wᴴ = 1 := by
    simp only [W, conjTranspose_smul, Matrix.smul_mul, Matrix.mul_smul, smul_smul, hs_star, hH.2]
    rw [← mul_assoc, hss, one_smul]
  have hW2 : Wᴴ * W = 1 := mul_eq_one_comm.mp hW1
  have hWu : IsUnitary W := ⟨hW1, hW2⟩
  have hWadj : Wᴴ = s • Hᴴ := by simp [W, conjTranspose_smul, hs_star]
  refine ⟨Wᴴ * K, Wᴴ * L, isUnitary_frame hWu hK, isUnitary_frame hWu hL, ?_, ?_, ?_, ?_,
    unbiased_frame hW1 hKL⟩
  · have := unbiased_frame hW1 hHK; rwa [hW2] at this
  · have := unbiased_frame hW1 hHL; rwa [hW2] at this
  · have e : Wᴴ * 1 = s • Hᴴ := by rw [Matrix.mul_one, hWadj]
    have := unbiased_frame hW1 h1K; rw [e] at this; exact this
  · have e : Wᴴ * 1 = s • Hᴴ := by rw [Matrix.mul_one, hWadj]
    have := unbiased_frame hW1 h1L; rw [e] at this; exact this

lemma conjM_conjTranspose_eq_transpose (H : Mat6) : conjM Hᴴ = Hᵀ := by
  ext i j; simp [conjM]

lemma isHadamard_conjTranspose {H : Mat6} (hH : Hadamard6.IsHadamard H) : Hadamard6.IsHadamard Hᴴ := by
  refine ⟨fun i j => by simpa [Complex.normSq_conj] using hH.1 j i, ?_⟩
  have h1 : ((((6 : ℂ))⁻¹) • H) * Hᴴ = 1 := by rw [Matrix.smul_mul, hH.2, smul_smul]; norm_num
  have h2 : Hᴴ * ((((6 : ℂ))⁻¹) • H) = 1 := mul_eq_one_comm.mp h1
  rw [conjTranspose_conjTranspose]
  have : Hᴴ * H = (6 : ℂ) • ((((6 : ℂ))⁻¹) • (Hᴴ * H)) := by rw [smul_smul]; norm_num
  rw [this, ← Matrix.mul_smul, h2]

/-- Transposition preserves quartet edges (Hadamard case). -/
theorem quartetEdge_transpose {H : Mat6} (hH : Hadamard6.IsHadamard H) (hq : QuartetEdge H) :
    QuartetEdge Hᵀ := by
  rw [← conjM_conjTranspose_eq_transpose]; exact quartetEdge_conjM (quartetEdge_conjTranspose hH hq)

lemma conjM_transpose_eq_conjTranspose (H : Mat6) : conjM Hᵀ = Hᴴ := by
  ext i j; simp [conjM]

/-- `Γ` preserves Hadamard quartet edges. -/
theorem inGamma_preserves {H G : Mat6} (hG : InGamma H G) (hH : Hadamard6.IsHadamard H) (hq : QuartetEdge H) :
    Hadamard6.IsHadamard G ∧ QuartetEdge G := by
  have hT : Hadamard6.IsHadamard Hᵀ := by
    rw [← conjM_conjTranspose_eq_transpose]; exact isHadamard_conjM (isHadamard_conjTranspose hH)
  rcases hG with rfl | rfl | rfl | rfl
  · exact ⟨hH, hq⟩
  · exact ⟨isHadamard_conjM hH, quartetEdge_conjM hq⟩
  · exact ⟨hT, quartetEdge_transpose hH hq⟩
  · rw [conjM_transpose_eq_conjTranspose]
    exact ⟨isHadamard_conjTranspose hH, quartetEdge_conjTranspose hH hq⟩

end NoFourMUBs
