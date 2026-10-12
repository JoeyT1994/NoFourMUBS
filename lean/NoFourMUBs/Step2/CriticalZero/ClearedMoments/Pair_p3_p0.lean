import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair08
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

def numerator_p3_p0_a (X Y k : F) : F := (((((((((((((((((-9 : F)*k^2+(-63 : F))*k^2+(-189 : F))*k^2+(-315 : F))*k^2+(-315 : F))*k^2+(-189 : F))*k^2+(-63 : F))*k^2+(-9 : F))*k)*Y+((((((((63*k^2+423)*k^2+1215)*k^2+1935)*k^2+1845)*k^2+1053)*k^2+333)*k^2+45)*k))*Y+(((((((((-54 : F)*k^2+(-360 : F))*k^2+(-1026 : F))*k^2+(-1620 : F))*k^2+(-1530 : F))*k^2+(-864 : F))*k^2+(-270 : F))*k^2+(-36 : F))*k))*X+((((((((((((-18 : F)*k^2+(-126 : F))*k^2+(-378 : F))*k^2+(-630 : F))*k^2+(-630 : F))*k^2+(-378 : F))*k^2+(-126 : F))*k^2+(-18 : F))*k)*Y+((((((((243*k^2+1587)*k^2+4419)*k^2+6795)*k^2+6225)*k^2+3393)*k^2+1017)*k^2+129)*k))*Y+(((((((((-1008 : F)*k^2+(-6096 : F))*k^2+(-15696 : F))*k^2+(-22272 : F))*k^2+(-18768 : F))*k^2+(-9360 : F))*k^2+(-2544 : F))*k^2+(-288 : F))*k))*Y+((((((((783*k^2+4599)*k^2+11535)*k^2+15999)*k^2+13221)*k^2+6477)*k^2+1725)*k^2+189)*k)))*X+(((((((((((((-9 : F)*k^2+(-63 : F))*k^2+(-189 : F))*k^2+(-315 : F))*k^2+(-315 : F))*k^2+(-189 : F))*k^2+(-63 : F))*k^2+(-9 : F))*k)*Y+((((((((198*k^2+1266)*k^2+3438)*k^2+5130)*k^2+4530)*k^2+2358)*k^2+666)*k^2+78)*k))*Y+(((((((((-1503 : F)*k^2+(-8703 : F))*k^2+(-21207 : F))*k^2+(-28047 : F))*k^2+(-21573 : F))*k^2+(-9525 : F))*k^2+(-2181 : F))*k^2+(-189 : F))*k))*Y+((((((((4590*k^2+24006)*k^2+52542)*k^2+61686)*k^2+41178)*k^2+15138)*k^2+2682)*k^2+162)*k))*Y+(((((((((-2916 : F)*k^2+(-15174 : F))*k^2+(-33432 : F))*k^2+(-38970 : F))*k^2+(-24900 : F))*k^2+(-8442 : F))*k^2+(-1536 : F))*k^2+(-198 : F))*k)))*X+((((((((((((18*k^2+102)*k^2+234)*k^2+270)*k^2+150)*k^2+18)*k^2+(-18 : F))*k^2+(-6 : F))*k)*Y+(((((((((-342 : F)*k^2+(-1722 : F))*k^2+(-3342 : F))*k^2+(-2850 : F))*k^2+(-450 : F))*k^2+978)*k^2+678)*k^2+138)*k))*Y+((((((((2241*k^2+10041)*k^2+16353)*k^2+8913)*k^2+(-5301 : F))*k^2+(-9405 : F))*k^2+(-4461 : F))*k^2+(-717 : F))*k))*Y+(((((((((-5832 : F)*k^2+(-24408 : F))*k^2+(-36792 : F))*k^2+(-15768 : F))*k^2+16392)*k^2+21048)*k^2+8184)*k^2+1080)*k))*Y+((((((((2187*k^2+10935)*k^2+20979)*k^2+9255)*k^2+(-9687 : F))*k^2+(-7875 : F))*k^2+(-1191 : F))*k^2+(-27 : F))*k)))*X+(((((((((((((-9 : F)*k^2+(-15 : F))*k^2+99)*k^2+405)*k^2+645)*k^2+531)*k^2+225)*k^2+39)*k)*Y+((((((((162*k^2+150)*k^2+(-2118 : F))*k^2+(-7170 : F))*k^2+(-10170 : F))*k^2+(-7518 : F))*k^2+(-2850 : F))*k^2+(-438 : F))*k))*Y+(((((((((-972 : F)*k^2+(-918 : F))*k^2+10992)*k^2+36006)*k^2+48228)*k^2+32694)*k^2+11064)*k^2+1530)*k))*Y+((((((((2187*k^2+6075)*k^2+(-5157 : F))*k^2+(-45885 : F))*k^2+(-68967 : F))*k^2+(-42951 : F))*k^2+(-12543 : F))*k^2+(-1719 : F))*k))*Y+((((((1944*k^2+30888)*k^2+24624)*k^2+2832)*k^2+(-1992 : F))*k^2+72)*k)))*X+((((((((((((-24 : F)*k^2+(-144 : F))*k^2+(-360 : F))*k^2+(-480 : F))*k^2+(-360 : F))*k^2+(-144 : F))*k^2+(-24 : F))*k)*Y+(((((((432*k^2+2400)*k^2+5520)*k^2+6720)*k^2+4560)*k^2+1632)*k^2+240)*k))*Y+((((((((-1944 : F)*k^2+(-10368 : F))*k^2+(-23352 : F))*k^2+(-26496 : F))*k^2+(-15432 : F))*k^2+(-4608 : F))*k^2+(-744 : F))*k))*Y+((((((3888*k^2+20304)*k^2+21408)*k^2+4320)*k^2+48)*k^2+720)*k))*Y+(((((-15552 : F)*k^2+(-1728 : F))*k^2+21696)*k^2+7872)*k^3)))*X+((((((-768 : F)*k^2+(-1536 : F))*k^2+(-768 : F))*k^3)*Y+(((6912*k^2+10752)*k^2+3840)*k^3))*Y+(((-13824 : F)*k^2+(-4608 : F))*k^3)))

