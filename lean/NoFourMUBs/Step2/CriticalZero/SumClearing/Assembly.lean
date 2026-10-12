import NoFourMUBs.Step2.CriticalZero.SumClearing.Term00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term09
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term10
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term11
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term12
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term13
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term14
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term15
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term16
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term17
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term18
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term19
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term20
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term21
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term22
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term23
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term24
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term25
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term26
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term27
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term28
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term29
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term30
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term31
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term32
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term33
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term34
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term35
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term36
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term37
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term38
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term39
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term40
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term41
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term42
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term43
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term44
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term45
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term46
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term47
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term48
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term49
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term50
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term51
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term52
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term53
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term54
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term55
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term56
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term57
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term58
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term59
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term60
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term61
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term62
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term63
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term64
import NoFourMUBs.Step2.CriticalZero.SumClearing.Term65
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
open CriticalNonzeroMoments20261003 CriticalNonzeroNumerator20261003 CriticalQuadProgram20261003
def computedNumerator (X Y k : ℂ) : ℂ := scaledTerm00 X Y k + scaledTerm01 X Y k + scaledTerm02 X Y k + scaledTerm03 X Y k + scaledTerm04 X Y k + scaledTerm05 X Y k + scaledTerm06 X Y k + scaledTerm07 X Y k + scaledTerm08 X Y k + scaledTerm09 X Y k + scaledTerm10 X Y k + scaledTerm11 X Y k + scaledTerm12 X Y k + scaledTerm13 X Y k + scaledTerm14 X Y k + scaledTerm15 X Y k + scaledTerm16 X Y k + scaledTerm17 X Y k + scaledTerm18 X Y k + scaledTerm19 X Y k + scaledTerm20 X Y k + scaledTerm21 X Y k + scaledTerm22 X Y k + scaledTerm23 X Y k + scaledTerm24 X Y k + scaledTerm25 X Y k + scaledTerm26 X Y k + scaledTerm27 X Y k + scaledTerm28 X Y k + scaledTerm29 X Y k + scaledTerm30 X Y k + scaledTerm31 X Y k + scaledTerm32 X Y k + scaledTerm33 X Y k + scaledTerm34 X Y k + scaledTerm35 X Y k + scaledTerm36 X Y k + scaledTerm37 X Y k + scaledTerm38 X Y k + scaledTerm39 X Y k + scaledTerm40 X Y k + scaledTerm41 X Y k + scaledTerm42 X Y k + scaledTerm43 X Y k + scaledTerm44 X Y k + scaledTerm45 X Y k + scaledTerm46 X Y k + scaledTerm47 X Y k + scaledTerm48 X Y k + scaledTerm49 X Y k + scaledTerm50 X Y k + scaledTerm51 X Y k + scaledTerm52 X Y k + scaledTerm53 X Y k + scaledTerm54 X Y k + scaledTerm55 X Y k + scaledTerm56 X Y k + scaledTerm57 X Y k + scaledTerm58 X Y k + scaledTerm59 X Y k + scaledTerm60 X Y k + scaledTerm61 X Y k + scaledTerm62 X Y k + scaledTerm63 X Y k + scaledTerm64 X Y k + scaledTerm65 X Y k
theorem program_a_eq_terms (X Y k : ℂ) :
    (coefficients (fun m => rationalCoefficients m X Y k) program66).a =
      rawTerm00 X Y k + rawTerm01 X Y k + rawTerm02 X Y k + rawTerm03 X Y k + rawTerm04 X Y k + rawTerm05 X Y k + rawTerm06 X Y k + rawTerm07 X Y k + rawTerm08 X Y k + rawTerm09 X Y k + rawTerm10 X Y k + rawTerm11 X Y k + rawTerm12 X Y k + rawTerm13 X Y k + rawTerm14 X Y k + rawTerm15 X Y k + rawTerm16 X Y k + rawTerm17 X Y k + rawTerm18 X Y k + rawTerm19 X Y k + rawTerm20 X Y k + rawTerm21 X Y k + rawTerm22 X Y k + rawTerm23 X Y k + rawTerm24 X Y k + rawTerm25 X Y k + rawTerm26 X Y k + rawTerm27 X Y k + rawTerm28 X Y k + rawTerm29 X Y k + rawTerm30 X Y k + rawTerm31 X Y k + rawTerm32 X Y k + rawTerm33 X Y k + rawTerm34 X Y k + rawTerm35 X Y k + rawTerm36 X Y k + rawTerm37 X Y k + rawTerm38 X Y k + rawTerm39 X Y k + rawTerm40 X Y k + rawTerm41 X Y k + rawTerm42 X Y k + rawTerm43 X Y k + rawTerm44 X Y k + rawTerm45 X Y k + rawTerm46 X Y k + rawTerm47 X Y k + rawTerm48 X Y k + rawTerm49 X Y k + rawTerm50 X Y k + rawTerm51 X Y k + rawTerm52 X Y k + rawTerm53 X Y k + rawTerm54 X Y k + rawTerm55 X Y k + rawTerm56 X Y k + rawTerm57 X Y k + rawTerm58 X Y k + rawTerm59 X Y k + rawTerm60 X Y k + rawTerm61 X Y k + rawTerm62 X Y k + rawTerm63 X Y k + rawTerm64 X Y k + rawTerm65 X Y k := by rfl

