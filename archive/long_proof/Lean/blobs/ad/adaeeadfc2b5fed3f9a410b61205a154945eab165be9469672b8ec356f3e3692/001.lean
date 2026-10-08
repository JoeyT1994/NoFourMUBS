import PhysicalResidualPolynomials
import HybridLambdaMasks

/-! Closed quantitative branch cover of the SIX actual lambda denominators.
The rational threshold bounds squared complex norm. A true mask coordinate
retains the actual unit phase on the thick region; it need not be an exact pole.
This is a pointwise finite cover, not a subdivision or root-recipe algorithm. -/
namespace Mub6.Classification.SharedResidualPolynomials
open Matrix MvPolynomial
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open FourierSeedBinding Hadamard6Extensions.FourierSide
open Hadamard6Extensions.FourPhaseGram
noncomputable section

abbrev SixPoleMask := PoleMask × PoleMask

def sixMaskAt (m : SixPoleMask) : Side → PoleMask
  | .horizontal => m.1
  | .vertical => m.2

theorem six_pole_mask_count : Fintype.card SixPoleMask = 64 := by
  simp only [SixPoleMask,Fintype.card_prod,pole_mask_count]

theorem signed_six_pole_label_count : Fintype.card (Bool × Bool × SixPoleMask) = 256 := by
  simp only [Fintype.card_prod,Fintype.card_bool,six_pole_mask_count]

/-- Closed alternatives overlap at the threshold. They never delete the
actual phase or its cleared equation, even when the denominator vanishes. -/
structure ThickPoleBranch (threshold : ℚ) (active : Bool) (N D L : ℂ) : Prop where
  threshold_nonneg : 0 ≤ threshold
  phase : Complex.normSq L = 1
  cleared : N = D * L
  unit_fallback : MemRectangle unitBox L
  thick_bound : active = true → Complex.normSq D ≤ (threshold : ℝ)
  regular_bound : active = false → (threshold : ℝ) ≤ Complex.normSq D

theorem thick_branch_cover (threshold : ℚ) (hτ : 0 ≤ threshold)
    {N D L : ℂ} (hL : Complex.normSq L = 1) (hE : N = D*L) :
    ∃ active : Bool, ThickPoleBranch threshold active N D L := by
  classical
  by_cases ht : Complex.normSq D ≤ (threshold : ℝ)
  · exact ⟨true,hτ,hL,hE,mem_unitBox (le_of_eq hL),fun _ => ht,by simp⟩
  · exact ⟨false,hτ,hL,hE,mem_unitBox (le_of_eq hL),by simp,
      fun _ => le_of_lt (lt_of_not_ge ht)⟩

theorem ThickPoleBranch.normSq_numerator {threshold : ℚ} {active : Bool} {N D L : ℂ}
    (h : ThickPoleBranch threshold active N D L) : Complex.normSq N = Complex.normSq D := by
  rw [h.cleared,map_mul,h.phase,mul_one]

theorem ThickPoleBranch.thick_numerator_bound {threshold : ℚ} {active : Bool} {N D L : ℂ}
    (h : ThickPoleBranch threshold active N D L) (ha : active = true) :
    Complex.normSq N ≤ (threshold : ℝ) := by
  rw [h.normSq_numerator]
  exact h.thick_bound ha

/-- Rational recovery needs a POSITIVE threshold. At threshold zero, the
closed regular inequality alone must not be mistaken for nonvanishing. -/
theorem ThickPoleBranch.regular_nonzero {threshold : ℚ} {active : Bool} {N D L : ℂ}
    (h : ThickPoleBranch threshold active N D L) (hτ : 0 < threshold)
    (ha : active = false) : D ≠ 0 := by
  have ht : (0 : ℝ) < threshold := by exact_mod_cast hτ
  have hd := h.regular_bound ha
  intro hz
  rw [hz] at hd
  norm_num at hd
  linarith

theorem ThickPoleBranch.regular_rational {threshold : ℚ} {active : Bool} {N D L : ℂ}
    (h : ThickPoleBranch threshold active N D L) (hτ : 0 < threshold)
    (ha : active = false) : N / D = L := by
  rw [h.cleared,mul_div_cancel_left₀ _ (h.regular_nonzero hτ ha)]

theorem ThickPoleBranch.zero_threshold_thick {N D L : ℂ}
    (h : ThickPoleBranch 0 true N D L) : D = 0 := by
  have hd := h.thick_bound rfl
  have he : Complex.normSq D = 0 := le_antisymm (by simpa using hd) (Complex.normSq_nonneg D)
  exact Complex.normSq_eq_zero.mp he

