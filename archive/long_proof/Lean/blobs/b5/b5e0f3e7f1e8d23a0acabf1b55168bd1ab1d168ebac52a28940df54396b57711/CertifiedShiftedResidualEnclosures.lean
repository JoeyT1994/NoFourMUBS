import CertifiedSeedSheetResiduals
import ShiftedPolynomialIntervals

/-! Shifted normalized sparse programs feed the actual centered lambda consumer.
The rational variable shift is unrelated to the complex lambda center. All
program identities denote P(c + delta); boxes denote delta = actualPoint - c.
No residual or denominator membership is supplied as an analytic premise. -/
namespace Mub6.Classification.SharedResidualPolynomials
open Matrix MvPolynomial
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SharedSeedSheetIntervals
open Mub6.Classification.SparsePolynomialIntervals
open Mub6.Classification.ShiftedPolynomialIntervals
open FourierSeedBinding Hadamard6Extensions.FourierSide
noncomputable section

/-- Both real/imaginary programs use the same rational coordinate shift c. -/
structure ShiftedComplexProgram (c : Variable → ℚ) where
  re : Program Variable
  im : Program Variable

def ShiftedComplexProgram.Represents {c : Variable → ℚ}
    (S : ShiftedComplexProgram c) (P : ComplexPoly) : Prop :=
  programPolynomial S.re = shiftedPolynomial c P.re ∧
    programPolynomial S.im = shiftedPolynomial c P.im

def ShiftedComplexProgram.enclose {c : Variable → ℚ} (B : Variable → Interval)
    (S : ShiftedComplexProgram c) : RationalRectangle := rectangle
      (SparsePolynomialIntervals.enclose (shiftedBoxes B c) S.re)
      (SparsePolynomialIntervals.enclose (shiftedBoxes B c) S.im)

theorem ShiftedComplexProgram.enclose_sound {c : Variable → ℚ}
    (B : Variable → Interval) (p : Variable → ℝ) (hp : ∀ i, Mem (B i) (p i))
    (S : ShiftedComplexProgram c) (P : ComplexPoly) (hP : S.Represents P) :
    MemRectangle (S.enclose B) (P.eval p) := by
  rw [ShiftedComplexProgram.enclose,mem_rectangle_iff]
  exact ⟨enclose_shifted_polynomial B c p hp S.re P.re hP.1,
    enclose_shifted_polynomial B c p hp S.im P.im hP.2⟩

/-- Actual phase enclosures from shifted program identities and coordinate
memberships. The original unshifted physical point is the consumer's point. -/
theorem certified_physical_shifted_centered_lambdas {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side)
    {B : Fin 4 → RationalRectangle} {Z : RationalRectangle}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (hZ : MemRectangle Z (sideSheet (physicalSide H side)))
    {c : Variable → ℚ} (R D : Fin 3 → ShiftedComplexProgram c)
    (a b radius : Fin 3 → ℚ)
    (hR : ∀ i, (R i).Represents (residualPoly side (a i) (b i) i))
    (hD : ∀ i, (D i).Represents (denominatorPoly side i)) :
    ∀ i, MemRectangle
      (centeredLambdaBoxes (fun i => (R i).enclose (seedCoordinateBoxes B Z))
        (fun i => (D i).enclose (seedCoordinateBoxes B Z)) a b radius i)
      (sideLambda (physicalSide H side) i) := by
  apply physical_centered_lambda_boxes hH side
  · intro i
    exact (R i).enclose_sound _ _ (physical_coordinates_mem side hB hZ) _ (hR i)
  · intro i
    exact (D i).enclose_sound _ _ (physical_coordinates_mem side hB hZ) _ (hD i)

/-- All inherited moments are recovered using the shifted certified enclosures,
with unchanged safe fallback when any sufficient denominator/radius test fails. -/
theorem certified_physical_shifted_centered_moments {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side)
    {B : Fin 4 → RationalRectangle} {Z W : RationalRectangle}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (hZ : MemRectangle Z (sideSheet (physicalSide H side)))
    (w : ℂ) (hW : MemRectangle W w)
    {c : Variable → ℚ} (R D : Fin 3 → ShiftedComplexProgram c)
    (a b radius : Fin 3 → ℚ)
    (hR : ∀ i, (R i).Represents (residualPoly side (a i) (b i) i))
    (hD : ∀ i, (D i).Represents (denominatorPoly side i)) :
    CoversSideMoments
      (lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
        Z W (centeredLambdaBoxes (fun i => (R i).enclose (seedCoordinateBoxes B Z))
          (fun i => (D i).enclose (seedCoordinateBoxes B Z)) a b radius))
      (physicalSide H side 1) (physicalSide H side 2) w := by
  have hs := physical_side_boxes hH side hB
  apply actual_lambda_moment_cover _ _ w (physical_phase hH side 1)
    (physical_phase hH side 2) (physical_det_ne_zero hH side) _ _ _ hZ hW
    (certified_physical_shifted_centered_lambdas hH side hB hZ R D a b radius hR hD)
  · simpa only [sideS,FourierPhysicalSide.s,sum3] using hs.s_mem
  · simpa only [sideT,FourierPhysicalSide.t,sum3] using hs.t_mem
  · simpa only [sideR,FourierPhysicalSide.r,cross3] using hs.r_mem

