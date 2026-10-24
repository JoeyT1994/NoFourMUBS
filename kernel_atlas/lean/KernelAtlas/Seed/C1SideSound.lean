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

theorem has_jcT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {xy : List CT} {ξ : Fin 6 → ℝ}
    (hx : ∀ j : Fin 3, (gT xy j).Has u (sx ξ j)) (hy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (sy ξ j))
    (k : Fin 3) (m : Fin 6) : (jcT h xy k m).Has u (sideJc ξ k m) := by
  have z := has_zero u
  fin_cases k
  · show (jcT h xy 0 m).Has u (sideJc ξ 0 m)
    simp only [jcT, sideJc, if_true]
    by_cases hm : (m : ℕ) < 3
    · rw [if_pos hm, dif_pos hm]; exact has_mulI (hx ⟨m, hm⟩)
    · rw [if_neg hm, dif_neg hm]; exact z
  · show (jcT h xy 1 m).Has u (sideJc ξ 1 m)
    simp only [jcT, sideJc, one_ne_zero, if_false, if_true]
    by_cases hm : (m : ℕ) < 3
    · rw [if_pos hm, dif_pos hm]; exact z
    · rw [if_neg hm, dif_neg hm]; exact has_mulI (hy_of hy m hm m.2)
  · show (jcT h xy 2 m).Has u (sideJc ξ 2 m)
    simp only [jcT, sideJc, show (2 : ℕ) ≠ 0 by norm_num, show (2 : ℕ) ≠ 1 by norm_num, if_false]
    by_cases hm : (m : ℕ) < 3
    · rw [if_pos hm, dif_pos hm]
      have := has_neg (has_mulI (has_mul hu (hy ⟨m, hm⟩) (has_conj (hx ⟨m, hm⟩))))
      rw [← mul_assoc] at this; exact this
    · rw [if_neg hm, dif_neg hm]
      have := has_mulI (has_mul hu (hy_of hy m hm m.2) (has_conj (hx ⟨m - 3, by omega⟩)))
      rw [← mul_assoc] at this; exact this

theorem has_JT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {xy : List CT} {ξ : Fin 6 → ℝ}
    (hx : ∀ j : Fin 3, (gT xy j).Has u (sx ξ j)) (hy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (sy ξ j))
    (i m : Fin 6) : (gT (JT h xy) (6 * i + m)).Has u (sideJ ξ i m : ℂ) := by
  rw [JT, gT_l36 _ (by omega)]
  have e1 : (6 * (i : ℕ) + m) / 6 = i := by omega
  have e2 : (6 * (i : ℕ) + m) % 6 = m := by omega
  simp only [e1, e2]
  by_cases hi : (i : ℕ) < 3
  · rw [if_pos hi]; simp only [sideJ, dif_pos hi]; exact has_re (has_jcT hu hx hy ⟨i, hi⟩ m)
  · rw [if_neg hi]; simp only [sideJ, dif_neg hi]; exact has_im (has_jcT hu hx hy ⟨i - 3, by omega⟩ m)

theorem qRows_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {Y : List ℤ} {J : List CT}
    {A : Matrix (Fin 6) (Fin 6) ℝ} (hJ : ∀ l m : Fin 6, (gT J (6 * l + m)).Has u (A l m : ℂ)) (i : Fin 6) :
    ∑ m, |(1 - Ymat Y * A) i m| ≤ rn (gn (qRows h Y J) i) := by
  rw [qRows, gn_l6 _ i.2, rn_sum_l6]
  refine Finset.sum_le_sum fun m _ => ?_
  have hlin := has_lin hu (hasAll_l6 (g := fun l => (rz (gi Y (6 * i + l)), gT J (6 * l + m)))
    (x := ext6 fun l => A l m) (fun k hk => by simp only [ext6, dif_pos hk]; exact hJ ⟨k, hk⟩ m))
  have hc := has_sub (has_const (if (i : ℕ) = m then oneZ else (0, 0)) u) hlin
  have hb := norm_le_bnd hu hc
  refine le_of_eq_of_le ?_ hb
  rw [← Real.norm_eq_abs, ← Complex.norm_real]
  congr 1
  rw [valS_l6]
  by_cases him : i = m
  · subst him
    simp [Matrix.sub_apply, Matrix.mul_apply, Fin.sum_univ_six, Ymat, cz_rz, ext6, cz_one]
  · have him' : (i : ℕ) ≠ m := fun e => him (Fin.ext e)
    rw [if_neg him', show cz (0, 0) = 0 by simp [cz]]
    simp [Matrix.sub_apply, him, Matrix.mul_apply, Fin.sum_univ_six, Ymat, cz_rz, ext6]

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
      (∀ j : Fin 3, (gT (rowsT h (tubeT φ (sideK h G φ Y ρt).e)) j).Has u (sx φs j)) ∧
      ∀ j : Fin 3, (gT (rowsT h (tubeT φ (sideK h G φ Y ρt).e)) (j + 3)).Has u (sy φs j) := by
  set φr := l6 fun j => re (gT φ j) with hφr
  set bL := (matT h Y (FT h G (rowsT h φr))).map (bnd h) with hbL
  set qL := qRows h Y (JT h (rowsT h (l6 fun j => addRho (gT φr j) ρt))) with hqL
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
  -- the tube
  have htube : ∀ ξ ∈ closedBall φp (rn ρt), ∀ j : Fin 6,
      (gT (l6 fun j => addRho (gT φr j) ρt) j).Has u (ξ j : ℂ) := fun ξ hξ j => by
    rw [gT_l6 _ j.2]
    refine has_addRho (hpred j) ?_
    rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, ← Real.dist_eq]
    exact (dist_le_pi_dist ξ φp j).trans (mem_closedBall.1 hξ)
  have htexp : ∀ j : Fin 6, expOK (gT (l6 fun j => addRho (gT φr j) ρt) j) nT = true := fun j => by
    rw [gT_l6 _ j.2, expI_addRho_ok]; exact hexp j
  -- Krawczyk
  have hb : ∀ i : Fin 6, |(Ymat Y).mulVec (sideF s t r φp) i| ≤ rn (gn bL i) := fun i => by
    obtain ⟨hx, hy⟩ := has_rowsT hu hexp hpred
    have h1 := norm_le_bnd hu (has_matT (Y := Y) hu (has_FT hu hG hx hy) i)
    rw [Complex.norm_real, Real.norm_eq_abs] at h1
    have e : gn bL i = bnd h (gT (matT h Y (FT h G (rowsT h φr))) i) := by
      rw [hbL, matT, gn_map_l6 _ _ i.2, gT_l6 _ i.2]
    rw [e]; exact h1
  have hq : ∀ ξ ∈ closedBall φp (rn ρt), ∀ i : Fin 6, ∑ j, |(1 - Ymat Y * sideJ ξ) i j| ≤ rn (gn qL i) :=
    fun ξ hξ i => by
      obtain ⟨hx, hy⟩ := has_rowsT hu htexp (htube ξ hξ)
      exact qRows_sound hu (has_JT hu hx hy) i
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
  have hrexp : ∀ j : Fin 6, expOK (gT (tubeT φ (numL.map fun x => cdivN x pp)) j) nT = true := fun j => by
    rw [tubeT, gT_l6 _ j.2, expI_addRho_ok, ← hgr j]; exact hexp j
  obtain ⟨hx, hy⟩ := has_rowsT hu hrexp hphase
  exact ⟨φs, hs, ht, hr, hphase, hx, hy⟩

end NoFourMUBs.KernelAtlas.Seed
