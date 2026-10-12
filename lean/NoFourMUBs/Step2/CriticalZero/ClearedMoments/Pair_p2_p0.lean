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

def numerator_p2_p0_a (X Y k : F) : F := ((((((((((((((((3*k^2+27)*k^2+108)*k^2+252)*k^2+378)*k^2+378)*k^2+252)*k^2+108)*k^2+27)*k^2+3)*Y+((((((((((-30 : F)*k^2+(-240 : F))*k^2+(-852 : F))*k^2+(-1764 : F))*k^2+(-2352 : F))*k^2+(-2100 : F))*k^2+(-1260 : F))*k^2+(-492 : F))*k^2+(-114 : F))*k^2+(-12 : F)))*Y+(((((((((27*k^2+213)*k^2+744)*k^2+1512)*k^2+1974)*k^2+1722)*k^2+1008)*k^2+384)*k^2+87)*k^2+9))*X+((((((((((((6*k^2+54)*k^2+216)*k^2+504)*k^2+756)*k^2+756)*k^2+504)*k^2+216)*k^2+54)*k^2+6)*Y+((((((((((-87 : F)*k^2+(-723 : F))*k^2+(-2656 : F))*k^2+(-5664 : F))*k^2+(-7734 : F))*k^2+(-7022 : F))*k^2+(-4248 : F))*k^2+(-1656 : F))*k^2+(-379 : F))*k^2+(-39 : F)))*Y+(((((((((324*k^2+2466)*k^2+8316)*k^2+16332)*k^2+20628)*k^2+17424)*k^2+9876)*k^2+3636)*k^2+792)*k^2+78))*Y+((((((((((-243 : F)*k^2+(-1701 : F))*k^2+(-5508 : F))*k^2+(-10724 : F))*k^2+(-13634 : F))*k^2+(-11574 : F))*k^2+(-6500 : F))*k^2+(-2324 : F))*k^2+(-483 : F))*k^2+(-45 : F))))*X+(((((((((((((3*k^2+27)*k^2+108)*k^2+252)*k^2+378)*k^2+378)*k^2+252)*k^2+108)*k^2+27)*k^2+3)*Y+((((((((((-60 : F)*k^2+(-504 : F))*k^2+(-1856 : F))*k^2+(-3936 : F))*k^2+(-5304 : F))*k^2+(-4720 : F))*k^2+(-2784 : F))*k^2+(-1056 : F))*k^2+(-236 : F))*k^2+(-24 : F)))*Y+(((((((((351*k^2+2751)*k^2+9316)*k^2+17908)*k^2+21578)*k^2+16986)*k^2+8836)*k^2+2996)*k^2+623)*k^2+63))*Y+((((((((((-486 : F)*k^2+(-3672 : F))*k^2+(-11820 : F))*k^2+(-21212 : F))*k^2+(-23320 : F))*k^2+(-16316 : F))*k^2+(-7412 : F))*k^2+(-2260 : F))*k^2+(-482 : F))*k^2+(-60 : F)))*Y+((((((((486*k^2+3564)*k^2+9468)*k^2+12572)*k^2+9384)*k^2+4164)*k^2+1124)*k^2+180)*k^2+18)))*X+((((((((((((((-3 : F)*k^2+(-21 : F))*k^2+(-52 : F))*k^2+(-36 : F))*k^2+78)*k^2+202)*k^2+204)*k^2+108)*k^2+29)*k^2+3)*Y+(((((((((54*k^2+354)*k^2+728)*k^2+(-8 : F))*k^2+(-2380 : F))*k^2+(-4276 : F))*k^2+(-3656 : F))*k^2+(-1672 : F))*k^2+(-378 : F))*k^2+(-30 : F)))*Y+((((((((((-243 : F)*k^2+(-1539 : F))*k^2+(-2304 : F))*k^2+4032)*k^2+18098)*k^2+26354)*k^2+19944)*k^2+8168)*k^2+1625)*k^2+105))*Y+((((((((486*k^2+(-1836 : F))*k^2+(-17724 : F))*k^2+(-44732 : F))*k^2+(-55568 : F))*k^2+(-37956 : F))*k^2+(-14084 : F))*k^2+(-2516 : F))*k^2+(-150 : F)))*Y+((((((((-1944 : F)*k^2+(-4104 : F))*k^2+(-312 : F))*k^2+6360)*k^2+7608)*k^2+3816)*k^2+792)*k^2+72)))*X+((((((((((((-32 : F)*k^2+(-192 : F))*k^2+(-480 : F))*k^2+(-640 : F))*k^2+(-480 : F))*k^2+(-192 : F))*k^2+(-32 : F))*k^2)*Y+(((((((576*k^2+3200)*k^2+7360)*k^2+8960)*k^2+6080)*k^2+2176)*k^2+320)*k^2))*Y+((((((((-3456 : F)*k^2+(-17664 : F))*k^2+(-36992 : F))*k^2+(-40448 : F))*k^2+(-24192 : F))*k^2+(-7424 : F))*k^2+(-896 : F))*k^2))*Y+(((((((7776*k^2+36288)*k^2+67872)*k^2+63104)*k^2+29344)*k^2+6080)*k^2+480)*k^2))*Y+((((((-3456 : F)*k^2+(-768 : F))*k^2+7168)*k^2+4864)*k^2+384)*k^2)))*X+((((((-1024 : F)*k^2+(-2048 : F))*k^2+(-1024 : F))*k^4)*Y+(((9216*k^2+14336)*k^2+5120)*k^4))*Y+((((-27648 : F)*k^2+(-24576 : F))*k^2+(-5120 : F))*k^4)))

