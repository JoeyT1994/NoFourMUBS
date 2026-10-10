import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.interior_core

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/interior_core.json. See LEAN_NOTES.md. -/

def d_u (v_x v_y v_v v_h v_d : K) : K :=
  ((v_x ^ 2) + (v_y ^ 2))

def d_g (v_x v_y v_v v_h v_d : K) : K :=
  (((-3 : K) * (d_u v_x v_y v_v v_h v_d)) + ((2 : K) * v_v))

def d_eta (v_x v_y v_v v_h v_d : K) : K :=
  (v_v + ((-2 : K) * (d_u v_x v_y v_v v_h v_d)))

def d_C (v_x v_y v_v v_h v_d : K) : K :=
  ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * (d_u v_x v_y v_v v_h v_d))) * ((12 : K) + v_v + ((-1 : K) * (d_u v_x v_y v_v v_h v_d)))) + ((-2 : K) * v_v * v_x))

def d_H (v_x v_y v_v v_h v_d : K) : K :=
  (((-1 : K) * ((d_C v_x v_y v_v v_h v_d) ^ 2)) + ((4 : K) * (d_eta v_x v_y v_v v_h v_d) * ((d_g v_x v_y v_v v_h v_d) ^ 2)))

def d_K (v_x v_y v_v v_h v_d : K) : K :=
  ((18 : K) + ((-3 : K) * (d_u v_x v_y v_v v_h v_d)) + ((2 : K) * v_v))

def d_Cx (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * v_v) + ((2 : K) * (d_K v_x v_y v_v v_h v_d) * v_x))

def d_Cy (v_x v_y v_v v_h v_d : K) : K :=
  ((2 : K) * (d_K v_x v_y v_v v_h v_d) * v_y)

def d_Cv (v_x v_y v_v v_h v_d : K) : K :=
  ((-6 : K) + ((-1 : K) * v_v) + ((-2 : K) * v_x) + ((2 : K) * (d_u v_x v_y v_v v_h v_d)))

def d_Hx (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * (d_C v_x v_y v_v v_h v_d) * (d_Cx v_x v_y v_v v_h v_d)) + ((-16 : K) * (d_g v_x v_y v_v v_h v_d) * v_x * (((-9 : K) * (d_u v_x v_y v_v v_h v_d)) + ((5 : K) * v_v))))

def d_Hy (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * (d_C v_x v_y v_v v_h v_d) * (d_Cy v_x v_y v_v v_h v_d)) + ((-16 : K) * (d_g v_x v_y v_v v_h v_d) * v_y * (((-9 : K) * (d_u v_x v_y v_v v_h v_d)) + ((5 : K) * v_v))))

def d_Hv (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * (d_C v_x v_y v_v v_h v_d) * (d_Cv v_x v_y v_v v_h v_d)) + ((4 : K) * (d_g v_x v_y v_v v_h v_d) * (((-11 : K) * (d_u v_x v_y v_v v_h v_d)) + ((6 : K) * v_v))))

def d_Hyy (v_x v_y v_v v_h v_d : K) : K :=
  (((-3888 : K) * (v_y ^ 2)) + ((-1296 : K) * (v_x ^ 2)) + ((-540 : K) * (v_y ^ 4)) + ((-126 : K) * (v_y ^ 6)) + ((-108 : K) * (v_x ^ 4)) + ((-76 : K) * (v_v ^ 2)) + ((-18 : K) * (v_x ^ 6)) + ((4 : K) * (v_v ^ 3)) + ((432 : K) * v_v) + ((-648 : K) * (v_x ^ 2) * (v_y ^ 2)) + ((-270 : K) * (v_x ^ 2) * (v_y ^ 4)) + ((-162 : K) * (v_x ^ 4) * (v_y ^ 2)) + ((-66 : K) * (v_v ^ 2) * (v_y ^ 2)) + ((-24 : K) * v_v * (v_x ^ 3)) + ((-22 : K) * (v_v ^ 2) * (v_x ^ 2)) + ((16 : K) * v_x * (v_v ^ 2)) + ((36 : K) * v_v * (v_x ^ 4)) + ((144 : K) * v_v * v_x) + ((168 : K) * v_v * (v_x ^ 2)) + ((180 : K) * v_v * (v_y ^ 4)) + ((504 : K) * v_v * (v_y ^ 2)) + ((-72 : K) * v_v * v_x * (v_y ^ 2)) + ((216 : K) * v_v * (v_x ^ 2) * (v_y ^ 2)))

def d_shiftC (v_x v_y v_v v_h v_d : K) : K :=
  (((-6 : K) * v_d) + ((6 : K) * (v_x ^ 2)) + ((6 : K) * (v_y ^ 2)) + (((-3 : K) / 2) * (v_x ^ 4)) + (((-3 : K) / 2) * (v_y ^ 4)) + (((-1 : K) / 2) * ((v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2))) ^ 2)) + ((-3 : K) * (v_x ^ 2) * (v_y ^ 2)) + ((-2 : K) * v_x * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2)))) + ((2 : K) * (v_x ^ 2) * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2)))) + ((2 : K) * (v_y ^ 2) * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2)))))

def d_shiftHv (v_x v_y v_v v_h v_d : K) : K :=
  ((((d_u v_x v_y v_v v_h v_d) + ((6 : K) * v_d)) * (((4 : K) * (d_u v_x v_y v_v v_h v_d)) + ((8 : K) * v_d))) + ((2 : K) * (d_shiftC v_x v_y v_v v_h v_d) * ((6 : K) + v_d + ((2 : K) * v_x))))

def d_g0 (v_x v_y v_v v_h v_d : K) : K :=
  (((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v))

def d_c (v_x v_y v_v v_h v_d : K) : K :=
  ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + v_v + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * v_v * v_x))

def d_f (v_x v_y v_v v_h v_d : K) : K :=
  (((-1 : K) * ((d_c v_x v_y v_v v_h v_d) ^ 2)) + ((4 : K) * ((d_g0 v_x v_y v_v v_h v_d) ^ 2) * (v_v + ((-2 : K) * (v_x ^ 2)))))

def d_cx (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * v_v) + ((2 : K) * v_x * ((18 : K) + ((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v))))

def d_cv (v_x v_y v_v v_h v_d : K) : K :=
  ((-6 : K) + ((-1 : K) * v_v) + ((-2 : K) * v_x) + ((2 : K) * (v_x ^ 2)))

def d_fx (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * (d_c v_x v_y v_v v_h v_d) * (d_cx v_x v_y v_v v_h v_d)) + ((-16 : K) * (d_g0 v_x v_y v_v v_h v_d) * v_x * (((-9 : K) * (v_x ^ 2)) + ((5 : K) * v_v))))

