import CriticalStripPhysical

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalStripMoments20261003
open Mub6 Mub6.Classification
open CompactCover FourierSeedBinding FourPhase GlobalCornerDomain
open CriticalPhysical20261003 CriticalRowSum20261003
open scoped BigOperators
noncomputable section

/-- The two exponents are integers; the variables are the literal second and
third complete rows, in the order used by the supplied moment verifier. -/
def stripMoment (H : CompactCover.Mat6) (a b : ℤ) : ℂ :=
  ∑ j : Fin 6, (H 1 j)^a * (H 2 j)^b

theorem stripMoment_zero_zero (H : CompactCover.Mat6) : stripMoment H 0 0=6 := by
  simp [stripMoment]

theorem stripMoment_conjugate {H : CompactCover.Mat6} (hH : NormalizedCarrier H)
    (a b : ℤ) : star (stripMoment H a b)=stripMoment H (-a) (-b) := by
  simp only [stripMoment,map_sum,star_mul,star_zpow₀]
  apply Finset.sum_congr rfl
  intro j _
  have hx := Hadamard6.one_div_eq_star_of_normSq_eq_one (hH.1.1 1 j)
  have hy := Hadamard6.one_div_eq_star_of_normSq_eq_one (hH.1.1 2 j)
  rw [← hx,← hy]
  simp [one_div,zpow_neg]

theorem stripMoment_one_zero {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    stripMoment H 1 0=0 := by
  simpa [stripMoment,relativeRow,hH.2.1] using
    relative_row_sum_zero hH.1 (show (1 : Fin 6)≠0 by decide)

theorem stripMoment_zero_one {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    stripMoment H 0 1=0 := by
  simpa [stripMoment,relativeRow,hH.2.1] using
    relative_row_sum_zero hH.1 (show (2 : Fin 6)≠0 by decide)

theorem stripMoment_neg_one_one {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    stripMoment H (-1) 1=0 := by
  have hu (j : Fin 6) : (H 1 j)⁻¹=star (H 1 j) := by
    simpa only [one_div] using Hadamard6.one_div_eq_star_of_normSq_eq_one (hH.1.1 1 j)
  simpa [stripMoment,relativeRow,hu,mul_comm] using
    relative_row_sum_zero hH.1 (show (2 : Fin 6)≠1 by decide)

/-- Exactly the six zero Laurent moments discarded by the supplied expansion;
only physical row orthogonality and unit entries are used. -/
theorem stripMoment_six_zeros {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    stripMoment H 1 0=0 ∧ stripMoment H (-1) 0=0 ∧
    stripMoment H 0 1=0 ∧ stripMoment H 0 (-1)=0 ∧
    stripMoment H 1 (-1)=0 ∧ stripMoment H (-1) 1=0 := by
  have h10 := stripMoment_one_zero hH
  have h01 := stripMoment_zero_one hH
  have hn11 := stripMoment_neg_one_one hH
  have h1 := stripMoment_conjugate hH 1 0
  have h2 := stripMoment_conjugate hH 0 1
  have h3 := stripMoment_conjugate hH (-1) 1
  simp only [h10,h01,hn11,star_zero,neg_zero,neg_neg] at h1 h2 h3
  exact ⟨h10,h1.symm,h01,h2.symm,h3.symm,hn11⟩

/-- Exact passage from a Laurent monomial in three independently selected
columns to three whole-strip moments. No distinctness or division by six is
silently imposed on these ordered sums. -/
theorem triple_monomial_sum (H : CompactCover.Mat6) (a b c d e f : ℤ) :
    (∑ i : Fin 6, ∑ j : Fin 6, ∑ k : Fin 6,
      ((H 1 i)^a * (H 2 i)^b) *
      ((H 1 j)^c * (H 2 j)^d) *
      ((H 1 k)^e * (H 2 k)^f)) =
        stripMoment H a b * stripMoment H c d * stripMoment H e f := by
  simp only [stripMoment,mul_assoc]
  rw [Finset.sum_mul_sum,Finset.sum_mul_sum]
  simp only [Finset.mul_sum,mul_assoc]

end
#print axioms stripMoment_zero_zero
#print axioms stripMoment_conjugate
#print axioms stripMoment_one_zero
#print axioms stripMoment_zero_one
#print axioms stripMoment_neg_one_one
#print axioms stripMoment_six_zeros
#print axioms triple_monomial_sum
end CriticalStripMoments20261003
