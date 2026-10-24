import KernelAtlas.Seed.T1PRec

/-!
# T1′ soundness, part 2: `‖Y‖₂ ≤ y_N` and A2 (`linOK_sound`)

`Y` as the two coefficient families of `Method.yMap`: `Yre L k a b = Y_k[2p]`, `Yim L k a b = Y_k[2p + 1]` for the
pair `p = (a < b)`, zero elsewhere.  `linOK_sound`: `‖Y w‖ ≤ y_N ‖w‖` on Hermitian `w`, and
`‖x − Y J_{Pg + c} N_b x‖ ≤ ε₀ ‖x‖`.
-/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### `Y` -/

def Yre (L : LinD) (k : Fin 21) : RMat6 := fun a b =>
  if sidx a < sidx b then rq (gi (gL L.Y k) (2 * pidx15 (sidx a) (sidx b))) else 0

def Yim (L : LinD) (k : Fin 21) : RMat6 := fun a b =>
  if sidx a < sidx b then rq (gi (gL L.Y k) (2 * pidx15 (sidx a) (sidx b) + 1)) else 0

lemma pair_facts : ∀ a < 6, ∀ b < 6, a < b → pidx15 a b < 15 ∧ pa (pidx15 a b) = a ∧ pb (pidx15 a b) = b := by
  decide

lemma yGram_eq (L : LinD) (k l : Fin 21) :
    Method.yGram (Yre L) (Yim L) k l = (dotN 30 (gL L.Y k) (gL L.Y l) : ℝ) / 2 ^ (2 * pp) := by
  rw [dotN_eq]
  simp only [Method.yGram, Yre, Yim, Fintype.sum_sum_type, Fin.sum_univ_three, sidx, Fin.val_zero, Fin.val_one,
    Fin.val_two, Finset.sum_range_succ, Finset.sum_range_zero]
  norm_num [pidx15, rq]
  ring

lemma hY_of {L : LinD} (h : yOK L.Y L.yn = true) (w : Mat6) (hw : wᴴ = w) :
    Method.xnorm (Method.yMap (Yre L) (Yim L) w) ≤ rn L.yn * outNorm w := by
  refine Method.xnorm_yMap_le_of_gram (rn_nonneg _) (fun c => ?_) w hw
  refine Method.gershgorin_upper (Method.yGram_symm _ _) (fun k => ?_) c
  have hk := of_decide_eq_true (all_l21 h k.2)
  rw [l21_sum] at hk
  have hk' : ∑ l : Fin 21, |(dotN 30 (gL L.Y k) (gL L.Y l) : ℝ)| ≤ (L.yn : ℝ) ^ 2 := by exact_mod_cast hk
  simp only [yGram_eq]
  have e : ∀ l : Fin 21, |(dotN 30 (gL L.Y k) (gL L.Y l) : ℝ) / 2 ^ (2 * pp)| =
      |(dotN 30 (gL L.Y k) (gL L.Y l) : ℝ)| / 2 ^ (2 * pp) := fun l => by
    rw [abs_div, abs_of_pos (show (0 : ℝ) < 2 ^ (2 * pp) by positivity)]
  simp only [e, ← Finset.sum_div]
  unfold rn
  rw [div_pow, ← pow_mul, mul_comm pp 2]
  exact div_le_div_of_nonneg_right hk' (by positivity)

/-! ### `Y J_Q v` -/

/-- `W_{k,ab,c} = −Yre_kab sin(Q_ac − Q_bc) + Yim_kab cos(Q_ac − Q_bc)`. -/
def Wr (L : LinD) (Q : RMat6) (k : Fin 21) (a b c : I6) : ℝ :=
  Yre L k a b * (-Real.sin (Q a c - Q b c)) + Yim L k a b * Real.cos (Q a c - Q b c)

lemma jac_term (x y d : ℝ) :
    (Complex.exp ((x : ℂ) * I) * star (Complex.exp ((y : ℂ) * I)) * ((d : ℂ) * I)).re = -Real.sin (x - y) * d ∧
    (Complex.exp ((x : ℂ) * I) * star (Complex.exp ((y : ℂ) * I)) * ((d : ℂ) * I)).im = Real.cos (x - y) * d := by
  rw [star_exp_mul_I, ← Complex.exp_add, show (x : ℂ) * I + ((-y : ℝ) : ℂ) * I = ((x - y : ℝ) : ℂ) * I by
    push_cast; ring]
  constructor
  · rw [Complex.mul_re, Complex.exp_ofReal_mul_I_re, Complex.exp_ofReal_mul_I_im]; simp
  · rw [Complex.mul_im, Complex.exp_ofReal_mul_I_re, Complex.exp_ofReal_mul_I_im]; simp

