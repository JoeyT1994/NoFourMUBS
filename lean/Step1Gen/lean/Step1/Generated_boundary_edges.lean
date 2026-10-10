import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.boundary_edges

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/boundary_edges.json. See LEAN_NOTES.md. -/

def d_R (v_c v_h : K) : K :=
  ((((1 : K) + ((-4 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 4)) + ((4 : K) * v_h * (v_c ^ 3))) ^ 2) * ((1 : K) + ((2 : K) * (v_c ^ 2))) * ((-256 : K) + ((-512 : K) * (v_c ^ 2))) * ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)) + ((-4 : K) * v_c * v_h) + ((4 : K) * (v_c ^ 2) * (v_h ^ 2)) + ((16 : K) * v_h * (v_c ^ 3))))

def d_L (v_c v_h : K) : K :=
  ((1 : K) + ((2 : K) * (v_c ^ 2)))

def d_T (v_c v_h : K) : K :=
  ((1 : K) + ((-2 : K) * v_c) + ((4 : K) * (v_c ^ 3)))

def d_F (v_c v_h : K) : K :=
  ((1 : K) + ((-4 : K) * v_c) + ((-4 : K) * (v_c ^ 3)) + ((4 : K) * (v_c ^ 2)) + ((4 : K) * (v_c ^ 4)) + ((32 : K) * (v_c ^ 5)))

def d_edge_R (v_c v_h : K) : K :=
  (((d_L v_c v_h) ^ 2) * ((d_T v_c v_h) ^ 2) * (((1 : K) + ((2 : K) * v_c)) ^ 4) * ((256 : K) + ((-1024 : K) * (v_c ^ 2))))

def d_edge_R_derivative (v_c v_h : K) : K :=
  ((-1024 : K) * (d_F v_c v_h) * (d_L v_c v_h) * (d_T v_c v_h) * (((1 : K) + ((2 : K) * v_c)) ^ 4) * ((-1 : K) + ((4 : K) * v_c)))

theorem identity_reference_edge_factorization (v_c v_h : K) :
    (d_edge_R v_c v_h) =
    (((d_L v_c v_h) ^ 2) * ((d_T v_c v_h) ^ 2) * (((1 : K) + ((2 : K) * v_c)) ^ 5) * ((256 : K) + ((-512 : K) * v_c))) := by
  (try simp only [d_edge_R_derivative, d_edge_R, d_F, d_T, d_L, d_R]) <;> ring

theorem substitution_positive_horizontal_edge (v_c v_h : K) :
    ((((1 : K) + ((-4 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 4)) + ((4 : K) * (1 : K) * (v_c ^ 3))) ^ 2) * ((1 : K) + ((2 : K) * (v_c ^ 2))) * ((-256 : K) + ((-512 : K) * (v_c ^ 2))) * ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)) + ((-4 : K) * v_c * (1 : K)) + ((4 : K) * (v_c ^ 2) * ((1 : K) ^ 2)) + ((16 : K) * (1 : K) * (v_c ^ 3)))) =
    ((((1 : K) + ((2 : K) * (v_c ^ 2))) ^ 2) * (((1 : K) + ((-2 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2) * (((1 : K) + ((2 : K) * v_c)) ^ 4) * ((256 : K) + ((-1024 : K) * (v_c ^ 2)))) := by
  ring

theorem substitution_negative_edge_symmetry (v_c v_h : K) :
    ((((1 : K) + ((-4 : K) * (((-1 : K) * v_c) ^ 2)) + ((8 : K) * (((-1 : K) * v_c) ^ 4)) + ((4 : K) * ((-1 : K) * v_h) * (((-1 : K) * v_c) ^ 3))) ^ 2) * ((1 : K) + ((2 : K) * (((-1 : K) * v_c) ^ 2))) * ((-256 : K) + ((-512 : K) * (((-1 : K) * v_c) ^ 2))) * ((-1 : K) + ((-4 : K) * (((-1 : K) * v_c) ^ 2)) + ((16 : K) * (((-1 : K) * v_c) ^ 4)) + ((-4 : K) * ((-1 : K) * v_c) * ((-1 : K) * v_h)) + ((4 : K) * (((-1 : K) * v_c) ^ 2) * (((-1 : K) * v_h) ^ 2)) + ((16 : K) * ((-1 : K) * v_h) * (((-1 : K) * v_c) ^ 3)))) =
    ((((1 : K) + ((-4 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 4)) + ((4 : K) * v_h * (v_c ^ 3))) ^ 2) * ((1 : K) + ((2 : K) * (v_c ^ 2))) * ((-256 : K) + ((-512 : K) * (v_c ^ 2))) * ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)) + ((-4 : K) * v_c * v_h) + ((4 : K) * (v_c ^ 2) * (v_h ^ 2)) + ((16 : K) * v_h * (v_c ^ 3)))) := by
  ring

