import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.coordinate_bridges

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/coordinate_bridges.json. See LEAN_NOTES.md. -/

def d_f_y (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (((4 : K) * (v_y ^ 2)) + ((6 : K) * v_y) + (1 : K))

def d_f_a (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (((4 : K) * (v_a ^ 2)) + ((6 : K) * v_a) + (1 : K))

def d_cos_n (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (((1 : K) / 2) * (v_w + v_wi))

def d_chebyshev_three (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (((4 : K) * ((d_cos_n v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) ^ 3)) + ((-3 : K) * (d_cos_n v_y v_a v_z v_zi v_w v_wi v_c v_b v_s)))

def d_cos_three_n (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (((1 : K) / 2) * ((v_w ^ 3) + (v_wi ^ 3)))

def d_Z (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (v_z ^ 3)

def d_Zi (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (v_zi ^ 3)

def d_W (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (v_w ^ 3)

def d_Wi (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) : K :=
  (v_wi ^ 3)

theorem identity_quadratic_secant (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    ((d_f_y v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) + (-(d_f_a v_y v_a v_z v_zi v_w v_wi v_c v_b v_s))) =
    ((v_y + (-v_a)) * (((4 : K) * (v_y + v_a)) + (6 : K))) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem identity_physical_lower_secant_slope (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    (((4 : K) * (v_y + ((-49 : K) / 256))) + (6 : K)) =
    (((4 : K) * (v_y + (1 : K))) + ((79 : K) / 64)) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem identity_physical_upper_secant_slope (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    (((4 : K) * (v_y + ((-3 : K) / 16))) + (6 : K)) =
    (((4 : K) * (v_y + (1 : K))) + ((5 : K) / 4)) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem identity_curvature_strict_lower_bound (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    (((660 : K) * (((46 : K) * v_y) + (9 : K))) + ((-4125 : K) / 32)) =
    ((30360 : K) * (v_y + ((49 : K) / 256))) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem identity_cosine_triple_angle_mod_unit (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    ((d_cos_three_n v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) + (-(d_chebyshev_three v_y v_a v_z v_zi v_w v_wi v_c v_b v_s))) =
    (((3 : K) / 2) * (v_w + v_wi) * ((1 : K) + (-(v_w * v_wi)))) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem identity_cosine_double_angle_mod_unit (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    (((2 : K) * ((d_cos_n v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) ^ 2)) + (-1 : K) + (-(((1 : K) / 2) * ((v_w ^ 2) + (v_wi ^ 2))))) =
    ((v_w * v_wi) + (-1 : K)) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem identity_equal_cosines_force_cusp_product (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    ((((d_Z v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) + (-(d_W v_y v_a v_z v_zi v_w v_wi v_c v_b v_s))) * (((d_Z v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) * (d_W v_y v_a v_z v_zi v_w v_wi v_c v_b v_s)) + (-1 : K))) + (-((d_Z v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) * (d_W v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) * ((d_Z v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) + (d_Zi v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) + (-(d_W v_y v_a v_z v_zi v_w v_wi v_c v_b v_s)) + (-(d_Wi v_y v_a v_z v_zi v_w v_wi v_c v_b v_s)))))) =
    (((d_W v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) * ((1 : K) + (-((d_Z v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) * (d_Zi v_y v_a v_z v_zi v_w v_wi v_c v_b v_s))))) + ((d_Z v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) * (((d_W v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) * (d_Wi v_y v_a v_z v_zi v_w v_wi v_c v_b v_s)) + (-1 : K)))) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem identity_cube_unit_product (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    (((d_Z v_y v_a v_z v_zi v_w v_wi v_c v_b v_s) * (d_Zi v_y v_a v_z v_zi v_w v_wi v_c v_b v_s)) + (-1 : K)) =
    (((v_z * v_zi) + (-1 : K)) * (((v_z * v_zi) ^ 2) + (v_z * v_zi) + (1 : K))) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem identity_quarter_real_part_two_unit_points (v_y v_a v_z v_zi v_w v_wi v_c v_b v_s : K) :
    ((((4 : K) * v_b) + (-v_s)) * (((4 : K) * v_b) + v_s)) =
    (((16 : K) * ((v_c ^ 2) + (v_b ^ 2) + (-1 : K))) + ((-16 : K) * (v_c + ((-1 : K) / 4)) * (v_c + ((1 : K) / 4))) + (-((v_s ^ 2) + (-15 : K)))) := by
  (try simp only [d_Wi, d_W, d_Zi, d_Z, d_cos_three_n, d_chebyshev_three, d_cos_n, d_f_a, d_f_y]) <;> ring

theorem evaluation_lower_endpoint :
    (((4 : K) * (((-49 : K) / 256) ^ 2)) + ((6 : K) * ((-49 : K) / 256)) + (1 : K)) =
    ((-31 : K) / 16384) := by
  norm_num

theorem evaluation_upper_endpoint :
    (((4 : K) * (((-3 : K) / 16) ^ 2)) + ((6 : K) * ((-3 : K) / 16)) + (1 : K)) =
    ((1 : K) / 64) := by
  norm_num

end Step1.coordinate_bridges
