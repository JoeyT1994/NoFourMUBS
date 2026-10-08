import FourierConditioning
import ConditionedFourierChart
import CompactCarrierCover
import AdjugateReconstruction
import NormalizedCarrierTransport
import SixteenCircleCover
import CompactChartFilters
import SixteenDyadicCover
import RationalCarrierIntervals
import SixteenCarrierEnclosure
import FiniteCarrierEnclosures
import GlobalFourierConditioning
import PhysicalCarrierEnclosures
import GramNumerators
import SeedInvariants
import SideLambdaPhases
import PhysicalSideForward
import PhysicalSideSheet
import PhysicalSideRational
import RootCarrierExport
import MixedCarrierExport
import GaussianCarrierExport
import NeighborhoodCarrierExport

namespace AtlasIndependentAddendumPortAudit
open FourierPhysicalSide

theorem explicit_actual_side_sheet (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : Complex.normSq x0 = 1) (hx1 : Complex.normSq x1 = 1)
    (hx2 : Complex.normSq x2 = 1) (hy0 : Complex.normSq y0 = 1)
    (hy1 : Complex.normSq y1 = 1) (hy2 : Complex.normSq y2 = 1)
    (hD : (side x0 x1 x2 y0 y1 y2).det ≠ 0) :
    ∃ w : ℝ,
      w^2 = FourierRadicalGuards.radicand
        (FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2))
        (FourierGramNumerators.chi (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2))
        (FourierGramNumerators.eta (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2)) ∧
      physicalSheet x0 x1 x2 y0 y1 y2 = FourierRadicalGuards.sheet
        (FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2))
        (FourierGramNumerators.chi (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2)) w :=
  physicalSheet_lifted x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD

#print Mub6.Numerical.PhaseHadamard
#print Mub6.Classification.CompactCover.ChartPhysicalFilter
#print FourierPhysicalSide.side
#print FourierPhysicalSide.orientationPhase
#print FourierPhysicalSide.physicalSheet
#print FourierPhysicalSide.sideDenominator
#print FourierPhysicalSide.physicalLambda
#print axioms explicit_actual_side_sheet
#check Mub6.Classification.CompactCover.unit_star_mul
#print axioms Mub6.Classification.CompactCover.unit_star_mul
#check Mub6.Classification.CompactCover.unit_mul_star
#print axioms Mub6.Classification.CompactCover.unit_mul_star
#check Mub6.Classification.CompactCover.normalizingRows_unit
#print axioms Mub6.Classification.CompactCover.normalizingRows_unit
#check Mub6.Classification.CompactCover.normalizingCols_unit
#print axioms Mub6.Classification.CompactCover.normalizingCols_unit
#check Mub6.Classification.CompactCover.normalizingRows_zero
#print axioms Mub6.Classification.CompactCover.normalizingRows_zero
#check Mub6.Classification.CompactCover.rephase_PhaseHadamard
#print axioms Mub6.Classification.CompactCover.rephase_PhaseHadamard
#check Mub6.Classification.CompactCover.normalizeCarrier_PhaseHadamard
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_PhaseHadamard
#check Mub6.Classification.CompactCover.normalizeCarrier_first_row
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_first_row
#check Mub6.Classification.CompactCover.normalizeCarrier_first_column
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_first_column
#check Mub6.Classification.CompactCover.rephase_det_normSq
#print axioms Mub6.Classification.CompactCover.rephase_det_normSq
#check Mub6.Classification.CompactCover.normalizeCarrier_minor_normSq
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_minor_normSq
#check Mub6.Classification.CompactCover.phaseHadamard_normalized_good_side_cover
#print axioms Mub6.Classification.CompactCover.phaseHadamard_normalized_good_side_cover
#check Mub6.Classification.CompactCover.normalized_good_side_guards
#print axioms Mub6.Classification.CompactCover.normalized_good_side_guards
#check Mub6.Classification.CompactCover.gram_mul_quotient
#print axioms Mub6.Classification.CompactCover.gram_mul_quotient
#check Mub6.Classification.CompactCover.side_sandwich_identity
#print axioms Mub6.Classification.CompactCover.side_sandwich_identity
#check Mub6.Classification.CompactCover.back_ne_front
#print axioms Mub6.Classification.CompactCover.back_ne_front
#check Mub6.Classification.CompactCover.bottom_left_rowGram
#print axioms Mub6.Classification.CompactCover.bottom_left_rowGram
#check Mub6.Classification.CompactCover.phaseHadamard_forcedD
#print axioms Mub6.Classification.CompactCover.phaseHadamard_forcedD
#check Mub6.Classification.CompactCover.normalized_gram_ne_zero
#print axioms Mub6.Classification.CompactCover.normalized_gram_ne_zero
#check Mub6.Classification.CompactCover.normalized_good_side_reconstruction
#print axioms Mub6.Classification.CompactCover.normalized_good_side_reconstruction
#check Mub6.Classification.CompactCover.blockCarrier_blocks
#print axioms Mub6.Classification.CompactCover.blockCarrier_blocks
#check Mub6.Classification.CompactCover.blockCarrier_self
#print axioms Mub6.Classification.CompactCover.blockCarrier_self
#check Mub6.Classification.CompactCover.normalized_reconstructedCarrier
#print axioms Mub6.Classification.CompactCover.normalized_reconstructedCarrier
#check Mub6.Classification.CompactCover.phaseHadamard_complete_reconstruction
#print axioms Mub6.Classification.CompactCover.phaseHadamard_complete_reconstruction
#check Mub6.Classification.CompactCover.rephase_carrierAmplitude
#print axioms Mub6.Classification.CompactCover.rephase_carrierAmplitude
#check Mub6.Classification.CompactCover.normalizeCarrier_commonRay
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_commonRay
#check Mub6.Classification.CompactCover.normalizedSideRay_commonRay
#print axioms Mub6.Classification.CompactCover.normalizedSideRay_commonRay
#check Mub6.Classification.CompactCover.normalizedSideRay_rawOverlap
#print axioms Mub6.Classification.CompactCover.normalizedSideRay_rawOverlap
#check Mub6.Classification.CompactCover.phaseHadamard_normalized_good_side_cover_with_rays
#print axioms Mub6.Classification.CompactCover.phaseHadamard_normalized_good_side_cover_with_rays
#check Mub6.Classification.CompactCover.free_coordinate_count
#print axioms Mub6.Classification.CompactCover.free_coordinate_count
#check Mub6.Classification.CompactCover.carrier_sign_count
#print axioms Mub6.Classification.CompactCover.carrier_sign_count
#check Mub6.Classification.CompactCover.freeEntry_unit
#print axioms Mub6.Classification.CompactCover.freeEntry_unit
#check Mub6.Classification.CompactCover.freeE_of_normalized
#print axioms Mub6.Classification.CompactCover.freeE_of_normalized
#check Mub6.Classification.CompactCover.freeB_of_normalized
#print axioms Mub6.Classification.CompactCover.freeB_of_normalized
#check Mub6.Classification.CompactCover.freeC_of_normalized
#print axioms Mub6.Classification.CompactCover.freeC_of_normalized
#check Mub6.Classification.CompactCover.normalized_sixteen_circle_cover
#print axioms Mub6.Classification.CompactCover.normalized_sixteen_circle_cover
#check Mub6.Classification.CompactCover.phaseHadamard_sixteen_parameter_cover
#print axioms Mub6.Classification.CompactCover.phaseHadamard_sixteen_parameter_cover
#check Mub6.Classification.CompactCover.chart_circle_denominator_bound
#print axioms Mub6.Classification.CompactCover.chart_circle_denominator_bound
#check Mub6.Classification.CompactCover.physical_chart_gram_guard
#print axioms Mub6.Classification.CompactCover.physical_chart_gram_guard
#check Mub6.Classification.CompactCover.parameter_cube_isCompact
#print axioms Mub6.Classification.CompactCover.parameter_cube_isCompact
#check Mub6.Classification.CompactCover.tagged_chart_count
#print axioms Mub6.Classification.CompactCover.tagged_chart_count
#check Mub6.Classification.CompactCover.freeE_unit
#print axioms Mub6.Classification.CompactCover.freeE_unit
#check Mub6.Classification.CompactCover.freeB_unit
#print axioms Mub6.Classification.CompactCover.freeB_unit
#check Mub6.Classification.CompactCover.freeC_unit
#print axioms Mub6.Classification.CompactCover.freeC_unit
#check Mub6.Classification.CompactCover.reconstructed_first_row
#print axioms Mub6.Classification.CompactCover.reconstructed_first_row
#check Mub6.Classification.CompactCover.reconstructed_first_column
#print axioms Mub6.Classification.CompactCover.reconstructed_first_column
#check Mub6.Classification.CompactCover.chartCarrier_unit_iff
#print axioms Mub6.Classification.CompactCover.chartCarrier_unit_iff
#check Mub6.Classification.CompactCover.chart_physical_filter_iff
#print axioms Mub6.Classification.CompactCover.chart_physical_filter_iff
#check Mub6.Classification.CompactCover.explicit_filter_denominators
#print axioms Mub6.Classification.CompactCover.explicit_filter_denominators
#check Mub6.Classification.CompactCover.parameterDyadicGrid_complete
#print axioms Mub6.Classification.CompactCover.parameterDyadicGrid_complete
#check Mub6.Classification.CompactCover.parameterDyadicGrid_length
#print axioms Mub6.Classification.CompactCover.parameterDyadicGrid_length
#check Mub6.Classification.CompactCover.parameter_cube_finite_dyadic_cover
#print axioms Mub6.Classification.CompactCover.parameter_cube_finite_dyadic_cover
#check Mub6.Classification.CompactCover.phaseHadamard_finite_dyadic_cover
#print axioms Mub6.Classification.CompactCover.phaseHadamard_finite_dyadic_cover
#check FourierGramNumerators.gram_det
#print axioms FourierGramNumerators.gram_det
#check FourierGramNumerators.gram_adjugate_diag
#print axioms FourierGramNumerators.gram_adjugate_diag
#check FourierGramNumerators.numerator_normSq
#print axioms FourierGramNumerators.numerator_normSq
#check FourierSeedBinding.seed_transpose
#print axioms FourierSeedBinding.seed_transpose
#check FourierSeedBinding.gramV_eq_gramH_swap
#print axioms FourierSeedBinding.gramV_eq_gramH_swap
#check FourierSeedBinding.qV_eq_q_swap
#print axioms FourierSeedBinding.qV_eq_q_swap
#check FourierSeedBinding.detE_swap
#print axioms FourierSeedBinding.detE_swap
#check FourierSeedBinding.permE_swap
#print axioms FourierSeedBinding.permE_swap
#check FourierSeedBinding.g_swap
#print axioms FourierSeedBinding.g_swap
#check FourierSeedBinding.eta_swap
#print axioms FourierSeedBinding.eta_swap
#check FourierSeedBinding.sigma_swap
#print axioms FourierSeedBinding.sigma_swap
#check FourierSeedBinding.gramH_entries
#print axioms FourierSeedBinding.gramH_entries
#check FourierSeedBinding.g_gram_binding
#print axioms FourierSeedBinding.g_gram_binding
#check FourierSeedBinding.q_gram_binding
#print axioms FourierSeedBinding.q_gram_binding
#check FourierSeedBinding.sigma_gram_binding
#print axioms FourierSeedBinding.sigma_gram_binding
#check FourierSeedBinding.eta_gram_binding
#print axioms FourierSeedBinding.eta_gram_binding
#check FourierSeedBinding.chi_gram_binding
#print axioms FourierSeedBinding.chi_gram_binding
#check FourierSeedBinding.phase_mul_star
#print axioms FourierSeedBinding.phase_mul_star
#check FourierSeedBinding.one_sub_norm_sum_factor
#print axioms FourierSeedBinding.one_sub_norm_sum_factor
#check FourierSeedBinding.one_sub_norm_ratio_sum_factor
#print axioms FourierSeedBinding.one_sub_norm_ratio_sum_factor
#check FourierSeedBinding.cofactor_shift_product_formula
#print axioms FourierSeedBinding.cofactor_shift_product_formula
#check FourierSeedBinding.cofactor_shift_product_swap
#print axioms FourierSeedBinding.cofactor_shift_product_swap
#check FourierSeedBinding.chi_swap
#print axioms FourierSeedBinding.chi_swap
#check FourierSeedBinding.radicand_swap
#print axioms FourierSeedBinding.radicand_swap
#check FourierSeedBinding.vertical_scalars_equal
#print axioms FourierSeedBinding.vertical_scalars_equal
#check FourierSeedBinding.numeratorH_actual_gram
#print axioms FourierSeedBinding.numeratorH_actual_gram
#check FourierSeedBinding.numeratorV_actual_gram
#print axioms FourierSeedBinding.numeratorV_actual_gram
#check FourierSeedBinding.numeratorH_normSq
#print axioms FourierSeedBinding.numeratorH_normSq
#check FourierSeedBinding.numeratorV_normSq
#print axioms FourierSeedBinding.numeratorV_normSq
#check FourierSeedBinding.phase_of_equal_normSq
#print axioms FourierSeedBinding.phase_of_equal_normSq
#check FourierSeedBinding.lambdaH_phase_guarded
#print axioms FourierSeedBinding.lambdaH_phase_guarded
#check FourierSeedBinding.lambdaV_phase_guarded
#print axioms FourierSeedBinding.lambdaV_phase_guarded
#check FourierSeedBinding.lambdaH_phase_strict
#print axioms FourierSeedBinding.lambdaH_phase_strict
#check FourierSeedBinding.lambdaV_phase_strict
#print axioms FourierSeedBinding.lambdaV_phase_strict
#check FourierSeedBinding.six_lambdas_phases_both_sheets
#print axioms FourierSeedBinding.six_lambdas_phases_both_sheets
#check FourierSeedBinding.six_lambdas_phases_sqrt
#print axioms FourierSeedBinding.six_lambdas_phases_sqrt
#check FourierSeedBinding.phase_div
#print axioms FourierSeedBinding.phase_div
#check FourierSeedBinding.lambda_ratios_phase_strict
#print axioms FourierSeedBinding.lambda_ratios_phase_strict
#check Hadamard6Extensions.FourierConditioning.cube_equal_normSq
#print axioms Hadamard6Extensions.FourierConditioning.cube_equal_normSq
#check Hadamard6Extensions.FourierConditioning.omega_normSq
#print axioms Hadamard6Extensions.FourierConditioning.omega_normSq
#check Hadamard6Extensions.FourierConditioning.normSq_sum_three_le
#print axioms Hadamard6Extensions.FourierConditioning.normSq_sum_three_le
#check Hadamard6Extensions.FourierConditioning.firstMode_normSq_le_one
#print axioms Hadamard6Extensions.FourierConditioning.firstMode_normSq_le_one
#check Hadamard6Extensions.FourierConditioning.secondMode_normSq_le_one
#print axioms Hadamard6Extensions.FourierConditioning.secondMode_normSq_le_one
#check Hadamard6Extensions.FourierConditioning.normSq_sub_le_twice
#print axioms Hadamard6Extensions.FourierConditioning.normSq_sub_le_twice
#check Hadamard6Extensions.FourierConditioning.discriminant_normSq
#print axioms Hadamard6Extensions.FourierConditioning.discriminant_normSq
#check Hadamard6Extensions.FourierConditioning.larger_product_bounds
#print axioms Hadamard6Extensions.FourierConditioning.larger_product_bounds
#check Hadamard6Extensions.FourierConditioning.inverse_normSq_le_ten
#print axioms Hadamard6Extensions.FourierConditioning.inverse_normSq_le_ten
#check Hadamard6Extensions.FourierConditioning.large_pivot_good_data
#print axioms Hadamard6Extensions.FourierConditioning.large_pivot_good_data
#check Hadamard6Extensions.FourierConditioning.affine_good_conditioned_chart
#print axioms Hadamard6Extensions.FourierConditioning.affine_good_conditioned_chart
#check Hadamard6Extensions.FourierConditioning.physical_good_side_conditioned_chart
#print axioms Hadamard6Extensions.FourierConditioning.physical_good_side_conditioned_chart
#check Hadamard6Extensions.FourierConditioning.conditionedPhaseSide_of_good
#print axioms Hadamard6Extensions.FourierConditioning.conditionedPhaseSide_of_good
#check Hadamard6Extensions.FourierConditioning.phaseHadamard_global_conditioned_sides
#print axioms Hadamard6Extensions.FourierConditioning.phaseHadamard_global_conditioned_sides
#check Mub6.Classification.CarrierIntervals.mem_clampLower
#print axioms Mub6.Classification.CarrierIntervals.mem_clampLower
#check Mub6.Classification.CarrierIntervals.mem_reciprocal
#print axioms Mub6.Classification.CarrierIntervals.mem_reciprocal
#check Mub6.Classification.CarrierIntervals.mem_divide
#print axioms Mub6.Classification.CarrierIntervals.mem_divide
#check Mub6.Classification.CarrierIntervals.mem_boxDivideReal
#print axioms Mub6.Classification.CarrierIntervals.mem_boxDivideReal
#check Mub6.Classification.CarrierIntervals.circleBox_sound
#print axioms Mub6.Classification.CarrierIntervals.circleBox_sound
#check Mub6.Classification.CarrierIntervals.mem_matrixMul
#print axioms Mub6.Classification.CarrierIntervals.mem_matrixMul
#check Mub6.Classification.CarrierIntervals.mem_matrixConjTranspose
#print axioms Mub6.Classification.CarrierIntervals.mem_matrixConjTranspose
#check Mub6.Classification.CarrierIntervals.mem_matrixNeg
#print axioms Mub6.Classification.CarrierIntervals.mem_matrixNeg
#check Mub6.Classification.CarrierIntervals.mem_matrixSub
#print axioms Mub6.Classification.CarrierIntervals.mem_matrixSub
#check Mub6.Classification.CarrierIntervals.mem_matrixDivideReal
#print axioms Mub6.Classification.CarrierIntervals.mem_matrixDivideReal
#check Mub6.Classification.CarrierIntervals.mem_scalarIdentity
#print axioms Mub6.Classification.CarrierIntervals.mem_scalarIdentity
#check Mub6.Classification.CarrierIntervals.mem_residualBox
#print axioms Mub6.Classification.CarrierIntervals.mem_residualBox
#check Mub6.Classification.CarrierIntervals.mem_detBox
#print axioms Mub6.Classification.CarrierIntervals.mem_detBox
#check Mub6.Classification.CarrierIntervals.mem_adjugateBox
#print axioms Mub6.Classification.CarrierIntervals.mem_adjugateBox
#check Mub6.Classification.CarrierIntervals.gramDetBox_positive
#print axioms Mub6.Classification.CarrierIntervals.gramDetBox_positive
#check Mub6.Classification.CarrierIntervals.mem_gramDetBox
#print axioms Mub6.Classification.CarrierIntervals.mem_gramDetBox
#check Mub6.Classification.CarrierIntervals.forcedD_real_quotient
#print axioms Mub6.Classification.CarrierIntervals.forcedD_real_quotient
#check Mub6.Classification.CarrierIntervals.lowerBlockBox_sound
#print axioms Mub6.Classification.CarrierIntervals.lowerBlockBox_sound
#check Mub6.Classification.CarrierIntervals.mem_one_box
#print axioms Mub6.Classification.CarrierIntervals.mem_one_box
#check Mub6.Classification.CarrierIntervals.mem_freeBoxE
#print axioms Mub6.Classification.CarrierIntervals.mem_freeBoxE
#check Mub6.Classification.CarrierIntervals.mem_freeBoxB
#print axioms Mub6.Classification.CarrierIntervals.mem_freeBoxB
#check Mub6.Classification.CarrierIntervals.mem_freeBoxC
#print axioms Mub6.Classification.CarrierIntervals.mem_freeBoxC
#check Mub6.Classification.CarrierIntervals.mem_blockBoxes
#print axioms Mub6.Classification.CarrierIntervals.mem_blockBoxes
#check Mub6.Classification.CarrierIntervals.chartEnclosure_sound
#print axioms Mub6.Classification.CarrierIntervals.chartEnclosure_sound
#check Mub6.Classification.CarrierIntervals.phaseHadamard_in_root_enclosure
#print axioms Mub6.Classification.CarrierIntervals.phaseHadamard_in_root_enclosure
#check Mub6.Classification.CarrierIntervals.cellBox_contains
#print axioms Mub6.Classification.CarrierIntervals.cellBox_contains
#check Mub6.Classification.CarrierIntervals.phaseHadamard_in_finite_enclosures
#print axioms Mub6.Classification.CarrierIntervals.phaseHadamard_in_finite_enclosures
#check Mub6.Classification.CarrierIntervals.unit_component_bounds
#print axioms Mub6.Classification.CarrierIntervals.unit_component_bounds
#check Mub6.Classification.CarrierIntervals.mem_unitClip
#print axioms Mub6.Classification.CarrierIntervals.mem_unitClip
#check Mub6.Classification.CarrierIntervals.physicalChartEnclosure_sound
#print axioms Mub6.Classification.CarrierIntervals.physicalChartEnclosure_sound
#check Mub6.Classification.CarrierIntervals.phaseHadamard_in_finite_physical_enclosures
#print axioms Mub6.Classification.CarrierIntervals.phaseHadamard_in_finite_physical_enclosures
#check FourierPhysicalSide.determinant_formula
#print axioms FourierPhysicalSide.determinant_formula
#check FourierPhysicalSide.actual_gram
#print axioms FourierPhysicalSide.actual_gram
#check FourierPhysicalSide.g_determinant
#print axioms FourierPhysicalSide.g_determinant
#check FourierPhysicalSide.eta_permanent
#print axioms FourierPhysicalSide.eta_permanent
#check FourierPhysicalSide.numerator0_binding
#print axioms FourierPhysicalSide.numerator0_binding
#check FourierPhysicalSide.numerator1_binding
#print axioms FourierPhysicalSide.numerator1_binding
#check FourierPhysicalSide.numerator2_binding
#print axioms FourierPhysicalSide.numerator2_binding
#check FourierPhysicalSide.rowProduct_phase
#print axioms FourierPhysicalSide.rowProduct_phase
#check FourierPhysicalSide.orientationPhase_phase
#print axioms FourierPhysicalSide.orientationPhase_phase
#check FourierPhysicalSide.g_orientationPhase
#print axioms FourierPhysicalSide.g_orientationPhase
#check FourierPhysicalSide.physicalSheet_normSq
#print axioms FourierPhysicalSide.physicalSheet_normSq
#check FourierPhysicalSide.physical_numerator0_factor
#print axioms FourierPhysicalSide.physical_numerator0_factor
#check FourierPhysicalSide.real_sheet_equation_of_norm
#print axioms FourierPhysicalSide.real_sheet_equation_of_norm
#check FourierPhysicalSide.q0_sum_minors
#print axioms FourierPhysicalSide.q0_sum_minors
#check FourierPhysicalSide.q0_nonzero_of_determinant
#print axioms FourierPhysicalSide.q0_nonzero_of_determinant
#check FourierPhysicalSide.physicalSheet_real
#print axioms FourierPhysicalSide.physicalSheet_real
#check FourierPhysicalSide.physicalSheet_lifted
#print axioms FourierPhysicalSide.physicalSheet_lifted
#check FourierPhysicalSide.physicalLambda_phase
#print axioms FourierPhysicalSide.physicalLambda_phase
#check FourierPhysicalSide.factor_of_scaled_numerator
#print axioms FourierPhysicalSide.factor_of_scaled_numerator
#check FourierPhysicalSide.physical_numerators_factor
#print axioms FourierPhysicalSide.physical_numerators_factor
#check FourierPhysicalSide.rational_lambda_matches_physical
#print axioms FourierPhysicalSide.rational_lambda_matches_physical
#check FourierPhysicalSide.physicalLambda_row_products
#print axioms FourierPhysicalSide.physicalLambda_row_products
#check FourierPhysicalSide.physicalSheet_lambda0_permanent
#print axioms FourierPhysicalSide.physicalSheet_lambda0_permanent
#check FourierPhysicalSide.physicalSheet_two_sqrt
#print axioms FourierPhysicalSide.physicalSheet_two_sqrt
#check Mub6.Classification.CarrierExports.RootCarrierExport.exported_eq
#print axioms Mub6.Classification.CarrierExports.RootCarrierExport.exported_eq
#check Mub6.Classification.CarrierExports.RootCarrierExport.exported_sound
#print axioms Mub6.Classification.CarrierExports.RootCarrierExport.exported_sound
#check Mub6.Classification.CarrierExports.MixedCarrierExport.exported_eq
#print axioms Mub6.Classification.CarrierExports.MixedCarrierExport.exported_eq
#check Mub6.Classification.CarrierExports.MixedCarrierExport.exported_sound
#print axioms Mub6.Classification.CarrierExports.MixedCarrierExport.exported_sound
#check Mub6.Classification.CarrierExports.GaussianCarrierExport.exported_eq
#print axioms Mub6.Classification.CarrierExports.GaussianCarrierExport.exported_eq
#check Mub6.Classification.CarrierExports.GaussianCarrierExport.exported_sound
#print axioms Mub6.Classification.CarrierExports.GaussianCarrierExport.exported_sound
#check Mub6.Classification.CarrierExports.NeighborhoodCarrierExport.exported_eq
#print axioms Mub6.Classification.CarrierExports.NeighborhoodCarrierExport.exported_eq
#check Mub6.Classification.CarrierExports.NeighborhoodCarrierExport.exported_sound
#print axioms Mub6.Classification.CarrierExports.NeighborhoodCarrierExport.exported_sound
end AtlasIndependentAddendumPortAudit
