import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair05
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

def numerator_p1_p2_a (X Y k : F) : F := (((((((((((((((1*k^2+7)*k^2+21)*k^2+35)*k^2+35)*k^2+21)*k^2+7)*k^2+1)*k)*Y+(((((((((-1 : F)*k^2+(-7 : F))*k^2+(-21 : F))*k^2+(-35 : F))*k^2+(-35 : F))*k^2+(-21 : F))*k^2+(-7 : F))*k^2+(-1 : F))*k))*X+((((((((((-27 : F)*k^2+(-181 : F))*k^2+(-519 : F))*k^2+(-825 : F))*k^2+(-785 : F))*k^2+(-447 : F))*k^2+(-141 : F))*k^2+(-19 : F))*k)*Y+((((((((27*k^2+181)*k^2+519)*k^2+825)*k^2+785)*k^2+447)*k^2+141)*k^2+19)*k)))*X+((((((((((((-3 : F)*k^2+(-21 : F))*k^2+(-63 : F))*k^2+(-105 : F))*k^2+(-105 : F))*k^2+(-63 : F))*k^2+(-21 : F))*k^2+(-3 : F))*k)*Y+(((((((((-4 : F)*k^2+(-34 : F))*k^2+(-120 : F))*k^2+(-230 : F))*k^2+(-260 : F))*k^2+(-174 : F))*k^2+(-64 : F))*k^2+(-10 : F))*k))*Y+((((((((285*k^2+1799)*k^2+4865)*k^2+7299)*k^2+6551)*k^2+3509)*k^2+1035)*k^2+129)*k))*Y+(((((((((-270 : F)*k^2+(-1716 : F))*k^2+(-4650 : F))*k^2+(-6960 : F))*k^2+(-6210 : F))*k^2+(-3300 : F))*k^2+(-966 : F))*k^2+(-120 : F))*k)))*X+(((((((((((((-2 : F)*k^2+(-14 : F))*k^2+(-42 : F))*k^2+(-70 : F))*k^2+(-70 : F))*k^2+(-42 : F))*k^2+(-14 : F))*k^2+(-2 : F))*k)*Y+((((((((36*k^2+234)*k^2+648)*k^2+990)*k^2+900)*k^2+486)*k^2+144)*k^2+18)*k))*Y+((((((((57*k^2+423)*k^2+1341)*k^2+2339)*k^2+2411)*k^2+1461)*k^2+479)*k^2+65)*k))*Y+(((((((((-1458 : F)*k^2+(-8316 : F))*k^2+(-20534 : F))*k^2+(-28304 : F))*k^2+(-23358 : F))*k^2+(-11468 : F))*k^2+(-3098 : F))*k^2+(-360 : F))*k))*Y+((((((((1215*k^2+7101)*k^2+17691)*k^2+24353)*k^2+19997)*k^2+9783)*k^2+2633)*k^2+299)*k)))*X+((((((((((((14*k^2+94)*k^2+270)*k^2+430)*k^2+410)*k^2+234)*k^2+74)*k^2+10)*k)*Y+(((((((((-141 : F)*k^2+(-855 : F))*k^2+(-2201 : F))*k^2+(-3115 : F))*k^2+(-2615 : F))*k^2+(-1301 : F))*k^2+(-355 : F))*k^2+(-41 : F))*k))*Y+(((((((((-216 : F)*k^2+(-1182 : F))*k^2+(-2980 : F))*k^2+(-4362 : F))*k^2+(-3856 : F))*k^2+(-2002 : F))*k^2+(-564 : F))*k^2+(-70 : F))*k))*Y+((((((((3402*k^2+15714)*k^2+32610)*k^2+38458)*k^2+26910)*k^2+11046)*k^2+2614)*k^2+318)*k))*Y+(((((((((-2187 : F)*k^2+(-10935 : F))*k^2+(-23571 : F))*k^2+(-28599 : F))*k^2+(-21161 : F))*k^2+(-9501 : F))*k^2+(-2361 : F))*k^2+(-245 : F))*k)))*X+(((((((((((((-12 : F)*k^2+(-80 : F))*k^2+(-228 : F))*k^2+(-360 : F))*k^2+(-340 : F))*k^2+(-192 : F))*k^2+(-60 : F))*k^2+(-8 : F))*k)*Y+((((((((108*k^2+726)*k^2+2064)*k^2+3226)*k^2+3004)*k^2+1674)*k^2+520)*k^2+70)*k))*Y+((((((((243*k^2+(-675 : F))*k^2+(-4905 : F))*k^2+(-9895 : F))*k^2+(-10423 : F))*k^2+(-6105 : F))*k^2+(-1747 : F))*k^2+(-157 : F))*k))*Y+(((((((((-2187 : F)*k^2+(-3159 : F))*k^2+1917)*k^2+11817)*k^2+16823)*k^2+10179)*k^2+2391)*k^2+107)*k))*Y))*X+(((((((((((-108 : F)*k^2+(-528 : F))*k^2+(-1068 : F))*k^2+(-1152 : F))*k^2+(-708 : F))*k^2+(-240 : F))*k^2+(-36 : F))*k)*Y+(((((((972*k^2+3240)*k^2+7188)*k^2+9520)*k^2+6196)*k^2+1704)*k^2+108)*k))*Y+(((((((-1944 : F)*k^2+(-13608 : F))*k^2+(-18480 : F))*k^2+(-9616 : F))*k^2+(-1848 : F))*k^2+(-72 : F))*k))*Y))

