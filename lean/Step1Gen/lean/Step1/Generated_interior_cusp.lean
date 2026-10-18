import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.interior_cusp

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/interior_cusp.json by generation/generate_lean.py. -/

def d_u (v_x v_y v_t : K) : K :=
  ((v_y ^ 2) + (((3 : K) + v_x) ^ 2))

def d_v (v_x v_y v_t : K) : K :=
  ((v_y ^ 2) + (((3 : K) + ((-1 : K) * v_x)) ^ 2))

def d_q (v_x v_y v_t : K) : K :=
  (((2 : K) * ((3 : K) + v_x) * ((((3 : K) + ((-1 : K) * v_x)) ^ 2) + ((-1 : K) * (v_y ^ 2)))) + ((4 : K) * (v_y ^ 2) * ((3 : K) + ((-1 : K) * v_x))))

def d_g (v_x v_y v_t : K) : K :=
  (((-3 : K) * (d_u v_x v_y v_t)) + ((2 : K) * (d_v v_x v_y v_t)))

def d_eta (v_x v_y v_t : K) : K :=
  ((d_v v_x v_y v_t) + ((-2 : K) * (d_u v_x v_y v_t)))

def d_chi (v_x v_y v_t : K) : K :=
  (((-1 : K) * (d_q v_x v_y v_t)) + (((1 : K) / 2) * (((-1 : K) * (d_v v_x v_y v_t)) + ((3 : K) * (d_u v_x v_y v_t))) * ((12 : K) + (d_v v_x v_y v_t) + ((-1 : K) * (d_u v_x v_y v_t)))))

def d_R (v_x v_y v_t : K) : K :=
  (((-1 : K) * ((d_chi v_x v_y v_t) ^ 2)) + ((4 : K) * (d_eta v_x v_y v_t) * ((d_g v_x v_y v_t) ^ 2)))

def d_F (v_x v_y v_t : K) : K :=
  ((18 : K) + (v_y ^ 2) + ((2 : K) * (v_x ^ 2)) + ((24 : K) * v_x))

def d_G (v_x v_y v_t : K) : K :=
  ((9 : K) + (v_y ^ 2) + ((5 : K) * (v_x ^ 2)) + ((18 : K) * v_x))

def d_Rx (v_x v_y v_t : K) : K :=
  ((-4 : K) * (d_G v_x v_y v_t) * (((d_F v_x v_y v_t) * ((-12 : K) + ((12 : K) * v_x))) + (((24 : K) + ((4 : K) * v_x)) * ((d_G v_x v_y v_t) + ((2 : K) * (d_F v_x v_y v_t))))))

def d_Ry (v_x v_y v_t : K) : K :=
  ((-8 : K) * (d_G v_x v_y v_t) * v_y * ((d_G v_x v_y v_t) + ((2 : K) * (d_F v_x v_y v_t))))

def d_Delta (v_x v_y v_t : K) : K :=
  ((-27 : K) + (((v_x ^ 2) + (v_y ^ 2)) ^ 2) + ((-8 : K) * (v_x ^ 3)) + ((18 : K) * (v_x ^ 2)) + ((18 : K) * (v_y ^ 2)) + ((24 : K) * v_x * (v_y ^ 2)))

def d_Delta_real (v_x v_y v_t : K) : K :=
  ((((-3 : K) + v_x) ^ 3) * ((1 : K) + v_x))

def d_F_real (v_x v_y v_t : K) : K :=
  ((18 : K) + ((2 : K) * (v_x ^ 2)) + ((24 : K) * v_x))

def d_cusp_cubic (v_x v_y v_t : K) : K :=
  ((72 : K) + ((5 : K) * (v_x ^ 3)) + ((62 : K) * (v_x ^ 2)) + ((141 : K) * v_x))

def d_cusp_cubic_derivative (v_x v_y v_t : K) : K :=
  ((141 : K) + ((15 : K) * (v_x ^ 2)) + ((124 : K) * v_x))

theorem identity_cusp_R_factorization (v_x v_y v_t : K) :
    (d_R v_x v_y v_t) =
    ((-4 : K) * (d_F v_x v_y v_t) * ((d_G v_x v_y v_t) ^ 2)) := by
  (try simp only [d_cusp_cubic_derivative, d_cusp_cubic, d_F_real, d_Delta_real, d_Delta, d_Ry, d_Rx, d_G, d_F, d_R, d_chi, d_eta, d_g, d_q, d_v, d_u]) <;> ring

