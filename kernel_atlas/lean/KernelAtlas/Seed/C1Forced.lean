import KernelAtlas.Seed.C1SideSound
import NoFourMUBs.SeedAtlas.Method.Completion
import NoFourMUBs.SeedAtlas.Method.Neumann

/-!
# Soundness of the C1 box check, part 3: `Ψ`, the matched completion and the forced block

* `has_psiT`: `psiT` encloses `Ψ(B)` of the side `B = (1; x; y)` (`Ψ = perm · det² · ∏ conj`, `SeedAtlas.psi`);
  `sign_of_model`: `signOK` gives `o · Im Ψ > 0`;
* `matched_of_sides`: two sides solving the Gram equations of `E(ρ)` with the certified signs give a Hadamard matched
  completion with orientation `o` (`Method.matchedO_of_certified_sides`), and `R(ρ) > 0` follows from the horizontal
  side (`R = 4 (Im T)²`, `Side.RS_eq_im_sq`);
* `forced_sound`: `forcedT` encloses the forced block `D` (`D B* = −C E*`, residual correction with the Neumann bound
  on `(B*)⁻¹`).
-/

open Complex Matrix NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Sums of lists of models -/

lemma has_sumT_nil (u : Fin 4 → ℝ) : (sumT []).Has u 0 := has_zero u

lemma has_sumT_cons {A : CT} {l : List CT} {u : Fin 4 → ℝ} {x s : ℂ} (ha : A.Has u x) (hl : (sumT l).Has u s) :
    (sumT (A :: l)).Has u (x + s) := has_add ha hl

/-! ### `Ψ` of a side -/

lemma psi_sideMat (x y : Fin 3 → ℂ) :
    psi (L1.sideMat x y) = piS x y * (hS x y * hS x y) * (starRingEnd ℂ) (x 0 * y 0 * (x 1 * y 1) * (x 2 * y 2)) := by
  rw [psi_eq, sig_rows _ (fun j => rfl)]
  show -TS x y = _
  unfold TS uS
  simp only [map_mul]; ring

theorem has_psiT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {xy : List CT} {x y : Fin 3 → ℂ}
    (hx : ∀ j : Fin 3, (gT xy j).Has u (x j)) (hy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (y j)) :
    (psiT h xy).Has u (psi (L1.sideMat x y)) := by
  have x0 : (gT xy 0).Has u (x 0) := hx 0
  have x1 : (gT xy 1).Has u (x 1) := hx 1
  have x2 : (gT xy 2).Has u (x 2) := hx 2
  have y0 : (gT xy (0 + 3)).Has u (y 0) := hy 0
  have y1 : (gT xy (1 + 3)).Has u (y 1) := hy 1
  have y2 : (gT xy (2 + 3)).Has u (y 2) := hy 2
  have hperm := has_sumT_cons (has_mul hu x0 y1) (has_sumT_cons (has_mul hu x0 y2) (has_sumT_cons (has_mul hu x1 y0)
    (has_sumT_cons (has_mul hu x1 y2) (has_sumT_cons (has_mul hu x2 y0) (has_sumT_cons (has_mul hu x2 y1)
      (has_sumT_nil u))))))
  have hdet := has_sumT_cons (has_mul hu x1 y2) (has_sumT_cons (has_neg (has_mul hu x2 y1))
    (has_sumT_cons (has_neg (has_mul hu x0 y2)) (has_sumT_cons (has_mul hu x2 y0)
      (has_sumT_cons (has_mul hu x0 y1) (has_sumT_cons (has_neg (has_mul hu x1 y0)) (has_sumT_nil u))))))
  have hp3 := has_mul hu (has_mul hu (has_mul hu x0 y0) (has_mul hu x1 y1)) (has_mul hu x2 y2)
  have H := has_mul hu (has_mul hu hperm (has_mul hu hdet hdet)) (has_conj hp3)
  rw [psi_sideMat]
  convert H using 1
  all_goals first | rfl | (simp only [piS, hS]; ring)

