import NoFourMUBs.Step2.SideAlg
import Hadamard6.Basic

/-!
# A strict strip has no proportional columns (`PRM.md` §4.4)

Let `T` be the top three rows of a dephased order-six Hadamard matrix (unit entries, first row all ones,
`T Tᴴ = 6 I`), and suppose its right block `(1; x; y)` is a strict side: its signature `TS x y` is not
real.  Then no two columns of `T` are proportional, i.e. `|⟨c_j, c_k⟩|² ≠ 9` for `j ≠ k`.

The argument:

1. *Cauchy–Schwarz equality.*  `⟨c_j, c_k⟩ = 1 + z + w` with `z, w` unit numbers, and
   `|1 + z + w|² = 9` forces `z = w = 1` (`unit_sum_nine`); so `c_k = c_j =: v`.
2. *The other columns are orthogonal to `v`.*  With `w_m = ⟨c_m, v⟩`, the row relations give
   `Σ_m |w_m|² = Σ_{i,l} v̄_i v_l (T Tᴴ)_{il} = 6 ‖v‖² = 18`; the two copies of `v` contribute `9 + 9`,
   so `w_m = 0` for every other column `m`.
3. *Every column has the form `(1, v₁ p, v₂ p̄)` with `|p| = 1`.*  For `m ∈ {j, k}` take `p = 1`.  For any
   other column, `1 + p + q = 0` with `p = c_{m,1} v̄₁`, `q = c_{m,2} v̄₂` unit numbers, which forces
   `q = p̄` (`unit_sum_zero`; in fact `p ∈ {ω, ω²}`).
4. *Such a side has real signature* (`TS_real`): for `x = v₁ p`, `y = v₂ p̄` one checks
   `conj (TS x y) = TS x y` directly (the permanent is real, the determinant is imaginary, and the product
   factors are unimodular).  This contradicts strictness.

Step 4 makes no case split on whether the three right-hand columns coincide: if two coincide the
determinant vanishes and the signature is `0`, which is real as well.
-/

open ComplexConjugate Hadamard6

noncomputable section

namespace NoFourMUBs.PRM

/-- If `1, z, w` are unit numbers with `|1 + z + w|² = 9`, then `z = w = 1`. -/
lemma unit_sum_nine {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1)
    (h : Complex.normSq (1 + z + w) = 9) : z = 1 ∧ w = 1 := by
  rw [Complex.normSq_apply] at hz hw h
  simp only [Complex.add_re, Complex.add_im, Complex.one_re, Complex.one_im] at h
  have key : z.re + w.re + (z.re * w.re + z.im * w.im) = 3 := by linear_combination (h - hz - hw) / 2
  have hzr : z.re ≤ 1 := by nlinarith [sq_nonneg (z.re - 1), sq_nonneg z.im]
  have hwr : w.re ≤ 1 := by nlinarith [sq_nonneg (w.re - 1), sq_nonneg w.im]
  have hzw : z.re * w.re + z.im * w.im ≤ 1 := by
    nlinarith [sq_nonneg (z.re - w.re), sq_nonneg (z.im - w.im)]
  have e1 : z.re = 1 := by linarith
  have e2 : w.re = 1 := by linarith
  have e3 : z.im = 0 := by
    have : z.im ^ 2 = 0 := by rw [e1] at hz; linarith
    exact pow_eq_zero_iff (two_ne_zero) |>.mp this
  have e4 : w.im = 0 := by
    have : w.im ^ 2 = 0 := by rw [e2] at hw; linarith
    exact pow_eq_zero_iff (two_ne_zero) |>.mp this
  exact ⟨Complex.ext (by simp [e1]) (by simp [e3]), Complex.ext (by simp [e2]) (by simp [e4])⟩

