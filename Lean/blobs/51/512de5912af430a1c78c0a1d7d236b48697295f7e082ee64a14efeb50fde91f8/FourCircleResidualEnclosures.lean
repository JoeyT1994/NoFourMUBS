import FourCircleSparseSubstitution
import ScaledCenteredResiduals

/-! Sparse and shifted interval interfaces for directly composed residuals.
The algebraic representation always names an actual ten-coordinate polynomial,
and the physical consumer evaluates it at the selected side's actual sheet. -/
namespace Mub6.Classification.FourCircleResidualSubstitution
open Matrix MvPolynomial
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Mub6.Classification.PoleAtlas Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.SparsePolynomialIntervals Mub6.Classification.ShiftedPolynomialIntervals
open FourierSeedBinding Hadamard6Extensions.FourierSide
noncomputable section

/-- A global algebraic binding, before any interval or physical cell is chosen. -/
def Scales (s : SeedSigns) (Q : CirclePoly) (A : CircleComplexPoly) (P : ComplexPoly) : Prop :=
  ∀ (t : SeedParameters) (z : ℂ), A.eval (chartPoint t z) =
    (evalCircle (chartPoint t z) Q : ℂ) * P.eval (seedPoint (circleSeed s t) z)

theorem clearComplex_scales (s : SeedSigns) (B : DegreeBound) (P : ComplexPoly)
    (hB : ComplexAdmissible B P) : Scales s (clearingDenominator B) (clearComplex s B P) P :=
  fun t z => clearComplex_eval s B P t z hB

theorem Scales.physical {s : SeedSigns} {Q : CirclePoly} {A : CircleComplexPoly}
    {P : ComplexPoly} (h : Scales s Q A P) {H : Mat6} (side : Side)
    (t : SeedParameters) (hseed : seedEntry H = circleSeed s t) :
    A.eval (physicalChartPoint H side t) =
      (evalCircle (physicalChartPoint H side t) Q : ℂ) * P.eval (physicalPoint H side) := by
  simpa only [physicalChartPoint, physicalPoint, hseed] using
    h t (sideSheet (physicalSide H side))

structure CircleComplexProgram where
  re : Program CircleVariable
  im : Program CircleVariable

def CircleComplexProgram.polynomial (S : CircleComplexProgram) : CircleComplexPoly :=
  ⟨programPolynomial S.re, programPolynomial S.im⟩

instance programAdmissibleDecidable (B : DegreeBound) (S : Program Variable) :
    Decidable (ProgramAdmissible B S) := by
  unfold ProgramAdmissible
  infer_instance

theorem cancelledComplexProgram_scales (s : SeedSigns) (B : DegreeBound)
    (oldRe oldIm : Program Variable) (P : ComplexPoly)
    (hRe : programPolynomial oldRe = P.re) (hIm : programPolynomial oldIm = P.im)
    (hBre : ProgramAdmissible B oldRe) (hBim : ProgramAdmissible B oldIm)
    (out : CircleComplexProgram) (F Q : CirclePoly)
    (hpolyRe : F * programPolynomial out.re = clearProgram s B oldRe)
    (hpolyIm : F * programPolynomial out.im = clearProgram s B oldIm)
    (hscale : F * Q = clearingDenominator B)
    (hF : ∀ t z, evalCircle (chartPoint t z) F ≠ 0) :
    Scales s Q out.polynomial P := by
  intro t z
  apply Complex.ext
  · simpa [CircleComplexProgram.polynomial,CircleComplexPoly.eval,ComplexPoly.eval] using
      cancelledProgram_represents s B oldRe P.re hRe hBre out.re F Q hpolyRe hscale t z (hF t z)
  · simpa [CircleComplexProgram.polynomial,CircleComplexPoly.eval,ComplexPoly.eval] using
      cancelledProgram_represents s B oldIm P.im hIm hBim out.im F Q hpolyIm hscale t z (hF t z)

def CircleComplexProgram.Represents (S : CircleComplexProgram) (A : CircleComplexPoly) : Prop :=
  programPolynomial S.re = A.re ∧ programPolynomial S.im = A.im

