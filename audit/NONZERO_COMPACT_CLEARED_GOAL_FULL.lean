import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_p2_m4
import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair06
import NoFourMUBs.Reuse.Archive.CriticalNonzeroSumDenominator
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients
import NoFourMUBs.Step2.CriticalZero.NonzeroCompactSide


/-! Exact coefficient clearing of the original paired moment.
Untrusted intermediate coefficients are checked against the unchanged Lean formula. -/
set_option autoImplicit false
set_option pp.maxSteps 1000000
set_option maxHeartbeats 3000000
set_option maxRecDepth 16000
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]

example (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p2_m4 X Y k).a * denominator_p2_m4_a X Y k = numerator_p2_m4_a X Y k ∧
    (pairedQuad_p2_m4 X Y k).b * denominator_p2_m4_b X Y k = numerator_p2_m4_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hs : (h k)^2/(2 : F) ≠ 0 :=
    div_ne_zero (pow_ne_zero 2 hh) (by norm_num)
  have hFXp : plusFactor X k ≠ 0 := by
    rw [plusFactor_pole X k hh]
    exact mul_ne_zero hs hXp
  have poleXp : pole k 1 X = 2*plusFactor X k/(h k)^2 := by
    rw [plusFactor_pole X k hh]
    field_simp [hh]
    <;> ring
  have hFXm : minusFactor X k ≠ 0 := by
    rw [minusFactor_pole X k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hXm
  have poleXm : pole k (-1) X = (-2)*minusFactor X k/(h k)^2 := by
    rw [minusFactor_pole X k hh]
    field_simp [hh]
    <;> ring
  have hFYp : plusFactor Y k ≠ 0 := by
    rw [plusFactor_pole Y k hh]
    exact mul_ne_zero hs hYp
  have poleYp : pole k 1 Y = 2*plusFactor Y k/(h k)^2 := by
    rw [plusFactor_pole Y k hh]
    field_simp [hh]
    <;> ring
  have hFYm : minusFactor Y k ≠ 0 := by
    rw [minusFactor_pole Y k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hYm
  have poleYm : pole k (-1) Y = (-2)*minusFactor Y k/(h k)^2 := by
    rw [minusFactor_pole Y k hh]
    field_simp [hh]
    <;> ring
  have hFZp : thirdPlusFactor X Y k ≠ 0 := by
    rw [thirdPlusFactor_pole X Y k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hZp
  have poleZp : pole k 1 (p k-X-Y) = (-2)*thirdPlusFactor X Y k/(h k)^2 := by
    rw [thirdPlusFactor_pole X Y k hh]
    field_simp [hh]
    <;> ring
  have hFZm : thirdMinusFactor X Y k ≠ 0 := by
    rw [thirdMinusFactor_pole X Y k hh]
    exact mul_ne_zero hs hZm
  have poleZm : pole k (-1) (p k-X-Y) = 2*thirdMinusFactor X Y k/(h k)^2 := by
    rw [thirdMinusFactor_pole X Y k hh]
    field_simp [hh]
    <;> ring
  constructor
  · change (toQuadratic (pairedQuad_p2_m4 X Y k)).re * _ = _
    generalize hnum : numerator_p2_m4_a X Y k = N
    rw [pairedQuad_p2_m4, quadSide_eq_compactSide X Y k 1 hX hY,
      quadSide_eq_compactSide X Y k (-1) hX hY]
    simp only [pairedQuad_p2_m4, quadNewton_p2_m4, compactSide, quadReconstructionData,
      toQuadratic_add, toQuadratic_sub, toQuadratic_mul, toQuadratic_pow,
      toQuadratic_scalar, toQuadratic_root, toQuadratic_divScalar, htwo, hthree,
      pow_succ, pow_zero, QuadraticAlgebra.re_one, QuadraticAlgebra.im_one,
      QuadraticAlgebra.re_ofNat, QuadraticAlgebra.im_ofNat,
      QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero, one_mul, mul_one,
      denominator_p2_m4_a]
    try dsimp only [toQuadratic]
    try dsimp only [R2, R1]
    simp only [poleXp, poleXm, poleYp, poleYm, poleZp, poleZm]
    dsimp only [gram, sheet, q, J, p]
    field_simp [hX, hY, hh, hFXp, hFXm, hFYp, hFYm, hFZp, hFZm]
    fail "Diagnostic stop before large polynomial check"
  · change (toQuadratic (pairedQuad_p2_m4 X Y k)).im * _ = _
    generalize hnum : numerator_p2_m4_b X Y k = N
    rw [pairedQuad_p2_m4, quadSide_eq_compactSide X Y k 1 hX hY,
      quadSide_eq_compactSide X Y k (-1) hX hY]
    simp only [pairedQuad_p2_m4, quadNewton_p2_m4, compactSide, quadReconstructionData,
      toQuadratic_add, toQuadratic_sub, toQuadratic_mul, toQuadratic_pow,
      toQuadratic_scalar, toQuadratic_root, toQuadratic_divScalar, htwo, hthree,
      pow_succ, pow_zero, QuadraticAlgebra.re_one, QuadraticAlgebra.im_one,
      QuadraticAlgebra.re_ofNat, QuadraticAlgebra.im_ofNat,
      QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero, one_mul, mul_one,
      denominator_p2_m4_b]
    try dsimp only [toQuadratic]
    try dsimp only [R2, R1]
    simp only [poleXp, poleXm, poleYp, poleYm, poleZp, poleZm]
    dsimp only [gram, sheet, q, J, p]
    field_simp [hX, hY, hh, hFXp, hFXm, hFYp, hFYm, hFZp, hFZm]
    fail "Diagnostic stop before large polynomial check"

end NoFourMUBs.Step2.Critical.NonzeroClearing
