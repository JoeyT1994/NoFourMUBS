import NoFourMUBs.KernelAtlas.Labels
import NoFourMUBs.KernelAtlas.Tables

/-!
# Direct edge tests in the kernel (Stage C, (6.16))

For two labels `A`, `B` the edge sum `Se = Σ_j e(v_A j − v_B j)` has entries `e(d_j / 192)` with
`d_j = (w_A j − w_B j) mod 192` (and `d_{j₀} = 0`).  The verified table gives `‖e(d/192) − EU[d]/2^p‖ ≤ ε_U`, so the
Gaussian integer `Z = Σ_j EU[d_j]` satisfies `‖Se − Z/2^p‖ ≤ 6 ε_U` (`Se_approx`).

With `c = 2 π̄ s̄₆ (s_A + s_B) + 6 ε_U` and `N = |Z|²`:
* **O excluded** (`edgeOB`): `(c 2^p)² < N`, hence `2π√6 (s_A + s_B) < ‖Se‖` (`edgeOExcl_of_direct`);
* **U excluded** (`edgeUB`): `((s̄₆ + c) 2^p)² < N`, or `0 < s₆ − c` and `N < ((s₆ − c) 2^p)²`; hence
  `2π√6 (s_A + s_B) < |‖Se‖ − √6|` (`edgeUExcl_of_direct`).
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC Complex

namespace NoFourMUBs.KernelAtlas

/-- `(a − b) mod 192` for `a, b < 192`. -/
def dIdx (a b : ℕ) : ℕ := (a + 192 - b) % 192

def gadd (z w : ℤ × ℤ) : ℤ × ℤ := (z.1 + w.1, z.2 + w.2)

def zsum (tb : Tab) (A B : Lab) : ℤ × ℤ :=
  gadd (gadd (gadd (gadd (gadd (tb.eu 0) (tb.eu (dIdx A.w1 B.w1))) (tb.eu (dIdx A.w2 B.w2)))
    (tb.eu (dIdx A.w3 B.w3))) (tb.eu (dIdx A.w4 B.w4))) (tb.eu (dIdx A.w5 B.w5))

def znorm2 (z : ℤ × ℤ) : ℤ := z.1 * z.1 + z.2 * z.2

/-- `c = 2 π̄ s̄₆ (s_A + s_B) + 6 ε_U`. -/
def edgeC (tb : Tab) (pq : ParQ) (A B : Lab) : ℚ :=
  2 * pq.pihi * pq.s6hi * (((A.sn : ℚ) + B.sn) / 2 ^ 30) + 6 * tb.epsU

/-- The direct O test excludes the edge. -/
def edgeOB (tb : Tab) (pq : ParQ) (A B : Lab) : Bool :=
  decide ((edgeC tb pq A B * 2 ^ tb.p) ^ 2 < (znorm2 (zsum tb A B) : ℚ))

/-- The direct U test excludes the edge. -/
def edgeUB (tb : Tab) (pq : ParQ) (A B : Lab) : Bool :=
  decide (((pq.s6hi + edgeC tb pq A B) * 2 ^ tb.p) ^ 2 < (znorm2 (zsum tb A B) : ℚ)) ||
    decide (0 < pq.s6lo - edgeC tb pq A B ∧
      (znorm2 (zsum tb A B) : ℚ) < ((pq.s6lo - edgeC tb pq A B) * 2 ^ tb.p) ^ 2)

/-! ### Soundness -/

lemma gval_gadd (p : ℕ) (z w : ℤ × ℤ) : gval p (gadd z w) = gval p z + gval p w := by
  unfold gval gadd; push_cast; ring

lemma norm_gval_sq (p : ℕ) (z : ℤ × ℤ) : ‖gval p z‖ ^ 2 = (znorm2 z : ℝ) / (2 ^ p) ^ 2 := by
  unfold gval znorm2
  rw [norm_div, div_pow, norm_pow, Complex.norm_two, ← Complex.normSq_eq_norm_sq]
  simp only [Complex.normSq_apply, Complex.add_re, Complex.intCast_re, Complex.mul_re, Complex.I_re,
    Complex.intCast_im, Complex.I_im, Complex.add_im, Complex.mul_im]
  push_cast; ring

