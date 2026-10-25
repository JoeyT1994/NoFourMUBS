import KernelAtlas.Seed.C1Lemmas

/-!
# Soundness of the C1 box check, part 2: the sides

`side_sound`: if `sideK` passes, then at every point `u` of the box the side Gram equations `sS x = s`, `sS y = t`,
`rS x y = r` have a solution `x = e^{iφ_{0..2}}`, `y = e^{iφ_{3..5}}` whose phases are enclosed by the tube models
`tubeT` and whose rows by `rowsT` of the tube (`Method.krawczyk` at the predictor `Re φ(u)`, with the grid
preconditioner `Y`, `b = sup |Y F|`, `q = Σ sup |I − Y J|` over the tube).
-/

open Complex NoFourMUBs.Side NoFourMUBs.SeedAtlas Metric

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Small facts -/

lemma has_zero (u : Fin 4 → ℝ) : (const (0, 0)).Has u 0 := by
  have := has_const (0, 0) u
  rwa [show cz (0, 0) = 0 by simp [cz]] at this

/-- A `Fin 6` vector as a list function. -/
def ext6 (f : Fin 6 → ℝ) (k : ℕ) : ℂ := if hk : k < 6 then (f ⟨k, hk⟩ : ℂ) else 0

lemma hasAll_l6 {u : Fin 4 → ℝ} {g : ℕ → (ℤ × ℤ) × CT} {x : ℕ → ℂ} (h : ∀ k < 6, (g k).2.Has u (x k)) :
    HasAll u (l6 g) (l6 x) := by
  simp only [l6, HasAll]
  exact ⟨h 0 (by norm_num), h 1 (by norm_num), h 2 (by norm_num), h 3 (by norm_num), h 4 (by norm_num),
    h 5 (by norm_num), trivial⟩

lemma valS_l6 (g : ℕ → (ℤ × ℤ) × CT) (x : ℕ → ℂ) :
    valS (l6 g) (l6 x) = ∑ k : Fin 6, cz (g k).1 * x k := by
  simp only [l6, valS, Fin.sum_univ_six]; simp; ring

lemma rn_sum_l6 (f : ℕ → ℕ) : rn ((l6 f).sum) = ∑ m : Fin 6, rn (f m) := by
  simp only [l6, List.sum_cons, List.sum_nil, rn_add, Fin.sum_univ_six]
  simp [rn]; ring

lemma gn_map_l6 {α : Type} (f : ℕ → α) (g : α → ℕ) {i : ℕ} (hi : i < 6) : gn ((l6 f).map g) i = g (f i) := by
  interval_cases i <;> rfl

/-- The grid preconditioner. -/
def Ymat (Y : List ℤ) : Matrix (Fin 6) (Fin 6) ℝ := fun i k => rq (gi Y (6 * i + k))

/-! ### Rows, residual, Jacobian -/

theorem has_rowsT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {φr : List CT} {ξ : Fin 6 → ℝ}
    (hok : ∀ j : Fin 6, expOK (gT φr j) nT = true) (hφ : ∀ j : Fin 6, (gT φr j).Has u (ξ j)) :
    (∀ j : Fin 3, (gT (rowsT h φr) j).Has u (sx ξ j)) ∧
      ∀ j : Fin 3, (gT (rowsT h φr) (j + 3)).Has u (sy ξ j) := by
  constructor
  · intro j
    rw [rowsT, gT_l6 _ (by omega)]
    exact has_expI hu (hok ⟨j, by omega⟩) (hφ ⟨j, by omega⟩)
  · intro j
    rw [rowsT, gT_l6 _ (by omega)]
    exact has_expI hu (hok ⟨j + 3, by omega⟩) (hφ ⟨j + 3, by omega⟩)

