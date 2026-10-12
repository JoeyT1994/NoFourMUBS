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

def numerator_p3_m2_a (X Y k : F) : F := (((((((((((((((((((((3*k^2+33)*k^2+165)*k^2+495)*k^2+990)*k^2+1386)*k^2+1386)*k^2+990)*k^2+495)*k^2+165)*k^2+33)*k^2+3)*k)*Y+(((((((((((((-21 : F)*k^2+(-225 : F))*k^2+(-1095 : F))*k^2+(-3195 : F))*k^2+(-6210 : F))*k^2+(-8442 : F))*k^2+(-8190 : F))*k^2+(-5670 : F))*k^2+(-2745 : F))*k^2+(-885 : F))*k^2+(-171 : F))*k^2+(-15 : F))*k))*Y+((((((((((((18*k^2+192)*k^2+930)*k^2+2700)*k^2+5220)*k^2+7056)*k^2+6804)*k^2+4680)*k^2+2250)*k^2+720)*k^2+138)*k^2+12)*k))*Y)*X+((((((((((((((((5*k^2+55)*k^2+275)*k^2+825)*k^2+1650)*k^2+2310)*k^2+2310)*k^2+1650)*k^2+825)*k^2+275)*k^2+55)*k^2+5)*k)*Y+(((((((((((((-107 : F)*k^2+(-1137 : F))*k^2+(-5485 : F))*k^2+(-15855 : F))*k^2+(-30510 : F))*k^2+(-41034 : F))*k^2+(-39354 : F))*k^2+(-26910 : F))*k^2+(-12855 : F))*k^2+(-4085 : F))*k^2+(-777 : F))*k^2+(-67 : F))*k))*Y+((((((((((((507*k^2+5249)*k^2+24653)*k^2+69327)*k^2+129678)*k^2+169386)*k^2+157626)*k^2+104478)*k^2+48327)*k^2+14853)*k^2+2729)*k^2+227)*k))*Y+(((((((((((((-405 : F)*k^2+(-4203 : F))*k^2+(-19707 : F))*k^2+(-55101 : F))*k^2+(-102066 : F))*k^2+(-131502 : F))*k^2+(-120246 : F))*k^2+(-78042 : F))*k^2+(-35241 : F))*k^2+(-10551 : F))*k^2+(-1887 : F))*k^2+(-153 : F))*k))*Y))*X+(((((((((((((((((2*k^2+22)*k^2+110)*k^2+330)*k^2+660)*k^2+924)*k^2+924)*k^2+660)*k^2+330)*k^2+110)*k^2+22)*k^2+2)*k)*Y+(((((((((((((-92 : F)*k^2+(-978 : F))*k^2+(-4720 : F))*k^2+(-13650 : F))*k^2+(-26280 : F))*k^2+(-35364 : F))*k^2+(-33936 : F))*k^2+(-23220 : F))*k^2+(-11100 : F))*k^2+(-3530 : F))*k^2+(-672 : F))*k^2+(-58 : F))*k))*Y+((((((((((((1104*k^2+11318)*k^2+52628)*k^2+146486)*k^2+271120)*k^2+350252)*k^2+322168)*k^2+210908)*k^2+96256)*k^2+29150)*k^2+5268)*k^2+430)*k))*Y+(((((((((((((-4050 : F)*k^2+(-40452 : F))*k^2+(-182970 : F))*k^2+(-494576 : F))*k^2+(-887364 : F))*k^2+(-1109080 : F))*k^2+(-984676 : F))*k^2+(-620400 : F))*k^2+(-271466 : F))*k^2+(-78404 : F))*k^2+(-13410 : F))*k^2+(-1024 : F))*k))*Y+((((((((((((2916*k^2+30078)*k^2+137976)*k^2+372230)*k^2+656760)*k^2+795804)*k^2+675232)*k^2+400476)*k^2+162180)*k^2+42470)*k^2+6408)*k^2+414)*k))*Y+((((((((1152*k^2+7680)*k^2+21888)*k^2+34560)*k^2+32640)*k^2+18432)*k^2+5760)*k^2+768)*k^3)))*X+((((((((((((((((((-14 : F)*k^2+(-150 : F))*k^2+(-730 : F))*k^2+(-2130 : F))*k^2+(-4140 : F))*k^2+(-5628 : F))*k^2+(-5460 : F))*k^2+(-3780 : F))*k^2+(-1830 : F))*k^2+(-590 : F))*k^2+(-114 : F))*k^2+(-10 : F))*k)*Y+((((((((((((411*k^2+4217)*k^2+19637)*k^2+54767)*k^2+101614)*k^2+131642)*k^2+121450)*k^2+79742)*k^2+36487)*k^2+11069)*k^2+2001)*k^2+163)*k))*Y+(((((((((((((-3753 : F)*k^2+(-36867 : F))*k^2+(-164135 : F))*k^2+(-436981 : F))*k^2+(-772538 : F))*k^2+(-951454 : F))*k^2+(-831950 : F))*k^2+(-515530 : F))*k^2+(-221261 : F))*k^2+(-62383 : F))*k^2+(-10331 : F))*k^2+(-753 : F))*k))*Y+((((((((((((11421*k^2+109863)*k^2+475011)*k^2+1218913)*k^2+2062146)*k^2+2412422)*k^2+1986182)*k^2+1144866)*k^2+448273)*k^2+111331)*k^2+15111)*k^2+749)*k))*Y+(((((((((((((-6561 : F)*k^2+(-74115 : F))*k^2+(-340767 : F))*k^2+(-869877 : F))*k^2+(-1383466 : F))*k^2+(-1433630 : F))*k^2+(-966654 : F))*k^2+(-397386 : F))*k^2+(-74213 : F))*k^2+10065)*k^2+7885)*k^2+1167)*k))*Y+(((((((((-15552 : F)*k^2+(-103104 : F))*k^2+(-284864 : F))*k^2+(-426176 : F))*k^2+(-373824 : F))*k^2+(-193088 : F))*k^2+(-54848 : F))*k^2+(-6720 : F))*k^3)))*X+(((((((((((((((((12*k^2+128)*k^2+620)*k^2+1800)*k^2+3480)*k^2+4704)*k^2+4536)*k^2+3120)*k^2+1500)*k^2+480)*k^2+92)*k^2+8)*k)*Y+(((((((((((((-324 : F)*k^2+(-3102 : F))*k^2+(-13448 : F))*k^2+(-34822 : F))*k^2+(-59768 : F))*k^2+(-71260 : F))*k^2+(-60032 : F))*k^2+(-35548 : F))*k^2+(-14372 : F))*k^2+(-3718 : F))*k^2+(-536 : F))*k^2+(-30 : F))*k))*Y+((((((((((((2673*k^2+23517)*k^2+91467)*k^2+206847)*k^2+299930)*k^2+287890)*k^2+178758)*k^2+62062)*k^2+2117)*k^2+(-8415 : F))*k^2+(-3553 : F))*k^2+(-509 : F))*k))*Y+(((((((((((((-6561 : F)*k^2+(-58563 : F))*k^2+(-207711 : F))*k^2+(-377253 : F))*k^2+(-341034 : F))*k^2+(-30814 : F))*k^2+299650)*k^2+393494)*k^2+273947)*k^2+117841)*k^2+29837)*k^2+3423)*k))*Y+(((((((((((34992*k^2+143856)*k^2+130896)*k^2+(-363840 : F))*k^2+(-1197856 : F))*k^2+(-1650656 : F))*k^2+(-1363040 : F))*k^2+(-731200 : F))*k^2+(-255632 : F))*k^2+(-54416 : F))*k^2+(-5616 : F))*k))*Y+((((((((46656*k^2+361152)*k^2+1024320)*k^2+1478592)*k^2+1203904)*k^2+554048)*k^2+129472)*k^2+10560)*k^3)))*X+((((((((((((((((-216 : F)*k^2+(-1920 : F))*k^2+(-7656 : F))*k^2+(-18048 : F))*k^2+(-27888 : F))*k^2+(-29568 : F))*k^2+(-21840 : F))*k^2+(-11136 : F))*k^2+(-3768 : F))*k^2+(-768 : F))*k^2+(-72 : F))*k)*Y+(((((((((((3888*k^2+34992)*k^2+135072)*k^2+297792)*k^2+419744)*k^2+400672)*k^2+267392)*k^2+126272)*k^2+41392)*k^2+8624)*k^2+864)*k))*Y+((((((((((((-17496 : F)*k^2+(-182736 : F))*k^2+(-722520 : F))*k^2+(-1522752 : F))*k^2+(-1954224 : F))*k^2+(-1639520 : F))*k^2+(-949616 : F))*k^2+(-402240 : F))*k^2+(-129272 : F))*k^2+(-29264 : F))*k^2+(-3384 : F))*k))*Y+((((((((((209952*k^2+1080864)*k^2+2403648)*k^2+2970816)*k^2+2232192)*k^2+1089792)*k^2+378048)*k^2+101184)*k^2+23136)*k^2+4320)*k))*Y+((((((((-311040 : F)*k^2+(-898560 : F))*k^2+(-1126656 : F))*k^2+(-816128 : F))*k^2+(-303360 : F))*k^2+(-5632 : F))*k^2+20736)*k^3)))*X+((((((((((-6912 : F)*k^2+(-33792 : F))*k^2+(-68352 : F))*k^2+(-73728 : F))*k^2+(-45312 : F))*k^2+(-15360 : F))*k^2+(-2304 : F))*k^3)*Y+(((((((62208*k^2+345600)*k^2+555264)*k^2+386048)*k^2+161024)*k^2+62976)*k^2+16128)*k^3))*Y+(((((((-746496 : F)*k^2+(-1022976 : F))*k^2+(-264192 : F))*k^2+83968)*k^2+(-21504 : F))*k^2+(-27648 : F))*k^3)))

