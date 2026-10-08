import CertifiedShiftedResidualEnclosures
import TightOmegaSeedMoments

/-! Additive strongest input composition: actual shifted residual programs,
a supplied rational (including dyadic) square-root certificate, and the checked
tight fixed Fourier-root rectangle. Independent sheet signs and all safe lambda
fallbacks remain. No rational-circle clearing or root-recipe cover is asserted. -/
namespace Mub6.Classification.SharedResidualPolynomials
open Matrix
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SharedSeedSheetIntervals
noncomputable section

def tightShiftedMomentBoxes (B : SeedBoxes) (u : ℚ) (negative : Bool) (side : Side)
    {c : Variable → ℚ} (R D : Fin 3 → ShiftedComplexProgram c)
    (a b radius : Fin 3 → ℚ) : SideMomentBoxes :=
  lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
    (sharedSheetBox B u negative) TightOmegaSeedMoments.omegaRectangle
    (centeredLambdaBoxes
      (fun i => (R i).enclose (seedCoordinateBoxes B (sharedSheetBox B u negative)))
      (fun i => (D i).enclose (seedCoordinateBoxes B (sharedSheetBox B u negative)))
      a b radius)

/-- The same four seed rectangles and a checked sqrt bound feed both sides.
No actual-sheet, Fourier-root, residual, denominator, or phase membership is
supplied: only the exact shifted program identities and physical seed remain. -/
theorem physical_seed_tight_shifted_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) {B : SeedBoxes}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval B) u)
    (c : Side → Variable → ℚ)
    (R D : (side : Side) → Fin 3 → ShiftedComplexProgram (c side))
    (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (tightShiftedMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightShiftedMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  obtain ⟨hs,vs,hhs,hvs⟩ := physical_shared_seed_sheet_boxes hH hB hu
  refine ⟨hs,vs,?_,?_⟩
  · exact certified_physical_shifted_centered_moments hH .horizontal hB hhs
      Hadamard6Extensions.FourPhaseRoots.omega TightOmegaSeedMoments.fixed_omega_rectangle
      (R .horizontal) (D .horizontal) (a .horizontal) (b .horizontal) (radius .horizontal)
      (hR .horizontal) (hD .horizontal)
  · exact certified_physical_shifted_centered_moments hH .vertical hB hvs
      Hadamard6Extensions.FourPhaseRoots.omega TightOmegaSeedMoments.fixed_omega_rectangle
      (R .vertical) (D .vertical) (a .vertical) (b .vertical) (radius .vertical)
      (hR .vertical) (hD .vertical)

/-- Strongest four-circle interface: the rational sqrt bound may be a tighter
exported dyadic certificate; it is not forced to the automatic coarse value. -/
theorem physical_circle_tight_shifted_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (signs : SeedSigns)
    {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval (circleSeedBoxes signs T)) u)
    (c : Side → Variable → ℚ)
    (R D : (side : Side) → Fin 3 → ShiftedComplexProgram (c side))
    (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    let B := circleSeedBoxes signs T
    ∃ hs vs : Bool,
      CoversSideMoments
        (tightShiftedMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightShiftedMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  apply physical_seed_tight_shifted_moment_cover hH _ hu c R D a b radius hR hD
  intro i
  rw [he]
  exact circleSeedBoxes_sound signs ht i

/-- The tight Fourier rectangle is also available with the automatic coarse
sqrt bound, retaining a complete fallback when no tighter certificate is given. -/
theorem physical_circle_coarse_tight_shifted_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (signs : SeedSigns)
    {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i))
    (c : Side → Variable → ℚ)
    (R D : (side : Side) → Fin 3 → ShiftedComplexProgram (c side))
    (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    let B := circleSeedBoxes signs T
    let u := coarseSqrtUpper (sharedRadicandInterval B)
    ∃ hs vs : Bool,
      CoversSideMoments
        (tightShiftedMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightShiftedMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega :=
  physical_circle_tight_shifted_moment_cover hH signs he ht
    (coarseSqrtUpper_certificate _) c R D a b radius hR hD

#print axioms Mub6.Classification.SharedResidualPolynomials.physical_seed_tight_shifted_moment_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_circle_tight_shifted_moment_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_circle_coarse_tight_shifted_moment_cover
end
end Mub6.Classification.SharedResidualPolynomials