def d_fv (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * (d_c v_x v_y v_v v_h v_d) * (d_cv v_x v_y v_v v_h v_d)) + ((4 : K) * (d_g0 v_x v_y v_v v_h v_d) * (((-11 : K) * (v_x ^ 2)) + ((6 : K) * v_v))))

def d_fyy (v_x v_y v_v v_h v_d : K) : K :=
  (((-16 : K) * (d_g0 v_x v_y v_v v_h v_d) * (((-9 : K) * (v_x ^ 2)) + ((5 : K) * v_v))) + ((-4 : K) * (d_c v_x v_y v_v v_h v_d) * ((18 : K) + ((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v))))

def d_negative_g (v_x v_y v_v v_h v_d : K) : K :=
  ((v_h ^ 2) + ((2 : K) * v_d))

def d_negative_c (v_x v_y v_v v_h v_d : K) : K :=
  ((((1 : K) / 2) * ((v_h ^ 2) + ((-1 : K) * v_d)) * ((12 : K) + v_d + (v_h ^ 2))) + ((2 : K) * v_h * (v_d + ((2 : K) * (v_h ^ 2)))))

def d_negative_cx (v_x v_y v_v v_h v_d : K) : K :=
  (((-36 : K) * v_h) + ((-4 : K) * (v_h ^ 2)) + ((-2 : K) * (v_h ^ 3)) + ((-2 : K) * v_d * ((1 : K) + ((2 : K) * v_h))))

def d_negative_cv (v_x v_y v_v v_h v_d : K) : K :=
  ((-6 : K) + ((-1 : K) * v_d) + ((2 : K) * v_h))

def d_negative_fx (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * (d_negative_c v_x v_y v_v v_h v_d) * (d_negative_cx v_x v_y v_v v_h v_d)) + ((16 : K) * v_h * (d_negative_g v_x v_y v_v v_h v_d) * ((v_h ^ 2) + ((5 : K) * v_d))))

def d_negative_fv (v_x v_y v_v v_h v_d : K) : K :=
  (((-2 : K) * (d_negative_c v_x v_y v_v v_h v_d) * (d_negative_cv v_x v_y v_v v_h v_d)) + ((4 : K) * (d_negative_g v_x v_y v_v v_h v_d) * ((v_h ^ 2) + ((6 : K) * v_d))))

def d_nonnegative_sum (v_x v_y v_v v_h v_d : K) : K :=
  ((v_h ^ 5) + ((6 : K) * (v_h ^ 3)) + ((6 : K) * (v_h ^ 4)) + (v_d * (((6 : K) * (v_h ^ 3)) + ((33 : K) * (v_h ^ 2)) + ((48 : K) * v_h))) + ((v_d ^ 2) * ((6 : K) + ((2 : K) * v_h))))

def d_nonnegative_remainder (v_x v_y v_v v_h v_d : K) : K :=
  ((v_h ^ 5) + ((6 : K) * (v_h ^ 3)) + ((6 : K) * (v_h ^ 4)) + (v_d * (((6 : K) * (v_h ^ 3)) + ((33 : K) * (v_h ^ 2)) + ((48 : K) * v_h))) + ((2 : K) * v_h * (v_d ^ 2)))

def d_derivative_combination_half (v_x v_y v_v v_h v_d : K) : K :=
  ((v_x ^ 5) + ((-6 : K) * (v_x ^ 4)) + ((6 : K) * (v_x ^ 3)) + (v_d * (((-33 : K) * (v_x ^ 2)) + ((6 : K) * (v_x ^ 3)) + ((48 : K) * v_x))) + ((v_d ^ 2) * ((-6 : K) + ((2 : K) * v_x))))

def d_derivative_combination (v_x v_y v_v v_h v_d : K) : K :=
  (((d_cx v_x v_y v_v v_h v_d) * (d_fv v_x v_y v_v v_h v_d)) + ((-1 : K) * (d_cv v_x v_y v_v v_h v_d) * (d_fx v_x v_y v_v v_h v_d)))

def d_positive_c (v_x v_y v_v v_h v_d : K) : K :=
  ((((1 : K) / 2) * ((v_x ^ 2) + ((-1 : K) * v_d)) * ((12 : K) + v_d + (v_x ^ 2))) + ((-2 : K) * v_x * (v_d + ((2 : K) * (v_x ^ 2)))))

theorem identity_positive_value_forces_g_positive (v_x v_y v_v v_h v_d : K) :
    (d_g v_x v_y v_v v_h v_d) =
    ((d_u v_x v_y v_v v_h v_d) + ((2 : K) * (d_eta v_x v_y v_v v_h v_d))) := by
  simp only [d_positive_c, d_derivative_combination, d_derivative_combination_half, d_nonnegative_remainder, d_nonnegative_sum, d_negative_fv, d_negative_fx, d_negative_cv, d_negative_cx, d_negative_c, d_negative_g, d_fyy, d_fv, d_fx, d_cv, d_cx, d_f, d_c, d_g0, d_shiftHv, d_shiftC, d_Hyy, d_Hv, d_Hy, d_Hx, d_Cv, d_Cy, d_Cx, d_K, d_H, d_C, d_eta, d_g, d_u] <;> ring

theorem identity_positive_amplitude_factor (v_x v_y v_v v_h v_d : K) :
    (((-11 : K) * (d_u v_x v_y v_v v_h v_d)) + ((6 : K) * v_v)) =
    ((d_u v_x v_y v_v v_h v_d) + ((6 : K) * (d_eta v_x v_y v_v v_h v_d))) := by
  simp only [d_positive_c, d_derivative_combination, d_derivative_combination_half, d_nonnegative_remainder, d_nonnegative_sum, d_negative_fv, d_negative_fx, d_negative_cv, d_negative_cx, d_negative_c, d_negative_g, d_fyy, d_fv, d_fx, d_cv, d_cx, d_f, d_c, d_g0, d_shiftHv, d_shiftC, d_Hyy, d_Hv, d_Hy, d_Hx, d_Cv, d_Cy, d_Cx, d_K, d_H, d_C, d_eta, d_g, d_u] <;> ring

theorem identity_cartesian_phase_stationarity (v_x v_y v_v v_h v_d : K) :
    (((d_Hx v_x v_y v_v v_h v_d) * v_y) + ((-1 : K) * (d_Hy v_x v_y v_v v_h v_d) * v_x)) =
    ((4 : K) * (d_C v_x v_y v_v v_h v_d) * v_v * v_y) := by
  simp only [d_positive_c, d_derivative_combination, d_derivative_combination_half, d_nonnegative_remainder, d_nonnegative_sum, d_negative_fv, d_negative_fx, d_negative_cv, d_negative_cx, d_negative_c, d_negative_g, d_fyy, d_fv, d_fx, d_cv, d_cx, d_f, d_c, d_g0, d_shiftHv, d_shiftC, d_Hyy, d_Hv, d_Hy, d_Hx, d_Cv, d_Cy, d_Cx, d_K, d_H, d_C, d_eta, d_g, d_u] <;> ring

