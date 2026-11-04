import KernelAtlas.TrigK
import KernelAtlas.Edges
import KernelAtlas.SigmaK

/-!
# The centre residual `e₀`, the operator norm `K` and the tangent bound `j₁` in the kernel

With the table products `wq` (`TrigK.lean`, `‖w_abc − w̃_abc‖ ≤ ω`):
* **`e₀`** (`e0_sound`): `Φ(0)_ab = Σ_c w_abc − 6δ_ab`, so `‖Φ(0)_ab‖ ≤ ‖S̃_ab − 6δ_ab‖ + 6ω` with
  `S̃_ab = Σ_c w̃_abc`; `e0OK` checks `Σ_ab ‖S̃_ab − 6δ_ab‖² + 1296 ω² ≤ e₀²`.
* **`K`** (`opnorm_sound`): `‖Qop z‖² = ‖Zᴴ z‖²/6 = ‖z‖² + zᴴΦ(0)z/6 ≤ (1 + ‖Φ(0)‖_F/6)‖z‖²` and
  `‖Φ(0)‖_F ≤ √2 e₀ ≤ (3/2) e₀`; `K² ≥ 1 + e₀/4`.
* **`j₁`** (`j1_sound`): `J(Tη) = Σ_k η_k J(T_k)`, `‖J(T_k)_ab‖ ≤ ‖M̃_kab‖ + ω Σ_c |d_kabc|` with
  `d_kabc = T_kac − T_kbc`; `j1OK` checks `Σ_k Σ_ab (‖M̃_kab‖² + ω² (Σ_c |d_kabc|)²) ≤ j₁²`.
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC Complex

namespace NoFourMUBs.KernelAtlas

def g6 (f : I6 → ℤ × ℤ) : ℤ × ℤ :=
  gadd (gadd (gadd (gadd (gadd (f (.inl 0)) (f (.inl 1))) (f (.inl 2))) (f (.inr 0))) (f (.inr 1))) (f (.inr 2))

/-- `S̃_ab = Σ_c wq_abc` (scale `2^{2p}`). -/
def sw (tb : Tab) (a b : I6) : ℤ × ℤ := g6 fun c => wq tb a b c

/-- `‖S̃_ab − 6δ_ab‖²`. -/
def phiN2 (tb : Tab) (a b : I6) : ℚ :=
  (((sw tb a b).1 - (if a = b then 6 * 2 ^ (2 * tb.p) else 0) : ℤ) ^ 2 + ((sw tb a b).2 : ℤ) ^ 2 : ℤ) /
    (2 : ℚ) ^ (4 * tb.p)

def e0OK (tb : Tab) (e0 : ℚ) : Bool :=
  epB tb && decide (0 ≤ e0) && decide (s6 (fun a => s6 fun b => phiN2 tb a b) + 1296 * omegaQ tb ^ 2 ≤ e0 ^ 2)

/-! ### Gaussian sums -/

lemma gval_g6 (p : ℕ) (f : I6 → ℤ × ℤ) : gval p (g6 f) = ∑ c, gval p (f c) := by
  rw [sum_I6R_C]; simp only [g6, gval_gadd]; ring
where
  sum_I6R_C : ∀ (g : I6 → ℂ), ∑ c, g c = g (.inl 0) + g (.inl 1) + g (.inl 2) + (g (.inr 0) + g (.inr 1) + g (.inr 2)) :=
    fun g => by rw [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]

lemma omega_nonneg {tb : Tab} (h : epB tb = true) : (0 : ℝ) ≤ omegaQ tb :=
  (norm_nonneg _).trans (w_err h j0 j0 j0)

lemma phiN2_eq (tb : Tab) (a b : I6) :
    ((phiN2 tb a b : ℚ) : ℝ) = ‖gval (2 * tb.p) (sw tb a b) - (if a = b then 6 else 0)‖ ^ 2 := by
  rw [← Complex.normSq_eq_norm_sq, gval_eq]
  unfold phiN2
  split_ifs with hab
  · simp [Complex.normSq_apply]; field_simp; ring
  · simp [Complex.normSq_apply]; field_simp; ring

