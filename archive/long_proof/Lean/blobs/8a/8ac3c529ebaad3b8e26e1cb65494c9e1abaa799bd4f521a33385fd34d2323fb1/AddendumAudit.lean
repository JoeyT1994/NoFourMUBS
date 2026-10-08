import FourierOrientation
import ThirdBasisSupportTopology
import SharpReferenceTransport
import GoodMinor
import GoodMinorPhysical
import ComplementaryMinor
import GoodMinorGuards
import GoodSideBlocks

#check @Hadamard6Extensions.FourierSide.affine_reverse
#print axioms Hadamard6Extensions.FourierSide.affine_reverse
#check @Hadamard6Extensions.FourierSide.two_orientation_reconstruction
#print axioms Hadamard6Extensions.FourierSide.two_orientation_reconstruction
#check @Hadamard6Extensions.FourierSide.actual_side_fourier
#print axioms Hadamard6Extensions.FourierSide.actual_side_fourier
#check @Hadamard6Extensions.FourierSide.arbitrary_invertible_side_has_two_orientation_chart
#print axioms Hadamard6Extensions.FourierSide.arbitrary_invertible_side_has_two_orientation_chart
#check @Mub6.Classification.Rays.isCompact_basis_cube
#print axioms Mub6.Classification.Rays.isCompact_basis_cube
#check @Mub6.Classification.Rays.continuous_basis_overlap
#print axioms Mub6.Classification.Rays.continuous_basis_overlap
#check @Mub6.Classification.Rays.isClosed_family_basis_graph
#print axioms Mub6.Classification.Rays.isClosed_family_basis_graph
#check @Mub6.Classification.Rays.isCompact_family_basis_graph
#print axioms Mub6.Classification.Rays.isCompact_family_basis_graph
#check @Mub6.Classification.Rays.supports_third_basis_chart_iff
#print axioms Mub6.Classification.Rays.supports_third_basis_chart_iff
#check @Mub6.Classification.Rays.isCompact_third_basis_support
#print axioms Mub6.Classification.Rays.isCompact_third_basis_support
#check @Mub6.Classification.Rays.isClosed_third_basis_support
#print axioms Mub6.Classification.Rays.isClosed_third_basis_support
#check @Mub6.Numerical.normSq_near_six_bound
#print axioms Mub6.Numerical.normSq_near_six_bound
#check @Mub6.Numerical.commonRay_sharp_reference_residual_le
#print axioms Mub6.Numerical.commonRay_sharp_reference_residual_le
#check @Mub6.Numerical.sharp_bound_le_generic
#print axioms Mub6.Numerical.sharp_bound_le_generic
#check @Mub6.Numerical.commonRay_sharp_box_reference_residual_le
#print axioms Mub6.Numerical.commonRay_sharp_box_reference_residual_le
#check @Mub6.Classification.GoodMinor.columns_injective
#print axioms Mub6.Classification.GoodMinor.columns_injective
#check @Mub6.Classification.GoodMinor.cauchyBinet_three_six
#print axioms Mub6.Classification.GoodMinor.cauchyBinet_three_six
#check @Mub6.Classification.GoodMinor.gram_det_eq_sum_minor_normSq
#print axioms Mub6.Classification.GoodMinor.gram_det_eq_sum_minor_normSq
#check @Mub6.Classification.GoodMinor.sum_minor_normSq_eq_216
#print axioms Mub6.Classification.GoodMinor.sum_minor_normSq_eq_216
#check @Mub6.Classification.GoodMinor.exists_good_minor
#print axioms Mub6.Classification.GoodMinor.exists_good_minor
#check @Mub6.Classification.GoodMinor.exists_good_minor_nonsingular
#print axioms Mub6.Classification.GoodMinor.exists_good_minor_nonsingular
#check @Mub6.Classification.GoodMinor.exists_good_minor_norm
#print axioms Mub6.Classification.GoodMinor.exists_good_minor_norm
#check @Mub6.Classification.GoodMinor.front_injective
#print axioms Mub6.Classification.GoodMinor.front_injective
#check @Mub6.Classification.GoodMinor.permutationMap_bijective
#print axioms Mub6.Classification.GoodMinor.permutationMap_bijective
#check @Mub6.Classification.GoodMinor.columnPermutation_front
#print axioms Mub6.Classification.GoodMinor.columnPermutation_front
#check @Mub6.Classification.GoodMinor.phaseHadamard_rowGram
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_rowGram
#check @Mub6.Classification.GoodMinor.selected_rows_rowGram
#print axioms Mub6.Classification.GoodMinor.selected_rows_rowGram
#check @Mub6.Classification.GoodMinor.phaseHadamard_column_permutation
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_column_permutation
#check @Mub6.Classification.GoodMinor.phaseHadamard_sum_minor_normSq
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_sum_minor_normSq
#check @Mub6.Classification.GoodMinor.phaseHadamard_exists_good_minor
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_exists_good_minor
#check @Mub6.Classification.GoodMinor.phaseHadamard_exists_good_corner
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_exists_good_corner
#check @Mub6.Classification.GoodMinor.phaseHadamard_good_corner_cover
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_corner_cover
#check @Mub6.Classification.GoodMinor.back_injective
#print axioms Mub6.Classification.GoodMinor.back_injective
#check @Mub6.Classification.GoodMinor.det_scalar_sub_mul_comm
#print axioms Mub6.Classification.GoodMinor.det_scalar_sub_mul_comm
#check @Mub6.Classification.GoodMinor.top_block_rowGram
#print axioms Mub6.Classification.GoodMinor.top_block_rowGram
#check @Mub6.Classification.GoodMinor.right_block_columnGram
#print axioms Mub6.Classification.GoodMinor.right_block_columnGram
#check @Mub6.Classification.GoodMinor.det_mul_conjTranspose
#print axioms Mub6.Classification.GoodMinor.det_mul_conjTranspose
#check @Mub6.Classification.GoodMinor.det_conjTranspose_mul
#print axioms Mub6.Classification.GoodMinor.det_conjTranspose_mul
#check @Mub6.Classification.GoodMinor.complementary_normSq
#print axioms Mub6.Classification.GoodMinor.complementary_normSq
#check @Mub6.Classification.GoodMinor.phaseHadamard_complementary_normSq
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_complementary_normSq
#check @Mub6.Classification.GoodMinor.phaseHadamard_good_complementary_corners
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_complementary_corners
#check @Mub6.Classification.GoodMinor.good_det_ne_zero
#print axioms Mub6.Classification.GoodMinor.good_det_ne_zero
#check @Mub6.Classification.GoodMinor.good_det_reciprocal_normSq
#print axioms Mub6.Classification.GoodMinor.good_det_reciprocal_normSq
#check @Mub6.Classification.GoodMinor.phaseHadamard_good_corner_denominators
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_corner_denominators
#check @Mub6.Classification.GoodMinor.halfSwap_front
#print axioms Mub6.Classification.GoodMinor.halfSwap_front
#check @Mub6.Classification.GoodMinor.halfSwap_back
#print axioms Mub6.Classification.GoodMinor.halfSwap_back
#check @Mub6.Classification.GoodMinor.northeast_halfSwap
#print axioms Mub6.Classification.GoodMinor.northeast_halfSwap
#check @Mub6.Classification.GoodMinor.southwest_halfSwap
#print axioms Mub6.Classification.GoodMinor.southwest_halfSwap
#check @Mub6.Classification.GoodMinor.sidePermutation_matrix
#print axioms Mub6.Classification.GoodMinor.sidePermutation_matrix
#check @Mub6.Classification.GoodMinor.residualGram_eq_sideGram
#print axioms Mub6.Classification.GoodMinor.residualGram_eq_sideGram
#check @Mub6.Classification.GoodMinor.residualGram_det
#print axioms Mub6.Classification.GoodMinor.residualGram_det
#check @Mub6.Classification.GoodMinor.phaseHadamard_good_side_blocks
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_side_blocks
#check @Mub6.Classification.GoodMinor.phaseHadamard_good_side_residual
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_side_residual
