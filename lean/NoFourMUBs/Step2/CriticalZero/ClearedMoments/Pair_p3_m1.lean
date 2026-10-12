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

def numerator_p3_m1_a (X Y k : F) : F := (((((((((((((((((((((-1 : F)/2)*k^2+(-5 : F))*k^2+((-45 : F)/2))*k^2+(-60 : F))*k^2+(-105 : F))*k^2+(-126 : F))*k^2+(-105 : F))*k^2+(-60 : F))*k^2+((-45 : F)/2))*k^2+(-5 : F))*k^2+((-1 : F)/2))*Y+((((((((((5*k^2+45)*k^2+182)*k^2+436)*k^2+686)*k^2+742)*k^2+560)*k^2+292)*k^2+101)*k^2+21)*k^2+2))*Y+((((((((((((-9 : F)/2)*k^2+(-40 : F))*k^2+((-319 : F)/2))*k^2+(-376 : F))*k^2+(-581 : F))*k^2+(-616 : F))*k^2+(-455 : F))*k^2+(-232 : F))*k^2+((-157 : F)/2))*k^2+(-16 : F))*k^2+((-3 : F)/2)))*Y)*X+((((((((((((((((-3 : F)/2)*k^2+(-15 : F))*k^2+((-135 : F)/2))*k^2+(-180 : F))*k^2+(-315 : F))*k^2+(-378 : F))*k^2+(-315 : F))*k^2+(-180 : F))*k^2+((-135 : F)/2))*k^2+(-15 : F))*k^2+((-3 : F)/2))*Y+((((((((((((45 : F)/2)*k^2+209)*k^2+((1745 : F)/2))*k^2+2156)*k^2+3493)*k^2+3878)*k^2+2989)*k^2+1580)*k^2+((1097 : F)/2))*k^2+113)*k^2+((21 : F)/2)))*Y+((((((((((((-177 : F)/2)*k^2+(-761 : F))*k^2+((-5965 : F)/2))*k^2+(-7020 : F))*k^2+(-10969 : F))*k^2+(-11830 : F))*k^2+(-8841 : F))*k^2+(-4460 : F))*k^2+((-2845 : F)/2))*k^2+(-249 : F))*k^2+((-33 : F)/2)))*Y+((((((((((((135 : F)/2)*k^2+519)*k^2+((4139 : F)/2))*k^2+5524)*k^2+10239)*k^2+12938)*k^2+10799)*k^2+5652)*k^2+((3323 : F)/2))*k^2+199)*k^2+((-9 : F)/2)))*Y+(((((((((-144 : F)*k^2+(-960 : F))*k^2+(-2736 : F))*k^2+(-4320 : F))*k^2+(-4080 : F))*k^2+(-2304 : F))*k^2+(-720 : F))*k^2+(-96 : F))*k^2)))*X+(((((((((((((((((-3 : F)/2)*k^2+(-15 : F))*k^2+((-135 : F)/2))*k^2+(-180 : F))*k^2+(-315 : F))*k^2+(-378 : F))*k^2+(-315 : F))*k^2+(-180 : F))*k^2+((-135 : F)/2))*k^2+(-15 : F))*k^2+((-3 : F)/2))*Y+((((((((((((61 : F)/2)*k^2+288)*k^2+((2443 : F)/2))*k^2+3064)*k^2+5033)*k^2+5656)*k^2+4403)*k^2+2344)*k^2+((1633 : F)/2))*k^2+168)*k^2+((31 : F)/2)))*Y+((((((((((((-399 : F)/2)*k^2+(-1770 : F))*k^2+((-14301 : F)/2))*k^2+(-17296 : F))*k^2+(-27643 : F))*k^2+(-30324 : F))*k^2+(-22925 : F))*k^2+(-11648 : F))*k^2+((-7467 : F)/2))*k^2+(-658 : F))*k^2+((-89 : F)/2)))*Y+((((((((((((891 : F)/2)*k^2+3654)*k^2+((29329 : F)/2))*k^2+37128)*k^2+63311)*k^2+73252)*k^2+56409)*k^2+27592)*k^2+((15511 : F)/2))*k^2+966)*k^2+((13 : F)/2)))*Y+(((((((((((-243 : F)*k^2+(-1701 : F))*k^2+(-9432 : F))*k^2+(-34260 : F))*k^2+(-73450 : F))*k^2+(-94678 : F))*k^2+(-74052 : F))*k^2+(-33796 : F))*k^2+(-7771 : F))*k^2+(-429 : F))*k^2+84))*Y+((((((((1944*k^2+11016)*k^2+27064)*k^2+37480)*k^2+31560)*k^2+16024)*k^2+4456)*k^2+504)*k^2)))*X+((((((((((((((((((-1 : F)/2)*k^2+(-5 : F))*k^2+((-45 : F)/2))*k^2+(-60 : F))*k^2+(-105 : F))*k^2+(-126 : F))*k^2+(-105 : F))*k^2+(-60 : F))*k^2+((-45 : F)/2))*k^2+(-5 : F))*k^2+((-1 : F)/2))*Y+((((((((((((27 : F)/2)*k^2+129)*k^2+((1107 : F)/2))*k^2+1404)*k^2+2331)*k^2+2646)*k^2+2079)*k^2+1116)*k^2+((783 : F)/2))*k^2+81)*k^2+((15 : F)/2)))*Y+((((((((((((-255 : F)/2)*k^2+(-1163 : F))*k^2+((-9659 : F)/2))*k^2+(-11988 : F))*k^2+(-19607 : F))*k^2+(-21938 : F))*k^2+(-16863 : F))*k^2+(-8692 : F))*k^2+((-5651 : F)/2))*k^2+(-507 : F))*k^2+((-71 : F)/2)))*Y+((((((((((((945 : F)/2)*k^2+4137)*k^2+((34957 : F)/2))*k^2+45492)*k^2+78081)*k^2+89758)*k^2+68337)*k^2+33156)*k^2+((18829 : F)/2))*k^2+1281)*k^2+((81 : F)/2)))*Y+(((((((((((-486 : F)*k^2+(-4320 : F))*k^2+(-24618 : F))*k^2+(-82552 : F))*k^2+(-162116 : F))*k^2+(-192280 : F))*k^2+(-138364 : F))*k^2+(-57704 : F))*k^2+(-11926 : F))*k^2+(-552 : F))*k^2+102))*Y+(((((((((486*k^2+20898)*k^2+98352)*k^2+201120)*k^2+219340)*k^2+130836)*k^2+37440)*k^2+1648)*k^2+(-1314 : F))*k^2+(-198 : F)))*Y+(((((((((-5832 : F)*k^2+(-29160 : F))*k^2+(-65736 : F))*k^2+(-79656 : F))*k^2+(-51608 : F))*k^2+(-17272 : F))*k^2+(-3800 : F))*k^2+(-888 : F))*k^2)))*X+((((((((((((((((((1 : F)/2)*k^2+5)*k^2+((45 : F)/2))*k^2+60)*k^2+105)*k^2+126)*k^2+105)*k^2+60)*k^2+((45 : F)/2))*k^2+5)*k^2+((1 : F)/2))*Y+(((((((((((-12 : F)*k^2+(-114 : F))*k^2+(-502 : F))*k^2+(-1336 : F))*k^2+(-2352 : F))*k^2+(-2828 : F))*k^2+(-2324 : F))*k^2+(-1272 : F))*k^2+(-436 : F))*k^2+(-82 : F))*k^2+(-6 : F)))*Y+((((((((((((189 : F)/2)*k^2+858)*k^2+((7735 : F)/2))*k^2+10768)*k^2+19553)*k^2+23476)*k^2+18503)*k^2+9280)*k^2+((5521 : F)/2))*k^2+418)*k^2+((43 : F)/2)))*Y+(((((((((((-243 : F)*k^2+(-2187 : F))*k^2+(-12042 : F))*k^2+(-38836 : F))*k^2+(-73530 : F))*k^2+(-83986 : F))*k^2+(-57960 : F))*k^2+(-23124 : F))*k^2+(-4699 : F))*k^2+(-347 : F))*k^2+(-6 : F)))*Y+(((((((((486*k^2+16146)*k^2+70440)*k^2+129768)*k^2+116836)*k^2+42524)*k^2+(-7000 : F))*k^2+(-9656 : F))*k^2+(-2074 : F))*k^2+(-94 : F)))*Y+(((((((((-19440 : F)*k^2+(-74088 : F))*k^2+(-100680 : F))*k^2+(-25768 : F))*k^2+70744)*k^2+72456)*k^2+24680)*k^2+2824)*k^2+120))*Y+((((((5184*k^2+(-23616 : F))*k^2+(-48000 : F))*k^2+(-14976 : F))*k^2+5952)*k^2+1728)*k^2)))*X+(((((((((((((16*k^2+112)*k^2+336)*k^2+560)*k^2+560)*k^2+336)*k^2+112)*k^2+16)*k^2)*Y+(((((((((-288 : F)*k^2+(-1792 : F))*k^2+(-4704 : F))*k^2+(-6720 : F))*k^2+(-5600 : F))*k^2+(-2688 : F))*k^2+(-672 : F))*k^2+(-64 : F))*k^2))*Y+((((((((1728*k^2+8832)*k^2+17856)*k^2+16768)*k^2+5184)*k^2+(-2688 : F))*k^2+(-2240 : F))*k^2+(-384 : F))*k^2))*Y+(((((((((-3888 : F)*k^2+(-14256 : F))*k^2+(-11760 : F))*k^2+27280)*k^2+64880)*k^2+50672)*k^2+16304)*k^2+1840)*k^2))*Y+(((((((-13824 : F)*k^2+(-90624 : F))*k^2+(-133632 : F))*k^2+(-68096 : F))*k^2+(-12288 : F))*k^2+(-1024 : F))*k^2))*Y+(((((82944*k^2+41472)*k^2+(-24064 : F))*k^2+(-16896 : F))*k^2+(-1536 : F))*k^2)))*X+(((((((512*k^2+1536)*k^2+1536)*k^2+512)*k^4)*Y+(((((-4608 : F)*k^2+(-9728 : F))*k^2+(-5632 : F))*k^2+(-512 : F))*k^4))*Y+((((13824*k^2+7680)*k^2+(-13824 : F))*k^2+(-7680 : F))*k^4))*Y+((36864*k^2+12288)*k^4)))

