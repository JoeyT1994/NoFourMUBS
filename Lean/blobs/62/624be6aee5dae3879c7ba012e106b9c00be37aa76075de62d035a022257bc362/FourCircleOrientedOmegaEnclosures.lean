import FourCircleTightResidualEnclosures
import OrientedOmegaBounds

/-! Direct-circle moment covers with the proved positive-imaginary rectangle
for the actual imported Fourier root. Supplied square-root certificates, one
shared four-parameter circle cell, independent sheet signs, and pole-safe
fallbacks are preserved. -/
set_option autoImplicit false

namespace Mub6.Classification.FourCircleResidualSubstitution
open Matrix MvPolynomial
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.SparsePolynomialIntervals Mub6.Classification.ShiftedPolynomialIntervals
open Mub6.Classification.SharedSeedIntervals Mub6.Classification.SharedSeedSheetIntervals
open FourierSeedBinding Hadamard6Extensions.FourierSide
noncomputable section

def orientedCircleShiftedMomentBoxes (s : SeedSigns) (T : Fin 4 → Interval)
    (u : ℚ) (negative : Bool) (side : Side) {c : CircleVariable → ℚ}
    (SR SD : Fin 3 → ShiftedCircleComplexProgram c) (a b radius : Fin 3 → ℚ) : SideMomentBoxes :=
  let B := circleSeedBoxes s T
  let Z := sharedSheetBox B u negative
  lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
    Z OrientedOmegaBounds.omegaRectangle
    (centeredLambdaBoxes (fun j => (SR j).enclose (circleCoordinateBoxes T Z))
      (fun j => (SD j).enclose (circleCoordinateBoxes T Z)) a b radius)

def orientedCircleMomentBoxes (s : SeedSigns) (T : Fin 4 → Interval)
    (u : ℚ) (negative : Bool) (side : Side)
    (SR SD : Fin 3 → CircleComplexProgram) (a b radius : Fin 3 → ℚ) : SideMomentBoxes :=
  let B := circleSeedBoxes s T
  let Z := sharedSheetBox B u negative
  lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
    Z OrientedOmegaBounds.omegaRectangle
    (centeredLambdaBoxes (fun j => (SR j).enclose (circleCoordinateBoxes T Z))
      (fun j => (SD j).enclose (circleCoordinateBoxes T Z)) a b radius)

theorem orientedCircleMomentBoxes_zeroShift (s : SeedSigns) (T : Fin 4 → Interval)
    (u : ℚ) (negative : Bool) (side : Side)
    (SR SD : Fin 3 → CircleComplexProgram) (a b radius : Fin 3 → ℚ) :
    orientedCircleShiftedMomentBoxes s T u negative side
      (fun i => (SR i).toZeroShift) (fun i => (SD i).toZeroShift) a b radius =
    orientedCircleMomentBoxes s T u negative side SR SD a b radius := by
  simp only [orientedCircleShiftedMomentBoxes,orientedCircleMomentBoxes,
    CircleComplexProgram.toZeroShift_enclose]

/-- Supplied rational/dyadic sqrt bounds and the principal-log oriented omega box are
preserved. The two sheet signs and all pole-safe lambda fallbacks remain. -/
theorem physical_circle_oriented_shifted_scaled_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (s : SeedSigns) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed s t) (T : Fin 4 → Interval)
    (ht : ∀ j, Mem (T j) (t j))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval (circleSeedBoxes s T)) u)
    (Q : Side → Fin 3 → CirclePoly) (R D : Side → Fin 3 → CircleComplexPoly)
    (c : Side → CircleVariable → ℚ)
    (SR SD : (side : Side) → Fin 3 → ShiftedCircleComplexProgram (c side))
    (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, Scales s (Q side i) (R side i) (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, Scales s (Q side i) (D side i) (denominatorPoly side i))
    (hSR : ∀ side i, (SR side i).Represents (R side i))
    (hSD : ∀ side i, (SD side i).Represents (D side i)) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (orientedCircleShiftedMomentBoxes s T u hs .horizontal (SR .horizontal) (SD .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (orientedCircleShiftedMomentBoxes s T u vs .vertical (SR .vertical) (SD .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  have hb : ∀ j, MemRectangle (circleSeedBoxes s T j) (seedEntry H j) := by
    intro j
    rw [hseed]
    exact circleSeedBoxes_sound s ht j
  obtain ⟨hs,vs,hhs,hvs⟩ := physical_shared_seed_sheet_boxes hH hb hu
  refine ⟨hs,vs,?_,?_⟩
  · exact certified_physical_circle_shifted_scaled_moments hH .horizontal s t hseed T _
      OrientedOmegaBounds.omegaRectangle ht hhs
      Hadamard6Extensions.FourPhaseRoots.omega OrientedOmegaBounds.fixed_omega_rectangle
      (Q .horizontal) (R .horizontal) (D .horizontal) (SR .horizontal) (SD .horizontal)
      (a .horizontal) (b .horizontal) (radius .horizontal)
      (hR .horizontal) (hD .horizontal) (hSR .horizontal) (hSD .horizontal)
  · exact certified_physical_circle_shifted_scaled_moments hH .vertical s t hseed T _
      OrientedOmegaBounds.omegaRectangle ht hvs
      Hadamard6Extensions.FourPhaseRoots.omega OrientedOmegaBounds.fixed_omega_rectangle
      (Q .vertical) (R .vertical) (D .vertical) (SR .vertical) (SD .vertical)
      (a .vertical) (b .vertical) (radius .vertical)
      (hR .vertical) (hD .vertical) (hSR .vertical) (hSD .vertical)

/-- An unshifted direct-circle producer needs only its existing identities.
The zero-shift conversion changes neither the polynomial nor the interval. -/
theorem physical_circle_oriented_scaled_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (s : SeedSigns) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed s t) (T : Fin 4 → Interval)
    (ht : ∀ j, Mem (T j) (t j))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval (circleSeedBoxes s T)) u)
    (Q : Side → Fin 3 → CirclePoly) (R D : Side → Fin 3 → CircleComplexPoly)
    (SR SD : Side → Fin 3 → CircleComplexProgram) (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, Scales s (Q side i) (R side i) (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, Scales s (Q side i) (D side i) (denominatorPoly side i))
    (hSR : ∀ side i, (SR side i).Represents (R side i))
    (hSD : ∀ side i, (SD side i).Represents (D side i)) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (orientedCircleMomentBoxes s T u hs .horizontal (SR .horizontal) (SD .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (orientedCircleMomentBoxes s T u vs .vertical (SR .vertical) (SD .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  simpa only [orientedCircleMomentBoxes_zeroShift] using
    physical_circle_oriented_shifted_scaled_moment_cover hH s t hseed T ht hu Q R D
      (fun _ => zeroShift) (fun side i => (SR side i).toZeroShift)
      (fun side i => (SD side i).toZeroShift) a b radius hR hD
      (fun side i => (SR side i).toZeroShift_represents _ (hSR side i))
      (fun side i => (SD side i).toZeroShift_represents _ (hSD side i))

#print axioms Mub6.Classification.FourCircleResidualSubstitution.orientedCircleMomentBoxes_zeroShift
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_circle_oriented_shifted_scaled_moment_cover
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_circle_oriented_scaled_moment_cover
end
end Mub6.Classification.FourCircleResidualSubstitution
