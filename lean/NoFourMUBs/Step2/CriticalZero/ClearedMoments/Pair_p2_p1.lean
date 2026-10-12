import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair07
import NoFourMUBs.Reuse.Archive.CriticalNonzeroSumDenominator

/-! Exact coefficient clearing of the original paired moment.
Untrusted intermediate coefficients are checked against the unchanged Lean formula. -/
set_option autoImplicit false
set_option maxHeartbeats 3000000
set_option maxRecDepth 16000
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]

def numerator_p2_p1_a (X Y k : F) : F := ((((((((((((((((-2 : F)*k^2+(-14 : F))*k^2+(-42 : F))*k^2+(-70 : F))*k^2+(-70 : F))*k^2+(-42 : F))*k^2+(-14 : F))*k^2+(-2 : F))*k)*Y+((((((((14*k^2+94)*k^2+270)*k^2+430)*k^2+410)*k^2+234)*k^2+74)*k^2+10)*k))*Y+(((((((((-12 : F)*k^2+(-80 : F))*k^2+(-228 : F))*k^2+(-360 : F))*k^2+(-340 : F))*k^2+(-192 : F))*k^2+(-60 : F))*k^2+(-8 : F))*k))*X+((((((((((((-3 : F)*k^2+(-21 : F))*k^2+(-63 : F))*k^2+(-105 : F))*k^2+(-105 : F))*k^2+(-63 : F))*k^2+(-21 : F))*k^2+(-3 : F))*k)*Y+((((((((36*k^2+230)*k^2+624)*k^2+930)*k^2+820)*k^2+426)*k^2+120)*k^2+14)*k))*Y+(((((((((-141 : F)*k^2+(-803 : F))*k^2+(-1929 : F))*k^2+(-2519 : F))*k^2+(-1911 : F))*k^2+(-825 : F))*k^2+(-179 : F))*k^2+(-13 : F))*k))*Y+((((((((108*k^2+570)*k^2+1288)*k^2+1622)*k^2+1228)*k^2+550)*k^2+128)*k^2+10)*k)))*X+((((((((((((-4 : F)*k^2+(-42 : F))*k^2+(-168 : F))*k^2+(-350 : F))*k^2+(-420 : F))*k^2+(-294 : F))*k^2+(-112 : F))*k^2+(-18 : F))*k)*Y+((((((((57*k^2+563)*k^2+2109)*k^2+4095)*k^2+4555)*k^2+2937)*k^2+1023)*k^2+149)*k))*Y+(((((((((-216 : F)*k^2+(-1962 : F))*k^2+(-6892 : F))*k^2+(-12670 : F))*k^2+(-13376 : F))*k^2+(-8134 : F))*k^2+(-2620 : F))*k^2+(-338 : F))*k))*Y+((((((((243*k^2+945)*k^2+2295)*k^2+4605)*k^2+5993)*k^2+4227)*k^2+1389)*k^2+143)*k)))*X+(((((((((((((1*k^2+7)*k^2+21)*k^2+35)*k^2+35)*k^2+21)*k^2+7)*k^2+1)*k)*Y+(((((((((-27 : F)*k^2+(-185 : F))*k^2+(-543 : F))*k^2+(-885 : F))*k^2+(-865 : F))*k^2+(-507 : F))*k^2+(-165 : F))*k^2+(-23 : F))*k))*Y+((((((((285*k^2+1891)*k^2+5385)*k^2+8519)*k^2+8071)*k^2+4569)*k^2+1427)*k^2+189)*k))*Y+(((((((((-1458 : F)*k^2+(-9024 : F))*k^2+(-24334 : F))*k^2+(-36780 : F))*k^2+(-33358 : F))*k^2+(-17992 : F))*k^2+(-5298 : F))*k^2+(-652 : F))*k))*Y+((((((((3402*k^2+17766)*k^2+43362)*k^2+62222)*k^2+54142)*k^2+27538)*k^2+7510)*k^2+890)*k))*Y+(((((((((-2187 : F)*k^2+(-5103 : F))*k^2+(-8883 : F))*k^2+(-16191 : F))*k^2+(-16233 : F))*k^2+(-7333 : F))*k^2+(-1625 : F))*k^2+(-301 : F))*k)))*X+((((((((((((((-1 : F)*k^2+(-7 : F))*k^2+(-21 : F))*k^2+(-35 : F))*k^2+(-35 : F))*k^2+(-21 : F))*k^2+(-7 : F))*k^2+(-1 : F))*k)*Y+((((((((27*k^2+185)*k^2+543)*k^2+885)*k^2+865)*k^2+507)*k^2+165)*k^2+23)*k))*Y+(((((((((-270 : F)*k^2+(-1800 : F))*k^2+(-5122 : F))*k^2+(-7996 : F))*k^2+(-7378 : F))*k^2+(-4048 : F))*k^2+(-1246 : F))*k^2+(-172 : F))*k))*Y+((((((((1215*k^2+7641)*k^2+20619)*k^2+29917)*k^2+24861)*k^2+12043)*k^2+3417)*k^2+511)*k))*Y+(((((((((-2187 : F)*k^2+(-11907 : F))*k^2+(-29403 : F))*k^2+(-36651 : F))*k^2+(-22553 : F))*k^2+(-6929 : F))*k^2+(-1921 : F))*k^2+(-577 : F))*k))*Y+((((((1944*k^2+(-2808 : F))*k^2+(-16848 : F))*k^2+(-12720 : F))*k^2+(-2504 : F))*k^2+168)*k)))*X+((((((((-64 : F)*k^2+(-192 : F))*k^2+(-192 : F))*k^2+(-64 : F))*k^3)*Y+((((1152*k^2+3200)*k^2+2944)*k^2+896)*k^3))*Y+(((((-6912 : F)*k^2+(-16512 : F))*k^2+(-12800 : F))*k^2+(-3200 : F))*k^3))*Y+((((15552*k^2+22464)*k^2+15168)*k^2+3136)*k^3)))

