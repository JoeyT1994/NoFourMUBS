import Seed0024Geometry
import Mathlib.Analysis.Real.Pi.Bounds

/-! UNCHECKED optional four-coordinate seed comparison. Pi.Bounds object is not available in the pinned cache. This is not part of the checked physical first-pair bridge. -/
set_option autoImplicit false
namespace Seed0024Geometry20261007
open Mub6.GlobalBoxCover20261006

def seedPhase (positive : Bool) : Fin 4 → ℝ :=
  if positive then ![0,0,2*Real.pi/3,-(2*Real.pi/3)]
  else ![0,0,-(2*Real.pi/3),2*Real.pi/3]

theorem seedPhase_between (positive : Bool) (i : Fin 4) :
    (seedLo positive i : ℝ) ≤ seedPhase positive i ∧
      seedPhase positive i ≤ (seedHi positive i : ℝ) := by
  have hL : (314159265358979323846/100000000000000000000 : ℝ) ≤ Real.pi := by
    convert Real.pi_gt_d20.le using 1 <;> norm_num
  have hU : Real.pi ≤ (314159265358979323847/100000000000000000000 : ℝ) := by
    convert Real.pi_lt_d20.le using 1 <;> norm_num
  cases positive <;> fin_cases i <;>
    norm_num [seedLo,seedHi,seedPhase,piLo,piHi] <;> constructor <;> linarith

theorem residual_seed_phase_bound {b : SeedBox} (hb : b ∈ residual)
    {x : Fin 4 → ℝ} (hx : b.box.Contains x) (i : Fin 4) :
    |x i-seedPhase b.positiveSeed i| ≤ (1:ℝ)/650 := by
  have hl : (seedHi b.positiveSeed i:ℝ)-1/650 ≤ (b.box.lower i:ℝ) := by
    exact_mod_cast (residual_seed_bounds b hb i).1
  have hu : (b.box.upper i:ℝ) ≤ (seedLo b.positiveSeed i:ℝ)+1/650 := by
    exact_mod_cast (residual_seed_bounds b hb i).2
  have hs := seedPhase_between b.positiveSeed i
  rw [abs_le]
  constructor <;> linarith [(hx i).1,(hx i).2,hs.1,hs.2]


end Seed0024Geometry20261007
