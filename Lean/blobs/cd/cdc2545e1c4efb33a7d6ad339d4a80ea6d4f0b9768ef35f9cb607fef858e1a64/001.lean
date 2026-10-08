import CertifiedResidualEnclosures
import SharedSeedSheetIntervals

/-! Composition with the inherited complete two-sign sheet enclosure.
Both sides share their four seed boxes, but select sheet signs independently. -/
namespace Mub6.Classification.SharedResidualPolynomials
open Matrix MvPolynomial
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SharedSeedSheetIntervals
open FourierSeedBinding Hadamard6Extensions.FourierSide
noncomputable section

def compiledMomentBoxes (B : SeedBoxes) (u : ℚ) (negative : Bool) (side : Side)
    (R D : Fin 3 → ComplexProgram) (a b radius : Fin 3 → ℚ) : SideMomentBoxes :=
  lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
    (sharedSheetBox B u negative) unitBox
    (centeredLambdaBoxes
      (fun i => (R i).enclose (seedCoordinateBoxes B (sharedSheetBox B u negative)))
      (fun i => (D i).enclose (seedCoordinateBoxes B (sharedSheetBox B u negative)))
      a b radius)

/-- Full two-side moment cover: no supplied actual-sheet, residual, denominator,
numerator, lambda, or omega membership remains. -/
theorem physical_shared_seed_centered_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) {B : SeedBoxes}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval B) u)
    (R D : Side → Fin 3 → ComplexProgram) (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (compiledMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) omega ∧
      CoversSideMoments
        (compiledMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega := by
  obtain ⟨hs,vs,hhs,hvs⟩ := physical_shared_seed_sheet_boxes hH hB hu
  refine ⟨hs,vs,?_,?_⟩
  · exact certified_physical_centered_moments hH .horizontal hB hhs omega
      fixed_omega_unitBox (R .horizontal) (D .horizontal)
      (a .horizontal) (b .horizontal) (radius .horizontal) (hR .horizontal) (hD .horizontal)
  · exact certified_physical_centered_moments hH .vertical hB hvs omega
      fixed_omega_unitBox (R .vertical) (D .vertical)
      (a .vertical) (b .vertical) (radius .vertical) (hR .vertical) (hD .vertical)

/-- The coarse exact sqrt certificate removes even an externally supplied
radicand radius certificate; useful width is not asserted. -/
theorem physical_shared_seed_coarse_centered_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) {B : SeedBoxes}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (R D : Side → Fin 3 → ComplexProgram) (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    let u := coarseSqrtUpper (sharedRadicandInterval B)
    ∃ hs vs : Bool,
      CoversSideMoments
        (compiledMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) omega ∧
      CoversSideMoments
        (compiledMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega :=
  physical_shared_seed_centered_moment_cover hH hB (coarseSqrtUpper_certificate _) R D a b radius hR hD

/-- Four real circle-cell memberships feed both sides of the centered compiler.
This boxes the circle coordinates first; rational-circle denominator clearing
inside the polynomial remains a separate, stronger composition task. -/
theorem physical_circle_seed_centered_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (signs : SeedSigns)
    {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i))
    (R D : Side → Fin 3 → ComplexProgram) (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    let B := circleSeedBoxes signs T
    let u := coarseSqrtUpper (sharedRadicandInterval B)
    ∃ hs vs : Bool,
      CoversSideMoments
        (compiledMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) omega ∧
      CoversSideMoments
        (compiledMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega := by
  apply physical_shared_seed_coarse_centered_moment_cover hH _ R D a b radius hR hD
  intro i
  rw [he]
  exact circleSeedBoxes_sound signs ht i

#print axioms Mub6.Classification.SharedResidualPolynomials.physical_shared_seed_centered_moment_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_shared_seed_coarse_centered_moment_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_circle_seed_centered_moment_cover
end
end Mub6.Classification.SharedResidualPolynomials
