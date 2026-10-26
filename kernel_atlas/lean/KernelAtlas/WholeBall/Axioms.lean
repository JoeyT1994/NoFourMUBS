import NoFourMUBs.SeedAtlas.Method.WholeBallCentre
import NoFourMUBs.SeedAtlas.Method.WholeBallFamily
import NoFourMUBs.SeedAtlas.Method.WholeBallOrientation
import NoFourMUBs.SeedAtlas.Method.WholeBallRecord
import KernelAtlas.WholeBall.ScalarRegression
import KernelAtlas.WholeBall.ScalarExample
import KernelAtlas.WholeBall.Germ
import NoFourMUBs.SeedAtlas.Method.WholeBallJetBounds
import NoFourMUBs.SeedAtlas.Method.WholeBallFiniteBounds
import KernelAtlas.WholeBall.MatrixRegression
import KernelAtlas.WholeBall.BasisNorm
import NoFourMUBs.SeedAtlas.Method.WholeBallGeometry
import NoFourMUBs.SeedAtlas.Method.WholeBallSignatureBounds
import KernelAtlas.WholeBall.CentreRegular
import KernelAtlas.WholeBall.CentreGram
import KernelAtlas.WholeBall.RoundedLDL
import KernelAtlas.WholeBall.BasisRegular
import KernelAtlas.WholeBall.Centre2299
import KernelAtlas.WholeBall.Gram2299
import KernelAtlas.WholeBall.CheckedBall
import KernelAtlas.WholeBall.MatrixBlocks

/-! Axiom audit of the complete semantic and centre-to-bound soundness chain.
Only the standard axioms `propext`, `Classical.choice`, and `Quot.sound` are allowed. -/

open NoFourMUBs.SeedAtlas.Method.WholeBall
open NoFourMUBs.KernelAtlas.WholeBall

#print axioms gramLeftInverse_mul
#print axioms centreProjection_identity
#print axioms projected_tangent
#print axioms seed_tangent
#print axioms seed_secondJet
#print axioms projected_secondJet
#print axioms projected_zero_of_contraction
#print axioms contraction_difference_of_derivative
#print axioms projected_zero
#print axioms invertible_of_near_id
#print axioms analytic_implicit_root
#print axioms analyticAt_centrePhase
#print axioms exp_centrePhase
#print axioms analyticAt_centrePhaseMat
#print axioms seedPhase_hor
#print axioms rowColEquiv_add_hor
#print axioms eventually_eq_of_circle_exp
#print axioms local_phase_germ
#print axioms local_normal_coordinates
#print axioms sideResidual_partial_invertible
#print axioms analytic_side_root
#print axioms analytic_matched_germ
#print axioms local_matched_phase_germ
#print axioms norm_sub_taylorJet_le
#print axioms predictor_residual_bound
#print axioms norm_sub_linear_le
#print axioms norm_sub_le_linear_quadratic
#print axioms norm_sub_le_cubic
#print axioms JetBounds.residual_bound
#print axioms JetBounds.normal_bound
#print axioms analytic_projected_family_of_jets
#print axioms iteratedDeriv_chirp
#print axioms norm_chirp_fifth
#print axioms norm_chirp_third
#print axioms iteratedDeriv_fourierRay
#print axioms fourier_predictor_bound
#print axioms fourier_normal_base_bound
#print axioms fourier_linear_variation_weighted
#print axioms fourier_linear_variation
#print axioms FourierModel.normalDerivative_eq
#print axioms FourierModel.parameter_ray
#print axioms FourierModel.norm_normalCoeff
#print axioms FourierModel.normal_parameter_ray
#print axioms FourierModel.normal_tube_ray
#print axioms FourierModel.tubeJet_variation
#print axioms FourierModel.normal_tube_bound
#print axioms norm_tensorVector
#print axioms norm_tensorPower
#print axioms tensor_flatten_bound
#print axioms tensor_power_bound
#print axioms FiniteCentreBounds.residual_bound
#print axioms FiniteCentreBounds.normal_bound
#print axioms residual_zero_on_closedBall
#print axioms analytic_projected_family
#print axioms full_residual_of_local_germ
#print axioms orientation_of_margin
#print axioms strictness_of_margin
#print axioms rowColEquiv_trans
#print axioms rowColEquiv_from_dephase
#print axioms horizontal_rep_of_signs
#print axioms horizontal_rep_of_margins
#print axioms direct_remainder
#print axioms recorded_remainder
#print axioms hC1_of_representatives
#print axioms scalarCheck_sound
#print axioms ScalarRegression.record_bound_equality_checked
#print axioms ScalarRegression.zero_radius_checked
#print axioms ScalarRegression.zero_tube_checked
#print axioms ScalarRegression.contraction_factor_equality_checked
#print axioms ScalarRegression.tube_equality_checked
#print axioms ScalarRegression.horizontal_zero_margin_checked
#print axioms ScalarRegression.vertical_zero_margin_checked
#print axioms ScalarRegression.record_bound_too_small_checked
#print axioms ScalarRegression.negative_tensor_bound_checked
#print axioms ScalarRegression.negative_side_bound_checked
#print axioms ScalarRegression.orientation_quadratic_equality_checked
#print axioms ScalarRegression.all_terms_nonzero_checked
#print axioms ScalarExample.checked
#print axioms ScalarExample.real_inequalities
#print axioms psdCheck_sound
#print axioms spectralCheck_sound
#print axioms spectralCheck_transpose_sound
#print axioms frobeniusCheck_sound
#print axioms MatrixBox.error_bound
#print axioms MatrixBox.spectral_bound
#print axioms abs_entry_le_opNorm
#print axioms inverse_enclosure
#print axioms MatrixBox.Has.mul
#print axioms MatrixBox.normCheck_sound
#print axioms inverseCheck_sound
#print axioms gramProjection_enclosure
#print axioms BasisNorm.checked
#print axioms BasisNorm.norm_bound
#print axioms MatrixRegression.inverse_error_equality
#print axioms MatrixRegression.inverse_error_too_small
#print axioms MatrixRegression.inverse_residual_too_small
#print axioms MatrixRegression.inverse_unit_boundary
#print axioms MatrixRegression.rectangular_bound_equality
#print axioms MatrixRegression.rectangular_bound_too_small
#print axioms MatrixRegression.bad_factor_rejected
#print axioms MatrixRegression.transpose_bound