theorem has_FT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {G xy : List CT} {s t r : ℂ}
    (hG : (gT G 0).Has u s ∧ (gT G 1).Has u t ∧ (gT G 2).Has u r) {ξ : Fin 6 → ℝ}
    (hx : ∀ j : Fin 3, (gT xy j).Has u (sx ξ j)) (hy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (sy ξ j)) :
    ∀ i : Fin 6, (gT (FT h G xy) i).Has u (sideF s t r ξ i : ℂ) := by
  obtain ⟨hs, ht, hr⟩ := hG
  have c0 : (gT (resT h G xy) 0).Has u (sideG s t r ξ 0) := by
    have := has_sub (has_sumT3 (hx 0) (hx 1) (hx 2)) hs
    rw [show gT (resT h G xy) 0 = sub (sumT [gT xy 0, gT xy 1, gT xy 2]) (gT G 0) from rfl]
    simpa [sideG, sS] using this
  have c1 : (gT (resT h G xy) 1).Has u (sideG s t r ξ 1) := by
    have := has_sub (has_sumT3 (hy 0) (hy 1) (hy 2)) ht
    rw [show gT (resT h G xy) 1 = sub (sumT [gT xy 3, gT xy 4, gT xy 5]) (gT G 1) from rfl]
    simpa [sideG, sS] using this
  have c2 : (gT (resT h G xy) 2).Has u (sideG s t r ξ 2) := by
    have := has_sub (has_sumT3 (has_mul hu (hy 0) (has_conj (hx 0))) (has_mul hu (hy 1) (has_conj (hx 1)))
      (has_mul hu (hy 2) (has_conj (hx 2)))) hr
    rw [show gT (resT h G xy) 2 = sub (sumT [mul h (gT xy 3) (conj (gT xy 0)), mul h (gT xy 4) (conj (gT xy 1)),
      mul h (gT xy 5) (conj (gT xy 2))]) (gT G 2) from rfl]
    simpa [sideG, rS] using this
  intro i
  fin_cases i
  · rw [show gT (FT h G xy) _ = re (gT (resT h G xy) 0) from rfl]; simpa [sideF] using has_re c0
  · rw [show gT (FT h G xy) _ = re (gT (resT h G xy) 1) from rfl]; simpa [sideF] using has_re c1
  · rw [show gT (FT h G xy) _ = re (gT (resT h G xy) 2) from rfl]; simpa [sideF] using has_re c2
  · rw [show gT (FT h G xy) _ = im (gT (resT h G xy) 0) from rfl]; simpa [sideF] using has_im c0
  · rw [show gT (FT h G xy) _ = im (gT (resT h G xy) 1) from rfl]; simpa [sideF] using has_im c1
  · rw [show gT (FT h G xy) _ = im (gT (resT h G xy) 2) from rfl]; simpa [sideF] using has_im c2

theorem has_matT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {Y : List ℤ} {v : List CT} {f : Fin 6 → ℝ}
    (hv : ∀ k : Fin 6, (gT v k).Has u (f k : ℂ)) (i : Fin 6) :
    (gT (matT h Y v) i).Has u (((Ymat Y).mulVec f i : ℝ) : ℂ) := by
  rw [matT, gT_l6 _ i.2]
  have := has_lin hu (hasAll_l6 (g := fun k => (rz (gi Y (6 * i + k)), gT v k)) (x := ext6 f)
    (fun k hk => by simp only [ext6, dif_pos hk]; exact hv ⟨k, hk⟩))
  convert this using 1
  rw [valS_l6]
  simp [Matrix.mulVec, dotProduct, Fin.sum_univ_six, Ymat, ext6, cz_rz]

lemma hy_of {u : Fin 4 → ℝ} {xy : List CT} {ξ : Fin 6 → ℝ}
    (hy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (sy ξ j)) (m : ℕ) (h3 : ¬ m < 3) (h6 : m < 6) :
    (gT xy m).Has u (sy ξ ⟨m - 3, by omega⟩) := by
  have := hy ⟨m - 3, by omega⟩
  rwa [show ((⟨m - 3, by omega⟩ : Fin 3) : ℕ) + 3 = m by simp; omega] at this

/-! ### Rows on the tube -/

lemma norm_cexp_sub (a b : ℝ) : ‖Complex.exp ((a : ℂ) * I) - Complex.exp ((b : ℂ) * I)‖ ≤ |a - b| := by
  have e : Complex.exp ((a : ℂ) * I) - Complex.exp ((b : ℂ) * I) =
      Complex.exp ((b : ℂ) * I) * (Complex.exp (I * ((a - b : ℝ) : ℂ)) - 1) := by
    rw [mul_sub, mul_one, ← Complex.exp_add]; congr 2; push_cast; ring
  rw [e, norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul]
  have := Real.norm_exp_I_mul_ofReal_sub_one_le (x := a - b)
  rwa [Real.norm_eq_abs] at this

