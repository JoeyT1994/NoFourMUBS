import UnitTripleBounds
import Mathlib.Analysis.SpecialFunctions.Complex.Arg
import Mathlib.Analysis.Complex.Trigonometric

/-! Actual phase existence for an anchored nearly equilateral unit triple.
The endpoint argument uses the cached Taylor bounds and arccos monotonicity;
no phase parametrization is a premise.
-/

set_option maxHeartbeats 1200000

namespace Seed0024.UnitTriple

noncomputable def phase (t : ℝ) : ℂ := Complex.exp ((t : ℂ) * Complex.I)

theorem sin_step_lower : (3199 : ℝ) / 1000000 < Real.sin ((2 : ℝ) / 625) := by
  have h := Real.sin_bound (x := (2 : ℝ) / 625) (by norm_num)
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 2 / 625)] at h
  have hl := (abs_le.mp h).1
  norm_num at hl ⊢
  linarith

theorem cos_step_lower : (99999 : ℝ) / 100000 < Real.cos ((2 : ℝ) / 625) := by
  have h := Real.cos_bound (x := (2 : ℝ) / 625) (by norm_num)
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 2 / 625)] at h
  have hl := (abs_le.mp h).1
  norm_num at hl ⊢
  linarith

theorem sin_equilateral_lower : (43 : ℝ) / 50 < Real.sin (2 * Real.pi / 3) := by
  have hnonneg : 0 ≤ Real.sin (Real.pi / 3) :=
    Real.sin_nonneg_of_nonneg_of_le_pi (by linarith [Real.pi_pos])
      (by linarith [Real.pi_pos])
  have hsq := Real.sq_sin_pi_div_three
  have hlow : (43 : ℝ) / 50 < Real.sin (Real.pi / 3) := by nlinarith
  rw [show 2 * Real.pi / 3 = Real.pi - Real.pi / 3 by ring, Real.sin_pi_sub]
  exact hlow

theorem cos_equilateral : Real.cos (2 * Real.pi / 3) = -(1 : ℝ) / 2 := by
  rw [show 2 * Real.pi / 3 = Real.pi - Real.pi / 3 by ring,
    Real.cos_pi_sub, Real.cos_pi_div_three]
  ring

theorem arccos_anchored_error (x : ℝ)
    (hx : |x + 1 / 2| ≤ (53 : ℝ) / 20000 + ((53 : ℝ) / 20000) ^ 2 / 2) :
    |Real.arccos x - 2 * Real.pi / 3| < (2 : ℝ) / 625 := by
  obtain ⟨hxl, hxu⟩ := abs_le.mp hx
  have hxlo : -1 ≤ x := by linarith
  have hxhi : x ≤ 1 := by linarith
  have hprod : (43 : ℝ) / 50 * ((3199 : ℝ) / 1000000) <
      Real.sin (2 * Real.pi / 3) * Real.sin ((2 : ℝ) / 625) := by
    calc
      _ < Real.sin (2 * Real.pi / 3) * ((3199 : ℝ) / 1000000) :=
        mul_lt_mul_of_pos_right sin_equilateral_lower (by norm_num)
      _ < _ := mul_lt_mul_of_pos_left sin_step_lower (by linarith [sin_equilateral_lower])
  have hplus : Real.cos (2 * Real.pi / 3 + (2 : ℝ) / 625) < x := by
    rw [Real.cos_add, cos_equilateral]
    nlinarith [cos_step_lower]
  have hminus : x < Real.cos (2 * Real.pi / 3 - (2 : ℝ) / 625) := by
    rw [Real.cos_sub, cos_equilateral]
    nlinarith [Real.cos_le_one ((2 : ℝ) / 625)]
  have hlo0 : 0 ≤ 2 * Real.pi / 3 - (2 : ℝ) / 625 := by linarith [Real.two_le_pi]
  have hlopi : 2 * Real.pi / 3 - (2 : ℝ) / 625 ≤ Real.pi := by
    linarith [Real.two_le_pi]
  have hhi0 : 0 ≤ 2 * Real.pi / 3 + (2 : ℝ) / 625 := by linarith [Real.two_le_pi]
  have hhipi : 2 * Real.pi / 3 + (2 : ℝ) / 625 ≤ Real.pi := by
    linarith [Real.two_le_pi]
  have harcl := Real.arccos_lt_arccos hxlo hminus
    (Real.cos_le_one (2 * Real.pi / 3 - (2 : ℝ) / 625))
  have harcu := Real.arccos_lt_arccos
    (Real.neg_one_le_cos (2 * Real.pi / 3 + (2 : ℝ) / 625)) hplus hxhi
  rw [Real.arccos_cos hlo0 hlopi] at harcl
  rw [Real.arccos_cos hhi0 hhipi] at harcu
  apply abs_lt.mpr
  constructor <;> linarith