theorem rational_program_scaled (X Y k : ℂ) (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hFXp : plusFactor X k ≠ 0) (hFXm : minusFactor X k ≠ 0)
    (hFYp : plusFactor Y k ≠ 0) (hFYm : minusFactor Y k ≠ 0)
    (hFZp : thirdPlusFactor X Y k ≠ 0) (hFZm : thirdMinusFactor X Y k ≠ 0) :
    (coefficients (fun m => rationalCoefficients m X Y k) program66).a *
      expandedDenominator X Y k = computedNumerator X Y k := by
  rw [program_a_eq_terms]
  dsimp only [computedNumerator]
  simp only [add_mul,term00_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term01_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term02_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term03_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term04_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term05_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term06_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term07_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term08_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term09_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term10_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term11_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term12_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term13_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term14_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term15_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term16_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term17_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term18_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term19_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term20_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term21_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term22_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term23_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term24_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term25_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term26_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term27_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term28_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term29_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term30_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term31_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term32_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term33_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term34_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term35_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term36_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term37_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term38_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term39_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term40_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term41_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term42_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term43_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term44_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term45_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term46_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term47_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term48_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term49_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term50_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term51_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term52_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term53_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term54_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term55_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term56_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term57_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term58_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term59_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term60_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term61_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term62_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term63_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term64_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm,
    term65_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm]
#print axioms program_a_eq_terms
#print axioms rational_program_scaled

theorem sumCoefficients_scaled (X Y k : ℂ)
    (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (sumCoefficients X Y k).a * expandedDenominator X Y k = computedNumerator X Y k := by
  rw [sumCoefficients_via_rationalTable X Y k hX hY hh hXp hXm hYp hYm hZp hZm]
  have hs : (h k)^2/(2 : ℂ) ≠ 0 :=
    div_ne_zero (pow_ne_zero 2 hh) (by norm_num)
  apply rational_program_scaled X Y k hX hY hh
  · rw [plusFactor_pole X k hh]
    exact mul_ne_zero hs hXp
  · rw [minusFactor_pole X k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hXm
  · rw [plusFactor_pole Y k hh]
    exact mul_ne_zero hs hYp
  · rw [minusFactor_pole Y k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hYm
  · rw [thirdPlusFactor_pole X Y k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hZp
  · rw [thirdMinusFactor_pole X Y k hh]
    exact mul_ne_zero hs hZm
#print axioms sumCoefficients_scaled

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