def denominator_p1_p2_a (X Y k : F) : F := (h k)*(Y)*(X)*(minusFactor X k)*(thirdMinusFactor X Y k)*(plusFactor X k)*(thirdPlusFactor X Y k)

def numerator_p1_p2_b (X Y k : F) : F := ((((((((((((((((-1 : F)/2)*k^2+((-7 : F)/2))*k^2+((-21 : F)/2))*k^2+((-35 : F)/2))*k^2+((-35 : F)/2))*k^2+((-21 : F)/2))*k^2+((-7 : F)/2))*k^2+((-1 : F)/2))*Y+(((((((((1 : F)/2)*k^2+((7 : F)/2))*k^2+((21 : F)/2))*k^2+((35 : F)/2))*k^2+((35 : F)/2))*k^2+((21 : F)/2))*k^2+((7 : F)/2))*k^2+((1 : F)/2)))*Y)*X+(((((((((((-1 : F)*k^2+(-7 : F))*k^2+(-21 : F))*k^2+(-35 : F))*k^2+(-35 : F))*k^2+(-21 : F))*k^2+(-7 : F))*k^2+(-1 : F))*Y+(((((((((23 : F)/2)*k^2+((153 : F)/2))*k^2+((435 : F)/2))*k^2+((685 : F)/2))*k^2+((645 : F)/2))*k^2+((363 : F)/2))*k^2+((113 : F)/2))*k^2+((15 : F)/2)))*Y+(((((((((-21 : F)/2)*k^2+((-139 : F)/2))*k^2+((-377 : F)/2))*k^2+((-551 : F)/2))*k^2+((-479 : F)/2))*k^2+((-257 : F)/2))*k^2+((-83 : F)/2))*k^2+((-13 : F)/2)))*Y+((((((-8 : F)*k^2+(-32 : F))*k^2+(-48 : F))*k^2+(-32 : F))*k^2+(-8 : F))*k^2)))*X+(((((((((((((-1 : F)/2)*k^2+((-7 : F)/2))*k^2+((-21 : F)/2))*k^2+((-35 : F)/2))*k^2+((-35 : F)/2))*k^2+((-21 : F)/2))*k^2+((-7 : F)/2))*k^2+((-1 : F)/2))*Y+(((((((((35 : F)/2)*k^2+((227 : F)/2))*k^2+((631 : F)/2))*k^2+((975 : F)/2))*k^2+((905 : F)/2))*k^2+((505 : F)/2))*k^2+((157 : F)/2))*k^2+((21 : F)/2)))*Y+(((((((((-177 : F)/2)*k^2+((-1127 : F)/2))*k^2+((-3069 : F)/2))*k^2+((-4619 : F)/2))*k^2+((-4131 : F)/2))*k^2+((-2181 : F)/2))*k^2+((-623 : F)/2))*k^2+((-73 : F)/2)))*Y+(((((((((135 : F)/2)*k^2+((867 : F)/2))*k^2+((2123 : F)/2))*k^2+((2607 : F)/2))*k^2+((1781 : F)/2))*k^2+((761 : F)/2))*k^2+((249 : F)/2))*k^2+((53 : F)/2)))*Y+(((((144*k^2+544)*k^2+768)*k^2+480)*k^2+112)*k^2)))*X+(((((((((((((13 : F)/2)*k^2+((81 : F)/2))*k^2+((217 : F)/2))*k^2+((325 : F)/2))*k^2+((295 : F)/2))*k^2+((163 : F)/2))*k^2+((51 : F)/2))*k^2+((7 : F)/2))*Y+(((((((((-195 : F)/2)*k^2+((-1173 : F)/2))*k^2+((-3055 : F)/2))*k^2+((-4457 : F)/2))*k^2+((-3913 : F)/2))*k^2+((-2047 : F)/2))*k^2+((-581 : F)/2))*k^2+((-67 : F)/2)))*Y+(((((((((513 : F)/2)*k^2+((3201 : F)/2))*k^2+((8629 : F)/2))*k^2+((12749 : F)/2))*k^2+((10931 : F)/2))*k^2+((5347 : F)/2))*k^2+((1367 : F)/2))*k^2+((143 : F)/2)))*Y+(((((((((-243 : F)/2)*k^2+((-1701 : F)/2))*k^2+((-3471 : F)/2))*k^2+((-2361 : F)/2))*k^2+((295 : F)/2))*k^2+((753 : F)/2))*k^2+((27 : F)/2))*k^2+((-83 : F)/2)))*Y+((((((-864 : F)*k^2+(-2928 : F))*k^2+(-3664 : F))*k^2+(-2000 : F))*k^2+(-400 : F))*k^2)))*X+(((((((((((((-39 : F)/2)*k^2+((-233 : F)/2))*k^2+((-595 : F)/2))*k^2+((-845 : F)/2))*k^2+((-725 : F)/2))*k^2+((-379 : F)/2))*k^2+((-113 : F)/2))*k^2+((-15 : F)/2))*Y+(((((((((405 : F)/2)*k^2+((2205 : F)/2))*k^2+((5425 : F)/2))*k^2+((7729 : F)/2))*k^2+((6687 : F)/2))*k^2+((3367 : F)/2))*k^2+((859 : F)/2))*k^2+((75 : F)/2)))*Y+((((((((-243 : F)*k^2+(-1593 : F))*k^2+(-4851 : F))*k^2+(-7633 : F))*k^2+(-6321 : F))*k^2+(-2691 : F))*k^2+(-553 : F))*k^2+(-51 : F)))*Y+((((((243*k^2+(-108 : F))*k^2+(-2457 : F))*k^2+(-3696 : F))*k^2+(-1903 : F))*k^2+(-292 : F))*k^2+21))*Y+(((((1944*k^2+4752)*k^2+4704)*k^2+2288)*k^2+392)*k^2)))*X+((((((((((((27 : F)/2)*k^2+((159 : F)/2))*k^2+((399 : F)/2))*k^2+((555 : F)/2))*k^2+((465 : F)/2))*k^2+((237 : F)/2))*k^2+((69 : F)/2))*k^2+((9 : F)/2))*Y+(((((((((-243 : F)/2)*k^2+((-1053 : F)/2))*k^2+((-2607 : F)/2))*k^2+((-4177 : F)/2))*k^2+((-3929 : F)/2))*k^2+((-1975 : F)/2))*k^2+((-453 : F)/2))*k^2+((-27 : F)/2)))*Y+((((((243*k^2+1944)*k^2+4011)*k^2+3512)*k^2+1433)*k^2+240)*k^2+9))*Y^2))

def denominator_p1_p2_b (X Y k : F) : F := (Y)*(X)*(minusFactor X k)*(thirdMinusFactor X Y k)*(plusFactor X k)*(thirdPlusFactor X Y k)

theorem cleared_p1_p2 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p1_p2 X Y k).a * denominator_p1_p2_a X Y k = numerator_p1_p2_a X Y k ∧
    (pairedQuad_p1_p2 X Y k).b * denominator_p1_p2_b X Y k = numerator_p1_p2_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p1_p2 X Y k)).re * _ = _
    simp only [pairedQuad_p1_p2, quadNewton_p1_p2, quadSide, quadReconstructionData,
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
      denominator_p1_p2_a, numerator_p1_p2_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p1_p2 X Y k)).im * _ = _
    simp only [pairedQuad_p1_p2, quadNewton_p1_p2, quadSide, quadReconstructionData,
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
      denominator_p1_p2_b, numerator_p1_p2_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p1_p2
end NoFourMUBs.Step2.Critical.NonzeroClearing
