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
theorem local0_0_0 {x : ℝ} (hx : |x-(center 0 false:ℝ)|≤1/1024) : Mem Re0 (Real.cos x) := by
  have ht := cosMono_sound (center_trig 0 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 0 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 0 false:ℝ)+(x-(center 0 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosMono (sinInterval 0 false) (cosInterval 0 false) (1/1024))) (b:=Re0) (by decide +kernel) hc
theorem local0_0_1 {x : ℝ} (hx : |x-(center 0 false:ℝ)|≤1/1024) : Mem Im0 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 0 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 0 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 0 false:ℝ)+(x-(center 0 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 0 false) (cosInterval 0 false) (1/1024))) (b:=Im0) (by decide +kernel) hc
theorem local0_1_0 {x : ℝ} (hx : |x-(center 0 true:ℝ)|≤1/1024) : Mem Re0 (Real.cos x) := by
  have ht := cosMono_sound (center_trig 0 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 0 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 0 true:ℝ)+(x-(center 0 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosMono (sinInterval 0 true) (cosInterval 0 true) (1/1024))) (b:=Re0) (by decide +kernel) hc
theorem local0_1_1 {x : ℝ} (hx : |x-(center 0 true:ℝ)|≤1/1024) : Mem Im0 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 0 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 0 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 0 true:ℝ)+(x-(center 0 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 0 true) (cosInterval 0 true) (1/1024))) (b:=Im0) (by decide +kernel) hc
theorem local1_0_0 {x : ℝ} (hx : |x-(center 1 false:ℝ)|≤1/1024) : Mem Re1 (Real.cos x) := by
  have ht := cosMono_sound (center_trig 1 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 1 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 1 false:ℝ)+(x-(center 1 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosMono (sinInterval 1 false) (cosInterval 1 false) (1/1024))) (b:=Re1) (by decide +kernel) hc
theorem local1_0_1 {x : ℝ} (hx : |x-(center 1 false:ℝ)|≤1/1024) : Mem Im1 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 1 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 1 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 1 false:ℝ)+(x-(center 1 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 1 false) (cosInterval 1 false) (1/1024))) (b:=Im1) (by decide +kernel) hc
theorem local1_1_0 {x : ℝ} (hx : |x-(center 1 true:ℝ)|≤1/1024) : Mem Re1 (Real.cos x) := by
  have ht := cosMono_sound (center_trig 1 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 1 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 1 true:ℝ)+(x-(center 1 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosMono (sinInterval 1 true) (cosInterval 1 true) (1/1024))) (b:=Re1) (by decide +kernel) hc
theorem local1_1_1 {x : ℝ} (hx : |x-(center 1 true:ℝ)|≤1/1024) : Mem Im1 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 1 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 1 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 1 true:ℝ)+(x-(center 1 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 1 true) (cosInterval 1 true) (1/1024))) (b:=Im1) (by decide +kernel) hc
theorem local2_0_0 {x : ℝ} (hx : |x-(center 2 false:ℝ)|≤1/1024) : Mem Re2 (Real.cos x) := by
  have ht := cosMono_sound (center_trig 2 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 2 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 2 false:ℝ)+(x-(center 2 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosMono (sinInterval 2 false) (cosInterval 2 false) (1/1024))) (b:=Re2) (by decide +kernel) hc
theorem local2_0_1 {x : ℝ} (hx : |x-(center 2 false:ℝ)|≤1/1024) : Mem Im2 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 2 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 2 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 2 false:ℝ)+(x-(center 2 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 2 false) (cosInterval 2 false) (1/1024))) (b:=Im2) (by decide +kernel) hc
theorem local2_1_0 {x : ℝ} (hx : |x-(center 2 true:ℝ)|≤1/1024) : Mem Re2 (Real.cos x) := by
  have ht := cosMono_sound (center_trig 2 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 2 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 2 true:ℝ)+(x-(center 2 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosMono (sinInterval 2 true) (cosInterval 2 true) (1/1024))) (b:=Re2) (by decide +kernel) hc
theorem local2_1_1 {x : ℝ} (hx : |x-(center 2 true:ℝ)|≤1/1024) : Mem Im2 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 2 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 2 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 2 true:ℝ)+(x-(center 2 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 2 true) (cosInterval 2 true) (1/1024))) (b:=Im2) (by decide +kernel) hc
theorem local3_0_0 {x : ℝ} (hx : |x-(center 3 false:ℝ)|≤1/1024) : Mem Re3 (Real.cos x) := by
  have ht := cosMono_sound (center_trig 3 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 3 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 3 false:ℝ)+(x-(center 3 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosMono (sinInterval 3 false) (cosInterval 3 false) (1/1024))) (b:=Re3) (by decide +kernel) hc