theorem identity_cartesian_transverse_curvature (v_x v_y v_v v_h v_d : K) :
    ((d_fyy v_x v_y v_v v_h v_d) * v_x) =
    ((d_fx v_x v_y v_v v_h v_d) + ((-4 : K) * (d_c v_x v_y v_v v_h v_d) * v_v)) := by
  simp only [d_positive_c, d_derivative_combination, d_derivative_combination_half, d_nonnegative_remainder, d_nonnegative_sum, d_negative_fv, d_negative_fx, d_negative_cv, d_negative_cx, d_negative_c, d_negative_g, d_fyy, d_fv, d_fx, d_cv, d_cx, d_f, d_c, d_g0, d_shiftHv, d_shiftC, d_Hyy, d_Hv, d_Hy, d_Hx, d_Cv, d_Cy, d_Cx, d_K, d_H, d_C, d_eta, d_g, d_u] <;> ring

theorem identity_phase_second_derivative (v_x v_y v_v v_h v_d : K) :
    (((d_fyy v_x v_y v_v v_h v_d) * (v_x ^ 2)) + ((-1 : K) * (d_fx v_x v_y v_v v_h v_d) * v_x)) =
    ((-4 : K) * (d_c v_x v_y v_v v_h v_d) * v_v * v_x) := by
  simp only [d_positive_c, d_derivative_combination, d_derivative_combination_half, d_nonnegative_remainder, d_nonnegative_sum, d_negative_fv, d_negative_fx, d_negative_cv, d_negative_cx, d_negative_c, d_negative_g, d_fyy, d_fv, d_fx, d_cv, d_cx, d_f, d_c, d_g0, d_shiftHv, d_shiftC, d_Hyy, d_Hv, d_Hy, d_Hx, d_Cv, d_Cy, d_Cx, d_K, d_H, d_C, d_eta, d_g, d_u] <;> ring

theorem identity_strict_positive_term_in_sum (v_x v_y v_v v_h v_d : K) :
    (d_nonnegative_sum v_x v_y v_v v_h v_d) =
    ((d_nonnegative_remainder v_x v_y v_v v_h v_d) + ((6 : K) * (v_d ^ 2))) := by
  simp only [d_positive_c, d_derivative_combination, d_derivative_combination_half, d_nonnegative_remainder, d_nonnegative_sum, d_negative_fv, d_negative_fx, d_negative_cv, d_negative_cx, d_negative_c, d_negative_g, d_fyy, d_fv, d_fx, d_cv, d_cx, d_f, d_c, d_g0, d_shiftHv, d_shiftC, d_Hyy, d_Hv, d_Hy, d_Hx, d_Cv, d_Cy, d_Cx, d_K, d_H, d_C, d_eta, d_g, d_u] <;> ring

theorem identity_negative_x_derivative_obstruction (v_x v_y v_v v_h v_d : K) :
    (((d_negative_cx v_x v_y v_v v_h v_d) * (d_negative_fv v_x v_y v_v v_h v_d)) + ((-1 : K) * (d_negative_cv v_x v_y v_v v_h v_d) * (d_negative_fx v_x v_y v_v v_h v_d))) =
    ((-8 : K) * (d_negative_g v_x v_y v_v v_h v_d) * (d_nonnegative_sum v_x v_y v_v v_h v_d)) := by
  simp only [d_positive_c, d_derivative_combination, d_derivative_combination_half, d_nonnegative_remainder, d_nonnegative_sum, d_negative_fv, d_negative_fx, d_negative_cv, d_negative_cx, d_negative_c, d_negative_g, d_fyy, d_fv, d_fx, d_cv, d_cx, d_f, d_c, d_g0, d_shiftHv, d_shiftC, d_Hyy, d_Hv, d_Hy, d_Hx, d_Cv, d_Cy, d_Cx, d_K, d_H, d_C, d_eta, d_g, d_u] <;> ring

theorem substitution_shift_C_by_eta (v_x v_y v_v v_h v_d : K) :
    ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2))))) + ((3 : K) * ((v_x ^ 2) + (v_y ^ 2)))) * ((12 : K) + (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2)))) + ((-1 : K) * ((v_x ^ 2) + (v_y ^ 2))))) + ((-2 : K) * (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2)))) * v_x)) =
    (((-6 : K) * v_d) + ((6 : K) * (v_x ^ 2)) + ((6 : K) * (v_y ^ 2)) + (((-3 : K) / 2) * (v_x ^ 4)) + (((-3 : K) / 2) * (v_y ^ 4)) + (((-1 : K) / 2) * ((v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2))) ^ 2)) + ((-3 : K) * (v_x ^ 2) * (v_y ^ 2)) + ((-2 : K) * v_x * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2)))) + ((2 : K) * (v_x ^ 2) * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2)))) + ((2 : K) * (v_y ^ 2) * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2))))) := by
  ring

theorem substitution_C_zero_excludes_stationarity (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2))))) + ((3 : K) * ((v_x ^ 2) + (v_y ^ 2)))) * ((12 : K) + (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2)))) + ((-1 : K) * ((v_x ^ 2) + (v_y ^ 2))))) + ((-2 : K) * (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2)))) * v_x)) * ((-6 : K) + ((-1 : K) * (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2))))) + ((-2 : K) * v_x) + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2))))) + ((4 : K) * (((-3 : K) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : K) * (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2)))))) * (((-11 : K) * ((v_x ^ 2) + (v_y ^ 2))) + ((6 : K) * (v_d + ((2 : K) * ((v_x ^ 2) + (v_y ^ 2)))))))) =
    (((((v_x ^ 2) + (v_y ^ 2)) + ((6 : K) * v_d)) * (((4 : K) * ((v_x ^ 2) + (v_y ^ 2))) + ((8 : K) * v_d))) + ((2 : K) * (((-6 : K) * v_d) + ((6 : K) * (v_x ^ 2)) + ((6 : K) * (v_y ^ 2)) + (((-3 : K) / 2) * (v_x ^ 4)) + (((-3 : K) / 2) * (v_y ^ 4)) + (((-1 : K) / 2) * ((v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2))) ^ 2)) + ((-3 : K) * (v_x ^ 2) * (v_y ^ 2)) + ((-2 : K) * v_x * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2)))) + ((2 : K) * (v_x ^ 2) * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2)))) + ((2 : K) * (v_y ^ 2) * (v_d + ((2 : K) * (v_x ^ 2)) + ((2 : K) * (v_y ^ 2))))) * ((6 : K) + v_d + ((2 : K) * v_x)))) := by
  ring

theorem substitution_specialize_y_zero_C (v_x v_y v_v v_h v_d : K) :
    ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2)))) * ((12 : K) + v_v + ((-1 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))))) + ((-2 : K) * v_v * v_x)) =
    ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + v_v + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * v_v * v_x)) := by
  ring

