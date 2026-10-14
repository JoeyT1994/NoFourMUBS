import Mathlib

/-!
# PR-M, Theorem A: a strict nonmatched completion forces orthogonal column triples

This file proves the linear-algebra core of `PRM.md` §§4.1–4.5 (`orthogonal_triple`).

Setting: `T, B, B0` are `3 × 6` unimodular matrices such that `[T; B]` and `[T; B0]` are `6 × 6`
phase Hadamard matrices (rows orthogonal of squared norm `6`) sharing the top strip `T`. No row of
`B0` is proportional to a row of `B` ("no shared ray"), and no two columns of `T` are proportional.
Conclusion: three columns of `T` are pairwise orthogonal.

Argument, using the column Gram `Q = T* T` (six times the projector `Q` of the paper):

* **Column completeness** (`col_complete`). A square matrix with orthogonal rows also has
  orthogonal columns, so `T* T + B* B = 6`. Also `B0 = U B` for the unitary `U = B0 B* / 6`, and
  `|U_lk| ≠ 1` by the no-shared-ray hypothesis.
* **Step 1** (`exists_weight`, §4.2). Encode a Hermitian `3 × 3` matrix by nine real coordinates
  (`kappa`). The six rank-one matrices `b_j b_j*` (columns of `B`) are orthogonal to four test
  vectors (`rho`) that encode the traceless diagonal functionals in the two bases `B` and `U B`,
  because all entries are unimodular. These four vectors are independent (`no_shared_ray`): a
  nonzero traceless real `Y'` with `U* Y' U` diagonal would put every column of `U` on a level set
  of `Y'` with at least two points, which forces `Y'` to be constant. Ten vectors in `ℝ⁹` are
  dependent, so some real `w ≠ 0` has `Σ_j w_j b_j b_j* = 0`, i.e. `B D_w B* = 0`.
* **Step 2** (`anticommute_of_compl`, §4.3). With `P = 6 - Q = B* B`, we get `P D_w P = 0`.
  Since `Q/6` and `P/6` are complementary projections with equal diagonals, `|P_jk| = |Q_jk|`. The
  Frobenius identity `tr (X D X)(X D X)* ∝ Σ w_j w_k |X_jk|²` then gives `Q D_w Q = 0`. Expanding
  `P D_w P = 0` gives `(w_j + w_k) Q_jk = 0` for `j ≠ k`.
* **Step 3** (`four_le_card_of_closed`, `weights_pm`, §4.4). The level set of `w_j²` through a
  point where `w ≠ 0` and its complement are not connected by `Q`. On such a closed block,
  `Q/3 - 1` is Hermitian with zero diagonal and square `1`. That is impossible in sizes 1 and 3.
  In size 2 it makes two columns of `T` proportional. So both blocks are empty or have at least 4
  elements, which forces all `|w_j|` to be equal and positive.
* **Step 4** (`exists_triple`, §4.5). Some sign class of `w` has three elements. For two of them
  `w_j + w_k = ± 2c ≠ 0`, so `Q_jk = 0`.
-/

open Matrix ComplexConjugate

namespace NoFourMUBs.PRM

local notation "I6" => Fin 3 ⊕ Fin 3

/-- Inner product of rows `k` of `A` and `l` of `B` (3 × 6 matrices). -/
def rowInner (A B : Matrix (Fin 3) I6 ℂ) (k l : Fin 3) : ℂ := ∑ j, A k j * conj (B l j)

/-- Inner product of columns `j, k` of `T`. -/
def colInner (T : Matrix (Fin 3) I6 ℂ) (j k : I6) : ℂ := ∑ i, T i j * conj (T i k)

/-! ### Matrix forms of the hypotheses -/

lemma rowInner_eq (A B : Matrix (Fin 3) I6 ℂ) (k l : Fin 3) :
    rowInner A B k l = (A * Bᴴ) k l := by
  simp [rowInner, mul_apply]

lemma colInner_eq (T : Matrix (Fin 3) I6 ℂ) (j k : I6) :
    colInner T j k = (Tᴴ * T) k j := by
  simp [colInner, mul_apply, mul_comm]

lemma mul_conjTranspose_of_rowInner {A B : Matrix (Fin 3) I6 ℂ} {c : ℂ}
    (h : ∀ k l, rowInner A B k l = if k = l then c else 0) : A * Bᴴ = c • 1 := by
  ext k l
  rw [← rowInner_eq, h]
  simp [one_apply]

/-- Two `3 × 6` strips with orthonormal-up-to-`6` rows, orthogonal to each other, form a square
matrix with orthogonal rows; hence its columns are orthogonal too. -/
lemma col_complete {T B : Matrix (Fin 3) I6 ℂ} (hTT : T * Tᴴ = (6 : ℂ) • 1)
    (hBB : B * Bᴴ = (6 : ℂ) • 1) (hTB : T * Bᴴ = 0) :
    Tᴴ * T + Bᴴ * B = (6 : ℂ) • 1 := by
  set H : Matrix I6 I6 ℂ := fromRows T B
  have hBT : B * Tᴴ = 0 := by
    rw [← conjTranspose_conjTranspose B, ← conjTranspose_mul, hTB, conjTranspose_zero]
  have h1 : ((6 : ℂ)⁻¹ • H) * Hᴴ = 1 := by
    rw [smul_mul_assoc]
    have : H * Hᴴ = (6 : ℂ) • 1 := by
      simp only [H, conjTranspose_fromRows_eq_fromCols_conjTranspose, fromRows_mul_fromCols,
        hTT, hBB, hTB, hBT]
      rw [← fromBlocks_one, fromBlocks_smul, smul_zero]
    rw [this, smul_smul]
    norm_num
  have h2 := mul_eq_one_comm.mp h1
  rw [mul_smul_comm] at h2
  have h3 : Hᴴ * H = (6 : ℂ) • 1 := by
    have := congrArg (fun M => (6 : ℂ) • M) h2
    simpa [smul_smul] using this
  simpa [H, conjTranspose_fromRows_eq_fromCols_conjTranspose, fromCols_mul_fromRows] using h3