def denominator_p2_p1_a (X Y k : F) : F := (h k)*(minusFactor Y k)*(plusFactor Y k)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)*(X)^2

def numerator_p2_p1_b (X Y k : F) : F := ((((((((((((((((1 : F)/2)*k^2+((7 : F)/2))*k^2+((21 : F)/2))*k^2+((35 : F)/2))*k^2+((35 : F)/2))*k^2+((21 : F)/2))*k^2+((7 : F)/2))*k^2+((1 : F)/2))*Y+(((((((((-13 : F)/2)*k^2+((-81 : F)/2))*k^2+((-217 : F)/2))*k^2+((-325 : F)/2))*k^2+((-295 : F)/2))*k^2+((-163 : F)/2))*k^2+((-51 : F)/2))*k^2+((-7 : F)/2)))*Y+(((((((((39 : F)/2)*k^2+((233 : F)/2))*k^2+((595 : F)/2))*k^2+((845 : F)/2))*k^2+((725 : F)/2))*k^2+((379 : F)/2))*k^2+((113 : F)/2))*k^2+((15 : F)/2)))*Y+(((((((((-27 : F)/2)*k^2+((-159 : F)/2))*k^2+((-399 : F)/2))*k^2+((-555 : F)/2))*k^2+((-465 : F)/2))*k^2+((-237 : F)/2))*k^2+((-69 : F)/2))*k^2+((-9 : F)/2)))*X+(((((((((((1*k^2+7)*k^2+21)*k^2+35)*k^2+35)*k^2+21)*k^2+7)*k^2+1)*Y+(((((((((-35 : F)/2)*k^2+((-227 : F)/2))*k^2+((-631 : F)/2))*k^2+((-975 : F)/2))*k^2+((-905 : F)/2))*k^2+((-505 : F)/2))*k^2+((-157 : F)/2))*k^2+((-21 : F)/2)))*Y+(((((((((195 : F)/2)*k^2+((1173 : F)/2))*k^2+((3055 : F)/2))*k^2+((4457 : F)/2))*k^2+((3913 : F)/2))*k^2+((2047 : F)/2))*k^2+((581 : F)/2))*k^2+((67 : F)/2)))*Y+(((((((((-405 : F)/2)*k^2+((-2205 : F)/2))*k^2+((-5425 : F)/2))*k^2+((-7729 : F)/2))*k^2+((-6687 : F)/2))*k^2+((-3367 : F)/2))*k^2+((-859 : F)/2))*k^2+((-75 : F)/2)))*Y+(((((((((243 : F)/2)*k^2+((1053 : F)/2))*k^2+((2607 : F)/2))*k^2+((4177 : F)/2))*k^2+((3929 : F)/2))*k^2+((1975 : F)/2))*k^2+((453 : F)/2))*k^2+((27 : F)/2))))*X+((((((((((((((1 : F)/2)*k^2+((7 : F)/2))*k^2+((21 : F)/2))*k^2+((35 : F)/2))*k^2+((35 : F)/2))*k^2+((21 : F)/2))*k^2+((7 : F)/2))*k^2+((1 : F)/2))*Y+(((((((((-23 : F)/2)*k^2+((-153 : F)/2))*k^2+((-435 : F)/2))*k^2+((-685 : F)/2))*k^2+((-645 : F)/2))*k^2+((-363 : F)/2))*k^2+((-113 : F)/2))*k^2+((-15 : F)/2)))*Y+(((((((((177 : F)/2)*k^2+((1127 : F)/2))*k^2+((3069 : F)/2))*k^2+((4619 : F)/2))*k^2+((4131 : F)/2))*k^2+((2181 : F)/2))*k^2+((623 : F)/2))*k^2+((73 : F)/2)))*Y+(((((((((-513 : F)/2)*k^2+((-3201 : F)/2))*k^2+((-8629 : F)/2))*k^2+((-12749 : F)/2))*k^2+((-10931 : F)/2))*k^2+((-5347 : F)/2))*k^2+((-1367 : F)/2))*k^2+((-143 : F)/2)))*Y+(((((((243*k^2+1593)*k^2+4851)*k^2+7633)*k^2+6321)*k^2+2691)*k^2+553)*k^2+51))*Y+(((((((-243 : F)*k^2+(-1944 : F))*k^2+(-4011 : F))*k^2+(-3512 : F))*k^2+(-1433 : F))*k^2+(-240 : F))*k^2+(-9 : F))))*X+((((((((((((((-1 : F)/2)*k^2+((-7 : F)/2))*k^2+((-21 : F)/2))*k^2+((-35 : F)/2))*k^2+((-35 : F)/2))*k^2+((-21 : F)/2))*k^2+((-7 : F)/2))*k^2+((-1 : F)/2))*Y+(((((((((21 : F)/2)*k^2+((139 : F)/2))*k^2+((377 : F)/2))*k^2+((551 : F)/2))*k^2+((479 : F)/2))*k^2+((257 : F)/2))*k^2+((83 : F)/2))*k^2+((13 : F)/2)))*Y+(((((((((-135 : F)/2)*k^2+((-867 : F)/2))*k^2+((-2123 : F)/2))*k^2+((-2607 : F)/2))*k^2+((-1781 : F)/2))*k^2+((-761 : F)/2))*k^2+((-249 : F)/2))*k^2+((-53 : F)/2)))*Y+(((((((((243 : F)/2)*k^2+((1701 : F)/2))*k^2+((3471 : F)/2))*k^2+((2361 : F)/2))*k^2+((-295 : F)/2))*k^2+((-753 : F)/2))*k^2+((-27 : F)/2))*k^2+((83 : F)/2)))*Y+(((((((-243 : F)*k^2+108)*k^2+2457)*k^2+3696)*k^2+1903)*k^2+292)*k^2+(-21 : F)))*Y))*X+(((((((((8*k^2+32)*k^2+48)*k^2+32)*k^2+8)*k^2)*Y+((((((-144 : F)*k^2+(-544 : F))*k^2+(-768 : F))*k^2+(-480 : F))*k^2+(-112 : F))*k^2))*Y+(((((864*k^2+2928)*k^2+3664)*k^2+2000)*k^2+400)*k^2))*Y+((((((-1944 : F)*k^2+(-4752 : F))*k^2+(-4704 : F))*k^2+(-2288 : F))*k^2+(-392 : F))*k^2))*Y))

def denominator_p2_p1_b (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)*(X)^2

theorem cleared_p2_p1 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p2_p1 X Y k).a * denominator_p2_p1_a X Y k = numerator_p2_p1_a X Y k ∧
    (pairedQuad_p2_p1 X Y k).b * denominator_p2_p1_b X Y k = numerator_p2_p1_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p2_p1 X Y k)).re * _ = _
    simp only [pairedQuad_p2_p1, quadNewton_p2_p1, quadSide, quadReconstructionData,
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
      denominator_p2_p1_a, numerator_p2_p1_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p2_p1 X Y k)).im * _ = _
    simp only [pairedQuad_p2_p1, quadNewton_p2_p1, quadSide, quadReconstructionData,
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
      denominator_p2_p1_b, numerator_p2_p1_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p2_p1
end NoFourMUBs.Step2.Critical.NonzeroClearing