lemma e_dIdx {a b : ℕ} (hb : b < 192) : e ((a : ℝ) / 192 - (b : ℝ) / 192) = e ((dIdx a b : ℝ) / 192) := by
  obtain ⟨Q, hQ⟩ : ∃ Q : ℕ, Q = (a + 192 - b) / 192 := ⟨_, rfl⟩
  obtain ⟨M, hM⟩ : ∃ M : ℕ, M = (a + 192 - b) % 192 := ⟨_, rfl⟩
  have hdm := Nat.div_add_mod (a + 192 - b) 192
  rw [← hQ, ← hM] at hdm
  have hle : b ≤ a + 192 := by omega
  have h2 : ((192 * Q + M : ℕ) : ℝ) = a + 192 - b := by rw [hdm, Nat.cast_sub hle]; push_cast; ring
  have hD : dIdx a b = M := by rw [dIdx, hM]
  have : (a : ℝ) / 192 - (b : ℝ) / 192 = (M : ℝ) / 192 + (((Q : ℤ) - 1 : ℤ) : ℝ) := by
    push_cast at h2 ⊢; linarith
  rw [this, e_add_int, hD]

lemma euB_lt {tb : Tab} (h : euB tb = true) {k : ℕ} (hk : k < 192) :
    ‖e ((k : ℝ) / 192) - gval tb.p (tb.eu k)‖ ≤ tb.epsU := euB_spec h hk

lemma dIdx_lt (a b : ℕ) : dIdx a b < 192 := Nat.mod_lt _ (by norm_num)

lemma norm_add6_le (a b c d e f : ℂ) : ‖a + b + c + d + e + f‖ ≤ ‖a‖ + ‖b‖ + ‖c‖ + ‖d‖ + ‖e‖ + ‖f‖ := by
  have h1 := norm_add_le (a + b + c + d + e) f
  have h2 := norm_add_le (a + b + c + d) e
  have h3 := norm_add_le (a + b + c) d
  have h4 := norm_add_le (a + b) c
  have h5 := norm_add_le a b
  linarith

/-- `‖Se − Z/2^p‖ ≤ 6 ε_U`. -/
theorem Se_approx {tb : Tab} (hEU : euB tb = true) {A B : Lab} (hb1 : B.w1 < 192) (hb2 : B.w2 < 192)
    (hb3 : B.w3 < 192) (hb4 : B.w4 < 192) (hb5 : B.w5 < 192) :
    ‖Se A.v B.v - gval tb.p (zsum tb A B)‖ ≤ 6 * tb.epsU := by
  have q0 : ‖e (A.v j0 - B.v j0) - gval tb.p (tb.eu 0)‖ ≤ tb.epsU := by
    have := euB_lt hEU (k := 0) (by norm_num)
    simpa [Lab.v, uvec, j0] using this
  have qm : ∀ (a b : ℕ), b < 192 → ‖e ((a : ℝ) / 192 - (b : ℝ) / 192) - gval tb.p (tb.eu (dIdx a b))‖ ≤ tb.epsU :=
    fun a b hb => by rw [e_dIdx hb]; exact euB_lt hEU (dIdx_lt a b)
  have hS : Se A.v B.v - gval tb.p (zsum tb A B) =
      (e (A.v j0 - B.v j0) - gval tb.p (tb.eu 0)) +
      (e ((A.w1 : ℝ) / 192 - (B.w1 : ℝ) / 192) - gval tb.p (tb.eu (dIdx A.w1 B.w1))) +
      (e ((A.w2 : ℝ) / 192 - (B.w2 : ℝ) / 192) - gval tb.p (tb.eu (dIdx A.w2 B.w2))) +
      (e ((A.w3 : ℝ) / 192 - (B.w3 : ℝ) / 192) - gval tb.p (tb.eu (dIdx A.w3 B.w3))) +
      (e ((A.w4 : ℝ) / 192 - (B.w4 : ℝ) / 192) - gval tb.p (tb.eu (dIdx A.w4 B.w4))) +
      (e ((A.w5 : ℝ) / 192 - (B.w5 : ℝ) / 192) - gval tb.p (tb.eu (dIdx A.w5 B.w5))) := by
    simp only [Se, Qe, zsum, gval_gadd]
    rw [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]
    simp only [Lab.v, uvec, j0]
    ring
  rw [hS]
  refine (norm_add6_le _ _ _ _ _ _).trans ?_
  linarith [q0, qm A.w1 B.w1 hb1, qm A.w2 B.w2 hb2, qm A.w3 B.w3 hb3, qm A.w4 B.w4 hb4, qm A.w5 B.w5 hb5]