theorem identity_positive_F_above_cutoff (v_x v_y v_t : K) :
    (d_F_real v_x v_y v_t) =
    (((2 : K) / 25) + ((((4 : K) / 5) + v_x) * (((112 : K) / 5) + ((2 : K) * v_x)))) := by
  (try simp only [d_cusp_cubic_derivative, d_cusp_cubic, d_F_real, d_Delta_real, d_Delta, d_Ry, d_Rx, d_G, d_F, d_R, d_chi, d_eta, d_g, d_q, d_v, d_u]) <;> ring

theorem substitution_cusp_nonreal_branch_contradiction (v_x v_y v_t : K) :
    ((18 : K) + (v_y ^ 2) + ((2 : K) * ((1 : K) ^ 2)) + ((24 : K) * (1 : K))) =
    ((44 : K) + (v_y ^ 2)) := by
  ring

theorem substitution_real_axis_deltoid_interval (v_x v_y v_t : K) :
    ((-27 : K) + (((v_x ^ 2) + ((0 : K) ^ 2)) ^ 2) + ((-8 : K) * (v_x ^ 3)) + ((18 : K) * (v_x ^ 2)) + ((18 : K) * ((0 : K) ^ 2)) + ((24 : K) * v_x * ((0 : K) ^ 2))) =
    ((((-3 : K) + v_x) ^ 3) * ((1 : K) + v_x)) := by
  ring

theorem substitution_cusp_real_F (v_x v_y v_t : K) :
    ((18 : K) + ((0 : K) ^ 2) + ((2 : K) * (v_x ^ 2)) + ((24 : K) * v_x)) =
    ((18 : K) + ((2 : K) * (v_x ^ 2)) + ((24 : K) * v_x)) := by
  ring

theorem substitution_positive_coefficient_F_cutoff (v_x v_y v_t : K) :
    ((18 : K) + ((2 : K) * ((((-4 : K) / 5) + v_t) ^ 2)) + ((24 : K) * (((-4 : K) / 5) + v_t))) =
    (((2 : K) / 25) + ((2 : K) * (v_t ^ 2)) + (((104 : K) / 5) * v_t)) := by
  ring

theorem substitution_F_at_cutoff (v_x v_y v_t : K) :
    ((18 : K) + ((2 : K) * (((-4 : K) / 5) ^ 2)) + ((24 : K) * ((-4 : K) / 5))) =
    ((2 : K) / 25) := by
  ring

theorem substitution_cusp_cubic_at_cutoff (v_x v_y v_t : K) :
    ((72 : K) + ((5 : K) * (((-4 : K) / 5) ^ 3)) + ((62 : K) * (((-4 : K) / 5) ^ 2)) + ((141 : K) * ((-4 : K) / 5))) =
    ((-92 : K) / 25) := by
  ring

theorem substitution_real_cusp_derivative_factorization (v_x v_y v_t : K) :
    ((-4 : K) * ((9 : K) + ((0 : K) ^ 2) + ((5 : K) * (v_x ^ 2)) + ((18 : K) * v_x)) * ((((18 : K) + ((0 : K) ^ 2) + ((2 : K) * (v_x ^ 2)) + ((24 : K) * v_x)) * ((-12 : K) + ((12 : K) * v_x))) + (((24 : K) + ((4 : K) * v_x)) * (((9 : K) + ((0 : K) ^ 2) + ((5 : K) * (v_x ^ 2)) + ((18 : K) * v_x)) + ((2 : K) * ((18 : K) + ((0 : K) ^ 2) + ((2 : K) * (v_x ^ 2)) + ((24 : K) * v_x))))))) =
    (((72 : K) + ((5 : K) * (v_x ^ 3)) + ((62 : K) * (v_x ^ 2)) + ((141 : K) * v_x)) * ((-144 : K) + ((-48 : K) * v_x)) * ((3 : K) + ((5 : K) * v_x))) := by
  ring

theorem orthant_cusp_cutoff_nonnegative_remainder (v_x v_y v_t : ℝ)
    (h_t : 0 ≤ v_t)
    : 0 ≤ (((2 : ℝ) * (v_t ^ 2)) + (((104 : ℝ) / 5) * v_t)) := by
  ring_nf <;> positivity

