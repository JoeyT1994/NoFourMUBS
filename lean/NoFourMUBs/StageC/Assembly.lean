import NoFourMUBs.StageC.Basic

/-!
# Stage C: assembly (C5 of `proof/atlas/STAGEC.md`)

A quartet edge `H` gives twelve flat vectors (the columns of the two further bases, scaled by `√6`): each is
unbiased to every column of `H`, the six of one basis are pairwise orthogonal, and every cross pair is unbiased.

Stage C certifies three properties of a family of labels `𝔅(v_a, s_a)`, `a : α`, and two relations `O`, `U`:
* **Cover** (C1–C3): every flat vector unbiased to all columns of `H` lies in some label;
* **Edges** (C4): if vectors of labels `a`, `b` (both unbiased to all columns of `H`) are orthogonal, then `O a b`;
  if unbiased, then `U a b`;
* **Graph** (C5): there are no two `O`-cliques of size six with all cross pairs in `U`.

With labels of radius `< 1/10` (distinct labels), these exclude `H` as a quartet edge (`not_quartetEdge`).
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

/-- `w` is unbiased to every column of `H`: `|Σ_j H̄_ji w_j|² = 6` for all `i`. -/
def ColUnb (H : Mat6) (w : I6 → ℂ) : Prop := ∀ i, ‖∑ j, star (H j i) * w j‖ ^ 2 = 6

/-- No two `O`-cliques of size six with all cross pairs in `U` (checked exhaustively by `two_cliques`). -/
def NoTwoCliques {α : Type*} (O U : α → α → Prop) : Prop :=
  ¬ ∃ A B : I6 → α, Function.Injective A ∧ Function.Injective B ∧
    (∀ i j, i ≠ j → O (A i) (A j)) ∧ (∀ i j, i ≠ j → O (B i) (B j)) ∧ ∀ i j, U (A i) (B j)

/-! ### Twelve flat vectors from a quartet edge -/

lemma sqrt6_mul_sqrt6 : ((Real.sqrt 6 : ℝ) : ℂ) * ((Real.sqrt 6 : ℝ) : ℂ) = 6 := by
  rw [← Complex.ofReal_mul, Real.mul_self_sqrt (by norm_num)]; norm_num

lemma star_sqrt6 : star ((Real.sqrt 6 : ℝ) : ℂ) = ((Real.sqrt 6 : ℝ) : ℂ) := by
  simp [Complex.conj_ofReal]

/-- Columns of a basis unbiased to `I`, scaled by `√6`. -/
noncomputable def scol (K : Mat6) (k : I6) : I6 → ℂ := fun j => ((Real.sqrt 6 : ℝ) : ℂ) * K j k