def denominator_p3_m2_a (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(minusFactor X k)*(plusFactor X k)*(X)^3*(h k)^5

def numerator_p3_m2_b (X Y k : F) : F := ((((((((((((((((((((-1 : F)/2)*k^2+(-5 : F))*k^2+((-45 : F)/2))*k^2+(-60 : F))*k^2+(-105 : F))*k^2+(-126 : F))*k^2+(-105 : F))*k^2+(-60 : F))*k^2+((-45 : F)/2))*k^2+(-5 : F))*k^2+((-1 : F)/2))*Y+((((((((((5*k^2+45)*k^2+182)*k^2+436)*k^2+686)*k^2+742)*k^2+560)*k^2+292)*k^2+101)*k^2+21)*k^2+2))*Y+((((((((((((-9 : F)/2)*k^2+(-40 : F))*k^2+((-319 : F)/2))*k^2+(-376 : F))*k^2+(-581 : F))*k^2+(-616 : F))*k^2+(-455 : F))*k^2+(-232 : F))*k^2+((-157 : F)/2))*k^2+(-16 : F))*k^2+((-3 : F)/2)))*Y^2)*X+(((((((((((((((((-1 : F)/2)*k^2+(-5 : F))*k^2+((-45 : F)/2))*k^2+(-60 : F))*k^2+(-105 : F))*k^2+(-126 : F))*k^2+(-105 : F))*k^2+(-60 : F))*k^2+((-45 : F)/2))*k^2+(-5 : F))*k^2+((-1 : F)/2))*Y+((((((((((((31 : F)/2)*k^2+143)*k^2+((1187 : F)/2))*k^2+1460)*k^2+2359)*k^2+2618)*k^2+2023)*k^2+1076)*k^2+((755 : F)/2))*k^2+79)*k^2+((15 : F)/2)))*Y+((((((((((((-219 : F)/2)*k^2+(-939 : F))*k^2+((-7231 : F)/2))*k^2+(-8244 : F))*k^2+(-12355 : F))*k^2+(-12754 : F))*k^2+(-9219 : F))*k^2+(-4628 : F))*k^2+((-3103 : F)/2))*k^2+(-315 : F))*k^2+((-59 : F)/2)))*Y+((((((((((((189 : F)/2)*k^2+849)*k^2+((6881 : F)/2))*k^2+8284)*k^2+13125)*k^2+14294)*k^2+10829)*k^2+5628)*k^2+((3833 : F)/2))*k^2+385)*k^2+((69 : F)/2)))*Y+(((((((((-144 : F)*k^2+(-960 : F))*k^2+(-2736 : F))*k^2+(-4320 : F))*k^2+(-4080 : F))*k^2+(-2304 : F))*k^2+(-720 : F))*k^2+(-96 : F))*k^2))*Y))*X+(((((((((((((((((13 : F)/2)*k^2+60)*k^2+((499 : F)/2))*k^2+616)*k^2+1001)*k^2+1120)*k^2+875)*k^2+472)*k^2+((337 : F)/2))*k^2+36)*k^2+((7 : F)/2))*Y+((((((((((((-273 : F)/2)*k^2+(-1188 : F))*k^2+((-9295 : F)/2))*k^2+(-10776 : F))*k^2+(-16429 : F))*k^2+(-17248 : F))*k^2+(-12663 : F))*k^2+(-6440 : F))*k^2+((-4357 : F)/2))*k^2+(-444 : F))*k^2+((-83 : F)/2)))*Y+((((((((((((1539 : F)/2)*k^2+6426)*k^2+((48233 : F)/2))*k^2+53656)*k^2+78551)*k^2+79292)*k^2+56081)*k^2+27544)*k^2+((18047 : F)/2))*k^2+1786)*k^2+((325 : F)/2)))*Y+((((((((((((-1215 : F)/2)*k^2+(-5994 : F))*k^2+((-51909 : F)/2))*k^2+(-65408 : F))*k^2+(-106411 : F))*k^2+(-116644 : F))*k^2+(-87061 : F))*k^2+(-43600 : F))*k^2+((-27995 : F)/2))*k^2+(-2594 : F))*k^2+((-417 : F)/2)))*Y+((((((((1944*k^2+12888)*k^2+35608)*k^2+53272)*k^2+46728)*k^2+24136)*k^2+6856)*k^2+840)*k^2))*Y))*X+(((((((((((((((((-39 : F)/2)*k^2+(-175 : F))*k^2+((-1411 : F)/2))*k^2+(-1684 : F))*k^2+(-2639 : F))*k^2+(-2842 : F))*k^2+(-2135 : F))*k^2+(-1108 : F))*k^2+((-763 : F)/2))*k^2+(-79 : F))*k^2+((-15 : F)/2))*Y+((((((((((((729 : F)/2)*k^2+3141)*k^2+((24205 : F)/2))*k^2+27492)*k^2+40857)*k^2+41638)*k^2+29601)*k^2+14580)*k^2+((9589 : F)/2))*k^2+957)*k^2+((177 : F)/2)))*Y+((((((((((((-3645 : F)/2)*k^2+(-15849 : F))*k^2+((-121761 : F)/2))*k^2+(-136516 : F))*k^2+(-198669 : F))*k^2+(-196974 : F))*k^2+(-135509 : F))*k^2+(-64308 : F))*k^2+((-40617 : F)/2))*k^2+(-3889 : F))*k^2+((-693 : F)/2)))*Y+((((((((((((2187 : F)/2)*k^2+15795)*k^2+((154575 : F)/2))*k^2+201276)*k^2+323931)*k^2+341994)*k^2+241211)*k^2+112428)*k^2+((66303 : F)/2))*k^2+5627)*k^2+((891 : F)/2)))*Y+(((((((((-5832 : F)*k^2+(-45144 : F))*k^2+(-128040 : F))*k^2+(-184824 : F))*k^2+(-150488 : F))*k^2+(-69256 : F))*k^2+(-16184 : F))*k^2+(-1320 : F))*k^2))*Y))*X+(((((((((((((((((27 : F)/2)*k^2+120)*k^2+((957 : F)/2))*k^2+1128)*k^2+1743)*k^2+1848)*k^2+1365)*k^2+696)*k^2+((471 : F)/2))*k^2+48)*k^2+((9 : F)/2))*Y+(((((((((((-243 : F)*k^2+(-2187 : F))*k^2+(-8490 : F))*k^2+(-18932 : F))*k^2+(-27146 : F))*k^2+(-26482 : F))*k^2+(-18072 : F))*k^2+(-8660 : F))*k^2+(-2827 : F))*k^2+(-571 : F))*k^2+(-54 : F)))*Y+((((((((((((2187 : F)/2)*k^2+11421)*k^2+((92043 : F)/2))*k^2+100332)*k^2+135243)*k^2+120766)*k^2+74455)*k^2+32460)*k^2+((19967 : F)/2))*k^2+2029)*k^2+((423 : F)/2)))*Y+((((((((((-13122 : F)*k^2+(-70470 : F))*k^2+(-170640 : F))*k^2+(-237408 : F))*k^2+(-206980 : F))*k^2+(-118908 : F))*k^2+(-45120 : F))*k^2+(-10192 : F))*k^2+(-1386 : F))*k^2+(-270 : F)))*Y+(((((((38880*k^2+112320)*k^2+140832)*k^2+102016)*k^2+37920)*k^2+704)*k^2+(-2592 : F))*k^2))*Y))*X+((((((((((864*k^2+4224)*k^2+8544)*k^2+9216)*k^2+5664)*k^2+1920)*k^2+288)*k^2)*Y+((((((((-7776 : F)*k^2+(-43200 : F))*k^2+(-69408 : F))*k^2+(-48256 : F))*k^2+(-20128 : F))*k^2+(-7872 : F))*k^2+(-2016 : F))*k^2))*Y+((((((93312*k^2+127872)*k^2+33024)*k^2+(-10496 : F))*k^2+2688)*k^2+3456)*k^2))*Y))

def denominator_p3_m2_b (X Y k : F) : F := (minusFactor Y k)*(plusFactor Y k)*(minusFactor X k)*(plusFactor X k)*(h k)^3*(X)^3

theorem cleared_p3_m2 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p3_m2 X Y k).a * denominator_p3_m2_a X Y k = numerator_p3_m2_a X Y k ∧
    (pairedQuad_p3_m2 X Y k).b * denominator_p3_m2_b X Y k = numerator_p3_m2_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  constructor
  · change (toQuadratic (pairedQuad_p3_m2 X Y k)).re * _ = _
    simp only [pairedQuad_p3_m2, quadNewton_p3_m2, quadSide, quadReconstructionData,
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
      denominator_p3_m2_a, numerator_p3_m2_a,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
  · change (toQuadratic (pairedQuad_p3_m2 X Y k)).im * _ = _
    simp only [pairedQuad_p3_m2, quadNewton_p3_m2, quadSide, quadReconstructionData,
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
      denominator_p3_m2_b, numerator_p3_m2_b,
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring

#print axioms cleared_p3_m2
end NoFourMUBs.Step2.Critical.NonzeroClearing
