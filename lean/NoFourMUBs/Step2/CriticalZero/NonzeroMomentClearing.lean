import NoFourMUBs.Reuse.Archive.CriticalNonzeroLightMoments
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair01
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair05
import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra

/-! Bind the repository's two existing cleared moment formulas to the actual
quadratic coefficient program. These are coefficient identities, so no choice
of a root or irreducibility assumption is involved. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003
variable {F : Type*} [Field F] [CharZero F]

theorem paired_p1_p1_coefficients (X Y k : F) (hX : X ≠ 0)
    (hp : pole k 1 (p k-X-Y) ≠ 0) (hm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p1_p1 X Y k).a * linearD X Y k = linearA X Y k ∧
    (pairedQuad_p1_p1 X Y k).b * linearD X Y k = linearB X Y k := by
  change (toQuadratic (pairedQuad_p1_p1 X Y k)).re * linearD X Y k = _ ∧
    (toQuadratic (pairedQuad_p1_p1 X Y k)).im * linearD X Y k = _
  simp only [pairedQuad_p1_p1, quadNewton_p1_p1, quadSide,
    quadReconstructionData, toQuadratic_add, toQuadratic_sub, toQuadratic_mul,
    toQuadratic_pow, toQuadratic_nat, toQuadratic_scalar, toQuadratic_root,
    toQuadratic_divScalar, pow_two, QuadraticAlgebra.re_add,
    QuadraticAlgebra.im_add, QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
    QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
    QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
    QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
    mul_zero, zero_mul, add_zero, zero_add, sub_zero,
    one_mul, mul_one, neg_mul, mul_neg, neg_neg, linearD, linearA, linearB]
  constructor <;> field_simp [hX, hp, hm] <;> ring

theorem paired_m2_p1_coefficients (X Y k : F) (hY : Y ≠ 0)
    (hp : pole k 1 Y ≠ 0) (hm : pole k (-1) Y ≠ 0) :
    (pairedQuad_m2_p1 X Y k).a * quadraticD Y k = quadraticA X Y k ∧
    (pairedQuad_m2_p1 X Y k).b * quadraticD Y k = quadraticB X Y k := by
  change (toQuadratic (pairedQuad_m2_p1 X Y k)).re * quadraticD Y k = _ ∧
    (toQuadratic (pairedQuad_m2_p1 X Y k)).im * quadraticD Y k = _
  simp only [pairedQuad_m2_p1, quadNewton_m2_p1, quadSide,
    quadReconstructionData, toQuadratic_add, toQuadratic_sub, toQuadratic_mul,
    toQuadratic_pow, toQuadratic_nat, toQuadratic_scalar, toQuadratic_root,
    toQuadratic_divScalar, pow_two, QuadraticAlgebra.re_add,
    QuadraticAlgebra.im_add, QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
    QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
    QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
    QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
    mul_zero, zero_mul, add_zero, zero_add, sub_zero,
    one_mul, mul_one, neg_mul, mul_neg, neg_neg, quadraticD, quadraticA, quadraticB]
  dsimp only [R2, R1]
  constructor <;> field_simp [hY, hp, hm] <;> ring

#print axioms paired_p1_p1_coefficients
#print axioms paired_m2_p1_coefficients
end NoFourMUBs.Step2.Critical.NonzeroClearing