theorem derivative_cusp_x_derivative_1 (v_x v_y v_t : ℝ) :
    HasDerivAt (fun x : ℝ => (((-1 : ℝ) * ((((-1 : ℝ) * (((2 : ℝ) * ((3 : ℝ) + x) * ((((3 : ℝ) + ((-1 : ℝ) * x)) ^ 2) + ((-1 : ℝ) * (v_y ^ 2)))) + ((4 : ℝ) * (v_y ^ 2) * ((3 : ℝ) + ((-1 : ℝ) * x))))) + (((1 : ℝ) / 2) * (((-1 : ℝ) * ((v_y ^ 2) + (((3 : ℝ) + ((-1 : ℝ) * x)) ^ 2))) + ((3 : ℝ) * ((v_y ^ 2) + (((3 : ℝ) + x) ^ 2)))) * ((12 : ℝ) + ((v_y ^ 2) + (((3 : ℝ) + ((-1 : ℝ) * x)) ^ 2)) + ((-1 : ℝ) * ((v_y ^ 2) + (((3 : ℝ) + x) ^ 2)))))) ^ 2)) + ((4 : ℝ) * (((v_y ^ 2) + (((3 : ℝ) + ((-1 : ℝ) * x)) ^ 2)) + ((-2 : ℝ) * ((v_y ^ 2) + (((3 : ℝ) + x) ^ 2)))) * ((((-3 : ℝ) * ((v_y ^ 2) + (((3 : ℝ) + x) ^ 2))) + ((2 : ℝ) * ((v_y ^ 2) + (((3 : ℝ) + ((-1 : ℝ) * x)) ^ 2)))) ^ 2))))
      ((-4 : ℝ) * ((9 : ℝ) + (v_y ^ 2) + ((5 : ℝ) * (v_x ^ 2)) + ((18 : ℝ) * v_x)) * ((((18 : ℝ) + (v_y ^ 2) + ((2 : ℝ) * (v_x ^ 2)) + ((24 : ℝ) * v_x)) * ((-12 : ℝ) + ((12 : ℝ) * v_x))) + (((24 : ℝ) + ((4 : ℝ) * v_x)) * (((9 : ℝ) + (v_y ^ 2) + ((5 : ℝ) * (v_x ^ 2)) + ((18 : ℝ) * v_x)) + ((2 : ℝ) * ((18 : ℝ) + (v_y ^ 2) + ((2 : ℝ) * (v_x ^ 2)) + ((24 : ℝ) * v_x))))))) v_x := by
  refine ((((hasDerivAt_const v_x (-1 : ℝ)).mul ((((hasDerivAt_const v_x (-1 : ℝ)).mul ((((hasDerivAt_const v_x (2 : ℝ)).mul ((hasDerivAt_const v_x (3 : ℝ)).add (hasDerivAt_id v_x))).mul ((((hasDerivAt_const v_x (3 : ℝ)).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (hasDerivAt_id v_x))).pow 2).add ((hasDerivAt_const v_x (-1 : ℝ)).mul ((hasDerivAt_const v_x v_y).pow 2)))).add (((hasDerivAt_const v_x (4 : ℝ)).mul ((hasDerivAt_const v_x v_y).pow 2)).mul ((hasDerivAt_const v_x (3 : ℝ)).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (hasDerivAt_id v_x)))))).add (((hasDerivAt_const v_x ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_x (-1 : ℝ)).mul (((hasDerivAt_const v_x v_y).pow 2).add (((hasDerivAt_const v_x (3 : ℝ)).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (hasDerivAt_id v_x))).pow 2))).add ((hasDerivAt_const v_x (3 : ℝ)).mul (((hasDerivAt_const v_x v_y).pow 2).add (((hasDerivAt_const v_x (3 : ℝ)).add (hasDerivAt_id v_x)).pow 2))))).mul (((hasDerivAt_const v_x (12 : ℝ)).add (((hasDerivAt_const v_x v_y).pow 2).add (((hasDerivAt_const v_x (3 : ℝ)).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (hasDerivAt_id v_x))).pow 2))).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (((hasDerivAt_const v_x v_y).pow 2).add (((hasDerivAt_const v_x (3 : ℝ)).add (hasDerivAt_id v_x)).pow 2)))))).pow 2)).add (((hasDerivAt_const v_x (4 : ℝ)).mul ((((hasDerivAt_const v_x v_y).pow 2).add (((hasDerivAt_const v_x (3 : ℝ)).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (hasDerivAt_id v_x))).pow 2)).add ((hasDerivAt_const v_x (-2 : ℝ)).mul (((hasDerivAt_const v_x v_y).pow 2).add (((hasDerivAt_const v_x (3 : ℝ)).add (hasDerivAt_id v_x)).pow 2))))).mul ((((hasDerivAt_const v_x (-3 : ℝ)).mul (((hasDerivAt_const v_x v_y).pow 2).add (((hasDerivAt_const v_x (3 : ℝ)).add (hasDerivAt_id v_x)).pow 2))).add ((hasDerivAt_const v_x (2 : ℝ)).mul (((hasDerivAt_const v_x v_y).pow 2).add (((hasDerivAt_const v_x (3 : ℝ)).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (hasDerivAt_id v_x))).pow 2)))).pow 2))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_cusp_y_derivative_1 (v_x v_y v_t : ℝ) :
    HasDerivAt (fun x : ℝ => (((-1 : ℝ) * ((((-1 : ℝ) * (((2 : ℝ) * ((3 : ℝ) + v_x) * ((((3 : ℝ) + ((-1 : ℝ) * v_x)) ^ 2) + ((-1 : ℝ) * (x ^ 2)))) + ((4 : ℝ) * (x ^ 2) * ((3 : ℝ) + ((-1 : ℝ) * v_x))))) + (((1 : ℝ) / 2) * (((-1 : ℝ) * ((x ^ 2) + (((3 : ℝ) + ((-1 : ℝ) * v_x)) ^ 2))) + ((3 : ℝ) * ((x ^ 2) + (((3 : ℝ) + v_x) ^ 2)))) * ((12 : ℝ) + ((x ^ 2) + (((3 : ℝ) + ((-1 : ℝ) * v_x)) ^ 2)) + ((-1 : ℝ) * ((x ^ 2) + (((3 : ℝ) + v_x) ^ 2)))))) ^ 2)) + ((4 : ℝ) * (((x ^ 2) + (((3 : ℝ) + ((-1 : ℝ) * v_x)) ^ 2)) + ((-2 : ℝ) * ((x ^ 2) + (((3 : ℝ) + v_x) ^ 2)))) * ((((-3 : ℝ) * ((x ^ 2) + (((3 : ℝ) + v_x) ^ 2))) + ((2 : ℝ) * ((x ^ 2) + (((3 : ℝ) + ((-1 : ℝ) * v_x)) ^ 2)))) ^ 2))))
      ((-8 : ℝ) * ((9 : ℝ) + (v_y ^ 2) + ((5 : ℝ) * (v_x ^ 2)) + ((18 : ℝ) * v_x)) * v_y * (((9 : ℝ) + (v_y ^ 2) + ((5 : ℝ) * (v_x ^ 2)) + ((18 : ℝ) * v_x)) + ((2 : ℝ) * ((18 : ℝ) + (v_y ^ 2) + ((2 : ℝ) * (v_x ^ 2)) + ((24 : ℝ) * v_x))))) v_y := by
  refine ((((hasDerivAt_const v_y (-1 : ℝ)).mul ((((hasDerivAt_const v_y (-1 : ℝ)).mul ((((hasDerivAt_const v_y (2 : ℝ)).mul ((hasDerivAt_const v_y (3 : ℝ)).add (hasDerivAt_const v_y v_x))).mul ((((hasDerivAt_const v_y (3 : ℝ)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_x))).pow 2).add ((hasDerivAt_const v_y (-1 : ℝ)).mul ((hasDerivAt_id v_y).pow 2)))).add (((hasDerivAt_const v_y (4 : ℝ)).mul ((hasDerivAt_id v_y).pow 2)).mul ((hasDerivAt_const v_y (3 : ℝ)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_x)))))).add (((hasDerivAt_const v_y ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_y (-1 : ℝ)).mul (((hasDerivAt_id v_y).pow 2).add (((hasDerivAt_const v_y (3 : ℝ)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_x))).pow 2))).add ((hasDerivAt_const v_y (3 : ℝ)).mul (((hasDerivAt_id v_y).pow 2).add (((hasDerivAt_const v_y (3 : ℝ)).add (hasDerivAt_const v_y v_x)).pow 2))))).mul (((hasDerivAt_const v_y (12 : ℝ)).add (((hasDerivAt_id v_y).pow 2).add (((hasDerivAt_const v_y (3 : ℝ)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_x))).pow 2))).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (((hasDerivAt_id v_y).pow 2).add (((hasDerivAt_const v_y (3 : ℝ)).add (hasDerivAt_const v_y v_x)).pow 2)))))).pow 2)).add (((hasDerivAt_const v_y (4 : ℝ)).mul ((((hasDerivAt_id v_y).pow 2).add (((hasDerivAt_const v_y (3 : ℝ)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_x))).pow 2)).add ((hasDerivAt_const v_y (-2 : ℝ)).mul (((hasDerivAt_id v_y).pow 2).add (((hasDerivAt_const v_y (3 : ℝ)).add (hasDerivAt_const v_y v_x)).pow 2))))).mul ((((hasDerivAt_const v_y (-3 : ℝ)).mul (((hasDerivAt_id v_y).pow 2).add (((hasDerivAt_const v_y (3 : ℝ)).add (hasDerivAt_const v_y v_x)).pow 2))).add ((hasDerivAt_const v_y (2 : ℝ)).mul (((hasDerivAt_id v_y).pow 2).add (((hasDerivAt_const v_y (3 : ℝ)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_x))).pow 2)))).pow 2))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_cusp_cubic_monotonicity_1 (v_x v_y v_t : ℝ) :
    HasDerivAt (fun x : ℝ => ((72 : ℝ) + ((5 : ℝ) * (x ^ 3)) + ((62 : ℝ) * (x ^ 2)) + ((141 : ℝ) * x)))
      ((141 : ℝ) + ((15 : ℝ) * (v_x ^ 2)) + ((124 : ℝ) * v_x)) v_x := by
  refine (((((hasDerivAt_const v_x (72 : ℝ)).add ((hasDerivAt_const v_x (5 : ℝ)).mul ((hasDerivAt_id v_x).pow 3))).add ((hasDerivAt_const v_x (62 : ℝ)).mul ((hasDerivAt_id v_x).pow 2))).add ((hasDerivAt_const v_x (141 : ℝ)).mul (hasDerivAt_id v_x))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem positivity_negative_cusp_cubic_on_admissible_interval_bound (v_x v_y v_t : ℝ)
    (hLower : (-1 : ℝ) ≤ v_x)
    (hUpper : v_x ≤ ((-4 : ℝ) / 5)) :
    ((92 : ℝ) / 25) ≤ ((-1 : ℝ) * ((72 : ℝ) + ((5 : ℝ) * (v_x ^ 3)) + ((62 : ℝ) * (v_x ^ 2)) + ((141 : ℝ) * v_x))) := by
  have ht : 0 ≤ ((v_x - (-1 : ℝ)) / ((1 : ℝ) / 5)) := div_nonneg (by linarith) (by norm_num)
  have hs : 0 ≤ ((((-4 : ℝ) / 5) - v_x) / ((1 : ℝ) / 5)) := div_nonneg (by linarith) (by norm_num)
  have hNonnegative : 0 ≤ ((((208 : ℝ) / 25) * ((v_x - (-1 : ℝ)) / ((1 : ℝ) / 5)) ^ 0 * ((((-4 : ℝ) / 5) - v_x) / ((1 : ℝ) / 5)) ^ 3) + (((464 : ℝ) / 25) * ((v_x - (-1 : ℝ)) / ((1 : ℝ) / 5)) ^ 1 * ((((-4 : ℝ) / 5) - v_x) / ((1 : ℝ) / 5)) ^ 2) + (((257 : ℝ) / 25) * ((v_x - (-1 : ℝ)) / ((1 : ℝ) / 5)) ^ 2 * ((((-4 : ℝ) / 5) - v_x) / ((1 : ℝ) / 5)) ^ 1)) := by positivity
  have hIdentity : ((-1 : ℝ) * ((72 : ℝ) + ((5 : ℝ) * (v_x ^ 3)) + ((62 : ℝ) * (v_x ^ 2)) + ((141 : ℝ) * v_x))) - ((92 : ℝ) / 25) = ((((208 : ℝ) / 25) * ((v_x - (-1 : ℝ)) / ((1 : ℝ) / 5)) ^ 0 * ((((-4 : ℝ) / 5) - v_x) / ((1 : ℝ) / 5)) ^ 3) + (((464 : ℝ) / 25) * ((v_x - (-1 : ℝ)) / ((1 : ℝ) / 5)) ^ 1 * ((((-4 : ℝ) / 5) - v_x) / ((1 : ℝ) / 5)) ^ 2) + (((257 : ℝ) / 25) * ((v_x - (-1 : ℝ)) / ((1 : ℝ) / 5)) ^ 2 * ((((-4 : ℝ) / 5) - v_x) / ((1 : ℝ) / 5)) ^ 1)) := by ring
  rw [← hIdentity] at hNonnegative
  linarith

theorem positivity_negative_cusp_cubic_on_admissible_interval (v_x v_y v_t : ℝ)
    (hLower : (-1 : ℝ) ≤ v_x)
    (hUpper : v_x ≤ ((-4 : ℝ) / 5)) :
    0 < ((-1 : ℝ) * ((72 : ℝ) + ((5 : ℝ) * (v_x ^ 3)) + ((62 : ℝ) * (v_x ^ 2)) + ((141 : ℝ) * v_x))) := by
  have h := positivity_negative_cusp_cubic_on_admissible_interval_bound v_x v_y v_t hLower hUpper
  linarith

end Step1.interior_cusp