def physicalNumeratorValue (H : Mat6) (side : Side) (i : Fin 3) : ℂ :=
  FourierGramNumerators.numerator (sideS (physicalSide H side))
    (sideT (physicalSide H side)) (sideR (physicalSide H side)) i

def physicalDenominatorValue (H : Mat6) (side : Side) (i : Fin 3) : ℂ :=
  liftedDenominator (sideS (physicalSide H side)) (sideT (physicalSide H side))
    (sideR (physicalSide H side)) (sideSheet (physicalSide H side)) i

/-- The denominator is exactly the current shared polynomial's physical value. -/
theorem physical_denominator_value_eval {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) (i : Fin 3) :
    (denominatorPoly side i).eval (physicalPoint H side) = physicalDenominatorValue H side i :=
  physical_denominator hH side i

theorem physical_actual_lambda_data {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) :
    IsPhase3 (sideLambda (physicalSide H side)) ∧
      ∀ i, physicalNumeratorValue H side i =
        physicalDenominatorValue H side i * sideLambda (physicalSide H side) i := by
  obtain ⟨hL,_,_,_,hE⟩ := actual_lambda_binding (physicalSide H side 1)
    (physicalSide H side 2) (physical_phase hH side 1) (physical_phase hH side 2)
    (physical_det_ne_zero hH side)
  refine ⟨hL,?_⟩
  simpa only [physicalNumeratorValue,physicalDenominatorValue,sideS,sideT,sideR,
    FourierPhysicalSide.s,FourierPhysicalSide.t,FourierPhysicalSide.r,sum3,cross3,
    sideSheet,actualSheet,sideLambda,actualLambda,LambdaEquations] using hE

def PhysicalSixThickPoleData (H : Mat6) (threshold : ℚ) (m : SixPoleMask) : Prop :=
  ∀ side i, ThickPoleBranch threshold (sixMaskAt m side i)
    (physicalNumeratorValue H side i) (physicalDenominatorValue H side i)
    (sideLambda (physicalSide H side) i)

theorem physical_six_thick_mask_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (threshold : ℚ) (hτ : 0 ≤ threshold) :
    ∃ m : SixPoleMask, PhysicalSixThickPoleData H threshold m := by
  have hc (side : Side) (i : Fin 3) := thick_branch_cover threshold hτ
    ((physical_actual_lambda_data hH side).1 i) ((physical_actual_lambda_data hH side).2 i)
  choose mask hm using hc
  refine ⟨(mask .horizontal,mask .vertical),?_⟩
  intro side i
  cases side <;> exact hm _ i

/-- Unit-phase fallback is valid on every thick branch, not only at exact zero.
The cleared equation and numerator smallness remain attached to that phase. -/
theorem physical_thick_coordinate_retained {H : Mat6} {threshold : ℚ} {m : SixPoleMask}
    (hm : PhysicalSixThickPoleData H threshold m) (side : Side) (i : Fin 3)
    (ha : sixMaskAt m side i = true) :
    MemRectangle unitBox (sideLambda (physicalSide H side) i) ∧
      physicalNumeratorValue H side i = physicalDenominatorValue H side i *
        sideLambda (physicalSide H side) i ∧
      Complex.normSq (physicalDenominatorValue H side i) ≤ (threshold : ℝ) ∧
      Complex.normSq (physicalNumeratorValue H side i) ≤ (threshold : ℝ) :=
  ⟨(hm side i).unit_fallback,(hm side i).cleared,
    (hm side i).thick_bound ha,(hm side i).thick_numerator_bound ha⟩

/-- The existing maskedLambda operation also supports thick masks at positive
thresholds: active inputs retain actual phases and inactive entries divide safely.
No claim that a thick mask satisfies the old ExactPoleMask predicate is made. -/
theorem physical_thick_maskedLambda_matches {H : Mat6} {threshold : ℚ} {m : SixPoleMask}
    (hm : PhysicalSixThickPoleData H threshold m) (hτ : 0 < threshold) (side : Side) :
    maskedLambda (sideS (physicalSide H side)) (sideT (physicalSide H side))
      (sideR (physicalSide H side)) (sideSheet (physicalSide H side)) (sixMaskAt m side)
      (fun i => sideLambda (physicalSide H side) i.val) = sideLambda (physicalSide H side) := by
  funext i
  unfold maskedLambda
  split_ifs with hi
  · rfl
  · have hf : sixMaskAt m side i = false := Bool.eq_false_iff.mpr hi
    exact (hm side i).regular_rational hτ hf

