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

/- The wrapper evaluates phase(c) at these exact source rational centers;
it does not convert c to a native floating-point center. We nevertheless
certify the full radius-plus-center-displacement cover explicitly. -/
def sourceCenter0 : ℚ := (585166059169711/281474976710656)
def sourceRadius0 : ℚ := (463617246416447489689/1208925819614629174706176)
theorem sourceCenter0_binding : sourceCenter0=center0 := by decide +kernel
theorem sourceRadius0_binding : sourceRadius0=radius0 := by decide +kernel
theorem sourceBox0_rounding_cover :
    sourceRadius0+|sourceCenter0-center0| ≤ nativeRadius0 := by decide +kernel
theorem sourceBox0_contains {x : ℝ}
    (hx : |x-(sourceCenter0:ℝ)| ≤ (sourceRadius0:ℝ)) :
    |x-(center0:ℝ)| ≤ (nativeRadius0:ℝ) := by
  have hcover : (sourceRadius0:ℝ)+|(sourceCenter0:ℝ)-(center0:ℝ)| ≤
      (nativeRadius0:ℝ) := by exact_mod_cast sourceBox0_rounding_cover
  exact le_trans (abs_sub_le x (sourceCenter0:ℝ) (center0:ℝ))
    (le_trans (add_le_add hx le_rfl) hcover)
theorem sourceBox0_phase_enclosures {x : ℝ}
    (hx : |x-(sourceCenter0:ℝ)| ≤ (sourceRadius0:ℝ)) :
    (cosInput0.widen nativeRadius0).Contains (Real.cos x) ∧
    (sinInput0.widen nativeRadius0).Contains (Real.sin x) :=
  phaseWholeBox_sound phase0_sound.1 phase0_sound.2 (sourceBox0_contains hx)

def sourceCenter1 : ℚ := (-2364843760245347/1125899906842624)
def sourceRadius1 : ℚ := (463617246416447489689/1208925819614629174706176)
theorem sourceCenter1_binding : sourceCenter1=center1 := by decide +kernel
theorem sourceRadius1_binding : sourceRadius1=radius1 := by decide +kernel
theorem sourceBox1_rounding_cover :
    sourceRadius1+|sourceCenter1-center1| ≤ nativeRadius1 := by decide +kernel
theorem sourceBox1_contains {x : ℝ}
    (hx : |x-(sourceCenter1:ℝ)| ≤ (sourceRadius1:ℝ)) :
    |x-(center1:ℝ)| ≤ (nativeRadius1:ℝ) := by
  have hcover : (sourceRadius1:ℝ)+|(sourceCenter1:ℝ)-(center1:ℝ)| ≤
      (nativeRadius1:ℝ) := by exact_mod_cast sourceBox1_rounding_cover
  exact le_trans (abs_sub_le x (sourceCenter1:ℝ) (center1:ℝ))
    (le_trans (add_le_add hx le_rfl) hcover)
theorem sourceBox1_phase_enclosures {x : ℝ}
    (hx : |x-(sourceCenter1:ℝ)| ≤ (sourceRadius1:ℝ)) :
    (cosInput1.widen nativeRadius1).Contains (Real.cos x) ∧
    (sinInput1.widen nativeRadius1).Contains (Real.sin x) :=
  phaseWholeBox_sound phase1_sound.1 phase1_sound.2 (sourceBox1_contains hx)

def sourceCenter2 : ℚ := (-73847395356849/35184372088832)
def sourceRadius2 : ℚ := (463617246416447489689/1208925819614629174706176)
theorem sourceCenter2_binding : sourceCenter2=center2 := by decide +kernel
theorem sourceRadius2_binding : sourceRadius2=radius2 := by decide +kernel
theorem sourceBox2_rounding_cover :
    sourceRadius2+|sourceCenter2-center2| ≤ nativeRadius2 := by decide +kernel
theorem sourceBox2_contains {x : ℝ}
    (hx : |x-(sourceCenter2:ℝ)| ≤ (sourceRadius2:ℝ)) :
    |x-(center2:ℝ)| ≤ (nativeRadius2:ℝ) := by
  have hcover : (sourceRadius2:ℝ)+|(sourceCenter2:ℝ)-(center2:ℝ)| ≤
      (nativeRadius2:ℝ) := by exact_mod_cast sourceBox2_rounding_cover
  exact le_trans (abs_sub_le x (sourceCenter2:ℝ) (center2:ℝ))
    (le_trans (add_le_add hx le_rfl) hcover)