theorem phase_arg_of_unit (u : ℂ) (hu : ‖u‖ = 1) : phase u.arg = u := by
  unfold phase
  simpa only [hu, Complex.ofReal_one, one_mul] using Complex.norm_mul_exp_arg_mul_I u

theorem positive_phase_lift (u : ℂ) (hu : ‖u‖ = 1)
    (hre : |u.re + 1 / 2| ≤ (53 : ℝ) / 20000 + ((53 : ℝ) / 20000) ^ 2 / 2)
    (hi : 0 < u.im) :
    ∃ e : ℝ, |e| < (2 : ℝ) / 625 ∧ u = phase (2 * Real.pi / 3 + e) := by
  refine ⟨u.arg - 2 * Real.pi / 3, ?_, ?_⟩
  · rw [Complex.arg_of_im_pos hi, hu, div_one]
    exact arccos_anchored_error u.re hre
  · rw [show 2 * Real.pi / 3 + (u.arg - 2 * Real.pi / 3) = u.arg by ring]
    exact (phase_arg_of_unit u hu).symm

theorem negative_phase_lift (u : ℂ) (hu : ‖u‖ = 1)
    (hre : |u.re + 1 / 2| ≤ (53 : ℝ) / 20000 + ((53 : ℝ) / 20000) ^ 2 / 2)
    (hi : u.im < 0) :
    ∃ e : ℝ, |e| < (2 : ℝ) / 625 ∧ u = phase (-(2 * Real.pi / 3) + e) := by
  refine ⟨u.arg + 2 * Real.pi / 3, ?_, ?_⟩
  · rw [Complex.arg_of_im_neg hi, hu, div_one]
    rw [show -Real.arccos u.re + 2 * Real.pi / 3 =
      -(Real.arccos u.re - 2 * Real.pi / 3) by ring, abs_neg]
    exact arccos_anchored_error u.re hre
  · rw [show -(2 * Real.pi / 3) + (u.arg + 2 * Real.pi / 3) = u.arg by ring]
    exact (phase_arg_of_unit u hu).symm

/-- The orientation and both short real phase errors are conclusions, derived
from actual unit complex entries and a small actual triple sum. -/
theorem anchored_equilateral_phase_exists (u v : ℂ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1)
    (hs : ‖1 + u + v‖ ≤ (53 : ℝ) / 20000) :
    ∃ σ e f : ℝ, (σ = 1 ∨ σ = -1) ∧
      |e| < (2 : ℝ) / 625 ∧ |f| < (2 : ℝ) / 625 ∧
      u = phase (σ * (2 * Real.pi / 3) + e) ∧
      v = phase (-σ * (2 * Real.pi / 3) + f) := by
  have hure := real_part_bound u v ((53 : ℝ) / 20000) hu hv
    (by norm_num) (by norm_num) hs
  have hswap : ‖1 + v + u‖ ≤ (53 : ℝ) / 20000 := by
    simpa only [add_right_comm (1 : ℂ) u v] using hs
  have hvre := real_part_bound v u ((53 : ℝ) / 20000) hv hu
    (by norm_num) (by norm_num) hswap
  rcases local_opposite_signs u v hu hv hs with h | h
  · obtain ⟨e, he, hue⟩ := positive_phase_lift u hu hure h.1
    obtain ⟨f, hf, hvf⟩ := negative_phase_lift v hv hvre h.2
    refine ⟨1, e, f, Or.inl rfl, he, hf, ?_, ?_⟩
    · simpa only [one_mul] using hue
    · simpa only [neg_mul, one_mul] using hvf
  · obtain ⟨e, he, hue⟩ := negative_phase_lift u hu hure h.1
    obtain ⟨f, hf, hvf⟩ := positive_phase_lift v hv hvre h.2
    refine ⟨-1, e, f, Or.inr rfl, he, hf, ?_, ?_⟩
    · simpa only [neg_mul, one_mul] using hue
    · simpa only [neg_neg, one_mul] using hvf

#print axioms sin_step_lower
#print axioms cos_step_lower
#print axioms sin_equilateral_lower
#print axioms cos_equilateral
#print axioms arccos_anchored_error
#print axioms phase_arg_of_unit
#print axioms positive_phase_lift
#print axioms negative_phase_lift
#print axioms anchored_equilateral_phase_exists

end Seed0024.UnitTriple