theorem substitution_specialize_y_zero_H (v_x v_y v_v v_h v_d : K) :
    (((-1 : K) * (((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2)))) * ((12 : K) + v_v + ((-1 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))))) + ((-2 : K) * v_v * v_x)) ^ 2)) + ((4 : K) * (v_v + ((-2 : K) * ((v_x ^ 2) + ((0 : K) ^ 2)))) * ((((-3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))) + ((2 : K) * v_v)) ^ 2))) =
    (((-1 : K) * (((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + v_v + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * v_v * v_x)) ^ 2)) + ((4 : K) * ((((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v)) ^ 2) * (v_v + ((-2 : K) * (v_x ^ 2))))) := by
  ring

theorem substitution_specialize_y_zero_Cx (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * v_v) + ((2 : K) * ((18 : K) + ((-3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))) + ((2 : K) * v_v)) * v_x)) =
    (((-2 : K) * v_v) + ((2 : K) * v_x * ((18 : K) + ((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v)))) := by
  ring

theorem substitution_specialize_y_zero_Cv (v_x v_y v_v v_h v_d : K) :
    ((-6 : K) + ((-1 : K) * v_v) + ((-2 : K) * v_x) + ((2 : K) * ((v_x ^ 2) + ((0 : K) ^ 2)))) =
    ((-6 : K) + ((-1 : K) * v_v) + ((-2 : K) * v_x) + ((2 : K) * (v_x ^ 2))) := by
  ring

theorem substitution_specialize_y_zero_Hx (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2)))) * ((12 : K) + v_v + ((-1 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))))) + ((-2 : K) * v_v * v_x)) * (((-2 : K) * v_v) + ((2 : K) * ((18 : K) + ((-3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))) + ((2 : K) * v_v)) * v_x))) + ((-16 : K) * (((-3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))) + ((2 : K) * v_v)) * v_x * (((-9 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))) + ((5 : K) * v_v)))) =
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + v_v + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * v_v * v_x)) * (((-2 : K) * v_v) + ((2 : K) * v_x * ((18 : K) + ((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v))))) + ((-16 : K) * (((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v)) * v_x * (((-9 : K) * (v_x ^ 2)) + ((5 : K) * v_v)))) := by
  ring

theorem substitution_specialize_y_zero_Hv (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2)))) * ((12 : K) + v_v + ((-1 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))))) + ((-2 : K) * v_v * v_x)) * ((-6 : K) + ((-1 : K) * v_v) + ((-2 : K) * v_x) + ((2 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))))) + ((4 : K) * (((-3 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))) + ((2 : K) * v_v)) * (((-11 : K) * ((v_x ^ 2) + ((0 : K) ^ 2))) + ((6 : K) * v_v)))) =
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + v_v + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * v_v * v_x)) * ((-6 : K) + ((-1 : K) * v_v) + ((-2 : K) * v_x) + ((2 : K) * (v_x ^ 2)))) + ((4 : K) * (((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v)) * (((-11 : K) * (v_x ^ 2)) + ((6 : K) * v_v)))) := by
  ring

theorem substitution_specialize_y_zero_Hyy (v_x v_y v_v v_h v_d : K) :
    (((-3888 : K) * ((0 : K) ^ 2)) + ((-1296 : K) * (v_x ^ 2)) + ((-540 : K) * ((0 : K) ^ 4)) + ((-126 : K) * ((0 : K) ^ 6)) + ((-108 : K) * (v_x ^ 4)) + ((-76 : K) * (v_v ^ 2)) + ((-18 : K) * (v_x ^ 6)) + ((4 : K) * (v_v ^ 3)) + ((432 : K) * v_v) + ((-648 : K) * (v_x ^ 2) * ((0 : K) ^ 2)) + ((-270 : K) * (v_x ^ 2) * ((0 : K) ^ 4)) + ((-162 : K) * (v_x ^ 4) * ((0 : K) ^ 2)) + ((-66 : K) * (v_v ^ 2) * ((0 : K) ^ 2)) + ((-24 : K) * v_v * (v_x ^ 3)) + ((-22 : K) * (v_v ^ 2) * (v_x ^ 2)) + ((16 : K) * v_x * (v_v ^ 2)) + ((36 : K) * v_v * (v_x ^ 4)) + ((144 : K) * v_v * v_x) + ((168 : K) * v_v * (v_x ^ 2)) + ((180 : K) * v_v * ((0 : K) ^ 4)) + ((504 : K) * v_v * ((0 : K) ^ 2)) + ((-72 : K) * v_v * v_x * ((0 : K) ^ 2)) + ((216 : K) * v_v * (v_x ^ 2) * ((0 : K) ^ 2))) =
    (((-16 : K) * (((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v)) * (((-9 : K) * (v_x ^ 2)) + ((5 : K) * v_v))) + ((-4 : K) * ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + v_v + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * v_v * v_x)) * ((18 : K) + ((-3 : K) * (v_x ^ 2)) + ((2 : K) * v_v)))) := by
  ring

theorem substitution_A_zero_is_nonstationary (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * v_v) + ((3 : K) * ((0 : K) ^ 2))) * ((12 : K) + v_v + ((-1 : K) * ((0 : K) ^ 2)))) + ((-2 : K) * v_v * (0 : K))) * (((-2 : K) * v_v) + ((2 : K) * (0 : K) * ((18 : K) + ((-3 : K) * ((0 : K) ^ 2)) + ((2 : K) * v_v))))) + ((-16 : K) * (((-3 : K) * ((0 : K) ^ 2)) + ((2 : K) * v_v)) * (0 : K) * (((-9 : K) * ((0 : K) ^ 2)) + ((5 : K) * v_v)))) =
    ((-2 : K) * (v_v ^ 2) * ((12 : K) + v_v)) := by
  ring

theorem substitution_negative_chart_g0 (v_x v_y v_v v_h v_d : K) :
    (((-3 : K) * (((-1 : K) * v_h) ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_h ^ 2))))) =
    ((v_h ^ 2) + ((2 : K) * v_d)) := by
  ring

theorem substitution_negative_chart_c (v_x v_y v_v v_h v_d : K) :
    ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * (v_h ^ 2)))) + ((3 : K) * (((-1 : K) * v_h) ^ 2))) * ((12 : K) + (v_d + ((2 : K) * (v_h ^ 2))) + ((-1 : K) * (((-1 : K) * v_h) ^ 2)))) + ((-2 : K) * (v_d + ((2 : K) * (v_h ^ 2))) * ((-1 : K) * v_h))) =
    ((((1 : K) / 2) * ((v_h ^ 2) + ((-1 : K) * v_d)) * ((12 : K) + v_d + (v_h ^ 2))) + ((2 : K) * v_h * (v_d + ((2 : K) * (v_h ^ 2))))) := by
  ring