/-! ### Step 1: six coordinate effects are linearly dependent -/

/-- Real coordinates (diagonal, then real and imaginary parts of the upper triangle) of the
rank-one Hermitian matrix `b b*`. -/
def kappa (b : Fin 3 → ℂ) : Fin 9 → ℝ :=
  ![Complex.normSq (b 0), Complex.normSq (b 1), Complex.normSq (b 2),
    (b 0 * conj (b 1)).re, (b 0 * conj (b 1)).im, (b 0 * conj (b 2)).re, (b 0 * conj (b 2)).im,
    (b 1 * conj (b 2)).re, (b 1 * conj (b 2)).im]

/-- Coefficient vector of the real functional `M ↦ u M u*` on Hermitian `3 × 3` matrices, in the
coordinates of `kappa`. -/
def rho (u : Fin 3 → ℂ) : Fin 9 → ℝ :=
  ![Complex.normSq (u 0), Complex.normSq (u 1), Complex.normSq (u 2),
    2 * (u 0 * conj (u 1)).re, -2 * (u 0 * conj (u 1)).im,
    2 * (u 0 * conj (u 2)).re, -2 * (u 0 * conj (u 2)).im,
    2 * (u 1 * conj (u 2)).re, -2 * (u 1 * conj (u 2)).im]

lemma rho_dot_kappa (u b : Fin 3 → ℂ) : rho u ⬝ᵥ kappa b = Complex.normSq (u ⬝ᵥ b) := by
  simp only [rho, kappa, dotProduct, Fin.sum_univ_succ, Fin.sum_univ_zero,
    Complex.normSq_apply, Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
    Complex.conj_re, Complex.conj_im]
  simp
  ring

/-- A real function on three points in which every value is repeated at another point is
constant; if it also sums to zero it vanishes. -/
lemma fin3_eq_zero_of_partner (f : Fin 3 → ℝ) (hp : ∀ k, ∃ r, r ≠ k ∧ f r = f k)
    (hs : ∑ k, f k = 0) : f = 0 := by
  obtain ⟨r0, h0, e0⟩ := hp 0
  obtain ⟨r1, h1, e1⟩ := hp 1
  obtain ⟨r2, h2, e2⟩ := hp 2
  have hall : f 0 = f 1 ∧ f 1 = f 2 := by
    fin_cases r0 <;> fin_cases r1 <;> fin_cases r2 <;> simp_all
  rw [Fin.sum_univ_three] at hs
  ext k
  fin_cases k <;> simp <;> linarith [hall.1, hall.2]

