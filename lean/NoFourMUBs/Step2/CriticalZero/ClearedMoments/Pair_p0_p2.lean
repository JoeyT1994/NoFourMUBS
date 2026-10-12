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

def numerator_p0_p2_a (X Y k : F) : F := (((((((((((((3*k^2+21)*k^2+63)*k^2+105)*k^2+105)*k^2+63)*k^2+21)*k^2+3)*Y+((((((((-3 : F)*k^2+(-15 : F))*k^2+(-35 : F))*k^2+(-47 : F))*k^2+(-33 : F))*k^2+(-5 : F))*k^2+7)*k^2+3))*Y+((((((-16 : F)*k^2+(-64 : F))*k^2+(-96 : F))*k^2+(-64 : F))*k^2+(-16 : F))*k^2))*X+((((((((((6*k^2+42)*k^2+126)*k^2+210)*k^2+210)*k^2+126)*k^2+42)*k^2+6)*Y+((((((((-60 : F)*k^2+(-384 : F))*k^2+(-1060 : F))*k^2+(-1624 : F))*k^2+(-1476 : F))*k^2+(-784 : F))*k^2+(-220 : F))*k^2+(-24 : F)))*Y+(((((((54*k^2+246)*k^2+502)*k^2+534)*k^2+210)*k^2+(-110 : F))*k^2+(-126 : F))*k^2+(-30 : F)))*Y+(((((288*k^2+1024)*k^2+1344)*k^2+768)*k^2+160)*k^2)))*X+(((((((((((3*k^2+21)*k^2+63)*k^2+105)*k^2+105)*k^2+63)*k^2+21)*k^2+3)*Y+((((((((-87 : F)*k^2+(-549 : F))*k^2+(-1487 : F))*k^2+(-2237 : F))*k^2+(-2013 : F))*k^2+(-1079 : F))*k^2+(-317 : F))*k^2+(-39 : F)))*Y+(((((((351*k^2+2049)*k^2+5283)*k^2+7629)*k^2+6477)*k^2+3123)*k^2+753)*k^2+63))*Y+((((((((-243 : F)*k^2+(-1053 : F))*k^2+(-2211 : F))*k^2+(-2173 : F))*k^2+(-289 : F))*k^2+1009)*k^2+631)*k^2+105))*Y+((((((-1728 : F)*k^2+(-5280 : F))*k^2+(-5856 : F))*k^2+(-2784 : F))*k^2+(-480 : F))*k^2)))*X+((((((((((((-30 : F)*k^2+(-180 : F))*k^2+(-462 : F))*k^2+(-660 : F))*k^2+(-570 : F))*k^2+(-300 : F))*k^2+(-90 : F))*k^2+(-12 : F))*Y+(((((((324*k^2+1818)*k^2+4468)*k^2+6218)*k^2+5244)*k^2+2638)*k^2+716)*k^2+78))*Y+((((((((-486 : F)*k^2+(-2700 : F))*k^2+(-7614 : F))*k^2+(-12052 : F))*k^2+(-10498 : F))*k^2+(-4772 : F))*k^2+(-986 : F))*k^2+(-60 : F)))*Y+((((((486*k^2+3672)*k^2+5166)*k^2+992)*k^2+(-1918 : F))*k^2+(-1080 : F))*k^2+(-150 : F)))*Y+(((((3888*k^2+9504)*k^2+8256)*k^2+3040)*k^2+400)*k^2)))*X+(((((((((((27*k^2+159)*k^2+399)*k^2+555)*k^2+465)*k^2+237)*k^2+69)*k^2+9)*Y+((((((((-243 : F)*k^2+(-1215 : F))*k^2+(-2931 : F))*k^2+(-4191 : F))*k^2+(-3601 : F))*k^2+(-1781 : F))*k^2+(-457 : F))*k^2+(-45 : F)))*Y+((((((486*k^2+3888)*k^2+8022)*k^2+7024)*k^2+2866)*k^2+480)*k^2+18))*Y+((((((-5832 : F)*k^2+(-9720 : F))*k^2+(-5040 : F))*k^2+(-336 : F))*k^2+376)*k^2+72))*Y))

def denominator_p0_p2_a (X Y k : F) : F := (Y)*(minusFactor X k)*(thirdMinusFactor X Y k)*(plusFactor X k)*(thirdPlusFactor X Y k)

