import NoFourMUBs.FourierVanishing.Square
import NoFourMUBs.FourierVanishing.Jacobi
import NoFourMUBs.FourierVanishing.Duality
import NoFourMUBs.PRM.Defs

/-!
# The complementary-invariant criterion (return H, §§4–6)

Throughout, `K` is a Hadamard matrix whose rows have been arranged so that the row triple `I` of the report is
`inl` (the top three rows) and `Iᶜ` is `inr`.  Column splits `(J, Jᶜ)` are permutations `τ` of `I6`, as in
`Duality`.

* `topA K`, `botA K` (4.2): `(A_I)_{aj} = K_{aj}² conj (∏_{b ∈ I} K_{bj})`, and likewise for `Iᶜ`.
* `dual_of_cornerConj` (4.4): conjugate signatures at every split (`CornerConj K`, from (0.2)) give
  `det A_I[:,J] = sign τ · (conj (det K) / 216) · conj (det A_{Iᶜ}[:,Jᶜ])`.  The proof combines (3.2) with
  Jacobi (4.1); a singular block is handled by (3.1).
* `readout` (5.4): `(A_I A_{Iᶜ}†)_{rs}` is the Fourier moment of the row triple `{r} ∪ (Iᶜ \ {s})`.
* `mixed_moments` (§5): if some `A_I[:,J]` is nonsingular, the nine moments `mixedSet r s` vanish.
* `exists_exchange` (6.1) and `good_swap` (§6): the nonsingular square minor survives one row exchange.
-/

open Matrix Equiv Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.FourierVanishing

/-- `A_I` for the top three rows (4.2). -/
def topA (K : Mat6) : Matrix (Fin 3) I6 ℂ := Matrix.of fun a j => K (.inl a) j ^ 2 * conj (∏ b, K (.inl b) j)

/-- `A_{Iᶜ}` for the bottom three rows (4.2). -/
def botA (K : Mat6) : Matrix (Fin 3) I6 ℂ := Matrix.of fun a j => K (.inr a) j ^ 2 * conj (∏ b, K (.inr b) j)

/-- The block `H[I, J]` at the split `τ`. -/
def blockE (K : Mat6) (τ : Perm I6) : Mat3 := Matrix.of fun i j => K (.inl i) (τ (.inl j))

/-- The block `H[Iᶜ, Jᶜ]` at the split `τ`. -/
def blockD (K : Mat6) (τ : Perm I6) : Mat3 := Matrix.of fun i j => K (.inr i) (τ (.inr j))

/-- **(0.2)** for the row triple `inl`: conjugate signatures at every column split. -/
def CornerConj (K : Mat6) : Prop :=
  ∀ τ : Perm I6, Step2.sideSignature (blockE K τ) = conj (Step2.sideSignature (blockD K τ))

/-- The column permutation exchanging the two halves. -/
abbrev swapHalves : Perm I6 := Equiv.sumComm I3 I3

/-- `PRM.AllCornersMatched` gives (0.2) for every row arrangement. -/
theorem cornerConj_of_matched {H : Mat6} (h : PRM.AllCornersMatched H) (σ : Perm I6) :
    CornerConj (H.submatrix σ id) := fun τ => h σ (τ * swapHalves)

lemma entrywiseUnit_blockE {K : Mat6} (hK : EntrywiseUnit K) (τ : Perm I6) : EntrywiseUnit (blockE K τ) :=
  fun _ _ => hK _ _

lemma entrywiseUnit_blockD {K : Mat6} (hK : EntrywiseUnit K) (τ : Perm I6) : EntrywiseUnit (blockD K τ) :=
  fun _ _ => hK _ _

lemma det_leftMinor_topA (K : Mat6) (τ : Perm I6) :
    (leftMinor (topA K) τ).det = (sqMat (blockE K τ)).det * conj (cellProd (blockE K τ)) := by
  have : leftMinor (topA K) τ = sqMat (blockE K τ) * diagonal (fun j => conj (∏ i, blockE K τ i j)) := by
    ext i j; simp [leftMinor, topA, sqMat, blockE, mul_diagonal]
  rw [this, det_mul, det_diagonal, cellProd]
  simp only [map_prod]
  rw [Finset.prod_comm]

