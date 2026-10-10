import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.boundary_curvature

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/boundary_curvature.json. See LEAN_NOTES.md. -/

def d_ambient_R (v_x v_z v_b2 v_y v_q v_c : K) : K :=
  (((-1 : K) * (((((1 : K) / 2) * ((12 : K) + ((v_x + ((-1 : K) * v_z)) ^ 2) + ((-1 : K) * ((v_x + v_z) ^ 2))) * (((-1 : K) * ((v_x + ((-1 : K) * v_z)) ^ 2)) + ((2 : K) * v_b2) + ((3 : K) * ((v_x + v_z) ^ 2)))) + ((-2 : K) * ((v_x + ((-1 : K) * v_z)) ^ 2) * (v_x + v_z)) + ((2 : K) * v_b2 * (((-1 : K) * v_z) + ((3 : K) * v_x)))) ^ 2)) + ((4 : K) * ((((-1 : K) * v_b2) + ((-3 : K) * ((v_x + v_z) ^ 2)) + ((2 : K) * ((v_x + ((-1 : K) * v_z)) ^ 2))) ^ 2) * (((v_x + ((-1 : K) * v_z)) ^ 2) + ((-1 : K) * v_b2) + ((-2 : K) * ((v_x + v_z) ^ 2)))))

def d_cusp_R (v_x v_z v_b2 v_y v_q v_c : K) : K :=
  ((((9 : K) + v_b2 + ((5 : K) * (v_x ^ 2)) + ((18 : K) * v_x)) ^ 2) * ((-72 : K) + ((-96 : K) * v_x) + ((-8 : K) * (v_x ^ 2)) + ((-4 : K) * v_b2)))

def d_split_R (v_x v_z v_b2 v_y v_q v_c : K) : K :=
  ((((-1 : K) + (v_q ^ 2) + ((4 : K) * (v_y ^ 4)) + ((5 : K) * (v_y ^ 2)) + ((2 : K) * v_q * v_y) + ((4 : K) * (v_q ^ 2) * (v_y ^ 2)) + ((12 : K) * v_q * (v_y ^ 3))) ^ 2) * ((256 : K) + ((-2816 : K) * (v_y ^ 2)) + ((-256 : K) * (v_q ^ 2)) + ((-256 : K) * (v_y ^ 4)) + ((-2048 : K) * v_q * v_y) + ((-1536 : K) * v_q * (v_y ^ 3)) + ((-256 : K) * (v_q ^ 2) * (v_y ^ 2))))

def d_split_q_derivative (v_x v_z v_b2 v_y v_q v_c : K) : K :=
  (((-465408 : K) * (v_y ^ 7)) + ((-399360 : K) * (v_y ^ 9)) + ((-49152 : K) * (v_y ^ 11)) + ((-3072 : K) * v_y) + ((-1536 : K) * v_q) + ((-1536 : K) * (v_q ^ 5)) + ((3072 : K) * (v_q ^ 3)) + ((27648 : K) * (v_y ^ 5)) + ((29184 : K) * (v_y ^ 3)) + ((-2543616 : K) * (v_q ^ 2) * (v_y ^ 7)) + ((-1880064 : K) * v_q * (v_y ^ 8)) + ((-1499136 : K) * (v_q ^ 3) * (v_y ^ 6)) + ((-1027584 : K) * v_q * (v_y ^ 6)) + ((-986112 : K) * (v_q ^ 2) * (v_y ^ 5)) + ((-958464 : K) * (v_q ^ 2) * (v_y ^ 9)) + ((-786432 : K) * (v_q ^ 3) * (v_y ^ 8)) + ((-531456 : K) * (v_q ^ 3) * (v_y ^ 4)) + ((-399360 : K) * (v_q ^ 4) * (v_y ^ 5)) + ((-393216 : K) * v_q * (v_y ^ 10)) + ((-245760 : K) * (v_q ^ 4) * (v_y ^ 7)) + ((-145920 : K) * (v_q ^ 4) * (v_y ^ 3)) + ((-39936 : K) * (v_q ^ 3) * (v_y ^ 2)) + ((-36864 : K) * (v_q ^ 5) * (v_y ^ 4)) + ((-24576 : K) * (v_q ^ 2) * (v_y ^ 3)) + ((-24576 : K) * (v_q ^ 5) * (v_y ^ 6)) + ((-15360 : K) * v_y * (v_q ^ 4)) + ((-13824 : K) * (v_q ^ 5) * (v_y ^ 2)) + ((18432 : K) * v_y * (v_q ^ 2)) + ((35328 : K) * v_q * (v_y ^ 2)) + ((41472 : K) * v_q * (v_y ^ 4)))

