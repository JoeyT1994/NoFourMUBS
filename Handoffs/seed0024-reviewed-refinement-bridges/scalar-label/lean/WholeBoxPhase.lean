import ExactPhase

/-! Certified center inputs extend to every phase in the actual rational box.
The cubic Taylor remainder theorem also gives the analytic primitive used by
the native order-three seed, independently of its floating-point arithmetic. -/
set_option autoImplicit false
namespace SignedMeanIntake20261006
open Centiradian20261006.SharpTaylor20261006

theorem phase_lipschitz : LipschitzWith 1 (fun x : ℝ => Complex.exp (Complex.I*(x:ℂ))) := by
  apply lipschitzWith_of_nnnorm_deriv_le
  · intro x
    exact (phaseExp_derivative x).differentiableAt
  · intro x
    rw [(phaseExp_derivative x).deriv]
    simp [Complex.nnnorm_exp_I_mul_ofReal]

theorem phase_difference_bound (x y : ℝ) :
    ‖Complex.exp (Complex.I*(x:ℂ))-Complex.exp (Complex.I*(y:ℂ))‖ ≤ |x-y| := by
  simpa only [dist_eq_norm,Real.norm_eq_abs,NNReal.coe_one,one_mul] using
    phase_lipschitz.dist_le_mul x y

theorem cos_difference_bound (x y : ℝ) : |Real.cos x-Real.cos y| ≤ |x-y| := by
  have h := le_trans (Complex.abs_re_le_norm
    (Complex.exp (Complex.I*(x:ℂ))-Complex.exp (Complex.I*(y:ℂ))))
    (phase_difference_bound x y)
  simpa only [Complex.sub_re,mul_comm Complex.I,Complex.exp_ofReal_mul_I_re] using h

theorem sin_difference_bound (x y : ℝ) : |Real.sin x-Real.sin y| ≤ |x-y| := by
  have h := le_trans (Complex.abs_im_le_norm
    (Complex.exp (Complex.I*(x:ℂ))-Complex.exp (Complex.I*(y:ℂ))))
    (phase_difference_bound x y)
  simpa only [Complex.sub_im,mul_comm Complex.I,Complex.exp_ofReal_mul_I_im] using h

def QInterval.widen (a : QInterval) (r : ℚ) : QInterval := ⟨a.lo-r,a.hi+r⟩

theorem QInterval.widen_sound {a : QInterval} {r : ℚ} {x y : ℝ}
    (hx : a.Contains x) (hy : |y-x| ≤ (r:ℝ)) : (a.widen r).Contains y := by
  rcases abs_le.mp hy with ⟨hl,hu⟩
  rcases hx with ⟨hxl,hxu⟩
  constructor <;> simp only [widen,Rat.cast_sub,Rat.cast_add] <;> linarith

theorem phaseWholeBox_sound {c r : ℚ} {cosBox sinBox : QInterval}
    (hc : cosBox.Contains (Real.cos (c:ℝ)))
    (hs : sinBox.Contains (Real.sin (c:ℝ))) {x : ℝ}
    (hx : |x-(c:ℝ)| ≤ (r:ℝ)) :
    (cosBox.widen r).Contains (Real.cos x) ∧
    (sinBox.widen r).Contains (Real.sin x) := by
  exact ⟨QInterval.widen_sound hc (le_trans (cos_difference_bound x c) hx),
    QInterval.widen_sound hs (le_trans (sin_difference_bound x c) hx)⟩

/-- The exact degree-three phasor expansion about any real center. The error
has norm at most |u|^4/24, without any small-center restriction. -/
theorem phaseCubic_error (c u : ℝ) :
    ‖Complex.exp (Complex.I*((c+u:ℝ):ℂ)) -
      Complex.exp (Complex.I*(c:ℂ))*phasePartial 4 u‖ ≤ |u|^4/24 := by
  have hexp : Complex.exp (Complex.I*((c+u:ℝ):ℂ)) =
      Complex.exp (Complex.I*(c:ℂ))*Complex.exp (Complex.I*(u:ℂ)) := by
    rw [Complex.ofReal_add,mul_add,Complex.exp_add]
  rw [hexp,← mul_sub,Complex.norm_mul,Complex.norm_exp_I_mul_ofReal,one_mul]
  simpa only [phaseRemainder,show (Nat.factorial 4:ℝ)=24 by norm_num] using
    phaseRemainder_bound 4 u

/-- The same sharp remainder bounded uniformly on a rational input radius. -/
theorem phaseCubic_uniform (c : ℝ) (r : ℚ) {u : ℝ}
    (hu : |u| ≤ (r:ℝ)) :
    ‖Complex.exp (Complex.I*((c+u:ℝ):ℂ)) -
      Complex.exp (Complex.I*(c:ℂ))*phasePartial 4 u‖ ≤ ((r^4/24:ℚ):ℝ) := by
  apply le_trans (phaseCubic_error c u)
  have hp := pow_le_pow_left₀ (abs_nonneg u) hu 4
  simpa only [Rat.cast_div,Rat.cast_pow,Rat.cast_ofNat] using
    div_le_div_of_nonneg_right hp (by norm_num : (0:ℝ) ≤ 24)

end SignedMeanIntake20261006

#print axioms SignedMeanIntake20261006.QInterval.widen_sound
#print axioms SignedMeanIntake20261006.phase_lipschitz
#print axioms SignedMeanIntake20261006.cos_difference_bound
#print axioms SignedMeanIntake20261006.sin_difference_bound
#print axioms SignedMeanIntake20261006.phaseWholeBox_sound
#print axioms SignedMeanIntake20261006.phaseCubic_error
#print axioms SignedMeanIntake20261006.phaseCubic_uniform
