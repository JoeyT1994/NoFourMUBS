import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.endpoint_identities

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/endpoint_identities.json. See LEAN_NOTES.md. -/

def d_p (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  (v_x0 + v_x2)

def d_q (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  (v_x1 + v_x3)

def d_r (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  (v_x0 + (-v_x2))

def d_s (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  (v_x1 + (-v_x3))

def d_negative_hessian (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  (((80 : K) * (v_x0 ^ 2)) + ((46 : K) * (v_x1 ^ 2)) + ((80 : K) * (v_x2 ^ 2)) + ((46 : K) * (v_x3 ^ 2)) + ((-80 : K) * v_x0 * v_x1) + ((-156 : K) * v_x0 * v_x2) + ((78 : K) * v_x0 * v_x3) + ((78 : K) * v_x1 * v_x2) + ((-12 : K) * v_x1 * v_x3) + ((-80 : K) * v_x2 * v_x3))

def d_hessian_sos (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  ((((d_p v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) + (((-1 : K) / 2) * (d_q v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen))) ^ 2) + (((79 : K) / 4) * ((d_q v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) ^ 2)) + ((79 : K) * (((d_r v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) + (((-1 : K) / 2) * (d_s v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen))) ^ 2)) + (((25 : K) / 4) * ((d_s v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) ^ 2)))

def d_y (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  (((1 : K) / 4) * (v_w + (-3 : K)))

def d_c_square (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  (((1 : K) / 8) * ((1 : K) + v_w))

def d_extra_value (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  (((25 : K) / 2) * ((25 : K) + ((-11 : K) * v_w)))

def d_curvature (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) : K :=
  ((660 : K) * (((46 : K) * (d_y v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen)) + (9 : K)))

theorem identity_negative_hessian_SOS (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    (d_negative_hessian v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) =
    (d_hessian_sos v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_symmetric_inverse_x0 (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    ((d_p v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) + (d_r v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen)) =
    ((2 : K) * v_x0) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_symmetric_inverse_x1 (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    ((d_q v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) + (d_s v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen)) =
    ((2 : K) * v_x1) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_symmetric_inverse_x2 (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    ((d_p v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) + (-(d_r v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen))) =
    ((2 : K) * v_x2) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_symmetric_inverse_x3 (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    ((d_q v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) + (-(d_s v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen))) =
    ((2 : K) * v_x3) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_y_minimal_relation (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    (((4 : K) * ((d_y v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) ^ 2)) + ((6 : K) * (d_y v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen)) + (1 : K)) =
    (((1 : K) / 4) * ((v_w ^ 2) + (-5 : K))) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_c_square_relation (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    (((16 : K) * ((d_c_square v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) ^ 2)) + ((-4 : K) * (d_c_square v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen)) + (-1 : K)) =
    (((1 : K) / 4) * ((v_w ^ 2) + (-5 : K))) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_cos_double_angle (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    (d_y v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) =
    (((2 : K) * (d_c_square v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen)) + (-1 : K)) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_extra_value_relation (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    (((d_extra_value v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) ^ 2) + ((-625 : K) * (d_extra_value v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen)) + (3125 : K)) =
    (((75625 : K) / 4) * ((v_w ^ 2) + (-5 : K))) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_curvature_radical (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    (d_curvature v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen) =
    ((330 : K) * (((23 : K) * v_w) + (-51 : K))) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

theorem identity_unit_q_norm (v_x0 v_x1 v_x2 v_x3 v_w v_sqrt_fifteen : K) :
    (((1 : K) / 16) + (((1 : K) / 16) * (v_sqrt_fifteen ^ 2)) + (-1 : K)) =
    (((1 : K) / 16) * ((v_sqrt_fifteen ^ 2) + (-15 : K))) := by
  simp only [d_curvature, d_extra_value, d_c_square, d_y, d_hessian_sos, d_negative_hessian, d_s, d_r, d_q, d_p] <;> ring

end Step1.endpoint_identities
