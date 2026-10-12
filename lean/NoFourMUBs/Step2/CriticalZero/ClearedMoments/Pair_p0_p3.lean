import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair04
import NoFourMUBs.Reuse.Archive.CriticalNonzeroSumDenominator

/-! Exact coefficient clearing of the original paired moment.
Untrusted intermediate coefficients are checked against the unchanged Lean formula. -/
set_option autoImplicit false
set_option maxHeartbeats 3000000
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]

def numerator_p0_p3_a (X Y k : F) : F := (((((((((((((((-9 : F)*k^2+(-54 : F))*k^2+(-135 : F))*k^2+(-180 : F))*k^2+(-135 : F))*k^2+(-54 : F))*k^2+(-9 : F))*k)*Y+(((((((18*k^2+96)*k^2+210)*k^2+240)*k^2+150)*k^2+48)*k^2+6)*k))*Y+((((((((-9 : F)*k^2+(-30 : F))*k^2+(-15 : F))*k^2+60)*k^2+105)*k^2+66)*k^2+15)*k))*Y+(((((((-12 : F)*k^2+(-60 : F))*k^2+(-120 : F))*k^2+(-120 : F))*k^2+(-60 : F))*k^2+(-12 : F))*k))*X+((((((((((((-18 : F)*k^2+(-108 : F))*k^2+(-270 : F))*k^2+(-360 : F))*k^2+(-270 : F))*k^2+(-108 : F))*k^2+(-18 : F))*k)*Y+(((((((198*k^2+1092)*k^2+2490)*k^2+3000)*k^2+2010)*k^2+708)*k^2+102)*k))*Y+((((((((-342 : F)*k^2+(-1644 : F))*k^2+(-3186 : F))*k^2+(-3144 : F))*k^2+(-1626 : F))*k^2+(-396 : F))*k^2+(-30 : F))*k))*Y+(((((((162*k^2+444)*k^2+(-18 : F))*k^2+(-1272 : F))*k^2+(-1698 : F))*k^2+(-900 : F))*k^2+(-174 : F))*k))*Y+((((((216*k^2+984)*k^2+1776)*k^2+1584)*k^2+696)*k^2+120)*k)))*X+(((((((((((((-9 : F)*k^2+(-54 : F))*k^2+(-135 : F))*k^2+(-180 : F))*k^2+(-135 : F))*k^2+(-54 : F))*k^2+(-9 : F))*k)*Y+(((((((243*k^2+1356)*k^2+3135)*k^2+3840)*k^2+2625)*k^2+948)*k^2+141)*k))*Y+((((((((-1503 : F)*k^2+(-7560 : F))*k^2+(-15591 : F))*k^2+(-16824 : F))*k^2+(-9981 : F))*k^2+(-3072 : F))*k^2+(-381 : F))*k))*Y+(((((((2241*k^2+9552)*k^2+16137)*k^2+13512)*k^2+5619)*k^2+936)*k^2+3)*k))*Y+((((((((-972 : F)*k^2+(-2322 : F))*k^2+666)*k^2+6828)*k^2+7848)*k^2+3654)*k^2+618)*k))*Y+(((((((-972 : F)*k^2+(-4212 : F))*k^2+(-7176 : F))*k^2+(-5976 : F))*k^2+(-2412 : F))*k^2+(-372 : F))*k)))*X+((((((((((((63*k^2+360)*k^2+855)*k^2+1080)*k^2+765)*k^2+288)*k^2+45)*k)*Y+((((((((-1008 : F)*k^2+(-5208 : F))*k^2+(-11088 : F))*k^2+(-12432 : F))*k^2+(-7728 : F))*k^2+(-2520 : F))*k^2+(-336 : F))*k))*Y+(((((((4590*k^2+20832)*k^2+38526)*k^2+37056)*k^2+19482)*k^2+5280)*k^2+570)*k))*Y+((((((((-5832 : F)*k^2+(-21816 : F))*k^2+(-32208 : F))*k^2+(-23424 : F))*k^2+(-8280 : F))*k^2+(-1032 : F))*k^2+48)*k))*Y+(((((((2187*k^2+5832)*k^2+1971)*k^2+(-7896 : F))*k^2+(-9999 : F))*k^2+(-4464 : F))*k^2+(-687 : F))*k))*Y+(((((1944*k^2+5616)*k^2+5760)*k^2+2448)*k^2+360)*k)))*X+((((((((((((-54 : F)*k^2+(-306 : F))*k^2+(-720 : F))*k^2+(-900 : F))*k^2+(-630 : F))*k^2+(-234 : F))*k^2+(-36 : F))*k)*Y+(((((((783*k^2+3924)*k^2+8139)*k^2+8928)*k^2+5445)*k^2+1740)*k^2+225)*k))*Y+((((((((-2916 : F)*k^2+(-13338 : F))*k^2+(-24726 : F))*k^2+(-23652 : F))*k^2+(-12240 : F))*k^2+(-3234 : F))*k^2+(-342 : F))*k))*Y+(((((((2187*k^2+9720)*k^2+17307)*k^2+15624)*k^2+7425)*k^2+1728)*k^2+153)*k))*Y^2))