def CircleComplexProgram.enclose (B : CircleVariable → Interval) (S : CircleComplexProgram) :
    RationalRectangle := rectangle
      (SparsePolynomialIntervals.enclose B S.re) (SparsePolynomialIntervals.enclose B S.im)

theorem CircleComplexProgram.enclose_sound (B : CircleVariable → Interval)
    (p : CircleVariable → ℝ) (hp : ∀ i, Mem (B i) (p i))
    (S : CircleComplexProgram) (A : CircleComplexPoly) (hA : S.Represents A) :
    MemRectangle (S.enclose B) (A.eval p) := by
  rw [CircleComplexProgram.enclose,mem_rectangle_iff]
  exact ⟨enclose_polynomial B p hp S.re A.re hA.1,
    enclose_polynomial B p hp S.im A.im hA.2⟩

structure ShiftedCircleComplexProgram (c : CircleVariable → ℚ) where
  re : Program CircleVariable
  im : Program CircleVariable

def ShiftedCircleComplexProgram.Represents {c : CircleVariable → ℚ}
    (S : ShiftedCircleComplexProgram c) (A : CircleComplexPoly) : Prop :=
  programPolynomial S.re = shiftedPolynomial c A.re ∧
    programPolynomial S.im = shiftedPolynomial c A.im

def ShiftedCircleComplexProgram.enclose {c : CircleVariable → ℚ}
    (B : CircleVariable → Interval) (S : ShiftedCircleComplexProgram c) : RationalRectangle :=
  rectangle (SparsePolynomialIntervals.enclose (shiftedBoxes B c) S.re)
    (SparsePolynomialIntervals.enclose (shiftedBoxes B c) S.im)

theorem ShiftedCircleComplexProgram.enclose_sound {c : CircleVariable → ℚ}
    (B : CircleVariable → Interval) (p : CircleVariable → ℝ) (hp : ∀ i, Mem (B i) (p i))
    (S : ShiftedCircleComplexProgram c) (A : CircleComplexPoly) (hA : S.Represents A) :
    MemRectangle (S.enclose B) (A.eval p) := by
  rw [ShiftedCircleComplexProgram.enclose,mem_rectangle_iff]
  exact ⟨enclose_shifted_polynomial B c p hp S.re A.re hA.1,
    enclose_shifted_polynomial B c p hp S.im A.im hA.2⟩

def circleCoordinateBoxes (T : Fin 4 → Interval) (Z : RationalRectangle) :
    CircleVariable → Interval := Sum.elim T (fun k => if k = 0 then reInterval Z else imInterval Z)

theorem circleCoordinateBoxes_sound (T : Fin 4 → Interval) (Z : RationalRectangle)
    (t : SeedParameters) (z : ℂ) (ht : ∀ j, Mem (T j) (t j)) (hz : MemRectangle Z z) :
    ∀ i, Mem (circleCoordinateBoxes T Z i) (chartPoint t z i) := by
  intro i
  cases i with
  | inl j => exact ht j
  | inr k =>
      by_cases hk : k = 0
      · simpa only [circleCoordinateBoxes,chartPoint,Sum.elim_inr,if_pos hk] using
          (show Mem (reInterval Z) z.re from ⟨hz.1,hz.2.1⟩)
      · simpa only [circleCoordinateBoxes,chartPoint,Sum.elim_inr,if_neg hk] using
          (show Mem (imInterval Z) z.im from hz.2.2)

theorem sparse_scaled_physical_enclosure {H : Mat6} (side : Side)
    (s : SeedSigns) (t : SeedParameters) (hseed : seedEntry H = circleSeed s t)
    (T : Fin 4 → Interval) (Z : RationalRectangle)
    (ht : ∀ j, Mem (T j) (t j)) (hz : MemRectangle Z (sideSheet (physicalSide H side)))
    (Q : CirclePoly) (A : CircleComplexPoly) (P : ComplexPoly) (S : CircleComplexProgram)
    (hscale : Scales s Q A P) (hS : S.Represents A) :
    MemRectangle (S.enclose (circleCoordinateBoxes T Z))
      ((evalCircle (physicalChartPoint H side t) Q : ℂ) * P.eval (physicalPoint H side)) := by
  rw [← hscale.physical side t hseed]
  exact S.enclose_sound _ _ (circleCoordinateBoxes_sound T Z t _ ht hz) A hS

