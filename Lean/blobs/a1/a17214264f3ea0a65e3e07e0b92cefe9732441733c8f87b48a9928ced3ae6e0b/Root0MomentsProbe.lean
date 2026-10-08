import Root0Centers
import QuadraticNaturalRange
import ConcreteTwoRegions
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot0Centers20261003
open Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SideColumns.ConcreteTwoRegions
noncomputable section
def Re0 : Interval := ⟨(-276429083197/549755813888),(-549141429517/1099511627776)⟩
def Im0 : Interval := ⟨(-952559452215/1099511627776),(-475203553087/549755813888)⟩
def Phase0 : RationalRectangle := rectangle Re0 Im0
def Re1 : Interval := ⟨(31553047445/68719476736),(508660353995/1099511627776)⟩
def Im1 : Interval := ⟨(-976756648317/1099511627776),(-974777135497/1099511627776)⟩
def Phase1 : RationalRectangle := rectangle Re1 Im1
def Re2 : Interval := ⟨(1099503239177/1099511627776),1⟩
def Im2 : Interval := ⟨(-4294956715/1099511627776),(171/549755813888)⟩
def Phase2 : RationalRectangle := rectangle Re2 Im2
def Re3 : Interval := ⟨-1,(-1099506880445/1099511627776)⟩
def Im3 : Interval := ⟨(-531973275/549755813888),(1615508307/549755813888)⟩
def Phase3 : RationalRectangle := rectangle Re3 Im3
#check cosMono_sound
theorem local0_0_0 {x : ℝ} (hx : |x-(center 0 false:ℝ)|≤1/1024) : Mem Re0 (Real.cos x) := by
  have ht := cosMono_sound (center_trig 0 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 0 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 0 false:ℝ)+(x-(center 0 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosMono (sinInterval 0 false) (cosInterval 0 false) (1/1024))) (b:=Re0) (by decide +kernel) hc

#print axioms local0_0_0
end
end ShoulderRoot0Moments20261003