def denominator_p2_p0_a (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)*(h k)^2*(X)^2

def numerator_p2_p0_b (X Y k : F) : F := (((((((((((((((-2 : F)*k^2+(-12 : F))*k^2+(-30 : F))*k^2+(-40 : F))*k^2+(-30 : F))*k^2+(-12 : F))*k^2+(-2 : F))*k)*Y+(((((((14*k^2+80)*k^2+190)*k^2+240)*k^2+170)*k^2+64)*k^2+10)*k))*Y+((((((((-12 : F)*k^2+(-68 : F))*k^2+(-160 : F))*k^2+(-200 : F))*k^2+(-140 : F))*k^2+(-52 : F))*k^2+(-8 : F))*k))*Y)*X+((((((((((((-4 : F)*k^2+(-24 : F))*k^2+(-60 : F))*k^2+(-80 : F))*k^2+(-60 : F))*k^2+(-24 : F))*k^2+(-4 : F))*k)*Y+(((((((52*k^2+292)*k^2+680)*k^2+840)*k^2+580)*k^2+212)*k^2+32)*k))*Y+((((((((-210 : F)*k^2+(-1096 : F))*k^2+(-2362 : F))*k^2+(-2688 : F))*k^2+(-1702 : F))*k^2+(-568 : F))*k^2+(-78 : F))*k))*Y+(((((((162*k^2+852)*k^2+1798)*k^2+1944)*k^2+1134)*k^2+340)*k^2+42)*k))*Y))*X+(((((((((((((-2 : F)*k^2+(-12 : F))*k^2+(-30 : F))*k^2+(-40 : F))*k^2+(-30 : F))*k^2+(-12 : F))*k^2+(-2 : F))*k)*Y+(((((((40*k^2+224)*k^2+520)*k^2+640)*k^2+440)*k^2+160)*k^2+24)*k))*Y+((((((((-282 : F)*k^2+(-1460 : F))*k^2+(-3118 : F))*k^2+(-3512 : F))*k^2+(-2198 : F))*k^2+(-724 : F))*k^2+(-98 : F))*k))*Y+(((((((810*k^2+3840)*k^2+7466)*k^2+7600)*k^2+4254)*k^2+1232)*k^2+142)*k))*Y+((((((((-486 : F)*k^2+(-2160 : F))*k^2+(-3750 : F))*k^2+(-3312 : F))*k^2+(-1618 : F))*k^2+(-416 : F))*k^2+(-34 : F))*k))*Y))*X+((((((((((((2*k^2+12)*k^2+30)*k^2+40)*k^2+30)*k^2+12)*k^2+2)*k)*Y+((((((((-36 : F)*k^2+(-200 : F))*k^2+(-460 : F))*k^2+(-560 : F))*k^2+(-380 : F))*k^2+(-136 : F))*k^2+(-20 : F))*k))*Y+(((((((216*k^2+1116)*k^2+2356)*k^2+2584)*k^2+1536)*k^2+460)*k^2+52)*k))*Y+((((((((-486 : F)*k^2+(-2376 : F))*k^2+(-4590 : F))*k^2+(-4256 : F))*k^2+(-1826 : F))*k^2+(-280 : F))*k^2+(-10 : F))*k))*Y+(((((432*k^2+96)*k^2+(-896 : F))*k^2+(-608 : F))*k^2+(-48 : F))*k))*Y))*X+((((((128*k^2+256)*k^2+128)*k^3)*Y+((((-1152 : F)*k^2+(-1792 : F))*k^2+(-640 : F))*k^3))*Y+(((3456*k^2+3072)*k^2+640)*k^3))*Y))

def denominator_p2_p0_b (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)*(X)^2

theorem cleared_p2_p0 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p2_p0 X Y k).a * denominator_p2_p0_a X Y k = numerator_p2_p0_a X Y k ∧
    (pairedQuad_p2_p0 X Y k).b * denominator_p2_p0_b X Y k = numerator_p2_p0_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p2_p0 X Y k)).re * _ = _
    simp only [pairedQuad_p2_p0, quadNewton_p2_p0, quadSide, quadReconstructionData,
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
      denominator_p2_p0_a, numerator_p2_p0_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p2_p0 X Y k)).im * _ = _
    simp only [pairedQuad_p2_p0, quadNewton_p2_p0, quadSide, quadReconstructionData,
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
      denominator_p2_p0_b, numerator_p2_p0_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p2_p0
end NoFourMUBs.Step2.Critical.NonzeroClearing
