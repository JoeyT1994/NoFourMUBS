import NoFourMUBs.Reuse.Archive.ThirdRowGateActualPolynomial
import NoFourMUBs.Reuse.Archive.ThirdRowGateScaling
import NoFourMUBs.Reuse.Archive.SideMatrixScalar

/-! Conjugate and normalization bindings for the two exact third-row residuals. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def actualGateConstant (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  ThirdRowGate.geometryConstant (s / 3) (conj (s / 3)) (t / 3) (conj (t / 3))
    (reconstructionK s t r) (conj (reconstructionK s t r))
    (preRhoN s : ℂ) ((gramG s t r : ℂ) / 27)
    (prescribedU s t r epsilon) (preRhoAlpha s t r epsilon)
    (preRhoNumerator s t r epsilon) (conj (preRhoNumerator s t r epsilon))

def actualGateLinear (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  ThirdRowGate.geometryLinear (s / 3) (conj (s / 3)) (t / 3) (conj (t / 3))
    (reconstructionK s t r) (conj (reconstructionK s t r))
    (preRhoN s : ℂ) ((gramG s t r : ℂ) / 27)
    (prescribedU s t r epsilon) (preRhoAlpha s t r epsilon)
    (preRhoNumerator s t r epsilon) (conj (prescribedLambda2 s t r epsilon))

theorem preRhoN_complex (s : ℂ) :
    (preRhoN s : ℂ) = 1 - (s / 3) * (conj s / 3) := by
  simp only [preRhoN, Complex.ofReal_sub, Complex.ofReal_one]
  rw [← Complex.mul_conj]
  simp [map_ofNat]

theorem reconstructionK_conjugate (s t r : ℂ) :
    conj (reconstructionK s t r) = conj r / 3 - (conj t / 3) * (s / 3) := by
  simp [reconstructionK, map_ofNat]

/-- The only conjugate cancellation used by the scaling certificate comes from
unit lambda0 and unit u, both already proved for the actual strict recipe. -/
theorem prescribedU_conj_preRho {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    prescribedU s t r epsilon * conj (preRhoNumerator s t r epsilon) =
      (preRhoN s : ℂ) *
        (2 * prescribedU s t r epsilon * conj (s / 3) * conj (t / 3) -
          conj (prescribedLambda1 s t r epsilon) * conj (sideZ s t r epsilon) / 3) -
      2 * (prescribedU s t r epsilon * conj (s / 3) ^ 2 - (s / 3)) *
        conj (reconstructionK s t r) := by
  let u := prescribedU s t r epsilon
  have huu : u * conj u = 1 := by
    rw [Complex.mul_conj, prescribedU_unit hR he]
    rfl
  have hul : u * conj (prescribedLambda0 s t r epsilon) =
      conj (prescribedLambda1 s t r epsilon) := by
    obtain ⟨e0, _, _⟩ := prescribedLambdas_eq_sideLambdas hR epsilon
    have h0 : Complex.normSq (prescribedLambda0 s t r epsilon) = 1 := by
      rw [e0]
      exact (strict_sideLambda_units hR he).1
    calc
      _ = (prescribedLambda0 s t r epsilon * conj (prescribedLambda0 s t r epsilon)) *
          conj (prescribedLambda1 s t r epsilon) := by dsimp [u, prescribedU]; ring
      _ = _ := by rw [Complex.mul_conj, h0]; simp
  have hua : u * conj (preRhoAlpha s t r epsilon) =
      u * conj (s / 3) ^ 2 - (s / 3) := by
    change u * conj ((s / 3) ^ 2 - u * conj (s / 3)) = _
    simp only [map_sub, map_pow, map_mul, show conj (conj (s / 3)) = s / 3 from by simp]
    linear_combination -(s / 3) * huu
  change u * conj (preRhoNumerator s t r epsilon) = _
  calc
    _ = (preRhoN s : ℂ) *
        (2 * u * conj (s / 3) * conj (t / 3) -
          (u * conj (prescribedLambda0 s t r epsilon)) * conj (sideZ s t r epsilon) / 3) -
        2 * (u * conj (preRhoAlpha s t r epsilon)) * conj (reconstructionK s t r) := by
      change u * conj ((preRhoN s : ℂ) *
        (2 * (s / 3) * (t / 3) - sideZ s t r epsilon * prescribedLambda0 s t r epsilon / 3) -
          2 * preRhoAlpha s t r epsilon * reconstructionK s t r) = _
      simp only [map_sub, map_mul, map_div₀, map_ofNat, Complex.conj_ofReal]
      ring
    _ = _ := by rw [hul, hua]

#print axioms preRhoN_complex
#print axioms reconstructionK_conjugate
#print axioms prescribedU_conj_preRho
end
end StrictReconstruction20261007

