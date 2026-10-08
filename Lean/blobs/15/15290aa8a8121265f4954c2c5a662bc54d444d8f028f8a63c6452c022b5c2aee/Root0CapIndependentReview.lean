import Root0Cap

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace Root0CapIndependentReview
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open ShoulderQuadratic20261003 ShoulderRoot0Centers20261003
open ShoulderRoot0Program20261003
noncomputable section

/-- Audit the endpoint with literal geometry and expanded complex moments. -/
theorem expected_literal_endpoint (θ : Fin 4 → ℝ)
    (h : ∀ k, |θ k - (![(-1073/512 : ℝ), -559/512, -1/512, -1609/512] k)| ≤ 1/512) :
    (ShoulderPhaseGate20261002.radicand
      (-(1 + cis (θ 0) + cis (θ 1)))
      (-(1 + cis (θ 2) + cis (θ 3)))
      (-(1 + cis (θ 2) * star (cis (θ 0)) + cis (θ 3) * star (cis (θ 1))))).re ≤ 1/80 := by
  apply ShoulderRoot0Cap20261003.cube_cap (θ := θ)
  intro k
  have he : (rootCenters k : ℝ) = ![(-1073/512 : ℝ), -559/512, -1/512, -1609/512] k := by
    fin_cases k <;> norm_num [rootCenters]
  rw [he]
  exact h k

/-- All product terms outside degree at most two are retained in the error. -/
theorem product_remainder_identity (c l q e d m r f : ℝ) :
    (c+l+q+e)*(d+m+r+f) =
      c*d + (c*m+d*l) + (c*r+d*q+l*m) +
      (c*f+d*e+l*r+q*m+q*r+(l+q)*f+(m+r)*e+e*f) := by
  ring

/-- The shared four-coordinate interpretation is preserved under multiplication. -/
theorem multiplication_uses_one_offset {D : Fin 4 → Interval} {A B : Box}
    {x : Fin 4 → ℝ} {a b : ℝ}
    (hx : ∀ i, Mem (D i) (x i)) (ha : Encloses A x a) (hb : Encloses B x b) :
    Encloses (mulB D A B) x (a*b) := mulB_sound hx ha hb

/-- Every one of the sixteen closed cube vertices remains in the domain. -/
theorem closed_vertices (b : Fin 4 → Bool) :
    Cube (fun i => (rootCenters i : ℝ) + if b i then 1/512 else -1/512) := by
  intro i
  cases h : b i <;> simp [h] <;> norm_num

/-- All half-cubes include the simultaneous midpoint. -/
theorem midpoint_in_every_half (b : Fin 4 → Bool) :
    HalfCube b (fun i => (rootCenters i : ℝ)) := by
  intro i
  cases h : b i <;> simp [center, h] <;> norm_num

/-- Explicitly retain the theta-two zero face at the original other centers. -/
theorem zero_face_member :
    Cube ![(-1073/512 : ℝ), -559/512, 0, -1609/512] := by
  intro i
  fin_cases i <;> norm_num [rootCenters]

theorem zero_face_cap :
    let θ : Fin 4 → ℝ := ![(-1073/512 : ℝ), -559/512, 0, -1609/512]
    (ShoulderPhaseGate20261002.radicand (s θ) (t θ) (r θ)).re ≤ 1/80 :=
  ShoulderRoot0Cap20261003.cube_cap zero_face_member

/-- The generic Taylor engine permits the minus-pi center and either sign
of its displacement, without requiring a principal-argument branch. -/
theorem minus_pi_trig_no_branch (x : Fin 4 → ℝ) (k : Fin 4)
    (hx : |x k| ≤ (1/1024 : ℝ)) :
    Encloses (cosB (point 0) (point (-1)) (1/1024) k) x (Real.cos (-Real.pi+x k)) ∧
    Encloses (sinB (point 0) (point (-1)) (1/1024) k) x (Real.sin (-Real.pi+x k)) := by
  have hc : Mem (point 0) (Real.sin (-Real.pi)) ∧ Mem (point (-1)) (Real.cos (-Real.pi)) := by
    norm_num [Mem, point]
  have hx' : |x k| ≤ ((1/1024 : ℚ) : ℝ) := by norm_num; exact hx
  exact ⟨cosB_sound hc (by norm_num) (by norm_num) k x hx',
    sinB_sound hc (by norm_num) (by norm_num) k x hx'⟩

/-- Taylor remainders also include zero radius, so no strictness is hidden. -/
theorem zero_radius_remainders :
    Mem (sinError 0) (Real.sin 0-0) ∧
    Mem (cosError 0) (Real.cos 0-1+(0:ℝ)^2/2) :=
  trig_error_sound (by norm_num) (by norm_num) (by norm_num)

end
#print axioms expected_literal_endpoint
#print axioms product_remainder_identity
#print axioms multiplication_uses_one_offset
#print axioms closed_vertices
#print axioms midpoint_in_every_half
#print axioms zero_face_member
#print axioms zero_face_cap
#print axioms minus_pi_trig_no_branch
#print axioms zero_radius_remainders
#print axioms ShoulderQuadratic20261003.range_sound
#print axioms ShoulderQuadratic20261003.mulB_sound
#print axioms ShoulderQuadratic20261003.trig_error_sound
#print axioms ShoulderQuadratic20261003.cosB_sound
#print axioms ShoulderQuadratic20261003.sinB_sound
#print axioms ShoulderRoot0Centers20261003.center_trig
#print axioms ShoulderRoot0Centers20261003.half_cubes_cover
#print axioms ShoulderRoot0Program20261003.program_radicand
#print axioms ShoulderRoot0Cap0020261003.half_cap
#print axioms ShoulderRoot0Cap0120261003.half_cap
#print axioms ShoulderRoot0Cap0220261003.half_cap
#print axioms ShoulderRoot0Cap0320261003.half_cap
#print axioms ShoulderRoot0Cap0420261003.half_cap
#print axioms ShoulderRoot0Cap0520261003.half_cap
#print axioms ShoulderRoot0Cap0620261003.half_cap
#print axioms ShoulderRoot0Cap0720261003.half_cap
#print axioms ShoulderRoot0Cap0820261003.half_cap
#print axioms ShoulderRoot0Cap0920261003.half_cap
#print axioms ShoulderRoot0Cap1020261003.half_cap
#print axioms ShoulderRoot0Cap1120261003.half_cap
#print axioms ShoulderRoot0Cap1220261003.half_cap
#print axioms ShoulderRoot0Cap1320261003.half_cap
#print axioms ShoulderRoot0Cap1420261003.half_cap
#print axioms ShoulderRoot0Cap1520261003.half_cap
#print axioms ShoulderRoot0Cap20261003.cube_cap
end Root0CapIndependentReview
