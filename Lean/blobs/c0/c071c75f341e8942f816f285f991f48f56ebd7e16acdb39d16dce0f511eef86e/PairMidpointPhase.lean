import AnchoredPhaseBounds

/-! An exhibited unit midpoint and short actual phase lifts for an almost
antipodal pair. All constants are those of the seed0024 local route.
-/

set_option maxHeartbeats 1200000

namespace Seed0024.UnitTriple

theorem phase_add (x y : ℝ) : phase (x + y) = phase x * phase y := by
  unfold phase
  rw [Complex.ofReal_add, add_mul, Complex.exp_add]

theorem phase_norm (x : ℝ) : ‖phase x‖ = 1 := by
  exact Complex.norm_exp_ofReal_mul_I x

theorem phase_zero : phase 0 = 1 := by simp [phase]

theorem sin_midpoint_step_lower : (8 : ℝ) / 1875 < Real.sin ((4 : ℝ) / 625) := by
  have h := Real.sin_bound (x := (4 : ℝ) / 625) (by norm_num)
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 4 / 625)] at h
  have hl := (abs_le.mp h).1
  norm_num at hl ⊢
  linarith

theorem unit_chord_arg_half (z : ℂ) (hz : ‖z‖ = 1) :
    ‖z - 1‖ = 2 * Real.sin (|z.arg| / 2) := by
  have hp := phase_arg_of_unit z hz
  have hh : |z.arg / 2| ≤ Real.pi := by
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    linarith [Complex.abs_arg_le_pi z, Real.pi_pos]
  have hs := Real.abs_sin_eq_sin_abs_of_abs_le_pi hh
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hs
  calc
    ‖z - 1‖ = ‖phase z.arg - 1‖ := congrArg (fun w : ℂ => ‖w - 1‖) hp.symm
    _ = ‖Complex.exp (Complex.I * (z.arg : ℂ)) - 1‖ := by
      unfold phase
      rw [mul_comm (z.arg : ℂ) Complex.I]
    _ = ‖2 * Real.sin (z.arg / 2)‖ := Complex.norm_exp_I_mul_ofReal_sub_one z.arg
    _ = 2 * Real.sin (|z.arg| / 2) := by
      rw [Real.norm_eq_abs, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2), hs]

theorem unit_near_one_arg_half (z : ℂ) (hz : ‖z‖ = 1)
    (hnear : ‖z - 1‖ < (16 : ℝ) / 1875) :
    |z.arg / 2| < (4 : ℝ) / 625 := by
  have hchord := unit_chord_arg_half z hz
  have hp := Complex.abs_arg_le_pi z
  have hn := abs_nonneg z.arg
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  by_contra hnot
  have hl : (4 : ℝ) / 625 ≤ |z.arg| / 2 := le_of_not_gt hnot
  have hmono := Real.monotoneOn_sin
    (show (4 : ℝ) / 625 ∈ Set.Icc (-(Real.pi / 2)) (Real.pi / 2) by
      constructor <;> linarith [Real.two_le_pi])
    (show |z.arg| / 2 ∈ Set.Icc (-(Real.pi / 2)) (Real.pi / 2) by
      constructor <;> linarith [Real.pi_pos]) hl
  linarith [sin_midpoint_step_lower]

/-- The midpoint lambda and the short real errors are produced from the two
actual unit numbers; no midpoint or phase-lift oracle is assumed. -/
theorem antipodal_pair_midpoint_phase (u v : ℂ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1)
    (hpair : ‖u + v‖ < (16 : ℝ) / 1875) :
    ∃ lam : ℂ, ∃ e f : ℝ, ‖lam‖ = 1 ∧
      |e| < (4 : ℝ) / 625 ∧ |f| < (4 : ℝ) / 625 ∧
      u = lam * phase e ∧ v = -lam * phase f := by
  let z : ℂ := -v * star u
  have hz : ‖z‖ = 1 := by simp only [z, norm_mul, norm_neg, norm_star, hu, hv, one_mul]
  have huc : u * star u = 1 := by simpa [hu] using Complex.mul_conj' u
  have hzdiff : z - 1 = -(u + v) * star u := by
    change -v * star u - 1 = -(u + v) * star u
    linear_combination huc
  have hnear : ‖z - 1‖ < (16 : ℝ) / 1875 := by
    rw [hzdiff, norm_mul, norm_neg, norm_star, hu, mul_one]
    exact hpair
  have hhalf := unit_near_one_arg_half z hz hnear
  have hphase := phase_arg_of_unit z hz
  have hcancel : phase (z.arg / 2) * phase (-(z.arg / 2)) = 1 := by
    rw [← phase_add, add_neg_cancel, phase_zero]
  have htwice : phase (z.arg / 2) * phase (z.arg / 2) = z := by
    rw [← phase_add, add_halves]
    exact hphase
  have hvrel : v = -u * z := by
    change v = -u * (-v * star u)
    linear_combination -v * huc
  refine ⟨u * phase (z.arg / 2), -(z.arg / 2), z.arg / 2, ?_, ?_, hhalf, ?_, ?_⟩
  · rw [norm_mul, hu, phase_norm, one_mul]
  · rwa [abs_neg]
  · rw [mul_assoc, hcancel, mul_one]
  · calc
      v = -u * z := hvrel
      _ = -u * (phase (z.arg / 2) * phase (z.arg / 2)) := by rw [htwice]
      _ = -(u * phase (z.arg / 2)) * phase (z.arg / 2) := by ring

#print axioms phase_add
#print axioms phase_norm
#print axioms phase_zero
#print axioms sin_midpoint_step_lower
#print axioms unit_chord_arg_half
#print axioms unit_near_one_arg_half
#print axioms antipodal_pair_midpoint_phase

end Seed0024.UnitTriple
