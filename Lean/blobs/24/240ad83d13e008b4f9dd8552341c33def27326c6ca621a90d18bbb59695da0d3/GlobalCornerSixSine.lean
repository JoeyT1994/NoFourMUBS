import GlobalCornerSixSkew
import Mathlib.Analysis.Complex.Trigonometric

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
namespace GlobalCornerSixSine
open ShoulderPhaseGate20261002
noncomputable section

def phase (t : ℝ) : ℂ := ⟨Real.cos t,Real.sin t⟩

theorem phase_exp (t : ℝ) : phase t = Complex.exp ((t : ℂ) * Complex.I) := by
  apply Complex.ext <;> simp [phase,Complex.exp_ofReal_mul_I_re,Complex.exp_ofReal_mul_I_im]

theorem phase_unit (t : ℝ) : Complex.normSq (phase t) = 1 := by
  change Real.cos t * Real.cos t + Real.sin t * Real.sin t = 1
  nlinarith [Real.sin_sq_add_cos_sq t]

theorem phase_mul_star (x y : ℝ) : phase x * star (phase y) = phase (x-y) := by
  apply Complex.ext <;>
    simp [phase,Complex.mul_re,Complex.mul_im,Complex.star_def,Real.cos_sub,Real.sin_sub] <;> ring

theorem skew_phase (x y : ℝ) :
    skew (phase x) (phase y) = (2 * Real.sin (x-y) : ℝ) * Complex.I := by
  apply Complex.ext <;>
    simp [skew,phase,Complex.mul_re,Complex.mul_im,Complex.star_def,Real.sin_sub,Complex.sin_ofReal_re,Complex.cos_ofReal_re,
      Complex.sin_ofReal_im,Complex.cos_ofReal_im] <;> ring

/-- Exactly the six signed sine products exported by SideColumnPrune. -/
def sixSine (x y : Fin 3 → ℝ) : ℝ :=
    Real.sin (x 2-x 1) * Real.sin (y 2-y 0) * Real.sin ((y 0-x 0)-(y 1-x 1))
  - Real.sin (x 2-x 1) * Real.sin (y 1-y 0) * Real.sin ((y 0-x 0)-(y 2-x 2))
  + Real.sin (x 2-x 0) * Real.sin (y 2-y 1) * Real.sin ((y 1-x 1)-(y 0-x 0))
  + Real.sin (x 2-x 0) * Real.sin (y 1-y 0) * Real.sin ((y 1-x 1)-(y 2-x 2))
  - Real.sin (x 1-x 0) * Real.sin (y 2-y 1) * Real.sin ((y 2-x 2)-(y 0-x 0))
  + Real.sin (x 1-x 0) * Real.sin (y 2-y 0) * Real.sin ((y 2-x 2)-(y 1-x 1))

theorem sixSkew_phase (x y : Fin 3 → ℝ) :
    sixSkew (phase (x 0)) (phase (x 1)) (phase (x 2))
      (phase (y 0)) (phase (y 1)) (phase (y 2)) =
      -(8 : ℂ) * Complex.I * (sixSine x y : ℂ) := by
  simp only [sixSkew,phase_mul_star,skew_phase]
  apply Complex.ext <;> simp [sixSine,Complex.mul_re,Complex.mul_im] <;> ring

/-- The complementary physical radicand is precisely 64 times the exported
six-sine square. No nonvanishing or strictness guard is used. -/
theorem radicand_sixSine (x y : Fin 3 → ℝ) :
    (radicand (phase (x 0)+phase (x 1)+phase (x 2))
      (phase (y 0)+phase (y 1)+phase (y 2))
      (overlap (phase (x 0)) (phase (x 1)) (phase (x 2))
        (phase (y 0)) (phase (y 1)) (phase (y 2)))).re = 64 * (sixSine x y)^2 := by
  rw [physical_radicand_sixSkew _ _ _ _ _ _
    (phase_unit _) (phase_unit _) (phase_unit _) (phase_unit _) (phase_unit _) (phase_unit _),
    sixSkew_phase]
  simp [pow_two,Complex.mul_re,Complex.mul_im]
  ring

/-- Row dephasing only shifts the displayed row angles, leaving this score
unchanged. This keeps the known complementary block usable after normalization. -/
theorem sixSine_rowShift (x y : Fin 3 → ℝ) (u v : ℝ) :
    sixSine (fun j => x j+u) (fun j => y j+v) = sixSine x y := by
  have hdiff (a b c : ℝ) : (a+c)-(b+c)=a-b := by ring
  have hmix (i j : Fin 3) :
      ((y i+v)-(x i+u))-((y j+v)-(x j+u))=(y i-x i)-(y j-x j) := by ring
  simp only [sixSine,hdiff,hmix]

end
#print axioms phase_exp
#print axioms phase_unit
#print axioms phase_mul_star
#print axioms skew_phase
#print axioms sixSkew_phase
#print axioms radicand_sixSine
#print axioms sixSine_rowShift
end GlobalCornerSixSine
