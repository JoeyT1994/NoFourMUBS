import Root0Cap00
import Root0Cap01
import Root0Cap02
import Root0Cap03
import Root0Cap04
import Root0Cap05
import Root0Cap06
import Root0Cap07
import Root0Cap08
import Root0Cap09
import Root0Cap10
import Root0Cap11
import Root0Cap12
import Root0Cap13
import Root0Cap14
import Root0Cap15
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Cap20261003
open ShoulderRoot0Centers20261003 ShoulderRoot0Program20261003
noncomputable section
theorem half_cap {b : Fin 4 → Bool} {θ : Fin 4 → ℝ} (h : HalfCube b θ) :
    (ShoulderPhaseGate20261002.radicand (s θ) (t θ) (r θ)).re≤1/80 := by
  cases h0 : b 0 <;> cases h1 : b 1 <;> cases h2 : b 2 <;> cases h3 : b 3
  · have he : b=ShoulderRoot0Cap0020261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0020261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0020261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0120261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0120261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0120261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0220261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0220261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0220261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0320261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0320261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0320261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0420261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0420261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0420261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0520261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0520261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0520261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0620261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0620261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0620261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0720261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0720261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0720261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0820261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0820261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0820261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap0920261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap0920261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap0920261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap1020261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap1020261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap1020261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap1120261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap1120261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap1120261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap1220261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap1220261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap1220261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap1320261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap1320261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap1320261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap1420261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap1420261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap1420261003.half_cap (by simpa only [he] using h)
  · have he : b=ShoulderRoot0Cap1520261003.bits := by
      funext i;fin_cases i <;> simp [ShoulderRoot0Cap1520261003.bits,h0,h1,h2,h3]
    exact ShoulderRoot0Cap1520261003.half_cap (by simpa only [he] using h)
theorem cube_cap {θ : Fin 4 → ℝ} (h : Cube θ) :
    (ShoulderPhaseGate20261002.radicand (s θ) (t θ) (r θ)).re≤1/80 := by
  obtain ⟨b,hb⟩ := half_cubes_cover h
  exact half_cap hb
theorem cube_nonempty : Cube (fun i => (rootCenters i:ℝ)) := by intro i;simp
#print axioms cube_cap
#print axioms cube_nonempty
end
end ShoulderRoot0Cap20261003
