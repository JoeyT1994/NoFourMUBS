import PhaseCoordinateReuse
import Root1PhaseBoxes
import Root1PhaseLocal300
import Root1PhaseLocal301
import Root1PhaseLocal310
import Root1PhaseLocal311
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot1Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot1Centers20261003
noncomputable section
theorem phase0_sound {θ : Fin 4 → ℝ} (h : Cube θ) : MemRectangle Phase0 (cis (θ 0)) := by
  have hh := h 0
  have hx : |θ 0-(ShoulderRoot0Centers20261003.rootCenters 0:ℝ)|≤1/512 := by
    norm_num [Cube,ShoulderPhaseCube20261003.Cube,rootCenters,radii,
      ShoulderRoot0Centers20261003.rootCenters] at hh ⊢
    exact hh
  simpa [Phase0,ShoulderPhaseReuse20261003.root0Phases] using
    ShoulderPhaseReuse20261003.root0_coordinate 0 hx
#print axioms phase0_sound
theorem phase1_sound {θ : Fin 4 → ℝ} (h : Cube θ) : MemRectangle Phase1 (cis (θ 1)) := by
  have hh := h 1
  have hx : |θ 1-(ShoulderRoot0Centers20261003.rootCenters 1:ℝ)|≤1/512 := by
    norm_num [Cube,ShoulderPhaseCube20261003.Cube,rootCenters,radii,
      ShoulderRoot0Centers20261003.rootCenters] at hh ⊢
    exact hh
  simpa [Phase1,ShoulderPhaseReuse20261003.root0Phases] using
    ShoulderPhaseReuse20261003.root0_coordinate 1 hx
#print axioms phase1_sound
theorem phase2_sound {θ : Fin 4 → ℝ} (h : Cube θ) : MemRectangle Phase2 (cis (θ 2)) := by
  have hh := h 2
  have hx : |θ 2-(ShoulderRoot0Centers20261003.rootCenters 2:ℝ)|≤1/512 := by
    norm_num [Cube,ShoulderPhaseCube20261003.Cube,rootCenters,radii,
      ShoulderRoot0Centers20261003.rootCenters] at hh ⊢
    exact hh
  simpa [Phase2,ShoulderPhaseReuse20261003.root0Phases] using
    ShoulderPhaseReuse20261003.root0_coordinate 2 hx
#print axioms phase2_sound
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
#print axioms phase3_sound
end
end ShoulderRoot1Moments20261003