def shiftedCompiledMomentBoxes (B : SeedBoxes) (u : ℚ) (negative : Bool) (side : Side)
    {c : Variable → ℚ} (R D : Fin 3 → ShiftedComplexProgram c) (a b radius : Fin 3 → ℚ) : SideMomentBoxes :=
  lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
    (sharedSheetBox B u negative) unitBox
    (centeredLambdaBoxes
      (fun i => (R i).enclose (seedCoordinateBoxes B (sharedSheetBox B u negative)))
      (fun i => (D i).enclose (seedCoordinateBoxes B (sharedSheetBox B u negative)))
      a b radius)

/-- Full two-side moment cover: no supplied actual-sheet, residual, denominator,
numerator, lambda, or Hadamard6Extensions.FourPhaseRoots.omega membership remains. -/
theorem physical_shared_seed_shifted_centered_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) {B : SeedBoxes}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval B) u)
    (c : Side → Variable → ℚ) (R D : (side : Side) → Fin 3 → ShiftedComplexProgram (c side)) (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (shiftedCompiledMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (shiftedCompiledMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  obtain ⟨hs,vs,hhs,hvs⟩ := physical_shared_seed_sheet_boxes hH hB hu
  refine ⟨hs,vs,?_,?_⟩
  · exact certified_physical_shifted_centered_moments hH .horizontal hB hhs Hadamard6Extensions.FourPhaseRoots.omega
      fixed_omega_unitBox (R .horizontal) (D .horizontal)
      (a .horizontal) (b .horizontal) (radius .horizontal) (hR .horizontal) (hD .horizontal)
  · exact certified_physical_shifted_centered_moments hH .vertical hB hvs Hadamard6Extensions.FourPhaseRoots.omega
      fixed_omega_unitBox (R .vertical) (D .vertical)
      (a .vertical) (b .vertical) (radius .vertical) (hR .vertical) (hD .vertical)

/-- The coarse exact sqrt certificate removes even an externally supplied
radicand radius certificate; useful width is not asserted. -/
theorem physical_shared_seed_coarse_shifted_centered_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) {B : SeedBoxes}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (c : Side → Variable → ℚ) (R D : (side : Side) → Fin 3 → ShiftedComplexProgram (c side)) (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    let u := coarseSqrtUpper (sharedRadicandInterval B)
    ∃ hs vs : Bool,
      CoversSideMoments
        (shiftedCompiledMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (shiftedCompiledMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega :=
  physical_shared_seed_shifted_centered_moment_cover hH hB (coarseSqrtUpper_certificate _) c R D a b radius hR hD

/-- Four real circle-cell memberships feed both sides of the centered compiler.
This boxes the circle coordinates first; rational-circle denominator clearing
inside the polynomial remains a separate, stronger composition task. -/
theorem physical_circle_seed_shifted_centered_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (signs : SeedSigns)
    {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i))
    (c : Side → Variable → ℚ) (R D : (side : Side) → Fin 3 → ShiftedComplexProgram (c side)) (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, (R side i).Represents (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, (D side i).Represents (denominatorPoly side i)) :
    let B := circleSeedBoxes signs T
    let u := coarseSqrtUpper (sharedRadicandInterval B)
    ∃ hs vs : Bool,
      CoversSideMoments
        (shiftedCompiledMomentBoxes B u hs .horizontal (R .horizontal) (D .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (shiftedCompiledMomentBoxes B u vs .vertical (R .vertical) (D .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  apply physical_shared_seed_coarse_shifted_centered_moment_cover hH _ c R D a b radius hR hD
  intro i
  rw [he]
  exact circleSeedBoxes_sound signs ht i

#print axioms Mub6.Classification.SharedResidualPolynomials.ShiftedComplexProgram.enclose_sound
#print axioms Mub6.Classification.SharedResidualPolynomials.certified_physical_shifted_centered_lambdas
#print axioms Mub6.Classification.SharedResidualPolynomials.certified_physical_shifted_centered_moments
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_shared_seed_shifted_centered_moment_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_shared_seed_coarse_shifted_centered_moment_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_circle_seed_shifted_centered_moment_cover
end
end Mub6.Classification.SharedResidualPolynomials