def denominator_p0_p3_a (X Y k : F) : F := (minusFactor X k)*(thirdMinusFactor X Y k)*(plusFactor X k)*(thirdPlusFactor X Y k)*(Y)^2

def numerator_p0_p3_b (X Y k : F) : F := ((((((((((((((((-3 : F)/2)*k^2+((-21 : F)/2))*k^2+((-63 : F)/2))*k^2+((-105 : F)/2))*k^2+((-105 : F)/2))*k^2+((-63 : F)/2))*k^2+((-21 : F)/2))*k^2+((-3 : F)/2))*Y+(((((((3*k^2+21)*k^2+63)*k^2+105)*k^2+105)*k^2+63)*k^2+21)*k^2+3))*Y+(((((((((-3 : F)/2)*k^2+((-21 : F)/2))*k^2+((-63 : F)/2))*k^2+((-105 : F)/2))*k^2+((-105 : F)/2))*k^2+((-63 : F)/2))*k^2+((-21 : F)/2))*k^2+((-3 : F)/2)))*Y)*X+((((((((((((-3 : F)*k^2+(-21 : F))*k^2+(-63 : F))*k^2+(-105 : F))*k^2+(-105 : F))*k^2+(-63 : F))*k^2+(-21 : F))*k^2+(-3 : F))*Y+(((((((33*k^2+219)*k^2+621)*k^2+975)*k^2+915)*k^2+513)*k^2+159)*k^2+21))*Y+((((((((-57 : F)*k^2+(-375 : F))*k^2+(-1053 : F))*k^2+(-1635 : F))*k^2+(-1515 : F))*k^2+(-837 : F))*k^2+(-255 : F))*k^2+(-33 : F)))*Y+(((((((27*k^2+177)*k^2+495)*k^2+765)*k^2+705)*k^2+387)*k^2+117)*k^2+15))*Y))*X+((((((((((((((-3 : F)/2)*k^2+((-21 : F)/2))*k^2+((-63 : F)/2))*k^2+((-105 : F)/2))*k^2+((-105 : F)/2))*k^2+((-63 : F)/2))*k^2+((-21 : F)/2))*k^2+((-3 : F)/2))*Y+(((((((45*k^2+288)*k^2+789)*k^2+1200)*k^2+1095)*k^2+600)*k^2+183)*k^2+24))*Y+((((((((-219 : F)*k^2+(-1386 : F))*k^2+(-3759 : F))*k^2+(-5646 : F))*k^2+(-5049 : F))*k^2+(-2670 : F))*k^2+(-765 : F))*k^2+(-90 : F)))*Y+(((((((297*k^2+1878)*k^2+5145)*k^2+7758)*k^2+6843)*k^2+3498)*k^2+963)*k^2+114))*Y+(((((((((-243 : F)/2)*k^2+((-1539 : F)/2))*k^2+((-4287 : F)/2))*k^2+((-6327 : F)/2))*k^2+((-5097 : F)/2))*k^2+((-2217 : F)/2))*k^2+((-549 : F)/2))*k^2+((-93 : F)/2)))*Y+(((((-96 : F)*k^2+(-288 : F))*k^2+(-288 : F))*k^2+(-96 : F))*k^2)))*X+((((((((((((15*k^2+90)*k^2+231)*k^2+330)*k^2+285)*k^2+150)*k^2+45)*k^2+6)*Y+((((((((-177 : F)*k^2+(-1029 : F))*k^2+(-2589 : F))*k^2+(-3657 : F))*k^2+(-3123 : F))*k^2+(-1599 : F))*k^2+(-447 : F))*k^2+(-51 : F)))*Y+(((((((405*k^2+2559)*k^2+7137)*k^2+10995)*k^2+9807)*k^2+4941)*k^2+1275)*k^2+129))*Y+((((((((-243 : F)*k^2+(-1863 : F))*k^2+(-6615 : F))*k^2+(-11379 : F))*k^2+(-9945 : F))*k^2+(-4485 : F))*k^2+(-1053 : F))*k^2+(-129 : F)))*Y+((((((243*k^2+1836)*k^2+2847)*k^2+768)*k^2+(-831 : F))*k^2+(-300 : F))*k^2+45))*Y+((((864*k^2+2208)*k^2+1824)*k^2+480)*k^2)))*X+((((((((((((((-27 : F)/2)*k^2+((-159 : F)/2))*k^2+((-399 : F)/2))*k^2+((-555 : F)/2))*k^2+((-465 : F)/2))*k^2+((-237 : F)/2))*k^2+((-69 : F)/2))*k^2+((-9 : F)/2))*Y+(((((((135*k^2+714)*k^2+1755)*k^2+2550)*k^2+2253)*k^2+1134)*k^2+273)*k^2+18))*Y+(((((((((-243 : F)/2)*k^2+((-1755 : F)/2))*k^2+((-7431 : F)/2))*k^2+((-14103 : F)/2))*k^2+((-12441 : F)/2))*k^2+((-5025 : F)/2))*k^2+((-813 : F)/2))*k^2+((-45 : F)/2)))*Y+((((((243*k^2+4104)*k^2+6939)*k^2+3432)*k^2+105)*k^2+(-240 : F))*k^2+9))*Y+((((((-1944 : F)*k^2+(-2160 : F))*k^2+2496)*k^2+3696)*k^2+984)*k^2))*Y+((((-1728 : F)*k^2+(-2304 : F))*k^2+(-576 : F))*k^2)))

def denominator_p0_p3_b (X Y k : F) : F := (minusFactor X k)*(thirdMinusFactor X Y k)*(plusFactor X k)*(thirdPlusFactor X Y k)*(Y)^2

theorem cleared_p0_p3 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p0_p3 X Y k).a * denominator_p0_p3_a X Y k = numerator_p0_p3_a X Y k ∧
    (pairedQuad_p0_p3 X Y k).b * denominator_p0_p3_b X Y k = numerator_p0_p3_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p0_p3 X Y k)).re * _ = _
    simp only [pairedQuad_p0_p3, quadNewton_p0_p3, quadSide, quadReconstructionData,
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
      denominator_p0_p3_a, numerator_p0_p3_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p0_p3 X Y k)).im * _ = _
    simp only [pairedQuad_p0_p3, quadNewton_p0_p3, quadSide, quadReconstructionData,
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
      denominator_p0_p3_b, numerator_p0_p3_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p0_p3
end NoFourMUBs.Step2.Critical.NonzeroClearing