lemma lt_norm_gval {p : ℕ} {z : ℤ × ℤ} {c : ℝ} (h : (c * 2 ^ p) ^ 2 < (znorm2 z : ℝ)) : c < ‖gval p z‖ := by
  have h2p : (0 : ℝ) < 2 ^ p := by positivity
  by_contra hc
  push_neg at hc
  have hn := norm_nonneg (gval p z)
  have hc0 : 0 ≤ c := hn.trans hc
  have : ‖gval p z‖ ^ 2 ≤ c ^ 2 := pow_le_pow_left₀ hn hc 2
  rw [norm_gval_sq, div_le_iff₀ (by positivity)] at this
  nlinarith

lemma norm_gval_lt {p : ℕ} {z : ℤ × ℤ} {c : ℝ} (hc : 0 < c) (h : (znorm2 z : ℝ) < (c * 2 ^ p) ^ 2) :
    ‖gval p z‖ < c := by
  have h2p : (0 : ℝ) < 2 ^ p := by positivity
  have hsq : ‖gval p z‖ ^ 2 < c ^ 2 := by
    rw [norm_gval_sq, div_lt_iff₀ (by positivity)]; nlinarith
  exact lt_of_pow_lt_pow_left₀ 2 hc.le hsq

/-- Constants: `π ≤ π̄`, `√6 ≤ s̄₆`, `s₆ ≤ √6`, and `s_A + s_B ≥ 0`. -/
lemma edge_consts {c : Cfg} {pq : ParQ} (hp : ParOK c pq) :
    Real.pi ≤ (pq.pihi : ℝ) ∧ Real.sqrt 6 ≤ (pq.s6hi : ℝ) ∧ (pq.s6lo : ℝ) ≤ Real.sqrt 6 ∧ 0 ≤ (pq.s6hi : ℝ) := by
  obtain ⟨hpi, _, hlo2, hhi0, hhi2, _⟩ := hp
  refine ⟨pi_le_of (by have := (Rat.cast_le (K := ℝ)).mpr hpi; push_cast at this; exact this), sqrt6_le_of (by exact_mod_cast hhi0) (by exact_mod_cast hhi2),
    le_sqrt6_of (by exact_mod_cast hlo2), by exact_mod_cast hhi0⟩

lemma lab_s_add (A B : Lab) : A.s + B.s = (((A.sn : ℚ) + B.sn) / 2 ^ 30 : ℚ) := by
  simp only [Lab.s]; push_cast; ring

lemma edgeC_ge {tb : Tab} {c : Cfg} {pq : ParQ} (hp : ParOK c pq) (A B : Lab) :
    2 * Real.pi * Real.sqrt 6 * (A.s + B.s) + 6 * (tb.epsU : ℝ) ≤ (edgeC tb pq A B : ℝ) := by
  obtain ⟨hpi, hs6, -, hhi0⟩ := edge_consts hp
  have hs : 0 ≤ A.s + B.s := by simp only [Lab.s]; positivity
  have hsq : A.s + B.s = ((A.sn : ℝ) + B.sn) / 2 ^ 30 := by simp only [Lab.s]; ring
  simp only [edgeC]; push_cast
  rw [← hsq]
  have h1 : Real.pi * Real.sqrt 6 ≤ (pq.pihi : ℝ) * pq.s6hi :=
    mul_le_mul hpi hs6 (Real.sqrt_nonneg _) ((Real.pi_pos.le).trans hpi)
  nlinarith

