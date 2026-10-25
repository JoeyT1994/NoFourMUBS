import KernelAtlas.Edge.C1e

/-!
# Soundness of the C1e box check, part 1: the parameters and the sides

`sideE_sound`: if `sideE` passes, then at every point `u` of the box the augmented system `edgeF v a y` (`a`, `y`
the chart parameters at `w = w_c + u`) has exactly one zero in the sup-ball of radius `ρ` about the predictor, and
every zero there lies within the claimed radii `e` of the predictor (`Method.krawczyk` on seven unknowns: `b` from the
residual models, `q` from `qRowsH`: the Gram rows of the Jacobian on intervals, the label row `Im ∂Ψ` as models).
-/

open Complex NoFourMUBs.Side NoFourMUBs.SeedAtlas Metric

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-! ### Lists -/

lemma gT_l7 (f : ℕ → CT) {j : ℕ} (hj : j < 7) : gT (l7 f) j = f j := by interval_cases j <;> rfl
lemma gn_l7 (f : ℕ → ℕ) {j : ℕ} (hj : j < 7) : gn (l7 f) j = f j := by interval_cases j <;> rfl
lemma all_l7 {f : ℕ → Bool} (h : (l7 f).all id = true) {j : ℕ} (hj : j < 7) : f j = true := by
  simp only [l7, List.all_cons, List.all_nil, Bool.and_true, id, Bool.and_eq_true] at h
  interval_cases j <;> tauto
lemma gn_map_l7 {α : Type} (f : ℕ → α) (g : α → ℕ) {i : ℕ} (hi : i < 7) : gn ((l7 f).map g) i = g (f i) := by
  interval_cases i <;> rfl
lemma rn_sum_l7 (f : ℕ → ℕ) : rn ((l7 f).sum) = ∑ m : Fin 7, rn (f m) := by
  simp only [l7, List.sum_cons, List.sum_nil, rn_add, Fin.sum_univ_seven]
  simp [rn]; ring
lemma l7_sumZ (f : ℕ → ℤ) : ((l7 f).sum : ℤ) = ∑ l : Fin 7, f l := by
  simp only [l7, List.sum_cons, List.sum_nil, Fin.sum_univ_seven]; simp; ring
lemma l6_sumZ (f : ℕ → ℤ) : ((l6 f).sum : ℤ) = ∑ l : Fin 6, f l := by
  simp only [l6, List.sum_cons, List.sum_nil, Fin.sum_univ_six]; simp; ring
lemma l6_sumN (f : ℕ → ℕ) : ((l6 f).sum : ℕ) = ∑ l : Fin 6, f l := by
  simp only [l6, List.sum_cons, List.sum_nil, Fin.sum_univ_six]; simp; ring

/-! ### `π/3` -/

lemma pi3_bound : |(pi3Z : ℝ) / 2 ^ pp - Real.pi / 3| ≤ 1 / 2 ^ pp := by
  have h1 := Real.pi_gt_d20
  have h2 := Real.pi_lt_d20
  have hT : (2 : ℝ) ^ pp = 1152921504606846976 := by norm_num [pp]
  rw [hT, abs_le]
  unfold pi3Z
  constructor <;> norm_num <;> linarith

lemma pi3_mul_bound (c : ℤ) : |(c * pi3Z : ℤ) / (2 : ℝ) ^ pp - Real.pi * c / 3| ≤ rn c.natAbs := by
  have e : ((c * pi3Z : ℤ) : ℝ) / 2 ^ pp - Real.pi * c / 3 = c * ((pi3Z : ℝ) / 2 ^ pp - Real.pi / 3) := by
    push_cast; ring
  rw [e, abs_mul]
  unfold rn
  rw [Nat.cast_natAbs, Int.cast_abs]
  calc |(c : ℝ)| * |(pi3Z : ℝ) / 2 ^ pp - Real.pi / 3| ≤ |(c : ℝ)| * (1 / 2 ^ pp) :=
        mul_le_mul_of_nonneg_left pi3_bound (abs_nonneg _)
    _ = _ := by ring

/-! ### The chart parameters -/

/-- The frame. -/
def MR (B : EBallD) : Matrix (Fin 4) (Fin 4) ℝ := fun k l => rq (gi B.Mth (4 * k + l))

/-- The box point `w = w_c + u`. -/
def ewOf (D : EBoxD) (u : Fin 4 → ℝ) : Fin 4 → ℝ := fun l => rq (gi D.wc l) + u l

/-- `a_k(w) = π c_k/3 + Σ_l M_kl w_l`. -/
def aR (B : EBallD) (w : Fin 4 → ℝ) : Fin 3 → ℝ := fun k => Real.pi * cth k / 3 + ∑ l, MR B k.castSucc l * w l

/-- `y(w) = Σ_l M_3l w_l`. -/
def yR (B : EBallD) (w : Fin 4 → ℝ) : ℝ := ∑ l, MR B 3 l * w l