def d_transverse_curvature (v_x v_z v_b2 v_y v_q v_c : K) : K :=
  ((1536 : K) * (v_y ^ 2) * (((1 : K) + ((2 : K) * v_y)) ^ 2) * (((2 : K) + v_y) ^ 2) * ((3 : K) + ((8 : K) * v_y) + ((8 : K) * (v_y ^ 5)) + ((21 : K) * (v_y ^ 2)) + ((24 : K) * (v_y ^ 4)) + ((35 : K) * (v_y ^ 3))))

def d_y_minimal_polynomial (v_x v_z v_b2 v_y v_q v_c : K) : K :=
  ((1 : K) + ((4 : K) * (v_y ^ 2)) + ((6 : K) * v_y))

def d_curvature_factor_cofactor (v_x v_z v_b2 v_y v_q v_c : K) : K :=
  ((-5940 : K) + ((5280 : K) * v_y) + ((10512 : K) * (v_y ^ 2)) + ((12288 : K) * (v_y ^ 9)) + ((57120 : K) * (v_y ^ 3)) + ((79872 : K) * (v_y ^ 8)) + ((142080 : K) * (v_y ^ 4)) + ((216576 : K) * (v_y ^ 7)) + ((276864 : K) * (v_y ^ 5)) + ((321792 : K) * (v_y ^ 6)))

theorem identity_transverse_curvature_reduction (v_x v_z v_b2 v_y v_q v_c : K) :
    (d_transverse_curvature v_x v_z v_b2 v_y v_q v_c) =
    ((5940 : K) + ((30360 : K) * v_y) + ((d_curvature_factor_cofactor v_x v_z v_b2 v_y v_q v_c) * (d_y_minimal_polynomial v_x v_z v_b2 v_y v_q v_c))) := by
  (try simp only [d_curvature_factor_cofactor, d_y_minimal_polynomial, d_transverse_curvature, d_split_q_derivative, d_split_R, d_cusp_R, d_ambient_R]) <;> ring

theorem substitution_ambient_cusp_factorization (v_x v_z v_b2 v_y v_q v_c : K) :
    (((-1 : K) * (((((1 : K) / 2) * ((12 : K) + ((v_x + ((-1 : K) * (3 : K))) ^ 2) + ((-1 : K) * ((v_x + (3 : K)) ^ 2))) * (((-1 : K) * ((v_x + ((-1 : K) * (3 : K))) ^ 2)) + ((2 : K) * v_b2) + ((3 : K) * ((v_x + (3 : K)) ^ 2)))) + ((-2 : K) * ((v_x + ((-1 : K) * (3 : K))) ^ 2) * (v_x + (3 : K))) + ((2 : K) * v_b2 * (((-1 : K) * (3 : K)) + ((3 : K) * v_x)))) ^ 2)) + ((4 : K) * ((((-1 : K) * v_b2) + ((-3 : K) * ((v_x + (3 : K)) ^ 2)) + ((2 : K) * ((v_x + ((-1 : K) * (3 : K))) ^ 2))) ^ 2) * (((v_x + ((-1 : K) * (3 : K))) ^ 2) + ((-1 : K) * v_b2) + ((-2 : K) * ((v_x + (3 : K)) ^ 2))))) =
    ((((9 : K) + v_b2 + ((5 : K) * (v_x ^ 2)) + ((18 : K) * v_x)) ^ 2) * ((-72 : K) + ((-96 : K) * v_x) + ((-8 : K) * (v_x ^ 2)) + ((-4 : K) * v_b2))) := by
  ring

theorem substitution_split_substitution (v_x v_z v_b2 v_y v_q v_c : K) :
    ((((9 : K) + (((v_q + ((-1 : K) * v_y)) ^ 2) * ((4 : K) + ((-4 : K) * (v_y ^ 2)))) + ((5 : K) * (((-1 : K) + ((2 : K) * (v_y ^ 2)) + ((2 : K) * v_q * v_y)) ^ 2)) + ((18 : K) * ((-1 : K) + ((2 : K) * (v_y ^ 2)) + ((2 : K) * v_q * v_y)))) ^ 2) * ((-72 : K) + ((-96 : K) * ((-1 : K) + ((2 : K) * (v_y ^ 2)) + ((2 : K) * v_q * v_y))) + ((-8 : K) * (((-1 : K) + ((2 : K) * (v_y ^ 2)) + ((2 : K) * v_q * v_y)) ^ 2)) + ((-4 : K) * (((v_q + ((-1 : K) * v_y)) ^ 2) * ((4 : K) + ((-4 : K) * (v_y ^ 2))))))) =
    ((((-1 : K) + (v_q ^ 2) + ((4 : K) * (v_y ^ 4)) + ((5 : K) * (v_y ^ 2)) + ((2 : K) * v_q * v_y) + ((4 : K) * (v_q ^ 2) * (v_y ^ 2)) + ((12 : K) * v_q * (v_y ^ 3))) ^ 2) * ((256 : K) + ((-2816 : K) * (v_y ^ 2)) + ((-256 : K) * (v_q ^ 2)) + ((-256 : K) * (v_y ^ 4)) + ((-2048 : K) * v_q * v_y) + ((-1536 : K) * v_q * (v_y ^ 3)) + ((-256 : K) * (v_q ^ 2) * (v_y ^ 2)))) := by
  ring

