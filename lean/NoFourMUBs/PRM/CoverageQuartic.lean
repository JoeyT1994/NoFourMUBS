import NoFourMUBs.PRM.CoverageQuarticLow01
import NoFourMUBs.PRM.CoverageQuarticLow1Inf
import NoFourMUBs.PRM.CoverageQuarticHigh013
import NoFourMUBs.PRM.CoverageQuarticHigh131
import NoFourMUBs.PRM.CoverageQuarticHigh1Inf
import NoFourMUBs.PRM.CoverageQuarticPole

/-!
# The scalar part of the critical strip classification (I4)

`CRITICAL_STRIP_CLASSIFICATION.md` §3 (from "Physical data satisfy K ≥ Kmin") and §4.

* `scalarClassification : ScalarClassification` — the discriminant roots are ordered according to
  `k < 1/3`, `k = 1/3`, `1/3 < k < 1`, `k = 1`, `k > 1`; on each of the five resulting regions
  `Q < 0` by the kernel-checked Bernstein certificates (`CoverageQuartic{Low01,…}.lean`), except
  where the low interval collapses to `K = Kmin` at `κ`; at `k = 1/3` and `k = 1` the remaining
  points are the stated candidates (`Q(1, K) = 2³⁰ (K − 21)(K − 5)²`).
* `poleClassification : PoleClassification` — `CoverageQuarticPole.lean`.
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Quartic

open NoFourMUBs.Kronecker NoFourMUBs.RootFree

/-! ### `Q < 0` on the five regions -/

theorem low01_neg {k K : ℝ} (hk0 : 0 < k) (hk1 : k < 1) (hκ : 3 * k ^ 3 + k ^ 2 + k - 1 ≠ 0)
    (hL : Kmin k ≤ K) (hR : K ≤ Kn k) : Q k K < 0 :=
  region_neg (.fin 0 1 1) dLow01 dLow01_circ dLow01_ok (by simp [Reg.mem]; exact ⟨hk0, hk1⟩)
    (Or.inr hκ) (by rw [show dLow01.l = lMin from rfl, lMin_eq]; exact hL)
    (by rw [show dLow01.r = lN from rfl, lN_eq]; exact hR)

theorem low1inf_neg {k K : ℝ} (hk : 1 < k) (hL : Kmin k ≤ K) (hR : K ≤ K0 k) : Q k K < 0 :=
  region_neg .inf dLow1Inf dLow1Inf_circ dLow1Inf_ok hk (Or.inl dLow1Inf_even)
    (by rw [show dLow1Inf.l = lMin from rfl, lMin_eq]; exact hL)
    (by rw [show dLow1Inf.r = l0 from rfl, l0_eq]; exact hR)

theorem high013_neg {k K : ℝ} (hk0 : 0 < k) (hk1 : k < 1 / 3) (hL : Kp k ≤ K) (hR : K ≤ K0 k) :
    Q k K < 0 :=
  region_neg (.fin 0 1 3) dHigh013 dHigh013_circ dHigh013_ok
    (by simp [Reg.mem]; constructor <;> linarith) (Or.inl dHigh013_even)
    (by rw [show dHigh013.l = lP from rfl, lP_eq]; exact hL)
    (by rw [show dHigh013.r = l0 from rfl, l0_eq]; exact hR)

theorem high131_neg {k K : ℝ} (hk0 : 1 / 3 < k) (hk1 : k < 1) (hL : K0 k ≤ K) (hR : K ≤ Kp k) :
    Q k K < 0 :=
  region_neg (.fin 1 3 3) dHigh131 dHigh131_circ dHigh131_ok
    (by simp [Reg.mem]; constructor <;> linarith) (Or.inl dHigh131_even)
    (by rw [show dHigh131.l = l0 from rfl, l0_eq]; exact hL)
    (by rw [show dHigh131.r = lP from rfl, lP_eq]; exact hR)

theorem high1inf_neg {k K : ℝ} (hk : 1 < k) (hL : Kn k ≤ K) (hR : K ≤ Kp k) : Q k K < 0 :=
  region_neg .inf dHigh1Inf dHigh1Inf_circ dHigh1Inf_ok hk (Or.inl dHigh1Inf_even)
    (by rw [show dHigh1Inf.l = lN from rfl, lN_eq]; exact hL)
    (by rw [show dHigh1Inf.r = lP from rfl, lP_eq]; exact hR)