/-- `Φ(0)_ab = Σ_c w_abc − 6δ_ab`. -/
lemma phi0_apply (P : RMat6) (a b : I6) : Phi P 0 a b = ∑ c, wex P a b c - (if a = b then 6 else 0) := by
  simp only [Phi, add_zero, Matrix.sub_apply, Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.smul_apply,
    Matrix.one_apply, wex]
  split_ifs <;> simp

lemma phi0_entry_le {tb : Tab} (h : epB tb = true) (a b : I6) :
    ‖Phi (Pmat tb.pq) 0 a b‖ ≤ ‖gval (2 * tb.p) (sw tb a b) - (if a = b then 6 else 0)‖ + 6 * omegaQ tb := by
  rw [phi0_apply, sw, gval_g6]
  have e : ∑ c, wex (Pmat tb.pq) a b c - (if a = b then (6 : ℂ) else 0) =
      (∑ c, gval (2 * tb.p) (wq tb a b c) - (if a = b then 6 else 0)) +
        ∑ c, (wex (Pmat tb.pq) a b c - gval (2 * tb.p) (wq tb a b c)) := by
    rw [Finset.sum_sub_distrib]; ring
  rw [e]
  refine (norm_add_le _ _).trans (add_le_add le_rfl ?_)
  refine (norm_sum_le _ _).trans ?_
  calc ∑ c, ‖wex (Pmat tb.pq) a b c - gval (2 * tb.p) (wq tb a b c)‖ ≤ ∑ _c : I6, (omegaQ tb : ℝ) :=
        Finset.sum_le_sum fun c _ => w_err h a b c
    _ = 6 * omegaQ tb := by rw [Finset.sum_const, Finset.card_univ, card_I6]; simp

