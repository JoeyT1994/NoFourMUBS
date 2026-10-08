import FiniteCarrierEnclosures
import GlobalFourierConditioning
import SideLambdaPhases

/-! Independent semantic-boundary and exact-computation audit probes.
These sample equalities add no claim of physical existence or exclusion. -/
namespace AtlasIndependentProofAudit
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals

theorem circle_positive_endpoint : circleBox false (point 1) = boxPoint 0 1 := by
  norm_num [circleBox, point, clampLower, add, square, sub, neg, mul, rectangle,
    divide, reciprocal, boxPoint, boxNeg, reInterval, imInterval]
theorem circle_negative_endpoint : circleBox false (point (-1)) = boxPoint 0 (-1) := by
  norm_num [circleBox, point, clampLower, add, square, sub, neg, mul, rectangle,
    divide, reciprocal, boxPoint, boxNeg, reInterval, imInterval]
theorem opposite_chart_endpoint : circleBox true (point 1) = boxPoint 0 (-1) := by
  norm_num [circleBox, point, clampLower, add, square, sub, neg, mul, rectangle,
    divide, reciprocal, boxPoint, boxNeg, reInterval, imInterval]
theorem positive_reciprocal_probe : reciprocal ⟨1,2⟩ = (⟨1/2,1⟩ : Interval) := by
  norm_num [reciprocal]

#print Mub6.Numerical.PhaseHadamard
#print Mub6.Numerical.IsRawCommonRay
#print Mub6.Numerical.CarrierBox
#print Mub6.Classification.CompactCover.ChartPhysicalFilter
#print Mub6.Classification.CompactCover.ExplicitPhysicalFilter
#print Mub6.Classification.CarrierIntervals.chartEnclosure_sound
#print Mub6.Classification.CarrierIntervals.phaseHadamard_in_finite_enclosures
#print Hadamard6Extensions.FourierConditioning.ConditionedPhaseSide
#print Hadamard6Extensions.FourierConditioning.phaseHadamard_global_conditioned_sides
#print FourierSeedBinding.six_lambdas_phases_sqrt

#print axioms circle_positive_endpoint
#print axioms circle_negative_endpoint
#print axioms opposite_chart_endpoint
#print axioms positive_reciprocal_probe
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_side_blocks
#print axioms Mub6.Numerical.CircleCharts.unit_circle_complete
#print axioms FourierSeedBinding.strict_radicand_g_positive
#print axioms FourierRadicalGuards.denominator_normSq
#print axioms Mub6.Classification.CarrierIntervals.phaseHadamard_in_finite_enclosures
#print axioms Hadamard6Extensions.FourierConditioning.phaseHadamard_global_conditioned_sides
#print axioms FourierSeedBinding.six_lambdas_phases_sqrt

#eval (circleBox false (point 1)).imLo
#eval (circleBox true (point 1)).imHi
#eval (chartEnclosure (fun _ => false) fullParameterBox 0 0).reLo

end AtlasIndependentProofAudit