lemma det_rightMinor_botA (K : Mat6) (τ : Perm I6) :
    (rightMinor (botA K) τ).det = (sqMat (blockD K τ)).det * conj (cellProd (blockD K τ)) := by
  have : rightMinor (botA K) τ = sqMat (blockD K τ) * diagonal (fun j => conj (∏ i, blockD K τ i j)) := by
    ext i j; simp [rightMinor, botA, sqMat, blockD, mul_diagonal]
  rw [this, det_mul, det_diagonal, cellProd]
  simp only [map_prod]
  rw [Finset.prod_comm]

lemma isHadamard_submatrix_col {K : Mat6} (hK : Hadamard6.IsHadamard K) (τ : Perm I6) :
    Hadamard6.IsHadamard (K.submatrix id τ) :=
  reindexMatrix_isHadamard (σ := Equiv.refl I6) (τ := τ) hK

lemma conj_sign (τ : Perm I6) : conj ((Perm.sign τ : ℤ) : ℂ) = ((Perm.sign τ : ℤ) : ℂ) := by
  rw [map_intCast]

/-- **(4.4)** Conjugate corners make the Plücker vectors of `A_I` and `conj A_{Iᶜ}` complementary-dual. -/
theorem dual_of_cornerConj {K : Mat6} (hK : Hadamard6.IsHadamard K) (hc : CornerConj K) :
    Dual (topA K) ((botA K).map conj) (conj K.det / 216) := by
  intro τ
  have hRm : (rightMinor ((botA K).map conj) τ).det = conj (rightMinor (botA K) τ).det := by
    rw [RingHom.map_det]; rfl
  rw [hRm, det_leftMinor_topA, det_rightMinor_botA]
  set L := K.submatrix id τ
  have hL := (isHadamard_submatrix_col hK τ).2
  set E := blockE K τ
  set D := blockD K τ
  have hE : toBlocks₁₁ L = E := by ext i j; rfl
  have hD : toBlocks₂₂ L = D := by ext i j; rfl
  have hJ := jacobi L hL
  rw [hE, hD] at hJ
  have hN := det_mul_conj_det L hL
  have hdL : L.det = ((Perm.sign τ : ℤ) : ℂ) * K.det := det_permute' τ K
  have hcdL : conj L.det = ((Perm.sign τ : ℤ) : ℂ) * conj K.det := by rw [hdL, map_mul, conj_sign]
  have uE := entrywiseUnit_blockE hK.1 τ
  have uD := entrywiseUnit_blockD hK.1 τ
  by_cases h0 : E.det = 0
  · have hD0 : D.det = 0 := by
      rw [h0, map_zero, mul_zero] at hJ
      exact (mul_eq_zero.1 hJ.symm).resolve_left (by norm_num)
    rw [det_sqMat_eq_zero E uE h0, det_sqMat_eq_zero D uD hD0]; simp
  · have e1 := det_mul_det_sqMat E uE
    have e2 := congrArg conj (det_mul_det_sqMat D uD)
    simp only [map_mul, map_sub, map_neg, map_ofNat, Complex.conj_conj] at e2
    have m := hc τ
    have hJc := congrArg conj hJ
    simp only [map_mul, map_ofNat, Complex.conj_conj] at hJc
    apply mul_left_cancel₀ h0
    rw [show ((Perm.sign τ : ℤ) : ℂ) * (conj K.det / 216) = conj L.det / 216 by rw [hcdL]; ring]
    simp only [map_mul, Complex.conj_conj]
    linear_combination e1 - e2 - m -
      (conj (sqMat D).det * cellProd D / 216 + 2 * L.det * conj E.det / 46656) * hJc +
      (2 * E.det * conj E.det / 46656) * hN - (2 * conj D.det / 216) * hJ

/-! ### Moments -/

/-- The Fourier moment `6 M_T(K) = Σ_j ∏_{x ∈ T} K_{xj} ∏_{x ∉ T} conj K_{xj}`. -/
def moment (K : Mat6) (T : Finset I6) : ℂ := ∑ j, ∏ x, if x ∈ T then K x j else conj (K x j)

/-- The row triple `{inl r} ∪ (inr \ {inr s})`. -/
def mixedSet (r s : Fin 3) : Finset I6 := insert (.inl r) ((Finset.univ.erase s).map Function.Embedding.inr)

lemma moment_compl (K : Mat6) (T : Finset I6) : moment K Tᶜ = conj (moment K T) := by
  simp only [moment, map_sum, map_prod]
  refine Finset.sum_congr rfl fun j _ => Finset.prod_congr rfl fun x _ => ?_
  by_cases hx : x ∈ T <;> simp [hx]