lemma yMap_jac (L : LinD) (Q v : RMat6) (k : Fin 21) :
    Method.yMap (Yre L) (Yim L) (Jac Q v) k = ∑ a, ∑ c, v a c * ∑ b, (Wr L Q k a b c - Wr L Q k b a c) := by
  set W := Wr L Q k
  have h1 : Method.yMap (Yre L) (Yim L) (Jac Q v) k = ∑ a, ∑ b, ∑ c, (v a c - v b c) * W a b c := by
    rw [Method.yMap_apply]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    simp only [Jac, of_apply, Complex.re_sum, Complex.im_sum, phaseMat]
    simp only [(jac_term _ _ _).1, (jac_term _ _ _).2, Finset.mul_sum, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun c _ => by simp only [W, Wr]; ring
  have h2 : ∑ a, ∑ b, ∑ c, (v a c - v b c) * W a b c =
      ∑ a, ∑ b, ∑ c, v a c * W a b c - ∑ a, ∑ b, ∑ c, v b c * W a b c := by
    simp only [sub_mul, Finset.sum_sub_distrib]
  have h3 : ∑ a, ∑ b, ∑ c, v a c * W a b c = ∑ a, ∑ c, v a c * ∑ b, W a b c := by
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [Finset.sum_comm]; simp only [Finset.mul_sum]
  have h4 : ∑ a, ∑ b, ∑ c, v b c * W a b c = ∑ a, ∑ c, v a c * ∑ b, W b a c := by
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [Finset.sum_comm]; simp only [Finset.mul_sum]
  rw [h1, h2, h3, h4, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [← mul_sub, ← Finset.sum_sub_distrib]

/-! ### The kernel's `(Y J)` against the real one -/

lemma le_foldr_max_of_mem {l : List ℕ} {x : ℕ} (h : x ∈ l) : x ≤ l.foldr max 0 := by
  induction l with
  | nil => simp at h
  | cons y l ih =>
    rw [List.foldr_cons]
    rcases List.mem_cons.1 h with rfl | h
    · exact le_max_left _ _
    · exact (ih h).trans (le_max_right _ _)

lemma mem_l6 {α : Type} (f : ℕ → α) {j : ℕ} (hj : j < 6) : f j ∈ l6 f := by
  interval_cases j <;> simp [l6]

lemma mem_l15 {α : Type} (f : ℕ → α) {j : ℕ} (hj : j < 15) : f j ∈ l15 f := by
  interval_cases j <;> simp [l15]

lemma le_eps0Max (Pg c : List ℤ) {p e6 : ℕ} (hp : p < 15) (he : e6 < 6) :
    cisEps ((th0Z Pg c p e6 : ℚ) / 2 ^ pp) nT ≤ eps0Max Pg c := by
  unfold eps0Max
  refine (le_foldr_max_of_mem (mem_l6 (fun e6 => cisEps ((th0Z Pg c p e6 : ℚ) / 2 ^ pp) nT) he)).trans ?_
  exact le_foldr_max_of_mem (mem_l15 (fun p => (l6 fun e6 => cisEps ((th0Z Pg c p e6 : ℚ) / 2 ^ pp) nT).foldr max 0) hp)

/-- The constant `e0Z` and its angle. -/
lemma e0Z_spec {R : RecP} {L : LinD} (hok : linOK R L = true) {p e6 : ℕ} (hp : p < 15) (he : e6 < 6) :
    ‖cz (e0Z R.Pg L.c p e6) - Complex.exp (((rq (th0Z R.Pg L.c p e6) : ℝ) : ℂ) * I)‖ ≤ rn (eps0Max R.Pg L.c) := by
  unfold linOK at hok
  simp only [Bool.and_eq_true] at hok
  have hx := of_decide_eq_true (all_l6 (all_l15 hok.1.1 hp) he)
  have hc : cisOK (th0Z R.Pg L.c p e6) (e0Z R.Pg L.c p e6) (eps0Max R.Pg L.c) = true := by
    unfold cisOK
    simp only [Bool.and_eq_true, decide_eq_true_eq]
    exact ⟨⟨hx, rfl⟩, le_eps0Max _ _ hp he⟩
  exact cisOK_spec hc

/-- The real `W` of a pair against the kernel's `wJZ`. -/
lemma wr_err {R : RecP} {L : LinD} (hok : linOK R L = true) (k : Fin 21) {a b : I6} (hab : sidx a < sidx b)
    (c : I6) :
    |Wr L (Mq R.Pg + Mq L.c) k a b c - (wJZ R.Pg L.c (gL L.Y k) (pidx15 (sidx a) (sidx b)) (sidx c) : ℝ) / 2 ^ (2 * pp)| ≤
      ((gi (gL L.Y k) (2 * pidx15 (sidx a) (sidx b))).natAbs + (gi (gL L.Y k) (2 * pidx15 (sidx a) (sidx b) + 1)).natAbs :
        ℝ) / 2 ^ pp * rn (eps0Max R.Pg L.c) := by
  obtain ⟨hp, hpa, hpb⟩ := pair_facts _ (sidx_lt a) _ (sidx_lt b) hab
  set p := pidx15 (sidx a) (sidx b)
  have hE := e0Z_spec hok hp (sidx_lt c)
  set z := e0Z R.Pg L.c p (sidx c)
  set θ := rq (th0Z R.Pg L.c p (sidx c))
  have hθ : (Mq R.Pg + Mq L.c) a c - (Mq R.Pg + Mq L.c) b c = θ := by
    simp only [θ, th0Z, hpa, hpb, Matrix.add_apply, Mq, rq, ix]
    push_cast; ring
  have hre : |(z.1 : ℝ) / 2 ^ pp - Real.cos θ| ≤ rn (eps0Max R.Pg L.c) := by
    have e1 : (z.1 : ℝ) / 2 ^ pp - Real.cos θ = (cz z - Complex.exp ((θ : ℂ) * I)).re := by
      rw [Complex.sub_re, Complex.exp_ofReal_mul_I_re, cz_eq]
      simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im, Complex.I_re, Complex.I_im]
      ring
    rw [e1]; exact (Complex.abs_re_le_norm _).trans hE
  have him : |(z.2 : ℝ) / 2 ^ pp - Real.sin θ| ≤ rn (eps0Max R.Pg L.c) := by
    have e1 : (z.2 : ℝ) / 2 ^ pp - Real.sin θ = (cz z - Complex.exp ((θ : ℂ) * I)).im := by
      rw [Complex.sub_im, Complex.exp_ofReal_mul_I_im, cz_eq]
      simp only [Complex.add_im, Complex.ofReal_re, Complex.mul_im, Complex.ofReal_im, Complex.I_re, Complex.I_im]
      ring
    rw [e1]; exact (Complex.abs_im_le_norm _).trans hE
  set y1 : ℤ := gi (gL L.Y k) (2 * p)
  set y2 : ℤ := gi (gL L.Y k) (2 * p + 1)
  have hW : Wr L (Mq R.Pg + Mq L.c) k a b c = rq y1 * (-Real.sin θ) + rq y2 * Real.cos θ := by
    simp only [Wr, Yre, Yim, if_pos hab, hθ, y1, y2, p]
  have hw : (wJZ R.Pg L.c (gL L.Y k) p (sidx c) : ℝ) / 2 ^ (2 * pp) =
      rq y1 * (-((z.2 : ℝ) / 2 ^ pp)) + rq y2 * ((z.1 : ℝ) / 2 ^ pp) := by
    simp only [wJZ, y1, y2, z, rq]; push_cast
    rw [pow_mul', show ((2 : ℝ) ^ pp) ^ 2 = 2 ^ pp * 2 ^ pp by ring]; field_simp
  rw [hW, hw]
  have e : rq y1 * (-Real.sin θ) + rq y2 * Real.cos θ - (rq y1 * (-((z.2 : ℝ) / 2 ^ pp)) + rq y2 * ((z.1 : ℝ) / 2 ^ pp)) =
      rq y1 * ((z.2 : ℝ) / 2 ^ pp - Real.sin θ) - rq y2 * ((z.1 : ℝ) / 2 ^ pp - Real.cos θ) := by ring
  rw [e]
  have ha1 : |rq y1| = (y1.natAbs : ℝ) / 2 ^ pp := by
    unfold rq; rw [abs_div, abs_of_pos (two_pow_pos pp), Nat.cast_natAbs, Int.cast_abs]
  have ha2 : |rq y2| = (y2.natAbs : ℝ) / 2 ^ pp := by
    unfold rq; rw [abs_div, abs_of_pos (two_pow_pos pp), Nat.cast_natAbs, Int.cast_abs]
  calc |rq y1 * ((z.2 : ℝ) / 2 ^ pp - Real.sin θ) - rq y2 * ((z.1 : ℝ) / 2 ^ pp - Real.cos θ)|
      ≤ |rq y1| * |(z.2 : ℝ) / 2 ^ pp - Real.sin θ| + |rq y2| * |(z.1 : ℝ) / 2 ^ pp - Real.cos θ| := by
        rw [← abs_mul, ← abs_mul]; exact abs_sub _ _
    _ ≤ |rq y1| * rn (eps0Max R.Pg L.c) + |rq y2| * rn (eps0Max R.Pg L.c) :=
        add_le_add (mul_le_mul_of_nonneg_left him (abs_nonneg _)) (mul_le_mul_of_nonneg_left hre (abs_nonneg _))
    _ = _ := by rw [ha1, ha2]; ring

lemma Wr_zero (L : LinD) (Q : RMat6) (k : Fin 21) {a b : I6} (h : ¬ sidx a < sidx b) (c : I6) : Wr L Q k a b c = 0 := by
  simp [Wr, Yre, Yim, h]

/-- `(Y J)_{k,(a,c)}`: the real value against the kernel's, within `ε_E · ya_k,a`. -/
lemma yj_err {R : RecP} {L : LinD} (hok : linOK R L = true) (k : Fin 21) (a c : I6) :
    |∑ b, (Wr L (Mq R.Pg + Mq L.c) k a b c - Wr L (Mq R.Pg + Mq L.c) k b a c) -
        (yjZ R.Pg L.c (gL L.Y k) (ix a c) : ℝ) / 2 ^ (2 * pp)| ≤
      (yaZ (gL L.Y k) (sidx a) : ℝ) / 2 ^ pp * rn (eps0Max R.Pg L.c) := by
  set Q := Mq R.Pg + Mq L.c
  set Yk := gL L.Y k
  set eE := rn (eps0Max R.Pg L.c)
  have hyj : (yjZ R.Pg L.c Yk (ix a c) : ℝ) / 2 ^ (2 * pp) = ∑ b : I6,
      ((if sidx a < sidx b then (wJZ R.Pg L.c Yk (pidx15 (sidx a) (sidx b)) (sidx c) : ℝ)
        else if sidx b < sidx a then -(wJZ R.Pg L.c Yk (pidx15 (sidx b) (sidx a)) (sidx c) : ℝ) else 0) /
        2 ^ (2 * pp)) := by
    rw [← Finset.sum_div]; congr 1
    simp only [yjZ, ix_div6, ix_mod6, l6_sum]
    push_cast
    refine Finset.sum_congr rfl fun b _ => ?_
    split_ifs <;> simp
  have hya : (yaZ Yk (sidx a) : ℝ) / 2 ^ pp * eE = ∑ b : I6,
      ((if sidx a < sidx b then ((gi Yk (2 * pidx15 (sidx a) (sidx b))).natAbs +
          (gi Yk (2 * pidx15 (sidx a) (sidx b) + 1)).natAbs : ℝ)
        else if sidx b < sidx a then ((gi Yk (2 * pidx15 (sidx b) (sidx a))).natAbs +
          (gi Yk (2 * pidx15 (sidx b) (sidx a) + 1)).natAbs : ℝ) else 0) / 2 ^ pp * eE) := by
    rw [← Finset.sum_mul, ← Finset.sum_div]; congr 2
    simp only [yaZ, l6_sum]
    push_cast
    refine Finset.sum_congr rfl fun b _ => ?_
    split_ifs <;> simp
  rw [hyj, hya, ← Finset.sum_sub_distrib]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun b _ => ?_)
  by_cases h1 : sidx a < sidx b
  · have h2 : ¬ sidx b < sidx a := by omega
    rw [if_pos h1, if_pos h1, Wr_zero L Q k h2, sub_zero]
    exact wr_err hok k h1 c
  · rw [if_neg h1, if_neg h1, Wr_zero L Q k h1, zero_sub]
    by_cases h2 : sidx b < sidx a
    · rw [if_pos h2, if_pos h2]
      have := wr_err hok k h2 c
      rw [show -Wr L Q k b a c - -(wJZ R.Pg L.c Yk (pidx15 (sidx b) (sidx a)) (sidx c) : ℝ) / 2 ^ (2 * pp) =
        -(Wr L Q k b a c - (wJZ R.Pg L.c Yk (pidx15 (sidx b) (sidx a)) (sidx c) : ℝ) / 2 ^ (2 * pp)) by ring, abs_neg]
      exact this
    · rw [if_neg h2, if_neg h2, Wr_zero L Q k h2]; simp

/-! ### A2 -/

/-- `Ā_kj` as a real. -/
def abarR (R : RecP) (L : LinD) (k j : Fin 21) : ℝ :=
  (abarZ R.Zb (yjL R L) L.Y (eps0Max R.Pg L.c) k j : ℝ) / 2 ^ (3 * pp)

lemma gL_yjL (R : RecP) (L : LinD) {k : ℕ} (hk : k < 21) :
    gL (yjL R L) k = l36 fun e => yjZ R.Pg L.c (gL L.Y k) e := by
  unfold yjL; interval_cases k <;> rfl

lemma gi_l36 (f : ℕ → ℤ) {j : ℕ} (hj : j < 36) : gi (l36 f) j = f j := by interval_cases j <;> rfl

lemma abs_epsMat_le {R : RecP} {L : LinD} (hok : linOK R L = true) (k j : Fin 21) :
    |Method.epsMat (Mq R.Pg) (Mq L.c) (Bq R) (Yre L) (Yim L) k j| ≤ abarR R L k j := by
  set Q := Mq R.Pg + Mq L.c
  set eE := rn (eps0Max R.Pg L.c)
  have hYJ : ∀ a c, gi (gL (yjL R L) k) (ix a c) = yjZ R.Pg L.c (gL L.Y k) (ix a c) := fun a c => by
    simp only [gL_yjL R L k.2, gi_l36 _ (ix_lt a c)]
  -- the real value
  have hval : Method.epsMat (Mq R.Pg) (Mq L.c) (Bq R) (Yre L) (Yim L) k j =
      (if k = j then 1 else 0) - ∑ a, ∑ c, Bq R j a c * ∑ b, (Wr L Q k a b c - Wr L Q k b a c) := by
    simp only [Method.epsMat, yMap_jac]; rfl
  -- the kernel's value
  have hdot : (dot36 (gL (yjL R L) k) (gL R.Zb j) : ℝ) / 2 ^ (3 * pp) =
      ∑ a, ∑ c, Bq R j a c * ((yjZ R.Pg L.c (gL L.Y k) (ix a c) : ℝ) / 2 ^ (2 * pp)) := by
    rw [dot36_eq]; push_cast
    rw [Finset.sum_div]; refine Finset.sum_congr rfl fun a _ => ?_
    rw [Finset.sum_div]; refine Finset.sum_congr rfl fun c _ => ?_
    rw [hYJ, Bq_apply]; unfold rq
    rw [show 3 * pp = pp + 2 * pp by ring, pow_add]; field_simp
  have hkj : ((if k = j then 1 else 0 : ℝ)) = ((if (k : ℕ) = j then (2 : ℤ) ^ (3 * pp) else 0 : ℤ) : ℝ) / 2 ^ (3 * pp) := by
    by_cases h : k = j
    · rw [if_pos h, if_pos (congrArg _ h)]; push_cast; field_simp
    · rw [if_neg h, if_neg (fun e => h (Fin.ext e))]; simp
  -- the error
  have herr : |∑ a, ∑ c, Bq R j a c * ∑ b, (Wr L Q k a b c - Wr L Q k b a c) -
      ∑ a, ∑ c, Bq R j a c * ((yjZ R.Pg L.c (gL L.Y k) (ix a c) : ℝ) / 2 ^ (2 * pp))| ≤
      (eps0Max R.Pg L.c * (l6 fun a => yaZ (gL L.Y k) a * babZ (gL R.Zb j) a).sum : ℕ) / 2 ^ (3 * pp) := by
    rw [← Finset.sum_sub_distrib]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    have hb : ∀ a, |∑ c, Bq R j a c * ∑ b, (Wr L Q k a b c - Wr L Q k b a c) -
        ∑ c, Bq R j a c * ((yjZ R.Pg L.c (gL L.Y k) (ix a c) : ℝ) / 2 ^ (2 * pp))| ≤
        (babZ (gL R.Zb j) (sidx a) : ℝ) / 2 ^ pp * ((yaZ (gL L.Y k) (sidx a) : ℝ) / 2 ^ pp * eE) := by
      intro a
      rw [← Finset.sum_sub_distrib]
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      have hbab : (babZ (gL R.Zb j) (sidx a) : ℝ) / 2 ^ pp = ∑ c : I6, |Bq R j a c| := by
        simp only [babZ, l6_sum, Bq_apply, rq]; push_cast
        rw [Finset.sum_div]; refine Finset.sum_congr rfl fun c _ => ?_
        rw [abs_div, abs_of_pos (two_pow_pos pp), Nat.cast_natAbs, Int.cast_abs]; rfl
      rw [hbab, Finset.sum_mul]
      refine Finset.sum_le_sum fun c _ => ?_
      rw [← mul_sub, abs_mul]
      exact mul_le_mul_of_nonneg_left (yj_err hok k a c) (abs_nonneg _)
    refine (Finset.sum_le_sum fun a _ => hb a).trans (le_of_eq ?_)
    simp only [l6_sum]; push_cast
    rw [Finset.mul_sum, Finset.sum_div]; refine Finset.sum_congr rfl fun a _ => ?_
    unfold eE rn; rw [show 3 * pp = pp + pp + pp by ring, pow_add, pow_add]; field_simp
  rw [hval]
  unfold abarR abarZ
  rw [Nat.cast_add, add_div]
  have e2 : (if k = j then 1 else 0 : ℝ) - ∑ a, ∑ c, Bq R j a c * ∑ b, (Wr L Q k a b c - Wr L Q k b a c) =
      (((if (k : ℕ) = j then (2 : ℤ) ^ (3 * pp) else 0 : ℤ) : ℝ) / 2 ^ (3 * pp) -
        (dot36 (gL (yjL R L) k) (gL R.Zb j) : ℝ) / 2 ^ (3 * pp)) -
      (∑ a, ∑ c, Bq R j a c * ∑ b, (Wr L Q k a b c - Wr L Q k b a c) -
        ∑ a, ∑ c, Bq R j a c * ((yjZ R.Pg L.c (gL L.Y k) (ix a c) : ℝ) / 2 ^ (2 * pp))) := by
    rw [hkj, hdot]; ring
  rw [e2]
  refine (abs_sub _ _).trans (add_le_add (le_of_eq ?_) herr)
  rw [← sub_div, abs_div, abs_of_pos (by positivity : (0 : ℝ) < 2 ^ (3 * pp)), Nat.cast_natAbs, Int.cast_abs,
    Int.cast_sub]

/-- **A2 and `‖Y‖₂`.** -/
theorem linOK_sound {R : RecP} {L : LinD} (hok : linOK R L = true) :
    (∀ w : Mat6, wᴴ = w → Method.xnorm (Method.yMap (Yre L) (Yim L) w) ≤ rn L.yn * outNorm w) ∧
    ∀ x, Method.xnorm (x - Method.yMap (Yre L) (Yim L) (Jac (Mq R.Pg + Mq L.c) (Method.nbMap (Bq R) x))) ≤
      rn L.eps0 * Method.xnorm x := by
  have hok' := hok
  unfold linOK at hok'
  simp only [Bool.and_eq_true] at hok'
  refine ⟨hY_of hok'.1.2, fun x => Method.heps_of_epsMat (rn_nonneg _) (abs_epsMat_le hok) ?_ x⟩
  have h := of_decide_eq_true hok'.2
  simp only [l21_sum] at h
  have h' : ∑ k : Fin 21, ∑ j : Fin 21, ((abarZ R.Zb (yjL R L) L.Y (eps0Max R.Pg L.c) k j : ℕ) : ℝ) ^ 2 ≤
      ((L.eps0 * 2 ^ (2 * pp) : ℕ) : ℝ) ^ 2 := by exact_mod_cast h
  have e : ∑ k, ∑ j, abarR R L k j ^ 2 =
      (∑ k : Fin 21, ∑ j : Fin 21, ((abarZ R.Zb (yjL R L) L.Y (eps0Max R.Pg L.c) k j : ℕ) : ℝ) ^ 2) /
        ((2 : ℝ) ^ (3 * pp)) ^ 2 := by
    simp only [abarR, div_pow, Finset.sum_div]
  rw [e, div_le_iff₀ (by positivity)]
  refine h'.trans (le_of_eq ?_)
  unfold rn; push_cast
  rw [show 3 * pp = pp + 2 * pp by ring, pow_add]; field_simp

end NoFourMUBs.KernelAtlas.Seed
