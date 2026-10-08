import Root0PhaseBoxes
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot0Centers20261003
noncomputable section
theorem local1_1_1 {x : ℝ} (hx : |x-(center 1 true:ℝ)|≤1/1024) : Mem Im1 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 1 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 1 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 1 true:ℝ)+(x-(center 1 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 1 true) (cosInterval 1 true) (1/1024))) (b:=Im1) (by decide +kernel) hc
#print axioms local1_1_1
end
end ShoulderRoot0Moments20261003