/-- `Σ_ab ‖Φ(0)_ab‖² ≤ 2 e₀²`. -/
lemma phi0_frob_sq {tb : Tab} {e0 : ℚ} (h : e0OK tb e0 = true) :
    ∑ a, ∑ b, ‖Phi (Pmat tb.pq) 0 a b‖ ^ 2 ≤ 2 * (e0 : ℝ) ^ 2 := by
  simp only [e0OK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨hep, -⟩, hsum⟩ := h
  have hω := omega_nonneg hep
  have hsum' : ∑ a, ∑ b, ‖gval (2 * tb.p) (sw tb a b) - (if a = b then 6 else 0)‖ ^ 2 + 1296 * (omegaQ tb : ℝ) ^ 2 ≤
      (e0 : ℝ) ^ 2 := by
    have := (Rat.cast_le (K := ℝ)).mpr hsum
    push_cast at this; simp only [s6_cast, phiN2_eq] at this; exact this
  have hent : ∀ a b, ‖Phi (Pmat tb.pq) 0 a b‖ ^ 2 ≤
      2 * ‖gval (2 * tb.p) (sw tb a b) - (if a = b then 6 else 0)‖ ^ 2 + 72 * (omegaQ tb : ℝ) ^ 2 := by
    intro a b
    have h1 := phi0_entry_le hep a b
    have h0 := norm_nonneg (Phi (Pmat tb.pq) 0 a b)
    nlinarith [sq_nonneg (‖gval (2 * tb.p) (sw tb a b) - (if a = b then 6 else 0)‖ - 6 * omegaQ tb)]
  calc ∑ a, ∑ b, ‖Phi (Pmat tb.pq) 0 a b‖ ^ 2
      ≤ ∑ a, ∑ b, (2 * ‖gval (2 * tb.p) (sw tb a b) - (if a = b then 6 else 0)‖ ^ 2 + 72 * (omegaQ tb : ℝ) ^ 2) :=
        Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun b _ => hent a b
    _ = 2 * (∑ a, ∑ b, ‖gval (2 * tb.p) (sw tb a b) - (if a = b then 6 else 0)‖ ^ 2 + 1296 * (omegaQ tb : ℝ) ^ 2) := by
        simp only [Finset.sum_add_distrib, Finset.sum_const, Finset.card_univ, card_I6, nsmul_eq_mul, ← Finset.mul_sum]
        push_cast; ring
    _ ≤ 2 * (e0 : ℝ) ^ 2 := by linarith

/-- **`he`**: `outNorm Φ(0) ≤ e₀`. -/
theorem e0_sound {tb : Tab} {e0 : ℚ} (h : e0OK tb e0 = true) : outNorm (Phi (Pmat tb.pq) 0) ≤ e0 := by
  have h0 : (0 : ℝ) ≤ e0 := by
    simp only [e0OK, Bool.and_eq_true, decide_eq_true_eq] at h; exact_mod_cast h.1.2
  refine outNorm_le_of_sq_le h0 ?_
  have := phi0_frob_sq h
  linarith

/-! ### The operator norm `K` -/

lemma e_qop (P : RMat6) (j i : I6) : e (-((1 / (2 * Real.pi)) • P) j i) = star (phaseMat P j i) := by
  rw [phaseMat, Matrix.of_apply, star_exp_mul_I, e]
  congr 2
  simp only [Matrix.smul_apply, smul_eq_mul]
  push_cast
  field_simp

/-- `‖Zᴴ z‖² = 6‖z‖² + Re Σ_jj' z_j z̄_j' Φ(0)_j'j`. -/
lemma zh_norm_sq (P : RMat6) (z : I6 → ℂ) :
    ∑ i, ‖∑ j, star (phaseMat P j i) * z j‖ ^ 2 =
      6 * ∑ j, ‖z j‖ ^ 2 + ∑ j, ∑ j', (z j * star (z j') * Phi P 0 j' j).re := by
  have h1 : ∀ i, ‖∑ j, star (phaseMat P j i) * z j‖ ^ 2 =
      ∑ j, ∑ j', (z j * star (z j') * (phaseMat P j' i * star (phaseMat P j i))).re := by
    intro i
    rw [norm_sq_sum_eq]
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun j' _ => ?_
    congr 1
    simp only [star_mul', star_star]; ring
  simp only [h1]
  have h2 : ∑ i, ∑ j, ∑ j', (z j * star (z j') * (phaseMat P j' i * star (phaseMat P j i))).re =
      ∑ j, ∑ j', (z j * star (z j') * ∑ i, wex P j' j i).re := by
    calc _ = ∑ j, ∑ i, ∑ j', (z j * star (z j') * (phaseMat P j' i * star (phaseMat P j i))).re := Finset.sum_comm
      _ = ∑ j, ∑ j', ∑ i, (z j * star (z j') * (phaseMat P j' i * star (phaseMat P j i))).re :=
          Finset.sum_congr rfl fun j _ => Finset.sum_comm
      _ = _ := by
          refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun j' _ => ?_
          simp only [Finset.mul_sum, Complex.re_sum, wex]
  rw [h2]
  have h3 : ∀ j j', ∑ i, wex P j' j i = Phi P 0 j' j + (if j' = j then 6 else 0) := by
    intro j j'; rw [phi0_apply]; ring
  simp only [h3, mul_add, Complex.add_re, Finset.sum_add_distrib]
  rw [add_comm]
  congr 1
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Finset.sum_eq_single j (fun j' _ hj => by simp [hj]) (by simp)]
  simp only [if_true, Complex.star_def]
  rw [show z j * (starRingEnd ℂ) (z j) * 6 = ((Complex.normSq (z j) * 6 : ℝ) : ℂ) by
    rw [Complex.mul_conj]; push_cast; ring, Complex.ofReal_re, Complex.normSq_eq_norm_sq]
  ring

/-- **`hK`**: `‖Qop z‖ ≤ K ‖z‖` whenever `K² ≥ 1 + e₀/4`. -/
theorem opnorm_sound {tb : Tab} {e0 K : ℚ} (h : e0OK tb e0 = true) (hK : 1 + e0 / 4 ≤ K ^ 2) (hK0 : 0 ≤ K)
    (z : I6 → ℂ) : cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ (K : ℝ) * cnorm z := by
  have he0 : (0 : ℝ) ≤ e0 := by
    simp only [e0OK, Bool.and_eq_true, decide_eq_true_eq] at h; exact_mod_cast h.1.2
  have hK' : 1 + (e0 : ℝ) / 4 ≤ (K : ℝ) ^ 2 := by exact_mod_cast hK
  have hK0' : (0 : ℝ) ≤ K := by exact_mod_cast hK0
  set P := Pmat tb.pq
  have hfro := phi0_frob_sq h
  -- Cauchy–Schwarz over pairs
  have hcs : ∑ j, ∑ j', (z j * star (z j') * Phi P 0 j' j).re ≤ 3 / 2 * (e0 : ℝ) * ∑ j, ‖z j‖ ^ 2 := by
    have hb : ∀ j j', (z j * star (z j') * Phi P 0 j' j).re ≤ ‖z j‖ * ‖z j'‖ * ‖Phi P 0 j' j‖ := by
      intro j j'
      refine (Complex.re_le_norm _).trans (le_of_eq ?_)
      rw [norm_mul, norm_mul, norm_star]
    have hc := Finset.sum_mul_sq_le_sq_mul_sq (Finset.univ (α := I6 × I6))
      (fun x => ‖z x.1‖ * ‖z x.2‖) (fun x => ‖Phi P 0 x.2 x.1‖)
    simp only [Fintype.sum_prod_type] at hc
    have hz2 : ∑ j, ∑ j', (‖z j‖ * ‖z j'‖) ^ 2 = (∑ j, ‖z j‖ ^ 2) ^ 2 := by
      rw [sq (∑ j, ‖z j‖ ^ 2), Finset.sum_mul_sum]
      exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun j' _ => by ring
    have hp2 : ∑ j, ∑ j', ‖Phi P 0 j' j‖ ^ 2 ≤ 2 * (e0 : ℝ) ^ 2 := by rw [Finset.sum_comm]; exact hfro
    rw [hz2] at hc
    have hS : 0 ≤ ∑ j, ‖z j‖ ^ 2 := Finset.sum_nonneg fun j _ => sq_nonneg _
    have hsum : ∑ j, ∑ j', ‖z j‖ * ‖z j'‖ * ‖Phi P 0 j' j‖ ≤ 3 / 2 * (e0 : ℝ) * ∑ j, ‖z j‖ ^ 2 := by
      have hn : 0 ≤ ∑ j, ∑ j', ‖z j‖ * ‖z j'‖ * ‖Phi P 0 j' j‖ :=
        Finset.sum_nonneg fun j _ => Finset.sum_nonneg fun j' _ => by positivity
      have hsq : (∑ j, ∑ j', ‖z j‖ * ‖z j'‖ * ‖Phi P 0 j' j‖) ^ 2 ≤ (3 / 2 * (e0 : ℝ) * ∑ j, ‖z j‖ ^ 2) ^ 2 := by
        calc _ ≤ (∑ j, ‖z j‖ ^ 2) ^ 2 * (2 * (e0 : ℝ) ^ 2) := hc.trans (mul_le_mul_of_nonneg_left hp2 (sq_nonneg _))
          _ ≤ _ := by nlinarith [sq_nonneg (∑ j, ‖z j‖ ^ 2), sq_nonneg (e0 : ℝ)]
      exact abs_le_of_sq_le_sq' hsq (by positivity) |>.2
    exact (Finset.sum_le_sum fun j _ => Finset.sum_le_sum fun j' _ => hb j j').trans hsum
  -- ‖Qop z‖² = ‖Zᴴ z‖²/6
  have hq : cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ^ 2 = (∑ i, ‖∑ j, star (phaseMat P j i) * z j‖ ^ 2) / 6 := by
    rw [cnorm, vnorm, Real.sq_sqrt (Finset.sum_nonneg fun i _ => sq_nonneg _), Finset.sum_div]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [Qop, e_qop]
    rw [← Finset.sum_div, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (Real.sqrt_nonneg 6),
      div_pow, Real.sq_sqrt (by norm_num)]
  have hz : cnorm z ^ 2 = ∑ j, ‖z j‖ ^ 2 := by
    rw [cnorm, vnorm, Real.sq_sqrt (Finset.sum_nonneg fun i _ => sq_nonneg _)]
  have hle : cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ^ 2 ≤ ((K : ℝ) * cnorm z) ^ 2 := by
    rw [hq, zh_norm_sq, mul_pow, hz]
    have hS : 0 ≤ ∑ j, ‖z j‖ ^ 2 := Finset.sum_nonneg fun j _ => sq_nonneg _
    nlinarith
  exact abs_le_of_sq_le_sq' hle (mul_nonneg hK0' (Real.sqrt_nonneg _)) |>.2