theorem evaluation_surviving_positive_value :
    ((((1 : K) + ((-4 : K) * (((1 : K) / 4) ^ 2)) + ((8 : K) * (((1 : K) / 4) ^ 4)) + ((4 : K) * (1 : K) * (((1 : K) / 4) ^ 3))) ^ 2) * ((1 : K) + ((2 : K) * (((1 : K) / 4) ^ 2))) * ((-256 : K) + ((-512 : K) * (((1 : K) / 4) ^ 2))) * ((-1 : K) + ((-4 : K) * (((1 : K) / 4) ^ 2)) + ((16 : K) * (((1 : K) / 4) ^ 4)) + ((-4 : K) * ((1 : K) / 4) * (1 : K)) + ((4 : K) * (((1 : K) / 4) ^ 2) * ((1 : K) ^ 2)) + ((16 : K) * (1 : K) * (((1 : K) / 4) ^ 3)))) =
    ((1594323 : K) / 4096) := by
  norm_num

theorem derivative_differentiate_horizontal_edge_1 (v_c v_h : ℝ) :
    HasDerivAt (fun x : ℝ => ((((1 : ℝ) + ((2 : ℝ) * (x ^ 2))) ^ 2) * (((1 : ℝ) + ((-2 : ℝ) * x) + ((4 : ℝ) * (x ^ 3))) ^ 2) * (((1 : ℝ) + ((2 : ℝ) * x)) ^ 4) * ((256 : ℝ) + ((-1024 : ℝ) * (x ^ 2)))))
      ((-1024 : ℝ) * ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) * ((1 : ℝ) + ((2 : ℝ) * (v_c ^ 2))) * ((1 : ℝ) + ((-2 : ℝ) * v_c) + ((4 : ℝ) * (v_c ^ 3))) * (((1 : ℝ) + ((2 : ℝ) * v_c)) ^ 4) * ((-1 : ℝ) + ((4 : ℝ) * v_c))) v_c := by
  refine (((((((hasDerivAt_const v_c (1 : ℝ)).add ((hasDerivAt_const v_c (2 : ℝ)).mul ((hasDerivAt_id v_c).pow 2))).pow 2).mul ((((hasDerivAt_const v_c (1 : ℝ)).add ((hasDerivAt_const v_c (-2 : ℝ)).mul (hasDerivAt_id v_c))).add ((hasDerivAt_const v_c (4 : ℝ)).mul ((hasDerivAt_id v_c).pow 3))).pow 2)).mul (((hasDerivAt_const v_c (1 : ℝ)).add ((hasDerivAt_const v_c (2 : ℝ)).mul (hasDerivAt_id v_c))).pow 4)).mul ((hasDerivAt_const v_c (256 : ℝ)).add ((hasDerivAt_const v_c (-1024 : ℝ)).mul ((hasDerivAt_id v_c).pow 2)))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem positivity_T_positive_full_edge_bound (v_c v_h : ℝ)
    (hLower : ((-1 : ℝ) / 2) ≤ v_c)
    (hUpper : v_c ≤ ((1 : ℝ) / 2)) :
    ((1 : ℝ) / 6) ≤ ((1 : ℝ) + ((-2 : ℝ) * v_c) + ((4 : ℝ) * (v_c ^ 3))) := by
  have ht : 0 ≤ ((v_c - ((-1 : ℝ) / 2)) / (1 : ℝ)) := div_nonneg (by linarith) (by norm_num)
  have hs : 0 ≤ ((((1 : ℝ) / 2) - v_c) / (1 : ℝ)) := div_nonneg (by linarith) (by norm_num)
  have hNonnegative : 0 ≤ ((((4 : ℝ) / 3) * ((v_c - ((-1 : ℝ) / 2)) / (1 : ℝ)) ^ 0 * ((((1 : ℝ) / 2) - v_c) / (1 : ℝ)) ^ 3) + ((5 : ℝ) * ((v_c - ((-1 : ℝ) / 2)) / (1 : ℝ)) ^ 1 * ((((1 : ℝ) / 2) - v_c) / (1 : ℝ)) ^ 2) + (((1 : ℝ) / 3) * ((v_c - ((-1 : ℝ) / 2)) / (1 : ℝ)) ^ 3 * ((((1 : ℝ) / 2) - v_c) / (1 : ℝ)) ^ 0)) := by positivity
  have hIdentity : ((1 : ℝ) + ((-2 : ℝ) * v_c) + ((4 : ℝ) * (v_c ^ 3))) - ((1 : ℝ) / 6) = ((((4 : ℝ) / 3) * ((v_c - ((-1 : ℝ) / 2)) / (1 : ℝ)) ^ 0 * ((((1 : ℝ) / 2) - v_c) / (1 : ℝ)) ^ 3) + ((5 : ℝ) * ((v_c - ((-1 : ℝ) / 2)) / (1 : ℝ)) ^ 1 * ((((1 : ℝ) / 2) - v_c) / (1 : ℝ)) ^ 2) + (((1 : ℝ) / 3) * ((v_c - ((-1 : ℝ) / 2)) / (1 : ℝ)) ^ 3 * ((((1 : ℝ) / 2) - v_c) / (1 : ℝ)) ^ 0)) := by ring
  rw [← hIdentity] at hNonnegative
  linarith

theorem positivity_T_positive_full_edge (v_c v_h : ℝ)
    (hLower : ((-1 : ℝ) / 2) ≤ v_c)
    (hUpper : v_c ≤ ((1 : ℝ) / 2)) :
    0 < ((1 : ℝ) + ((-2 : ℝ) * v_c) + ((4 : ℝ) * (v_c ^ 3))) := by
  have h := positivity_T_positive_full_edge_bound v_c v_h hLower hUpper
  linarith

theorem positivity_F_positive_left_bound (v_c v_h : ℝ)
    (hLower : ((-1 : ℝ) / 2) ≤ v_c)
    (hUpper : v_c ≤ (0 : ℝ)) :
    (1 : ℝ) ≤ ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) := by
  have ht : 0 ≤ ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) := div_nonneg (by linarith) (by norm_num)
  have hs : 0 ≤ (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) := div_nonneg (by linarith) (by norm_num)
  have hNonnegative : 0 ≤ ((((11 : ℝ) / 4) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 0 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 5) + (((49 : ℝ) / 4) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 1 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 4) + (((31 : ℝ) / 2) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 2 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 3) + ((9 : ℝ) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 3 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 2) + ((2 : ℝ) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 4 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 1)) := by positivity
  have hIdentity : ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) - (1 : ℝ) = ((((11 : ℝ) / 4) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 0 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 5) + (((49 : ℝ) / 4) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 1 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 4) + (((31 : ℝ) / 2) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 2 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 3) + ((9 : ℝ) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 3 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 2) + ((2 : ℝ) * ((v_c - ((-1 : ℝ) / 2)) / ((1 : ℝ) / 2)) ^ 4 * (((0 : ℝ) - v_c) / ((1 : ℝ) / 2)) ^ 1)) := by ring
  rw [← hIdentity] at hNonnegative
  linarith