theorem substitution_negative_chart_cx (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * (v_d + ((2 : K) * (v_h ^ 2)))) + ((2 : K) * ((-1 : K) * v_h) * ((18 : K) + ((-3 : K) * (((-1 : K) * v_h) ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_h ^ 2))))))) =
    (((-36 : K) * v_h) + ((-4 : K) * (v_h ^ 2)) + ((-2 : K) * (v_h ^ 3)) + ((-2 : K) * v_d * ((1 : K) + ((2 : K) * v_h)))) := by
  ring

theorem substitution_negative_chart_cv (v_x v_y v_v v_h v_d : K) :
    ((-6 : K) + ((-1 : K) * (v_d + ((2 : K) * (v_h ^ 2)))) + ((-2 : K) * ((-1 : K) * v_h)) + ((2 : K) * (((-1 : K) * v_h) ^ 2))) =
    ((-6 : K) + ((-1 : K) * v_d) + ((2 : K) * v_h)) := by
  ring

theorem substitution_negative_chart_fx (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * (v_h ^ 2)))) + ((3 : K) * (((-1 : K) * v_h) ^ 2))) * ((12 : K) + (v_d + ((2 : K) * (v_h ^ 2))) + ((-1 : K) * (((-1 : K) * v_h) ^ 2)))) + ((-2 : K) * (v_d + ((2 : K) * (v_h ^ 2))) * ((-1 : K) * v_h))) * (((-2 : K) * (v_d + ((2 : K) * (v_h ^ 2)))) + ((2 : K) * ((-1 : K) * v_h) * ((18 : K) + ((-3 : K) * (((-1 : K) * v_h) ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_h ^ 2)))))))) + ((-16 : K) * (((-3 : K) * (((-1 : K) * v_h) ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_h ^ 2))))) * ((-1 : K) * v_h) * (((-9 : K) * (((-1 : K) * v_h) ^ 2)) + ((5 : K) * (v_d + ((2 : K) * (v_h ^ 2))))))) =
    (((-2 : K) * ((((1 : K) / 2) * ((v_h ^ 2) + ((-1 : K) * v_d)) * ((12 : K) + v_d + (v_h ^ 2))) + ((2 : K) * v_h * (v_d + ((2 : K) * (v_h ^ 2))))) * (((-36 : K) * v_h) + ((-4 : K) * (v_h ^ 2)) + ((-2 : K) * (v_h ^ 3)) + ((-2 : K) * v_d * ((1 : K) + ((2 : K) * v_h))))) + ((16 : K) * v_h * ((v_h ^ 2) + ((2 : K) * v_d)) * ((v_h ^ 2) + ((5 : K) * v_d)))) := by
  ring

theorem substitution_negative_chart_fv (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * (v_h ^ 2)))) + ((3 : K) * (((-1 : K) * v_h) ^ 2))) * ((12 : K) + (v_d + ((2 : K) * (v_h ^ 2))) + ((-1 : K) * (((-1 : K) * v_h) ^ 2)))) + ((-2 : K) * (v_d + ((2 : K) * (v_h ^ 2))) * ((-1 : K) * v_h))) * ((-6 : K) + ((-1 : K) * (v_d + ((2 : K) * (v_h ^ 2)))) + ((-2 : K) * ((-1 : K) * v_h)) + ((2 : K) * (((-1 : K) * v_h) ^ 2)))) + ((4 : K) * (((-3 : K) * (((-1 : K) * v_h) ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_h ^ 2))))) * (((-11 : K) * (((-1 : K) * v_h) ^ 2)) + ((6 : K) * (v_d + ((2 : K) * (v_h ^ 2))))))) =
    (((-2 : K) * ((((1 : K) / 2) * ((v_h ^ 2) + ((-1 : K) * v_d)) * ((12 : K) + v_d + (v_h ^ 2))) + ((2 : K) * v_h * (v_d + ((2 : K) * (v_h ^ 2))))) * ((-6 : K) + ((-1 : K) * v_d) + ((2 : K) * v_h))) + ((4 : K) * ((v_h ^ 2) + ((2 : K) * v_d)) * ((v_h ^ 2) + ((6 : K) * v_d)))) := by
  ring

theorem substitution_general_derivative_combination (v_x v_y v_v v_h v_d : K) :
    (((((-2 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((2 : K) * v_x * ((18 : K) + ((-3 : K) * (v_x ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_x ^ 2))))))) * (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + (v_d + ((2 : K) * (v_x ^ 2))) + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * (v_d + ((2 : K) * (v_x ^ 2))) * v_x)) * ((-6 : K) + ((-1 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((-2 : K) * v_x) + ((2 : K) * (v_x ^ 2)))) + ((4 : K) * (((-3 : K) * (v_x ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_x ^ 2))))) * (((-11 : K) * (v_x ^ 2)) + ((6 : K) * (v_d + ((2 : K) * (v_x ^ 2)))))))) + ((-1 : K) * ((-6 : K) + ((-1 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((-2 : K) * v_x) + ((2 : K) * (v_x ^ 2))) * (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + (v_d + ((2 : K) * (v_x ^ 2))) + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * (v_d + ((2 : K) * (v_x ^ 2))) * v_x)) * (((-2 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((2 : K) * v_x * ((18 : K) + ((-3 : K) * (v_x ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_x ^ 2)))))))) + ((-16 : K) * (((-3 : K) * (v_x ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_x ^ 2))))) * v_x * (((-9 : K) * (v_x ^ 2)) + ((5 : K) * (v_d + ((2 : K) * (v_x ^ 2))))))))) =
    (((v_x ^ 5) + ((-6 : K) * (v_x ^ 4)) + ((6 : K) * (v_x ^ 3)) + (v_d * (((-33 : K) * (v_x ^ 2)) + ((6 : K) * (v_x ^ 3)) + ((48 : K) * v_x))) + ((v_d ^ 2) * ((-6 : K) + ((2 : K) * v_x)))) * (((8 : K) * (v_x ^ 2)) + ((16 : K) * v_d))) := by
  ring

theorem substitution_signed_combination_half (v_x v_y v_v v_h v_d : K) :
    ((((-1 : K) * v_h) ^ 5) + ((-6 : K) * (((-1 : K) * v_h) ^ 4)) + ((6 : K) * (((-1 : K) * v_h) ^ 3)) + (v_d * (((-33 : K) * (((-1 : K) * v_h) ^ 2)) + ((6 : K) * (((-1 : K) * v_h) ^ 3)) + ((48 : K) * ((-1 : K) * v_h)))) + ((v_d ^ 2) * ((-6 : K) + ((2 : K) * ((-1 : K) * v_h))))) =
    ((-1 : K) * ((v_h ^ 5) + ((6 : K) * (v_h ^ 3)) + ((6 : K) * (v_h ^ 4)) + (v_d * (((6 : K) * (v_h ^ 3)) + ((33 : K) * (v_h ^ 2)) + ((48 : K) * v_h))) + ((v_d ^ 2) * ((6 : K) + ((2 : K) * v_h))))) := by
  ring