/-! ### The tangent bound `j₁` -/

/-- `d_kabc = T_kac − T_kbc`. -/
def dQ (F : QFrame) (k : Fin 4) (a b c : I6) : ℚ := F k a c - F k b c

/-- `‖M̃_kab‖²`, `M̃_kab = Σ_c w̃_abc d_kabc`. -/
def mN2 (tb : Tab) (F : QFrame) (k : Fin 4) (a b : I6) : ℚ :=
  ((s6 fun c => ((wq tb a b c).1 : ℚ) * dQ F k a b c) ^ 2 + (s6 fun c => ((wq tb a b c).2 : ℚ) * dQ F k a b c) ^ 2) /
    (2 : ℚ) ^ (4 * tb.p)

def j1OK (tb : Tab) (F : QFrame) (j1 : ℚ) : Bool :=
  epB tb && decide (0 ≤ j1) &&
    decide (s4 (fun k => s6 fun a => s6 fun b =>
      mN2 tb F k a b + omegaQ tb ^ 2 * (s6 fun c => |dQ F k a b c|) ^ 2) ≤ j1 ^ 2)

lemma mN2_eq (tb : Tab) (F : QFrame) (k : Fin 4) (a b : I6) :
    ((mN2 tb F k a b : ℚ) : ℝ) = ‖∑ c, gval (2 * tb.p) (wq tb a b c) * ((dQ F k a b c : ℚ) : ℝ)‖ ^ 2 := by
  have hre : (∑ c, gval (2 * tb.p) (wq tb a b c) * ((dQ F k a b c : ℚ) : ℝ)).re =
      (∑ c, ((wq tb a b c).1 : ℝ) * (dQ F k a b c : ℝ)) / 2 ^ (2 * tb.p) := by
    rw [Complex.re_sum, Finset.sum_div]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [gval_eq, Complex.mul_re]; simp; ring
  have him : (∑ c, gval (2 * tb.p) (wq tb a b c) * ((dQ F k a b c : ℚ) : ℝ)).im =
      (∑ c, ((wq tb a b c).2 : ℝ) * (dQ F k a b c : ℝ)) / 2 ^ (2 * tb.p) := by
    rw [Complex.im_sum, Finset.sum_div]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [gval_eq, Complex.mul_im]; simp; ring
  rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply, hre, him]
  unfold mN2
  push_cast
  simp only [s6_cast]
  push_cast
  field_simp
  ring

