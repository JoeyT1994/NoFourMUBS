import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.boundary_trace

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/boundary_trace.json by generation/generate_lean.py. -/

def d_A (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((v_zi ^ 2) * ((-2 : K) + ((4 : K) * (v_c ^ 2)))) + ((4 : K) * v_c * v_z))

def d_Abar (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((v_z ^ 2) * ((-2 : K) + ((4 : K) * (v_c ^ 2)))) + ((4 : K) * v_c * v_zi))

def d_D (v_c v_h v_z v_zi v_s2 : K) : K :=
  (v_z + ((-1 : K) * v_c * (v_zi ^ 2)))

def d_Dbar (v_c v_h v_z v_zi v_s2 : K) : K :=
  (v_zi + ((-1 : K) * v_c * (v_z ^ 2)))

def d_trace_h_constraint (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((-1 : K) * (v_z ^ 3)) + ((-1 : K) * (v_zi ^ 3)) + ((2 : K) * v_h))

def d_sine_constraint (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((-1 : K) + v_s2 + (v_c ^ 2))

def d_unit_constraint (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((-1 : K) + (v_z * v_zi))

def d_u (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((4 : K) + ((16 : K) * (v_c ^ 4)) + ((16 : K) * v_c * v_h * ((-1 : K) + ((2 : K) * (v_c ^ 2)))))

def d_v (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((16 : K) + ((-16 : K) * (v_c ^ 2))) * ((1 : K) + (v_c ^ 2) + ((-2 : K) * v_c * v_h)))

def d_w (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((-64 : K) + ((64 : K) * (v_c ^ 2))) * ((-1 : K) + ((-2 : K) * (v_c ^ 2)) + (v_h * (((-2 : K) * (v_c ^ 3)) + ((4 : K) * v_c))) + (((-1 : K) + ((2 : K) * (v_h ^ 2))) * (((-1 : K) * (v_c ^ 2)) + ((2 : K) * (v_c ^ 4))))))

def d_u_h_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((-16 : K) * (v_c ^ 3)) + ((8 : K) * v_c))

def d_u_sine_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  (0 : K)

def d_u_unit_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((4 : K) + ((16 : K) * (v_c ^ 4)) + ((4 : K) * v_z * v_zi) + ((-16 : K) * v_z * v_zi * (v_c ^ 2)) + ((16 : K) * v_z * v_zi * (v_c ^ 4)))

def d_u_direct (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((((v_z ^ 2) * ((-2 : K) + ((4 : K) * (v_c ^ 2)))) + ((4 : K) * v_c * v_zi)) * (((v_zi ^ 2) * ((-2 : K) + ((4 : K) * (v_c ^ 2)))) + ((4 : K) * v_c * v_z)))

def d_v_h_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((-16 : K) * (v_c ^ 3)) + ((16 : K) * v_c))

def d_v_sine_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((-16 : K) * v_c * (v_z ^ 3)) + ((-16 : K) * v_c * (v_zi ^ 3)) + ((16 : K) * v_z * v_zi) + ((16 : K) * (v_c ^ 2) * (v_z ^ 2) * (v_zi ^ 2)))

def d_v_unit_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((16 : K) + ((-16 : K) * (v_c ^ 4)) + ((-16 : K) * v_z * v_zi * (v_c ^ 4)) + ((16 : K) * v_z * v_zi * (v_c ^ 2)))

def d_v_direct (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((16 : K) * v_s2 * (v_z + ((-1 : K) * v_c * (v_zi ^ 2))) * (v_zi + ((-1 : K) * v_c * (v_z ^ 2))))

def d_w_h_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((-192 : K) * (v_c ^ 3)) + ((64 : K) * (v_c ^ 5)) + ((128 : K) * v_c) + ((-128 : K) * v_h * (v_c ^ 6)) + ((-64 : K) * v_h * (v_c ^ 2)) + ((-64 : K) * (v_c ^ 6) * (v_z ^ 3)) + ((-64 : K) * (v_c ^ 6) * (v_zi ^ 3)) + ((-32 : K) * (v_c ^ 2) * (v_z ^ 3)) + ((-32 : K) * (v_c ^ 2) * (v_zi ^ 3)) + ((96 : K) * (v_c ^ 4) * (v_z ^ 3)) + ((96 : K) * (v_c ^ 4) * (v_zi ^ 3)) + ((192 : K) * v_h * (v_c ^ 4)))

def d_w_sine_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  (((-64 : K) * v_c * (v_z ^ 3)) + ((-64 : K) * v_c * (v_zi ^ 3)) + ((-64 : K) * (v_c ^ 4) * (v_z ^ 6)) + ((-64 : K) * (v_c ^ 4) * (v_zi ^ 6)) + ((32 : K) * (v_c ^ 2) * (v_z ^ 6)) + ((32 : K) * (v_c ^ 2) * (v_zi ^ 6)) + ((64 : K) * (v_z ^ 2) * (v_zi ^ 2)) + ((-64 : K) * v_c * v_z * (v_zi ^ 4)) + ((-64 : K) * v_c * v_zi * (v_z ^ 4)) + ((64 : K) * v_z * (v_c ^ 3) * (v_zi ^ 4)) + ((64 : K) * v_zi * (v_c ^ 3) * (v_z ^ 4)) + ((128 : K) * (v_c ^ 2) * (v_z ^ 2) * (v_zi ^ 2)))

def d_w_unit_cofactor (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((64 : K) + ((-128 : K) * (v_c ^ 6)) + ((64 : K) * (v_c ^ 4)) + ((-64 : K) * v_c * (v_z ^ 3)) + ((-64 : K) * v_c * (v_zi ^ 3)) + ((-64 : K) * (v_c ^ 5) * (v_z ^ 3)) + ((-64 : K) * (v_c ^ 5) * (v_zi ^ 3)) + ((64 : K) * v_z * v_zi) + ((128 : K) * (v_c ^ 3) * (v_z ^ 3)) + ((128 : K) * (v_c ^ 3) * (v_zi ^ 3)) + ((-128 : K) * v_z * v_zi * (v_c ^ 6)) + ((-128 : K) * (v_c ^ 6) * (v_z ^ 2) * (v_zi ^ 2)) + ((-64 : K) * (v_c ^ 2) * (v_z ^ 2) * (v_zi ^ 2)) + ((64 : K) * v_z * v_zi * (v_c ^ 4)) + ((192 : K) * (v_c ^ 4) * (v_z ^ 2) * (v_zi ^ 2)))

def d_w_direct (v_c v_h v_z v_zi v_s2 : K) : K :=
  ((-16 : K) * v_s2 * ((((v_z + ((-1 : K) * v_c * (v_zi ^ 2))) ^ 2) * (((v_zi ^ 2) * ((-2 : K) + ((4 : K) * (v_c ^ 2)))) + ((4 : K) * v_c * v_z))) + (((v_zi + ((-1 : K) * v_c * (v_z ^ 2))) ^ 2) * (((v_z ^ 2) * ((-2 : K) + ((4 : K) * (v_c ^ 2)))) + ((4 : K) * v_c * v_zi)))))

theorem identity_u_trace_membership (v_c v_h v_z v_zi v_s2 : K) :
    ((d_u_direct v_c v_h v_z v_zi v_s2) + ((-1 : K) * (d_u v_c v_h v_z v_zi v_s2))) =
    (((d_sine_constraint v_c v_h v_z v_zi v_s2) * (d_u_sine_cofactor v_c v_h v_z v_zi v_s2)) + ((d_trace_h_constraint v_c v_h v_z v_zi v_s2) * (d_u_h_cofactor v_c v_h v_z v_zi v_s2)) + ((d_u_unit_cofactor v_c v_h v_z v_zi v_s2) * (d_unit_constraint v_c v_h v_z v_zi v_s2))) := by
  (try simp only [d_w_direct, d_w_unit_cofactor, d_w_sine_cofactor, d_w_h_cofactor, d_v_direct, d_v_unit_cofactor, d_v_sine_cofactor, d_v_h_cofactor, d_u_direct, d_u_unit_cofactor, d_u_sine_cofactor, d_u_h_cofactor, d_w, d_v, d_u, d_unit_constraint, d_sine_constraint, d_trace_h_constraint, d_Dbar, d_D, d_Abar, d_A]) <;> ring

theorem identity_v_trace_membership (v_c v_h v_z v_zi v_s2 : K) :
    ((d_v_direct v_c v_h v_z v_zi v_s2) + ((-1 : K) * (d_v v_c v_h v_z v_zi v_s2))) =
    (((d_sine_constraint v_c v_h v_z v_zi v_s2) * (d_v_sine_cofactor v_c v_h v_z v_zi v_s2)) + ((d_trace_h_constraint v_c v_h v_z v_zi v_s2) * (d_v_h_cofactor v_c v_h v_z v_zi v_s2)) + ((d_unit_constraint v_c v_h v_z v_zi v_s2) * (d_v_unit_cofactor v_c v_h v_z v_zi v_s2))) := by
  (try simp only [d_w_direct, d_w_unit_cofactor, d_w_sine_cofactor, d_w_h_cofactor, d_v_direct, d_v_unit_cofactor, d_v_sine_cofactor, d_v_h_cofactor, d_u_direct, d_u_unit_cofactor, d_u_sine_cofactor, d_u_h_cofactor, d_w, d_v, d_u, d_unit_constraint, d_sine_constraint, d_trace_h_constraint, d_Dbar, d_D, d_Abar, d_A]) <;> ring

theorem identity_w_trace_membership (v_c v_h v_z v_zi v_s2 : K) :
    ((d_w_direct v_c v_h v_z v_zi v_s2) + ((-1 : K) * (d_w v_c v_h v_z v_zi v_s2))) =
    (((d_sine_constraint v_c v_h v_z v_zi v_s2) * (d_w_sine_cofactor v_c v_h v_z v_zi v_s2)) + ((d_trace_h_constraint v_c v_h v_z v_zi v_s2) * (d_w_h_cofactor v_c v_h v_z v_zi v_s2)) + ((d_unit_constraint v_c v_h v_z v_zi v_s2) * (d_w_unit_cofactor v_c v_h v_z v_zi v_s2))) := by
  (try simp only [d_w_direct, d_w_unit_cofactor, d_w_sine_cofactor, d_w_h_cofactor, d_v_direct, d_v_unit_cofactor, d_v_sine_cofactor, d_v_h_cofactor, d_u_direct, d_u_unit_cofactor, d_u_sine_cofactor, d_u_h_cofactor, d_w, d_v, d_u, d_unit_constraint, d_sine_constraint, d_trace_h_constraint, d_Dbar, d_D, d_Abar, d_A]) <;> ring

end Step1.boundary_trace