theorem substitution_positive_chart_C (v_x v_y v_v v_h v_d : K) :
    ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + (v_d + ((2 : K) * (v_x ^ 2))) + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * (v_d + ((2 : K) * (v_x ^ 2))) * v_x)) =
    ((((1 : K) / 2) * ((v_x ^ 2) + ((-1 : K) * v_d)) * ((12 : K) + v_d + (v_x ^ 2))) + ((-2 : K) * v_x * (v_d + ((2 : K) * (v_x ^ 2))))) := by
  ring

theorem substitution_positive_chart_Cv (v_x v_y v_v v_h v_d : K) :
    ((-6 : K) + ((-1 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((-2 : K) * v_x) + ((2 : K) * (v_x ^ 2))) =
    ((-6 : K) + ((-1 : K) * v_d) + ((-2 : K) * v_x)) := by
  ring

theorem substitution_positive_chart_fv (v_x v_y v_v v_h v_d : K) :
    (((-2 : K) * ((((1 : K) / 2) * (((-1 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((3 : K) * (v_x ^ 2))) * ((12 : K) + (v_d + ((2 : K) * (v_x ^ 2))) + ((-1 : K) * (v_x ^ 2)))) + ((-2 : K) * (v_d + ((2 : K) * (v_x ^ 2))) * v_x)) * ((-6 : K) + ((-1 : K) * (v_d + ((2 : K) * (v_x ^ 2)))) + ((-2 : K) * v_x) + ((2 : K) * (v_x ^ 2)))) + ((4 : K) * (((-3 : K) * (v_x ^ 2)) + ((2 : K) * (v_d + ((2 : K) * (v_x ^ 2))))) * (((-11 : K) * (v_x ^ 2)) + ((6 : K) * (v_d + ((2 : K) * (v_x ^ 2))))))) =
    ((((v_x ^ 2) + ((6 : K) * v_d)) * (((4 : K) * (v_x ^ 2)) + ((8 : K) * v_d))) + ((2 : K) * ((((1 : K) / 2) * ((v_x ^ 2) + ((-1 : K) * v_d)) * ((12 : K) + v_d + (v_x ^ 2))) + ((-2 : K) * v_x * (v_d + ((2 : K) * (v_x ^ 2))))) * ((6 : K) + v_d + ((2 : K) * v_x)))) := by
  ring

theorem orthant_remainder_nonnegative_on_h_d_orthant (v_x v_y v_v v_h v_d : ℝ)
    (h_h : 0 ≤ v_h)
    (h_d : 0 ≤ v_d)
    : 0 ≤ ((v_h ^ 5) + ((6 : ℝ) * (v_h ^ 3)) + ((6 : ℝ) * (v_h ^ 4)) + (v_d * (((6 : ℝ) * (v_h ^ 3)) + ((33 : ℝ) * (v_h ^ 2)) + ((48 : ℝ) * v_h))) + ((2 : ℝ) * v_h * (v_d ^ 2))) := by
  ring_nf <;> positivity

theorem orthant_negative_g_nonnegative_on_h_d_orthant (v_x v_y v_v v_h v_d : ℝ)
    (h_h : 0 ≤ v_h)
    (h_d : 0 ≤ v_d)
    : 0 ≤ ((v_h ^ 2) + ((2 : ℝ) * v_d)) := by
  ring_nf <;> positivity

theorem orthant_positive_g_factor_on_x_d_orthant (v_x v_y v_v v_h v_d : ℝ)
    (h_x : 0 ≤ v_x)
    (h_d : 0 ≤ v_d)
    : 0 ≤ ((v_x ^ 2) + ((2 : ℝ) * v_d)) := by
  ring_nf <;> positivity

theorem orthant_positive_gradient_factor_on_x_d_orthant (v_x v_y v_v v_h v_d : ℝ)
    (h_x : 0 ≤ v_x)
    (h_d : 0 ≤ v_d)
    : 0 ≤ ((v_x ^ 2) + ((6 : ℝ) * v_d)) := by
  ring_nf <;> positivity

theorem orthant_positive_C_coefficient_on_x_d_orthant (v_x v_y v_v v_h v_d : ℝ)
    (h_x : 0 ≤ v_x)
    (h_d : 0 ≤ v_d)
    : 0 ≤ ((6 : ℝ) + v_d + ((2 : ℝ) * v_x)) := by
  ring_nf <;> positivity

theorem derivative_differentiate_C_x_1 (v_x v_y v_v v_h v_d : ℝ) :
    HasDerivAt (fun x : ℝ => ((((1 : ℝ) / 2) * (((-1 : ℝ) * v_v) + ((3 : ℝ) * ((x ^ 2) + (v_y ^ 2)))) * ((12 : ℝ) + v_v + ((-1 : ℝ) * ((x ^ 2) + (v_y ^ 2))))) + ((-2 : ℝ) * v_v * x)))
      (((-2 : ℝ) * v_v) + ((2 : ℝ) * ((18 : ℝ) + ((-3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * v_v)) * v_x)) v_x := by
  convert ((((hasDerivAt_const v_x ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_x (-1 : ℝ)).mul (hasDerivAt_const v_x v_v)).add ((hasDerivAt_const v_x (3 : ℝ)).mul (((hasDerivAt_id v_x).pow 2).add ((hasDerivAt_const v_x v_y).pow 2))))).mul (((hasDerivAt_const v_x (12 : ℝ)).add (hasDerivAt_const v_x v_v)).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (((hasDerivAt_id v_x).pow 2).add ((hasDerivAt_const v_x v_y).pow 2))))).add (((hasDerivAt_const v_x (-2 : ℝ)).mul (hasDerivAt_const v_x v_v)).mul (hasDerivAt_id v_x))) using 1 <;> (first | ring | (ext t; ring))

theorem derivative_differentiate_C_y_1 (v_x v_y v_v v_h v_d : ℝ) :
    HasDerivAt (fun x : ℝ => ((((1 : ℝ) / 2) * (((-1 : ℝ) * v_v) + ((3 : ℝ) * ((v_x ^ 2) + (x ^ 2)))) * ((12 : ℝ) + v_v + ((-1 : ℝ) * ((v_x ^ 2) + (x ^ 2))))) + ((-2 : ℝ) * v_v * v_x)))
      ((2 : ℝ) * ((18 : ℝ) + ((-3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * v_v)) * v_y) v_y := by
  convert ((((hasDerivAt_const v_y ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_v)).add ((hasDerivAt_const v_y (3 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))))).mul (((hasDerivAt_const v_y (12 : ℝ)).add (hasDerivAt_const v_y v_v)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))))).add (((hasDerivAt_const v_y (-2 : ℝ)).mul (hasDerivAt_const v_y v_v)).mul (hasDerivAt_const v_y v_x))) using 1 <;> (first | ring | (ext t; ring))