lemma jac_comb (P : RMat6) (F : QFrame) (η : Fin 4 → ℝ) (a b : I6) :
    Jac P (∑ k, η k • F.toR k) a b =
      ∑ k, (η k : ℂ) * (Complex.I * ∑ c, wex P a b c * ((dQ F k a b c : ℚ) : ℝ)) := by
  simp only [Jac, Matrix.of_apply, wex, dQ, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, QFrame.toR]
  push_cast
  simp only [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_sub_distrib]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun k _ => by ring

/-- **`hj`**: `outNorm J(Tη) ≤ j₁ ‖η‖`. -/
theorem j1_sound {tb : Tab} {F : QFrame} {j1 : ℚ} (h : j1OK tb F j1 = true) (η : Fin 4 → ℝ) :
    outNorm (Jac (Pmat tb.pq) (∑ k, η k • F.toR k)) ≤ (j1 : ℝ) * Real.sqrt (∑ k, η k ^ 2) := by
  simp only [j1OK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨hep, hj0⟩, hsum⟩ := h
  have hj0' : (0 : ℝ) ≤ j1 := by exact_mod_cast hj0
  have hω := omega_nonneg hep
  set P := Pmat tb.pq
  set Jk : Fin 4 → I6 → I6 → ℂ := fun k a b => Complex.I * ∑ c, wex P a b c * ((dQ F k a b c : ℚ) : ℝ)
  -- per-entry bound for J(T_k)
  have hJk : ∀ k a b, ‖Jk k a b‖ ^ 2 ≤ 2 * ((mN2 tb F k a b : ℚ) : ℝ) +
      2 * (omegaQ tb : ℝ) ^ 2 * (∑ c, |((dQ F k a b c : ℚ) : ℝ)|) ^ 2 := by
    intro k a b
    have e : ∑ c, wex P a b c * ((dQ F k a b c : ℚ) : ℝ) =
        ∑ c, gval (2 * tb.p) (wq tb a b c) * ((dQ F k a b c : ℚ) : ℝ) +
          ∑ c, (wex P a b c - gval (2 * tb.p) (wq tb a b c)) * ((dQ F k a b c : ℚ) : ℝ) := by
      rw [← Finset.sum_add_distrib]; exact Finset.sum_congr rfl fun c _ => by ring
    have hr : ‖∑ c, (wex P a b c - gval (2 * tb.p) (wq tb a b c)) * ((dQ F k a b c : ℚ) : ℝ)‖ ≤
        (omegaQ tb : ℝ) * ∑ c, |((dQ F k a b c : ℚ) : ℝ)| := by
      refine (norm_sum_le _ _).trans ?_
      rw [Finset.mul_sum]
      refine Finset.sum_le_sum fun c _ => ?_
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
      exact mul_le_mul_of_nonneg_right (w_err hep a b c) (abs_nonneg _)
    have hm := mN2_eq tb F k a b
    have hn : ‖Jk k a b‖ ≤ ‖∑ c, gval (2 * tb.p) (wq tb a b c) * ((dQ F k a b c : ℚ) : ℝ)‖ +
        (omegaQ tb : ℝ) * ∑ c, |((dQ F k a b c : ℚ) : ℝ)| := by
      simp only [Jk]; rw [norm_mul, Complex.norm_I, one_mul, e]
      exact (norm_add_le _ _).trans (add_le_add le_rfl hr)
    rw [hm]
    have h0 := norm_nonneg (Jk k a b)
    nlinarith [sq_nonneg (‖∑ c, gval (2 * tb.p) (wq tb a b c) * ((dQ F k a b c : ℚ) : ℝ)‖ -
      (omegaQ tb : ℝ) * ∑ c, |((dQ F k a b c : ℚ) : ℝ)|), norm_nonneg (∑ c, gval (2 * tb.p) (wq tb a b c) *
        ((dQ F k a b c : ℚ) : ℝ))]
  -- Cauchy–Schwarz in k, per entry
  have hentry : ∀ a b, ‖Jac P (∑ k, η k • F.toR k) a b‖ ^ 2 ≤ (∑ k, η k ^ 2) * ∑ k, ‖Jk k a b‖ ^ 2 := by
    intro a b
    rw [jac_comb]
    have h1 : ‖∑ k, (η k : ℂ) * Jk k a b‖ ≤ ∑ k, |η k| * ‖Jk k a b‖ := by
      refine (norm_sum_le _ _).trans (le_of_eq (Finset.sum_congr rfl fun k _ => ?_))
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    have h2 := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ (fun k => |η k|) (fun k => ‖Jk k a b‖)
    simp only [sq_abs] at h2
    have h0 : 0 ≤ ∑ k, |η k| * ‖Jk k a b‖ := Finset.sum_nonneg fun k _ => by positivity
    calc ‖∑ k, (η k : ℂ) * Jk k a b‖ ^ 2 ≤ (∑ k, |η k| * ‖Jk k a b‖) ^ 2 :=
          pow_le_pow_left₀ (norm_nonneg _) h1 2
      _ ≤ _ := h2
  have hsum' : ∑ k, ∑ a, ∑ b, (((mN2 tb F k a b : ℚ) : ℝ) + (omegaQ tb : ℝ) ^ 2 *
      (∑ c, |((dQ F k a b c : ℚ) : ℝ)|) ^ 2) ≤ (j1 : ℝ) ^ 2 := by
    have := (Rat.cast_le (K := ℝ)).mpr hsum
    push_cast at this; simp only [s4_cast, s6_cast] at this; push_cast at this
    simp only [s6_cast] at this; push_cast at this; exact this
  refine outNorm_le_of_sq_le (mul_nonneg hj0' (Real.sqrt_nonneg _)) ?_
  rw [mul_pow, Real.sq_sqrt (Finset.sum_nonneg fun k _ => sq_nonneg _)]
  have hS : 0 ≤ ∑ k, η k ^ 2 := Finset.sum_nonneg fun k _ => sq_nonneg _
  calc (∑ a, ∑ b, ‖Jac P (∑ k, η k • F.toR k) a b‖ ^ 2) / 2
      ≤ (∑ a, ∑ b, (∑ k, η k ^ 2) * ∑ k, ‖Jk k a b‖ ^ 2) / 2 := by
        gcongr with a _ b _; exact hentry a b
    _ ≤ (∑ a, ∑ b, (∑ k, η k ^ 2) * ∑ k, (2 * ((mN2 tb F k a b : ℚ) : ℝ) +
          2 * (omegaQ tb : ℝ) ^ 2 * (∑ c, |((dQ F k a b c : ℚ) : ℝ)|) ^ 2)) / 2 := by
        gcongr with a _ b _ k _; exact hJk k a b
    _ = (∑ k, η k ^ 2) * ∑ a, ∑ b, ∑ k, (((mN2 tb F k a b : ℚ) : ℝ) + (omegaQ tb : ℝ) ^ 2 *
          (∑ c, |((dQ F k a b c : ℚ) : ℝ)|) ^ 2) := by
        rw [Finset.sum_div, Finset.mul_sum]
        refine Finset.sum_congr rfl fun a _ => ?_
        rw [Finset.sum_div, Finset.mul_sum]
        refine Finset.sum_congr rfl fun b _ => ?_
        rw [show ∑ k, (2 * ((mN2 tb F k a b : ℚ) : ℝ) + 2 * (omegaQ tb : ℝ) ^ 2 *
            (∑ c, |((dQ F k a b c : ℚ) : ℝ)|) ^ 2) = 2 * ∑ k, (((mN2 tb F k a b : ℚ) : ℝ) + (omegaQ tb : ℝ) ^ 2 *
            (∑ c, |((dQ F k a b c : ℚ) : ℝ)|) ^ 2) by
          rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun k _ => by ring]
        ring
    _ = (∑ k, η k ^ 2) * ∑ k, ∑ a, ∑ b, (((mN2 tb F k a b : ℚ) : ℝ) + (omegaQ tb : ℝ) ^ 2 *
          (∑ c, |((dQ F k a b c : ℚ) : ℝ)|) ^ 2) := by
        congr 1
        calc _ = ∑ a, ∑ k, ∑ b, (((mN2 tb F k a b : ℚ) : ℝ) + (omegaQ tb : ℝ) ^ 2 *
              (∑ c, |((dQ F k a b c : ℚ) : ℝ)|) ^ 2) := Finset.sum_congr rfl fun a _ => Finset.sum_comm
          _ = _ := Finset.sum_comm
    _ ≤ (∑ k, η k ^ 2) * (j1 : ℝ) ^ 2 := mul_le_mul_of_nonneg_left hsum' hS
    _ = _ := by ring

end NoFourMUBs.KernelAtlas
