import KernelAtlas.Seed.T1P
import NoFourMUBs.SeedAtlas.Method.NormalTube

/-!
# T1′ soundness, part 1: lists, the record's real data, and `recOK`

The real objects of a kernel record: the frame `Tq R k = Tn_k / DT`, the basis `Bq R j = Zb_j / 2^pp` of `N`.
`recOK_sound` turns `recOK R = true` into the record hypotheses of `Method.normal_tube` (`RecFacts`).
-/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Lists -/

lemma all_l15 {f : ℕ → Bool} (h : (l15 f).all id = true) {j : ℕ} (hj : j < 15) : f j = true := by
  simp only [l15, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases j <;> tauto

lemma all_l21 {f : ℕ → Bool} (h : (l21 f).all id = true) {j : ℕ} (hj : j < 21) : f j = true := by
  simp only [l21, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases j <;> tauto

lemma all_l36 {f : ℕ → Bool} (h : (l36 f).all id = true) {j : ℕ} (hj : j < 36) : f j = true := by
  simp only [l36, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases j <;> tauto

lemma gT_l15 (f : ℕ → CT) {j : ℕ} (hj : j < 15) : gT (l15 f) j = f j := by interval_cases j <;> rfl
lemma gLT_l15 (f : ℕ → List CT) {j : ℕ} (hj : j < 15) : gLT (l15 f) j = f j := by interval_cases j <;> rfl

lemma l21_sum {M : Type} [AddCommMonoid M] (f : ℕ → M) : (l21 f).sum = ∑ k : Fin 21, f k := by
  simp only [l21, List.sum_cons, List.sum_nil, Fin.sum_univ_succ, Fin.sum_univ_zero]
  simp

lemma l6_sum {M : Type} [AddCommMonoid M] (f : ℕ → M) : (l6 f).sum = ∑ c : I6, f (sidx c) := by
  simp only [l6, List.sum_cons, List.sum_nil, Fintype.sum_sum_type, Fin.sum_univ_three, sidx, Fin.val_zero,
    Fin.val_one, Fin.val_two]
  abel

lemma dotN_eq : ∀ (n : ℕ) (x y : List ℤ), dotN n x y = ∑ e ∈ Finset.range n, gi x e * gi y e
  | 0, _, _ => by simp [dotN]
  | n + 1, [], y => by simp [dotN, gi]
  | n + 1, a :: xs, [] => by simp [dotN, gi]
  | n + 1, a :: xs, b :: ys => by
    rw [dotN, dotN_eq n xs ys, Finset.sum_range_succ']
    simp only [gi, List.getD_cons_succ, List.getD_cons_zero]
    ring

lemma range36_eq {M : Type} [AddCommMonoid M] (f : ℕ → M) :
    ∑ e ∈ Finset.range 36, f e = ∑ a : I6, ∑ c : I6, f (ix a c) := by
  rw [← l36_sum]; simp only [l36, List.sum_cons, List.sum_nil, Finset.sum_range_succ, Finset.sum_range_zero]; abel

lemma dot36_eq (x y : List ℤ) : dot36 x y = ∑ a : I6, ∑ c : I6, gi x (ix a c) * gi y (ix a c) := by
  rw [dot36, dotN_eq, range36_eq (fun e => gi x e * gi y e)]

/-! ### The record's real data -/

/-- A family of `6 × 6` matrices from integer rows and a denominator. -/
def zq (Z : List (List ℤ)) (D : ℝ) {m : ℕ} : Fin m → RMat6 := fun j a c => (gi (gL Z j) (ix a c) : ℝ) / D

/-- The exact frame `T_k = Tn_k / DT`. -/
def Tq (R : RecP) : Fin 4 → RMat6 := zq R.Tn R.DT

/-- The basis `B_j = Zb_j / 2^pp` of `N`. -/
def Bq (R : RecP) : Fin 21 → RMat6 := zq R.Zb (2 ^ pp)

lemma Bq_apply (R : RecP) (j : Fin 21) (a c : I6) : Bq R j a c = rq (gi (gL R.Zb j) (ix a c)) := rfl

/-- A grid `6 × 6` matrix from a 36-list. -/
def Mq (l : List ℤ) : RMat6 := fun a c => rq (gi l (ix a c))

lemma horZ_spec {z : List ℤ} (h : horZ z = true) :
    (∀ a : I6, ∑ c : I6, (gi z (ix a c) : ℝ) = 0) ∧ ∀ c : I6, ∑ a : I6, (gi z (ix a c) : ℝ) = 0 := by
  unfold horZ at h
  rw [Bool.and_eq_true] at h
  refine ⟨fun a => ?_, fun c => ?_⟩
  · have := of_decide_eq_true (all_l6 h.1 (sidx_lt a))
    rw [l6_sum] at this
    exact_mod_cast this
  · have := of_decide_eq_true (all_l6 h.2 (sidx_lt c))
    rw [l6_sum] at this
    exact_mod_cast this

lemma isHorizontal_zq {z : List ℤ} (h : horZ z = true) (D : ℝ) :
    IsHorizontal (fun a c => (gi z (ix a c) : ℝ) / D) := by
  obtain ⟨hr, hc⟩ := horZ_spec h
  refine ⟨fun a => ?_, fun c => ?_⟩
  · rw [← Finset.sum_div, hr a, zero_div]
  · rw [← Finset.sum_div, hc c, zero_div]

lemma nbGram_zq {m : ℕ} (Z : List (List ℤ)) (D : ℝ) (j k : Fin m) :
    Method.nbGram (zq Z D) j k = (gramZ Z j k : ℝ) / D ^ 2 := by
  simp only [Method.nbGram, zq, gramZ, dot36_eq]
  push_cast
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.sum_div]
  exact Finset.sum_congr rfl fun c _ => by ring

/-- Gershgorin from below, from the integer check. -/
lemma gersh_lo {m : ℕ} {Z : List (List ℤ)} {D : ℝ} (hD : 0 < D) {lam : ℕ}
    (h : ∀ j : Fin m, (lam : ℝ) * D ^ 2 ≤ 2 ^ pp * (2 * (gramZ Z j j : ℝ) - ∑ k : Fin m, |(gramZ Z j k : ℝ)|))
    (j : Fin m) : rn lam ≤ 2 * Method.nbGram (zq Z D) j j - ∑ k, |Method.nbGram (zq Z D) j k| := by
  simp only [nbGram_zq]
  have hD2 : 0 < D ^ 2 := by positivity
  have e : ∀ k : Fin m, |(gramZ Z j k : ℝ) / D ^ 2| = |(gramZ Z j k : ℝ)| / D ^ 2 := fun k => by
    rw [abs_div, abs_of_pos hD2]
  simp only [e, ← Finset.sum_div]
  rw [show 2 * ((gramZ Z j j : ℝ) / D ^ 2) - (∑ k : Fin m, |(gramZ Z j k : ℝ)|) / D ^ 2 =
    (2 * (gramZ Z j j : ℝ) - ∑ k : Fin m, |(gramZ Z j k : ℝ)|) / D ^ 2 by ring]
  rw [le_div_iff₀ hD2]
  unfold rn
  have hT := two_pow_pos pp
  have := h j
  rw [div_mul_eq_mul_div, div_le_iff₀ hT]
  linarith

/-- `‖x‖ ≤ c ‖Σ x_j B_j‖` from Gershgorin and `1 ≤ c² λ`. -/
lemma xnorm_le_zq {m : ℕ} {Z : List (List ℤ)} {D : ℝ} (hD : 0 < D) {lam c : ℕ}
    (h : ∀ j : Fin m, (lam : ℝ) * D ^ 2 ≤ 2 ^ pp * (2 * (gramZ Z j j : ℝ) - ∑ k : Fin m, |(gramZ Z j k : ℝ)|))
    (hc : 2 ^ (3 * pp) ≤ c ^ 2 * lam) (x : Fin m → ℝ) :
    Method.xnorm x ≤ rn c * frob (Method.nbMap (zq Z D) x) := by
  refine Method.xnorm_le_of_gram (rn_nonneg c) ?_ (gersh_lo hD h) x
  have h1 : ((2 ^ (3 * pp) : ℕ) : ℝ) ≤ ((c ^ 2 * lam : ℕ) : ℝ) := by exact_mod_cast hc
  push_cast at h1
  unfold rn
  have hT := two_pow_pos pp
  rw [div_pow, div_mul_div_comm, le_div_iff₀ (by positivity), one_mul]
  calc ((2 : ℝ) ^ pp) ^ 2 * 2 ^ pp = 2 ^ (3 * pp) := by rw [← pow_mul, ← pow_add]; ring_nf
    _ ≤ _ := h1

/-! ### `recOK` -/

/-- The record facts the normal tube needs. -/
structure RecFacts (R : RecP) : Prop where
  dt : 0 < R.DT
  hor : ∀ k, IsHorizontal (Tq R k)
  inj : ∀ η : Fin 4 → ℝ, (∑ k, η k • Tq R k) = 0 → η = 0
  memN : ∀ j, Bq R j ∈ Method.normalSpace (Tq R)
  cN : ∀ x, Method.xnorm x ≤ rn R.cn * frob (Method.nbMap (Bq R) x)
  nN : ∀ x, frob (Method.nbMap (Bq R) x) ≤ rn R.nn * Method.xnorm x
  rho : ∀ a c, ∑ k, Bq R k a c ^ 2 ≤ rn (gn R.rho (ix a c)) ^ 2
  kp : ∀ p < 15, ∀ c < 6,
    ‖cz (gz (gLZ R.KP p) c) - Complex.exp (((rq (thP R.Pg p c) : ℝ) : ℂ) * I)‖ ≤ rn R.kpe
  kq : ∀ e < 36, ‖cz (gz R.KQ e) - Complex.exp (((rq (gi R.Pg e) : ℝ) : ℂ) * I)‖ ≤ rn R.kqe

lemma cisOK_spec {a : ℤ} {z : ℤ × ℤ} {eps : ℕ} (h : cisOK a z eps = true) :
    ‖cz z - Complex.exp (((rq a : ℝ) : ℂ) * I)‖ ≤ rn eps := by
  unfold cisOK at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨hx, hz⟩, he⟩ := h
  have hx' : |(((a : ℚ) / 2 ^ pp : ℚ) : ℝ)| / (nT + 1) ≤ 1 / 2 := by
    have h2 : ((|(a : ℚ) / 2 ^ pp| / ((nT : ℚ) + 1) : ℚ) : ℝ) ≤ ((1 / 2 : ℚ) : ℝ) := by exact_mod_cast hx
    push_cast at h2 ⊢; exact h2
  have hs := cisRound_spec ((a : ℚ) / 2 ^ pp) nT pp hx'
  have hrq : (((a : ℚ) / 2 ^ pp : ℚ) : ℝ) = rq a := by unfold rq; push_cast; ring
  rw [hrq, ← hz] at hs
  have e1 : cz z = ((z.1 : ℂ) + (z.2 : ℂ) * I) / 2 ^ pp := rfl
  rw [e1, norm_sub_rev]
  refine hs.trans ?_
  have h3 := le_ratCeilN ((cisRem ((a : ℚ) / 2 ^ pp) nT + 1 / 2 ^ pp) * 2 ^ pp)
  have h4 : ((ratCeilN ((cisRem ((a : ℚ) / 2 ^ pp) nT + 1 / 2 ^ pp) * 2 ^ pp) : ℕ) : ℝ) ≤ (eps : ℝ) := by
    exact_mod_cast he
  unfold rn
  rw [le_div_iff₀ (two_pow_pos pp)]
  push_cast at h3 ⊢
  linarith

theorem recOK_sound {R : RecP} (h : recOK R = true) : RecFacts R := by
  unfold recOK at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hTh, hTg⟩, hcT⟩, hBN⟩, hBg⟩, hcn⟩, hnn⟩, hrho⟩, hKP⟩, hKQ⟩, hDT⟩ := h
  have hDT' : (0 : ℝ) < R.DT := by exact_mod_cast hDT
  have hT2 : (0 : ℝ) < 2 ^ pp := two_pow_pos pp
  -- the 4- and 21-row Gershgorin checks as real inequalities
  have gT4 : ∀ j : Fin 4, ((R.lamT : ℕ) : ℝ) * (R.DT : ℝ) ^ 2 ≤
      2 ^ pp * (2 * (gramZ R.Tn j j : ℝ) - ∑ k : Fin 4, |(gramZ R.Tn j k : ℝ)|) := fun j => by
    have := of_decide_eq_true (all_l4 hTg j.2)
    rw [l4_sum] at this
    exact_mod_cast this
  have gB : ∀ j : Fin 21, ((R.lamB : ℕ) : ℝ) * ((2 : ℝ) ^ pp) ^ 2 ≤
      2 ^ pp * (2 * (gramZ R.Zb j j : ℝ) - ∑ k : Fin 21, |(gramZ R.Zb j k : ℝ)|) := fun j => by
    have := of_decide_eq_true (all_l21 hBg j.2)
    rw [l21_sum] at this
    rw [← pow_mul, mul_comm pp 2]
    exact_mod_cast this
  refine ⟨hDT, fun k => isHorizontal_zq (all_l4 hTh k.2) _, fun η hη => ?_, fun j => ?_, xnorm_le_zq hT2 gB hcn,
    fun x => ?_, fun a c => ?_, fun p hp c hc => ?_, fun e he => ?_⟩
  · -- injectivity of `T`
    have hc := xnorm_le_zq hDT' gT4 hcT η
    have h0 : Method.nbMap (Tq R) η = 0 := hη
    refine Method.nbMap_injective_of (B := Tq R) (cN := rn R.cT) (fun x => ?_) η h0
    exact xnorm_le_zq hDT' gT4 hcT x
  · -- `B_j ∈ N`
    have hj := all_l21 hBN j.2
    rw [Bool.and_eq_true] at hj
    refine ⟨isHorizontal_zq hj.1 _, fun k => ?_⟩
    have hk := of_decide_eq_true (all_l4 hj.2 k.2)
    rw [dot36_eq] at hk
    have hk' : ∑ a : I6, ∑ c : I6, (gi (gL R.Tn k) (ix a c) : ℝ) * (gi (gL R.Zb j) (ix a c) : ℝ) = 0 := by
      exact_mod_cast hk
    simp only [Tq, Bq, zq]
    have e : ∀ a c, (gi (gL R.Tn k) (ix a c) : ℝ) / R.DT * ((gi (gL R.Zb j) (ix a c) : ℝ) / 2 ^ pp) =
        (gi (gL R.Tn k) (ix a c) : ℝ) * (gi (gL R.Zb j) (ix a c) : ℝ) / (R.DT * 2 ^ pp) := fun a c => by
      field_simp
    simp only [e, ← Finset.sum_div, hk', zero_div]
  · -- `‖N_b x‖ ≤ n_N ‖x‖`
    refine Method.frob_nbMap_le_of_gram (rn_nonneg _) (fun x => ?_) x
    refine Method.gershgorin_upper (Method.nbGram_symm _) (fun j => ?_) x
    have hj := of_decide_eq_true (all_l21 hnn j.2)
    rw [l21_sum] at hj
    have hj' : ∑ k : Fin 21, |(gramZ R.Zb j k : ℝ)| ≤ (R.nn : ℝ) ^ 2 := by exact_mod_cast hj
    simp only [Bq, nbGram_zq]
    have e : ∀ k : Fin 21, |(gramZ R.Zb j k : ℝ) / ((2 : ℝ) ^ pp) ^ 2| = |(gramZ R.Zb j k : ℝ)| / ((2 : ℝ) ^ pp) ^ 2 :=
      fun k => by rw [abs_div, abs_of_pos (show (0 : ℝ) < ((2 : ℝ) ^ pp) ^ 2 by positivity)]
    simp only [e, ← Finset.sum_div]
    unfold rn
    rw [div_pow]
    exact div_le_div_of_nonneg_right hj' (by positivity)
  · -- row bounds
    have he := of_decide_eq_true (all_l36 hrho (ix_lt a c))
    rw [l21_sum] at he
    have he' : ∑ j : Fin 21, (gi (gL R.Zb j) (ix a c) : ℝ) ^ 2 ≤ (gn R.rho (ix a c) : ℝ) ^ 2 := by exact_mod_cast he
    simp only [Bq, zq, div_pow]
    rw [← Finset.sum_div]
    unfold rn
    rw [div_pow]
    exact div_le_div_of_nonneg_right he' (by positivity)
  · have := all_l6 (all_l15 hKP hp) hc
    exact cisOK_spec this
  · exact cisOK_spec (all_l36 hKQ he)

end NoFourMUBs.KernelAtlas.Seed