lemma affine_err (S : ℤ) : |((S : ℝ) / 2 ^ pp - fdivZ S pp) / 2 ^ pp| ≤ rn 1 := by
  rw [abs_div, abs_of_pos (two_pow_pos pp)]
  unfold rn; push_cast
  exact div_le_div_of_nonneg_right (fdivZ_spec S pp) (two_pow_pos pp).le

theorem has_aT (B : EBallD) (D : EBoxD) {u : Fin 4 → ℝ} (k : Fin 3) :
    (aT B D k).Has u ((aR B (ewOf D u) k : ℝ) : ℂ) := by
  unfold CT.Has
  set S : ℤ := (l4 fun l => gi B.Mth (4 * k + l) * gi D.wc l).sum
  have hS : (S : ℝ) = ∑ l : Fin 4, (gi B.Mth (4 * k + l) : ℝ) * gi D.wc l := by
    simp only [S, l4, List.sum_cons, List.sum_nil, Fin.sum_univ_four]; push_cast; simp; ring
  have hev : (aT B D k).eval u = ((rq (cth k * pi3Z + fdivZ S pp) + rq (gi B.Mth (4 * k + 0)) * u 0 +
      rq (gi B.Mth (4 * k + 1)) * u 1 + rq (gi B.Mth (4 * k + 2)) * u 2 + rq (gi B.Mth (4 * k + 3)) * u 3 : ℝ) : ℂ) :=
    eval_affine _ (fun j => gi B.Mth (4 * k + j)) _ u
  rw [hev, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  have e : aR B (ewOf D u) k - (rq (cth k * pi3Z + fdivZ S pp) + rq (gi B.Mth (4 * k + 0)) * u 0 +
      rq (gi B.Mth (4 * k + 1)) * u 1 + rq (gi B.Mth (4 * k + 2)) * u 2 + rq (gi B.Mth (4 * k + 3)) * u 3) =
      ((S : ℝ) / 2 ^ pp - fdivZ S pp) / 2 ^ pp - (((cth k * pi3Z : ℤ) : ℝ) / 2 ^ pp - Real.pi * cth k / 3) := by
    simp only [aR, MR, ewOf, rq, hS, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two,
      show ((3 : Fin 4) : ℕ) = 3 from rfl, add_zero, Fin.coe_castSucc]
    push_cast; field_simp; ring
  rw [e]
  refine (abs_sub _ _).trans ?_
  show _ ≤ rn (cth k).natAbs.succ
  rw [Nat.succ_eq_add_one, rn_add, add_comm (rn _)]
  exact add_le_add (affine_err S) (pi3_mul_bound _)

theorem has_yT (B : EBallD) (D : EBoxD) {u : Fin 4 → ℝ} : (yT B D).Has u ((yR B (ewOf D u) : ℝ) : ℂ) := by
  unfold CT.Has
  set S : ℤ := (l4 fun l => gi B.Mth (12 + l) * gi D.wc l).sum
  have hS : (S : ℝ) = ∑ l : Fin 4, (gi B.Mth (12 + l) : ℝ) * gi D.wc l := by
    simp only [S, l4, List.sum_cons, List.sum_nil, Fin.sum_univ_four]; push_cast; simp; ring
  have hev : (yT B D).eval u = ((rq (fdivZ S pp) + rq (gi B.Mth (12 + 0)) * u 0 +
      rq (gi B.Mth (12 + 1)) * u 1 + rq (gi B.Mth (12 + 2)) * u 2 + rq (gi B.Mth (12 + 3)) * u 3 : ℝ) : ℂ) :=
    eval_affine _ (fun j => gi B.Mth (12 + j)) _ u
  rw [hev, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  have e : yR B (ewOf D u) - (rq (fdivZ S pp) + rq (gi B.Mth (12 + 0)) * u 0 +
      rq (gi B.Mth (12 + 1)) * u 1 + rq (gi B.Mth (12 + 2)) * u 2 + rq (gi B.Mth (12 + 3)) * u 3) =
      ((S : ℝ) / 2 ^ pp - fdivZ S pp) / 2 ^ pp := by
    simp only [yR, MR, ewOf, rq, hS, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two,
      show ((3 : Fin 4) : ℕ) = 3 from rfl, add_zero]
    push_cast; field_simp; ring
  rw [e]; exact affine_err S

/-- The corner models: `e012_k ∋ e^{i a_k}`. -/
theorem has_e012 (B : EBallD) (D : EBoxD) {u : Fin 4 → ℝ} (hu : InBox D.hb u)
    (hok : (l3 (aT B D)).all (fun t => expOK t nT) = true) (k : Fin 3) :
    (gT ((l3 (aT B D)).map (expI D.hb nT)) k).Has u (Complex.exp ((aR B (ewOf D u) k : ℂ) * I)) := by
  have hm : (l3 (aT B D)).map (expI D.hb nT) = l3 fun j => expI D.hb nT (aT B D j) := rfl
  rw [hm, gT_l3 _ k.2]
  have h1 : expOK (aT B D k) nT = true := by
    simp only [l3, List.all_cons, List.all_nil, Bool.and_eq_true] at hok
    fin_cases k <;> simp_all
  exact has_expI hu h1 (has_aT B D k)

/-! ### The residual -/

/-- `ρ` of the seed `(a, t)`, entrywise. -/
lemma rho4_eq (a : Fin 3 → ℝ) (t : ℝ) : rho4 a t = ![Complex.exp ((a 0 : ℂ) * I), Complex.exp ((a 1 : ℂ) * I),
    Complex.exp ((a 2 : ℂ) * I), Complex.exp ((t : ℂ) * I)] := by
  funext k; rw [rho4_apply]; fin_cases k <;> simp [th4]

/-- The four corner models `e012 ++ [e3]` enclose `rho4 a t`. -/
lemma has_e4 {u : Fin 4 → ℝ} {e012 : List CT} {e3 : CT} {a : Fin 3 → ℝ} {t : ℝ} (hl : e012.length = 3)
    (he : ∀ k : Fin 3, (gT e012 k).Has u (Complex.exp ((a k : ℂ) * I)))
    (h3 : e3.Has u (Complex.exp ((t : ℂ) * I))) : ∀ k : Fin 4, (gT (e012 ++ [e3]) k).Has u (rho4 a t k) := by
  intro k
  rw [rho4_eq]
  have g : ∀ j : ℕ, j < 3 → gT (e012 ++ [e3]) j = gT e012 j := fun j hj => by
    unfold gT; rw [List.getD_append _ _ _ _ (by omega)]
  have g3 : gT (e012 ++ [e3]) 3 = e3 := by
    unfold gT; rw [List.getD_append_right _ _ _ _ (by omega)]; simp [hl]
  fin_cases k
  · simpa [g 0 (by norm_num)] using he 0
  · simpa [g 1 (by norm_num)] using he 1
  · simpa [g 2 (by norm_num)] using he 2
  · simpa [g3] using h3

/-- The predictor values `ξ̃(u)`. -/
def predR (ph : List CT) (u : Fin 4 → ℝ) : Fin 7 → ℝ := fun j => ((gT ph j).eval u).re

lemma has_pred (ph : List CT) (u : Fin 4 → ℝ) (j : ℕ) (hj : j < 7) :
    (re (gT ph j)).Has u (predR ph u ⟨j, hj⟩ : ℂ) := by
  unfold CT.Has predR; rw [eval_re, sub_self, norm_zero]; exact rn_nonneg _

/-- The residual models enclose `edgeF v a y` at the predictor. -/
theorem has_FE {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (v : Bool) {e : List CT} {a : Fin 3 → ℝ} {y : ℝ}
    {yM : CT} (hy : yM.Has u (y : ℂ)) {ξ : Fin 7 → ℝ} (he : ∀ k : Fin 4, (gT e k).Has u (rho4 a (ξ 0) k))
    {xy : List CT} (hx : ∀ j : Fin 3, (gT xy j).Has u (sx (phiOf ξ) j))
    (hyy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (sy (phiOf ξ) j)) (i : Fin 7) :
    (gT (FE h v e yM xy) i).Has u (edgeF v a y ξ i : ℂ) := by
  obtain ⟨hGH, hGV⟩ := has_gram hu he
  have hFT : ∀ i : Fin 6, (gT (FT h (if v then gramV h e else gramH h e) xy) i).Has u
      (sideF (gs v (rho4 a (ξ 0))) (gt v (rho4 a (ξ 0))) (gr v (rho4 a (ξ 0))) (phiOf ξ) i : ℂ) := by
    intro i
    cases v
    · simpa [gs, gt, gr] using has_FT hu hGH hx hyy i
    · simpa [gs, gt, gr] using has_FT hu hGV hx hyy i
  have hlen : (FT h (if v then gramV h e else gramH h e) xy).length = 6 := by simp [FT]
  by_cases hi : i.1 < 6
  · have g : gT (FE h v e yM xy) i = gT (FT h (if v then gramV h e else gramH h e) xy) i := by
      unfold gT FE; rw [List.getD_append _ _ _ _ (by omega)]
    rw [g]
    have := hFT ⟨i.1, hi⟩
    simpa [edgeF, dif_pos hi] using this
  · have hi6 : i.1 = 6 := by omega
    have g : gT (FE h v e yM xy) i = add (im (psiT h xy)) (smul h (halfZ v) yM) := by
      unfold gT FE; rw [List.getD_append_right _ _ _ _ (by omega)]; simp [hlen, hi6]
    rw [g]
    have H := has_add (has_im (has_psiT hu hx hyy)) (has_smul hu (halfZ v) hy)
    have hc : cz (halfZ v) = ((lsgn v / 2 : ℝ) : ℂ) := by
      cases v <;> simp [halfZ, lsgn, cz, pp] <;> norm_num
    rw [hc] at H
    convert H using 1
    simp only [edgeF, dif_neg hi, psiS]
    push_cast; ring

/-- `Y v` for a `7 × 7` grid matrix. -/
def Ymat7 (Y : List ℤ) : Matrix (Fin 7) (Fin 7) ℝ := fun i k => rq (gi Y (7 * i + k))

lemma hasAll_l7 {u : Fin 4 → ℝ} {g : ℕ → (ℤ × ℤ) × CT} {x : ℕ → ℂ} (h : ∀ k < 7, (g k).2.Has u (x k)) :
    HasAll u (l7 g) (l7 x) := by
  simp only [l7, HasAll]
  exact ⟨h 0 (by norm_num), h 1 (by norm_num), h 2 (by norm_num), h 3 (by norm_num), h 4 (by norm_num),
    h 5 (by norm_num), h 6 (by norm_num), trivial⟩

lemma valS_l7 (g : ℕ → (ℤ × ℤ) × CT) (x : ℕ → ℂ) :
    valS (l7 g) (l7 x) = ∑ k : Fin 7, cz (g k).1 * x k := by
  simp only [l7, valS, Fin.sum_univ_seven]; simp; ring

def ext7 (f : Fin 7 → ℝ) (k : ℕ) : ℂ := if hk : k < 7 then (f ⟨k, hk⟩ : ℂ) else 0

theorem has_matT7 {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {Y : List ℤ} {v : List CT} {f : Fin 7 → ℝ}
    (hv : ∀ k : Fin 7, (gT v k).Has u (f k : ℂ)) (i : Fin 7) :
    (gT (matT7 h Y v) i).Has u (((Ymat7 Y).mulVec f i : ℝ) : ℂ) := by
  rw [matT7, gT_l7 _ i.2]
  have := has_lin hu (hasAll_l7 (g := fun k => (rz (gi Y (7 * i + k)), gT v k)) (x := ext7 f)
    (fun k hk => by simp only [ext7, dif_pos hk]; exact hv ⟨k, hk⟩))
  convert this using 1
  rw [valS_l7]
  simp [Matrix.mulVec, dotProduct, Fin.sum_univ_seven, Ymat7, ext7, cz_rz]

/-! ### The Jacobian -/

/-- `∂Ψ/∂φ_m` models (`dpsiT`). -/
theorem has_dpsiT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {g : List CT} {φ : Fin 6 → ℝ}
    (hx : ∀ j : Fin 3, (gT g j).Has u (sx φ j)) (hy : ∀ j : Fin 3, (gT g (j + 3)).Has u (sy φ j)) (m : Fin 6) :
    (gT (dpsiT h g) m).Has u (dpsi φ m) := by
  have x0 : (gT g 0).Has u (sx φ 0) := hx 0
  have x1 : (gT g 1).Has u (sx φ 1) := hx 1
  have x2 : (gT g 2).Has u (sx φ 2) := hx 2
  have y0 : (gT g 3).Has u (sy φ 0) := hy 0
  have y1 : (gT g 4).Has u (sy φ 1) := hy 1
  have y2 : (gT g 5).Has u (sy φ 2) := hy 2
  have hp := has_sumT_cons (has_mul hu x0 y1) (has_sumT_cons (has_mul hu x0 y2) (has_sumT_cons (has_mul hu x1 y0)
    (has_sumT_cons (has_mul hu x1 y2) (has_sumT_cons (has_mul hu x2 y0) (has_sumT_cons (has_mul hu x2 y1)
      (has_sumT_nil u))))))
  have hh := has_sumT_cons (has_mul hu x1 y2) (has_sumT_cons (has_neg (has_mul hu x2 y1))
    (has_sumT_cons (has_neg (has_mul hu x0 y2)) (has_sumT_cons (has_mul hu x2 y0)
      (has_sumT_cons (has_mul hu x0 y1) (has_sumT_cons (has_neg (has_mul hu x1 y0)) (has_sumT_nil u))))))
  have hc := has_conj (has_mul hu (has_mul hu (has_mul hu x0 y0) (has_mul hu x1 y1)) (has_mul hu x2 y2))
  have hhc := has_mul hu (has_mul hu hh hh) hc
  have hphc := has_mul hu (has_mul hu (has_add hp hp) hh) hc
  have hbase := has_mul hu hp hhc
  have hP : ∀ m : Fin 6, (gT [mul h (gT g 0) (add (gT g 4) (gT g 5)), mul h (gT g 1) (add (gT g 3) (gT g 5)),
      mul h (gT g 2) (add (gT g 3) (gT g 4)), mul h (gT g 3) (add (gT g 1) (gT g 2)),
      mul h (gT g 4) (add (gT g 0) (gT g 2)), mul h (gT g 5) (add (gT g 0) (gT g 1))] m).Has u
      (PmS (sx φ) (sy φ) m) := by
    intro m; fin_cases m
    · exact has_mul hu x0 (has_add y1 y2)
    · exact has_mul hu x1 (has_add y0 y2)
    · exact has_mul hu x2 (has_add y0 y1)
    · exact has_mul hu y0 (has_add x1 x2)
    · exact has_mul hu y1 (has_add x0 x2)
    · exact has_mul hu y2 (has_add x0 x1)
  have hD : ∀ m : Fin 6, (gT [mul h (gT g 0) (sub (gT g 4) (gT g 5)), mul h (gT g 1) (sub (gT g 5) (gT g 3)),
      mul h (gT g 2) (sub (gT g 3) (gT g 4)), mul h (gT g 3) (sub (gT g 2) (gT g 1)),
      mul h (gT g 4) (sub (gT g 0) (gT g 2)), mul h (gT g 5) (sub (gT g 1) (gT g 0))] m).Has u
      (DmS (sx φ) (sy φ) m) := by
    intro m; fin_cases m
    · exact has_mul hu x0 (has_sub y1 y2)
    · exact has_mul hu x1 (has_sub y2 y0)
    · exact has_mul hu x2 (has_sub y0 y1)
    · exact has_mul hu y0 (has_sub x2 x1)
    · exact has_mul hu y1 (has_sub x0 x2)
    · exact has_mul hu y2 (has_sub x1 x0)
  have H := has_mulI (has_sub (has_add (has_mul hu (hP m) hhc) (has_mul hu hphc (hD m))) hbase)
  rw [dpsiT, gT_l6 _ m.2]
  convert H using 1
  simp only [dpsi, piS, hS, cS]
  ring

/-- The Gram rows of `edgeJ` lie in their intervals. -/
theorem jGI_sound {v : Bool} {a : Fin 3 → ℝ} {ξ : Fin 7 → ℝ} {g : ℕ → IvC} {g3 g1 g2 : IvC}
    (hx : ∀ j : Fin 3, IvH (g j) (sx (phiOf ξ) j)) (hy : ∀ j : Fin 3, IvH (g (j + 3)) (sy (phiOf ξ) j))
    (h3 : IvH g3 (rho4 a (ξ 0) 3)) (h1 : IvH g1 (rho4 a (ξ 0) 1)) (h2 : IvH g2 (rho4 a (ξ 0) 2))
    (i : Fin 6) (m : Fin 7) :
    |edgeJ v a ξ ⟨i.1, by omega⟩ m - rq (jGI v g g3 g1 g2 i m).1| ≤ rn (jGI v g g3 g1 g2 i m).2 := by
  have hc : ∀ (k : Fin 3), IvH (if m.1 = 0 then dG4I v g3 g1 g2 k else jcI g k (m.1 - 1)) (edgeJc v a ξ k m) := by
    intro k
    by_cases hm : m.1 = 0
    · rw [if_pos hm]; simp only [edgeJc, dif_pos hm]
      fin_cases k
      · simp only [dG4I, dG4, if_pos]; exact ivH_zero
      · simp only [dG4I, dG4]; simpa using ivH_I h3
      · simp only [dG4I, dG4]
        cases v
        · simpa [mul_assoc] using ivH_I (ivH_mul h3 (ivH_conj h1))
        · simpa [mul_assoc] using ivH_I (ivH_mul h3 (ivH_conj h2))
    · rw [if_neg hm]; simp only [edgeJc, dif_neg hm]
      exact ivH_jcI hx hy k ⟨m.1 - 1, by omega⟩
  have hre : ∀ z : ℂ, ∀ c : IvC, IvH c z → |z.re - rq c.1.1| ≤ rn c.2 := fun z c hz => by
    refine le_trans ?_ hz
    have e : z.re - rq c.1.1 = (z - cz c.1).re := by
      rw [Complex.sub_re, cz_eq, Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_re,
        Complex.ofReal_im, Complex.I_re, Complex.I_im]; simp [rq]
    rw [e]; exact Complex.abs_re_le_norm _
  have him : ∀ z : ℂ, ∀ c : IvC, IvH c z → |z.im - rq c.1.2| ≤ rn c.2 := fun z c hz => by
    refine le_trans ?_ hz
    have e : z.im - rq c.1.2 = (z - cz c.1).im := by
      rw [Complex.sub_im, cz_eq, Complex.add_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_re,
        Complex.ofReal_im, Complex.I_re, Complex.I_im]; simp [rq]
    rw [e]; exact Complex.abs_im_le_norm _
  by_cases hi : i.1 < 3
  · simp only [jGI, if_pos hi, edgeJ, dif_pos hi]
    exact hre _ _ (hc ⟨i.1, hi⟩)
  · simp only [jGI, if_neg hi, edgeJ, dif_neg hi, dif_pos (show i.1 < 6 from i.2)]
    exact him _ _ (hc ⟨i.1 - 3, by omega⟩)

/-- **The hybrid row sums** bound `Σ_m |(I − Y A)_im|`. -/
theorem qRowsH_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {Y : List ℤ} {JG : ℕ → ℕ → ℤ × ℕ}
    {JL : ℕ → CT} {A : Matrix (Fin 7) (Fin 7) ℝ}
    (hG : ∀ (l : Fin 6) (m : Fin 7), |A ⟨l.1, by omega⟩ m - rq (JG l m).1| ≤ rn (JG l m).2)
    (hL : ∀ m : Fin 7, (JL m).Has u (A 6 m : ℂ)) (i : Fin 7) :
    ∑ m, |(1 - Ymat7 Y * A) i m| ≤ rn (gn (qRowsH h Y JG JL) i) := by
  rw [qRowsH, gn_l7 _ i.2, rn_sum_l7]
  refine Finset.sum_le_sum fun m _ => ?_
  set N : ℤ := (if (i : ℕ) = m then (2 : ℤ) ^ (2 * pp) else 0) - (l6 fun l => gi Y (7 * i + l) * (JG l m).1).sum
  set c0 : ℤ := fdivZ N pp
  set T := sub (const (rz c0)) (smul h (rz (gi Y (7 * i + 6))) (JL m))
  have hT : T.Has u (((rq c0 - rq (gi Y (7 * i + 6)) * A 6 m : ℝ)) : ℂ) := by
    have := has_sub (has_const (rz c0) u) (has_smul hu (rz (gi Y (7 * i + 6))) (hL m))
    rw [cz_rz, cz_rz] at this
    convert this using 1; push_cast; ring
  have hTb := norm_le_bnd hu hT
  rw [Complex.norm_real, Real.norm_eq_abs] at hTb
  have hp := two_pow_pos pp
  have h2 : (2 : ℝ) ^ (2 * pp) = 2 ^ pp * 2 ^ pp := by rw [two_mul, pow_add]
  -- `N / 2^{2p} = δ − Σ_{l<6} Y c`
  have hN : (N : ℝ) / 2 ^ (2 * pp) = (if i = m then 1 else 0) - ∑ l : Fin 6, rq (gi Y (7 * i + l)) * rq (JG l m).1 := by
    have e1 : ((l6 fun l => gi Y (7 * i + l) * (JG l m).1).sum : ℝ) =
        ∑ l : Fin 6, (gi Y (7 * i + l) : ℝ) * ((JG l m).1 : ℝ) := by
      rw [l6_sumZ, Int.cast_sum]; push_cast; rfl
    simp only [N, Int.cast_sub, e1, sub_div, Finset.sum_div]
    congr 1
    · by_cases him : i = m
      · subst him; simp [h2]
      · have him' : (i : ℕ) ≠ m := fun e => him (Fin.ext e)
        simp [him, him']
    · refine Finset.sum_congr rfl fun l _ => ?_
      unfold rq; rw [h2]; field_simp
  have hc0 : |(N : ℝ) / 2 ^ (2 * pp) - rq c0| ≤ rn 1 := by
    have := fdivZ_spec N pp
    rw [h2]
    unfold rq rn
    rw [show (N : ℝ) / (2 ^ pp * 2 ^ pp) - (c0 : ℝ) / 2 ^ pp = ((N : ℝ) / 2 ^ pp - c0) / 2 ^ pp by field_simp]
    rw [abs_div, abs_of_pos hp]; push_cast
    exact div_le_div_of_nonneg_right this hp.le
  -- the entry
  have hsplit : (Ymat7 Y * A) i m = ∑ l : Fin 6, rq (gi Y (7 * i + l)) * A ⟨l.1, by omega⟩ m +
      rq (gi Y (7 * i + 6)) * A 6 m := by
    rw [Matrix.mul_apply, Fin.sum_univ_castSucc]; rfl
  have hone : (1 : Matrix (Fin 7) (Fin 7) ℝ) i m = if i = m then 1 else 0 := Matrix.one_apply
  have hval : (1 - Ymat7 Y * A) i m = ((N : ℝ) / 2 ^ (2 * pp) - rq c0) + (rq c0 - rq (gi Y (7 * i + 6)) * A 6 m) -
      ∑ l : Fin 6, rq (gi Y (7 * i + l)) * (A ⟨l.1, by omega⟩ m - rq (JG l m).1) := by
    rw [Matrix.sub_apply, hsplit, hone, hN]
    simp only [mul_sub, Finset.sum_sub_distrib]
    ring
  have hsum : |∑ l : Fin 6, rq (gi Y (7 * i + l)) * (A ⟨l.1, by omega⟩ m - rq (JG l m).1)| ≤
      rn (cdivN ((l6 fun l => (gi Y (7 * i + l)).natAbs * (JG l m).2).sum) pp) := by
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    have hl : ∀ l : Fin 6, |rq (gi Y (7 * i + l)) * (A ⟨l.1, by omega⟩ m - rq (JG l m).1)| ≤
        ((gi Y (7 * i + l)).natAbs : ℝ) / 2 ^ pp * rn (JG l m).2 := fun l => by
      rw [abs_mul]
      refine mul_le_mul ?_ (hG l m) (abs_nonneg _) (div_nonneg (Nat.cast_nonneg _) (two_pow_pos pp).le)
      unfold rq; rw [abs_div, abs_of_pos hp, Nat.cast_natAbs, Int.cast_abs]
    refine (Finset.sum_le_sum fun l _ => hl l).trans ?_
    refine rn_cdiv_ge ?_
    rw [l6_sumN]; push_cast
    rw [Finset.sum_mul, Finset.sum_div]
    refine le_of_eq (Finset.sum_congr rfl fun l _ => ?_)
    unfold rn; field_simp
  rw [hval, rn_add, rn_add]
  calc |(N : ℝ) / 2 ^ (2 * pp) - rq c0 + (rq c0 - rq (gi Y (7 * i + 6)) * A 6 m) -
        ∑ l : Fin 6, rq (gi Y (7 * i + l)) * (A ⟨l.1, by omega⟩ m - rq (JG l m).1)|
      ≤ |(N : ℝ) / 2 ^ (2 * pp) - rq c0| + |rq c0 - rq (gi Y (7 * i + 6)) * A 6 m| +
        |∑ l : Fin 6, rq (gi Y (7 * i + l)) * (A ⟨l.1, by omega⟩ m - rq (JG l m).1)| := by
          refine (abs_sub _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ ≤ rn 1 + rn (bnd h T) + rn (cdivN ((l6 fun l => (gi Y (7 * i + l)).natAbs * (JG l m).2).sum) pp) :=
          add_le_add (add_le_add hc0 hTb) hsum
    _ = _ := by ring

/-! ### The side -/

set_option maxHeartbeats 2000000 in
/-- **The side check is sound.** -/
theorem sideE_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (v : Bool) {e012 : List CT}
    (hl : e012.length = 3) {a : Fin 3 → ℝ} (he : ∀ k : Fin 3, (gT e012 k).Has u (Complex.exp ((a k : ℂ) * I)))
    {yM : CT} {y : ℝ} (hy : yM.Has u (y : ℂ)) {ph : List CT} {Y : List ℤ} {ρt : ℕ} {ec : List ℕ}
    (hok : sideE h v e012 yM ph Y ρt ec = true) :
    (∃ ξ ∈ closedBall (predR ph u) (rn ρt), edgeF v a y ξ = 0) ∧
    (∀ ξ ∈ closedBall (predR ph u) (rn ρt), edgeF v a y ξ = 0 →
      ∀ j : Fin 7, |ξ j - predR ph u j| ≤ rn (gn ec j)) ∧
    (∀ ξ ∈ closedBall (predR ph u) (rn ρt), ∀ ξ' ∈ closedBall (predR ph u) (rn ρt),
      edgeF v a y ξ = 0 → edgeF v a y ξ' = 0 → ξ = ξ') := by
  set t := re (gT ph 0) with ht
  set e3 := expI h nT t with he3
  set φr := l6 fun j => re (gT ph (j + 1)) with hφr
  set xy := rowsT h φr with hxy
  set bL := (matT7 h Y (FE h v (e012 ++ [e3]) yM xy)).map (bnd h) with hbL
  set g := l6 fun j => addRho (gT xy j) ρt with hg
  set qL := qRowsH h Y (jGI v (fun j => ivc h (gT g j)) (ivc h (addRho e3 ρt)) (ivc h (gT e012 1))
    (ivc h (gT e012 2))) (jLT (dpsiT h g)) with hqL
  set numL := l7 fun i => gn bL i * 2 ^ pp + gn qL i * ρt with hnumL
  have hK : sideE h v e012 yM ph Y ρt ec = ((l7 fun i => decide (gn numL i < ρt * 2 ^ pp) &&
      decide (cdivN (gn numL i) pp ≤ gn ec i)).all id && expOK t nT && (l6 fun i => expOK (gT φr i) nT).all id) := rfl
  rw [hK] at hok
  simp only [Bool.and_eq_true] at hok
  obtain ⟨⟨hc0, hexpt⟩, hexp0⟩ := hok
  have hc : ∀ i : Fin 7, gn bL i * 2 ^ pp + gn qL i * ρt < ρt * 2 ^ pp ∧
      cdivN (gn bL i * 2 ^ pp + gn qL i * ρt) pp ≤ gn ec i := fun i => by
    have := all_l7 hc0 i.2
    simp only [Bool.and_eq_true, decide_eq_true_eq] at this
    rw [hnumL, gn_l7 _ i.2] at this; exact this
  have hexp : ∀ j : Fin 6, expOK (gT φr j) nT = true := fun j => all_l6 hexp0 j.2
  -- the predictor
  set p := predR ph u with hp
  have hpφ : ∀ j : Fin 6, (gT φr j).Has u (phiOf p j : ℂ) := fun j => by
    rw [hφr, gT_l6 _ j.2]; exact has_pred ph u (j + 1) (by omega)
  obtain ⟨hx0, hy0⟩ := has_rowsT hu hexp hpφ
  have h3 : e3.Has u (Complex.exp ((p 0 : ℂ) * I)) := has_expI hu hexpt (has_pred ph u 0 (by norm_num))
  have he4 := has_e4 hl he h3
  -- Krawczyk
  have hb : ∀ i : Fin 7, |(Ymat7 Y).mulVec (edgeF v a y p) i| ≤ rn (gn bL i) := fun i => by
    have h1 := norm_le_bnd hu (has_matT7 (Y := Y) hu (has_FE hu v hy he4 hx0 hy0) i)
    rw [Complex.norm_real, Real.norm_eq_abs] at h1
    have e : gn bL i = bnd h (gT (matT7 h Y (FE h v (e012 ++ [e3]) yM xy)) i) := by
      rw [hbL, matT7, gn_map_l7 _ _ i.2, gT_l7 _ i.2]
    rw [e]; exact h1
  have hq : ∀ ξ ∈ closedBall p (rn ρt), ∀ i : Fin 7, ∑ j, |(1 - Ymat7 Y * edgeJ v a ξ) i j| ≤ rn (gn qL i) :=
    fun ξ hξ i => by
      have hd : ∀ j : Fin 7, |ξ j - p j| ≤ rn ρt := fun j => by
        rw [← Real.dist_eq]; exact (dist_le_pi_dist ξ p j).trans (mem_closedBall.1 hξ)
      have gx : ∀ j : Fin 3, (gT g j).Has u (sx (phiOf ξ) j) := fun j => by
        rw [hg, gT_l6 _ (by omega)]
        exact has_row_shift (hx0 j) (hd ⟨j + 1, by omega⟩)
      have gy : ∀ j : Fin 3, (gT g (j + 3)).Has u (sy (phiOf ξ) j) := fun j => by
        rw [hg, gT_l6 _ (by omega)]
        exact has_row_shift (hy0 j) (hd ⟨j + 4, by omega⟩)
      have r4 := rho4_eq a (ξ 0)
      have i3 : IvH (ivc h (addRho e3 ρt)) (rho4 a (ξ 0) 3) := by
        refine ivH_ivc hu ?_; rw [r4]; exact has_row_shift h3 (hd 0)
      have i1 : IvH (ivc h (gT e012 1)) (rho4 a (ξ 0) 1) := by
        refine ivH_ivc hu ?_; rw [r4]; exact he 1
      have i2 : IvH (ivc h (gT e012 2)) (rho4 a (ξ 0) 2) := by
        refine ivH_ivc hu ?_; rw [r4]; exact he 2
      have hJG : ∀ (l : Fin 6) (m : Fin 7), |edgeJ v a ξ ⟨l.1, by omega⟩ m -
          rq (jGI v (fun j => ivc h (gT g j)) (ivc h (addRho e3 ρt)) (ivc h (gT e012 1)) (ivc h (gT e012 2)) l m).1| ≤
          rn (jGI v (fun j => ivc h (gT g j)) (ivc h (addRho e3 ρt)) (ivc h (gT e012 1)) (ivc h (gT e012 2)) l m).2 :=
        fun l m => jGI_sound (v := v) (g := fun j => ivc h (gT g j)) (g3 := ivc h (addRho e3 ρt))
          (g1 := ivc h (gT e012 1)) (g2 := ivc h (gT e012 2)) (fun j => ivH_ivc hu (gx j))
          (fun j => ivH_ivc hu (gy j)) i3 i1 i2 l m
      have hJL : ∀ m : Fin 7, (jLT (dpsiT h g) m).Has u (edgeJ v a ξ 6 m : ℂ) := fun m => by
        by_cases hm : m.1 = 0
        · have e0 : edgeJ v a ξ 6 m = 0 := by simp [edgeJ, hm]
          rw [e0, jLT, if_pos hm]; exact has_zero' u
        · rw [jLT, if_neg hm]
          have hd' := has_dpsiT hu gx gy ⟨m.1 - 1, by omega⟩
          rw [show (gT (dpsiT h g) ((⟨m.1 - 1, by omega⟩ : Fin 6) : ℕ)) = gT (dpsiT h g) (m.1 - 1) from rfl] at hd'
          have e6 : edgeJ v a ξ 6 m = (dpsi (phiOf ξ) ⟨m.1 - 1, by omega⟩).im := by
            simp [edgeJ, hm]
          rw [e6]
          have := has_im hd'
          exact this
      have H := qRowsH_sound (Y := Y) hu hJG hJL i
      rw [hqL]; exact H
  have hcr : ∀ i : Fin 7, rn (gn bL i) + rn (gn qL i) * rn ρt < rn ρt := fun i => hc_of (hc i).1
  obtain ⟨⟨ξ0, hξ0, hF0, hdist⟩, huniq⟩ := Method.krawczyk (edgeF v a y) (edgeJ v a) p (rn ρt) (Ymat7 Y)
    (fun i => rn (gn bL i)) (fun i => rn (gn qL i)) (fun ξ _ w => hasDerivAt_edgeF v a y ξ w) hb hq hcr
    (rn_nonneg _)
  refine ⟨⟨ξ0, hξ0, hF0⟩, fun ξ hξ hF j => ?_, huniq⟩
  rw [huniq ξ hξ ξ0 hξ0 hF hF0]
  exact (tube_le (hdist j)).trans (rn_mono (hc j).2)

end NoFourMUBs.KernelAtlas.Edge