theorem local3_0_1 {x : ℝ} (hx : |x-(center 3 false:ℝ)|≤1/1024) : Mem Im3 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 3 false)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 3 false:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 3 false:ℝ)+(x-(center 3 false:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 3 false) (cosInterval 3 false) (1/1024))) (b:=Im3) (by decide +kernel) hc
theorem local3_1_0 {x : ℝ} (hx : |x-(center 3 true:ℝ)|≤1/1024) : Mem Re3 (Real.cos x) := by
  have ht := cosNatural_sound (center_trig 3 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 3 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx)
  have he : (center 3 true:ℝ)+(x-(center 3 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_cos x,Real.cos_le_one x⟩
  exact mem_mono (a:=clipUnit (cosNatural (sinInterval 3 true) (cosInterval 3 true) (1/1024))) (b:=Re3) (by decide +kernel) hc
theorem local3_1_1 {x : ℝ} (hx : |x-(center 3 true:ℝ)|≤1/1024) : Mem Im3 (Real.sin x) := by
  have ht := sinMono_sound (center_trig 3 true)
    (by norm_num : (0:ℚ)≤1/1024) (by norm_num : (1/1024:ℚ)≤1)
    (show |x-(center 3 true:ℝ)|≤((1/1024:ℚ):ℝ) from by simpa using hx) (by decide +kernel)
  have he : (center 3 true:ℝ)+(x-(center 3 true:ℝ))=x := by ring
  rw [he] at ht
  have hc := clipUnit_sound ht ⟨Real.neg_one_le_sin x,Real.sin_le_one x⟩
  exact mem_mono (a:=clipUnit (sinMono (sinInterval 3 true) (cosInterval 3 true) (1/1024))) (b:=Im3) (by decide +kernel) hc
theorem phase0_sound {θ : Fin 4 → ℝ} (h : Cube θ) : MemRectangle Phase0 (cis (θ 0)) := by
  obtain ⟨bb,hb⟩ := half_cubes_cover h
  change MemRectangle (rectangle Re0 Im0) (cis (θ 0))
  apply (mem_rectangle_iff _ _ _).mpr
  constructor
  · cases he : bb 0
    · exact local0_0_0 (by simpa only [he] using hb 0)
    · exact local0_1_0 (by simpa only [he] using hb 0)
  · cases he : bb 0
    · exact local0_0_1 (by simpa only [he] using hb 0)
    · exact local0_1_1 (by simpa only [he] using hb 0)
theorem phase1_sound {θ : Fin 4 → ℝ} (h : Cube θ) : MemRectangle Phase1 (cis (θ 1)) := by
  obtain ⟨bb,hb⟩ := half_cubes_cover h
  change MemRectangle (rectangle Re1 Im1) (cis (θ 1))
  apply (mem_rectangle_iff _ _ _).mpr
  constructor
  · cases he : bb 1
    · exact local1_0_0 (by simpa only [he] using hb 1)
    · exact local1_1_0 (by simpa only [he] using hb 1)
  · cases he : bb 1
    · exact local1_0_1 (by simpa only [he] using hb 1)
    · exact local1_1_1 (by simpa only [he] using hb 1)
theorem phase2_sound {θ : Fin 4 → ℝ} (h : Cube θ) : MemRectangle Phase2 (cis (θ 2)) := by
  obtain ⟨bb,hb⟩ := half_cubes_cover h
  change MemRectangle (rectangle Re2 Im2) (cis (θ 2))
  apply (mem_rectangle_iff _ _ _).mpr
  constructor
  · cases he : bb 2
    · exact local2_0_0 (by simpa only [he] using hb 2)
    · exact local2_1_0 (by simpa only [he] using hb 2)
  · cases he : bb 2
    · exact local2_0_1 (by simpa only [he] using hb 2)
    · exact local2_1_1 (by simpa only [he] using hb 2)
theorem phase3_sound {θ : Fin 4 → ℝ} (h : Cube θ) : MemRectangle Phase3 (cis (θ 3)) := by
  obtain ⟨bb,hb⟩ := half_cubes_cover h
  change MemRectangle (rectangle Re3 Im3) (cis (θ 3))
  apply (mem_rectangle_iff _ _ _).mpr
  constructor
  · cases he : bb 3
    · exact local3_0_0 (by simpa only [he] using hb 3)
    · exact local3_1_0 (by simpa only [he] using hb 3)
  · cases he : bb 3
    · exact local3_0_1 (by simpa only [he] using hb 3)
    · exact local3_1_1 (by simpa only [he] using hb 3)
def oneBox : RationalRectangle := boxPoint 1 0
def rawS := boxNeg (boxAdd (boxAdd oneBox Phase0) Phase2)
def rawT := boxNeg (boxAdd (boxAdd oneBox Phase1) Phase3)
def rawR := boxNeg (boxAdd (boxAdd oneBox (boxMul Phase1 (boxConj Phase0))) (boxMul Phase3 (boxConj Phase2)))
theorem s_check : BoxIncludes rawS moments0.s := by decide +kernel
theorem t_check : BoxIncludes rawT moments0.t := by decide +kernel
theorem r_check : BoxIncludes rawR moments0.r := by decide +kernel
theorem moment_boxes_sound {θ : Fin 4 → ℝ} (h : Cube θ) :
    CoversSidePolynomials moments0 (-(1+cis (θ 0)+cis (θ 2)))
      (-(1+cis (θ 1)+cis (θ 3)))
      (-(1+cis (θ 1)*star (cis (θ 0))+cis (θ 3)*star (cis (θ 2)))) := by
  have h0 := phase0_sound h;have h1 := phase1_sound h
  have h2 := phase2_sound h;have h3 := phase3_sound h
  have hu : MemRectangle oneBox (1:ℂ) := by norm_num [MemRectangle,oneBox,boxPoint,rectangle,point]
  exact ⟨box_mono s_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu h0) h2)),
    box_mono t_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu h1) h3)),
    box_mono r_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu
      (mem_boxMul h1 (mem_boxConj h0))) (mem_boxMul h3 (mem_boxConj h2))))⟩
#print axioms moment_boxes_sound
end
end ShoulderRoot0Moments20261003
