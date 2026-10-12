import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroQuadSide

/-! Conjugation of the existing rational side in the quadratic algebra.
The weights are the squared moduli introduced by the reciprocal row gauge. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003
variable {F : Type*} [Field F] [CharZero F]

theorem side_conjugates (X Y k sign : F) (hX : X ≠ 0) (hY : Y ≠ 0) :
    let D := quadSide X Y k sign
    let C := algebraMap F (QuadraticAlgebra F (R2 X Y k) (R1 Y k))
    toQuadratic D.S = C X * star (toQuadratic D.s) ∧
    toQuadratic D.T = C Y * star (toQuadratic D.t) ∧
    toQuadratic D.Q = C (Y/X) * star (toQuadratic D.r) ∧
    toQuadratic D.U = C (X^3) * star (toQuadratic D.u) ∧
    toQuadratic D.V = C (Y^3) * star (toQuadratic D.v) ∧
    toQuadratic D.W = C ((X/Y)^3) * star (toQuadratic D.w) ∧
    toQuadratic D.PI = C (X*Y) * star (toQuadratic D.pi) ∧
    toQuadratic D.UP = C (X^2/Y) * star (toQuadratic D.up) ∧
    toQuadratic D.VP = C (Y^2/X) * star (toQuadratic D.vp) := by
  dsimp only
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  all_goals apply QuadraticAlgebra.ext
  all_goals
    simp only [quadSide, quadReconstructionData, toQuadratic_add,
      toQuadratic_sub, toQuadratic_mul, toQuadratic_pow, toQuadratic_nat,
      toQuadratic_scalar, toQuadratic_root, toQuadratic_divScalar, pow_two,
      QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.re_star, QuadraticAlgebra.im_star,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero, neg_zero,
      one_mul, mul_one, neg_mul, mul_neg, neg_neg]
  all_goals
    try dsimp only [R2, R1]
    generalize (pole k sign (p k-X-Y))⁻¹ = d0
    generalize (pole k sign Y)⁻¹ = d1
    generalize (pole k sign X)⁻¹ = d2
    field_simp [hX, hY]
    <;> ring

#print axioms side_conjugates
end NoFourMUBs.Step2.Critical.NonzeroClearing