def PhysicalSheetPair (H : Mat6) (hs vs : Bool) : Prop :=
  sideSheet (physicalSide H .horizontal) = zeta
    (sideS (physicalSide H .horizontal)) (sideT (physicalSide H .horizontal))
    (sideR (physicalSide H .horizontal)) hs ∧
  sideSheet (physicalSide H .vertical) = zeta
    (sideS (physicalSide H .vertical)) (sideT (physicalSide H .vertical))
    (sideR (physicalSide H .vertical)) vs

theorem physical_sheet_pair_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ hs vs : Bool, PhysicalSheetPair H hs vs := by
  have hc (side : Side) := actual_sheet_choice (physicalSide H side 1)
    (physicalSide H side 2) (physical_phase hH side 1) (physical_phase hH side 2)
    (physical_det_ne_zero hH side)
  obtain ⟨hs,hhs⟩ := hc .horizontal
  obtain ⟨vs,hvs⟩ := hc .vertical
  refine ⟨hs,vs,?_,?_⟩
  · simpa only [sideSheet,sideS,sideT,sideR,FourierPhysicalSide.s,
      FourierPhysicalSide.t,FourierPhysicalSide.r,sum3,cross3] using hhs
  · simpa only [sideSheet,sideS,sideT,sideR,FourierPhysicalSide.s,
      FourierPhysicalSide.t,FourierPhysicalSide.r,sum3,cross3] using hvs

/-- The current normalized physical atlas carries both independent sheet signs
and one of the 64 six-coordinate closed thick/regular masks. -/
theorem normalized_physical_six_thick_pole_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (threshold : ℚ) (hτ : 0 ≤ threshold) :
    ∃ hs vs : Bool, ∃ m : SixPoleMask,
      PhysicalSheetPair H hs vs ∧ PhysicalSixThickPoleData H threshold m := by
  obtain ⟨hs,vs,hS⟩ := physical_sheet_pair_cover hH
  obtain ⟨m,hm⟩ := physical_six_thick_mask_cover hH threshold hτ
  exact ⟨hs,vs,m,hS,hm⟩

/-- Extension to the inherited finite good-side normalization cover. This only
adds pointwise sheet/mask data; it does not assert a finite cell or root-recipe cover. -/
theorem phaseHadamard_thick_pole_atlas {H : Mat6} (hH : PhaseHadamard H)
    (threshold : ℚ) (hτ : 0 ≤ threshold) :
    ∃ k : Fin 20, NormalizedGoodSideCarrier (normalizedSideCarrier H k) ∧
      ∃ hs vs : Bool, ∃ m : SixPoleMask,
        PhysicalSheetPair (normalizedSideCarrier H k) hs vs ∧
        PhysicalSixThickPoleData (normalizedSideCarrier H k) threshold m := by
  obtain ⟨k,hk⟩ := phaseHadamard_normalized_good_side_cover hH
  exact ⟨k,hk,normalized_physical_six_thick_pole_cover hk threshold hτ⟩

#print axioms Mub6.Classification.SharedResidualPolynomials.six_pole_mask_count
#print axioms Mub6.Classification.SharedResidualPolynomials.signed_six_pole_label_count
#print axioms Mub6.Classification.SharedResidualPolynomials.thick_branch_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.ThickPoleBranch.normSq_numerator
#print axioms Mub6.Classification.SharedResidualPolynomials.ThickPoleBranch.thick_numerator_bound
#print axioms Mub6.Classification.SharedResidualPolynomials.ThickPoleBranch.regular_nonzero
#print axioms Mub6.Classification.SharedResidualPolynomials.ThickPoleBranch.regular_rational
#print axioms Mub6.Classification.SharedResidualPolynomials.ThickPoleBranch.zero_threshold_thick
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_denominator_value_eval
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_actual_lambda_data
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_six_thick_mask_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_thick_coordinate_retained
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_thick_maskedLambda_matches
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_sheet_pair_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.normalized_physical_six_thick_pole_cover
#print axioms Mub6.Classification.SharedResidualPolynomials.phaseHadamard_thick_pole_atlas
end
end Mub6.Classification.SharedResidualPolynomials
