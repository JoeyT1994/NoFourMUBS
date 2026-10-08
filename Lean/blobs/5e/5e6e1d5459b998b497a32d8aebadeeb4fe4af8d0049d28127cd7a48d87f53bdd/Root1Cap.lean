import Root1Cap00
import Root1Cap01
import Root1Cap02
import Root1Cap03
import Root1Cap04
import Root1Cap05
import Root1Cap06
import Root1Cap07
import Root1Cap08
import Root1Cap09
import Root1Cap10
import Root1Cap11
import Root1Cap12
import Root1Cap13
import Root1Cap14
import Root1Cap15
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Cap20261003
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot1Centers20261003 ShoulderRoot0Program20261003
noncomputable section
theorem half_cap {b : Fin 4 → Bool} {θ : Fin 4 → ℝ} (h : HalfCube b θ) :
    (ShoulderPhaseGate20261002.radicand (s θ) (t θ) (r θ)).re≤(1/32) := by
  cases h0 : b 0 <;> cases h1 : b 1 <;> cases h2 : b 2 <;> cases h3 : b 3
  · have he : b=ShoulderRoot1Cap0020261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0020261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0020261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0120261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0120261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0120261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0220261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0220261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0220261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0320261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0320261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0320261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0420261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0420261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0420261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0520261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0520261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0520261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0620261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0620261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0620261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0720261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0720261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0720261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0820261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0820261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0820261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap0920261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap0920261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap0920261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap1020261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap1020261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap1020261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap1120261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap1120261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap1120261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap1220261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap1220261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap1220261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap1320261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap1320261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap1320261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap1420261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap1420261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap1420261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot1Cap1520261003.bits := by
      funext k;fin_cases k <;> simp [ShoulderRoot1Cap1520261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot1Cap1520261003.half_cap (by simpa only [he] using h)
theorem cube_cap {θ : Fin 4 → ℝ} (h : Cube θ) :
    (ShoulderPhaseGate20261002.radicand (s θ) (t θ) (r θ)).re≤(1/32) := by
  obtain ⟨b,hb⟩ := half_cubes_cover h
  exact half_cap hb
#print axioms half_cap
#print axioms cube_cap
end
end ShoulderRoot1Cap20261003
