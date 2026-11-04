import NoFourMUBs.Step1.DoubleSetup
import Step1.Generated_boundary_core
import Step1.Generated_boundary_edges

/-!
# Step 1, items 16–18 and 22: stationary points of `R(c, h)` (algebra)

* `square_stationary`: a positive stationary point (`R_c = R_h = 0`) has `c = h = 0`, or lies on the cusp branch
  `16c⁴ − 4c² − 1 = 0`, `h = 4c³ − 3c`.  The proof uses the 11/22-term eliminant and the three branch memberships of
  `boundary_core.json`; the first two branches force `N = 0`.
* `edge_stationary`: on the edge `h = 1`, a positive stationary point has `c = 1/4` (Bernstein positivity of `T`, `F`).
-/

namespace NoFourMUBs.Step1Geo

open Step1.boundary_core

lemma Rch_eq (c h : ℝ) : Rch c h = d_R c h := by
  simp only [Rch, Lp, Mp, Np, d_R, d_L, d_M, d_N]; ring

lemma Rch_pos_facts {c h : ℝ} (hpos : 0 < Rch c h) : d_M c h ≠ 0 ∧ d_N c h < 0 := by
  have hL : 0 < d_L c h := by simp only [d_L]; positivity
  have hR : Rch c h = -256 * d_N c h * d_L c h ^ 2 * d_M c h ^ 2 := by rw [Rch_eq]; rfl
  rw [hR] at hpos
  refine ⟨fun h0 => by rw [h0] at hpos; simp at hpos, ?_⟩
  by_contra hN; push Not at hN
  have : 0 ≤ d_N c h * d_L c h ^ 2 * d_M c h ^ 2 := by positivity
  linarith

/-- **Positive stationary points in the open square.** -/
theorem square_stationary {c h : ℝ} (hpos : 0 < Rch c h) (hRc : d_dRc c h = 0) (hRh : d_dRh c h = 0) :
    (c = 0 ∧ h = 0) ∨ (d_golden_factor c h = 0 ∧ d_golden_relation c h = 0) := by
  obtain ⟨hM, hN⟩ := Rch_pos_facts hpos
  have hL : 0 < d_L c h := by simp only [d_L]; positivity
  by_cases hc : c = 0
  · left; refine ⟨hc, ?_⟩
    have : d_dRc 0 h = 1024 * h := by simp only [d_dRc, d_L, d_M, d_P]; ring
    rw [hc, this] at hRc; linarith
  right
  have hP : d_P c h = 0 := by
    have : d_dRc c h = (-1024 * d_L c h * d_M c h) * d_P c h := by simp only [d_dRc]
    rw [this] at hRc
    exact (mul_eq_zero.mp hRc).resolve_left (mul_ne_zero (mul_ne_zero (by norm_num) hL.ne') hM)
  have hQ : d_Q c h = 0 := by
    have : d_dRh c h = (-1024 * d_M c h * c * d_L c h ^ 2) * d_Q c h := by simp only [d_dRh]; ring
    rw [this] at hRh
    exact (mul_eq_zero.mp hRh).resolve_left
      (mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) hM) hc) (pow_ne_zero 2 hL.ne'))
  have hE := identity_normalized_eliminant_Bezout c h
  rw [hP, hQ, zero_mul, zero_mul, add_zero] at hE
  -- the eliminant factors; the extra factors are nonzero
  have hq1 : 0 < 1 + -4 * c + 6 * c ^ 2 := by nlinarith [sq_nonneg (3 * c - 1)]
  have hq2 : 0 < 1 + 4 * c + 6 * c ^ 2 := by nlinarith [sq_nonneg (3 * c + 1)]
  have hfac : (-1 + 2 * c ^ 2) * (-1 + 4 * c ^ 2) * d_golden_factor c h = 0 := by
    have h2 : d_normalized_eliminant c h = (2 * c * (1 + 2 * c ^ 2) ^ 2 * (1 + -4 * c + 6 * c ^ 2) *
        (1 + 4 * c + 6 * c ^ 2)) * ((-1 + 2 * c ^ 2) * (-1 + 4 * c ^ 2) * d_golden_factor c h) := by
      simp only [d_normalized_eliminant, d_golden_factor]; ring
    rw [h2] at hE
    have hne : 2 * c * (1 + 2 * c ^ 2) ^ 2 * (1 + -4 * c + 6 * c ^ 2) * (1 + 4 * c + 6 * c ^ 2) ≠ 0 := by
      have : (1 + 2 * c ^ 2) ≠ 0 := by positivity
      exact mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) hc) (pow_ne_zero 2 this))
        hq1.ne') hq2.ne'
    exact (mul_eq_zero.mp hE).resolve_left hne
  rcases mul_eq_zero.mp hfac with h12 | hg
  · rcases mul_eq_zero.mp h12 with h2 | h1
    · -- 2c² − 1 = 0 forces N = 0
      exfalso
      have hm := identity_sqrt_half_relation_membership c h
      have hf : d_sqrt_half_factor c h = 0 := by simp only [d_sqrt_half_factor]; linarith
      rw [hP, hQ, hf] at hm
      have hr : d_sqrt_half_relation c h = 0 := by linarith
      have hNm := identity_sqrt_half_N_membership c h
      rw [hf, hr] at hNm
      linarith
    · -- 4c² − 1 = 0 forces N = 0
      exfalso
      have hm := identity_half_relation_membership c h
      have hf : d_half_factor c h = 0 := by simp only [d_half_factor]; linarith
      rw [hP, hQ, hf] at hm
      have hr : d_half_relation c h = 0 := by linarith
      have hNm := identity_half_N_membership c h
      rw [hf, hr] at hNm
      linarith
  · refine ⟨hg, ?_⟩
    have hm := identity_golden_relation_membership c h
    rw [hP, hQ, hg] at hm
    linarith