theorem positivity_F_positive_left (v_c v_h : ℝ)
    (hLower : ((-1 : ℝ) / 2) ≤ v_c)
    (hUpper : v_c ≤ (0 : ℝ)) :
    0 < ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) := by
  have h := positivity_F_positive_left_bound v_c v_h hLower hUpper
  linarith

theorem positivity_F_positive_middle_bound (v_c v_h : ℝ)
    (hLower : (0 : ℝ) ≤ v_c)
    (hUpper : v_c ≤ ((1 : ℝ) / 4)) :
    ((15 : ℝ) / 64) ≤ ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) := by
  have ht : 0 ≤ ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) := div_nonneg (by linarith) (by norm_num)
  have hs : 0 ≤ ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) := div_nonneg (by linarith) (by norm_num)
  have hNonnegative : 0 ≤ ((((49 : ℝ) / 64) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 0 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 5) + (((181 : ℝ) / 64) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 1 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 4) + (((125 : ℝ) / 32) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 2 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 3) + (((75 : ℝ) / 32) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 3 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 2) + (((15 : ℝ) / 32) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 4 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 1)) := by positivity
  have hIdentity : ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) - ((15 : ℝ) / 64) = ((((49 : ℝ) / 64) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 0 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 5) + (((181 : ℝ) / 64) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 1 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 4) + (((125 : ℝ) / 32) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 2 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 3) + (((75 : ℝ) / 32) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 3 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 2) + (((15 : ℝ) / 32) * ((v_c - (0 : ℝ)) / ((1 : ℝ) / 4)) ^ 4 * ((((1 : ℝ) / 4) - v_c) / ((1 : ℝ) / 4)) ^ 1)) := by ring
  rw [← hIdentity] at hNonnegative
  linarith