def denominator_p3_p0_a (X Y k : F) : F := (h k)*(minusFactor Y k)*(plusFactor Y k)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)*(X)^3

def numerator_p3_p0_b (X Y k : F) : F := (((((((((((((((((3 : F)/2)*k^2+((21 : F)/2))*k^2+((63 : F)/2))*k^2+((105 : F)/2))*k^2+((105 : F)/2))*k^2+((63 : F)/2))*k^2+((21 : F)/2))*k^2+((3 : F)/2))*Y+((((((((-15 : F)*k^2+(-90 : F))*k^2+(-231 : F))*k^2+(-330 : F))*k^2+(-285 : F))*k^2+(-150 : F))*k^2+(-45 : F))*k^2+(-6 : F)))*Y+(((((((((27 : F)/2)*k^2+((159 : F)/2))*k^2+((399 : F)/2))*k^2+((555 : F)/2))*k^2+((465 : F)/2))*k^2+((237 : F)/2))*k^2+((69 : F)/2))*k^2+((9 : F)/2)))*Y)*X+(((((((((((3*k^2+21)*k^2+63)*k^2+105)*k^2+105)*k^2+63)*k^2+21)*k^2+3)*Y+((((((((-45 : F)*k^2+(-288 : F))*k^2+(-789 : F))*k^2+(-1200 : F))*k^2+(-1095 : F))*k^2+(-600 : F))*k^2+(-183 : F))*k^2+(-24 : F)))*Y+(((((((177*k^2+1029)*k^2+2589)*k^2+3657)*k^2+3123)*k^2+1599)*k^2+447)*k^2+51))*Y+((((((((-135 : F)*k^2+(-714 : F))*k^2+(-1755 : F))*k^2+(-2550 : F))*k^2+(-2253 : F))*k^2+(-1134 : F))*k^2+(-273 : F))*k^2+(-18 : F)))*Y))*X+((((((((((((((3 : F)/2)*k^2+((21 : F)/2))*k^2+((63 : F)/2))*k^2+((105 : F)/2))*k^2+((105 : F)/2))*k^2+((63 : F)/2))*k^2+((21 : F)/2))*k^2+((3 : F)/2))*Y+((((((((-33 : F)*k^2+(-219 : F))*k^2+(-621 : F))*k^2+(-975 : F))*k^2+(-915 : F))*k^2+(-513 : F))*k^2+(-159 : F))*k^2+(-21 : F)))*Y+(((((((219*k^2+1386)*k^2+3759)*k^2+5646)*k^2+5049)*k^2+2670)*k^2+765)*k^2+90))*Y+((((((((-405 : F)*k^2+(-2559 : F))*k^2+(-7137 : F))*k^2+(-10995 : F))*k^2+(-9807 : F))*k^2+(-4941 : F))*k^2+(-1275 : F))*k^2+(-129 : F)))*Y+(((((((((243 : F)/2)*k^2+((1755 : F)/2))*k^2+((7431 : F)/2))*k^2+((14103 : F)/2))*k^2+((12441 : F)/2))*k^2+((5025 : F)/2))*k^2+((813 : F)/2))*k^2+((45 : F)/2)))*Y))*X+(((((((((((((-3 : F)*k^2+(-21 : F))*k^2+(-63 : F))*k^2+(-105 : F))*k^2+(-105 : F))*k^2+(-63 : F))*k^2+(-21 : F))*k^2+(-3 : F))*Y+(((((((57*k^2+375)*k^2+1053)*k^2+1635)*k^2+1515)*k^2+837)*k^2+255)*k^2+33))*Y+((((((((-297 : F)*k^2+(-1878 : F))*k^2+(-5145 : F))*k^2+(-7758 : F))*k^2+(-6843 : F))*k^2+(-3498 : F))*k^2+(-963 : F))*k^2+(-114 : F)))*Y+(((((((243*k^2+1863)*k^2+6615)*k^2+11379)*k^2+9945)*k^2+4485)*k^2+1053)*k^2+129))*Y+(((((((-243 : F)*k^2+(-4104 : F))*k^2+(-6939 : F))*k^2+(-3432 : F))*k^2+(-105 : F))*k^2+240)*k^2+(-9 : F)))*Y))*X+((((((((((((((3 : F)/2)*k^2+((21 : F)/2))*k^2+((63 : F)/2))*k^2+((105 : F)/2))*k^2+((105 : F)/2))*k^2+((63 : F)/2))*k^2+((21 : F)/2))*k^2+((3 : F)/2))*Y+((((((((-27 : F)*k^2+(-177 : F))*k^2+(-495 : F))*k^2+(-765 : F))*k^2+(-705 : F))*k^2+(-387 : F))*k^2+(-117 : F))*k^2+(-15 : F)))*Y+(((((((((243 : F)/2)*k^2+((1539 : F)/2))*k^2+((4287 : F)/2))*k^2+((6327 : F)/2))*k^2+((5097 : F)/2))*k^2+((2217 : F)/2))*k^2+((549 : F)/2))*k^2+((93 : F)/2)))*Y+(((((((-243 : F)*k^2+(-1836 : F))*k^2+(-2847 : F))*k^2+(-768 : F))*k^2+831)*k^2+300)*k^2+(-45 : F)))*Y+(((((1944*k^2+2160)*k^2+(-2496 : F))*k^2+(-3696 : F))*k^2+(-984 : F))*k^2))*Y))*X+(((((((96*k^2+288)*k^2+288)*k^2+96)*k^2)*Y+(((((-864 : F)*k^2+(-2208 : F))*k^2+(-1824 : F))*k^2+(-480 : F))*k^2))*Y+(((1728*k^2+2304)*k^2+576)*k^2))*Y))

def denominator_p3_p0_b (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)*(X)^3

theorem cleared_p3_p0 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p3_p0 X Y k).a * denominator_p3_p0_a X Y k = numerator_p3_p0_a X Y k ∧
    (pairedQuad_p3_p0 X Y k).b * denominator_p3_p0_b X Y k = numerator_p3_p0_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p3_p0 X Y k)).re * _ = _
    simp only [pairedQuad_p3_p0, quadNewton_p3_p0, quadSide, quadReconstructionData,
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
      denominator_p3_p0_a, numerator_p3_p0_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p3_p0 X Y k)).im * _ = _
    simp only [pairedQuad_p3_p0, quadNewton_p3_p0, quadSide, quadReconstructionData,
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
      denominator_p3_p0_b, numerator_p3_p0_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p3_p0
end NoFourMUBs.Step2.Critical.NonzeroClearing