def numerator_p0_p2_b (X Y k : F) : F := (((((((((((((2*k^2+12)*k^2+30)*k^2+40)*k^2+30)*k^2+12)*k^2+2)*k)*Y+((((((((-2 : F)*k^2+(-12 : F))*k^2+(-30 : F))*k^2+(-40 : F))*k^2+(-30 : F))*k^2+(-12 : F))*k^2+(-2 : F))*k))*Y)*X+((((((((((4*k^2+24)*k^2+60)*k^2+80)*k^2+60)*k^2+24)*k^2+4)*k)*Y+((((((((-40 : F)*k^2+(-224 : F))*k^2+(-520 : F))*k^2+(-640 : F))*k^2+(-440 : F))*k^2+(-160 : F))*k^2+(-24 : F))*k))*Y+(((((((36*k^2+200)*k^2+460)*k^2+560)*k^2+380)*k^2+136)*k^2+20)*k))*Y))*X+(((((((((((2*k^2+12)*k^2+30)*k^2+40)*k^2+30)*k^2+12)*k^2+2)*k)*Y+((((((((-52 : F)*k^2+(-292 : F))*k^2+(-680 : F))*k^2+(-840 : F))*k^2+(-580 : F))*k^2+(-212 : F))*k^2+(-32 : F))*k))*Y+(((((((282*k^2+1460)*k^2+3118)*k^2+3512)*k^2+2198)*k^2+724)*k^2+98)*k))*Y+((((((((-216 : F)*k^2+(-1116 : F))*k^2+(-2356 : F))*k^2+(-2584 : F))*k^2+(-1536 : F))*k^2+(-460 : F))*k^2+(-52 : F))*k))*Y+((((-128 : F)*k^2+(-256 : F))*k^2+(-128 : F))*k^3)))*X+((((((((((((-14 : F)*k^2+(-80 : F))*k^2+(-190 : F))*k^2+(-240 : F))*k^2+(-170 : F))*k^2+(-64 : F))*k^2+(-10 : F))*k)*Y+(((((((210*k^2+1096)*k^2+2362)*k^2+2688)*k^2+1702)*k^2+568)*k^2+78)*k))*Y+((((((((-810 : F)*k^2+(-3840 : F))*k^2+(-7466 : F))*k^2+(-7600 : F))*k^2+(-4254 : F))*k^2+(-1232 : F))*k^2+(-142 : F))*k))*Y+(((((((486*k^2+2376)*k^2+4590)*k^2+4256)*k^2+1826)*k^2+280)*k^2+10)*k))*Y+(((1152*k^2+1792)*k^2+640)*k^3)))*X+(((((((((((12*k^2+68)*k^2+160)*k^2+200)*k^2+140)*k^2+52)*k^2+8)*k)*Y+((((((((-162 : F)*k^2+(-852 : F))*k^2+(-1798 : F))*k^2+(-1944 : F))*k^2+(-1134 : F))*k^2+(-340 : F))*k^2+(-42 : F))*k))*Y+(((((((486*k^2+2160)*k^2+3750)*k^2+3312)*k^2+1618)*k^2+416)*k^2+34)*k))*Y+((((((-432 : F)*k^2+(-96 : F))*k^2+896)*k^2+608)*k^2+48)*k))*Y+((((-3456 : F)*k^2+(-3072 : F))*k^2+(-640 : F))*k^3)))

def denominator_p0_p2_b (X Y k : F) : F := (Y)*(minusFactor X k)*(thirdMinusFactor X Y k)*(plusFactor X k)*(thirdPlusFactor X Y k)

theorem cleared_p0_p2 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p0_p2 X Y k).a * denominator_p0_p2_a X Y k = numerator_p0_p2_a X Y k ∧
    (pairedQuad_p0_p2 X Y k).b * denominator_p0_p2_b X Y k = numerator_p0_p2_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p0_p2 X Y k)).re * _ = _
    simp only [pairedQuad_p0_p2, quadNewton_p0_p2, quadSide, quadReconstructionData,
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
      denominator_p0_p2_a, numerator_p0_p2_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p0_p2 X Y k)).im * _ = _
    simp only [pairedQuad_p0_p2, quadNewton_p0_p2, quadSide, quadReconstructionData,
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
      denominator_p0_p2_b, numerator_p0_p2_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p0_p2
end NoFourMUBs.Step2.Critical.NonzeroClearing