/-- A row model of `e^{ib}` widened by `e ≥ |a − b|` encloses `e^{ia}`. -/
lemma has_row_shift {T : CT} {u : Fin 4 → ℝ} {a b : ℝ} {e : ℕ} (hT : T.Has u (Complex.exp ((b : ℂ) * I)))
    (hab : |a - b| ≤ rn e) : (addRho T e).Has u (Complex.exp ((a : ℂ) * I)) :=
  has_addRho hT ((norm_cexp_sub a b).trans hab)

/-! ### The Jacobian by intervals -/

/-- `x` lies in the complex interval `a`. -/
def IvH (a : IvC) (x : ℂ) : Prop := ‖x - cz a.1‖ ≤ rn a.2

lemma ivH_ivc {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {T : CT} {x : ℂ} (hx : T.Has u x) :
    IvH (ivc h T) x := norm_sub_c_le hu hx

lemma ivH_zero : IvH ivZ 0 := by
  unfold IvH ivZ; rw [show cz (0, 0) = 0 by simp [cz], sub_zero, norm_zero]; exact rn_nonneg _

lemma ivH_I {a : IvC} {x : ℂ} (hx : IvH a x) : IvH (ivI a) (I * x) := by
  unfold IvH ivI at *
  rw [cz_mulI, ← mul_sub, norm_mul, Complex.norm_I, one_mul]; exact hx

lemma ivH_neg {a : IvC} {x : ℂ} (hx : IvH a x) : IvH (ivNeg a) (-x) := by
  unfold IvH ivNeg at *
  rw [cz_neg, show -x - -cz a.1 = -(x - cz a.1) by ring, norm_neg]; exact hx

lemma ivH_conj {a : IvC} {x : ℂ} (hx : IvH a x) : IvH (ivConj a) ((starRingEnd ℂ) x) := by
  unfold IvH ivConj at *
  rw [cz_conj, ← map_sub, Complex.norm_conj]; exact hx

lemma ivH_mul {a b : IvC} {x y : ℂ} (hx : IvH a x) (hy : IvH b y) : IvH (ivm a b) (x * y) := by
  unfold IvH ivm at *
  have ha := norm_cz_le a.1
  have hb := norm_cz_le b.1
  have e : x * y - cz (rnd2 (zmul a.1 b.1)) = ((x - cz a.1) * (y - cz b.1) + (x - cz a.1) * cz b.1 +
      cz a.1 * (y - cz b.1)) + (cz2 (zmul a.1 b.1) - cz (rnd2 (zmul a.1 b.1))) := by
    rw [← cz_mul]; ring
  rw [e, rn_add]
  refine (norm_add_le _ _).trans (add_le_add ?_ (norm_cz2_sub_rnd2 _))
  refine (norm_add₃_le).trans ?_
  rw [norm_mul, norm_mul, norm_mul]
  have h1 : ‖x - cz a.1‖ * ‖y - cz b.1‖ + ‖x - cz a.1‖ * ‖cz b.1‖ + ‖cz a.1‖ * ‖y - cz b.1‖ ≤
      rn a.2 * rn b.2 + rn a.2 * rn (mb b.1) + rn (mb a.1) * rn b.2 := by
    gcongr <;> first | exact hx | exact hy | exact ha | exact hb | exact (norm_nonneg _).trans hx |
      exact rn_nonneg _
  refine h1.trans (rn_cdiv_ge ?_)
  have hT := two_pow_pos pp
  unfold rn; push_cast
  rw [le_div_iff₀ hT]
  field_simp
  ring_nf
  exact le_refl _

theorem ivH_jcI {g : ℕ → IvC} {ξ : Fin 6 → ℝ}
    (hx : ∀ j : Fin 3, IvH (g j) (sx ξ j)) (hy : ∀ j : Fin 3, IvH (g (j + 3)) (sy ξ j))
    (k : Fin 3) (m : Fin 6) : IvH (jcI g k m) (sideJc ξ k m) := by
  have hy' : ∀ (m : ℕ) (h3 : ¬ m < 3) (h6 : m < 6), IvH (g m) (sy ξ ⟨m - 3, by omega⟩) := fun m h3 h6 => by
    have := hy ⟨m - 3, by omega⟩
    rwa [show ((⟨m - 3, by omega⟩ : Fin 3) : ℕ) + 3 = m by simp; omega] at this
  fin_cases k
  · show IvH (jcI g 0 m) (sideJc ξ 0 m)
    simp only [jcI, sideJc, if_true]
    by_cases hm : (m : ℕ) < 3
    · rw [if_pos hm, dif_pos hm]; exact ivH_I (hx ⟨m, hm⟩)
    · rw [if_neg hm, dif_neg hm]; exact ivH_zero
  · show IvH (jcI g 1 m) (sideJc ξ 1 m)
    simp only [jcI, sideJc, one_ne_zero, if_false, if_true]
    by_cases hm : (m : ℕ) < 3
    · rw [if_pos hm, dif_pos hm]; exact ivH_zero
    · rw [if_neg hm, dif_neg hm]; exact ivH_I (hy' m hm m.2)
  · show IvH (jcI g 2 m) (sideJc ξ 2 m)
    simp only [jcI, sideJc, show (2 : ℕ) ≠ 0 by norm_num, show (2 : ℕ) ≠ 1 by norm_num, if_false]
    by_cases hm : (m : ℕ) < 3
    · rw [if_pos hm, dif_pos hm]
      have := ivH_neg (ivH_I (ivH_mul (hy ⟨m, hm⟩) (ivH_conj (hx ⟨m, hm⟩))))
      rw [← mul_assoc] at this; exact this
    · rw [if_neg hm, dif_neg hm]
      have := ivH_I (ivH_mul (hy' m hm m.2) (ivH_conj (hx ⟨m - 3, by omega⟩)))
      rw [← mul_assoc] at this; exact this

/-- Each real Jacobian entry lies in its real interval. -/
theorem jI_sound {g : ℕ → IvC} {ξ : Fin 6 → ℝ}
    (hx : ∀ j : Fin 3, IvH (g j) (sx ξ j)) (hy : ∀ j : Fin 3, IvH (g (j + 3)) (sy ξ j)) (i m : Fin 6) :
    |sideJ ξ i m - rq (jI g i m).1| ≤ rn (jI g i m).2 := by
  by_cases hi : (i : ℕ) < 3
  · have h := ivH_jcI hx hy ⟨i, hi⟩ m
    simp only [jI, if_pos hi, sideJ, dif_pos hi]
    unfold IvH at h
    refine le_trans ?_ h
    have e : (sideJc ξ ⟨i, hi⟩ m).re - rq (jcI g i m).1.1 = (sideJc ξ ⟨i, hi⟩ m - cz (jcI g i m).1).re := by
      rw [Complex.sub_re, cz_eq, Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_re,
        Complex.ofReal_im, Complex.I_re, Complex.I_im]; simp [rq]
    rw [e]; exact Complex.abs_re_le_norm _
  · have h := ivH_jcI hx hy ⟨i - 3, by omega⟩ m
    simp only [jI, if_neg hi, sideJ, dif_neg hi]
    unfold IvH at h
    refine le_trans ?_ h
    have e : (sideJc ξ ⟨i - 3, by omega⟩ m).im - rq (jcI g (i - 3) m).1.2 =
        (sideJc ξ ⟨i - 3, by omega⟩ m - cz (jcI g (i - 3) m).1).im := by
      rw [Complex.sub_im, cz_eq, Complex.add_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_re,
        Complex.ofReal_im, Complex.I_re, Complex.I_im]; simp [rq]
    rw [e]; exact Complex.abs_im_le_norm _

lemma ivsum_l6Z (f : ℕ → ℤ) : ((l6 f).sum : ℤ) = ∑ l : Fin 6, f l := by
  simp only [l6, List.sum_cons, List.sum_nil, Fin.sum_univ_six]; simp; ring

lemma ivsum_l6N (f : ℕ → ℕ) : ((l6 f).sum : ℕ) = ∑ l : Fin 6, f l := by
  simp only [l6, List.sum_cons, List.sum_nil, Fin.sum_univ_six]; simp; ring

theorem qRowsI_sound {Y : List ℤ} {J : ℕ → ℕ → ℤ × ℕ} {A : Matrix (Fin 6) (Fin 6) ℝ}
    (hJ : ∀ l m : Fin 6, |A l m - rq (J l m).1| ≤ rn (J l m).2) (i : Fin 6) :
    ∑ m, |(1 - Ymat Y * A) i m| ≤ rn (gn (qRowsI Y J) i) := by
  rw [qRowsI, gn_l6 _ i.2, rn_sum_l6]
  refine Finset.sum_le_sum fun m _ => ?_
  set cI : ℤ := (if (i : ℕ) = m then (2 : ℤ) ^ (2 * pp) else 0) - (l6 fun l => gi Y (6 * i + l) * (J l m).1).sum
  set rI : ℕ := (l6 fun l => (gi Y (6 * i + l)).natAbs * (J l m).2).sum
  refine rn_cdiv_ge ?_
  have hT := two_pow_pos pp
  have h2 : (2 : ℝ) ^ (2 * pp) = 2 ^ pp * 2 ^ pp := by rw [two_mul, pow_add]
  -- the entry: (δ 2^{2p} − Σ Y c)/2^{2p} − Σ (Y/2^p)(A − c/2^p)
  have hc : (cI : ℝ) / 2 ^ (2 * pp) = (if i = m then 1 else 0) -
      ∑ l : Fin 6, rq (gi Y (6 * i + l)) * rq (J l m).1 := by
    have e1 : ((l6 fun l => gi Y (6 * i + l) * (J l m).1).sum : ℝ) =
        ∑ l : Fin 6, (gi Y (6 * i + l) : ℝ) * ((J l m).1 : ℝ) := by
      rw [ivsum_l6Z, Int.cast_sum]; push_cast; rfl
    simp only [cI, Int.cast_sub, e1, sub_div, Finset.sum_div]
    congr 1
    · by_cases him : i = m
      · subst him; simp [h2]
      · have him' : (i : ℕ) ≠ m := fun e => him (Fin.ext e)
        simp [him, him']
    · refine Finset.sum_congr rfl fun l _ => ?_
      unfold rq; rw [h2]; field_simp
  have hval : (1 - Ymat Y * A) i m = (cI : ℝ) / 2 ^ (2 * pp) -
      ∑ l : Fin 6, rq (gi Y (6 * i + l)) * (A l m - rq (J l m).1) := by
    rw [hc]
    simp only [Matrix.sub_apply, Matrix.mul_apply, Ymat, Matrix.one_apply, mul_sub, Finset.sum_sub_distrib]
    ring
  have hsum : |∑ l : Fin 6, rq (gi Y (6 * i + l)) * (A l m - rq (J l m).1)| ≤
      ∑ l : Fin 6, ((gi Y (6 * i + l)).natAbs : ℝ) / 2 ^ pp * rn (J l m).2 := by
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun l _ => ?_)
    rw [abs_mul]
    refine mul_le_mul ?_ (hJ l m) (abs_nonneg _) (by positivity)
    unfold rq; rw [abs_div, abs_of_pos hT, Nat.cast_natAbs, Int.cast_abs]
  have hr : ∑ l : Fin 6, ((gi Y (6 * i + l)).natAbs : ℝ) / 2 ^ pp * rn (J l m).2 = (rI : ℝ) / 2 ^ (2 * pp) := by
    simp only [rI, ivsum_l6N, Nat.cast_sum, Nat.cast_mul, rn]
    rw [Finset.sum_div]; refine Finset.sum_congr rfl fun l _ => ?_
    rw [h2]; field_simp
  have habs : |(1 - Ymat Y * A) i m| ≤ ((cI.natAbs + rI : ℕ) : ℝ) / 2 ^ (2 * pp) := by
    calc |(1 - Ymat Y * A) i m|
        = |(cI : ℝ) / 2 ^ (2 * pp) - ∑ l : Fin 6, rq (gi Y (6 * i + l)) * (A l m - rq (J l m).1)| := by rw [hval]
      _ ≤ |(cI : ℝ) / 2 ^ (2 * pp)| + |∑ l : Fin 6, rq (gi Y (6 * i + l)) * (A l m - rq (J l m).1)| := abs_sub _ _
      _ ≤ |(cI : ℝ)| / 2 ^ (2 * pp) + (rI : ℝ) / 2 ^ (2 * pp) := by
          rw [abs_div, abs_of_pos (by positivity : (0 : ℝ) < 2 ^ (2 * pp))]
          exact add_le_add le_rfl (hsum.trans hr.le)
      _ = ((cI.natAbs + rI : ℕ) : ℝ) / 2 ^ (2 * pp) := by
          rw [← add_div]; push_cast; rw [Nat.cast_natAbs, Int.cast_abs]
  calc |(1 - Ymat Y * A) i m| * 2 ^ pp ≤ ((cI.natAbs + rI : ℕ) : ℝ) / 2 ^ (2 * pp) * 2 ^ pp := by gcongr
    _ = ((cI.natAbs + rI : ℕ) : ℝ) / 2 ^ pp := by rw [h2]; field_simp

/-! ### The side -/

lemma hc_of {b q ρ : ℕ} (h : b * 2 ^ pp + q * ρ < ρ * 2 ^ pp) : rn b + rn q * rn ρ < rn ρ := by
  have key : (b : ℝ) * 2 ^ pp + q * ρ < ρ * 2 ^ pp := by exact_mod_cast h
  have hT := two_pow_pos pp
  unfold rn
  rw [show (b : ℝ) / 2 ^ pp + q / 2 ^ pp * (ρ / 2 ^ pp) = (b * 2 ^ pp + q * ρ) / (2 ^ pp * 2 ^ pp) by
    field_simp, show (ρ : ℝ) / 2 ^ pp = ρ * 2 ^ pp / (2 ^ pp * 2 ^ pp) by field_simp]
  exact div_lt_div_of_pos_right key (by positivity)

lemma tube_le {b q ρ : ℕ} {x : ℝ} (hx : x ≤ rn b + rn q * rn ρ) : x ≤ rn (cdivN (b * 2 ^ pp + q * ρ) pp) := by
  refine hx.trans ?_
  have hT := two_pow_pos pp
  have := cdivN_spec (b * 2 ^ pp + q * ρ) pp
  unfold rn
  rw [show (b : ℝ) / 2 ^ pp + q / 2 ^ pp * (ρ / 2 ^ pp) = (((b * 2 ^ pp + q * ρ : ℕ) : ℝ) / 2 ^ pp) / 2 ^ pp by
    push_cast; field_simp]
  exact div_le_div_of_nonneg_right this hT.le

/-- **The side check is sound.** -/
theorem side_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {G : List CT} {s t r : ℂ}
    (hG : (gT G 0).Has u s ∧ (gT G 1).Has u t ∧ (gT G 2).Has u r) {φ : List CT} {Y : List ℤ} {ρt : ℕ}
    (hok : (sideK h G φ Y ρt).ok = true) :
    ∃ φs : Fin 6 → ℝ, sS (sx φs) = s ∧ sS (sy φs) = t ∧ rS (sx φs) (sy φs) = r ∧
      (∀ j : Fin 6, (gT (tubeT φ (sideK h G φ Y ρt).e) j).Has u (φs j : ℂ)) ∧
      (∀ j : Fin 3, (gT (tubeRows h φ (sideK h G φ Y ρt).e) j).Has u (sx φs j)) ∧
      ∀ j : Fin 3, (gT (tubeRows h φ (sideK h G φ Y ρt).e) (j + 3)).Has u (sy φs j) := by
  set φr := l6 fun j => re (gT φ j) with hφr
  set bL := (matT h Y (FT h G (rowsT h φr))).map (bnd h) with hbL
  set xr := l6 fun j => addRho (gT (rowsT h φr) j) ρt with hxr
  set qL := qRowsI Y (jI fun j => ivc h (gT xr j)) with hqL
  set numL := l6 fun i => gn bL i * 2 ^ pp + gn qL i * ρt with hnumL
  have hK : sideK h G φ Y ρt = ⟨(l6 fun i => decide (gn numL i < ρt * 2 ^ pp)).all id &&
      (l6 fun i => expOK (gT φr i) nT).all id, numL.map fun x => cdivN x pp⟩ := rfl
  rw [hK] at hok ⊢
  simp only [Bool.and_eq_true] at hok
  obtain ⟨hc0, hexp0⟩ := hok
  have hc : ∀ i : Fin 6, gn bL i * 2 ^ pp + gn qL i * ρt < ρt * 2 ^ pp := fun i => by
    have := all_l6 hc0 i.2
    rw [decide_eq_true_eq, hnumL, gn_l6 _ i.2] at this; exact this
  have hexp : ∀ j : Fin 6, expOK (gT φr j) nT = true := fun j => all_l6 hexp0 j.2
  -- the predictor
  set φp : Fin 6 → ℝ := fun j => ((gT φ j).eval u).re with hφp
  have hgr : ∀ j : Fin 6, gT φr j = re (gT φ j) := fun j => gT_l6 _ j.2
  have hpred : ∀ j : Fin 6, (gT φr j).Has u (φp j : ℂ) := fun j => by
    rw [hgr j]; unfold CT.Has; rw [eval_re, sub_self, norm_zero]; exact rn_nonneg _
  -- the predictor's rows, widened to the tube
  obtain ⟨hx0, hy0⟩ := has_rowsT hu hexp hpred
  -- Krawczyk
  have hb : ∀ i : Fin 6, |(Ymat Y).mulVec (sideF s t r φp) i| ≤ rn (gn bL i) := fun i => by
    have h1 := norm_le_bnd hu (has_matT (Y := Y) hu (has_FT hu hG hx0 hy0) i)
    rw [Complex.norm_real, Real.norm_eq_abs] at h1
    have e : gn bL i = bnd h (gT (matT h Y (FT h G (rowsT h φr))) i) := by
      rw [hbL, matT, gn_map_l6 _ _ i.2, gT_l6 _ i.2]
    rw [e]; exact h1
  have hq : ∀ ξ ∈ closedBall φp (rn ρt), ∀ i : Fin 6, ∑ j, |(1 - Ymat Y * sideJ ξ) i j| ≤ rn (gn qL i) :=
    fun ξ hξ i => by
      have hd : ∀ j : Fin 6, |ξ j - φp j| ≤ rn ρt := fun j => by
        rw [← Real.dist_eq]; exact (dist_le_pi_dist ξ φp j).trans (mem_closedBall.1 hξ)
      have gx : ∀ j : Fin 3, IvH ((fun j => ivc h (gT xr j)) j) (sx ξ j) := fun j => by
        refine ivH_ivc hu ?_
        rw [hxr, gT_l6 _ (by omega)]
        exact has_row_shift (hx0 j) (hd ⟨j, by omega⟩)
      have gy : ∀ j : Fin 3, IvH ((fun j => ivc h (gT xr j)) (j + 3)) (sy ξ j) := fun j => by
        refine ivH_ivc hu ?_
        rw [hxr, gT_l6 _ (by omega)]
        exact has_row_shift (hy0 j) (hd ⟨j + 3, by omega⟩)
      have hJ := jI_sound (g := fun j => ivc h (gT xr j)) (ξ := ξ) gx gy
      have hQ := qRowsI_sound (Y := Y) (J := jI fun j => ivc h (gT xr j)) (A := sideJ ξ) hJ i
      exact hQ
  have hcr : ∀ i : Fin 6, rn (gn bL i) + rn (gn qL i) * rn ρt < rn ρt := fun i => hc_of (hc i)
  obtain ⟨⟨φs, -, hF0, hdist⟩, -⟩ := Method.krawczyk (sideF s t r) sideJ φp (rn ρt) (Ymat Y)
    (fun i => rn (gn bL i)) (fun i => rn (gn qL i)) (fun ξ _ v => hasDerivAt_sideF s t r ξ v) hb hq hcr
    (rn_nonneg _)
  obtain ⟨hs, ht, hr⟩ := sideF_zero hF0
  have hphase : ∀ j : Fin 6, (gT (tubeT φ (numL.map fun x => cdivN x pp)) j).Has u (φs j : ℂ) := fun j => by
    rw [tubeT, gT_l6 _ j.2, show gn (numL.map fun x => cdivN x pp) j = cdivN (gn bL j * 2 ^ pp + gn qL j * ρt) pp
      from by rw [hnumL]; exact gn_map_l6 _ _ j.2]
    refine has_addRho (hgr j ▸ hpred j) ?_
    rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
    exact tube_le (hdist j)
  have hdist' : ∀ j : Fin 6, |φs j - φp j| ≤ rn (gn (numL.map fun x => cdivN x pp) j) := fun j => by
    rw [show gn (numL.map fun x => cdivN x pp) j = cdivN (gn bL j * 2 ^ pp + gn qL j * ρt) pp
      from by rw [hnumL]; exact gn_map_l6 _ _ j.2]
    exact tube_le (hdist j)
  have hx : ∀ j : Fin 3, (gT (tubeRows h φ (numL.map fun x => cdivN x pp)) j).Has u (sx φs j) := fun j => by
    rw [tubeRows, gT_l6 _ (by omega)]
    exact has_row_shift (hx0 j) (hdist' ⟨j, by omega⟩)
  have hy : ∀ j : Fin 3, (gT (tubeRows h φ (numL.map fun x => cdivN x pp)) (j + 3)).Has u (sy φs j) := fun j => by
    rw [tubeRows, gT_l6 _ (by omega)]
    exact has_row_shift (hy0 j) (hdist' ⟨j + 3, by omega⟩)
  exact ⟨φs, hs, ht, hr, hphase, hx, hy⟩

end NoFourMUBs.KernelAtlas.Seed