/-- **Direct O test, kernel form.** -/
theorem edgeOB_sound {tb : Tab} {c : Cfg} {pq : ParQ} (hp : ParOK c pq) (hEU : euB tb = true) {A B : Lab}
    (hb : B.w1 < 192 ∧ B.w2 < 192 ∧ B.w3 < 192 ∧ B.w4 < 192 ∧ B.w5 < 192) (h : edgeOB tb pq A B = true)
    (P δ : RMat6) : EdgeOExcl P δ A.v A.s B.v B.s := by
  apply edgeOExcl_of_direct
  simp only [edgeOB, decide_eq_true_eq] at h
  have h' : ((edgeC tb pq A B : ℝ) * 2 ^ tb.p) ^ 2 < (znorm2 (zsum tb A B) : ℝ) := by exact_mod_cast h
  have hz := lt_norm_gval h'
  have happ := Se_approx (A := A) hEU hb.1 hb.2.1 hb.2.2.1 hb.2.2.2.1 hb.2.2.2.2
  have hlow : ‖gval tb.p (zsum tb A B)‖ - 6 * tb.epsU ≤ ‖Se A.v B.v‖ := by
    have := norm_sub_norm_le (gval tb.p (zsum tb A B)) (Se A.v B.v)
    rw [norm_sub_rev] at this; linarith
  linarith [edgeC_ge (tb := tb) hp A B]

/-- **Direct U test, kernel form.** -/
theorem edgeUB_sound {tb : Tab} {c : Cfg} {pq : ParQ} (hp : ParOK c pq) (hEU : euB tb = true) {A B : Lab}
    (hb : B.w1 < 192 ∧ B.w2 < 192 ∧ B.w3 < 192 ∧ B.w4 < 192 ∧ B.w5 < 192) (h : edgeUB tb pq A B = true)
    (P δ : RMat6) : EdgeUExcl P δ A.v A.s B.v B.s := by
  apply edgeUExcl_of_direct
  obtain ⟨-, hs6, hlo, -⟩ := edge_consts hp
  have hC := edgeC_ge (tb := tb) hp A B
  have hnn : 0 ≤ 2 * Real.pi * Real.sqrt 6 * (A.s + B.s) := by
    have : 0 ≤ A.s + B.s := by simp only [Lab.s]; positivity
    positivity
  have happ := Se_approx (A := A) hEU hb.1 hb.2.1 hb.2.2.1 hb.2.2.2.1 hb.2.2.2.2
  have hup : ‖Se A.v B.v‖ ≤ ‖gval tb.p (zsum tb A B)‖ + 6 * tb.epsU := by
    have := norm_le_insert' (Se A.v B.v) (gval tb.p (zsum tb A B)); linarith
  have hlow : ‖gval tb.p (zsum tb A B)‖ - 6 * tb.epsU ≤ ‖Se A.v B.v‖ := by
    have := norm_sub_norm_le (gval tb.p (zsum tb A B)) (Se A.v B.v)
    rw [norm_sub_rev] at this; linarith
  simp only [edgeUB, Bool.or_eq_true, decide_eq_true_eq] at h
  rcases h with h | ⟨hpos, h⟩
  · have h' : (((pq.s6hi : ℝ) + edgeC tb pq A B) * 2 ^ tb.p) ^ 2 < (znorm2 (zsum tb A B) : ℝ) := by
      exact_mod_cast h
    have hz := lt_norm_gval h'
    rw [abs_of_pos (show (0 : ℝ) < ‖Se A.v B.v‖ - Real.sqrt 6 by linarith)]
    linarith
  · have hpos' : (0 : ℝ) < pq.s6lo - edgeC tb pq A B := by exact_mod_cast hpos
    have h' : (znorm2 (zsum tb A B) : ℝ) < (((pq.s6lo : ℝ) - edgeC tb pq A B) * 2 ^ tb.p) ^ 2 := by
      exact_mod_cast h
    have hz := norm_gval_lt hpos' h'
    rw [abs_of_neg (show ‖Se A.v B.v‖ - Real.sqrt 6 < 0 by linarith)]
    linarith

end NoFourMUBs.KernelAtlas
