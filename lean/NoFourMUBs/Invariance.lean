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

end NoFourMUBs