theorem derivative_differentiate_C_v_1 (v_x v_y v_v v_h v_d : ℝ) :
    HasDerivAt (fun x : ℝ => ((((1 : ℝ) / 2) * (((-1 : ℝ) * x) + ((3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2)))) * ((12 : ℝ) + x + ((-1 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))))) + ((-2 : ℝ) * x * v_x)))
      ((-6 : ℝ) + ((-1 : ℝ) * v_v) + ((-2 : ℝ) * v_x) + ((2 : ℝ) * ((v_x ^ 2) + (v_y ^ 2)))) v_v := by
  convert ((((hasDerivAt_const v_v ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_v (-1 : ℝ)).mul (hasDerivAt_id v_v)).add ((hasDerivAt_const v_v (3 : ℝ)).mul (((hasDerivAt_const v_v v_x).pow 2).add ((hasDerivAt_const v_v v_y).pow 2))))).mul (((hasDerivAt_const v_v (12 : ℝ)).add (hasDerivAt_id v_v)).add ((hasDerivAt_const v_v (-1 : ℝ)).mul (((hasDerivAt_const v_v v_x).pow 2).add ((hasDerivAt_const v_v v_y).pow 2))))).add (((hasDerivAt_const v_v (-2 : ℝ)).mul (hasDerivAt_id v_v)).mul (hasDerivAt_const v_v v_x))) using 1 <;> (first | ring | (ext t; ring))

theorem derivative_differentiate_H_x_1 (v_x v_y v_v v_h v_d : ℝ) :
    HasDerivAt (fun x : ℝ => (((-1 : ℝ) * (((((1 : ℝ) / 2) * (((-1 : ℝ) * v_v) + ((3 : ℝ) * ((x ^ 2) + (v_y ^ 2)))) * ((12 : ℝ) + v_v + ((-1 : ℝ) * ((x ^ 2) + (v_y ^ 2))))) + ((-2 : ℝ) * v_v * x)) ^ 2)) + ((4 : ℝ) * (v_v + ((-2 : ℝ) * ((x ^ 2) + (v_y ^ 2)))) * ((((-3 : ℝ) * ((x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * v_v)) ^ 2))))
      (((-2 : ℝ) * ((((1 : ℝ) / 2) * (((-1 : ℝ) * v_v) + ((3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2)))) * ((12 : ℝ) + v_v + ((-1 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))))) + ((-2 : ℝ) * v_v * v_x)) * (((-2 : ℝ) * v_v) + ((2 : ℝ) * ((18 : ℝ) + ((-3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * v_v)) * v_x))) + ((-16 : ℝ) * (((-3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * v_v)) * v_x * (((-9 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((5 : ℝ) * v_v)))) v_x := by
  convert (((hasDerivAt_const v_x (-1 : ℝ)).mul (((((hasDerivAt_const v_x ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_x (-1 : ℝ)).mul (hasDerivAt_const v_x v_v)).add ((hasDerivAt_const v_x (3 : ℝ)).mul (((hasDerivAt_id v_x).pow 2).add ((hasDerivAt_const v_x v_y).pow 2))))).mul (((hasDerivAt_const v_x (12 : ℝ)).add (hasDerivAt_const v_x v_v)).add ((hasDerivAt_const v_x (-1 : ℝ)).mul (((hasDerivAt_id v_x).pow 2).add ((hasDerivAt_const v_x v_y).pow 2))))).add (((hasDerivAt_const v_x (-2 : ℝ)).mul (hasDerivAt_const v_x v_v)).mul (hasDerivAt_id v_x))).pow 2)).add (((hasDerivAt_const v_x (4 : ℝ)).mul ((hasDerivAt_const v_x v_v).add ((hasDerivAt_const v_x (-2 : ℝ)).mul (((hasDerivAt_id v_x).pow 2).add ((hasDerivAt_const v_x v_y).pow 2))))).mul ((((hasDerivAt_const v_x (-3 : ℝ)).mul (((hasDerivAt_id v_x).pow 2).add ((hasDerivAt_const v_x v_y).pow 2))).add ((hasDerivAt_const v_x (2 : ℝ)).mul (hasDerivAt_const v_x v_v))).pow 2))) using 1 <;> (first | ring | (ext t; ring))

theorem derivative_differentiate_H_y_1 (v_x v_y v_v v_h v_d : ℝ) :
    HasDerivAt (fun x : ℝ => (((-1 : ℝ) * (((((1 : ℝ) / 2) * (((-1 : ℝ) * v_v) + ((3 : ℝ) * ((v_x ^ 2) + (x ^ 2)))) * ((12 : ℝ) + v_v + ((-1 : ℝ) * ((v_x ^ 2) + (x ^ 2))))) + ((-2 : ℝ) * v_v * v_x)) ^ 2)) + ((4 : ℝ) * (v_v + ((-2 : ℝ) * ((v_x ^ 2) + (x ^ 2)))) * ((((-3 : ℝ) * ((v_x ^ 2) + (x ^ 2))) + ((2 : ℝ) * v_v)) ^ 2))))
      (((-2 : ℝ) * ((((1 : ℝ) / 2) * (((-1 : ℝ) * v_v) + ((3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2)))) * ((12 : ℝ) + v_v + ((-1 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))))) + ((-2 : ℝ) * v_v * v_x)) * ((2 : ℝ) * ((18 : ℝ) + ((-3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * v_v)) * v_y)) + ((-16 : ℝ) * (((-3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * v_v)) * v_y * (((-9 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((5 : ℝ) * v_v)))) v_y := by
  convert (((hasDerivAt_const v_y (-1 : ℝ)).mul (((((hasDerivAt_const v_y ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_v)).add ((hasDerivAt_const v_y (3 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))))).mul (((hasDerivAt_const v_y (12 : ℝ)).add (hasDerivAt_const v_y v_v)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))))).add (((hasDerivAt_const v_y (-2 : ℝ)).mul (hasDerivAt_const v_y v_v)).mul (hasDerivAt_const v_y v_x))).pow 2)).add (((hasDerivAt_const v_y (4 : ℝ)).mul ((hasDerivAt_const v_y v_v).add ((hasDerivAt_const v_y (-2 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))))).mul ((((hasDerivAt_const v_y (-3 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))).add ((hasDerivAt_const v_y (2 : ℝ)).mul (hasDerivAt_const v_y v_v))).pow 2))) using 1 <;> (first | ring | (ext t; ring))