lemma ip_scol (K L : Mat6) (k l : I6) : ip (scol K k) (scol L l) = 6 * (Kᴴ * L) k l := by
  simp only [ip, scol, star_mul', star_sqrt6, Matrix.mul_apply, conjTranspose_apply, Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [← sqrt6_mul_sqrt6]; ring

lemma flat_scol {K : Mat6} (h : Unbiased 1 K) (k : I6) : Flat (scol K k) := by
  intro j
  have hj := h j k
  rw [conjTranspose_one, Matrix.one_mul, Complex.normSq_eq_norm_sq] at hj
  rw [scol, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (Real.sqrt_nonneg 6)]
  have h0 : 0 ≤ ‖K j k‖ := norm_nonneg _
  have h6 : Real.sqrt 6 ^ 2 = 6 := Real.sq_sqrt (by norm_num)
  have : (Real.sqrt 6 * ‖K j k‖) ^ 2 = 1 := by rw [mul_pow, h6, hj]; norm_num
  nlinarith [Real.sqrt_nonneg 6, mul_nonneg (Real.sqrt_nonneg 6) h0]

lemma orth_scol {K : Mat6} (h : IsUnitary K) {k k' : I6} (hk : k ≠ k') : ip (scol K k) (scol K k') = 0 := by
  rw [ip_scol, h.2, Matrix.one_apply_ne hk, mul_zero]

lemma unb_scol {K L : Mat6} (h : Unbiased K L) (k l : I6) : ‖ip (scol K k) (scol L l)‖ ^ 2 = 6 := by
  have hkl := h k l
  rw [Complex.normSq_eq_norm_sq] at hkl
  rw [ip_scol, norm_mul, mul_pow, hkl]; norm_num

lemma colUnb_scol {H K : Mat6} (h : Unbiased (((Real.sqrt 6 : ℂ))⁻¹ • H) K) (k : I6) :
    ColUnb H (scol K k) := by
  intro i
  have hik := h i k
  rw [Complex.normSq_eq_norm_sq] at hik
  have e : ∑ j, star (H j i) * scol K k j = 6 * ((((Real.sqrt 6 : ℂ))⁻¹ • H)ᴴ * K) i k := by
    simp only [scol, Matrix.mul_apply, conjTranspose_apply, Matrix.smul_apply, smul_eq_mul, star_mul',
      Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    have hs : star ((Real.sqrt 6 : ℂ))⁻¹ = ((Real.sqrt 6 : ℂ))⁻¹ := by
      rw [star_inv₀]; congr 1; exact star_sqrt6
    rw [hs]
    have hne : ((Real.sqrt 6 : ℝ) : ℂ) ≠ 0 := sqrt6_ne_zero
    field_simp
    rw [← sqrt6_mul_sqrt6]; ring
  rw [e, norm_mul, mul_pow, hik]; norm_num

/-! ### Assembly -/

/-- **Stage C soundness, assembly.**  Cover, Edges and Graph, with labels of radius `< 1/10`, exclude `H`. -/
theorem not_quartetEdge {α : Type*} {H : Mat6} {v : α → I6 → ℝ} {s : α → ℝ} {O U : α → α → Prop}
    (hsmall : ∀ a, s a < 1 / 10)
    (hcover : ∀ w, Flat w → ColUnb H w → ∃ a, InLabel (v a) (s a) w)
    (hO : ∀ a b w w', Flat w → Flat w' → ColUnb H w → ColUnb H w' →
      InLabel (v a) (s a) w → InLabel (v b) (s b) w' → ip w w' = 0 → O a b)
    (hU : ∀ a b w w', Flat w → Flat w' → ColUnb H w → ColUnb H w' →
      InLabel (v a) (s a) w → InLabel (v b) (s b) w' → ‖ip w w'‖ ^ 2 = 6 → U a b)
    (hgraph : NoTwoCliques O U) : ¬ QuartetEdge H := by
  rintro ⟨K, L, hK, hL, h1K, h1L, hHK, hHL, hKL⟩
  have cov : ∀ (M : Mat6), Unbiased 1 M → Unbiased (((Real.sqrt 6 : ℂ))⁻¹ • H) M →
      ∀ k, ∃ a, InLabel (v a) (s a) (scol M k) :=
    fun M h1 hH k => hcover _ (flat_scol h1 k) (colUnb_scol hH k)
  choose A hA using cov K h1K hHK
  choose B hB using cov L h1L hHL
  have hr6 : (0 : ℝ) ≤ Real.sqrt 6 := Real.sqrt_nonneg 6
  have inj : ∀ (M : Mat6) (C : I6 → α), IsUnitary M → (∀ k, InLabel (v (C k)) (s (C k)) (scol M k)) →
      Function.Injective C := by
    intro M C hM hC k k' hkk'
    by_contra hne
    have hgt := norm_ip_gt_of_inLabel (hsmall (C k)) (hC k) (hkk' ▸ hC k')
    rw [orth_scol hM hne, norm_zero] at hgt
    linarith
  refine hgraph ⟨A, B, inj K A hK hA, inj L B hL hB, ?_, ?_, ?_⟩
  · intro i j hij
    exact hO _ _ _ _ (flat_scol h1K i) (flat_scol h1K j) (colUnb_scol hHK i) (colUnb_scol hHK j)
      (hA i) (hA j) (orth_scol hK hij)
  · intro i j hij
    exact hO _ _ _ _ (flat_scol h1L i) (flat_scol h1L j) (colUnb_scol hHL i) (colUnb_scol hHL j)
      (hB i) (hB j) (orth_scol hL hij)
  · intro i j
    exact hU _ _ _ _ (flat_scol h1K i) (flat_scol h1L j) (colUnb_scol hHK i) (colUnb_scol hHL j)
      (hA i) (hB j) (unb_scol hKL i j)

end NoFourMUBs.StageC
