import Leaf66902
import WholeBoxPhase

/-! All points in the exact input leaf receive rigorous phase enclosures.
Only the defining membership inequalities for that input box are assumed. -/
set_option autoImplicit false
namespace SignedMeanIntake20261006.Leaf66902
open Centiradian20261006.SharpTaylor20261006

theorem phase0_whole_box {x : ℝ}
    (hx : |x-(center0:ℝ)| ≤ (radius0:ℝ)) :
    (cosInput0.widen nativeRadius0).Contains (Real.cos x) ∧
    (sinInput0.widen nativeRadius0).Contains (Real.sin x) := by
  have hr : (radius0:ℝ) ≤ (nativeRadius0:ℝ) := by exact_mod_cast radius0_checked.2
  exact phaseWholeBox_sound phase0_sound.1 phase0_sound.2 (le_trans hx hr)

theorem phase0_cubic_remainder {x : ℝ}
    (hx : |x-(center0:ℝ)| ≤ (radius0:ℝ)) :
    ‖Complex.exp (Complex.I*(x:ℂ)) -
      Complex.exp (Complex.I*((center0:ℝ):ℂ))*phasePartial 4 (x-(center0:ℝ))‖ ≤
      ((nativeRadius0^4/24:ℚ):ℝ) := by
  have hr : (radius0:ℝ) ≤ (nativeRadius0:ℝ) := by exact_mod_cast radius0_checked.2
  simpa only [add_sub_cancel] using
    phaseCubic_uniform (center0:ℝ) nativeRadius0 (le_trans hx hr)

theorem phase1_whole_box {x : ℝ}
    (hx : |x-(center1:ℝ)| ≤ (radius1:ℝ)) :
    (cosInput1.widen nativeRadius1).Contains (Real.cos x) ∧
    (sinInput1.widen nativeRadius1).Contains (Real.sin x) := by
  have hr : (radius1:ℝ) ≤ (nativeRadius1:ℝ) := by exact_mod_cast radius1_checked.2
  exact phaseWholeBox_sound phase1_sound.1 phase1_sound.2 (le_trans hx hr)

theorem phase1_cubic_remainder {x : ℝ}
    (hx : |x-(center1:ℝ)| ≤ (radius1:ℝ)) :
    ‖Complex.exp (Complex.I*(x:ℂ)) -
      Complex.exp (Complex.I*((center1:ℝ):ℂ))*phasePartial 4 (x-(center1:ℝ))‖ ≤
      ((nativeRadius1^4/24:ℚ):ℝ) := by
  have hr : (radius1:ℝ) ≤ (nativeRadius1:ℝ) := by exact_mod_cast radius1_checked.2
  simpa only [add_sub_cancel] using
    phaseCubic_uniform (center1:ℝ) nativeRadius1 (le_trans hx hr)

theorem phase2_whole_box {x : ℝ}
    (hx : |x-(center2:ℝ)| ≤ (radius2:ℝ)) :
    (cosInput2.widen nativeRadius2).Contains (Real.cos x) ∧
    (sinInput2.widen nativeRadius2).Contains (Real.sin x) := by
  have hr : (radius2:ℝ) ≤ (nativeRadius2:ℝ) := by exact_mod_cast radius2_checked.2
  exact phaseWholeBox_sound phase2_sound.1 phase2_sound.2 (le_trans hx hr)

theorem phase2_cubic_remainder {x : ℝ}
    (hx : |x-(center2:ℝ)| ≤ (radius2:ℝ)) :
    ‖Complex.exp (Complex.I*(x:ℂ)) -
      Complex.exp (Complex.I*((center2:ℝ):ℂ))*phasePartial 4 (x-(center2:ℝ))‖ ≤
      ((nativeRadius2^4/24:ℚ):ℝ) := by
  have hr : (radius2:ℝ) ≤ (nativeRadius2:ℝ) := by exact_mod_cast radius2_checked.2
  simpa only [add_sub_cancel] using
    phaseCubic_uniform (center2:ℝ) nativeRadius2 (le_trans hx hr)

theorem phase3_whole_box {x : ℝ}
    (hx : |x-(center3:ℝ)| ≤ (radius3:ℝ)) :
    (cosInput3.widen nativeRadius3).Contains (Real.cos x) ∧
    (sinInput3.widen nativeRadius3).Contains (Real.sin x) := by
  have hr : (radius3:ℝ) ≤ (nativeRadius3:ℝ) := by exact_mod_cast radius3_checked.2
  exact phaseWholeBox_sound phase3_sound.1 phase3_sound.2 (le_trans hx hr)

theorem phase3_cubic_remainder {x : ℝ}
    (hx : |x-(center3:ℝ)| ≤ (radius3:ℝ)) :
    ‖Complex.exp (Complex.I*(x:ℂ)) -
      Complex.exp (Complex.I*((center3:ℝ):ℂ))*phasePartial 4 (x-(center3:ℝ))‖ ≤
      ((nativeRadius3^4/24:ℚ):ℝ) := by
  have hr : (radius3:ℝ) ≤ (nativeRadius3:ℝ) := by exact_mod_cast radius3_checked.2
  simpa only [add_sub_cancel] using
    phaseCubic_uniform (center3:ℝ) nativeRadius3 (le_trans hx hr)

end SignedMeanIntake20261006.Leaf66902

#print axioms SignedMeanIntake20261006.Leaf66902.phase0_whole_box
#print axioms SignedMeanIntake20261006.Leaf66902.phase0_cubic_remainder
#print axioms SignedMeanIntake20261006.Leaf66902.phase1_whole_box
#print axioms SignedMeanIntake20261006.Leaf66902.phase1_cubic_remainder
#print axioms SignedMeanIntake20261006.Leaf66902.phase2_whole_box
#print axioms SignedMeanIntake20261006.Leaf66902.phase2_cubic_remainder
#print axioms SignedMeanIntake20261006.Leaf66902.phase3_whole_box
#print axioms SignedMeanIntake20261006.Leaf66902.phase3_cubic_remainder