theorem sourceBox2_phase_enclosures {x : ℝ}
    (hx : |x-(sourceCenter2:ℝ)| ≤ (sourceRadius2:ℝ)) :
    (cosInput2.widen nativeRadius2).Contains (Real.cos x) ∧
    (sinInput2.widen nativeRadius2).Contains (Real.sin x) :=
  phaseWholeBox_sound phase2_sound.1 phase2_sound.2 (sourceBox2_contains hx)

def sourceCenter3 : ℚ := (586461390789345/281474976710656)
def sourceRadius3 : ℚ := (463617246416447489689/1208925819614629174706176)
theorem sourceCenter3_binding : sourceCenter3=center3 := by decide +kernel
theorem sourceRadius3_binding : sourceRadius3=radius3 := by decide +kernel
theorem sourceBox3_rounding_cover :
    sourceRadius3+|sourceCenter3-center3| ≤ nativeRadius3 := by decide +kernel
theorem sourceBox3_contains {x : ℝ}
    (hx : |x-(sourceCenter3:ℝ)| ≤ (sourceRadius3:ℝ)) :
    |x-(center3:ℝ)| ≤ (nativeRadius3:ℝ) := by
  have hcover : (sourceRadius3:ℝ)+|(sourceCenter3:ℝ)-(center3:ℝ)| ≤
      (nativeRadius3:ℝ) := by exact_mod_cast sourceBox3_rounding_cover
  exact le_trans (abs_sub_le x (sourceCenter3:ℝ) (center3:ℝ))
    (le_trans (add_le_add hx le_rfl) hcover)
theorem sourceBox3_phase_enclosures {x : ℝ}
    (hx : |x-(sourceCenter3:ℝ)| ≤ (sourceRadius3:ℝ)) :
    (cosInput3.widen nativeRadius3).Contains (Real.cos x) ∧
    (sinInput3.widen nativeRadius3).Contains (Real.sin x) :=
  phaseWholeBox_sound phase3_sound.1 phase3_sound.2 (sourceBox3_contains hx)

end SignedMeanIntake20261006.Leaf66902

#print axioms SignedMeanIntake20261006.Leaf66902.phase0_whole_box
#print axioms SignedMeanIntake20261006.Leaf66902.phase0_cubic_remainder
#print axioms SignedMeanIntake20261006.Leaf66902.phase1_whole_box
#print axioms SignedMeanIntake20261006.Leaf66902.phase1_cubic_remainder
#print axioms SignedMeanIntake20261006.Leaf66902.phase2_whole_box
#print axioms SignedMeanIntake20261006.Leaf66902.phase2_cubic_remainder
#print axioms SignedMeanIntake20261006.Leaf66902.phase3_whole_box
#print axioms SignedMeanIntake20261006.Leaf66902.phase3_cubic_remainder

#print axioms SignedMeanIntake20261006.Leaf66902.sourceCenter0_binding
#print axioms SignedMeanIntake20261006.Leaf66902.sourceRadius0_binding
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox0_rounding_cover
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox0_contains
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox0_phase_enclosures
#print axioms SignedMeanIntake20261006.Leaf66902.sourceCenter1_binding
#print axioms SignedMeanIntake20261006.Leaf66902.sourceRadius1_binding
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox1_rounding_cover
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox1_contains
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox1_phase_enclosures
#print axioms SignedMeanIntake20261006.Leaf66902.sourceCenter2_binding
#print axioms SignedMeanIntake20261006.Leaf66902.sourceRadius2_binding
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox2_rounding_cover
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox2_contains
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox2_phase_enclosures
#print axioms SignedMeanIntake20261006.Leaf66902.sourceCenter3_binding
#print axioms SignedMeanIntake20261006.Leaf66902.sourceRadius3_binding
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox3_rounding_cover
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox3_contains
#print axioms SignedMeanIntake20261006.Leaf66902.sourceBox3_phase_enclosures
