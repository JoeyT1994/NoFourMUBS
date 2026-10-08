import LiftedSheetGuards
import SymmetryTransport
import PerturbTransport
import FourierSide
import FourierReconstruction
import FourierPhaseData
import RayIncidence
import RayCompactness
import RayRegularity
import RayFamilyTopology
import ThirdBasisIncidence
import RayPolynomial
import RayMvPolynomial
import RayPolynomialRegularity

#check @FourierRadicalGuards.sheet_re
#print axioms FourierRadicalGuards.sheet_re
#check @FourierRadicalGuards.sheet_im
#print axioms FourierRadicalGuards.sheet_im
#check @FourierRadicalGuards.sheet_real_identity
#print axioms FourierRadicalGuards.sheet_real_identity
#check @FourierRadicalGuards.sheet_norm_identity
#print axioms FourierRadicalGuards.sheet_norm_identity
#check @FourierRadicalGuards.sheet_conjugate
#print axioms FourierRadicalGuards.sheet_conjugate
#check @FourierRadicalGuards.sheet_boundary
#print axioms FourierRadicalGuards.sheet_boundary
#check @FourierRadicalGuards.sheet_distinct
#print axioms FourierRadicalGuards.sheet_distinct
#check @FourierRadicalGuards.sheet_equal_iff_boundary
#print axioms FourierRadicalGuards.sheet_equal_iff_boundary
#check @FourierRadicalGuards.lifted_w_sq
#print axioms FourierRadicalGuards.lifted_w_sq
#check @FourierRadicalGuards.lifted_sheet_exact
#print axioms FourierRadicalGuards.lifted_sheet_exact
#check @FourierRadicalGuards.lifted_sheet_two
#print axioms FourierRadicalGuards.lifted_sheet_two
#check @FourierRadicalGuards.lifted_sheet_sqrt
#print axioms FourierRadicalGuards.lifted_sheet_sqrt
#check @FourierRadicalGuards.guard_square_certificate
#print axioms FourierRadicalGuards.guard_square_certificate
#check @FourierRadicalGuards.guard_vertex_certificate
#print axioms FourierRadicalGuards.guard_vertex_certificate
#check @FourierRadicalGuards.guard_square_radicand
#print axioms FourierRadicalGuards.guard_square_radicand
#check @FourierRadicalGuards.guard_vertex_radicand
#print axioms FourierRadicalGuards.guard_vertex_radicand
#check @FourierRadicalGuards.positive_radicand_parameters
#print axioms FourierRadicalGuards.positive_radicand_parameters
#check @FourierRadicalGuards.guard_margin_radicand
#print axioms FourierRadicalGuards.guard_margin_radicand
#check @FourierRadicalGuards.guard_positive_radicand
#print axioms FourierRadicalGuards.guard_positive_radicand
#check @FourierRadicalGuards.guard_margin
#print axioms FourierRadicalGuards.guard_margin
#check @FourierRadicalGuards.guard_positive_strict
#print axioms FourierRadicalGuards.guard_positive_strict
#check @FourierRadicalGuards.strict_parameters
#print axioms FourierRadicalGuards.strict_parameters
#check @FourierRadicalGuards.guard_positive_of_nonzero_sheet
#print axioms FourierRadicalGuards.guard_positive_of_nonzero_sheet
#check @FourierRadicalGuards.denominator_normSq
#print axioms FourierRadicalGuards.denominator_normSq
#check @FourierRadicalGuards.denominator_ne_zero_strict
#print axioms FourierRadicalGuards.denominator_ne_zero_strict
#check @FourierRadicalGuards.denominator_uniform_margin
#print axioms FourierRadicalGuards.denominator_uniform_margin
#check @FourierRadicalGuards.denominator_ne_zero_of_nonzero_sheet
#print axioms FourierRadicalGuards.denominator_ne_zero_of_nonzero_sheet
#check @FourierRadicalGuards.denominator_sheet_normSq_equal
#print axioms FourierRadicalGuards.denominator_sheet_normSq_equal
#check @FourierRadicalGuards.denominator_sheet_zero_iff
#print axioms FourierRadicalGuards.denominator_sheet_zero_iff
#check @FourierRadicalGuards.guard_boundary_pole_iff
#print axioms FourierRadicalGuards.guard_boundary_pole_iff
#check @FourierRadicalGuards.guard_boundary_pole_radicand
#print axioms FourierRadicalGuards.guard_boundary_pole_radicand
#check @FourierRadicalGuards.boundary_denominator_zero_iff
#print axioms FourierRadicalGuards.boundary_denominator_zero_iff
#check @FourierRadicalGuards.normSq_parallelogram
#print axioms FourierRadicalGuards.normSq_parallelogram
#check @FourierRadicalGuards.orientedDelta_selected
#print axioms FourierRadicalGuards.orientedDelta_selected
#check @FourierRadicalGuards.orientedDelta_normSq
#print axioms FourierRadicalGuards.orientedDelta_normSq
#check @FourierRadicalGuards.selected_pivot_bound
#print axioms FourierRadicalGuards.selected_pivot_bound
#check @FourierRadicalGuards.selected_pivot_ne_zero
#print axioms FourierRadicalGuards.selected_pivot_ne_zero
#check @FourierRadicalGuards.selected_pivot_three_g
#print axioms FourierRadicalGuards.selected_pivot_three_g
#check @FourierRadicalGuards.discriminant_normSq_of_phase_data
#print axioms FourierRadicalGuards.discriminant_normSq_of_phase_data
#check @FourierRadicalGuards.selected_pivot_phase_bound
#print axioms FourierRadicalGuards.selected_pivot_phase_bound
#check @FourierRadicalGuards.selected_pivot_phase_ne_zero
#print axioms FourierRadicalGuards.selected_pivot_phase_ne_zero
#check @Mub6.Numerical.permuteRows_rawOverlap
#print axioms Mub6.Numerical.permuteRows_rawOverlap
#check @Mub6.Numerical.permuteRows_carrierAmplitude
#print axioms Mub6.Numerical.permuteRows_carrierAmplitude
#check @Mub6.Numerical.permuteRows_PhaseHadamard
#print axioms Mub6.Numerical.permuteRows_PhaseHadamard
#check @Mub6.Numerical.permuteRows_rawUnitRay
#print axioms Mub6.Numerical.permuteRows_rawUnitRay
#check @Mub6.Numerical.permuteRows_commonRay
#print axioms Mub6.Numerical.permuteRows_commonRay
#check @Mub6.Numerical.rawUnitRay_coordinate_ne_zero
#print axioms Mub6.Numerical.rawUnitRay_coordinate_ne_zero
#check @Mub6.Numerical.normalizedPermRay_rawUnitRay
#print axioms Mub6.Numerical.normalizedPermRay_rawUnitRay
#check @Mub6.Numerical.normalizedPermRay_rawOverlap
#print axioms Mub6.Numerical.normalizedPermRay_rawOverlap
#check @Mub6.Numerical.normalizedPermRay_pair_normSq
#print axioms Mub6.Numerical.normalizedPermRay_pair_normSq
#check @Mub6.Numerical.normalizedPermRay_carrierAmplitude
#print axioms Mub6.Numerical.normalizedPermRay_carrierAmplitude
#check @Mub6.Numerical.normalizedPermRay_commonRay
#print axioms Mub6.Numerical.normalizedPermRay_commonRay
#check @Mub6.Numerical.permuteCols_carrierAmplitude
#print axioms Mub6.Numerical.permuteCols_carrierAmplitude
#check @Mub6.Numerical.permuteCols_PhaseHadamard
#print axioms Mub6.Numerical.permuteCols_PhaseHadamard
#check @Mub6.Numerical.permuteCols_commonRay
#print axioms Mub6.Numerical.permuteCols_commonRay
#check @Mub6.Numerical.conjugate_rawOverlap
#print axioms Mub6.Numerical.conjugate_rawOverlap
#check @Mub6.Numerical.conjugate_carrierAmplitude
#print axioms Mub6.Numerical.conjugate_carrierAmplitude
#check @Mub6.Numerical.conjugate_PhaseHadamard
#print axioms Mub6.Numerical.conjugate_PhaseHadamard
#check @Mub6.Numerical.conjugate_rawUnitRay
#print axioms Mub6.Numerical.conjugate_rawUnitRay
#check @Mub6.Numerical.conjugate_commonRay
#print axioms Mub6.Numerical.conjugate_commonRay
#check @Mub6.Numerical.conjugate_pair_normSq
#print axioms Mub6.Numerical.conjugate_pair_normSq
#check @Mub6.Numerical.rawOverlap_pair_interchange
#print axioms Mub6.Numerical.rawOverlap_pair_interchange
#check @Mub6.Numerical.rawOverlap_pair_interchange_normSq
#print axioms Mub6.Numerical.rawOverlap_pair_interchange_normSq
#check @Mub6.Numerical.norm_one_of_normSq_one
#print axioms Mub6.Numerical.norm_one_of_normSq_one
#check @Mub6.Numerical.conjugate_product_diff_norm_le
#print axioms Mub6.Numerical.conjugate_product_diff_norm_le
#check @Mub6.Numerical.carrierAmplitude_diff_norm_le
#print axioms Mub6.Numerical.carrierAmplitude_diff_norm_le
#check @Mub6.Numerical.amplitude_norm_le_six
#print axioms Mub6.Numerical.amplitude_norm_le_six
#check @Mub6.Numerical.carrierAmplitude_uniform_diff_norm_le
#print axioms Mub6.Numerical.carrierAmplitude_uniform_diff_norm_le
#check @Mub6.Numerical.normSq_diff_abs_le
#print axioms Mub6.Numerical.normSq_diff_abs_le
#check @Mub6.Numerical.carrierAmplitude_normSq_uniform_diff_le
#print axioms Mub6.Numerical.carrierAmplitude_normSq_uniform_diff_le
#check @Mub6.Numerical.commonRay_reference_residual_le
#print axioms Mub6.Numerical.commonRay_reference_residual_le
#check @Mub6.Numerical.norm_le_of_normSq_le
#print axioms Mub6.Numerical.norm_le_of_normSq_le
#check @Mub6.Numerical.carrierBox_entry_distance_le
#print axioms Mub6.Numerical.carrierBox_entry_distance_le
#check @Mub6.Numerical.rawRayBox_coordinate_distance_le
#print axioms Mub6.Numerical.rawRayBox_coordinate_distance_le
#check @Mub6.Numerical.rawOverlap_normSq_uniform_diff_le
#print axioms Mub6.Numerical.rawOverlap_normSq_uniform_diff_le
#check @Mub6.Numerical.commonRay_box_reference_residual_le
#print axioms Mub6.Numerical.commonRay_box_reference_residual_le
#check @Hadamard6Extensions.FourierSide.omega_cube
#print axioms Hadamard6Extensions.FourierSide.omega_cube
#check @Hadamard6Extensions.FourierSide.omega_ne_zero
#print axioms Hadamard6Extensions.FourierSide.omega_ne_zero
#check @Hadamard6Extensions.FourierSide.omega_sq
#print axioms Hadamard6Extensions.FourierSide.omega_sq
#check @Hadamard6Extensions.FourierSide.omega_four
#print axioms Hadamard6Extensions.FourierSide.omega_four
#check @Hadamard6Extensions.FourierSide.discriminant_factor
#print axioms Hadamard6Extensions.FourierSide.discriminant_factor
#check @Hadamard6Extensions.FourierSide.oriented_pivot
#print axioms Hadamard6Extensions.FourierSide.oriented_pivot
#check @Hadamard6Extensions.FourierSide.opposite_pivot
#print axioms Hadamard6Extensions.FourierSide.opposite_pivot
#check @Hadamard6Extensions.FourierSide.one_orientation_nonzero
#print axioms Hadamard6Extensions.FourierSide.one_orientation_nonzero
#check @Hadamard6Extensions.FourierSide.pure_mode_projection
#print axioms Hadamard6Extensions.FourierSide.pure_mode_projection
#check @Hadamard6Extensions.FourierSide.pure_mode_projection_div
#print axioms Hadamard6Extensions.FourierSide.pure_mode_projection_div
#check @Hadamard6Extensions.FourierSide.reconstruct_coefficients
#print axioms Hadamard6Extensions.FourierSide.reconstruct_coefficients
#check @Hadamard6Extensions.FourierSide.cubic_factor
#print axioms Hadamard6Extensions.FourierSide.cubic_factor
#check @Hadamard6Extensions.FourierSide.cube_roots_are_modes
#print axioms Hadamard6Extensions.FourierSide.cube_roots_are_modes
#check @Hadamard6Extensions.FourierSide.fourier_inverse
#print axioms Hadamard6Extensions.FourierSide.fourier_inverse
#check @Hadamard6Extensions.FourierSide.row_sum
#print axioms Hadamard6Extensions.FourierSide.row_sum
#check @Hadamard6Extensions.FourierSide.centered_second_moment
#print axioms Hadamard6Extensions.FourierSide.centered_second_moment
#check @Hadamard6Extensions.FourierSide.row_product
#print axioms Hadamard6Extensions.FourierSide.row_product
#check @Hadamard6Extensions.FourierSide.determinant_factor
#print axioms Hadamard6Extensions.FourierSide.determinant_factor
#check @Hadamard6Extensions.FourierSide.determinant_discriminant
#print axioms Hadamard6Extensions.FourierSide.determinant_discriminant
#check @Hadamard6Extensions.FourierSide.invertible_side_has_nonzero_discriminant
#print axioms Hadamard6Extensions.FourierSide.invertible_side_has_nonzero_discriminant
#check @Hadamard6Extensions.FourierSide.mixed_linear_product
#print axioms Hadamard6Extensions.FourierSide.mixed_linear_product
#check @Hadamard6Extensions.FourierSide.cube_radicand_correct
#print axioms Hadamard6Extensions.FourierSide.cube_radicand_correct
#check @Hadamard6Extensions.FourierSide.reconstruction_from_mode
#print axioms Hadamard6Extensions.FourierSide.reconstruction_from_mode
#check @Hadamard6Extensions.FourierSide.row_rotate_once
#print axioms Hadamard6Extensions.FourierSide.row_rotate_once
#check @Hadamard6Extensions.FourierSide.row_rotate_twice
#print axioms Hadamard6Extensions.FourierSide.row_rotate_twice
#check @Hadamard6Extensions.FourierSide.row_reverse
#print axioms Hadamard6Extensions.FourierSide.row_reverse
#check @Hadamard6Extensions.FourierSide.cube_choice_only_permutes
#print axioms Hadamard6Extensions.FourierSide.cube_choice_only_permutes
#check @Hadamard6Extensions.FourierSide.radical_reconstruction_of_actual_side
#print axioms Hadamard6Extensions.FourierSide.radical_reconstruction_of_actual_side
#check @Hadamard6Extensions.FourierSide.phase_mul_star
#print axioms Hadamard6Extensions.FourierSide.phase_mul_star
#check @Hadamard6Extensions.FourierSide.phase_second_moment
#print axioms Hadamard6Extensions.FourierSide.phase_second_moment
#check @Hadamard6Extensions.FourierSide.phase_mixed21
#print axioms Hadamard6Extensions.FourierSide.phase_mixed21
#check @Hadamard6Extensions.FourierSide.phase_mixed12
#print axioms Hadamard6Extensions.FourierSide.phase_mixed12
#check @Hadamard6Extensions.FourierSide.phase_alpha
#print axioms Hadamard6Extensions.FourierSide.phase_alpha
#check @Hadamard6Extensions.FourierSide.phase_gamma
#print axioms Hadamard6Extensions.FourierSide.phase_gamma
#check @Hadamard6Extensions.FourierSide.phase_radicand_binding
#print axioms Hadamard6Extensions.FourierSide.phase_radicand_binding
#check @Hadamard6Extensions.FourierSide.physical_phase_radicand_correct
#print axioms Hadamard6Extensions.FourierSide.physical_phase_radicand_correct
#check @Hadamard6Extensions.FourierSide.physical_phase_reconstruction
#print axioms Hadamard6Extensions.FourierSide.physical_phase_reconstruction
#check @Mub6.Classification.Rays.phaseHadamard_rowGram
#print axioms Mub6.Classification.Rays.phaseHadamard_rowGram
#check @Mub6.Classification.Rays.rawOverlap_self
#print axioms Mub6.Classification.Rays.rawOverlap_self
#check @Mub6.Classification.Rays.carrier_parseval
#print axioms Mub6.Classification.Rays.carrier_parseval
#check @Mub6.Classification.Rays.raw_unit_carrier_energy
#print axioms Mub6.Classification.Rays.raw_unit_carrier_energy
#check @Mub6.Classification.Rays.common_ray_iff_five
#print axioms Mub6.Classification.Rays.common_ray_iff_five
#check @Mub6.Classification.Rays.chart_incidence_sound
#print axioms Mub6.Classification.Rays.chart_incidence_sound
#check @Mub6.Classification.Rays.common_ray_chart_iff
#print axioms Mub6.Classification.Rays.common_ray_chart_iff
#check @Mub6.Classification.Rays.family_common_ray_chart_iff
#print axioms Mub6.Classification.Rays.family_common_ray_chart_iff
#check @Mub6.Classification.Rays.continuous_circlePoint
#print axioms Mub6.Classification.Rays.continuous_circlePoint
#check @Mub6.Classification.Rays.continuous_signedCircle
#print axioms Mub6.Classification.Rays.continuous_signedCircle
#check @Mub6.Classification.Rays.continuous_chartRay
#print axioms Mub6.Classification.Rays.continuous_chartRay
#check @Mub6.Classification.Rays.continuous_carrierAmplitude
#print axioms Mub6.Classification.Rays.continuous_carrierAmplitude
#check @Mub6.Classification.Rays.continuous_residual
#print axioms Mub6.Classification.Rays.continuous_residual
#check @Mub6.Classification.Rays.isCompact_cube
#print axioms Mub6.Classification.Rays.isCompact_cube
#check @Mub6.Classification.Rays.isClosed_chart_zeroes
#print axioms Mub6.Classification.Rays.isClosed_chart_zeroes
#check @Mub6.Classification.Rays.isCompact_chart_fibre
#print axioms Mub6.Classification.Rays.isCompact_chart_fibre
#check @Mub6.Classification.Rays.finite_of_compact_isolated
#print axioms Mub6.Classification.Rays.finite_of_compact_isolated
#check @Mub6.Classification.Rays.finite_chart_fibre_of_isolated
#print axioms Mub6.Classification.Rays.finite_chart_fibre_of_isolated
#check @Mub6.Classification.Rays.isolated_of_local_residual_injective
#print axioms Mub6.Classification.Rays.isolated_of_local_residual_injective
#check @Mub6.Classification.Rays.isCompact_common_ray_fibre
#print axioms Mub6.Classification.Rays.isCompact_common_ray_fibre
#check @Mub6.Classification.Rays.finite_common_ray_fibre_of_isolated
#print axioms Mub6.Classification.Rays.finite_common_ray_fibre_of_isolated
#check @Mub6.Classification.Rays.isolated_of_invertible_strict_derivative
#print axioms Mub6.Classification.Rays.isolated_of_invertible_strict_derivative
#check @Mub6.Classification.Rays.finite_regular_chart_fibre
#print axioms Mub6.Classification.Rays.finite_regular_chart_fibre
#check @Mub6.Classification.Rays.finite_common_ray_fibre_of_regular
#print axioms Mub6.Classification.Rays.finite_common_ray_fibre_of_regular
#check @Mub6.Classification.Rays.continuous_family_residual
#print axioms Mub6.Classification.Rays.continuous_family_residual
#check @Mub6.Classification.Rays.isClosed_family_chart_graph
#print axioms Mub6.Classification.Rays.isClosed_family_chart_graph
#check @Mub6.Classification.Rays.isCompact_family_chart_graph
#print axioms Mub6.Classification.Rays.isCompact_family_chart_graph
#check @Mub6.Classification.Rays.column_overlap_eq_gram
#print axioms Mub6.Classification.Rays.column_overlap_eq_gram
#check @Mub6.Classification.Rays.raw_third_basis_iff_columns
#print axioms Mub6.Classification.Rays.raw_third_basis_iff_columns
#check @Mub6.Classification.Rays.third_basis_chart_iff
#print axioms Mub6.Classification.Rays.third_basis_chart_iff
#check @Mub6.Classification.Rays.family_third_basis_chart_iff
#print axioms Mub6.Classification.Rays.family_third_basis_chart_iff
#check @Mub6.Classification.Rays.sqrt_six_normSq
#print axioms Mub6.Classification.Rays.sqrt_six_normSq
#check @Mub6.Classification.Rays.overlap_normalizeRaw
#print axioms Mub6.Classification.Rays.overlap_normalizeRaw
#check @Mub6.Classification.Rays.normalizeRaw_isOrthonormal
#print axioms Mub6.Classification.Rays.normalizeRaw_isOrthonormal
#check @Mub6.Classification.Rays.normalizeRaw_isFlat
#print axioms Mub6.Classification.Rays.normalizeRaw_isFlat
#check @Mub6.Classification.Rays.third_basis_normalized_sound
#print axioms Mub6.Classification.Rays.third_basis_normalized_sound
#check @Mub6.Classification.Rays.normalized_third_basis_complete
#print axioms Mub6.Classification.Rays.normalized_third_basis_complete
#check @Mub6.Classification.Rays.normalized_third_basis_chart_complete
#print axioms Mub6.Classification.Rays.normalized_third_basis_chart_complete
#check @Mub6.Classification.Rays.rayDenominator_pos
#print axioms Mub6.Classification.Rays.rayDenominator_pos
#check @Mub6.Classification.Rays.omittedDenominator_mul
#print axioms Mub6.Classification.Rays.omittedDenominator_mul
#check @Mub6.Classification.Rays.clearedRayRe_binding
#print axioms Mub6.Classification.Rays.clearedRayRe_binding
#check @Mub6.Classification.Rays.clearedRayIm_binding
#print axioms Mub6.Classification.Rays.clearedRayIm_binding
#check @Mub6.Classification.Rays.clearedAmplitudeRe_binding
#print axioms Mub6.Classification.Rays.clearedAmplitudeRe_binding
#check @Mub6.Classification.Rays.clearedAmplitudeIm_binding
#print axioms Mub6.Classification.Rays.clearedAmplitudeIm_binding
#check @Mub6.Classification.Rays.clearedResidual_binding
#print axioms Mub6.Classification.Rays.clearedResidual_binding
#check @Mub6.Classification.Rays.clearedResidual_zero_iff
#print axioms Mub6.Classification.Rays.clearedResidual_zero_iff
#check @Mub6.Classification.Rays.polynomial_incidence_iff
#print axioms Mub6.Classification.Rays.polynomial_incidence_iff
#check @Mub6.Classification.Rays.common_ray_polynomial_chart_iff
#print axioms Mub6.Classification.Rays.common_ray_polynomial_chart_iff
#check @Mub6.Classification.Rays.eval_denominatorPoly
#print axioms Mub6.Classification.Rays.eval_denominatorPoly
#check @Mub6.Classification.Rays.eval_omittedDenominatorPoly
#print axioms Mub6.Classification.Rays.eval_omittedDenominatorPoly
#check @Mub6.Classification.Rays.eval_rayRePoly
#print axioms Mub6.Classification.Rays.eval_rayRePoly
#check @Mub6.Classification.Rays.eval_rayImPoly
#print axioms Mub6.Classification.Rays.eval_rayImPoly
#check @Mub6.Classification.Rays.eval_amplitudeRePoly
#print axioms Mub6.Classification.Rays.eval_amplitudeRePoly
#check @Mub6.Classification.Rays.eval_amplitudeImPoly
#print axioms Mub6.Classification.Rays.eval_amplitudeImPoly
#check @Mub6.Classification.Rays.eval_residualPoly
#print axioms Mub6.Classification.Rays.eval_residualPoly
#check @Mub6.Classification.Rays.residualPoly_physical_binding
#print axioms Mub6.Classification.Rays.residualPoly_physical_binding
#check @Mub6.Classification.Rays.isolated_of_invertible_polynomial_derivative
#print axioms Mub6.Classification.Rays.isolated_of_invertible_polynomial_derivative
#check @Mub6.Classification.Rays.finite_common_ray_fibre_of_polynomial_regular
#print axioms Mub6.Classification.Rays.finite_common_ray_fibre_of_polynomial_regular

#print Mub6.Numerical.PhaseHadamard
#print Mub6.Numerical.IsRawUnitRay
#print Mub6.Numerical.IsRawCommonRay
#print Mub6.Numerical.carrierAmplitude
#print Mub6.IsOrthonormalBasis
#print Mub6.IsUnbiased
