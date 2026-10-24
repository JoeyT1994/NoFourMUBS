import KernelAtlas.Seed.C1
import KernelAtlas.Seed.Side
import NoFourMUBs.SeedAtlas.Method.Completion

/-!
# Soundness of the C1 box check, part 1: lists, `θ`, the corner, the Gram data and the sides

Pointwise statements: for `u` in the box, each model of `c1Box` encloses the corresponding exact quantity.
-/

open Complex NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Explicit lists -/

lemma gT_l3 (f : ℕ → CT) {j : ℕ} (hj : j < 3) : gT (l3 f) j = f j := by interval_cases j <;> rfl
lemma gT_l4 (f : ℕ → CT) {j : ℕ} (hj : j < 4) : gT (l4 f) j = f j := by interval_cases j <;> rfl
lemma gT_l6 (f : ℕ → CT) {j : ℕ} (hj : j < 6) : gT (l6 f) j = f j := by interval_cases j <;> rfl
lemma gT_l9 (f : ℕ → CT) {j : ℕ} (hj : j < 9) : gT (l9 f) j = f j := by interval_cases j <;> rfl
lemma gT_l36 (f : ℕ → CT) {j : ℕ} (hj : j < 36) : gT (l36 f) j = f j := by interval_cases j <;> rfl
lemma gn_l6 (f : ℕ → ℕ) {j : ℕ} (hj : j < 6) : gn (l6 f) j = f j := by interval_cases j <;> rfl
lemma gn_l3 (f : ℕ → ℕ) {j : ℕ} (hj : j < 3) : gn (l3 f) j = f j := by interval_cases j <;> rfl
lemma gn_l9 (f : ℕ → ℕ) {j : ℕ} (hj : j < 9) : gn (l9 f) j = f j := by interval_cases j <;> rfl