/-- **No shared ray.**  Let `U` be a `3 × 3` unitary with no entry of modulus one.  If a real
combination of the diagonal functionals `M ↦ M_kk` and of the functionals `M ↦ (U M U*)_kk`
vanishes on Hermitian matrices, and the second set of coefficients sums to zero, then all
coefficients vanish.  (A nonzero traceless real diagonal `Y'` with `U* Y' U` diagonal would make
every column of `U` supported on a level set of `Y'`, forcing `Y'` constant.) -/
lemma no_shared_ray (U : Matrix (Fin 3) (Fin 3) ℂ) (hU : U * Uᴴ = 1) (hU' : Uᴴ * U = 1)
    (hray : ∀ k l, Complex.normSq (U k l) ≠ 1) (y y' : Fin 3 → ℝ) (hs : ∑ k, y' k = 0)
    (h : ∑ k, y k • rho (Pi.single k 1) + ∑ k, y' k • rho (U k) = 0) : y = 0 ∧ y' = 0 := by
  have hc : ∀ i, (∑ k, y k • rho (Pi.single k 1) + ∑ k, y' k • rho (U k)) i = 0 := fun i => by
    rw [h]; rfl
  have c0 := hc 0
  have c1 := hc 1
  have c2 := hc 2
  have c3 := hc 3
  have c4 := hc 4
  have c5 := hc 5
  have c6 := hc 6
  have c7 := hc 7
  have c8 := hc 8
  simp [rho, Fin.sum_univ_three, Complex.normSq_apply] at c0 c1 c2 c3 c4 c5 c6 c7 c8
  set N := Uᴴ * diagonal (fun k => (y' k : ℂ)) * U with hNdef
  have hNe : ∀ a c, N a c = ∑ k, (y' k : ℂ) * (conj (U k a) * U k c) := by
    intro a c
    simp only [N, mul_apply, diagonal_apply, conjTranspose_apply]
    simp [Fin.sum_univ_three]
    ring
  have hoff : ∀ a c, a ≠ c → N a c = 0 := by
    intro a c hac
    rw [hNe]
    apply Complex.ext <;> fin_cases a <;> fin_cases c <;>
      simp [Fin.sum_univ_three] at hac ⊢ <;>
      first
        | linear_combination (1/2 : ℝ) * c3 | linear_combination (-1/2 : ℝ) * c3
        | linear_combination (1/2 : ℝ) * c4 | linear_combination (-1/2 : ℝ) * c4
        | linear_combination (1/2 : ℝ) * c5 | linear_combination (-1/2 : ℝ) * c5
        | linear_combination (1/2 : ℝ) * c6 | linear_combination (-1/2 : ℝ) * c6
        | linear_combination (1/2 : ℝ) * c7 | linear_combination (-1/2 : ℝ) * c7
        | linear_combination (1/2 : ℝ) * c8 | linear_combination (-1/2 : ℝ) * c8
  have hN : N = diagonal (fun c => N c c) := by
    ext a c
    by_cases hac : a = c
    · subst hac; simp
    · simp [hac, hoff a c hac]
  have hUN : U * N = diagonal (fun k => (y' k : ℂ)) * U := by
    simp only [N, ← Matrix.mul_assoc, hU, Matrix.one_mul]
  have hrel : ∀ k c, (y' k : ℂ) * U k c = N c c * U k c := by
    intro k c
    have := congrFun (congrFun hUN k) c
    rw [hN, mul_diagonal, diagonal_mul] at this
    rw [← this, mul_comm]
  have hpartner : ∀ k, ∃ r, r ≠ k ∧ y' r = y' k := by
    intro k
    have hrow : ∑ c, (Complex.normSq (U k c) : ℂ) = 1 := by
      have := congrFun (congrFun hU k) k
      simpa [mul_apply, Complex.mul_conj] using this
    obtain ⟨c, hc⟩ : ∃ c, U k c ≠ 0 := by
      by_contra hne
      push Not at hne
      simp [hne] at hrow
    have hcol : ∑ r, (Complex.normSq (U r c) : ℂ) = 1 := by
      have := congrFun (congrFun hU' c) c
      simpa [mul_apply, Complex.mul_conj, mul_comm] using this
    obtain ⟨r, hrk, hr⟩ : ∃ r, r ≠ k ∧ U r c ≠ 0 := by
      by_contra hne
      push Not at hne
      have hsingle : ∑ r, (Complex.normSq (U r c) : ℂ) = Complex.normSq (U k c) :=
        Finset.sum_eq_single k (fun r _ hr => by simp [hne r hr]) (by simp)
      exact hray k c (by exact_mod_cast hsingle ▸ hcol)
    refine ⟨r, hrk, ?_⟩
    have ek : (y' k : ℂ) = N c c := mul_right_cancel₀ hc (hrel k c)
    have er : (y' r : ℂ) = N c c := mul_right_cancel₀ hr (hrel r c)
    exact_mod_cast er.trans ek.symm
  have hy' : y' = 0 := fin3_eq_zero_of_partner y' hpartner hs
  subst hy'
  refine ⟨?_, rfl⟩
  simp at c0 c1 c2
  ext k
  fin_cases k <;> simp [c0, c1, c2]

/-- If the real coordinates `kappa` of the six rank-one matrices `b_j b_j*` (columns `b_j` of a
unimodular `B`) satisfy a real linear relation `w`, then `B D_w B* = 0`. -/
lemma weighted_gram_eq_zero (B : Matrix (Fin 3) I6 ℂ) (hB : ∀ i j, Complex.normSq (B i j) = 1)
    (w : I6 → ℝ) (h : ∑ j, w j • kappa (fun i => B i j) = 0) :
    B * diagonal (fun j => (w j : ℂ)) * Bᴴ = 0 := by
  set M := B * diagonal (fun j => (w j : ℂ)) * Bᴴ with hMdef
  have hMe : ∀ k l, M k l = ∑ j, (w j : ℂ) * (B k j * conj (B l j)) := by
    intro k l
    rw [hMdef, mul_apply]
    simp only [mul_diagonal, conjTranspose_apply, Complex.star_def]
    exact Finset.sum_congr rfl fun j _ => by ring
  have hMH : Mᴴ = M := by
    have hD : (diagonal fun j => (w j : ℂ))ᴴ = diagonal fun j => (w j : ℂ) := by
      rw [diagonal_conjTranspose]
      congr 1
      funext j
      simp
    simp only [M, conjTranspose_mul, conjTranspose_conjTranspose, hD, Matrix.mul_assoc]
  have hc : ∀ i, (∑ j, w j • kappa (fun i => B i j)) i = 0 := fun i => by rw [h]; rfl
  have hre : ∀ k l, (∑ j, (w j : ℂ) * (B k j * conj (B l j))).re =
      ∑ j, w j * (B k j * conj (B l j)).re := by
    intro k l; simp [Complex.re_sum]
  have him : ∀ k l, (∑ j, (w j : ℂ) * (B k j * conj (B l j))).im =
      ∑ j, w j * (B k j * conj (B l j)).im := by
    intro k l; simp [Complex.im_sum]
  have hsum : ∑ j, w j = 0 := by
    have := hc 0
    simpa [kappa, Finset.sum_apply, hB] using this
  have hdiag : ∀ k, M k k = 0 := by
    intro k
    rw [hMe]
    simp_rw [Complex.mul_conj, hB]
    simp [← Complex.ofReal_sum, hsum]
  have hupper : ∀ k l, k < l → M k l = 0 := by
    intro k l hkl
    rw [hMe]
    apply Complex.ext
    · rw [hre]
      fin_cases k <;> fin_cases l <;> simp at hkl <;> first
        | simpa [kappa, Finset.sum_apply] using hc 3 | simpa [kappa, Finset.sum_apply] using hc 5
        | simpa [kappa, Finset.sum_apply] using hc 7
    · rw [him]
      fin_cases k <;> fin_cases l <;> simp at hkl <;> first
        | simpa [kappa, Finset.sum_apply] using hc 3 | simpa [kappa, Finset.sum_apply] using hc 4
        | simpa [kappa, Finset.sum_apply] using hc 5 | simpa [kappa, Finset.sum_apply] using hc 6
        | simpa [kappa, Finset.sum_apply] using hc 7 | simpa [kappa, Finset.sum_apply] using hc 8
  ext k l
  rcases lt_trichotomy k l with hkl | rfl | hkl
  · exact hupper k l hkl
  · exact hdiag k
  · have := congrFun (congrFun hMH k) l
    rw [conjTranspose_apply, hupper l k hkl, star_zero] at this
    simpa using this.symm

/-- **Step 1** (PRM §4.2).  If `B` is unimodular and `U` is a unitary with no unimodular entry
such that `U B` is again unimodular, then some nonzero real weight vector `w` satisfies
`B D_w B* = 0`.  The six vectors `kappa (b_j)` and the four vectors encoding the traceless
diagonal functionals of the two bases are ten vectors in `ℝ⁹`; the first six are orthogonal to the
last four, which are independent by `no_shared_ray`. -/
lemma exists_weight (B : Matrix (Fin 3) I6 ℂ) (U : Matrix (Fin 3) (Fin 3) ℂ)
    (hB : ∀ i j, Complex.normSq (B i j) = 1) (hUB : ∀ i j, Complex.normSq ((U * B) i j) = 1)
    (hU : U * Uᴴ = 1) (hU' : Uᴴ * U = 1) (hray : ∀ k l, Complex.normSq (U k l) ≠ 1) :
    ∃ w : I6 → ℝ, w ≠ 0 ∧ B * diagonal (fun j => (w j : ℂ)) * Bᴴ = 0 := by
  let e : Fin 3 → Fin 3 → ℂ := fun k => Pi.single k 1
  let r : Fin 4 → Fin 9 → ℝ :=
    ![rho (e 0) - rho (e 1), rho (e 1) - rho (e 2), rho (U 0) - rho (U 1), rho (U 1) - rho (U 2)]
  let v : I6 → Fin 9 → ℝ := fun j => kappa (fun i => B i j)
  -- every test vector is orthogonal to every coordinate effect
  have hrho : ∀ (x : Fin 3 → ℂ) j, (∃ i, x = e i ∨ x = U i) → rho x ⬝ᵥ v j = 1 := by
    intro x j hx
    simp only [v, rho_dot_kappa]
    obtain ⟨i, rfl | rfl⟩ := hx
    · simp [e, hB]
    · simpa [mul_apply, dotProduct] using hUB i j
  have he : ∀ i j, rho (e i) ⬝ᵥ v j = 1 := fun i j => hrho _ j ⟨i, Or.inl rfl⟩
  have hu : ∀ i j, rho (U i) ⬝ᵥ v j = 1 := fun i j => hrho _ j ⟨i, Or.inr rfl⟩
  have hrv : ∀ i j, r i ⬝ᵥ v j = 0 := by
    intro i j
    fin_cases i <;> simp [r, sub_dotProduct, he, hu]
  -- ten vectors in `ℝ⁹` are dependent
  let F : Fin 4 ⊕ I6 → Fin 9 → ℝ := Sum.elim r v
  have hdep : ¬ LinearIndependent ℝ F := by
    intro hli
    have := hli.fintype_card_le_finrank
    simp at this
  obtain ⟨g, hg, i0, hi0⟩ := Fintype.not_linearIndependent_iff.mp hdep
  rw [Fintype.sum_sum_type] at hg
  simp only [F, Sum.elim_inl, Sum.elim_inr] at hg
  set u := ∑ j, g (Sum.inr j) • v j with hudef
  -- the dependency has no component along the test vectors
  have hur : ∀ i, r i ⬝ᵥ u = 0 := by
    intro i
    simp [u, dotProduct_sum, dotProduct_smul, hrv]
  have hu0 : u = 0 := by
    have h1 : u = -∑ i, g (Sum.inl i) • r i := eq_neg_of_add_eq_zero_right hg
    have : u ⬝ᵥ u = 0 := by
      calc u ⬝ᵥ u = (-∑ i, g (Sum.inl i) • r i) ⬝ᵥ u := by rw [← h1]
        _ = 0 := by simp [neg_dotProduct, sum_dotProduct, smul_dotProduct, hur]
    exact dotProduct_self_eq_zero.mp this
  have hr0 : ∑ i, g (Sum.inl i) • r i = 0 := by
    rw [hu0, add_zero] at hg
    exact hg
  -- so the test-vector coefficients vanish
  let y : Fin 3 → ℝ := ![g (Sum.inl 0), g (Sum.inl 1) - g (Sum.inl 0), -g (Sum.inl 1)]
  let y' : Fin 3 → ℝ := ![g (Sum.inl 2), g (Sum.inl 3) - g (Sum.inl 2), -g (Sum.inl 3)]
  have hexp : ∑ i, g (Sum.inl i) • r i =
      ∑ k, y k • rho (Pi.single k 1) + ∑ k, y' k • rho (U k) := by
    simp only [Fin.sum_univ_four, Fin.sum_univ_three, r, y, y', e]
    simp
    module
  obtain ⟨hy, hy'⟩ := no_shared_ray U hU hU' hray y y'
    (by simp [y', Fin.sum_univ_three]) (hexp ▸ hr0)
  have ha : ∀ i, g (Sum.inl i) = 0 := by
    have h0 := congrFun hy 0
    have h1 := congrFun hy 1
    have h2 := congrFun hy' 0
    have h3 := congrFun hy' 1
    simp [y, y'] at h0 h1 h2 h3
    intro i
    fin_cases i <;> simp <;> linarith
  refine ⟨fun j => g (Sum.inr j), ?_, weighted_gram_eq_zero B hB _ hu0⟩
  rcases i0 with i | j
  · exact absurd (ha i) hi0
  · intro hw
    exact hi0 (congrFun hw j)

/-! ### Step 2: complementarity forces anticommutation -/

section Frobenius

variable {n : Type*} [Fintype n] [DecidableEq n]

lemma trace_diag_mul_diag_mul (A : Matrix n n ℂ) (d : n → ℂ) :
    trace (diagonal d * A * diagonal d * A) = ∑ j, ∑ k, d j * A j k * d k * A k j := by
  simp only [trace, diag_apply]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [mul_apply]
  simp only [mul_diagonal, diagonal_mul]

open scoped ComplexOrder in
/-- **Step 2** (PRM §4.3).  Let `Q` be `6 ×` a Hermitian idempotent with constant diagonal `3`
(so `Q/6` and `1 - Q/6` have equal diagonals), and let `w` be real with
`(6 - Q) D_w (6 - Q) = 0`.  The Frobenius identity `‖X D X‖² = Σ w_j w_k |X_jk|²` transfers this to
`Q D_w Q = 0`, and expanding the hypothesis gives `(w_j + w_k) Q_jk = 0` off the diagonal. -/
lemma anticommute_of_compl (Q : Matrix n n ℂ) (hQH : Qᴴ = Q) (hQQ : Q * Q = (6 : ℂ) • Q)
    (hQd : ∀ j, Q j j = 3) (w : n → ℝ)
    (hP : ((6 : ℂ) • 1 - Q) * diagonal (fun j => (w j : ℂ)) * ((6 : ℂ) • 1 - Q) = 0) :
    ∀ j k, j ≠ k → ((w j : ℂ) + w k) * Q j k = 0 := by
  set D : Matrix n n ℂ := diagonal (fun j => (w j : ℂ)) with hDdef
  set P : Matrix n n ℂ := (6 : ℂ) • 1 - Q with hPdef
  have hDH : Dᴴ = D := by
    rw [hDdef, diagonal_conjTranspose]
    congr 1
    funext j
    simp
  -- `tr (D P D P) = tr (D Q D Q)`, termwise
  have htr : trace (D * P * D * P) = trace (D * Q * D * Q) := by
    rw [trace_diag_mul_diag_mul, trace_diag_mul_diag_mul]
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => ?_
    by_cases hjk : j = k
    · subst hjk
      simp [P, hQd]
      ring
    · simp [P, hjk, Ne.symm hjk]
  have htrP : trace (D * P * D * P) = 0 := by
    have : D * P * D * P = D * (P * D * P) := by simp only [Matrix.mul_assoc]
    rw [this, hP, Matrix.mul_zero, trace_zero]
  -- `Q D Q = 0`
  set X := Q * D * Q with hXdef
  have hXH : Xᴴ = X := by
    simp only [X, conjTranspose_mul, hQH, hDH, Matrix.mul_assoc]
  have hXX : trace (X * Xᴴ) = 0 := by
    rw [hXH]
    have e1 : X * X = (6 : ℂ) • (Q * (D * Q * D * Q)) := by
      calc X * X = Q * D * (Q * Q) * D * Q := by simp only [X, Matrix.mul_assoc]
        _ = (6 : ℂ) • (Q * (D * Q * D * Q)) := by
          rw [hQQ]
          simp only [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_assoc]
    have e2 : D * Q * D * Q * Q = (6 : ℂ) • (D * Q * D * Q) := by
      rw [Matrix.mul_assoc (D * Q * D), hQQ, Matrix.mul_smul]
    rw [e1, trace_smul, trace_mul_comm, e2, trace_smul, ← htr, htrP]
    simp
  have hX0 : X = 0 := by
    exact (trace_mul_conjTranspose_self_eq_zero_iff).mp hXX
  -- expand `P D P = 0`
  have hexp : P * D * P = (36 : ℂ) • D - (6 : ℂ) • (Q * D) - (6 : ℂ) • (D * Q) + X := by
    simp only [P, X, sub_mul, mul_sub, Matrix.smul_mul, Matrix.mul_smul, Matrix.one_mul,
      Matrix.mul_one, smul_smul, Matrix.mul_assoc]
    module
  intro j k hjk
  have := congrFun (congrFun hP j) k
  rw [hexp, hX0] at this
  simp [D, mul_diagonal, diagonal_mul, hjk] at this
  linear_combination (-1 / 6 : ℂ) * this

end Frobenius

/-! ### Step 3: a closed block of columns has at least four elements -/

/-- **Step 3a** (PRM §4.4).  Let `Q` be `6 ×` a Hermitian idempotent on six coordinates with
diagonal `3` and no off-diagonal entry of squared modulus `9`.  A nonempty set `S` of coordinates
that `Q` does not connect to its complement has at least four elements: on `S`, the matrix
`R = Q/3 - 1` is Hermitian with zero diagonal and `R² = 1`, impossible in sizes `1, 2, 3`. -/
lemma four_le_card_of_closed (Q : Matrix I6 I6 ℂ) (hQH : Qᴴ = Q) (hQQ : Q * Q = (6 : ℂ) • Q)
    (hQd : ∀ j, Q j j = 3) (hcol : ∀ j k, j ≠ k → Complex.normSq (Q j k) ≠ 9)
    (S : Finset I6) (hS : ∀ j ∈ S, ∀ k ∉ S, Q j k = 0) (hne : S.Nonempty) : 4 ≤ S.card := by
  have hsq : ∀ j ∈ S, ∀ k, ∑ l ∈ S, Q j l * Q l k = 6 * Q j k := by
    intro j hj k
    have := congrFun (congrFun hQQ j) k
    rw [mul_apply, Matrix.smul_apply, smul_eq_mul] at this
    rw [← this]
    exact Finset.sum_subset (Finset.subset_univ S) fun l _ hl => by rw [hS j hj l hl, zero_mul]
  have hnorm : ∀ j k, Q j k * Q k j = (Complex.normSq (Q j k) : ℂ) := by
    intro j k
    have := congrFun (congrFun hQH k) j
    rw [conjTranspose_apply] at this
    rw [← this, Complex.star_def, Complex.mul_conj]
  have hnorm' : ∀ j k, Q k j * Q j k = (Complex.normSq (Q j k) : ℂ) := by
    intro j k; rw [mul_comm]; exact hnorm j k
  have hsymm : ∀ j k, Complex.normSq (Q k j) = Complex.normSq (Q j k) := by
    intro j k
    have := congrFun (congrFun hQH k) j
    rw [conjTranspose_apply] at this
    rw [← this, Complex.star_def, Complex.normSq_conj]
  by_contra hlt
  push Not at hlt
  have hpos := hne.card_pos
  have hcases : S.card = 1 ∨ S.card = 2 ∨ S.card = 3 := by omega
  rcases hcases with h1 | h2 | h3
  · obtain ⟨a, rfl⟩ := Finset.card_eq_one.mp h1
    have := hsq a (by simp) a
    simp [hQd] at this
  · obtain ⟨a, b, hab, rfl⟩ := Finset.card_eq_two.mp h2
    have e := hsq a (by simp) a
    rw [Finset.sum_pair hab, hQd, hnorm] at e
    have e' := congrArg Complex.re e
    simp at e'
    exact hcol a b hab (by linarith)
  · obtain ⟨a, b, c, hab, hac, hbc, rfl⟩ := Finset.card_eq_three.mp h3
    have hsum : ∀ f : I6 → ℂ, ∑ l ∈ ({a, b, c} : Finset I6), f l = f a + f b + f c := by
      intro f
      rw [Finset.sum_insert (by simp [hab, hac]), Finset.sum_pair hbc, add_assoc]
    have eaa := hsq a (by simp) a
    have ebb := hsq b (by simp) b
    have ecc := hsq c (by simp) c
    have eab := hsq a (by simp) b
    rw [hsum] at eaa ebb ecc eab
    rw [hQd, hnorm a b, hnorm a c] at eaa
    rw [hQd, hnorm' a b, hnorm b c] at ebb
    rw [hQd, hnorm' a c, hnorm' b c] at ecc
    rw [hQd, hQd] at eab
    have raa := congrArg Complex.re eaa
    have rbb := congrArg Complex.re ebb
    have rcc := congrArg Complex.re ecc
    simp at raa rbb rcc
    have hprod : Q a c * Q c b = 0 := by linear_combination eab
    rcases mul_eq_zero.mp hprod with h | h
    · have : Complex.normSq (Q a c) = 0 := by simp [h]
      linarith
    · have : Complex.normSq (Q c b) = 0 := by simp [h]
      rw [hsymm] at this
      linarith

/-- **Step 3b** (PRM §4.4–4.5).  If additionally `w ≠ 0` and `(w_j + w_k) Q_jk = 0` off the
diagonal, then all `|w_j|` are equal and positive: the level set of `w_j²` through a point where
`w ≠ 0` and its complement are both closed, so the complement is empty. -/
lemma weights_pm (Q : Matrix I6 I6 ℂ) (hQH : Qᴴ = Q) (hQQ : Q * Q = (6 : ℂ) • Q)
    (hQd : ∀ j, Q j j = 3) (hcol : ∀ j k, j ≠ k → Complex.normSq (Q j k) ≠ 9)
    (w : I6 → ℝ) (hw : w ≠ 0) (hanti : ∀ j k, j ≠ k → ((w j : ℂ) + w k) * Q j k = 0) :
    ∃ c : ℝ, 0 < c ∧ ∀ j, w j = c ∨ w j = -c := by
  obtain ⟨j0, hj0⟩ := Function.ne_iff.mp hw
  have hprop : ∀ j k, w j ^ 2 ≠ w k ^ 2 → Q j k = 0 := by
    intro j k hjk
    have hne : j ≠ k := by rintro rfl; exact hjk rfl
    have hsum : ((w j : ℂ) + w k) ≠ 0 := by
      rw [← Complex.ofReal_add, Complex.ofReal_ne_zero]
      intro h
      apply hjk
      rw [show w k = -w j by linarith]
      ring
    exact (mul_eq_zero.mp (hanti j k hne)).resolve_left hsum
  set A := Finset.univ.filter (fun j => w j ^ 2 = w j0 ^ 2) with hA
  have hAc : Aᶜ = ∅ := by
    by_contra hne
    have h1 := four_le_card_of_closed Q hQH hQQ hQd hcol A
      (fun j hj k hk => hprop j k (by
        simp only [A, Finset.mem_filter, Finset.mem_univ, true_and] at hj hk
        rw [hj]
        exact fun h => hk h.symm)) ⟨j0, by simp [A]⟩
    have h2 := four_le_card_of_closed Q hQH hQQ hQd hcol Aᶜ
      (fun j hj k hk => hprop j k (by
        simp only [A, Finset.mem_compl, Finset.mem_filter, Finset.mem_univ, true_and,
          not_not] at hj hk
        rw [hk]
        exact hj))
      (Finset.nonempty_iff_ne_empty.mpr hne)
    have h3 := Finset.card_compl A
    simp at h3
    omega
  refine ⟨|w j0|, abs_pos.mpr (by simpa using hj0), fun j => ?_⟩
  have hj : j ∈ A := by
    by_contra h
    have : j ∈ Aᶜ := Finset.mem_compl.mpr h
    simp [hAc] at this
  have hsq : w j ^ 2 = w j0 ^ 2 := by simpa [A] using hj
  have habs : |w j| = |w j0| := (sq_eq_sq_iff_abs_eq_abs _ _).mp hsq
  exact (abs_eq (abs_nonneg _)).mp habs

/-! ### Step 4: two orthogonal triples -/

/-- **Step 4** (PRM §4.5).  If all `w_j = ± c` with `c > 0` and `(w_j + w_k) Q_jk = 0` off the
diagonal, then some sign class contains three points, and `Q` vanishes between any two of them. -/
lemma exists_triple (Q : Matrix I6 I6 ℂ) (w : I6 → ℝ) (c : ℝ) (hc : 0 < c)
    (hpm : ∀ j, w j = c ∨ w j = -c) (hanti : ∀ j k, j ≠ k → ((w j : ℂ) + w k) * Q j k = 0) :
    ∃ a b d : I6, a ≠ b ∧ a ≠ d ∧ b ≠ d ∧ Q b a = 0 ∧ Q d a = 0 ∧ Q d b = 0 := by
  -- a set on which `w` is constant (and nonzero) has `Q = 0` between distinct points
  have key : ∀ S : Finset I6, 3 ≤ S.card → (∀ j ∈ S, ∀ k ∈ S, w j = w k) →
      ∃ a b d : I6, a ≠ b ∧ a ≠ d ∧ b ≠ d ∧ Q b a = 0 ∧ Q d a = 0 ∧ Q d b = 0 := by
    intro S hS hconst
    obtain ⟨t, htS, ht⟩ := Finset.exists_subset_card_eq hS
    obtain ⟨a, b, d, hab, had, hbd, rfl⟩ := Finset.card_eq_three.mp ht
    have hz : ∀ j ∈ S, ∀ k ∈ S, j ≠ k → Q j k = 0 := by
      intro j hj k hk hjk
      have hwj : w j ≠ 0 := by rcases hpm j with h | h <;> rw [h] <;> linarith
      have hsum : ((w j : ℂ) + w k) ≠ 0 := by
        rw [← Complex.ofReal_add, Complex.ofReal_ne_zero, ← hconst j hj k hk]
        intro h
        exact hwj (by linarith)
      exact (mul_eq_zero.mp (hanti j k hjk)).resolve_left hsum
    have ha : a ∈ S := htS (by simp)
    have hb : b ∈ S := htS (by simp)
    have hd : d ∈ S := htS (by simp)
    exact ⟨a, b, d, hab, had, hbd, hz b hb a ha (Ne.symm hab), hz d hd a ha (Ne.symm had),
      hz d hd b hb (Ne.symm hbd)⟩
  set S := Finset.univ.filter (fun j => w j = c) with hSdef
  have hcard := Finset.card_compl S
  simp at hcard
  by_cases h3 : 3 ≤ S.card
  · exact key S h3 fun j hj k hk => by simp [S] at hj hk; rw [hj, hk]
  · refine key Sᶜ (by omega) fun j hj k hk => ?_
    simp [S] at hj hk
    rw [(hpm j).resolve_left hj, (hpm k).resolve_left hk]

/-! ### Assembly -/

/-- **Theorem A, linear-algebra core** (PRM §§4.1–4.5).  Two `6 × 6` phase Hadamard matrices
`[T; B]` and `[T; B0]` share the top strip `T`, no row of `B0` is proportional to a row of `B`, and
no two columns of `T` are proportional.  Then `T` has three pairwise orthogonal columns. -/
theorem orthogonal_triple (T B B0 : Matrix (Fin 3) I6 ℂ)
    (hT : ∀ i j, Complex.normSq (T i j) = 1) (hB : ∀ i j, Complex.normSq (B i j) = 1)
    (hB0 : ∀ i j, Complex.normSq (B0 i j) = 1)
    (hTT : ∀ k l, rowInner T T k l = if k = l then 6 else 0)
    (hBB : ∀ k l, rowInner B B k l = if k = l then 6 else 0)
    (hB0B0 : ∀ k l, rowInner B0 B0 k l = if k = l then 6 else 0)
    (hTB : ∀ k l, rowInner T B k l = 0) (hTB0 : ∀ k l, rowInner T B0 k l = 0)
    (hray : ∀ k l, Complex.normSq (rowInner B0 B l k) ≠ 36)
    (hcol : ∀ j k, j ≠ k → Complex.normSq (colInner T j k) ≠ 9) :
    ∃ a b c : I6, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
      colInner T a b = 0 ∧ colInner T a c = 0 ∧ colInner T b c = 0 := by
  -- matrix forms of the hypotheses
  have hTT' := mul_conjTranspose_of_rowInner hTT
  have hBB' := mul_conjTranspose_of_rowInner hBB
  have hB0B0' := mul_conjTranspose_of_rowInner hB0B0
  have hTB' : T * Bᴴ = 0 := by ext k l; rw [← rowInner_eq, hTB]; rfl
  have hTB0' : T * B0ᴴ = 0 := by ext k l; rw [← rowInner_eq, hTB0]; rfl
  have hcomp := col_complete hTT' hBB' hTB'
  -- the column Gram `Q = T* T` (six times the projector of PRM §4.1)
  set Q : Matrix I6 I6 ℂ := Tᴴ * T with hQdef
  have hQH : Qᴴ = Q := by simp [Q, conjTranspose_mul]
  have hQQ : Q * Q = (6 : ℂ) • Q := by
    calc Q * Q = Tᴴ * (T * Tᴴ) * T := by simp only [Q, Matrix.mul_assoc]
      _ = (6 : ℂ) • Q := by rw [hTT']; simp [Q]
  have hQd : ∀ j, Q j j = 3 := by
    intro j
    simp only [Q, mul_apply, conjTranspose_apply, Complex.star_def]
    simp_rw [mul_comm (conj _), Complex.mul_conj, hT]
    simp
  have hcolQ : ∀ j k, j ≠ k → Complex.normSq (Q j k) ≠ 9 := by
    intro j k hjk
    have := hcol k j (Ne.symm hjk)
    rwa [colInner_eq] at this
  -- the change of basis `U = B0 B* / 6` between the two bottom-row bases
  set U : Matrix (Fin 3) (Fin 3) ℂ := (6 : ℂ)⁻¹ • (B0 * Bᴴ) with hUdef
  clear_value U
  have hB0T : B0 * Tᴴ = 0 := by
    rw [← conjTranspose_conjTranspose B0, ← conjTranspose_mul, hTB0', conjTranspose_zero]
  have hUB : U * B = B0 := by
    have hBB : Bᴴ * B = (6 : ℂ) • 1 - Tᴴ * T := eq_sub_of_add_eq' hcomp
    calc U * B = (6 : ℂ)⁻¹ • (B0 * (Bᴴ * B)) := by
          rw [hUdef]; simp only [Matrix.smul_mul, Matrix.mul_assoc]
      _ = B0 := by
        rw [hBB, Matrix.mul_sub, Matrix.mul_smul, Matrix.mul_one, ← Matrix.mul_assoc, hB0T,
          Matrix.zero_mul, sub_zero, smul_smul]
        norm_num
  have hU : U * Uᴴ = 1 := by
    have h6 : (6 : ℂ) • (U * Uᴴ) = (6 : ℂ) • 1 := by
      calc (6 : ℂ) • (U * Uᴴ) = U * (B * Bᴴ) * Uᴴ := by
            rw [hBB', Matrix.mul_smul, Matrix.mul_one, Matrix.smul_mul]
        _ = (U * B) * (U * B)ᴴ := by simp only [conjTranspose_mul, Matrix.mul_assoc]
        _ = (6 : ℂ) • 1 := by rw [hUB, hB0B0']
    exact smul_right_injective _ (by norm_num : (6 : ℂ) ≠ 0) h6
  have hU' : Uᴴ * U = 1 := mul_eq_one_comm.mp hU
  have hrayU : ∀ k l, Complex.normSq (U k l) ≠ 1 := by
    intro k l h
    apply hray l k
    have hkl : U k l = (6 : ℂ)⁻¹ * rowInner B0 B k l := by
      rw [rowInner_eq]; simp [hUdef]
    rw [hkl, Complex.normSq_mul, Complex.normSq_inv] at h
    have h6 : Complex.normSq (6 : ℂ) = 36 := by
      rw [show (6 : ℂ) = ((6 : ℝ) : ℂ) by norm_num, Complex.normSq_ofReal]; norm_num
    rw [h6] at h
    linarith
  have hUB1 : ∀ i j, Complex.normSq ((U * B) i j) = 1 := by
    intro i j; rw [hUB]; exact hB0 i j
  -- Step 1: a nonzero real weight with `B D_w B* = 0`
  obtain ⟨w, hw, hBw⟩ := exists_weight B U hB hUB1 hU hU' hrayU
  -- Step 2: `(w_j + w_k) Q_jk = 0` off the diagonal
  have hP : ((6 : ℂ) • 1 - Q) * diagonal (fun j => (w j : ℂ)) * ((6 : ℂ) • 1 - Q) = 0 := by
    rw [← eq_sub_of_add_eq' hcomp]
    calc Bᴴ * B * diagonal (fun j => (w j : ℂ)) * (Bᴴ * B)
        = Bᴴ * (B * diagonal (fun j => (w j : ℂ)) * Bᴴ) * B := by simp only [Matrix.mul_assoc]
      _ = 0 := by rw [hBw, Matrix.mul_zero, Matrix.zero_mul]
  have hanti := anticommute_of_compl Q hQH hQQ hQd w hP
  -- Steps 3 and 4
  obtain ⟨c, hc, hpm⟩ := weights_pm Q hQH hQQ hQd hcolQ w hw hanti
  obtain ⟨a, b, d, hab, had, hbd, h1, h2, h3⟩ := exists_triple Q w c hc hpm hanti
  exact ⟨a, b, d, hab, had, hbd, by rw [colInner_eq]; exact h1, by rw [colInner_eq]; exact h2,
    by rw [colInner_eq]; exact h3⟩

end NoFourMUBs.PRM