theorem positivity_F_positive_middle (v_c v_h : ℝ)
    (hLower : (0 : ℝ) ≤ v_c)
    (hUpper : v_c ≤ ((1 : ℝ) / 4)) :
    0 < ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) := by
  have h := positivity_F_positive_middle_bound v_c v_h hLower hUpper
  linarith

theorem positivity_F_positive_right_bound (v_c v_h : ℝ)
    (hLower : ((1 : ℝ) / 4) ≤ v_c)
    (hUpper : v_c ≤ ((1 : ℝ) / 2)) :
    ((3 : ℝ) / 32) ≤ ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) := by
  have ht : 0 ≤ ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) := div_nonneg (by linarith) (by norm_num)
  have hs : 0 ≤ ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) := div_nonneg (by linarith) (by norm_num)
  have hNonnegative : 0 ≤ ((((9 : ℝ) / 64) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 0 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 5) + (((15 : ℝ) / 64) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 1 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 4) + (((5 : ℝ) / 16) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 3 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 2) + (((33 : ℝ) / 32) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 4 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 1) + (((21 : ℝ) / 32) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 5 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 0)) := by positivity
  have hIdentity : ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) - ((3 : ℝ) / 32) = ((((9 : ℝ) / 64) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 0 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 5) + (((15 : ℝ) / 64) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 1 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 4) + (((5 : ℝ) / 16) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 3 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 2) + (((33 : ℝ) / 32) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 4 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 1) + (((21 : ℝ) / 32) * ((v_c - ((1 : ℝ) / 4)) / ((1 : ℝ) / 4)) ^ 5 * ((((1 : ℝ) / 2) - v_c) / ((1 : ℝ) / 4)) ^ 0)) := by ring
  rw [← hIdentity] at hNonnegative
  linarith

theorem positivity_F_positive_right (v_c v_h : ℝ)
    (hLower : ((1 : ℝ) / 4) ≤ v_c)
    (hUpper : v_c ≤ ((1 : ℝ) / 2)) :
    0 < ((1 : ℝ) + ((-4 : ℝ) * v_c) + ((-4 : ℝ) * (v_c ^ 3)) + ((4 : ℝ) * (v_c ^ 2)) + ((4 : ℝ) * (v_c ^ 4)) + ((32 : ℝ) * (v_c ^ 5))) := by
  have h := positivity_F_positive_right_bound v_c v_h hLower hUpper
  linarith

end Step1.boundary_edges
