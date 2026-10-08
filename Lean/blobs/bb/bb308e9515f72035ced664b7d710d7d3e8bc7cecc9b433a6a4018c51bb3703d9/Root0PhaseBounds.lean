import Root0MomentLocal00
import Root0MomentLocal01
import Root0MomentLocal02
import Root0MomentLocal03
import Root0MomentLocal04
import Root0MomentLocal05
import Root0MomentLocal06
import Root0MomentLocal07
import Root0MomentLocal08
import Root0MomentLocal09
import Root0MomentLocal10
import Root0MomentLocal11
import Root0MomentLocal12
import Root0MomentLocal13
import Root0MomentLocal14
import Root0MomentLocal15
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot0Centers20261003
noncomputable section
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

#print axioms phase0_sound
#print axioms phase1_sound
#print axioms phase2_sound
#print axioms phase3_sound
end
end ShoulderRoot0Moments20261003
