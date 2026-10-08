import ExactPhase
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/- Reuse the checked rational Taylor enclosure to bracket pi from sine signs.
No new Taylor proof and no imported decimal-pi bounds are used. -/
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 1500000

namespace Seed0024ClusterTubeTable20261007
open SignedMeanIntake20261006

theorem pi_lt_of_negative_phase (n : ℕ) (q : ℚ) (hq : (0:ℝ)≤q)
    (hneg : (phaseBox n q).2.hi<0) : Real.pi<(q:ℝ) := by
  have hs := (phaseBox_sound n q).2.2
  have hhi : ((phaseBox n q).2.hi:ℝ)<0 := by exact_mod_cast hneg
  by_contra h
  have hqpi : (q:ℝ)≤Real.pi := le_of_not_gt h
  have hnonneg := Real.sin_nonneg_of_nonneg_of_le_pi hq hqpi
  linarith

theorem lt_pi_of_positive_phase (n : ℕ) (q : ℚ) (hq : (q:ℝ)≤4)
    (hpos : 0<(phaseBox n q).2.lo) : (q:ℝ)<Real.pi := by
  have hs := (phaseBox_sound n q).2.1
  have hlo : (0:ℝ)<((phaseBox n q).2.lo:ℝ) := by exact_mod_cast hpos
  by_contra h
  have hpq : Real.pi≤(q:ℝ) := le_of_not_gt h
  have hnonneg := Real.sin_nonneg_of_nonneg_of_le_pi
    (show (0:ℝ)≤(q:ℝ)-Real.pi by linarith)
    (show (q:ℝ)-Real.pi≤Real.pi by linarith [Real.two_le_pi])
  rw [Real.sin_sub_pi] at hnonneg
  linarith

def piLower : ℚ := 3141592653589/1000000000000
def piUpper : ℚ := 3141592653590/1000000000000
def piInterval : QInterval := ⟨piLower,piUpper⟩

theorem phase_pi_lower_positive : 0<(phaseBox 30 piLower).2.lo := by
  decide +kernel

theorem phase_pi_upper_negative : (phaseBox 30 piUpper).2.hi<0 := by
  decide +kernel

theorem pi_lower_lt : (piLower:ℝ)<Real.pi :=
  lt_pi_of_positive_phase 30 piLower (by norm_num [piLower]) phase_pi_lower_positive

theorem pi_lt_upper : Real.pi<(piUpper:ℝ) :=
  pi_lt_of_negative_phase 30 piUpper (by norm_num [piUpper]) phase_pi_upper_negative

theorem piInterval_contains : piInterval.Contains Real.pi :=
  ⟨pi_lower_lt.le,pi_lt_upper.le⟩

theorem pi_lt_355_div_113 : Real.pi<(355:ℝ)/113 := by
  have h := pi_lt_upper
  norm_num [piUpper] at h
  linarith

theorem two_pi_lt_710_div_113 : 2*Real.pi<(710:ℝ)/113 := by
  linarith [pi_lt_355_div_113]

end Seed0024ClusterTubeTable20261007

#print axioms Seed0024ClusterTubeTable20261007.pi_lt_of_negative_phase
#print axioms Seed0024ClusterTubeTable20261007.lt_pi_of_positive_phase
#print axioms Seed0024ClusterTubeTable20261007.phase_pi_lower_positive
#print axioms Seed0024ClusterTubeTable20261007.phase_pi_upper_negative
#print axioms Seed0024ClusterTubeTable20261007.pi_lower_lt
#print axioms Seed0024ClusterTubeTable20261007.pi_lt_upper
#print axioms Seed0024ClusterTubeTable20261007.piInterval_contains
#print axioms Seed0024ClusterTubeTable20261007.pi_lt_355_div_113
#print axioms Seed0024ClusterTubeTable20261007.two_pi_lt_710_div_113