/-- If `1, p, q` are unit numbers summing to zero, then `q = p̄`. -/
lemma unit_sum_zero {p q : ℂ} (hp : Complex.normSq p = 1) (hq : Complex.normSq q = 1)
    (h : 1 + p + q = 0) : q = conj p := by
  rw [Complex.normSq_apply] at hp hq
  have hr : 1 + p.re + q.re = 0 := by simpa using congrArg Complex.re h
  have hi : p.im + q.im = 0 := by simpa using congrArg Complex.im h
  have hqr : q.re = -1 - p.re := by linarith
  have hqi : q.im = -p.im := by linarith
  rw [hqr, hqi] at hq
  have hpr : p.re = -1 / 2 := by nlinarith
  refine Complex.ext ?_ ?_
  · simp only [Complex.conj_re]; linarith
  · simp only [Complex.conj_im]; linarith

/-- A side of the form `(1; a p; b p̄)` with unit `a`, `b`, `pⱼ` has real signature. -/
lemma TS_real {a b : ℂ} {p : Fin 3 → ℂ} (ha : Complex.normSq a = 1) (hb : Complex.normSq b = 1)
    (hp : ∀ m, Complex.normSq (p m) = 1) :
    (Side.TS (fun m => a * p m) (fun m => b * conj (p m))).im = 0 := by
  have ca := Side.conj_eq_inv ha
  have cb := Side.conj_eq_inv hb
  have cp : ∀ m, conj (p m) = (p m)⁻¹ := fun m => Side.conj_eq_inv (hp m)
  have na := Side.ne_zero_of_normSq ha
  have nb := Side.ne_zero_of_normSq hb
  have n0 := Side.ne_zero_of_normSq (hp 0)
  have n1 := Side.ne_zero_of_normSq (hp 1)
  have n2 := Side.ne_zero_of_normSq (hp 2)
  apply Complex.conj_eq_iff_im.mp
  simp only [Side.TS, Side.piS, Side.hS, Side.uS, map_add, map_sub, map_mul, map_neg, map_pow,
    map_inv₀, inv_inv, ca, cb, cp]
  field_simp
  ring

/-- If `a b̄ = 1` with `|b| = 1`, then `b = a`. -/
lemma eq_of_mul_conj_eq_one {a b : ℂ} (hb : Complex.normSq b = 1) (h : a * conj b = 1) : b = a := by
  rw [Side.conj_eq_inv hb] at h
  exact ((mul_inv_eq_one₀ (Side.ne_zero_of_normSq hb)).mp h).symm