theorem shifted_scaled_physical_enclosure {H : Mat6} (side : Side)
    (s : SeedSigns) (t : SeedParameters) (hseed : seedEntry H = circleSeed s t)
    (T : Fin 4 → Interval) (Z : RationalRectangle)
    (ht : ∀ j, Mem (T j) (t j)) (hz : MemRectangle Z (sideSheet (physicalSide H side)))
    (Q : CirclePoly) (A : CircleComplexPoly) (P : ComplexPoly)
    {c : CircleVariable → ℚ} (S : ShiftedCircleComplexProgram c)
    (hscale : Scales s Q A P) (hS : S.Represents A) :
    MemRectangle (S.enclose (circleCoordinateBoxes T Z))
      ((evalCircle (physicalChartPoint H side t) Q : ℂ) * P.eval (physicalPoint H side)) := by
  rw [← hscale.physical side t hseed]
  exact S.enclose_sound _ _ (circleCoordinateBoxes_sound T Z t _ ht hz) A hS

/-- The same scale polynomial is used for R=N-cD and D at each index.
The inherited consumer keeps every failed denominator/radius test as fallback. -/
theorem certified_physical_circle_scaled_lambdas {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side) (s : SeedSigns) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed s t) (T : Fin 4 → Interval) (Z : RationalRectangle)
    (ht : ∀ j, Mem (T j) (t j)) (hz : MemRectangle Z (sideSheet (physicalSide H side)))
    (Q : Fin 3 → CirclePoly) (R D : Fin 3 → CircleComplexPoly)
    (SR SD : Fin 3 → CircleComplexProgram) (a b radius : Fin 3 → ℚ)
    (hR : ∀ i, Scales s (Q i) (R i) (residualPoly side (a i) (b i) i))
    (hD : ∀ i, Scales s (Q i) (D i) (denominatorPoly side i))
    (hSR : ∀ i, (SR i).Represents (R i)) (hSD : ∀ i, (SD i).Represents (D i)) :
    ∀ i, MemRectangle (centeredLambdaBoxes
      (fun j => (SR j).enclose (circleCoordinateBoxes T Z))
      (fun j => (SD j).enclose (circleCoordinateBoxes T Z)) a b radius i)
      (sideLambda (physicalSide H side) i) := by
  apply physical_scaled_centered_lambda_boxes hH side
    (fun i => (evalCircle (physicalChartPoint H side t) (Q i) : ℂ))
  · intro i
    exact sparse_scaled_physical_enclosure side s t hseed T Z ht hz _ _ _ _ (hR i) (hSR i)
  · intro i
    exact sparse_scaled_physical_enclosure side s t hseed T Z ht hz _ _ _ _ (hD i) (hSD i)

theorem certified_physical_circle_shifted_scaled_lambdas {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side) (s : SeedSigns) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed s t) (T : Fin 4 → Interval) (Z : RationalRectangle)
    (ht : ∀ j, Mem (T j) (t j)) (hz : MemRectangle Z (sideSheet (physicalSide H side)))
    (Q : Fin 3 → CirclePoly) (R D : Fin 3 → CircleComplexPoly)
    {c : CircleVariable → ℚ} (SR SD : Fin 3 → ShiftedCircleComplexProgram c) (a b radius : Fin 3 → ℚ)
    (hR : ∀ i, Scales s (Q i) (R i) (residualPoly side (a i) (b i) i))
    (hD : ∀ i, Scales s (Q i) (D i) (denominatorPoly side i))
    (hSR : ∀ i, (SR i).Represents (R i)) (hSD : ∀ i, (SD i).Represents (D i)) :
    ∀ i, MemRectangle (centeredLambdaBoxes
      (fun j => (SR j).enclose (circleCoordinateBoxes T Z))
      (fun j => (SD j).enclose (circleCoordinateBoxes T Z)) a b radius i)
      (sideLambda (physicalSide H side) i) := by
  apply physical_scaled_centered_lambda_boxes hH side
    (fun i => (evalCircle (physicalChartPoint H side t) (Q i) : ℂ))
  · intro i
    exact shifted_scaled_physical_enclosure side s t hseed T Z ht hz _ _ _ _ (hR i) (hSR i)
  · intro i
    exact shifted_scaled_physical_enclosure side s t hseed T Z ht hz _ _ _ _ (hD i) (hSD i)