lemma all_l6 {f : ℕ → Bool} (h : (l6 f).all id = true) {j : ℕ} (hj : j < 6) : f j = true := by
  simp only [l6, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases j <;> tauto

lemma all_l9 {f : ℕ → Bool} (h : (l9 f).all id = true) {j : ℕ} (hj : j < 9) : f j = true := by
  simp only [l9, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases j <;> tauto

lemma all_l4 {f : ℕ → Bool} (h : (l4 f).all id = true) {j : ℕ} (hj : j < 4) : f j = true := by
  simp only [l4, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases j <;> tauto

/-! ### Sums -/

theorem has_sumT3 {A B C : CT} {u : Fin 4 → ℝ} {x y z : ℂ} (ha : A.Has u x) (hb : B.Has u y) (hc : C.Has u z) :
    (sumT [A, B, C]).Has u (x + y + z) := by
  have := has_add ha (has_add hb (has_add hc (has_const (0, 0) u)))
  have e : cz (0, 0) = 0 := by simp [cz]
  rw [e] at this
  unfold sumT; simp only [List.foldr_cons, List.foldr_nil]
  rw [show x + y + z = x + (y + (z + 0)) by ring]; exact this

/-! ### Grid reals -/

/-- A real grid value. -/
def rq (a : ℤ) : ℝ := (a : ℝ) / 2 ^ pp

lemma cz_rz (a : ℤ) : cz (rz a) = (rq a : ℂ) := by unfold cz rz rq; push_cast; ring

/-- The box point `w = w_c + u`. -/
def wOf (D : BoxD) (u : Fin 4 → ℝ) : Fin 4 → ℝ := fun l => rq (gi D.wc l) + u l

/-- `θ(w) = θ₀ + M_θ w` with the ball's grid data. -/
def thR (B : BallD) (w : Fin 4 → ℝ) (k : ℕ) : ℝ :=
  rq (gi B.th0 k) + rq (gi B.Mth (4 * k)) * w 0 + rq (gi B.Mth (4 * k + 1)) * w 1 +
    rq (gi B.Mth (4 * k + 2)) * w 2 + rq (gi B.Mth (4 * k + 3)) * w 3

/-- An affine model `c + Σ_l g_l u_l`. -/
lemma eval_affine (c : ℤ) (g : ℕ → ℤ) (ρ : ℕ) (u : Fin 4 → ℝ) :
    (mk (fun m => if m = 0 then rz c else if m ≤ 4 then rz (g (m - 1)) else (0, 0)) ρ).eval u =
      ((rq c + rq (g 0) * u 0 + rq (g 1) * u 1 + rq (g 2) * u 2 + rq (g 3) * u 3 : ℝ) : ℂ) := by
  rw [eval_mk]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add]
  rw [mono_eq 0 (by norm_num), mono_eq 1 (by norm_num), mono_eq 2 (by norm_num), mono_eq 3 (by norm_num),
    mono_eq 4 (by norm_num), mono_eq 5 (by norm_num), mono_eq 6 (by norm_num), mono_eq 7 (by norm_num),
    mono_eq 8 (by norm_num), mono_eq 9 (by norm_num), mono_eq 10 (by norm_num), mono_eq 11 (by norm_num),
    mono_eq 12 (by norm_num), mono_eq 13 (by norm_num), mono_eq 14 (by norm_num)]
  simp only [monoE]
  have hz : cz (0, 0) = 0 := by simp [cz]
  norm_num [cz_rz, hz]

theorem has_thetaT (B : BallD) (D : BoxD) {u : Fin 4 → ℝ} (k : ℕ) :
    (thetaT B D k).Has u ((thR B (wOf D u) k : ℝ) : ℂ) := by
  unfold CT.Has
  set S : ℤ := (l4 fun l => gi B.Mth (4 * k + l) * gi D.wc l).sum
  have hS : (S : ℝ) = gi B.Mth (4 * k) * gi D.wc 0 + gi B.Mth (4 * k + 1) * gi D.wc 1 +
      gi B.Mth (4 * k + 2) * gi D.wc 2 + gi B.Mth (4 * k + 3) * gi D.wc 3 := by
    simp only [S, l4, List.sum_cons, List.sum_nil]; push_cast; ring
  have hev : (thetaT B D k).eval u = ((rq (gi B.th0 k + fdivZ S pp) + rq (gi B.Mth (4 * k + 0)) * u 0 +
      rq (gi B.Mth (4 * k + 1)) * u 1 + rq (gi B.Mth (4 * k + 2)) * u 2 + rq (gi B.Mth (4 * k + 3)) * u 3 : ℝ) : ℂ) :=
    eval_affine _ (fun j => gi B.Mth (4 * k + j)) 1 u
  rw [hev]
  have hf := fdivZ_spec S pp
  have e : ((thR B (wOf D u) k : ℝ) : ℂ) - ((rq (gi B.th0 k + fdivZ S pp) + rq (gi B.Mth (4 * k + 0)) * u 0 +
      rq (gi B.Mth (4 * k + 1)) * u 1 + rq (gi B.Mth (4 * k + 2)) * u 2 + rq (gi B.Mth (4 * k + 3)) * u 3 : ℝ) : ℂ) =
      ((((S : ℝ) / 2 ^ pp - fdivZ S pp) / 2 ^ pp : ℝ) : ℂ) := by
    rw [← Complex.ofReal_sub]; congr 1
    simp only [thR, wOf, rq, hS, add_zero, show ((0 : Fin 4) : ℕ) = 0 from rfl, show ((1 : Fin 4) : ℕ) = 1 from rfl,
      show ((2 : Fin 4) : ℕ) = 2 from rfl, show ((3 : Fin 4) : ℕ) = 3 from rfl]
    push_cast; field_simp; ring
  rw [e, Complex.norm_real, Real.norm_eq_abs, abs_div, abs_of_pos (two_pow_pos pp)]
  show _ ≤ rn 1
  unfold rn; push_cast
  exact div_le_div_of_nonneg_right hf (two_pow_pos pp).le

/-! ### The corner and the Gram data -/

/-- The seed of the box point: `ρ_k = e^{iθ_k}`. -/
def rhoV (B : BallD) (D : BoxD) (u : Fin 4 → ℝ) : Fin 4 → ℂ :=
  L1.seedVec (seedOf fun k => thR B (wOf D u) k)

lemma rhoV_eq (B : BallD) (D : BoxD) (u : Fin 4 → ℝ) (k : Fin 4) :
    rhoV B D u k = Complex.exp ((thR B (wOf D u) k : ℂ) * I) := by
  simp [rhoV, L1.seedVec, seedOf, Circle.coe_exp]

lemma expI_addRho_ok (A : CT) (e nT : ℕ) : expOK (addRho A e) nT = expOK A nT := rfl

theorem has_corner {B : BallD} {D : BoxD} {u : Fin 4 → ℝ} (hu : InBox D.hb u)
    (hok : (l4 (thetaT B D)).all (fun t => expOK t nT) = true) :
    ∀ k : Fin 4, (gT ((l4 (thetaT B D)).map (expI D.hb nT)) k).Has u (rhoV B D u k) := by
  intro k
  have hk : (k : ℕ) < 4 := k.2
  have hm : (l4 (thetaT B D)).map (expI D.hb nT) = l4 fun j => expI D.hb nT (thetaT B D j) := rfl
  rw [hm, gT_l4 _ hk, rhoV_eq]
  have h1 : expOK (thetaT B D k) nT = true := by
    have := hok
    simp only [l4, List.all_cons, List.all_nil, Bool.and_eq_true] at this
    fin_cases k <;> simp_all
  exact has_expI hu h1 (has_thetaT B D k)

open L1.FlatCircuits in
theorem has_gram {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {e : List CT} {ρ : Fin 4 → ℂ}
    (he : ∀ k : Fin 4, (gT e k).Has u (ρ k)) :
    ((gT (gramH h e) 0).Has u (sh ρ) ∧ (gT (gramH h e) 1).Has u (th ρ) ∧ (gT (gramH h e) 2).Has u (rh ρ)) ∧
    ((gT (gramV h e) 0).Has u (sv ρ) ∧ (gT (gramV h e) 1).Has u (tv ρ) ∧ (gT (gramV h e) 2).Has u (rv ρ)) := by
  have h1 := has_const oneZ u
  rw [cz_one] at h1
  have e0 : (gT e 0).Has u (ρ 0) := he 0
  have e1 : (gT e 1).Has u (ρ 1) := he 1
  have e2 : (gT e 2).Has u (ρ 2) := he 2
  have e3 : (gT e 3).Has u (ρ 3) := he 3
  refine ⟨⟨?_, ?_, ?_⟩, ?_, ?_, ?_⟩
  · exact (has_neg (has_add (has_add h1 e0) e1) :)
  · exact (has_neg (has_add (has_add h1 e2) e3) :)
  · exact (has_neg (has_add (has_add h1 (has_mul hu e2 (has_conj e0))) (has_mul hu e3 (has_conj e1))) :)
  · exact (has_neg (has_add (has_add h1 e0) e2) :)
  · exact (has_neg (has_add (has_add h1 e1) e3) :)
  · exact (has_neg (has_add (has_add h1 (has_mul hu e1 (has_conj e0))) (has_mul hu e3 (has_conj e2))) :)

end NoFourMUBs.KernelAtlas.Seed
