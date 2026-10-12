import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair05
import NoFourMUBs.Reuse.Archive.CriticalNonzeroSumDenominator

/-! Exact coefficient clearing of the existing paired moment.
The candidate coefficients come from the original rational-function evaluator;
this file checks their relation to the original Lean formula. -/
set_option autoImplicit false
set_option maxHeartbeats 2000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]

def numerator_p1_m2_a (X Y k : F) : F := ((((((((((-12 : F)*k^2+(-52 : F))*k^2+(-88 : F))*k^2+(-72 : F))*k^2+(-28 : F))*k^2+(-4 : F))*k)*Y)*X+(((((((((-24 : F)*k^2+(-104 : F))*k^2+(-176 : F))*k^2+(-144 : F))*k^2+(-56 : F))*k^2+(-8 : F))*k)*Y+((((((108*k^2+324)*k^2+408)*k^2+296)*k^2+124)*k^2+20)*k))*Y))*X+(((((864*k^2+1632)*k^2+928)*k^2+160)*k^3)*Y+(((-768 : F)*k^2+(-256 : F))*k^3)))

def denominator_p1_m2_a (X Y k : F) : F := (X)*(minusFactor X k)*(plusFactor X k)*(h k)^3

def numerator_p1_m2_b (X Y k : F) : F := ((((((12*k^2+28)*k^2+20)*k^2+4)*k^2)*Y^2)*X+(((((((-108 : F)*k^2+(-204 : F))*k^2+(-116 : F))*k^2+(-20 : F))*k^2)*Y+((96*k^2+32)*k^2))*Y))

def denominator_p1_m2_b (X Y k : F) : F := (h k)*(X)*(minusFactor X k)*(plusFactor X k)

theorem cleared_p1_m2 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0) (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0) :
    (pairedQuad_p1_m2 X Y k).a * denominator_p1_m2_a X Y k = numerator_p1_m2_a X Y k ∧
    (pairedQuad_p1_m2 X Y k).b * denominator_p1_m2_b X Y k = numerator_p1_m2_b X Y k := by
  constructor
  · change (toQuadratic (pairedQuad_p1_m2 X Y k)).re * _ = _
    simp only [pairedQuad_p1_m2, quadNewton_p1_m2, quadSide, quadReconstructionData,
      toQuadratic_add, toQuadratic_sub, toQuadratic_mul, toQuadratic_pow,
      toQuadratic_scalar, toQuadratic_root, toQuadratic_divScalar, pow_two,
      QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero, one_mul, mul_one,
      denominator_p1_m2_a, numerator_p1_m2_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh]
    dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p1_m2 X Y k)).im * _ = _
    simp only [pairedQuad_p1_m2, quadNewton_p1_m2, quadSide, quadReconstructionData,
      toQuadratic_add, toQuadratic_sub, toQuadratic_mul, toQuadratic_pow,
      toQuadratic_scalar, toQuadratic_root, toQuadratic_divScalar, pow_two,
      QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero, one_mul, mul_one,
      denominator_p1_m2_b, numerator_p1_m2_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh]
    dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p1_m2
end NoFourMUBs.Step2.Critical.NonzeroClearing