/-- **Positive stationary points on the edge `h = 1`.** -/
theorem edge_stationary {c : ℝ} (hpos : 0 < Rch c 1) (hRc : d_dRc c 1 = 0) : c = 1 / 4 := by
  have hedge : Rch c 1 = (1 + 2 * c ^ 2) ^ 2 * (1 + -2 * c + 4 * c ^ 3) ^ 2 * (1 + 2 * c) ^ 4 *
      (256 + -1024 * c ^ 2) := by rw [Rch_eq]; simp only [d_R, d_L, d_M, d_N]; ring
  have hT2 : 0 < (1 + 2 * c ^ 2) ^ 2 * (1 + -2 * c + 4 * c ^ 3) ^ 2 * (1 + 2 * c) ^ 4 ∨
      (1 + 2 * c ^ 2) ^ 2 * (1 + -2 * c + 4 * c ^ 3) ^ 2 * (1 + 2 * c) ^ 4 = 0 := by
    rcases (show 0 ≤ (1 + 2 * c ^ 2) ^ 2 * (1 + -2 * c + 4 * c ^ 3) ^ 2 * (1 + 2 * c) ^ 4 by positivity).lt_or_eq
      with h | h
    · exact Or.inl h
    · exact Or.inr h.symm
  have hc2 : 1024 * c ^ 2 < 256 := by
    rw [hedge] at hpos
    rcases hT2 with h | h
    · by_contra hn; push Not at hn; nlinarith
    · rw [h, zero_mul] at hpos; exact absurd hpos (lt_irrefl 0)
  have hlo : -1 / 2 < c := by nlinarith
  have hhi : c < 1 / 2 := by nlinarith
  have hder : d_dRc c 1 = -1024 * Step1.boundary_edges.d_F c 1 * (1 + 2 * c ^ 2) *
      (1 + -2 * c + 4 * c ^ 3) * (1 + 2 * c) ^ 4 * (-1 + 4 * c) := by
    simp only [d_dRc, d_L, d_M, d_P, Step1.boundary_edges.d_F]; ring
  rw [hder] at hRc
  have hT := Step1.boundary_edges.positivity_T_positive_full_edge c 1 hlo.le hhi.le
  have hF : 0 < Step1.boundary_edges.d_F c 1 := by
    simp only [Step1.boundary_edges.d_F]
    rcases le_total c 0 with h0 | h0
    · have := Step1.boundary_edges.positivity_F_positive_left c 1 hlo.le h0; linarith
    · rcases le_total c (1 / 4) with h1 | h1
      · have := Step1.boundary_edges.positivity_F_positive_middle c 1 h0 h1; linarith
      · have := Step1.boundary_edges.positivity_F_positive_right c 1 h1 hhi.le; linarith
  have h1 : (1 + 2 * c) ^ 4 ≠ 0 := pow_ne_zero 4 (by linarith)
  have h2 : (1 + 2 * c ^ 2) ≠ 0 := by positivity
  have hne : -1024 * Step1.boundary_edges.d_F c 1 * (1 + 2 * c ^ 2) * (1 + -2 * c + 4 * c ^ 3) *
      (1 + 2 * c) ^ 4 ≠ 0 :=
    mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) hF.ne') h2) hT.ne') h1
  have := (mul_eq_zero.mp hRc).resolve_left hne
  linarith

end NoFourMUBs.Step1Geo