theorem derivative_differentiate_H_v_1 (v_x v_y v_v v_h v_d : ℝ) :
    HasDerivAt (fun x : ℝ => (((-1 : ℝ) * (((((1 : ℝ) / 2) * (((-1 : ℝ) * x) + ((3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2)))) * ((12 : ℝ) + x + ((-1 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))))) + ((-2 : ℝ) * x * v_x)) ^ 2)) + ((4 : ℝ) * (x + ((-2 : ℝ) * ((v_x ^ 2) + (v_y ^ 2)))) * ((((-3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * x)) ^ 2))))
      (((-2 : ℝ) * ((((1 : ℝ) / 2) * (((-1 : ℝ) * v_v) + ((3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2)))) * ((12 : ℝ) + v_v + ((-1 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))))) + ((-2 : ℝ) * v_v * v_x)) * ((-6 : ℝ) + ((-1 : ℝ) * v_v) + ((-2 : ℝ) * v_x) + ((2 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))))) + ((4 : ℝ) * (((-3 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((2 : ℝ) * v_v)) * (((-11 : ℝ) * ((v_x ^ 2) + (v_y ^ 2))) + ((6 : ℝ) * v_v)))) v_v := by
  convert (((hasDerivAt_const v_v (-1 : ℝ)).mul (((((hasDerivAt_const v_v ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_v (-1 : ℝ)).mul (hasDerivAt_id v_v)).add ((hasDerivAt_const v_v (3 : ℝ)).mul (((hasDerivAt_const v_v v_x).pow 2).add ((hasDerivAt_const v_v v_y).pow 2))))).mul (((hasDerivAt_const v_v (12 : ℝ)).add (hasDerivAt_id v_v)).add ((hasDerivAt_const v_v (-1 : ℝ)).mul (((hasDerivAt_const v_v v_x).pow 2).add ((hasDerivAt_const v_v v_y).pow 2))))).add (((hasDerivAt_const v_v (-2 : ℝ)).mul (hasDerivAt_id v_v)).mul (hasDerivAt_const v_v v_x))).pow 2)).add (((hasDerivAt_const v_v (4 : ℝ)).mul ((hasDerivAt_id v_v).add ((hasDerivAt_const v_v (-2 : ℝ)).mul (((hasDerivAt_const v_v v_x).pow 2).add ((hasDerivAt_const v_v v_y).pow 2))))).mul ((((hasDerivAt_const v_v (-3 : ℝ)).mul (((hasDerivAt_const v_v v_x).pow 2).add ((hasDerivAt_const v_v v_y).pow 2))).add ((hasDerivAt_const v_v (2 : ℝ)).mul (hasDerivAt_id v_v))).pow 2))) using 1 <;> (first | ring | (ext t; ring))

theorem derivative_differentiate_H_yy_1 (v_x v_y v_v v_h v_d : ℝ) :
    HasDerivAt (fun x : ℝ => (((-2 : ℝ) * ((((1 : ℝ) / 2) * (((-1 : ℝ) * v_v) + ((3 : ℝ) * ((v_x ^ 2) + (x ^ 2)))) * ((12 : ℝ) + v_v + ((-1 : ℝ) * ((v_x ^ 2) + (x ^ 2))))) + ((-2 : ℝ) * v_v * v_x)) * ((2 : ℝ) * ((18 : ℝ) + ((-3 : ℝ) * ((v_x ^ 2) + (x ^ 2))) + ((2 : ℝ) * v_v)) * x)) + ((-16 : ℝ) * (((-3 : ℝ) * ((v_x ^ 2) + (x ^ 2))) + ((2 : ℝ) * v_v)) * x * (((-9 : ℝ) * ((v_x ^ 2) + (x ^ 2))) + ((5 : ℝ) * v_v)))))
      (((-3888 : ℝ) * (v_y ^ 2)) + ((-1296 : ℝ) * (v_x ^ 2)) + ((-540 : ℝ) * (v_y ^ 4)) + ((-126 : ℝ) * (v_y ^ 6)) + ((-108 : ℝ) * (v_x ^ 4)) + ((-76 : ℝ) * (v_v ^ 2)) + ((-18 : ℝ) * (v_x ^ 6)) + ((4 : ℝ) * (v_v ^ 3)) + ((432 : ℝ) * v_v) + ((-648 : ℝ) * (v_x ^ 2) * (v_y ^ 2)) + ((-270 : ℝ) * (v_x ^ 2) * (v_y ^ 4)) + ((-162 : ℝ) * (v_x ^ 4) * (v_y ^ 2)) + ((-66 : ℝ) * (v_v ^ 2) * (v_y ^ 2)) + ((-24 : ℝ) * v_v * (v_x ^ 3)) + ((-22 : ℝ) * (v_v ^ 2) * (v_x ^ 2)) + ((16 : ℝ) * v_x * (v_v ^ 2)) + ((36 : ℝ) * v_v * (v_x ^ 4)) + ((144 : ℝ) * v_v * v_x) + ((168 : ℝ) * v_v * (v_x ^ 2)) + ((180 : ℝ) * v_v * (v_y ^ 4)) + ((504 : ℝ) * v_v * (v_y ^ 2)) + ((-72 : ℝ) * v_v * v_x * (v_y ^ 2)) + ((216 : ℝ) * v_v * (v_x ^ 2) * (v_y ^ 2))) v_y := by
  convert ((((hasDerivAt_const v_y (-2 : ℝ)).mul ((((hasDerivAt_const v_y ((1 : ℝ) / 2)).mul (((hasDerivAt_const v_y (-1 : ℝ)).mul (hasDerivAt_const v_y v_v)).add ((hasDerivAt_const v_y (3 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))))).mul (((hasDerivAt_const v_y (12 : ℝ)).add (hasDerivAt_const v_y v_v)).add ((hasDerivAt_const v_y (-1 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))))).add (((hasDerivAt_const v_y (-2 : ℝ)).mul (hasDerivAt_const v_y v_v)).mul (hasDerivAt_const v_y v_x)))).mul (((hasDerivAt_const v_y (2 : ℝ)).mul (((hasDerivAt_const v_y (18 : ℝ)).add ((hasDerivAt_const v_y (-3 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2)))).add ((hasDerivAt_const v_y (2 : ℝ)).mul (hasDerivAt_const v_y v_v)))).mul (hasDerivAt_id v_y))).add ((((hasDerivAt_const v_y (-16 : ℝ)).mul (((hasDerivAt_const v_y (-3 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))).add ((hasDerivAt_const v_y (2 : ℝ)).mul (hasDerivAt_const v_y v_v)))).mul (hasDerivAt_id v_y)).mul (((hasDerivAt_const v_y (-9 : ℝ)).mul (((hasDerivAt_const v_y v_x).pow 2).add ((hasDerivAt_id v_y).pow 2))).add ((hasDerivAt_const v_y (5 : ℝ)).mul (hasDerivAt_const v_y v_v))))) using 1 <;> (first | ring | (ext t; ring))

end Step1.interior_core
