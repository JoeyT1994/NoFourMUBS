import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair06
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

def numerator_p2_m2_a (X Y k : F) : F := ((((((((((((((((((((-3 : F)*k^2+(-33 : F))*k^2+(-165 : F))*k^2+(-495 : F))*k^2+(-990 : F))*k^2+(-1386 : F))*k^2+(-1386 : F))*k^2+(-990 : F))*k^2+(-495 : F))*k^2+(-165 : F))*k^2+(-33 : F))*k^2+(-3 : F))*Y+(((((((((((30*k^2+300)*k^2+1362)*k^2+3708)*k^2+6732)*k^2+8568)*k^2+7812)*k^2+5112)*k^2+2358)*k^2+732)*k^2+138)*k^2+12))*Y+((((((((((((-27 : F)*k^2+(-267 : F))*k^2+(-1197 : F))*k^2+(-3213 : F))*k^2+(-5742 : F))*k^2+(-7182 : F))*k^2+(-6426 : F))*k^2+(-4122 : F))*k^2+(-1863 : F))*k^2+(-567 : F))*k^2+(-105 : F))*k^2+(-9 : F)))*Y)*X+((((((((((((((((-6 : F)*k^2+(-66 : F))*k^2+(-330 : F))*k^2+(-990 : F))*k^2+(-1980 : F))*k^2+(-2772 : F))*k^2+(-2772 : F))*k^2+(-1980 : F))*k^2+(-990 : F))*k^2+(-330 : F))*k^2+(-66 : F))*k^2+(-6 : F))*Y+(((((((((((141*k^2+1443)*k^2+6687)*k^2+18537)*k^2+34194)*k^2+44142)*k^2+40782)*k^2+27042)*k^2+12657)*k^2+3999)*k^2+771)*k^2+69))*Y+((((((((((((-864 : F)*k^2+(-8274 : F))*k^2+(-35704 : F))*k^2+(-91710 : F))*k^2+(-156032 : F))*k^2+(-185108 : F))*k^2+(-156912 : F))*k^2+(-95644 : F))*k^2+(-41440 : F))*k^2+(-12282 : F))*k^2+(-2264 : F))*k^2+(-198 : F)))*Y+(((((((((((729*k^2+6993)*k^2+29907)*k^2+75443)*k^2+125098)*k^2+143802)*k^2+117718)*k^2+69302)*k^2+29133)*k^2+8453)*k^2+1543)*k^2+135))*Y))*X+(((((((((((((((((-3 : F)*k^2+(-33 : F))*k^2+(-165 : F))*k^2+(-495 : F))*k^2+(-990 : F))*k^2+(-1386 : F))*k^2+(-1386 : F))*k^2+(-990 : F))*k^2+(-495 : F))*k^2+(-165 : F))*k^2+(-33 : F))*k^2+(-3 : F))*Y+(((((((((((141*k^2+1443)*k^2+6687)*k^2+18537)*k^2+34194)*k^2+44142)*k^2+40782)*k^2+27042)*k^2+12657)*k^2+3999)*k^2+771)*k^2+69))*Y+((((((((((((-1890 : F)*k^2+(-18240 : F))*k^2+(-79202 : F))*k^2+(-204468 : F))*k^2+(-349348 : F))*k^2+(-416080 : F))*k^2+(-354228 : F))*k^2+(-217112 : F))*k^2+(-94778 : F))*k^2+(-28368 : F))*k^2+(-5290 : F))*k^2+(-468 : F)))*Y+(((((((((((8505*k^2+78273)*k^2+321891)*k^2+781107)*k^2+1244330)*k^2+1370586)*k^2+1071798)*k^2+601846)*k^2+242157)*k^2+68085)*k^2+12311)*k^2+1095))*Y+((((((((((((-6561 : F)*k^2+(-62451 : F))*k^2+(-258795 : F))*k^2+(-618681 : F))*k^2+(-950778 : F))*k^2+(-990126 : F))*k^2+(-718854 : F))*k^2+(-370530 : F))*k^2+(-137781 : F))*k^2+(-37263 : F))*k^2+(-6975 : F))*k^2+(-693 : F)))*Y+(((((((((-1728 : F)*k^2+(-10176 : F))*k^2+(-25536 : F))*k^2+(-35520 : F))*k^2+(-29760 : F))*k^2+(-15168 : F))*k^2+(-4416 : F))*k^2+(-576 : F))*k^2)))*X+((((((((((((((((30*k^2+300)*k^2+1362)*k^2+3708)*k^2+6732)*k^2+8568)*k^2+7812)*k^2+5112)*k^2+2358)*k^2+732)*k^2+138)*k^2+12)*Y+((((((((((((-864 : F)*k^2+(-8274 : F))*k^2+(-35704 : F))*k^2+(-91710 : F))*k^2+(-156032 : F))*k^2+(-185108 : F))*k^2+(-156912 : F))*k^2+(-95644 : F))*k^2+(-41440 : F))*k^2+(-12282 : F))*k^2+(-2264 : F))*k^2+(-198 : F)))*Y+(((((((((((8505*k^2+78273)*k^2+321891)*k^2+781107)*k^2+1244330)*k^2+1370586)*k^2+1071798)*k^2+601846)*k^2+242157)*k^2+68085)*k^2+12311)*k^2+1095))*Y+((((((((((((-30618 : F)*k^2+(-275562 : F))*k^2+(-1094742 : F))*k^2+(-2532006 : F))*k^2+(-3785604 : F))*k^2+(-3844772 : F))*k^2+(-2720876 : F))*k^2+(-1362444 : F))*k^2+(-489794 : F))*k^2+(-127826 : F))*k^2+(-23262 : F))*k^2+(-2286 : F)))*Y+(((((((((((19683*k^2+203391)*k^2+856089)*k^2+1971189)*k^2+2761422)*k^2+2448262)*k^2+1374946)*k^2+475514)*k^2+100351)*k^2+19243)*k^2+6485)*k^2+1377))*Y+((((((((31104*k^2+176256)*k^2+400512)*k^2+485760)*k^2+351872)*k^2+159616)*k^2+43904)*k^2+5760)*k^2)))*X+(((((((((((((((((-27 : F)*k^2+(-267 : F))*k^2+(-1197 : F))*k^2+(-3213 : F))*k^2+(-5742 : F))*k^2+(-7182 : F))*k^2+(-6426 : F))*k^2+(-4122 : F))*k^2+(-1863 : F))*k^2+(-567 : F))*k^2+(-105 : F))*k^2+(-9 : F))*Y+(((((((((((729*k^2+6993)*k^2+29907)*k^2+75443)*k^2+125098)*k^2+143802)*k^2+117718)*k^2+69302)*k^2+29133)*k^2+8453)*k^2+1543)*k^2+135))*Y+((((((((((((-6561 : F)*k^2+(-62451 : F))*k^2+(-258795 : F))*k^2+(-618681 : F))*k^2+(-950778 : F))*k^2+(-990126 : F))*k^2+(-718854 : F))*k^2+(-370530 : F))*k^2+(-137781 : F))*k^2+(-37263 : F))*k^2+(-6975 : F))*k^2+(-693 : F)))*Y+(((((((((((19683*k^2+203391)*k^2+856089)*k^2+1971189)*k^2+2761422)*k^2+2448262)*k^2+1374946)*k^2+475514)*k^2+100351)*k^2+19243)*k^2+6485)*k^2+1377))*Y+(((((((((((-118098 : F)*k^2+(-691092 : F))*k^2+(-1591650 : F))*k^2+(-1663632 : F))*k^2+(-389508 : F))*k^2+882024)*k^2+1025356)*k^2+525104)*k^2+142870)*k^2+15756)*k^2+(-810 : F)))*Y+(((((((((-139968 : F)*k^2+(-855360 : F))*k^2+(-1833408 : F))*k^2+(-1951296 : F))*k^2+(-1192000 : F))*k^2+(-458688 : F))*k^2+(-115520 : F))*k^2+(-15552 : F))*k^2)))*X+((((((((((((-1728 : F)*k^2+(-10176 : F))*k^2+(-25536 : F))*k^2+(-35520 : F))*k^2+(-29760 : F))*k^2+(-15168 : F))*k^2+(-4416 : F))*k^2+(-576 : F))*k^2)*Y+((((((((31104*k^2+176256)*k^2+400512)*k^2+485760)*k^2+351872)*k^2+159616)*k^2+43904)*k^2+5760)*k^2))*Y+(((((((((-139968 : F)*k^2+(-855360 : F))*k^2+(-1833408 : F))*k^2+(-1951296 : F))*k^2+(-1192000 : F))*k^2+(-458688 : F))*k^2+(-115520 : F))*k^2+(-15552 : F))*k^2))*Y+(((((((839808*k^2+1928448)*k^2+1759104)*k^2+837120)*k^2+249728)*k^2+60672)*k^2+10368)*k^2)))

