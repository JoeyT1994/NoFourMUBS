import NoFourMUBs.Step2.CriticalZero.NonzeroMomentClearing
import NoFourMUBs.Step2.CriticalZero.NonzeroProgramInvolution
import NoFourMUBs.Reuse.Archive.CriticalNonzeroSumDenominator

/-! Reuse the two existing cleared moments and the checked conjugation map. -/
set_option autoImplicit false
set_option maxHeartbeats 3000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
open CriticalNonzeroMoments20261003
variable {F : Type*} [Field F] [CharZero F]

def numerator_p1_p1_a (X Y k : F) : F := ((((((12*k^2+28)*k^2+20)*k^2+4)*k^2)*X+(((((12*k^2+28)*k^2+20)*k^2+4)*k^2)*Y))*X+(((-96 : F)*k^2+(-32 : F))*k^2))

def denominator_p1_p1_a (X Y k : F) : F := (h k)*(X)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)

def numerator_p1_p1_b (X Y k : F) : F := (((((-12 : F)*k^2+(-16 : F))*k^2+(-4 : F))*k)*X+((((12*k^2+16)*k^2+4)*k)*Y))

def denominator_p1_p1_b (X Y k : F) : F := (X)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)

def numerator_p2_m1_a (X Y k : F) : F := ((((((((((-24 : F)*k^2+(-104 : F))*k^2+(-176 : F))*k^2+(-144 : F))*k^2+(-56 : F))*k^2+(-8 : F))*k)*Y)*X+(((((((((-12 : F)*k^2+(-52 : F))*k^2+(-88 : F))*k^2+(-72 : F))*k^2+(-28 : F))*k^2+(-4 : F))*k)*Y+((((((108*k^2+324)*k^2+408)*k^2+296)*k^2+124)*k^2+20)*k))*Y+((((864*k^2+1632)*k^2+928)*k^2+160)*k^3)))*X+(((-768 : F)*k^2+(-256 : F))*k^3))

def denominator_p2_m1_a (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(X)^2*(h k)^3

def numerator_p2_m1_b (X Y k : F) : F := (((((((12*k^2+28)*k^2+20)*k^2+4)*k^2)*Y+(((((-108 : F)*k^2+(-204 : F))*k^2+(-116 : F))*k^2+(-20 : F))*k^2))*Y)*X+(((96*k^2+32)*k^2)*Y))

def denominator_p2_m1_b (X Y k : F) : F := (h k)*(minusFactor Y k)*(plusFactor Y k)*(X)^2

theorem cleared_p1_p1 (X Y k : F) (hX : X ≠ 0) (hh : h k ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p1_p1 X Y k).a * denominator_p1_p1_a X Y k = numerator_p1_p1_a X Y k ∧
    (pairedQuad_p1_p1 X Y k).b * denominator_p1_p1_b X Y k = numerator_p1_p1_b X Y k := by
  obtain ⟨ha,hb⟩ := paired_p1_p1_coefficients X Y k hX hZp hZm
  have hd : linearD X Y k ≠ 0 := mul_ne_zero (mul_ne_zero hX hZp) hZm
  have ha' := (eq_div_iff hd).mpr ha
  have hb' := (eq_div_iff hd).mpr hb
  constructor
  · rw [ha']
    simp only [denominator_p1_p1_a, numerator_p1_p1_a, linearA, linearD,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    field_simp [hX, hh, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · rw [hb']
    simp only [denominator_p1_p1_b, numerator_p1_p1_b, linearB, linearD,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    field_simp [hX, hh, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

theorem cleared_p2_m1 (X Y k : ℂ) (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0) :
    (pairedQuad_p2_m1 X Y k).a * denominator_p2_m1_a X Y k = numerator_p2_m1_a X Y k ∧
    (pairedQuad_p2_m1 X Y k).b * denominator_p2_m1_b X Y k = numerator_p2_m1_b X Y k := by
  obtain ⟨ha,hb⟩ := paired_m2_p1_coefficients X Y k hY hYp hYm
  have hd : quadraticD Y k ≠ 0 := mul_ne_zero hYp hYm
  have ha' := (eq_div_iff hd).mpr ha
  have hb' := (eq_div_iff hd).mpr hb
  have hc := pairedCoefficient_conjugate X Y k hX hY .m2_p1
  have hca := congrArg QuadraticAlgebra.re hc
  have hcb := congrArg QuadraticAlgebra.im hc
  norm_num only [pairedCoefficient, opposite, degrees, neg_neg, zpow_neg, zpow_ofNat,
    QuadraticAlgebra.re_star, QuadraticAlgebra.im_star,
    QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
    QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
    toQuadratic_re, toQuadratic_im, mul_zero, zero_mul, add_zero, zero_add] at hca hcb
  rw [ha',hb'] at hca
  rw [hb'] at hcb
  have hea : (pairedQuad_p2_m1 X Y k).a =
      (Y/X^2)*(quadraticA X Y k + R1 Y k * quadraticB X Y k)/quadraticD Y k := by
    field_simp [hX,hY,hd] at hca ⊢
    linear_combination -hca
  have heb : (pairedQuad_p2_m1 X Y k).b =
      -(Y/X^2)*quadraticB X Y k/quadraticD Y k := by
    field_simp [hX,hY,hd] at hcb ⊢
    linear_combination -hcb
  constructor
  · rw [hea]
    simp only [denominator_p2_m1_a, numerator_p2_m1_a, quadraticA, quadraticB, quadraticD,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh, R1]
    field_simp [hX,hY,hh,hYp,hYm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · rw [heb]
    simp only [denominator_p2_m1_b, numerator_p2_m1_b, quadraticB, quadraticD,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh]
    field_simp [hX,hY,hh,hYp,hYm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p1_p1
#print axioms cleared_p2_m1
end NoFourMUBs.Step2.Critical.NonzeroClearing
