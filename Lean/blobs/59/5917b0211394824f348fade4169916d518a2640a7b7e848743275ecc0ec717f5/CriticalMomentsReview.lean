import CriticalStripLocal
import CriticalWholeMoments
import CriticalNewtonTable

set_option autoImplicit false
namespace CriticalMomentsReview20261003
open Mub6 Mub6.Classification
open CompactCover GlobalCornerDomain CriticalPhysical20261003
open FourierSeedBinding FourPhase
open CriticalStripMoments20261003
open scoped BigOperators
noncomputable section

/-- The invariant is the literal permanent times determinant squared, divided
only by the product of actual unit entries. -/
theorem literal_physical_square {E : CompactCover.Mat3}
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1) :
    -(permanent3 E * E.det^2 / (∏ i, ∏ j, E i j) -
      star (permanent3 E * E.det^2 / (∏ i, ∏ j, E i j)))^2 =
      ShoulderPhaseGate20261002.radicand (sideS E) (sideT E) (sideR E) := by
  simpa only [signedInvariant,phaseInvariant,entryProduct] using
    invariant_square_radicand E hE h0

/-- Only the twenty corners of this strip must be critical. -/
theorem literal_strip_sum {H : CompactCover.Mat6} (hH : NormalizedCarrier H)
    (hzero : ∀ c : Fin 20, CriticalScalarReduction20261003.R
      (sideP (stripCorner H c)) (sideJ (stripCorner H c))
      (sideW (stripCorner H c))=0) :
    (∑ c : Fin 20,
      -(permanent3 (stripCorner H c) * (stripCorner H c).det^2 /
          (∏ i, ∏ j, stripCorner H c i j) -
        star (permanent3 (stripCorner H c) * (stripCorner H c).det^2 /
          (∏ i, ∏ j, stripCorner H c i j)))^2)=0 := by
  simpa only [complexSquareSum,signedInvariant,phaseInvariant,entryProduct] using
    stripAllCritical_complexSquareSum_zero (And.intro hH hzero)

theorem global_supplies_literal_strip {H : CompactCover.Mat6}
    (hH : AllCritical H) : StripAllCritical H ∧ squareSum H=0 ∧ complexSquareSum H=0 :=
  ⟨allCritical_stripAllCritical hH,allCritical_squareSum_zero hH,
    allCritical_complexSquareSum_zero hH⟩

/-- The six discarded moments follow from the actual full rows alone. -/
theorem six_literal_row_moments {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    (∑ j : Fin 6, (H 1 j)^(1:ℤ)*(H 2 j)^(0:ℤ))=0 ∧
    (∑ j : Fin 6, (H 1 j)^(-1:ℤ)*(H 2 j)^(0:ℤ))=0 ∧
    (∑ j : Fin 6, (H 1 j)^(0:ℤ)*(H 2 j)^(1:ℤ))=0 ∧
    (∑ j : Fin 6, (H 1 j)^(0:ℤ)*(H 2 j)^(-1:ℤ))=0 ∧
    (∑ j : Fin 6, (H 1 j)^(1:ℤ)*(H 2 j)^(-1:ℤ))=0 ∧
    (∑ j : Fin 6, (H 1 j)^(-1:ℤ)*(H 2 j)^(1:ℤ))=0 :=
  stripMoment_six_zeros hH

/-- All43 entries are literal three-column sums; no independence of columns
or determinant nonvanishing is required. -/
theorem literal_newton_table (E : CompactCover.Mat3)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (k : Fin 43) :
    let a := (CriticalNewton20261003.momentIndices k).1
    let b := (CriticalNewton20261003.momentIndices k).2
    (E 1 0)^a*(E 2 0)^b+(E 1 1)^a*(E 2 1)^b+(E 1 2)^a*(E 2 2)^b =
      CriticalNewton20261003.newtonTable (CriticalNewton20261003.dataOf (E 1) (E 2)) k :=
  CriticalNewton20261003.phase_block_newton_table E hE k

/-- A completely repeated unit block remains in the moment table's domain. -/
theorem repeated_unit_block_table (k : Fin 43) :
    CriticalNewton20261003.moment (fun _ => 1) (fun _ => 1)
      (CriticalNewton20261003.momentIndices k).1
      (CriticalNewton20261003.momentIndices k).2 =
    CriticalNewton20261003.newtonTable
      (CriticalNewton20261003.dataOf (fun _ => 1) (fun _ => 1)) k :=
  CriticalNewton20261003.phase_block_newton_table (fun _ _ => 1)
    (by intro i j; norm_num) k

end
#print axioms literal_physical_square
#print axioms literal_strip_sum
#print axioms global_supplies_literal_strip
#print axioms six_literal_row_moments
#print axioms literal_newton_table
#print axioms repeated_unit_block_table
end CriticalMomentsReview20261003