lemma moment_submatrix (K : Mat6) (σ : Perm I6) (T : Finset I6) :
    moment (K.submatrix σ id) T = moment K (T.map σ.toEmbedding) := by
  simp only [moment]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [← Equiv.prod_comp σ (fun y => if y ∈ T.map σ.toEmbedding then K y j else conj (K y j))]
  refine Finset.prod_congr rfl fun x _ => ?_
  simp

/-- **(5.4)** The entries of `A_I A_{Iᶜ}†` are the mixed moments. -/
theorem readout {K : Mat6} (hK : EntrywiseUnit K) (r s : Fin 3) :
    (topA K * ((botA K).map conj)ᵀ) r s = moment K (mixedSet r s) := by
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, moment]
  refine Finset.sum_congr rfl fun j _ => ?_
  have c : ∀ x, conj (K x j) = (K x j)⁻¹ := fun x => Side.conj_eq_inv (hK x j)
  have n : ∀ x, K x j ≠ 0 := fun x => Side.ne_zero_of_normSq (hK x j)
  have := n (.inl 0); have := n (.inl 1); have := n (.inl 2)
  have := n (.inr 0); have := n (.inr 1); have := n (.inr 2)
  simp only [topA, botA, Matrix.of_apply, Fintype.prod_sum_type, Fin.prod_univ_three, map_mul, map_pow, c,
    map_inv₀]
  fin_cases r <;> fin_cases s <;> simp [mixedSet] <;> field_simp

/-- **§5.** A nonsingular minor of `A_I` kills the nine mixed moments. -/
theorem mixed_moments {K : Mat6} (hK : Hadamard6.IsHadamard K) (hc : CornerConj K) {τ₀ : Perm I6}
    (hg : (sqMat (blockE K τ₀)).det ≠ 0) (r s : Fin 3) : moment K (mixedSet r s) = 0 := by
  have h₀ : (leftMinor (topA K) τ₀).det ≠ 0 := by
    rw [det_leftMinor_topA]
    exact mul_ne_zero hg ((map_ne_zero _).2 (cellProd_ne_zero _ (entrywiseUnit_blockE hK.1 τ₀)))
  have := duality (dual_of_cornerConj hK hc) τ₀ h₀
  rw [← readout hK.1, this, Matrix.zero_apply]

/-! ### The single exchange -/

/-- **(6.1)** Cramer: `det X · y₀ = Σ_t det (X with row t replaced by y) · X_{t0}`. -/
lemma cramer (X : Mat3) (y : Fin 3 → ℂ) :
    X.det * y 0 = ∑ t, (X.updateRow t y).det * X t 0 := by
  simp only [Fin.sum_univ_three, det_fin_three, updateRow_apply]
  simp
  ring

lemma exists_exchange (X : Mat3) (y : Fin 3 → ℂ) (hX : X.det ≠ 0) (hy : y 0 ≠ 0) :
    ∃ t, (X.updateRow t y).det ≠ 0 := by
  by_contra h
  push Not at h
  have := cramer X y
  simp only [h, zero_mul, Finset.sum_const_zero] at this
  exact mul_ne_zero hX hy this

/-- **§6.** Exchanging a top row for bottom row `s` keeps some square minor nonsingular. -/
theorem good_swap {K : Mat6} (hK : EntrywiseUnit K) {τ₀ : Perm I6} (hg : (sqMat (blockE K τ₀)).det ≠ 0)
    (s : Fin 3) : ∃ t, (sqMat (blockE (K.submatrix (swap (.inl t) (.inr s)) id) τ₀)).det ≠ 0 := by
  obtain ⟨t, ht⟩ := exists_exchange (sqMat (blockE K τ₀)) (fun j => K (.inr s) (τ₀ (.inl j)) ^ 2) hg
    (pow_ne_zero 2 (Side.ne_zero_of_normSq (hK _ _)))
  refine ⟨t, ?_⟩
  convert ht using 2
  ext i j
  by_cases hi : i = t
  · subst hi; simp [sqMat, blockE]
  · rw [updateRow_ne hi]
    simp [sqMat, blockE, swap_apply_of_ne_of_ne (show (Sum.inl i : I6) ≠ .inl t by simpa using hi)]

end NoFourMUBs.FourierVanishing