def denominator_p2_m2_a (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(minusFactor X k)*(plusFactor X k)*(X)^2*(h k)^4

def numerator_p2_m2_b (X Y k : F) : F := ((((((((((((((((2*k^2+16)*k^2+56)*k^2+112)*k^2+140)*k^2+112)*k^2+56)*k^2+16)*k^2+2)*k)*Y+((((((((((-14 : F)*k^2+(-108 : F))*k^2+(-364 : F))*k^2+(-700 : F))*k^2+(-840 : F))*k^2+(-644 : F))*k^2+(-308 : F))*k^2+(-84 : F))*k^2+(-10 : F))*k))*Y+(((((((((12*k^2+92)*k^2+308)*k^2+588)*k^2+700)*k^2+532)*k^2+252)*k^2+68)*k^2+8)*k))*Y^2)*X+((((((((((((((2*k^2+16)*k^2+56)*k^2+112)*k^2+140)*k^2+112)*k^2+56)*k^2+16)*k^2+2)*k)*Y+((((((((((-44 : F)*k^2+(-336 : F))*k^2+(-1120 : F))*k^2+(-2128 : F))*k^2+(-2520 : F))*k^2+(-1904 : F))*k^2+(-896 : F))*k^2+(-240 : F))*k^2+(-28 : F))*k))*Y+(((((((((204*k^2+1532)*k^2+5028)*k^2+9420)*k^2+11020)*k^2+8244)*k^2+3852)*k^2+1028)*k^2+120)*k))*Y+((((((((((-162 : F)*k^2+(-1404 : F))*k^2+(-5132 : F))*k^2+(-10444 : F))*k^2+(-13040 : F))*k^2+(-10292 : F))*k^2+(-5044 : F))*k^2+(-1412 : F))*k^2+(-174 : F))*k))*Y+((((((((216*k^2+1272)*k^2+3192)*k^2+4440)*k^2+3720)*k^2+1896)*k^2+552)*k^2+72)*k))*Y))*X+(((((((((((((((-14 : F)*k^2+(-108 : F))*k^2+(-364 : F))*k^2+(-700 : F))*k^2+(-840 : F))*k^2+(-644 : F))*k^2+(-308 : F))*k^2+(-84 : F))*k^2+(-10 : F))*k)*Y+(((((((((204*k^2+1532)*k^2+5028)*k^2+9420)*k^2+11020)*k^2+8244)*k^2+3852)*k^2+1028)*k^2+120)*k))*Y+((((((((((-756 : F)*k^2+(-6072 : F))*k^2+(-21032 : F))*k^2+(-41080 : F))*k^2+(-49584 : F))*k^2+(-37992 : F))*k^2+(-18136 : F))*k^2+(-4968 : F))*k^2+(-604 : F))*k))*Y+(((((((((486*k^2+7560)*k^2+34128)*k^2+75240)*k^2+95372)*k^2+74008)*k^2+35424)*k^2+9848)*k^2+1246)*k))*Y+(((((((((-3888 : F)*k^2+(-22032 : F))*k^2+(-50064 : F))*k^2+(-60720 : F))*k^2+(-43984 : F))*k^2+(-19952 : F))*k^2+(-5488 : F))*k^2+(-720 : F))*k))*Y))*X+((((((((((((((12*k^2+92)*k^2+308)*k^2+588)*k^2+700)*k^2+532)*k^2+252)*k^2+68)*k^2+8)*k)*Y+((((((((((-162 : F)*k^2+(-1404 : F))*k^2+(-5132 : F))*k^2+(-10444 : F))*k^2+(-13040 : F))*k^2+(-10292 : F))*k^2+(-5044 : F))*k^2+(-1412 : F))*k^2+(-174 : F))*k))*Y+(((((((((486*k^2+7560)*k^2+34128)*k^2+75240)*k^2+95372)*k^2+74008)*k^2+35424)*k^2+9848)*k^2+1246)*k))*Y+(((((((((-21384 : F)*k^2+(-114264 : F))*k^2+(-250920 : F))*k^2+(-296888 : F))*k^2+(-209048 : F))*k^2+(-91144 : F))*k^2+(-23992 : F))*k^2+(-3048 : F))*k))*Y+((((((((17496*k^2+106920)*k^2+229176)*k^2+243912)*k^2+149000)*k^2+57336)*k^2+14440)*k^2+1944)*k))*Y))*X+((((((((((((216*k^2+1272)*k^2+3192)*k^2+4440)*k^2+3720)*k^2+1896)*k^2+552)*k^2+72)*k)*Y+(((((((((-3888 : F)*k^2+(-22032 : F))*k^2+(-50064 : F))*k^2+(-60720 : F))*k^2+(-43984 : F))*k^2+(-19952 : F))*k^2+(-5488 : F))*k^2+(-720 : F))*k))*Y+((((((((17496*k^2+106920)*k^2+229176)*k^2+243912)*k^2+149000)*k^2+57336)*k^2+14440)*k^2+1944)*k))*Y+((((((((-104976 : F)*k^2+(-241056 : F))*k^2+(-219888 : F))*k^2+(-104640 : F))*k^2+(-31216 : F))*k^2+(-7584 : F))*k^2+(-1296 : F))*k))*Y))

def denominator_p2_m2_b (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(minusFactor X k)*(plusFactor X k)*(h k)^2*(X)^2

theorem cleared_p2_m2 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p2_m2 X Y k).a * denominator_p2_m2_a X Y k = numerator_p2_m2_a X Y k ∧
    (pairedQuad_p2_m2 X Y k).b * denominator_p2_m2_b X Y k = numerator_p2_m2_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p2_m2 X Y k)).re * _ = _
    simp only [pairedQuad_p2_m2, quadNewton_p2_m2, quadSide, quadReconstructionData,
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
      denominator_p2_m2_a, numerator_p2_m2_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p2_m2 X Y k)).im * _ = _
    simp only [pairedQuad_p2_m2, quadNewton_p2_m2, quadSide, quadReconstructionData,
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
      denominator_p2_m2_b, numerator_p2_m2_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p2_m2
end NoFourMUBs.Step2.Critical.NonzeroClearing