def denominator_p3_m1_a (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)*(h k)^3*(X)^3

def numerator_p3_m1_b (X Y k : F) : F := ((((((((((((((((3*k^2+21)*k^2+63)*k^2+105)*k^2+105)*k^2+63)*k^2+21)*k^2+3)*k)*Y+(((((((((-21 : F)*k^2+(-141 : F))*k^2+(-405 : F))*k^2+(-645 : F))*k^2+(-615 : F))*k^2+(-351 : F))*k^2+(-111 : F))*k^2+(-15 : F))*k))*Y+((((((((18*k^2+120)*k^2+342)*k^2+540)*k^2+510)*k^2+288)*k^2+90)*k^2+12)*k))*Y)*X+((((((((((((7*k^2+49)*k^2+147)*k^2+245)*k^2+245)*k^2+147)*k^2+49)*k^2+7)*k)*Y+(((((((((-85 : F)*k^2+(-555 : F))*k^2+(-1545 : F))*k^2+(-2375 : F))*k^2+(-2175 : F))*k^2+(-1185 : F))*k^2+(-355 : F))*k^2+(-45 : F))*k))*Y+((((((((321*k^2+1919)*k^2+4901)*k^2+6923)*k^2+5827)*k^2+2909)*k^2+791)*k^2+89)*k))*Y+(((((((((-243 : F)*k^2+(-1377 : F))*k^2+(-3383 : F))*k^2+(-4685 : F))*k^2+(-3945 : F))*k^2+(-2003 : F))*k^2+(-557 : F))*k^2+(-63 : F))*k))*Y))*X+(((((((((((((5*k^2+35)*k^2+105)*k^2+175)*k^2+175)*k^2+105)*k^2+35)*k^2+5)*k)*Y+(((((((((-86 : F)*k^2+(-552 : F))*k^2+(-1506 : F))*k^2+(-2260 : F))*k^2+(-2010 : F))*k^2+(-1056 : F))*k^2+(-302 : F))*k^2+(-36 : F))*k))*Y+((((((((528*k^2+3022)*k^2+7308)*k^2+9642)*k^2+7448)*k^2+3330)*k^2+780)*k^2+70)*k))*Y+(((((((((-1296 : F)*k^2+(-6546 : F))*k^2+(-13932 : F))*k^2+(-15982 : F))*k^2+(-10424 : F))*k^2+(-3726 : F))*k^2+(-652 : F))*k^2+(-50 : F))*k))*Y+((((((((729*k^2+3645)*k^2+8217)*k^2+9957)*k^2+6451)*k^2+2159)*k^2+475)*k^2+111)*k))*Y))*X+((((((((((((((1*k^2+7)*k^2+21)*k^2+35)*k^2+35)*k^2+21)*k^2+7)*k^2+1)*k)*Y+(((((((((-23 : F)*k^2+(-145 : F))*k^2+(-387 : F))*k^2+(-565 : F))*k^2+(-485 : F))*k^2+(-243 : F))*k^2+(-65 : F))*k^2+(-7 : F))*k))*Y+((((((((195*k^2+1053)*k^2+2343)*k^2+2729)*k^2+1721)*k^2+519)*k^2+29)*k^2+(-13 : F))*k))*Y+(((((((((-729 : F)*k^2+(-3243 : F))*k^2+(-5501 : F))*k^2+(-3767 : F))*k^2+341)*k^2+1951)*k^2+961)*k^2+131)*k))*Y+((((((((972*k^2+3348)*k^2+3684)*k^2+(-1956 : F))*k^2+(-8012 : F))*k^2+(-6420 : F))*k^2+(-1764 : F))*k^2+(-92 : F))*k))*Y+(((((((-648 : F)*k^2+2952)*k^2+6000)*k^2+1872)*k^2+(-744 : F))*k^2+(-216 : F))*k))*Y))*X+(((((((((((((((-1 : F)*k^2+(-7 : F))*k^2+(-21 : F))*k^2+(-35 : F))*k^2+(-35 : F))*k^2+(-21 : F))*k^2+(-7 : F))*k^2+(-1 : F))*k)*Y+((((((((18*k^2+110)*k^2+282)*k^2+390)*k^2+310)*k^2+138)*k^2+30)*k^2+2)*k))*Y+(((((((((-108 : F)*k^2+(-522 : F))*k^2+(-952 : F))*k^2+(-646 : F))*k^2+212)*k^2+554)*k^2+272)*k^2+38)*k))*Y+((((((((243*k^2+783)*k^2+171)*k^2+(-3377 : F))*k^2+(-6463 : F))*k^2+(-4699 : F))*k^2+(-1375 : F))*k^2+(-131 : F))*k))*Y+((((((1080*k^2+8808)*k^2+12912)*k^2+5776)*k^2+600)*k^2+8)*k))*Y+((((((-10368 : F)*k^2+(-5184 : F))*k^2+3008)*k^2+2112)*k^2+192)*k))*Y))*X+(((((((((-64 : F)*k^2+(-192 : F))*k^2+(-192 : F))*k^2+(-64 : F))*k^3)*Y+((((576*k^2+1216)*k^2+704)*k^2+64)*k^3))*Y+(((((-1728 : F)*k^2+(-960 : F))*k^2+1728)*k^2+960)*k^3))*Y+(((-4608 : F)*k^2+(-1536 : F))*k^3))*Y))

def denominator_p3_m1_b (X Y k : F) : F := (h k)*(minusFactor Y k)*(plusFactor Y k)*(thirdMinusFactor X Y k)*(thirdPlusFactor X Y k)*(X)^3

theorem cleared_p3_m1 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p3_m1 X Y k).a * denominator_p3_m1_a X Y k = numerator_p3_m1_a X Y k ∧
    (pairedQuad_p3_m1 X Y k).b * denominator_p3_m1_b X Y k = numerator_p3_m1_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p3_m1 X Y k)).re * _ = _
    simp only [pairedQuad_p3_m1, quadNewton_p3_m1, quadSide, quadReconstructionData,
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
      denominator_p3_m1_a, numerator_p3_m1_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p3_m1 X Y k)).im * _ = _
    simp only [pairedQuad_p3_m1, quadNewton_p3_m1, quadSide, quadReconstructionData,
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
      denominator_p3_m1_b, numerator_p3_m1_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p3_m1
end NoFourMUBs.Step2.Critical.NonzeroClearing