/-- `signOK`: from `o · c₀ > L + ρ` with `o = ±1`, the enclosed real value has sign `o`. -/
lemma sign_of_model {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {t : CT} {y : ℝ} (ht : t.Has u (y : ℂ))
    (h2 : (t.cg 0).2 = 0) {o : ℤ} (ho : o = 1 ∨ o = -1) (hok : ((Lsum h t + t.ρ : ℕ) : ℤ) < o * (t.cg 0).1) :
    0 < (o : ℝ) * y := by
  have hc := norm_sub_c_le hu ht
  have ecz : cz (t.cg 0) = (((t.cg 0).1 / 2 ^ pp : ℝ) : ℂ) := by rw [cz_eq, h2]; simp
  rw [ecz, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] at hc
  have hk : ((Lsum h t + t.ρ : ℕ) : ℝ) < (o : ℝ) * (t.cg 0).1 := by exact_mod_cast hok
  have hT := two_pow_pos pp
  have key : rn (Lsum h t + t.ρ) < (o : ℝ) * ((t.cg 0).1 / 2 ^ pp) := by
    unfold rn; rw [mul_div_assoc']; exact div_lt_div_of_pos_right hk hT
  have habs : |(o : ℝ) * (y - (t.cg 0).1 / 2 ^ pp)| = |y - (t.cg 0).1 / 2 ^ pp| := by
    rcases ho with rfl | rfl <;> simp [abs_sub_comm]
  have := neg_abs_le ((o : ℝ) * (y - (t.cg 0).1 / 2 ^ pp))
  rw [habs] at this
  nlinarith

theorem signOK_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {T : CT} {z : ℂ} (hT : T.Has u z) {o : ℤ}
    (ho : o = 1 ∨ o = -1) (hok : signOK h o T = true) : 0 < (o : ℝ) * z.im := by
  unfold signOK at hok
  rw [decide_eq_true_eq] at hok
  exact sign_of_model hu (has_im hT) rfl ho hok

/-! ### The interval sign test -/

lemma ivH_add {a b : IvC} {x y : ℂ} (hx : IvH a x) (hy : IvH b y) : IvH (ivAdd a b) (x + y) := by
  unfold IvH ivAdd at *
  rw [cz_add, show x + y - (cz a.1 + cz b.1) = (x - cz a.1) + (y - cz b.1) by ring, rn_add]
  exact (norm_add_le _ _).trans (add_le_add hx hy)

lemma ivH_sum_nil : IvH (ivSum []) 0 := ivH_zero

lemma ivH_sum_cons {a : IvC} {l : List IvC} {x s : ℂ} (ha : IvH a x) (hl : IvH (ivSum l) s) :
    IvH (ivSum (a :: l)) (x + s) := ivH_add ha hl

theorem ivH_psiI {g : ℕ → IvC} {x y : Fin 3 → ℂ} (hx : ∀ j : Fin 3, IvH (g j) (x j))
    (hy : ∀ j : Fin 3, IvH (g (j + 3)) (y j)) : IvH (psiI g) (psi (L1.sideMat x y)) := by
  have x0 : IvH (g 0) (x 0) := hx 0
  have x1 : IvH (g 1) (x 1) := hx 1
  have x2 : IvH (g 2) (x 2) := hx 2
  have y0 : IvH (g (0 + 3)) (y 0) := hy 0
  have y1 : IvH (g (1 + 3)) (y 1) := hy 1
  have y2 : IvH (g (2 + 3)) (y 2) := hy 2
  have hperm := ivH_sum_cons (ivH_mul x0 y1) (ivH_sum_cons (ivH_mul x0 y2) (ivH_sum_cons (ivH_mul x1 y0)
    (ivH_sum_cons (ivH_mul x1 y2) (ivH_sum_cons (ivH_mul x2 y0) (ivH_sum_cons (ivH_mul x2 y1) ivH_sum_nil)))))
  have hdet := ivH_sum_cons (ivH_mul x1 y2) (ivH_sum_cons (ivH_neg (ivH_mul x2 y1))
    (ivH_sum_cons (ivH_neg (ivH_mul x0 y2)) (ivH_sum_cons (ivH_mul x2 y0)
      (ivH_sum_cons (ivH_mul x0 y1) (ivH_sum_cons (ivH_neg (ivH_mul x1 y0)) ivH_sum_nil)))))
  have hp3 := ivH_mul (ivH_mul (ivH_mul x0 y0) (ivH_mul x1 y1)) (ivH_mul x2 y2)
  have H := ivH_mul (ivH_mul hperm (ivH_mul hdet hdet)) (ivH_conj hp3)
  rw [psi_sideMat]
  convert H using 1
  all_goals first | rfl | (simp only [piS, hS]; ring)

lemma signIv_sound {a : IvC} {z : ℂ} (hz : IvH a z) {o : ℤ} (ho : o = 1 ∨ o = -1) (hok : signIv o a = true) :
    0 < (o : ℝ) * z.im := by
  unfold signIv at hok; rw [decide_eq_true_eq] at hok
  unfold IvH at hz
  have him : |z.im - (a.1.2 : ℝ) / 2 ^ pp| ≤ rn a.2 := by
    refine le_trans ?_ hz
    have e : z.im - (a.1.2 : ℝ) / 2 ^ pp = (z - cz a.1).im := by
      rw [Complex.sub_im, cz_eq, Complex.add_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_re,
        Complex.ofReal_im, Complex.I_re, Complex.I_im]; simp
    rw [e]; exact Complex.abs_im_le_norm _
  have hk : ((a.2 : ℤ) : ℝ) < (o : ℝ) * (a.1.2 : ℝ) := by exact_mod_cast hok
  have hT := two_pow_pos pp
  have key : rn a.2 < (o : ℝ) * ((a.1.2 : ℝ) / 2 ^ pp) := by
    unfold rn; rw [mul_div_assoc']; push_cast at hk; exact div_lt_div_of_pos_right hk hT
  have habs : |(o : ℝ) * (z.im - (a.1.2 : ℝ) / 2 ^ pp)| = |z.im - (a.1.2 : ℝ) / 2 ^ pp| := by
    rcases ho with rfl | rfl <;> simp [abs_sub_comm]
  have := neg_abs_le ((o : ℝ) * (z.im - (a.1.2 : ℝ) / 2 ^ pp))
  rw [habs] at this
  nlinarith

theorem signAny_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {xy : List CT} {x y : Fin 3 → ℂ}
    (hx : ∀ j : Fin 3, (gT xy j).Has u (x j)) (hy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (y j)) {o : ℤ}
    (ho : o = 1 ∨ o = -1) (hok : signAny h o xy = true) : 0 < (o : ℝ) * (psi (L1.sideMat x y)).im := by
  unfold signAny at hok
  rcases Bool.or_eq_true_iff.1 hok with h1 | h1
  · have gx : ∀ j : Fin 3, IvH ((fun j => ivc h (gT xy j)) j) (x j) := fun j => ivH_ivc hu (hx j)
    have gy : ∀ j : Fin 3, IvH ((fun j => ivc h (gT xy j)) (j + 3)) (y j) := fun j => ivH_ivc hu (hy j)
    exact signIv_sound (ivH_psiI (g := fun j => ivc h (gT xy j)) gx gy) ho h1
  · exact signOK_sound hu (has_psiT hu hx hy) ho h1

/-! ### Matched completion from the sides -/

lemma normSq_sx (φ : Fin 6 → ℝ) (j : Fin 3) : Complex.normSq (sx φ j) = 1 := by
  simp only [sx]; rw [Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]; norm_num
lemma normSq_sy (φ : Fin 6 → ℝ) (j : Fin 3) : Complex.normSq (sy φ j) = 1 := by
  simp only [sy]; rw [Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]; norm_num

open L1 L1.FlatCircuits in
/-- **Certified sides give a strict seed and the matched completion.** -/
theorem matched_of_sides {o : ℤˣ} {p : Seed} {φH φV : Fin 6 → ℝ}
    (hs : sS (sx φH) = sh (seedVec p)) (ht : sS (sy φH) = th (seedVec p)) (hr : rS (sx φH) (sy φH) = rh (seedVec p))
    (hs' : sS (sx φV) = sv (seedVec p)) (ht' : sS (sy φV) = tv (seedVec p))
    (hr' : rS (sx φV) (sy φV) = rv (seedVec p))
    (hB : 0 < osgn o * (psi (sideMat (sx φH) (sy φH))).im)
    (hC : 0 < -osgn o * (psi (sideMat (sx φV) (sy φV))).im) :
    0 < seedR p ∧ Hadamard6.IsHadamard (Hadamard6.completion (Em (seedVec p)) (sideMat (sx φH) (sy φH))
        (sideMat (sx φV) (sy φV))ᵀ) ∧
      MatchedO o p (Hadamard6.completion (Em (seedVec p)) (sideMat (sx φH) (sy φH)) (sideMat (sx φV) (sy φV))ᵀ) := by
  have hT : (TS (sx φH) (sy φH)).im ≠ 0 := by
    intro h0
    rw [psi_eq, sig_rows _ (fun j => rfl), Complex.neg_im] at hB
    have e1 : sideMat (sx φH) (sy φH) 1 = sx φH := rfl
    have e2 : sideMat (sx φH) (sy φH) 2 = sy φH := rfl
    rw [e1, e2, h0] at hB; simp at hB
  have hh : hS (sx φH) (sy φH) ≠ 0 := by intro h0; apply hT; simp [TS, h0]
  have hR : 0 < seedR p := by
    have := RS_eq_im_sq (normSq_sx φH) (normSq_sy φH) hh
    rw [hs, ht, hr, RS_eq, ← seedR_eq'] at this
    rw [this]; positivity
  exact ⟨hR, Method.matchedO_of_certified_sides hR (normSq_sx φH) (normSq_sy φH) (normSq_sx φV) (normSq_sy φV)
    hs ht hr hs' ht' hr' hB hC⟩

/-! ### 3 × 3 enclosures -/

/-- `L` (row-major) encloses the `3 × 3` matrix `M`. -/
def Has3 (u : Fin 4 → ℝ) (L : List CT) (M : Matrix (Fin 3) (Fin 3) ℂ) : Prop :=
  ∀ a b : Fin 3, (gT L (3 * a + b)).Has u (M a b)

lemma one_has (u : Fin 4 → ℝ) : (const oneZ).Has u 1 := by
  have := has_const oneZ u; rwa [cz_one] at this

lemma has3_ET {u : Fin 4 → ℝ} {e : List CT} {ρ : Fin 4 → ℂ} (he : ∀ k : Fin 4, (gT e k).Has u (ρ k)) :
    Has3 u (ET e) (L1.FlatCircuits.Em ρ) := by
  have o := one_has u
  intro a b
  fin_cases a <;> fin_cases b
  all_goals first | exact o | exact he 0 | exact he 1 | exact he 2 | exact he 3

lemma has3_BT {u : Fin 4 → ℝ} {xy : List CT} {x y : Fin 3 → ℂ}
    (hx : ∀ j : Fin 3, (gT xy j).Has u (x j)) (hy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (y j)) :
    Has3 u (BT xy) (L1.sideMat x y) := by
  have o := one_has u
  intro a b
  fin_cases a <;> fin_cases b
  all_goals first | exact o | exact hx 0 | exact hx 1 | exact hx 2 | exact hy 0 | exact hy 1 | exact hy 2

lemma has3_CT3 {u : Fin 4 → ℝ} {xy : List CT} {x y : Fin 3 → ℂ}
    (hx : ∀ j : Fin 3, (gT xy j).Has u (x j)) (hy : ∀ j : Fin 3, (gT xy (j + 3)).Has u (y j)) :
    Has3 u (CT3 xy) (L1.sideMat x y)ᵀ := by
  have o := one_has u
  intro a b
  fin_cases a <;> fin_cases b
  all_goals first | exact o | exact hx 0 | exact hx 1 | exact hx 2 | exact hy 0 | exact hy 1 | exact hy 2

lemma idx3 (a b : Fin 3) : (3 * (a : ℕ) + b) / 3 = a ∧ (3 * (a : ℕ) + b) % 3 = b := by omega

lemma has_one_eq {u : Fin 4 → ℝ} {x : ℂ} (hx : (const oneZ).Has u x) : x = 1 := by
  have := has_const oneZ u
  unfold CT.Has at hx this
  rw [cz_one] at this
  have e : (const oneZ).ρ = 0 := rfl
  rw [e] at hx this
  have h1 : (const oneZ).eval u = 1 := by
    have := norm_le_zero_iff.1 (le_of_le_of_eq this (by simp [rn]))
    exact (sub_eq_zero.1 this).symm
  have h2 := norm_le_zero_iff.1 (le_of_le_of_eq hx (by simp [rn]))
  rw [h1] at h2; exact sub_eq_zero.1 h2

lemma has_mulF {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {A B : CT} {x y : ℂ} (hx : A.Has u x)
    (hy : B.Has u y) : (mulF h A B).Has u (x * y) := by
  unfold mulF
  split_ifs with h1 h2
  · subst h1; rw [has_one_eq hx, one_mul]; exact hy
  · subst h2; rw [has_one_eq hy, mul_one]; exact hx
  · exact has_mul hu hx hy

lemma has3_mulH {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {X Y : List CT} {M N : Matrix (Fin 3) (Fin 3) ℂ}
    (hX : Has3 u X M) (hY : Has3 u Y N) : Has3 u (mulH h X Y) (M * Nᴴ) := by
  intro a b
  rw [mulH, gT_l9 _ (by omega), (idx3 a b).1, (idx3 a b).2]
  simp only [l3]
  have x0 : (gT X (3 * a + 0)).Has u (M a 0) := hX a 0
  have x1 : (gT X (3 * a + 1)).Has u (M a 1) := hX a 1
  have x2 : (gT X (3 * a + 2)).Has u (M a 2) := hX a 2
  have y0 : (gT Y (3 * b + 0)).Has u (N b 0) := hY b 0
  have y1 : (gT Y (3 * b + 1)).Has u (N b 1) := hY b 1
  have y2 : (gT Y (3 * b + 2)).Has u (N b 2) := hY b 2
  have H := has_sumT3 (has_mulF hu x0 (has_conj y0)) (has_mulF hu x1 (has_conj y1)) (has_mulF hu x2 (has_conj y2))
  convert H using 1
  rw [Matrix.mul_apply, Fin.sum_univ_three]; rfl

lemma has3_add {u : Fin 4 → ℝ} {X Y : List CT} {M N : Matrix (Fin 3) (Fin 3) ℂ} (hX : Has3 u X M)
    (hY : Has3 u Y N) : Has3 u (l9 fun q => add (gT X q) (gT Y q)) (M + N) := by
  intro a b
  rw [gT_l9 _ (by omega)]
  exact has_add (hX a b) (hY a b)

/-- The grid matrix `A₀`. -/
def A0m (A0 : List (ℤ × ℤ)) : Matrix (Fin 3) (Fin 3) ℂ := fun a b => cz (gz A0 (3 * a + b))

lemma valS_l3 (g : ℕ → (ℤ × ℤ) × CT) (x : ℕ → ℂ) :
    valS (l3 g) (l3 x) = cz (g 0).1 * x 0 + cz (g 1).1 * x 1 + cz (g 2).1 * x 2 := by
  simp only [l3, valS]; ring

lemma hasAll_l3 {u : Fin 4 → ℝ} {g : ℕ → (ℤ × ℤ) × CT} {x : ℕ → ℂ} (h : ∀ k < 3, (g k).2.Has u (x k)) :
    HasAll u (l3 g) (l3 x) := by
  simp only [l3, HasAll]
  exact ⟨h 0 (by norm_num), h 1 (by norm_num), h 2 (by norm_num), trivial⟩

/-- `B` as a function of a natural index (for `l3`). -/
def ext3 (f : Fin 3 → ℂ) (k : ℕ) : ℂ := if hk : k < 3 then f ⟨k, hk⟩ else 0

lemma has3_neuT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {A0 : List (ℤ × ℤ)} {Bm : List CT}
    {B : Matrix (Fin 3) (Fin 3) ℂ} (hB : Has3 u Bm B) : Has3 u (neuT h A0 Bm) (1 - A0m A0 * Bᴴ) := by
  intro a b
  rw [neuT, gT_l9 _ (by omega), (idx3 a b).1, (idx3 a b).2]
  have hl := has_lin hu (hasAll_l3 (g := fun k => (gz A0 (3 * a + k), conj (gT Bm (3 * b + k))))
    (x := ext3 fun k => (starRingEnd ℂ) (B b k)) (fun k hk => by
      simp only [ext3, dif_pos hk]; exact has_conj (hB b ⟨k, hk⟩)))
  have H := has_sub (has_const (if (a : ℕ) = b then oneZ else (0, 0)) u) hl
  convert H using 1
  rw [valS_l3]
  by_cases hab : a = b
  · subst hab
    simp [Matrix.sub_apply, Matrix.mul_apply, Fin.sum_univ_three, Matrix.conjTranspose_apply, A0m, ext3, cz_one]
  · have hab' : (a : ℕ) ≠ b := fun e => hab (Fin.ext e)
    rw [if_neg hab', show cz (0, 0) = 0 by simp [cz]]
    simp [Matrix.sub_apply, hab, Matrix.mul_apply, Fin.sum_univ_three, Matrix.conjTranspose_apply, A0m, ext3]

/-! ### The forced block -/

lemma le_foldr_max3 (f : ℕ → ℕ) (i : Fin 3) : f i ≤ (l3 f).foldr max 0 := by
  simp only [l3, List.foldr_cons, List.foldr_nil]
  fin_cases i
  · exact le_max_left _ _
  · exact (le_max_left _ _).trans (le_max_right _ _)
  · exact ((le_max_left _ _).trans (le_max_right _ _)).trans (le_max_right _ _)

lemma rn_sum_l3 (f : ℕ → ℕ) : rn ((l3 f).sum) = ∑ m : Fin 3, rn (f m) := by
  simp only [l3, List.sum_cons, List.sum_nil, rn_add, Fin.sum_univ_three]
  simp [rn]; ring

lemma gn_map_l9 {α : Type} (f : ℕ → α) (g : α → ℕ) {i : ℕ} (hi : i < 9) : gn ((l9 f).map g) i = g (f i) := by
  interval_cases i <;> rfl

/-- **The forced block is enclosed.** -/
theorem forced_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {Xp : List CT} {A0 : List (ℤ × ℤ)}
    {E Bm C : List CT} {Em Bmat Cm Dm : Matrix (Fin 3) (Fin 3) ℂ} (hE : Has3 u E Em) (hB : Has3 u Bm Bmat)
    (hC : Has3 u C Cm) (hD : Dm * Bmatᴴ = -(Cm * Emᴴ)) (hok : (forcedT h Xp A0 E Bm C).ok = true) :
    Has3 u (forcedT h Xp A0 E Bm C).D Dm := by
  set R := l9 fun q => add (gT (mulH h C E) q) (gT (mulH h Xp Bm) q) with hRdef
  set Rb := R.map (bnd h) with hRb
  set X := neuT h A0 Bm with hXdef
  set qr := l3 fun i => (l3 fun l => bnd h (gT X (3 * i + l))).sum with hqr
  set q := qr.foldr max 0 with hq
  set a := l3 fun j => (l3 fun l => mb (gz A0 (3 * l + j))).foldr max 0 with ha
  set Nm := l9 fun q' => mb (gz A0 q') + cdivD (q * gn a (q' % 3)) (2 ^ pp - q) with hNm
  set δ := l9 fun q' => cdivN ((l3 fun l => gn Rb (3 * (q' / 3) + l) * gn Nm (3 * l + q' % 3)).sum) pp with hδ
  have hK : forcedT h Xp A0 E Bm C = ⟨decide (q < 2 ^ pp), l9 fun q' => addRho (gT Xp q') (gn δ q')⟩ := rfl
  rw [hK] at hok ⊢
  dsimp only at hok
  rw [decide_eq_true_eq] at hok
  have hq1 : q < 2 ^ pp := hok
  have hT := two_pow_pos pp
  -- the predictor, exactly
  set Xm : Matrix (Fin 3) (Fin 3) ℂ := fun a b => (gT Xp (3 * a + b)).eval u with hXm
  have hX : Has3 u Xp Xm := fun a b => by
    unfold CT.Has; rw [hXm, sub_self, norm_zero]; exact rn_nonneg _
  -- the residual `C E* + X B*`
  have hR : Has3 u R (Cm * Emᴴ + Xm * Bmatᴴ) := has3_add (has3_mulH hu hC hE) (has3_mulH hu hX hB)
  have hRn : ∀ i l : Fin 3, ‖(Cm * Emᴴ + Xm * Bmatᴴ) i l‖ ≤ rn (gn Rb (3 * i + l)) := fun i l => by
    have := norm_le_bnd hu (hR i l)
    rw [hRdef, gT_l9 _ (by omega)] at this
    rw [hRb, hRdef, gn_map_l9 _ _ (by omega)]
    exact this
  -- Neumann
  have hXn := has3_neuT (A0 := A0) hu hB
  have hE' : ∀ i : Fin 3, ∑ l, ‖(1 - A0m A0 * Bmatᴴ) i l‖ ≤ rn q := fun i => by
    have h1 : ∑ l : Fin 3, ‖(1 - A0m A0 * Bmatᴴ) i l‖ ≤ ∑ l : Fin 3, rn (bnd h (gT X (3 * i + l))) :=
      Finset.sum_le_sum fun l _ => norm_le_bnd hu (hXn i l)
    refine h1.trans ?_
    rw [← rn_sum_l3 (fun l => bnd h (gT X (3 * i + l)))]
    refine rn_mono ?_
    have := le_foldr_max3 (fun i => (l3 fun l => bnd h (gT X (3 * i + l))).sum) i
    exact this
  have ha' : ∀ l j : Fin 3, ‖A0m A0 l j‖ ≤ rn (gn a j) := fun l j => by
    refine (norm_cz_le _).trans (rn_mono ?_)
    rw [ha, gn_l3 _ j.2]
    exact le_foldr_max3 (fun l => mb (gz A0 (3 * l + j))) l
  have hq1' : rn q < 1 := by
    unfold rn; rw [div_lt_one hT]; exact_mod_cast hq1
  obtain ⟨hdet, hinv⟩ := Method.neumann (Bmatᴴ) (A0m A0) hq1' hE' ha'
  have hN : ∀ l j : Fin 3, ‖(Bmatᴴ)⁻¹ l j‖ ≤ rn (gn Nm (3 * l + j)) := fun l j => by
    refine (hinv l j).trans ?_
    rw [hNm, gn_l9 _ (by omega), (idx3 l j).2, rn_add]
    refine add_le_add (norm_cz_le _) ?_
    have hTq : (0 : ℝ) < 2 ^ pp - q := by
      have : (q : ℝ) < 2 ^ pp := by exact_mod_cast hq1
      linarith
    have hc := le_cdivD (q * gn a j) (2 ^ pp - q) (by omega)
    have ecast : ((2 ^ pp - q : ℕ) : ℝ) = 2 ^ pp - q := by
      rw [Nat.cast_sub hq1.le]; push_cast; ring
    rw [ecast] at hc
    unfold rn
    rw [show (q : ℝ) / 2 ^ pp * ((gn a j : ℝ) / 2 ^ pp) / (1 - (q : ℝ) / 2 ^ pp) =
      ((q * gn a j : ℕ) : ℝ) / (2 ^ pp - q) / 2 ^ pp by push_cast; field_simp]
    exact div_le_div_of_nonneg_right hc hT.le
  -- the correction
  intro i j
  rw [gT_l9 _ (by omega)]
  refine has_addRho (hX i j) ?_
  have hc := Method.norm_correction_le (X := Xm) hD hdet hN i j
  rw [← Matrix.sub_apply]
  refine hc.trans ?_
  have h1 : ∑ l : Fin 3, ‖(Cm * Emᴴ + Xm * Bmatᴴ) i l‖ * rn (gn Nm (3 * l + j)) ≤
      ∑ l : Fin 3, rn (gn Rb (3 * i + l)) * rn (gn Nm (3 * l + j)) :=
    Finset.sum_le_sum fun l _ => mul_le_mul_of_nonneg_right (hRn i l) (rn_nonneg _)
  refine h1.trans ?_
  rw [hδ, gn_l9 _ (by omega), (idx3 i j).1, (idx3 i j).2]
  have hs := cdivN_spec ((l3 fun l => gn Rb (3 * i + l) * gn Nm (3 * l + j)).sum) pp
  unfold rn
  calc ∑ l : Fin 3, (gn Rb (3 * i + l) : ℝ) / 2 ^ pp * ((gn Nm (3 * l + j) : ℝ) / 2 ^ pp)
      = (((l3 fun l => gn Rb (3 * i + l) * gn Nm (3 * l + j)).sum : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp := by
        simp only [l3, List.sum_cons, List.sum_nil, Fin.sum_univ_three]; push_cast
        simp only [Fin.val_zero, Fin.val_one, Fin.val_two]; ring
    _ ≤ _ := div_le_div_of_nonneg_right hs hT.le

end NoFourMUBs.KernelAtlas.Seed
