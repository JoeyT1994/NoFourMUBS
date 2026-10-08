import FourCircleResidualEnclosures
import TightOmegaSeedMoments

/-! Preserve supplied rational square-root certificates and the checked tight
Fourier-root rectangle for the direct circle residual compiler. The zero-shift
bridge retains the exact unshifted sparse enclosure and needs no new producer
identity beyond its original polynomial identity. -/
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

def zeroShift : CircleVariable → ℚ := fun _ => 0

theorem shiftedPolynomial_zero (P : CirclePoly) : shiftedPolynomial zeroShift P = P := by
  simp [shiftedPolynomial,zeroShift]

theorem shiftedBoxes_zero (B : CircleVariable → Interval) : shiftedBoxes B zeroShift = B := by
  funext i
  simp [shiftedBoxes,zeroShift,IntervalKernel.sub,IntervalKernel.add,IntervalKernel.neg,point]

def CircleComplexProgram.toZeroShift (S : CircleComplexProgram) :
    ShiftedCircleComplexProgram zeroShift := ⟨S.re,S.im⟩

theorem CircleComplexProgram.represents_polynomial (S : CircleComplexProgram) :
    S.Represents S.polynomial := ⟨rfl,rfl⟩

theorem CircleComplexProgram.toZeroShift_represents (S : CircleComplexProgram)
    (A : CircleComplexPoly) (h : S.Represents A) : S.toZeroShift.Represents A := by
  simpa only [ShiftedCircleComplexProgram.Represents,CircleComplexProgram.toZeroShift,
    CircleComplexProgram.Represents,shiftedPolynomial_zero] using h

theorem CircleComplexProgram.toZeroShift_enclose (S : CircleComplexProgram)
    (B : CircleVariable → Interval) : S.toZeroShift.enclose B = S.enclose B := by
  simp only [ShiftedCircleComplexProgram.enclose,CircleComplexProgram.toZeroShift,
    shiftedBoxes_zero,CircleComplexProgram.enclose]

def tightCircleShiftedMomentBoxes (s : SeedSigns) (T : Fin 4 → Interval)
    (u : ℚ) (negative : Bool) (side : Side) {c : CircleVariable → ℚ}
    (SR SD : Fin 3 → ShiftedCircleComplexProgram c) (a b radius : Fin 3 → ℚ) : SideMomentBoxes :=
  let B := circleSeedBoxes s T
  let Z := sharedSheetBox B u negative
  lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
    Z TightOmegaSeedMoments.omegaRectangle
    (centeredLambdaBoxes (fun j => (SR j).enclose (circleCoordinateBoxes T Z))
      (fun j => (SD j).enclose (circleCoordinateBoxes T Z)) a b radius)

def tightCircleMomentBoxes (s : SeedSigns) (T : Fin 4 → Interval)
    (u : ℚ) (negative : Bool) (side : Side)
    (SR SD : Fin 3 → CircleComplexProgram) (a b radius : Fin 3 → ℚ) : SideMomentBoxes :=
  let B := circleSeedBoxes s T
  let Z := sharedSheetBox B u negative
  lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
    Z TightOmegaSeedMoments.omegaRectangle
    (centeredLambdaBoxes (fun j => (SR j).enclose (circleCoordinateBoxes T Z))
      (fun j => (SD j).enclose (circleCoordinateBoxes T Z)) a b radius)

theorem tightCircleMomentBoxes_zeroShift (s : SeedSigns) (T : Fin 4 → Interval)
    (u : ℚ) (negative : Bool) (side : Side)
    (SR SD : Fin 3 → CircleComplexProgram) (a b radius : Fin 3 → ℚ) :
    tightCircleShiftedMomentBoxes s T u negative side
      (fun i => (SR i).toZeroShift) (fun i => (SD i).toZeroShift) a b radius =
    tightCircleMomentBoxes s T u negative side SR SD a b radius := by
  simp only [tightCircleShiftedMomentBoxes,tightCircleMomentBoxes,
    CircleComplexProgram.toZeroShift_enclose]

/-- Supplied rational/dyadic sqrt bounds and the inherited tight omega box are
preserved. The two sheet signs and all pole-safe lambda fallbacks remain. -/
theorem physical_circle_tight_shifted_scaled_moment_cover {H : Mat6}
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
        (tightCircleShiftedMomentBoxes s T u hs .horizontal (SR .horizontal) (SD .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightCircleShiftedMomentBoxes s T u vs .vertical (SR .vertical) (SD .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  have hb : ∀ j, MemRectangle (circleSeedBoxes s T j) (seedEntry H j) := by
    intro j
    rw [hseed]
    exact circleSeedBoxes_sound s ht j
  obtain ⟨hs,vs,hhs,hvs⟩ := physical_shared_seed_sheet_boxes hH hb hu
  refine ⟨hs,vs,?_,?_⟩
  · exact certified_physical_circle_shifted_scaled_moments hH .horizontal s t hseed T _
      TightOmegaSeedMoments.omegaRectangle ht hhs
      Hadamard6Extensions.FourPhaseRoots.omega TightOmegaSeedMoments.fixed_omega_rectangle
      (Q .horizontal) (R .horizontal) (D .horizontal) (SR .horizontal) (SD .horizontal)
      (a .horizontal) (b .horizontal) (radius .horizontal)
      (hR .horizontal) (hD .horizontal) (hSR .horizontal) (hSD .horizontal)
  · exact certified_physical_circle_shifted_scaled_moments hH .vertical s t hseed T _
      TightOmegaSeedMoments.omegaRectangle ht hvs
      Hadamard6Extensions.FourPhaseRoots.omega TightOmegaSeedMoments.fixed_omega_rectangle
      (Q .vertical) (R .vertical) (D .vertical) (SR .vertical) (SD .vertical)
      (a .vertical) (b .vertical) (radius .vertical)
      (hR .vertical) (hD .vertical) (hSR .vertical) (hSD .vertical)

/-- An unshifted direct-circle producer needs only its existing identities.
The zero-shift conversion changes neither the polynomial nor the interval. -/
theorem physical_circle_tight_scaled_moment_cover {H : Mat6}
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
        (tightCircleMomentBoxes s T u hs .horizontal (SR .horizontal) (SD .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightCircleMomentBoxes s T u vs .vertical (SR .vertical) (SD .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  simpa only [tightCircleMomentBoxes_zeroShift] using
    physical_circle_tight_shifted_scaled_moment_cover hH s t hseed T ht hu Q R D
      (fun _ => zeroShift) (fun side i => (SR side i).toZeroShift)
      (fun side i => (SD side i).toZeroShift) a b radius hR hD
      (fun side i => (SR side i).toZeroShift_represents _ (hSR side i))
      (fun side i => (SD side i).toZeroShift_represents _ (hSD side i))

#print axioms Mub6.Classification.FourCircleResidualSubstitution.shiftedPolynomial_zero
#print axioms Mub6.Classification.FourCircleResidualSubstitution.shiftedBoxes_zero
#print axioms Mub6.Classification.FourCircleResidualSubstitution.CircleComplexProgram.represents_polynomial
#print axioms Mub6.Classification.FourCircleResidualSubstitution.CircleComplexProgram.toZeroShift_represents
#print axioms Mub6.Classification.FourCircleResidualSubstitution.CircleComplexProgram.toZeroShift_enclose
#print axioms Mub6.Classification.FourCircleResidualSubstitution.tightCircleMomentBoxes_zeroShift
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_circle_tight_shifted_scaled_moment_cover
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_circle_tight_scaled_moment_cover
end
end Mub6.Classification.FourCircleResidualSubstitution
