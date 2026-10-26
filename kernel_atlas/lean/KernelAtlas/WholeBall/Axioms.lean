import NoFourMUBs.SeedAtlas.Method.WholeBallCentre
import NoFourMUBs.SeedAtlas.Method.WholeBallFamily
import NoFourMUBs.SeedAtlas.Method.WholeBallOrientation
import NoFourMUBs.SeedAtlas.Method.WholeBallRecord
import KernelAtlas.WholeBall.ScalarRegression
import KernelAtlas.WholeBall.ScalarExample

/-! Axiom audit of the implemented whole-ball components. This is not an audit
of a completed whole-ball C1 checker: that checker has not been constructed. -/

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
