import Root1PhaseBoxes
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot1Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot1Centers20261003
noncomputable section
theorem local3_0_1 {x : ℝ} (hx : |x-(center 3 false:ℝ)|≤1/1024) : Mem Im3 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 3 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 3 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 3 false:ℝ)+(x-(center 3 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 3 false) (cosInterval 3 false) (1/1024))) (b:=Im3) (by decide +kernel) hc
#print axioms local3_0_1
end
end ShoulderRoot1Moments20261003
