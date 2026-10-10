import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.interior_geometry

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/interior_geometry.json. See LEAN_NOTES.md. -/

def d_circle_norm (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_p ^ 2) + (v_q ^ 2))

def d_circle_constraint (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((-1 : K) + (d_circle_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))

def d_initial_u (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_ax ^ 2) + (v_ay ^ 2))

def d_initial_v (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_bx ^ 2) + (v_by ^ 2))

def d_initial_moment (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (((2 : K) * v_ax * ((v_bx ^ 2) + ((-1 : K) * (v_by ^ 2)))) + ((-4 : K) * v_ay * v_bx * v_by))

def d_action_ax (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_ax * ((v_p ^ 2) + ((-1 : K) * (v_q ^ 2)))) + ((2 : K) * v_ay * v_p * v_q))

def d_action_ay (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_ay * ((v_p ^ 2) + ((-1 : K) * (v_q ^ 2)))) + ((-2 : K) * v_ax * v_p * v_q))

def d_action_bx (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_bx * v_p) + ((-1 : K) * v_by * v_q))

def d_action_by (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_bx * v_q) + (v_by * v_p))

def d_action_u (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (((d_action_ax v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2) + ((d_action_ay v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2))

def d_action_v (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (((d_action_bx v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2) + ((d_action_by v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2))

def d_action_moment (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (((2 : K) * (d_action_ax v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (((d_action_bx v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2) + ((-1 : K) * ((d_action_by v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2)))) + ((-4 : K) * (d_action_ay v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_action_bx v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_action_by v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)))

def d_elementary_one (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (v_z1 + v_z2 + v_z3)

def d_elementary_two (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_z1 * v_z2) + (v_z1 * v_z3) + (v_z2 * v_z3))

def d_elementary_three (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (v_z1 * v_z2 * v_z3)

def d_vandermonde (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_z1 + ((-1 : K) * v_z2)) * (v_z1 + ((-1 : K) * v_z3)) * (v_z2 + ((-1 : K) * v_z3)))

def d_cubic_discriminant (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (((-27 : K) * ((d_elementary_three v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2)) + ((-4 : K) * ((d_elementary_two v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 3)) + (((d_elementary_one v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2) * ((d_elementary_two v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2)) + ((-4 : K) * (d_elementary_three v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * ((d_elementary_one v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 3)) + ((18 : K) * (d_elementary_one v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_elementary_three v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_elementary_two v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)))

def d_trace_Delta (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((-27 : K) + (((v_tx ^ 2) + (v_ty ^ 2)) ^ 2) + ((-8 : K) * (v_tx ^ 3)) + ((18 : K) * (v_tx ^ 2)) + ((18 : K) * (v_ty ^ 2)) + ((24 : K) * v_tx * (v_ty ^ 2)))

def d_trace_unit_norm (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_a ^ 2) + (v_b ^ 2))

def d_trace_circle (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((-1 : K) + (d_trace_unit_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))

def d_trace_z3_real (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_a ^ 3) + ((-3 : K) * v_a * (v_b ^ 2)))

def d_trace_z3_imag (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (((-1 : K) * (v_b ^ 3)) + ((3 : K) * v_b * (v_a ^ 2)))

def d_paired_trace_x (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k))

def d_paired_trace_y (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((v_b * v_k) + ((-2 : K) * v_a * v_b))

def d_Delta_at_paired_trace (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((-27 : K) + (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 4) + (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 4) + ((-8 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 3)) + ((18 : K) * (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((18 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 2)) + ((2 : K) * (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 2)) + ((24 : K) * (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k))))

def d_paired_trace_cofactor (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((27 : K) + (v_k ^ 4) + ((d_trace_unit_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 3) + ((-4 : K) * (v_k ^ 2)) + ((d_trace_unit_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * ((27 : K) + (v_k ^ 4) + ((-22 : K) * (v_k ^ 2)) + ((4 : K) * v_k * (d_trace_z3_real v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)))) + (((d_trace_unit_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2) * ((9 : K) + ((2 : K) * (v_k ^ 2)))) + ((-20 : K) * v_k * (d_trace_z3_real v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)) + ((4 : K) * (d_trace_z3_real v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (v_k ^ 3)))

def d_paired_reciprocal_factor (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  (((v_rr + ((-1 : K) * v_ss)) ^ 2) * ((((-1 : K) * v_rr) + ((-1 : K) * v_ss) + ((2 : K) * (d_trace_z3_real v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) ^ 2))

def d_Delta_at_reciprocal_trace (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((-27 : K) + (v_a ^ 8) + (v_b ^ 8) + ((-8 : K) * (v_a ^ 6)) + ((8 : K) * (v_b ^ 6)) + ((18 : K) * (v_a ^ 4)) + ((18 : K) * (v_b ^ 4)) + ((v_a ^ 4) * ((v_rr + v_ss) ^ 4)) + ((v_b ^ 4) * ((v_rr + v_ss) ^ 4)) + ((-120 : K) * (v_a ^ 2) * (v_b ^ 4)) + ((-24 : K) * (v_a ^ 4) * ((v_rr + v_ss) ^ 2)) + ((-24 : K) * (v_a ^ 5) * (v_rr + v_ss)) + ((-24 : K) * (v_b ^ 4) * ((v_rr + v_ss) ^ 2)) + ((-8 : K) * (v_a ^ 3) * ((v_rr + v_ss) ^ 3)) + ((2 : K) * (v_b ^ 6) * ((v_rr + v_ss) ^ 2)) + ((4 : K) * (v_a ^ 2) * (v_b ^ 6)) + ((4 : K) * (v_a ^ 5) * ((v_rr + v_ss) ^ 3)) + ((4 : K) * (v_a ^ 6) * (v_b ^ 2)) + ((4 : K) * (v_a ^ 7) * (v_rr + v_ss)) + ((6 : K) * (v_a ^ 4) * (v_b ^ 4)) + ((6 : K) * (v_a ^ 6) * ((v_rr + v_ss) ^ 2)) + ((18 : K) * (v_a ^ 2) * ((v_rr + v_ss) ^ 2)) + ((18 : K) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((36 : K) * (v_a ^ 2) * (v_b ^ 2)) + ((36 : K) * (v_a ^ 3) * (v_rr + v_ss)) + ((120 : K) * (v_a ^ 4) * (v_b ^ 2)) + ((-108 : K) * v_a * (v_b ^ 2) * (v_rr + v_ss)) + ((-48 : K) * (v_a ^ 2) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((-20 : K) * (v_a ^ 3) * (v_b ^ 4) * (v_rr + v_ss)) + ((-18 : K) * (v_a ^ 4) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((-12 : K) * v_a * (v_b ^ 4) * ((v_rr + v_ss) ^ 3)) + ((-12 : K) * v_a * (v_b ^ 6) * (v_rr + v_ss)) + ((-8 : K) * (v_a ^ 3) * (v_b ^ 2) * ((v_rr + v_ss) ^ 3)) + ((-4 : K) * (v_a ^ 5) * (v_b ^ 2) * (v_rr + v_ss)) + ((2 : K) * (v_a ^ 2) * (v_b ^ 2) * ((v_rr + v_ss) ^ 4)) + ((24 : K) * v_a * (v_b ^ 2) * ((v_rr + v_ss) ^ 3)) + ((42 : K) * (v_a ^ 2) * (v_b ^ 4) * ((v_rr + v_ss) ^ 2)) + ((48 : K) * (v_a ^ 3) * (v_b ^ 2) * (v_rr + v_ss)) + ((72 : K) * v_a * (v_b ^ 4) * (v_rr + v_ss)))

def d_reciprocal_trace_cofactor (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) : K :=
  ((27 : K) + (v_a ^ 6) + (v_b ^ 6) + ((v_rr + v_ss) ^ 4) + ((-4 : K) * ((v_rr + v_ss) ^ 2)) + ((9 : K) * (v_a ^ 4)) + ((9 : K) * (v_b ^ 4)) + ((27 : K) * (v_a ^ 2)) + ((27 : K) * (v_b ^ 2)) + ((v_a ^ 2) * ((v_rr + v_ss) ^ 4)) + ((v_b ^ 2) * ((v_rr + v_ss) ^ 4)) + ((-22 : K) * (v_a ^ 2) * ((v_rr + v_ss) ^ 2)) + ((-22 : K) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((-20 : K) * (v_a ^ 3) * (v_rr + v_ss)) + ((2 : K) * (v_a ^ 4) * ((v_rr + v_ss) ^ 2)) + ((2 : K) * (v_b ^ 4) * ((v_rr + v_ss) ^ 2)) + ((3 : K) * (v_a ^ 2) * (v_b ^ 4)) + ((3 : K) * (v_a ^ 4) * (v_b ^ 2)) + ((4 : K) * (v_a ^ 3) * ((v_rr + v_ss) ^ 3)) + ((4 : K) * (v_a ^ 5) * (v_rr + v_ss)) + ((18 : K) * (v_a ^ 2) * (v_b ^ 2)) + ((-12 : K) * v_a * (v_b ^ 2) * ((v_rr + v_ss) ^ 3)) + ((-12 : K) * v_a * (v_b ^ 4) * (v_rr + v_ss)) + ((-8 : K) * (v_a ^ 3) * (v_b ^ 2) * (v_rr + v_ss)) + ((4 : K) * (v_a ^ 2) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((60 : K) * v_a * (v_b ^ 2) * (v_rr + v_ss)))

theorem identity_circle_action_u (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((d_action_u v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) + ((-1 : K) * (d_initial_u v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) =
    ((d_circle_constraint v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_initial_u v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * ((1 : K) + (d_circle_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_circle_action_v (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((d_action_v v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) + ((-1 : K) * (d_initial_v v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) =
    ((d_circle_constraint v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_initial_v v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_circle_action_cubic_moment (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((d_action_moment v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) + ((-1 : K) * (d_initial_moment v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) =
    ((d_circle_constraint v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_initial_moment v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * ((1 : K) + (d_circle_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_cubic_vieta_identity (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((v_lam + ((-1 : K) * v_z1)) * (v_lam + ((-1 : K) * v_z2)) * (v_lam + ((-1 : K) * v_z3))) =
    ((v_lam ^ 3) + ((-1 : K) * (d_elementary_three v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)) + ((d_elementary_two v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * v_lam) + ((-1 : K) * (d_elementary_one v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (v_lam ^ 2))) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_cubic_discriminant_vandermonde (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((d_vandermonde v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2) =
    (d_cubic_discriminant v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_real_deltoid_discriminant (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    (d_trace_Delta v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) =
    ((-27 : K) + (((v_tx ^ 2) + (v_ty ^ 2)) ^ 2) + ((-8 : K) * (v_tx ^ 3)) + ((18 : K) * (v_tx ^ 2)) + ((18 : K) * (v_ty ^ 2)) + ((24 : K) * v_tx * (v_ty ^ 2))) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_paired_trace_discriminant (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    (d_Delta_at_paired_trace v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) =
    (((d_paired_trace_cofactor v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_trace_circle v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)) + (((((-1 : K) * v_k) + ((2 : K) * (d_trace_z3_real v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) ^ 2) * ((-4 : K) + (v_k ^ 2)))) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_reciprocal_pair_norm_factor (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((-4 : K) + ((v_rr + v_ss) ^ 2)) =
    ((-4 : K) + ((v_rr + ((-1 : K) * v_ss)) ^ 2) + ((4 : K) * v_rr * v_ss)) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_strict_reciprocal_amgm (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    (v_rr * ((-2 : K) + v_rr + v_ss)) =
    ((-1 : K) + (((-1 : K) + v_rr) ^ 2) + (v_rr * v_ss)) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_unit_cubic_real_bound (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((2 : K) + ((-2 : K) * (d_trace_z3_real v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) =
    (((d_trace_z3_imag v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2) + (((-1 : K) + (d_trace_z3_real v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)) ^ 2) + ((-1 : K) * (d_trace_circle v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * ((1 : K) + (d_trace_unit_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) + ((d_trace_unit_norm v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) ^ 2)))) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_nonunimodular_discriminant_sign (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    (d_Delta_at_reciprocal_trace v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) =
    ((d_paired_reciprocal_factor v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) + ((d_reciprocal_trace_cofactor v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty) * (d_trace_circle v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty)) + (((((-1 : K) * v_rr) + ((-1 : K) * v_ss) + ((2 : K) * (d_trace_z3_real v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty))) ^ 2) * ((-4 : K) + ((4 : K) * v_rr * v_ss)))) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem identity_cleared_reciprocal_pair_factor (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    (((-1 : K) + (v_rr * v_z1)) * (v_z1 + ((-1 : K) * v_rr))) =
    ((v_rr * ((1 : K) + (v_z1 ^ 2))) + ((-1 : K) * v_z1 * ((1 : K) + (v_rr ^ 2)))) := by
  (try simp only [d_reciprocal_trace_cofactor, d_Delta_at_reciprocal_trace, d_paired_reciprocal_factor, d_paired_trace_cofactor, d_Delta_at_paired_trace, d_paired_trace_y, d_paired_trace_x, d_trace_z3_imag, d_trace_z3_real, d_trace_circle, d_trace_unit_norm, d_trace_Delta, d_cubic_discriminant, d_vandermonde, d_elementary_three, d_elementary_two, d_elementary_one, d_action_moment, d_action_v, d_action_u, d_action_by, d_action_bx, d_action_ay, d_action_ax, d_initial_moment, d_initial_v, d_initial_u, d_circle_constraint, d_circle_norm]) <;> ring

theorem substitution_positive_B_slice_moment (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    (((2 : K) * v_ax * ((v_bx ^ 2) + ((-1 : K) * ((0 : K) ^ 2)))) + ((-4 : K) * v_ay * v_bx * (0 : K))) =
    ((2 : K) * v_ax * (v_bx ^ 2)) := by
  ring

theorem substitution_substitute_paired_trace (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((-27 : K) + (((((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 2) + (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2)) ^ 2) + ((-8 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 3)) + ((18 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 2)) + ((18 : K) * (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((24 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) * (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2))) =
    ((-27 : K) + (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 4) + (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 4) + ((-8 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 3)) + ((18 : K) * (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((18 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 2)) + ((2 : K) * (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)) ^ 2)) + ((24 : K) * (((v_b * v_k) + ((-2 : K) * v_a * v_b)) ^ 2) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * v_k)))) := by
  ring

theorem substitution_reciprocal_trace_specialization (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((-27 : K) + (((v_b * (v_rr + v_ss)) + ((-2 : K) * v_a * v_b)) ^ 4) + (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * (v_rr + v_ss))) ^ 4) + ((-8 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * (v_rr + v_ss))) ^ 3)) + ((18 : K) * (((v_b * (v_rr + v_ss)) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((18 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * (v_rr + v_ss))) ^ 2)) + ((2 : K) * (((v_b * (v_rr + v_ss)) + ((-2 : K) * v_a * v_b)) ^ 2) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * (v_rr + v_ss))) ^ 2)) + ((24 : K) * (((v_b * (v_rr + v_ss)) + ((-2 : K) * v_a * v_b)) ^ 2) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + (v_a * (v_rr + v_ss))))) =
    ((-27 : K) + (v_a ^ 8) + (v_b ^ 8) + ((-8 : K) * (v_a ^ 6)) + ((8 : K) * (v_b ^ 6)) + ((18 : K) * (v_a ^ 4)) + ((18 : K) * (v_b ^ 4)) + ((v_a ^ 4) * ((v_rr + v_ss) ^ 4)) + ((v_b ^ 4) * ((v_rr + v_ss) ^ 4)) + ((-120 : K) * (v_a ^ 2) * (v_b ^ 4)) + ((-24 : K) * (v_a ^ 4) * ((v_rr + v_ss) ^ 2)) + ((-24 : K) * (v_a ^ 5) * (v_rr + v_ss)) + ((-24 : K) * (v_b ^ 4) * ((v_rr + v_ss) ^ 2)) + ((-8 : K) * (v_a ^ 3) * ((v_rr + v_ss) ^ 3)) + ((2 : K) * (v_b ^ 6) * ((v_rr + v_ss) ^ 2)) + ((4 : K) * (v_a ^ 2) * (v_b ^ 6)) + ((4 : K) * (v_a ^ 5) * ((v_rr + v_ss) ^ 3)) + ((4 : K) * (v_a ^ 6) * (v_b ^ 2)) + ((4 : K) * (v_a ^ 7) * (v_rr + v_ss)) + ((6 : K) * (v_a ^ 4) * (v_b ^ 4)) + ((6 : K) * (v_a ^ 6) * ((v_rr + v_ss) ^ 2)) + ((18 : K) * (v_a ^ 2) * ((v_rr + v_ss) ^ 2)) + ((18 : K) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((36 : K) * (v_a ^ 2) * (v_b ^ 2)) + ((36 : K) * (v_a ^ 3) * (v_rr + v_ss)) + ((120 : K) * (v_a ^ 4) * (v_b ^ 2)) + ((-108 : K) * v_a * (v_b ^ 2) * (v_rr + v_ss)) + ((-48 : K) * (v_a ^ 2) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((-20 : K) * (v_a ^ 3) * (v_b ^ 4) * (v_rr + v_ss)) + ((-18 : K) * (v_a ^ 4) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((-12 : K) * v_a * (v_b ^ 4) * ((v_rr + v_ss) ^ 3)) + ((-12 : K) * v_a * (v_b ^ 6) * (v_rr + v_ss)) + ((-8 : K) * (v_a ^ 3) * (v_b ^ 2) * ((v_rr + v_ss) ^ 3)) + ((-4 : K) * (v_a ^ 5) * (v_b ^ 2) * (v_rr + v_ss)) + ((2 : K) * (v_a ^ 2) * (v_b ^ 2) * ((v_rr + v_ss) ^ 4)) + ((24 : K) * v_a * (v_b ^ 2) * ((v_rr + v_ss) ^ 3)) + ((42 : K) * (v_a ^ 2) * (v_b ^ 4) * ((v_rr + v_ss) ^ 2)) + ((48 : K) * (v_a ^ 3) * (v_b ^ 2) * (v_rr + v_ss)) + ((72 : K) * v_a * (v_b ^ 4) * (v_rr + v_ss))) := by
  ring

theorem substitution_reciprocal_cofactor_specialization (v_ax v_ay v_bx v_by v_p v_q v_a v_b v_k v_rr v_ss v_lam v_z1 v_z2 v_z3 v_tx v_ty : K) :
    ((27 : K) + ((v_rr + v_ss) ^ 4) + (((v_a ^ 2) + (v_b ^ 2)) ^ 3) + ((-4 : K) * ((v_rr + v_ss) ^ 2)) + (((v_a ^ 2) + (v_b ^ 2)) * ((27 : K) + ((v_rr + v_ss) ^ 4) + ((-22 : K) * ((v_rr + v_ss) ^ 2)) + ((4 : K) * (v_rr + v_ss) * ((v_a ^ 3) + ((-3 : K) * v_a * (v_b ^ 2)))))) + ((((v_a ^ 2) + (v_b ^ 2)) ^ 2) * ((9 : K) + ((2 : K) * ((v_rr + v_ss) ^ 2)))) + ((-20 : K) * (v_rr + v_ss) * ((v_a ^ 3) + ((-3 : K) * v_a * (v_b ^ 2)))) + ((4 : K) * ((v_a ^ 3) + ((-3 : K) * v_a * (v_b ^ 2))) * ((v_rr + v_ss) ^ 3))) =
    ((27 : K) + (v_a ^ 6) + (v_b ^ 6) + ((v_rr + v_ss) ^ 4) + ((-4 : K) * ((v_rr + v_ss) ^ 2)) + ((9 : K) * (v_a ^ 4)) + ((9 : K) * (v_b ^ 4)) + ((27 : K) * (v_a ^ 2)) + ((27 : K) * (v_b ^ 2)) + ((v_a ^ 2) * ((v_rr + v_ss) ^ 4)) + ((v_b ^ 2) * ((v_rr + v_ss) ^ 4)) + ((-22 : K) * (v_a ^ 2) * ((v_rr + v_ss) ^ 2)) + ((-22 : K) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((-20 : K) * (v_a ^ 3) * (v_rr + v_ss)) + ((2 : K) * (v_a ^ 4) * ((v_rr + v_ss) ^ 2)) + ((2 : K) * (v_b ^ 4) * ((v_rr + v_ss) ^ 2)) + ((3 : K) * (v_a ^ 2) * (v_b ^ 4)) + ((3 : K) * (v_a ^ 4) * (v_b ^ 2)) + ((4 : K) * (v_a ^ 3) * ((v_rr + v_ss) ^ 3)) + ((4 : K) * (v_a ^ 5) * (v_rr + v_ss)) + ((18 : K) * (v_a ^ 2) * (v_b ^ 2)) + ((-12 : K) * v_a * (v_b ^ 2) * ((v_rr + v_ss) ^ 3)) + ((-12 : K) * v_a * (v_b ^ 4) * (v_rr + v_ss)) + ((-8 : K) * (v_a ^ 3) * (v_b ^ 2) * (v_rr + v_ss)) + ((4 : K) * (v_a ^ 2) * (v_b ^ 2) * ((v_rr + v_ss) ^ 2)) + ((60 : K) * v_a * (v_b ^ 2) * (v_rr + v_ss))) := by
  ring

end Step1.interior_geometry