/-! ### The special value `k = 1` -/

/-- `Q(1, K) − 2³⁰ (K − 21)(K − 5)²` as a circuit in `K`. -/
def qOneCirc : Circ 1 :=
  qhom (Circ.const 1) (Circ.var 0) (Circ.const 1) qCoeffs -
    Circ.const (2 ^ 30) * (Circ.var 0 - Circ.const 21) * (Circ.var 0 - Circ.const 5) ^ 2

theorem qOneCirc_valid : qOneCirc.validR 0 = true := by decide +kernel

theorem Q_one (K : ℝ) : Q 1 K = 2 ^ 30 * (K - 21) * (K - 5) ^ 2 := by
  have e := Circ.eval_eq_zero_of_validR qOneCirc_valid (![K] : Fin 1 → ℝ)
  simp only [qOneCirc] at e
  rw [Circ.eval_sub', eval_qhom _ _ _ _ _ qCoeffs_deg (by simp)] at e
  simp only [Circ.eval_mul', Circ.eval_sub', Circ.eval_pow', Circ.eval_var, Circ.eval_const,
    Matrix.cons_val_zero, Int.cast_one, one_pow, one_mul, mul_one, div_one] at e
  have hQ : Q 1 K = (qCoeffs.map fun c => (c.1 : ℝ) * K ^ c.2.2).sum := by
    simp only [Q, one_pow, mul_one]
  rw [hQ]
  push_cast at e
  linarith

/-! ### Root order of the discriminant -/

theorem Kp_sub_K0 (k : ℝ) : Kp k - K0 k = (k + 1) * (3 * k - 1) ^ 3 / (1 + k ^ 2) ^ 2 := by
  have : (1 + k ^ 2) ≠ 0 := by positivity
  unfold Kp K0 hk; field_simp; ring

theorem Kn_sub_K0 (k : ℝ) : Kn k - K0 k = (k - 1) * (3 * k + 1) ^ 3 / (1 + k ^ 2) ^ 2 := by
  have : (1 + k ^ 2) ≠ 0 := by positivity
  unfold Kn K0 hk; field_simp; ring

theorem Kp_sub_Kn (k : ℝ) : Kp k - Kn k = 16 * k / (1 + k ^ 2) ^ 2 := by
  have : (1 + k ^ 2) ≠ 0 := by positivity
  unfold Kp Kn hk; field_simp; ring

/-- Sign pattern of a cubic with three ordered real roots. -/
theorem cubic_cases {x a b c : ℝ} (hab : a < b) (hbc : b < c)
    (h : 0 ≤ -((x - a) * (x - b) * (x - c))) : x ≤ a ∨ (b ≤ x ∧ x ≤ c) := by
  by_contra hn
  simp only [not_or, not_and, not_le] at hn
  obtain ⟨ha, hn⟩ := hn
  rcases lt_or_ge x b with hb | hb
  · have : 0 < (x - a) * (x - b) * (x - c) :=
      mul_pos_of_neg_of_neg (mul_neg_of_pos_of_neg (by linarith) (by linarith)) (by linarith)
    linarith
  · have hc := hn hb
    have : 0 < (x - a) * (x - b) * (x - c) :=
      mul_pos (mul_pos (by linarith) (by linarith)) (by linarith)
    linarith

/-- **§3, the sign certificate.** -/
theorem scalarClassification : ScalarClassification := by
  intro k K hk hKmin hdisc hQ
  have hh : (0 : ℝ) < 1 + k ^ 2 := by positivity
  -- the lower interval, `K ≤ Kn`, for `k < 1`
  have low : k < 1 → K ≤ Kn k → Candidates k K := by
    intro hk1 hR
    by_cases hκ : 3 * k ^ 3 + k ^ 2 + k - 1 = 0
    · left
      refine ⟨hκ, ?_⟩
      have e := Kn_sub_Kmin k
      rw [hκ] at e
      simp at e
      linarith
    · exact absurd hQ (low01_neg hk hk1 hκ hKmin hR).ne
  rcases lt_trichotomy k (1 / 3) with h1 | h1 | h1
  · -- `k < 1/3`: `Kn < Kp < K0`
    have a1 : Kn k < Kp k := by
      have : 0 < Kp k - Kn k := by rw [Kp_sub_Kn]; positivity
      linarith
    have a2 : Kp k < K0 k := by
      have : Kp k - K0 k < 0 := by
        rw [Kp_sub_K0]
        apply div_neg_of_neg_of_pos _ (by positivity)
        apply mul_neg_of_pos_of_neg (by linarith)
        exact Odd.pow_neg (by decide) (by linarith)
      linarith
    have hd : 0 ≤ -((K - Kn k) * (K - Kp k) * (K - K0 k)) := by convert hdisc using 1; ring
    rcases cubic_cases a1 a2 hd with h | ⟨h2, h3⟩
    · exact low (by linarith) h
    · exact absurd hQ (high013_neg hk h1 h2 h3).ne
  · -- `k = 1/3`: `Kn < Kp = K0 = 729/125`
    subst h1
    have e0 : K0 (1 / 3) = 729 / 125 := by norm_num [K0, Quartic.hk]
    have ep : Kp (1 / 3) = 729 / 125 := by norm_num [Kp, Quartic.hk]
    have en : Kn (1 / 3) = 189 / 125 := by norm_num [Kn, Quartic.hk]
    rw [e0, ep, en] at hdisc
    by_cases hK : K = 729 / 125
    · exact Or.inr (Or.inl ⟨rfl, hK⟩)
    · have hs : 0 < (K - 729 / 125) ^ 2 := by
        have : K - 729 / 125 ≠ 0 := sub_ne_zero.2 hK
        positivity
      have : K ≤ 189 / 125 := by nlinarith
      exact low (by norm_num) (by rw [en]; exact this)
  · rcases lt_trichotomy k 1 with h2 | h2 | h2
    · -- `1/3 < k < 1`: `Kn < K0 < Kp`
      have a1 : Kn k < K0 k := by
        have : Kn k - K0 k < 0 := by
          rw [Kn_sub_K0]
          apply div_neg_of_neg_of_pos _ (by positivity)
          exact mul_neg_of_neg_of_pos (by linarith) (by positivity)
        linarith
      have a2 : K0 k < Kp k := by
        have : 0 < Kp k - K0 k := by
          rw [Kp_sub_K0]
          have : 0 < 3 * k - 1 := by linarith
          positivity
        linarith
      have hd : 0 ≤ -((K - Kn k) * (K - K0 k) * (K - Kp k)) := by convert hdisc using 1; ring
      rcases cubic_cases a1 a2 hd with h | ⟨h3, h4⟩
      · exact low h2 h
      · exact absurd hQ (high131_neg h1 h2 h3 h4).ne
    · -- `k = 1`: `Kmin = 1`, `Kn = K0 = 5`, `Kp = 9`
      subst h2
      have e0 : K0 1 = 5 := by norm_num [K0, Quartic.hk]
      have ep : Kp 1 = 9 := by norm_num [Kp, Quartic.hk]
      have en : Kn 1 = 5 := by norm_num [Kn, Quartic.hk]
      rw [e0, ep, en] at hdisc
      rw [Q_one] at hQ
      by_cases hK : K = 5
      · exact Or.inr (Or.inr ⟨rfl, hK⟩)
      · exfalso
        have hs : 0 < (K - 5) ^ 2 := by
          have : K - 5 ≠ 0 := sub_ne_zero.2 hK
          positivity
        have h9 : K ≤ 9 := by nlinarith
        have : (2 : ℝ) ^ 30 * (K - 21) * (K - 5) ^ 2 < 0 := by
          have : (2 : ℝ) ^ 30 * (K - 21) < 0 := by nlinarith
          exact mul_neg_of_neg_of_pos this hs
        linarith
    · -- `k > 1`: `K0 < Kn < Kp`
      have a1 : K0 k < Kn k := by
        have : 0 < Kn k - K0 k := by
          rw [Kn_sub_K0]
          have : 0 < k - 1 := by linarith
          positivity
        linarith
      have a2 : Kn k < Kp k := by
        have : 0 < Kp k - Kn k := by rw [Kp_sub_Kn]; positivity
        linarith
      have hd : 0 ≤ -((K - K0 k) * (K - Kn k) * (K - Kp k)) := by convert hdisc using 1; ring
      rcases cubic_cases a1 a2 hd with h | ⟨h3, h4⟩
      · exact absurd hQ (low1inf_neg h2 hKmin h).ne
      · exact absurd hQ (high1inf_neg h2 h3 h4).ne

end NoFourMUBs.PRM.Coverage.Quartic