/-- **A strict strip has no proportional columns** (`PRM.md` §4.4). -/
theorem strict_no_proportional_columns (T : Matrix (Fin 3) I6 ℂ)
    (hT : ∀ i j, Complex.normSq (T i j) = 1) (h0 : ∀ j, T 0 j = 1)
    (hTT : ∀ k l, (∑ j, T k j * conj (T l j)) = if k = l then 6 else 0)
    (hIm : (Side.TS (fun j => T 1 (Sum.inr j)) (fun j => T 2 (Sum.inr j))).im ≠ 0) :
    ∀ j k : I6, j ≠ k → Complex.normSq (∑ i, T i j * conj (T i k)) ≠ 9 := by
  intro j k hjk hnine
  have uT : ∀ i m, T i m * conj (T i m) = 1 := fun i m => by
    rw [Complex.mul_conj, hT]; simp
  have nprod : ∀ i m i' m', Complex.normSq (T i m * conj (T i' m')) = 1 := fun i m i' m' => by
    rw [Complex.normSq_mul, Complex.normSq_conj, hT, hT, one_mul]
  -- Step 1: the two columns are equal.
  have hcol : ∀ i, T i k = T i j := by
    rw [Fin.sum_univ_three, h0, h0, map_one, one_mul] at hnine
    obtain ⟨e1, e2⟩ := unit_sum_nine (nprod _ _ _ _) (nprod _ _ _ _) hnine
    intro i
    fin_cases i
    · simp [h0]
    · exact eq_of_mul_conj_eq_one (hT _ _) e1
    · exact eq_of_mul_conj_eq_one (hT _ _) e2
  -- Step 2: every other column is orthogonal to `v = c_j`.
  set w : I6 → ℂ := fun m => ∑ i, T i m * conj (T i j) with hw
  have hsum : (∑ m, (Complex.normSq (w m) : ℂ)) = 18 := by
    have e : ∀ m, (Complex.normSq (w m) : ℂ) =
        ∑ i, ∑ l, (conj (T i j) * T l j) * (T i m * conj (T l m)) := by
      intro m
      rw [← Complex.mul_conj]
      simp only [hw, Fin.sum_univ_three, map_add, map_mul, Complex.conj_conj]
      ring
    rw [Finset.sum_congr rfl (fun m _ => e m), Finset.sum_comm,
      Finset.sum_congr rfl (fun i _ => Finset.sum_comm)]
    simp_rw [← Finset.mul_sum, hTT, mul_ite, mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    rw [Fin.sum_univ_three]
    linear_combination 6 * (uT 0 j + uT 1 j + uT 2 j)
  have hsumR : ∑ m, Complex.normSq (w m) = 18 := by exact_mod_cast hsum
  have hwj : w j = 3 := by
    simp only [hw, Fin.sum_univ_three, uT]; norm_num
  have hwk : w k = 3 := by
    rw [← hwj]; simp only [hw, hcol]
  have hkmem : k ∈ Finset.univ.erase j := Finset.mem_erase.mpr ⟨hjk.symm, Finset.mem_univ k⟩
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ j), ← Finset.add_sum_erase _ _ hkmem, hwj, hwk]
    at hsumR
  have hrest : ∑ m ∈ (Finset.univ.erase j).erase k, Complex.normSq (w m) = 0 := by
    have : Complex.normSq (3 : ℂ) = 9 := by norm_num [Complex.normSq_apply]
    linarith
  have hzero : ∀ m, m ≠ j → m ≠ k → w m = 0 := by
    intro m hmj hmk
    have hm : m ∈ (Finset.univ.erase j).erase k :=
      Finset.mem_erase.mpr ⟨hmk, Finset.mem_erase.mpr ⟨hmj, Finset.mem_univ m⟩⟩
    exact Complex.normSq_eq_zero.mp
      ((Finset.sum_eq_zero_iff_of_nonneg (fun m _ => Complex.normSq_nonneg (w m))).mp hrest m hm)
  -- Step 3: every column is `(1, v₁ p, v₂ p̄)`.
  have hrel : ∀ m, T 2 m * conj (T 2 j) = conj (T 1 m * conj (T 1 j)) := by
    intro m
    by_cases hmj : m = j
    · subst hmj; rw [uT, uT, map_one]
    by_cases hmk : m = k
    · subst hmk; rw [hcol, hcol, uT, uT, map_one]
    have h := hzero m hmj hmk
    simp only [hw, Fin.sum_univ_three, h0, map_one, one_mul] at h
    exact unit_sum_zero (nprod _ _ _ _) (nprod _ _ _ _) h
  -- Step 4: such a side has real signature.
  set p : Fin 3 → ℂ := fun m => T 1 (Sum.inr m) * conj (T 1 j) with hp
  have hx : (fun m => T 1 (Sum.inr m)) = fun m => T 1 j * p m := by
    funext m
    simp only [hp]
    linear_combination (-T 1 (Sum.inr m)) * uT 1 j
  have hy : (fun m => T 2 (Sum.inr m)) = fun m => T 2 j * conj (p m) := by
    funext m
    simp only [hp]
    linear_combination T 2 j * hrel (Sum.inr m) - T 2 (Sum.inr m) * uT 2 j
  rw [hx, hy] at hIm
  exact hIm (TS_real (hT 1 j) (hT 2 j) (fun m => nprod _ _ _ _))

end NoFourMUBs.PRM