theorem substitution_curvature_at_q_one (v_x v_z v_b2 v_y v_q v_c : K) :
    ((-1 : K) * (((-465408 : K) * (v_y ^ 7)) + ((-399360 : K) * (v_y ^ 9)) + ((-49152 : K) * (v_y ^ 11)) + ((-3072 : K) * v_y) + ((-1536 : K) * (1 : K)) + ((-1536 : K) * ((1 : K) ^ 5)) + ((3072 : K) * ((1 : K) ^ 3)) + ((27648 : K) * (v_y ^ 5)) + ((29184 : K) * (v_y ^ 3)) + ((-2543616 : K) * ((1 : K) ^ 2) * (v_y ^ 7)) + ((-1880064 : K) * (1 : K) * (v_y ^ 8)) + ((-1499136 : K) * ((1 : K) ^ 3) * (v_y ^ 6)) + ((-1027584 : K) * (1 : K) * (v_y ^ 6)) + ((-986112 : K) * ((1 : K) ^ 2) * (v_y ^ 5)) + ((-958464 : K) * ((1 : K) ^ 2) * (v_y ^ 9)) + ((-786432 : K) * ((1 : K) ^ 3) * (v_y ^ 8)) + ((-531456 : K) * ((1 : K) ^ 3) * (v_y ^ 4)) + ((-399360 : K) * ((1 : K) ^ 4) * (v_y ^ 5)) + ((-393216 : K) * (1 : K) * (v_y ^ 10)) + ((-245760 : K) * ((1 : K) ^ 4) * (v_y ^ 7)) + ((-145920 : K) * ((1 : K) ^ 4) * (v_y ^ 3)) + ((-39936 : K) * ((1 : K) ^ 3) * (v_y ^ 2)) + ((-36864 : K) * ((1 : K) ^ 5) * (v_y ^ 4)) + ((-24576 : K) * ((1 : K) ^ 2) * (v_y ^ 3)) + ((-24576 : K) * ((1 : K) ^ 5) * (v_y ^ 6)) + ((-15360 : K) * v_y * ((1 : K) ^ 4)) + ((-13824 : K) * ((1 : K) ^ 5) * (v_y ^ 2)) + ((18432 : K) * v_y * ((1 : K) ^ 2)) + ((35328 : K) * (1 : K) * (v_y ^ 2)) + ((41472 : K) * (1 : K) * (v_y ^ 4)))) =
    ((1536 : K) * (v_y ^ 2) * (((1 : K) + ((2 : K) * v_y)) ^ 2) * (((2 : K) + v_y) ^ 2) * ((3 : K) + ((8 : K) * v_y) + ((8 : K) * (v_y ^ 5)) + ((21 : K) * (v_y ^ 2)) + ((24 : K) * (v_y ^ 4)) + ((35 : K) * (v_y ^ 3)))) := by
  ring

theorem substitution_branch_to_y_minimal_polynomial (v_x v_z v_b2 v_y v_q v_c : K) :
    ((1 : K) + ((4 : K) * (((-1 : K) + ((2 : K) * (v_c ^ 2))) ^ 2)) + ((6 : K) * ((-1 : K) + ((2 : K) * (v_c ^ 2))))) =
    ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4))) := by
  ring

theorem evaluation_curvature_linear_factor_lower_endpoint :
    ((9 : K) + ((46 : K) * ((-49 : K) / 256))) =
    ((25 : K) / 128) := by
  norm_num

theorem evaluation_curvature_positive_lower_bound :
    ((5940 : K) + ((30360 : K) * ((-49 : K) / 256))) =
    ((4125 : K) / 32) := by
  norm_num

