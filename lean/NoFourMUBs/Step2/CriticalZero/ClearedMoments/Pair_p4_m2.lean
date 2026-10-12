import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p2_m4
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumerator
import NoFourMUBs.Step2.CriticalZero.NonzeroSwapMoment

/-! Reuse the first large moment through the checked parameter swap. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]

theorem cleared_p4_m2 (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_p4_m2 X Y k).a * denominator_p4_m2_a X Y k = numerator_p4_m2_a X Y k ∧
    (pairedQuad_p4_m2 X Y k).b * denominator_p4_m2_b X Y k = numerator_p4_m2_b X Y k := by
  have hp : p k-Y-X = p k-X-Y := by ring
  have hplus : thirdPlusFactor Y X k = thirdPlusFactor X Y k := by
    simp only [thirdPlusFactor,add_comm Y X]
  have hminus : thirdMinusFactor Y X k = thirdMinusFactor X Y k := by
    simp only [thirdMinusFactor,add_comm Y X]
  have hdA : Y^2*denominator_p4_m2_a X Y k = X^4*denominator_p2_m4_a Y X k := by
    dsimp only [denominator_p4_m2_a,denominator_p2_m4_a]
    rw [hplus,hminus]
    ring
  have hdB : Y^2*denominator_p4_m2_b X Y k = X^4*denominator_p2_m4_b Y X k := by
    dsimp only [denominator_p4_m2_b,denominator_p2_m4_b]
    rw [hplus,hminus]
    ring
  have hc := cleared_p2_m4 Y X k hY hX hh hYp hYm hXp hXm
    (by simpa only [hp] using hZp) (by simpa only [hp] using hZm)
  have hs := paired_p4_m2_coefficients_from_swap X Y k hX hY
  have assembleA (u v d e n m : F)
      (hu : u = (Y^2/X^4)*v) (hd : Y^2*d = X^4*e)
      (hv : v*e = n) (hn : m = n) : u*d = m := by
    rw [hu,hn,← hv]
    field_simp [hX]
    linear_combination v*hd
  have assembleB (u v d e n m : F)
      (hu : u = (Y^3/X^5)*v) (hd : Y^2*d = X^4*e)
      (hv : v*e = n) (hn : X*m = Y*n) : u*d = m := by
    rw [← hv] at hn
    rw [hu]
    field_simp [hX]
    linear_combination (v*Y)*hd - X^4*hn
  exact ⟨assembleA _ _ _ _ _ _ hs.1 hdA hc.1 (numerator_p4_m2_a_swap X Y k),
    assembleB _ _ _ _ _ _ hs.2 hdB hc.2 (numerator_p4_m2_b_swap X Y k)⟩

#print axioms cleared_p4_m2
end NoFourMUBs.Step2.Critical.NonzeroClearing