theorem certified_physical_circle_shifted_scaled_moments {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side) (s : SeedSigns) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed s t) (T : Fin 4 → Interval) (Z W : RationalRectangle)
    (ht : ∀ j, Mem (T j) (t j)) (hz : MemRectangle Z (sideSheet (physicalSide H side)))
    (w : ℂ) (hw : MemRectangle W w)
    (Q : Fin 3 → CirclePoly) (R D : Fin 3 → CircleComplexPoly)
    {c : CircleVariable → ℚ} (SR SD : Fin 3 → ShiftedCircleComplexProgram c) (a b radius : Fin 3 → ℚ)
    (hR : ∀ i, Scales s (Q i) (R i) (residualPoly side (a i) (b i) i))
    (hD : ∀ i, Scales s (Q i) (D i) (denominatorPoly side i))
    (hSR : ∀ i, (SR i).Represents (R i)) (hSD : ∀ i, (SD i).Represents (D i)) :
    CoversSideMoments
      (lambdaMomentBoxes (sideBoxes (SharedSeedIntervals.circleSeedBoxes s T) side).s
        (sideBoxes (SharedSeedIntervals.circleSeedBoxes s T) side).t
        (sideBoxes (SharedSeedIntervals.circleSeedBoxes s T) side).r Z W
        (centeredLambdaBoxes (fun j => (SR j).enclose (circleCoordinateBoxes T Z))
          (fun j => (SD j).enclose (circleCoordinateBoxes T Z)) a b radius))
      (physicalSide H side 1) (physicalSide H side 2) w := by
  have hb : ∀ j, MemRectangle (SharedSeedIntervals.circleSeedBoxes s T j) (seedEntry H j) := by
    intro j
    rw [hseed]
    exact SharedSeedIntervals.circleSeedBoxes_sound s ht j
  apply physical_scaled_centered_moment_cover hH side
    (fun i => (evalCircle (physicalChartPoint H side t) (Q i) : ℂ)) hb hz w hw
  · intro i
    exact shifted_scaled_physical_enclosure side s t hseed T Z ht hz _ _ _ _ (hR i) (hSR i)
  · intro i
    exact shifted_scaled_physical_enclosure side s t hseed T Z ht hz _ _ _ _ (hD i) (hSD i)

open Mub6.Classification.SharedSeedIntervals Mub6.Classification.SharedSeedSheetIntervals

def circleShiftedMomentBoxes (s : SeedSigns) (T : Fin 4 → Interval)
    (u : ℚ) (negative : Bool) (side : Side) {c : CircleVariable → ℚ}
    (SR SD : Fin 3 → ShiftedCircleComplexProgram c) (a b radius : Fin 3 → ℚ) : SideMomentBoxes :=
  let B := circleSeedBoxes s T
  let Z := sharedSheetBox B u negative
  lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r Z unitBox
    (centeredLambdaBoxes (fun j => (SR j).enclose (circleCoordinateBoxes T Z))
      (fun j => (SD j).enclose (circleCoordinateBoxes T Z)) a b radius)