#print axioms FiniteCentreBounds.analytic_projected_family
#print axioms FiniteCentreBounds.analytic_full_family
#print axioms normal_basis_retraction
#print axioms frozenNormal_retraction
#print axioms frozenRetraction_normal
#print axioms frozen_normal_germ
#print axioms signature_odd_identity
#print axioms signature_fourier
#print axioms signature_gram
#print axioms signature_frequency_bound
#print axioms signature_variation
#print axioms centreCheck_sound
#print axioms sideRegularCheck_sound
#print axioms regularCentreCheck_sound
#print axioms RegularCentre.analytic_germ
#print axioms jacobianBox_sound
#print axioms centrePhaseBox_sound
#print axioms centre_gram_enclosure
#print axioms MatrixBox.Has.enlarge
#print axioms centreGramCheck_sound
#print axioms dominantCheck_sound
#print axioms roundedPSDCheck_sound
#print axioms roundedSpectralCheck_sound
#print axioms BasisRegular.checked
#print axioms BasisRegular.nonsingular
#print axioms Centre2299.checked
#print axioms Centre2299.regular_centre
#print axioms Centre2299.centre_facts
#print axioms Gram2299.checked

#print axioms CertifiedCentre.phase_germ
#print axioms CertifiedCentre.normal_germ
#print axioms CertifiedCentre.full_family
#print axioms CertifiedCentre.hC1
#print axioms centreFourier_equation
#print axioms centreFourier_cancel
#print axioms FiniteData.sound
#print axioms centreJetCheck_sound
#print axioms centreFourierCheck_sound
#print axioms SideFiniteBounds.variation
#print axioms sideCentreCheck_sound
#print axioms sideNormCheck_sound
#print axioms recordErrorCheck_sound
#print axioms wholeBallCheck_sound
#print axioms MatrixBox.enclosesCheck_of_blocks
#print axioms MatrixBox.eq_of_exact_rows