theorem derivative_differentiate_splitting_parameter_1 (v_x v_z v_b2 v_y v_q v_c : ℝ) :
    HasDerivAt (fun x : ℝ => ((((-1 : ℝ) + (x ^ 2) + ((4 : ℝ) * (v_y ^ 4)) + ((5 : ℝ) * (v_y ^ 2)) + ((2 : ℝ) * x * v_y) + ((4 : ℝ) * (x ^ 2) * (v_y ^ 2)) + ((12 : ℝ) * x * (v_y ^ 3))) ^ 2) * ((256 : ℝ) + ((-2816 : ℝ) * (v_y ^ 2)) + ((-256 : ℝ) * (x ^ 2)) + ((-256 : ℝ) * (v_y ^ 4)) + ((-2048 : ℝ) * x * v_y) + ((-1536 : ℝ) * x * (v_y ^ 3)) + ((-256 : ℝ) * (x ^ 2) * (v_y ^ 2)))))
      (((-465408 : ℝ) * (v_y ^ 7)) + ((-399360 : ℝ) * (v_y ^ 9)) + ((-49152 : ℝ) * (v_y ^ 11)) + ((-3072 : ℝ) * v_y) + ((-1536 : ℝ) * v_q) + ((-1536 : ℝ) * (v_q ^ 5)) + ((3072 : ℝ) * (v_q ^ 3)) + ((27648 : ℝ) * (v_y ^ 5)) + ((29184 : ℝ) * (v_y ^ 3)) + ((-2543616 : ℝ) * (v_q ^ 2) * (v_y ^ 7)) + ((-1880064 : ℝ) * v_q * (v_y ^ 8)) + ((-1499136 : ℝ) * (v_q ^ 3) * (v_y ^ 6)) + ((-1027584 : ℝ) * v_q * (v_y ^ 6)) + ((-986112 : ℝ) * (v_q ^ 2) * (v_y ^ 5)) + ((-958464 : ℝ) * (v_q ^ 2) * (v_y ^ 9)) + ((-786432 : ℝ) * (v_q ^ 3) * (v_y ^ 8)) + ((-531456 : ℝ) * (v_q ^ 3) * (v_y ^ 4)) + ((-399360 : ℝ) * (v_q ^ 4) * (v_y ^ 5)) + ((-393216 : ℝ) * v_q * (v_y ^ 10)) + ((-245760 : ℝ) * (v_q ^ 4) * (v_y ^ 7)) + ((-145920 : ℝ) * (v_q ^ 4) * (v_y ^ 3)) + ((-39936 : ℝ) * (v_q ^ 3) * (v_y ^ 2)) + ((-36864 : ℝ) * (v_q ^ 5) * (v_y ^ 4)) + ((-24576 : ℝ) * (v_q ^ 2) * (v_y ^ 3)) + ((-24576 : ℝ) * (v_q ^ 5) * (v_y ^ 6)) + ((-15360 : ℝ) * v_y * (v_q ^ 4)) + ((-13824 : ℝ) * (v_q ^ 5) * (v_y ^ 2)) + ((18432 : ℝ) * v_y * (v_q ^ 2)) + ((35328 : ℝ) * v_q * (v_y ^ 2)) + ((41472 : ℝ) * v_q * (v_y ^ 4))) v_q := by
  refine ((((((((((hasDerivAt_const v_q (-1 : ℝ)).add ((hasDerivAt_id v_q).pow 2)).add ((hasDerivAt_const v_q (4 : ℝ)).mul ((hasDerivAt_const v_q v_y).pow 4))).add ((hasDerivAt_const v_q (5 : ℝ)).mul ((hasDerivAt_const v_q v_y).pow 2))).add (((hasDerivAt_const v_q (2 : ℝ)).mul (hasDerivAt_id v_q)).mul (hasDerivAt_const v_q v_y))).add (((hasDerivAt_const v_q (4 : ℝ)).mul ((hasDerivAt_id v_q).pow 2)).mul ((hasDerivAt_const v_q v_y).pow 2))).add (((hasDerivAt_const v_q (12 : ℝ)).mul (hasDerivAt_id v_q)).mul ((hasDerivAt_const v_q v_y).pow 3))).pow 2).mul (((((((hasDerivAt_const v_q (256 : ℝ)).add ((hasDerivAt_const v_q (-2816 : ℝ)).mul ((hasDerivAt_const v_q v_y).pow 2))).add ((hasDerivAt_const v_q (-256 : ℝ)).mul ((hasDerivAt_id v_q).pow 2))).add ((hasDerivAt_const v_q (-256 : ℝ)).mul ((hasDerivAt_const v_q v_y).pow 4))).add (((hasDerivAt_const v_q (-2048 : ℝ)).mul (hasDerivAt_id v_q)).mul (hasDerivAt_const v_q v_y))).add (((hasDerivAt_const v_q (-1536 : ℝ)).mul (hasDerivAt_id v_q)).mul ((hasDerivAt_const v_q v_y).pow 3))).add (((hasDerivAt_const v_q (-256 : ℝ)).mul ((hasDerivAt_id v_q).pow 2)).mul ((hasDerivAt_const v_q v_y).pow 2)))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

end Step1.boundary_curvature