/-- Both actual sheets are derived from the same four circle intervals.
Their signs remain independent, zero radicand is retained, and every inherited
pole-safe fallback remains available. Only exact program identities and a
shared physical circle-cell membership are premises. -/
theorem physical_circle_shifted_scaled_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (s : SeedSigns) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed s t) (T : Fin 4 → Interval)
    (ht : ∀ j, Mem (T j) (t j))
    (Q : Side → Fin 3 → CirclePoly) (R D : Side → Fin 3 → CircleComplexPoly)
    (c : Side → CircleVariable → ℚ)
    (SR SD : (side : Side) → Fin 3 → ShiftedCircleComplexProgram (c side))
    (a b radius : Side → Fin 3 → ℚ)
    (hR : ∀ side i, Scales s (Q side i) (R side i) (residualPoly side (a side i) (b side i) i))
    (hD : ∀ side i, Scales s (Q side i) (D side i) (denominatorPoly side i))
    (hSR : ∀ side i, (SR side i).Represents (R side i))
    (hSD : ∀ side i, (SD side i).Represents (D side i)) :
    let u := coarseSqrtUpper (sharedRadicandInterval (circleSeedBoxes s T))
    ∃ hs vs : Bool,
      CoversSideMoments
        (circleShiftedMomentBoxes s T u hs .horizontal (SR .horizontal) (SD .horizontal)
          (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (circleShiftedMomentBoxes s T u vs .vertical (SR .vertical) (SD .vertical)
          (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega := by
  have hb : ∀ j, MemRectangle (circleSeedBoxes s T j) (seedEntry H j) := by
    intro j
    rw [hseed]
    exact circleSeedBoxes_sound s ht j
  obtain ⟨hs,vs,hhs,hvs⟩ := physical_shared_seed_sheet_boxes hH hb
    (coarseSqrtUpper_certificate (sharedRadicandInterval (circleSeedBoxes s T)))
  refine ⟨hs,vs,?_,?_⟩
  · exact certified_physical_circle_shifted_scaled_moments hH .horizontal s t hseed T _ unitBox ht hhs
      Hadamard6Extensions.FourPhaseRoots.omega fixed_omega_unitBox
      (Q .horizontal) (R .horizontal) (D .horizontal) (SR .horizontal) (SD .horizontal)
      (a .horizontal) (b .horizontal) (radius .horizontal)
      (hR .horizontal) (hD .horizontal) (hSR .horizontal) (hSD .horizontal)
  · exact certified_physical_circle_shifted_scaled_moments hH .vertical s t hseed T _ unitBox ht hvs
      Hadamard6Extensions.FourPhaseRoots.omega fixed_omega_unitBox
      (Q .vertical) (R .vertical) (D .vertical) (SR .vertical) (SD .vertical)
      (a .vertical) (b .vertical) (radius .vertical)
      (hR .vertical) (hD .vertical) (hSR .vertical) (hSD .vertical)

#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearComplex_scales
#print axioms Mub6.Classification.FourCircleResidualSubstitution.Scales.physical
#print axioms Mub6.Classification.FourCircleResidualSubstitution.cancelledComplexProgram_scales
#print axioms Mub6.Classification.FourCircleResidualSubstitution.CircleComplexProgram.enclose_sound
#print axioms Mub6.Classification.FourCircleResidualSubstitution.ShiftedCircleComplexProgram.enclose_sound
#print axioms Mub6.Classification.FourCircleResidualSubstitution.circleCoordinateBoxes_sound
#print axioms Mub6.Classification.FourCircleResidualSubstitution.sparse_scaled_physical_enclosure
#print axioms Mub6.Classification.FourCircleResidualSubstitution.shifted_scaled_physical_enclosure
#print axioms Mub6.Classification.FourCircleResidualSubstitution.certified_physical_circle_scaled_lambdas
#print axioms Mub6.Classification.FourCircleResidualSubstitution.certified_physical_circle_shifted_scaled_lambdas
#print axioms Mub6.Classification.FourCircleResidualSubstitution.certified_physical_circle_shifted_scaled_moments
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_circle_shifted_scaled_moment_cover
end
end Mub6.Classification.FourCircleResidualSubstitution
