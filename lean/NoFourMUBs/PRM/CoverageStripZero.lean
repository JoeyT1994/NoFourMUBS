import NoFourMUBs.PRM.CoverageStripGeom

/-!
# Critical strip classification (I4): the zero-`J` stratum

`CRITICAL_STRIP_CLASSIFICATION.md` §2.  At a corner of the top strip of an all-critical Hadamard matrix
with invertible minors and `J = 0`, put `z = χ/(2g)`:

* `zero_data`: `g = 3z²`, `p = 9 − z²`, `W = z²(z + 3)²`, `z ≠ 0`, `−3 ≤ z` (from `critical_data`);
  the complementary corner has the same `g`, `z`;
* `z = −3` gives `p = 0` and `z = −2` gives `p = 5`;
* otherwise no moment denominator vanishes (`zero_pole_free`, the paper's `(Y − Z)² < 0` argument);
* the square-sum identity (4) (`ZeroJSquareSum`, stated below) and `S = 0` give
  `K = (1 − z)(z + 3)³`, so the modulus cubic is `(T − (z + 3))² (T − (1 − z)(z + 3))` and two of
  `X, Y, Z` equal `z + 3` (`zero_moduli`);
* relabelling the three rows to put the common row first, `strip_geometric` gives the geometric
  rows (`zeroJ_classification`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open Side

/-- **The zero-`J` square-sum identity** (`CRITICAL_STRIP_CLASSIFICATION.md` §2, formula (4)).

For three rows of a Hadamard matrix and a column split `l | 19 − l` whose two halves are nonsingular
with real side signature, `J = 0`, `z = χ/(2g) ∉ {−3, −2}` and no moment pole (`L_j ≠ 0`; with `J = 0`
both halves have the same `L_j`):
`S · [3z(z + 3)⁴ + (3z + 8)K]³ = −3888 z (z + 2)² (z + 3)² [K + (z − 1)(z + 3)³] [z²(z + 3)⁴ + (z + 2)²K]²`,
`K = XYZ`. -/
def ZeroJSquareSum : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → ∀ l : Fin 20,
    (Step2.sideSignature (triBlock H 0 l)).im = 0 →
    (Step2.sideSignature (triBlock H 0 (19 - l))).im = 0 →
    (triBlock H 0 l).det ≠ 0 → (triBlock H 0 (19 - l)).det ≠ 0 →
    blockJ (triBlock H 0 l) = 0 → blockTheta (triBlock H 0 l) ≠ -3 →
    blockTheta (triBlock H 0 l) ≠ -2 → (∀ j, blockL (triBlock H 0 l) j ≠ 0) →
    stripSq H * (3 * blockTheta (triBlock H 0 l) * (blockTheta (triBlock H 0 l) + 3) ^ 4 +
        (3 * blockTheta (triBlock H 0 l) + 8) * blockK (triBlock H 0 l)) ^ 3 =
      -3888 * blockTheta (triBlock H 0 l) * (blockTheta (triBlock H 0 l) + 2) ^ 2 *
        (blockTheta (triBlock H 0 l) + 3) ^ 2 *
        (blockK (triBlock H 0 l) + (blockTheta (triBlock H 0 l) - 1) * (blockTheta (triBlock H 0 l) + 3) ^ 3) *
        (blockTheta (triBlock H 0 l) ^ 2 * (blockTheta (triBlock H 0 l) + 3) ^ 4 +
          (blockTheta (triBlock H 0 l) + 2) ^ 2 * blockK (triBlock H 0 l)) ^ 2

/-! ### Scalar data -/

/-- The scalar data of a nonsingular critical phase block with `J = 0`. -/
theorem zero_data {B : Mat3} (hB : ∀ i j, Complex.normSq (B i j) = 1) (hd : B.det ≠ 0)
    (hIm : (Step2.sideSignature B).im = 0) (hJ : blockJ B = 0) :
    blockG B = 3 * blockTheta B ^ 2 ∧ blockP B = 9 - blockTheta B ^ 2 ∧
      blockW B = blockTheta B ^ 2 * (blockTheta B + 3) ^ 2 ∧ blockTheta B ≠ 0 ∧
      -3 ≤ blockTheta B := by
  obtain ⟨hc, he, -⟩ := critical_data hB hd hIm
  have hg := blockG_pos hB hd
  set z := blockTheta B
  have hp : blockP B = 9 - z ^ 2 := by rw [hJ] at he; linarith
  have hgz : blockG B = 3 * z ^ 2 := by rw [blockG_eq, hp, hJ]; ring
  refine ⟨hgz, hp, ?_, ?_, ?_⟩
  · have e := blockChi_eq B
    rw [hc, hgz, hp, hJ] at e
    linear_combination -e
  · intro h0; rw [hgz, h0] at hg; norm_num at hg
  · have : 0 ≤ blockP B := by
      rw [blockP_eq]
      exact add_nonneg (add_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _))
        (Complex.normSq_nonneg _)
    nlinarith

/-- **No zero-`J` pole** (`CRITICAL_STRIP_CLASSIFICATION.md` §2): with nonnegative moduli `m, a, b`,
`m + a + b = 9 − z²` and `W = z²(z + 3)²`, the denominator `3z² + (9 − m)z` vanishes only for
`z ∈ {0, −2, −3}`. -/
theorem zero_pole_free {m a b z : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b) (hsum : m + a + b = 9 - z ^ 2)
    (hW : m * a + m * b + a * b - m * a * b = z ^ 2 * (z + 3) ^ 2) (hz0 : z ≠ 0) (hz2 : z ≠ -2)
    (hz3 : z ≠ -3) : 3 * z ^ 2 + (9 - m) * z ≠ 0 := by
  intro hL
  have hm : m = 3 * z + 9 := by
    have : z * (3 * z + 9 - m) = 0 := by linear_combination hL
    have := (mul_eq_zero.1 this).resolve_left hz0
    linarith
  subst hm
  have hab : a + b = -z * (z + 3) := by linarith
  have hprod : (3 * z + 8) * (a * b) = -z * (z + 3) ^ 3 := by
    have : (3 * z + 9) * (a + b) + a * b * (1 - (3 * z + 9)) = z ^ 2 * (z + 3) ^ 2 := by
      linear_combination hW
    rw [hab] at this
    linear_combination -this
  -- `−3 < z < 0`
  have hzr : z * (z + 3) ≤ 0 := by nlinarith
  have hzneg : z < 0 := by
    rcases lt_or_gt_of_ne hz0 with h | h
    · exact h
    · nlinarith
  have hz3' : -3 < z := by
    rcases lt_or_gt_of_ne hz3 with h | h
    · nlinarith
    · exact h
  have hpos : 0 < -z * (z + 3) ^ 3 := by
    have : 0 < (z + 3) ^ 3 := pow_pos (by linarith) 3
    nlinarith
  have hab0 : 0 ≤ a * b := mul_nonneg ha hb
  have h38 : 0 < 3 * z + 8 := by
    by_contra h
    have h := not_lt.1 h
    nlinarith
  -- `(3z + 8)(a − b)² = 3z(z + 3)²(z + 2)² < 0`
  have key : (3 * z + 8) * (a - b) ^ 2 = 3 * z * (z + 3) ^ 2 * (z + 2) ^ 2 := by
    have : (a - b) ^ 2 = (a + b) ^ 2 - 4 * (a * b) := by ring
    rw [this, hab]
    linear_combination (-4 : ℝ) * hprod
  have hz2' : 0 < (z + 2) ^ 2 := by
    have : z + 2 ≠ 0 := fun h0 => hz2 (by linarith)
    exact lt_of_le_of_ne (sq_nonneg _) (Ne.symm (pow_ne_zero 2 this))
  have h3 : 0 < (z + 3) ^ 2 := pow_pos (by linarith) 2
  have hneg : 3 * z * (z + 3) ^ 2 * (z + 2) ^ 2 < 0 := by
    have : 3 * z * (z + 3) ^ 2 < 0 := by nlinarith
    nlinarith
  nlinarith [sq_nonneg (a - b)]

theorem blockL_zero {B : Mat3} (hg : blockG B = 3 * blockTheta B ^ 2) (j : Fin 3) :
    blockL B j = 3 * blockTheta B ^ 2 + (9 - blockMod B j) * blockTheta B := by
  rw [blockL, hg, blockC_eq]

theorem zero_poles {B : Mat3} (hg : blockG B = 3 * blockTheta B ^ 2) (hp : blockP B = 9 - blockTheta B ^ 2)
    (hW : blockW B = blockTheta B ^ 2 * (blockTheta B + 3) ^ 2) (hz0 : blockTheta B ≠ 0)
    (hz2 : blockTheta B ≠ -2) (hz3 : blockTheta B ≠ -3) (j : Fin 3) : blockL B j ≠ 0 := by
  rw [blockL_zero hg]
  have hX := Complex.normSq_nonneg (blockS B)
  have hY := Complex.normSq_nonneg (blockT B)
  have hZ := Complex.normSq_nonneg (blockR B)
  rw [blockP_eq] at hp
  simp only [blockW] at hW
  fin_cases j
  · exact zero_pole_free (m := blockZ B) (a := blockX B) (b := blockY B) hX hY (by linarith)
      (by linear_combination hW) hz0 hz2 hz3
  · exact zero_pole_free (m := blockY B) (a := blockX B) (b := blockZ B) hX hZ (by linarith)
      (by linear_combination hW) hz0 hz2 hz3
  · exact zero_pole_free (m := blockX B) (a := blockY B) (b := blockZ B) hY hZ (by linarith)
      (by linear_combination hW) hz0 hz2 hz3

/-- The zero-`J` moduli: two of `X, Y, Z` equal `z + 3`, the third `(1 − z)(z + 3)`. -/
theorem zero_moduli {B : Mat3} {z : ℝ} (hp : blockP B = 9 - z ^ 2)
    (hW : blockW B = z ^ 2 * (z + 3) ^ 2) (hK : blockK B = (1 - z) * (z + 3) ^ 3) (hz0 : z ≠ 0)
    (hz3 : z ≠ -3) :
    (blockX B = z + 3 ∧ blockY B = z + 3 ∧ blockZ B = (1 - z) * (z + 3)) ∨
      (blockX B = z + 3 ∧ blockZ B = z + 3 ∧ blockY B = (1 - z) * (z + 3)) ∨
      (blockY B = z + 3 ∧ blockZ B = z + 3 ∧ blockX B = (1 - z) * (z + 3)) := by
  have root : ∀ T, (T - blockX B) * (T - blockY B) * (T - blockZ B) =
      (T - (z + 3)) ^ 2 * (T - (1 - z) * (z + 3)) := by
    intro T; rw [← modulus_cubic, hp, hW, hK]; ring
  have r1 : ∀ T, (T - blockX B) * (T - blockY B) * (T - blockZ B) = 0 →
      T = z + 3 ∨ T = (1 - z) * (z + 3) := by
    intro T hT
    rw [root] at hT
    rcases mul_eq_zero.1 hT with h | h
    · left; have := pow_eq_zero_iff (n := 2) (by norm_num) |>.1 h; linarith
    · right; linarith
  have hX := r1 (blockX B) (by ring)
  have hY := r1 (blockY B) (by ring)
  have hZ := r1 (blockZ B) (by ring)
  have hsum : blockX B + blockY B + blockZ B = 9 - z ^ 2 := by rw [← blockP_eq, hp]
  have hne : z + 3 ≠ (1 - z) * (z + 3) := by
    intro h
    have : z * (z + 3) = 0 := by linarith
    rcases mul_eq_zero.1 this with h0 | h0
    · exact hz0 h0
    · exact hz3 (by linarith)
  rcases hX with hX | hX <;> rcases hY with hY | hY <;> rcases hZ with hZ | hZ
  · exfalso; apply hne; rw [hX, hY, hZ] at hsum; linarith
  · exact Or.inl ⟨hX, hY, hZ⟩
  · exact Or.inr (Or.inl ⟨hX, hZ, hY⟩)
  · exfalso; apply hne; rw [hX, hY, hZ] at hsum; linarith
  · exact Or.inr (Or.inr ⟨hY, hZ, hX⟩)
  · exfalso; apply hne; rw [hX, hY, hZ] at hsum; linarith
  · exfalso; apply hne; rw [hX, hY, hZ] at hsum; linarith
  · exfalso; apply hne; rw [hX, hY, hZ] at hsum; nlinarith

/-! ### Row relabelling -/

theorem gram3_submatrix (B : Mat3) (π : Equiv.Perm (Fin 3)) (a b : Fin 3) :
    gram3 (B.submatrix π id) a b = gram3 B (π a) (π b) := rfl

theorem gram3_swap (B : Mat3) (a b : Fin 3) : gram3 B a b = conj (gram3 B b a) := by
  simp only [gram3, map_sum, map_mul, Complex.conj_conj, mul_comm]

/-- The swap of rows `0, 1` permutes `(X, Y, Z) ↦ (X, Z, Y)` and keeps `J`. -/
theorem swap01_data (B : Mat3) :
    blockX (B.submatrix (Equiv.swap 0 1) id) = blockX B ∧
      blockY (B.submatrix (Equiv.swap 0 1) id) = blockZ B ∧
      blockZ (B.submatrix (Equiv.swap 0 1) id) = blockY B ∧
      blockJ (B.submatrix (Equiv.swap 0 1) id) = blockJ B := by
  have e1 : blockS (B.submatrix (Equiv.swap 0 1) id) = conj (blockS B) := by
    rw [blockS, gram3_submatrix, gram3_swap]; rfl
  have e2 : blockT (B.submatrix (Equiv.swap 0 1) id) = blockR B := by
    rw [blockT, gram3_submatrix]; rfl
  have e3 : blockR (B.submatrix (Equiv.swap 0 1) id) = blockT B := by
    rw [blockR, gram3_submatrix]; rfl
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [blockX, e1, Complex.normSq_conj]; rfl
  · rw [blockY, e2]; rfl
  · rw [blockZ, e3]; rfl
  · rw [blockJ, jS, e1, e2, e3, blockJ, jS, Complex.conj_conj]
    rw [show blockS B * conj (blockT B) * blockR B = conj (conj (blockS B) * conj (blockR B) * blockT B) by
      simp only [map_mul, Complex.conj_conj]; ring, Complex.conj_re]

/-- The swap of rows `0, 2` permutes `(X, Y, Z) ↦ (Z, Y, X)` and keeps `J`. -/
theorem swap02_data (B : Mat3) :
    blockX (B.submatrix (Equiv.swap 0 2) id) = blockZ B ∧
      blockY (B.submatrix (Equiv.swap 0 2) id) = blockY B ∧
      blockZ (B.submatrix (Equiv.swap 0 2) id) = blockX B ∧
      blockJ (B.submatrix (Equiv.swap 0 2) id) = blockJ B := by
  have e1 : blockS (B.submatrix (Equiv.swap 0 2) id) = conj (blockR B) := by
    rw [blockS, gram3_submatrix, gram3_swap]; rfl
  have e2 : blockT (B.submatrix (Equiv.swap 0 2) id) = conj (blockT B) := by
    rw [blockT, gram3_submatrix, gram3_swap]; rfl
  have e3 : blockR (B.submatrix (Equiv.swap 0 2) id) = conj (blockS B) := by
    rw [blockR, gram3_submatrix, gram3_swap]; rfl
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [blockX, e1, Complex.normSq_conj]; rfl
  · rw [blockY, e2, Complex.normSq_conj]; rfl
  · rw [blockZ, e3, Complex.normSq_conj]; rfl
  · rw [blockJ, jS, e1, e2, e3, blockJ, jS]
    simp only [Complex.conj_conj]
    rw [show blockR B * blockS B * conj (blockT B) = conj (conj (blockS B) * conj (blockR B) * blockT B) by
      simp only [map_mul, Complex.conj_conj]; ring, Complex.conj_re]

/-- `z` depends only on `p`, `J`, `W`. -/
theorem blockTheta_congr {B C : Mat3} (hp : blockP C = blockP B) (hJ : blockJ C = blockJ B)
    (hW : blockW C = blockW B) : blockTheta C = blockTheta B := by
  simp only [blockTheta, blockChi_eq, blockG_eq, hp, hJ, hW]

theorem blockP_of_perm {B C : Mat3}
    (h : (blockX C = blockX B ∧ blockY C = blockZ B ∧ blockZ C = blockY B) ∨
      (blockX C = blockZ B ∧ blockY C = blockY B ∧ blockZ C = blockX B) ∨
      (blockX C = blockX B ∧ blockY C = blockY B ∧ blockZ C = blockZ B)) :
    blockP C = blockP B ∧ blockW C = blockW B := by
  rcases h with ⟨a, b, c⟩ | ⟨a, b, c⟩ | ⟨a, b, c⟩ <;>
    exact ⟨by rw [blockP_eq, blockP_eq, a, b, c]; try ring, by simp only [blockW, a, b, c]; try ring⟩

theorem triBlock_eq_strip (H : Mat6) (l : Fin 20) :
    triBlock H 0 l = stripBlock (fun i => H (Sum.inl i)) l := by
  ext i j; simp [triBlock, stripBlock, tri0_row]

theorem det_submatrix_ne {B : Mat3} (hd : B.det ≠ 0) (π : Equiv.Perm (Fin 3)) :
    (B.submatrix π id).det ≠ 0 := by
  rw [Matrix.det_permute]
  exact mul_ne_zero (by rcases Int.units_eq_one_or (Equiv.Perm.sign π) with h | h <;> simp [h]) hd

theorem sig_submatrix (B : Mat3) (π : Equiv.Perm (Fin 3)) :
    Step2.sideSignature (B.submatrix π id) = Step2.sideSignature B :=
  Step2.sideSignature_submatrix B π (Equiv.refl _)

/-- **The geometric step for a row relabelling `π`** of the top strip. -/
theorem geometric_of_perm {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20)
    (π : Equiv.Perm (Fin 3)) {z : ℝ} (hz0 : z ≠ 0) (hz2 : z ≠ -2) (hz3 : -3 < z)
    (hX : blockX ((triBlock H 0 l).submatrix π id) = z + 3)
    (hY : blockY ((triBlock H 0 l).submatrix π id) = z + 3)
    (hZ : blockZ ((triBlock H 0 l).submatrix π id) = (1 - z) * (z + 3))
    (hJ : blockJ ((triBlock H 0 l).submatrix π id) = 0)
    (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0)
    (hIm : (Step2.sideSignature (triBlock H 0 l)).im = 0)
    (hIm' : (Step2.sideSignature (triBlock H 0 (19 - l))).im = 0)
    (hth : blockTheta ((triBlock H 0 l).submatrix π id) = z)
    (hth' : blockTheta ((triBlock H 0 (19 - l)).submatrix π id) = z) :
    GeometricRows H (fun i => Sum.inl (π i)) := by
  set R : Fin 3 → I6 → ℂ := fun i => H (Sum.inl (π i)) with hRdef
  have hRl : ∀ m : Fin 20, stripBlock R m = (triBlock H 0 m).submatrix π id := by
    intro m; ext i j; simp [R, stripBlock, triBlock, tri0_row]
  have hR : ∀ i j, Complex.normSq (R i j) = 1 := fun i j => hH.1 _ _
  have compl : ∀ a b : Fin 3, a ≠ b →
      gram3 (stripBlock R (19 - l)) a b = -gram3 (stripBlock R l) a b := by
    intro a b hab
    rw [hRl, hRl, gram3_submatrix, gram3_submatrix]
    exact gram3_compl hH 0 l (π.injective.ne hab)
  obtain ⟨a, c, x, ha, hc, hx⟩ := strip_geometric hR l hz0 hz2 hz3
    (by rw [hRl]; exact hX) (by rw [hRl]; exact hY) (by rw [hRl]; exact hZ) (by rw [hRl]; exact hJ)
    (compl 1 0 (by decide)) (compl 2 0 (by decide)) (compl 2 1 (by decide))
    (by rw [hRl]; exact det_submatrix_ne hd π) (by rw [hRl]; exact det_submatrix_ne hd' π)
    (by rw [hRl, sig_submatrix]; exact hIm) (by rw [hRl, sig_submatrix]; exact hIm')
    (by rw [hRl]; exact hth) (by rw [hRl]; exact hth')
  exact ⟨a, c, x, ha, hc, hx⟩

/-! ### The zero-`J` stratum -/

/-- **The zero-`J` stratum** (`CRITICAL_STRIP_CLASSIFICATION.md` §2). -/
theorem zeroJ_classification (hZ : ZeroJSquareSum) {H : Mat6} (hH : Hadamard6.IsHadamard H)
    (hc : AllCritical H) (hinv : AllMinorsInvertible H) (l : Fin 20)
    (hJ : blockJ (triBlock H 0 l) = 0) :
    blockP (triBlock H 0 l) = 0 ∨ blockP (triBlock H 0 l) = 5 ∨
      ∃ π : Equiv.Perm (Fin 3), GeometricRows H (fun i => Sum.inl (π i)) := by
  have hd := triBlock_det_ne hinv 0 l
  have hd' := triBlock_det_ne hinv 0 (19 - l)
  have hBu := triBlock_unit hH 0 l
  have hIm := hc.triBlock_im 0 l
  have hIm' := hc.triBlock_im 0 (19 - l)
  have hZl := hZ H hH l hIm hIm' hd hd' hJ
  set B := triBlock H 0 l with hBdef
  set B' := triBlock H 0 (19 - l) with hB'def
  obtain ⟨hg, hp, hW, hz0, hz3⟩ := zero_data hBu hd hIm hJ
  set z := blockTheta B with hzdef
  by_cases e3 : z = -3
  · left; rw [hp, e3]; norm_num
  by_cases e2 : z = -2
  · right; left; rw [hp, e2]; norm_num
  right; right
  have hz3' : -3 < z := lt_of_le_of_ne hz3 (Ne.symm e3)
  have hpoles := zero_poles hg hp hW hz0 e2 e3
  have e := hZl e3 e2 hpoles
  rw [stripSq_eq_zero hc, zero_mul] at e
  -- `K = (1 − z)(z + 3)³`
  have hK : blockK B = (1 - z) * (z + 3) ^ 3 := by
    have hKnn : 0 ≤ blockK B := by
      simp only [blockK]
      exact mul_nonneg (mul_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _))
        (Complex.normSq_nonneg _)
    have hq : 0 < z ^ 2 * (z + 3) ^ 4 + (z + 2) ^ 2 * blockK B := by
      have : z + 3 ≠ 0 := fun h0 => e3 (by linarith)
      have : 0 < z ^ 2 * (z + 3) ^ 4 := by positivity
      nlinarith [sq_nonneg (z + 2)]
    have hz2' : z + 2 ≠ 0 := fun h0 => e2 (by linarith)
    have hz3'' : z + 3 ≠ 0 := fun h0 => e3 (by linarith)
    have hne : -3888 * z * (z + 2) ^ 2 * (z + 3) ^ 2 ≠ 0 := by positivity
    have e' : (-3888 * z * (z + 2) ^ 2 * (z + 3) ^ 2) * (blockK B + (z - 1) * (z + 3) ^ 3) *
        (z ^ 2 * (z + 3) ^ 4 + (z + 2) ^ 2 * blockK B) ^ 2 = 0 := by linarith
    rcases mul_eq_zero.1 e' with h | h
    · rcases mul_eq_zero.1 h with h | h
      · exact absurd h hne
      · linarith
    · exact absurd (pow_eq_zero_iff (n := 2) (by norm_num) |>.1 h) hq.ne'
  -- the complementary corner has the same `z`
  have hth' : blockTheta B' = z := by
    rw [hzdef]
    exact blockTheta_congr (blockP_compl hH 0 l) (by rw [hB'def, blockJ_compl hH, hJ, neg_zero])
      (blockW_compl hH 0 l)
  have hJ' : blockJ B' = 0 := by rw [hB'def, blockJ_compl hH, hJ, neg_zero]
  -- relabel
  have hm := zero_moduli hp hW hK hz0 e3
  rcases hm with ⟨hX, hY, hZ'⟩ | ⟨hX, hZ', hY⟩ | ⟨hY, hZ', hX⟩
  · have e1 : (triBlock H 0 l).submatrix (⇑(1 : Equiv.Perm (Fin 3))) id = B := by ext; rfl
    have e1' : (triBlock H 0 (19 - l)).submatrix (⇑(1 : Equiv.Perm (Fin 3))) id = B' := by ext; rfl
    exact ⟨1, geometric_of_perm hH l 1 hz0 e2 hz3' (by rw [e1]; exact hX) (by rw [e1]; exact hY)
      (by rw [e1]; exact hZ') (by rw [e1]; exact hJ) hd hd' hIm hIm' (by rw [e1])
      (by rw [e1']; exact hth')⟩
  · obtain ⟨a1, a2, a3, a4⟩ := swap01_data B
    obtain ⟨b1, b2, b3, b4⟩ := swap01_data B'
    refine ⟨Equiv.swap 0 1, geometric_of_perm hH l _ hz0 e2 hz3' ?_ ?_ ?_ ?_ hd hd' hIm hIm' ?_ ?_⟩
    · rw [a1, hX]
    · rw [a2, hZ']
    · rw [a3, hY]
    · rw [a4, hJ]
    · rw [hzdef]; obtain ⟨p1, w1⟩ := blockP_of_perm (B := B) (Or.inl ⟨a1, a2, a3⟩)
      exact blockTheta_congr p1 (by rw [a4]) w1
    · obtain ⟨p1, w1⟩ := blockP_of_perm (B := B') (Or.inl ⟨b1, b2, b3⟩)
      rw [← hth']; exact blockTheta_congr p1 (by rw [b4]) w1
  · obtain ⟨a1, a2, a3, a4⟩ := swap02_data B
    obtain ⟨b1, b2, b3, b4⟩ := swap02_data B'
    refine ⟨Equiv.swap 0 2, geometric_of_perm hH l _ hz0 e2 hz3' ?_ ?_ ?_ ?_ hd hd' hIm hIm' ?_ ?_⟩
    · rw [a1, hZ']
    · rw [a2, hY]
    · rw [a3, hX]
    · rw [a4, hJ]
    · rw [hzdef]; obtain ⟨p1, w1⟩ := blockP_of_perm (B := B) (Or.inr (Or.inl ⟨a1, a2, a3⟩))
      exact blockTheta_congr p1 (by rw [a4]) w1
    · obtain ⟨p1, w1⟩ := blockP_of_perm (B := B') (Or.inr (Or.inl ⟨b1, b2, b3⟩))
      rw [← hth']; exact blockTheta_congr p1 (by rw [b4]) w1

end NoFourMUBs.PRM.Coverage
