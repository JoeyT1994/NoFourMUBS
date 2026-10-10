import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.interior_boundary

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/interior_boundary.json. See LEAN_NOTES.md. -/

def d_norm_z (v_a v_b v_r v_X v_Y : K) : K :=
  ((v_a ^ 2) + (v_b ^ 2))

def d_circle (v_a v_b v_r v_X v_Y : K) : K :=
  ((-1 : K) + (d_norm_z v_a v_b v_r v_X v_Y))

def d_z3_real (v_a v_b v_r v_X v_Y : K) : K :=
  ((v_a ^ 3) + ((-3 : K) * v_a * (v_b ^ 2)))

def d_z3_imag (v_a v_b v_r v_X v_Y : K) : K :=
  (((-1 : K) * (v_b ^ 3)) + ((3 : K) * v_b * (v_a ^ 2)))

def d_cusp_distance (v_a v_b v_r v_X v_Y : K) : K :=
  ((2 : K) + ((-2 : K) * (d_z3_real v_a v_b v_r v_X v_Y)))

def d_normal_x (v_a v_b v_r v_X v_Y : K) : K :=
  (v_a + (v_b ^ 2) + ((-1 : K) * (v_a ^ 2)))

def d_normal_y (v_a v_b v_r v_X v_Y : K) : K :=
  (v_b + ((2 : K) * v_a * v_b))

def d_tangent_x (v_a v_b v_r v_X v_Y : K) : K :=
  ((-2 : K) * (d_normal_y v_a v_b v_r v_X v_Y))

def d_tangent_y (v_a v_b v_r v_X v_Y : K) : K :=
  ((2 : K) * (d_normal_x v_a v_b v_r v_X v_Y))

def d_U_x (v_a v_b v_r v_X v_Y : K) : K :=
  ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a))

def d_U_y (v_a v_b v_r v_X v_Y : K) : K :=
  (((2 : K) * v_b) + ((-2 : K) * v_a * v_b))

def d_V_x (v_a v_b v_r v_X v_Y : K) : K :=
  ((v_a * v_r) + ((-1 : K) * ((1 : K) + v_r) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)))))

def d_V_y (v_a v_b v_r v_X v_Y : K) : K :=
  ((v_b * v_r) + (v_a * v_b * ((2 : K) + ((2 : K) * v_r))))

def d_orbit_U_x_first (v_a v_b v_r v_X v_Y : K) : K :=
  ((((1 : K) / 2) * (d_U_y v_a v_b v_r v_X v_Y)) + (((3 : K) / 2) * (d_V_y v_a v_b v_r v_X v_Y)))

def d_orbit_U_y_first (v_a v_b v_r v_X v_Y : K) : K :=
  ((((-3 : K) / 2) * (d_V_x v_a v_b v_r v_X v_Y)) + (((-1 : K) / 2) * (d_U_x v_a v_b v_r v_X v_Y)))

def d_orbit_U_x_second (v_a v_b v_r v_X v_Y : K) : K :=
  ((((-5 : K) / 2) * (d_U_x v_a v_b v_r v_X v_Y)) + (((-3 : K) / 2) * (d_V_x v_a v_b v_r v_X v_Y)))

def d_orbit_U_y_second (v_a v_b v_r v_X v_Y : K) : K :=
  ((((-5 : K) / 2) * (d_U_y v_a v_b v_r v_X v_Y)) + (((-3 : K) / 2) * (d_V_y v_a v_b v_r v_X v_Y)))

def d_Delta (v_a v_b v_r v_X v_Y : K) : K :=
  ((-27 : K) + (((v_X ^ 2) + (v_Y ^ 2)) ^ 2) + ((-8 : K) * (v_X ^ 3)) + ((18 : K) * (v_X ^ 2)) + ((18 : K) * (v_Y ^ 2)) + ((24 : K) * v_X * (v_Y ^ 2)))

def d_Delta_x (v_a v_b v_r v_X v_Y : K) : K :=
  (((-24 : K) * (v_X ^ 2)) + ((24 : K) * (v_Y ^ 2)) + ((36 : K) * v_X) + ((4 : K) * v_X * ((v_X ^ 2) + (v_Y ^ 2))))

def d_Delta_y (v_a v_b v_r v_X v_Y : K) : K :=
  (((36 : K) * v_Y) + ((4 : K) * v_Y * ((v_X ^ 2) + (v_Y ^ 2))) + ((48 : K) * v_X * v_Y))

def d_Delta_xx (v_a v_b v_r v_X v_Y : K) : K :=
  ((36 : K) + ((-48 : K) * v_X) + ((4 : K) * (v_Y ^ 2)) + ((12 : K) * (v_X ^ 2)))

def d_Delta_xy (v_a v_b v_r v_X v_Y : K) : K :=
  (((48 : K) * v_Y) + ((8 : K) * v_X * v_Y))

def d_Delta_yy (v_a v_b v_r v_X v_Y : K) : K :=
  ((36 : K) + ((4 : K) * (v_X ^ 2)) + ((12 : K) * (v_Y ^ 2)) + ((48 : K) * v_X))

def d_Delta_at_U (v_a v_b v_r v_X v_Y : K) : K :=
  ((-27 : K) + ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 4) + (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 4) + ((-8 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 3)) + ((18 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((18 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((2 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((24 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a))))

def d_Delta_x_at_U (v_a v_b v_r v_X v_Y : K) : K :=
  (((-36 : K) * (v_b ^ 2)) + ((-24 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((4 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 3)) + ((24 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((36 : K) * (v_a ^ 2)) + ((72 : K) * v_a) + ((4 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a))))

def d_Delta_y_at_U (v_a v_b v_r v_X v_Y : K) : K :=
  (((4 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 3)) + ((72 : K) * v_b) + ((-72 : K) * v_a * v_b) + ((4 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b))) + ((48 : K) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a))))

def d_Delta_xx_at_U (v_a v_b v_r v_X v_Y : K) : K :=
  ((36 : K) + ((-96 : K) * v_a) + ((-48 : K) * (v_a ^ 2)) + ((4 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((12 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((48 : K) * (v_b ^ 2)))

def d_Delta_xy_at_U (v_a v_b v_r v_X v_Y : K) : K :=
  (((96 : K) * v_b) + ((-96 : K) * v_a * v_b) + ((8 : K) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a))))

def d_Delta_yy_at_U (v_a v_b v_r v_X v_Y : K) : K :=
  ((36 : K) + ((-48 : K) * (v_b ^ 2)) + ((4 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((12 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((48 : K) * (v_a ^ 2)) + ((96 : K) * v_a))

def d_deltoid_gradient_x_cofactor (v_a v_b v_r v_X v_Y : K) : K :=
  (((-56 : K) * v_a) + ((-44 : K) * (v_b ^ 2)) + ((-4 : K) * (v_b ^ 4)) + ((4 : K) * (v_a ^ 4)) + ((8 : K) * (v_a ^ 3)) + ((44 : K) * (v_a ^ 2)) + ((8 : K) * v_a * (v_b ^ 2)))

def d_deltoid_gradient_y_cofactor (v_a v_b v_r v_X v_Y : K) : K :=
  (((-56 : K) * v_b) + ((8 : K) * (v_b ^ 3)) + ((-88 : K) * v_a * v_b) + ((-8 : K) * v_a * (v_b ^ 3)) + ((-8 : K) * v_b * (v_a ^ 3)) + ((8 : K) * v_b * (v_a ^ 2)))

def d_orbit_Delta_first (v_a v_b v_r v_X v_Y : K) : K :=
  (((d_Delta_x_at_U v_a v_b v_r v_X v_Y) * (d_orbit_U_x_first v_a v_b v_r v_X v_Y)) + ((d_Delta_y_at_U v_a v_b v_r v_X v_Y) * (d_orbit_U_y_first v_a v_b v_r v_X v_Y)))

def d_orbit_Delta_second (v_a v_b v_r v_X v_Y : K) : K :=
  (((d_Delta_x_at_U v_a v_b v_r v_X v_Y) * (d_orbit_U_x_second v_a v_b v_r v_X v_Y)) + ((d_Delta_xx_at_U v_a v_b v_r v_X v_Y) * ((d_orbit_U_x_first v_a v_b v_r v_X v_Y) ^ 2)) + ((d_Delta_y_at_U v_a v_b v_r v_X v_Y) * (d_orbit_U_y_second v_a v_b v_r v_X v_Y)) + ((d_Delta_yy_at_U v_a v_b v_r v_X v_Y) * ((d_orbit_U_y_first v_a v_b v_r v_X v_Y) ^ 2)) + ((2 : K) * (d_Delta_xy_at_U v_a v_b v_r v_X v_Y) * (d_orbit_U_x_first v_a v_b v_r v_X v_Y) * (d_orbit_U_y_first v_a v_b v_r v_X v_Y)))

def d_inward_curvature_cofactor (v_a v_b v_r v_X v_Y : K) : K :=
  ((-72 : K) + ((-108 : K) * (v_a ^ 3)) + ((-72 : K) * v_r) + ((-36 : K) * (v_a ^ 4)) + ((-36 : K) * (v_a ^ 5)) + ((-36 : K) * (v_b ^ 4)) + ((-18 : K) * (v_r ^ 2)) + ((252 : K) * (v_a ^ 2)) + ((252 : K) * (v_b ^ 2)) + ((-126 : K) * v_r * (v_a ^ 3)) + ((-99 : K) * (v_a ^ 2) * (v_r ^ 2)) + ((-99 : K) * (v_b ^ 2) * (v_r ^ 2)) + ((-72 : K) * v_r * (v_a ^ 2)) + ((-72 : K) * v_r * (v_b ^ 2)) + ((-72 : K) * (v_a ^ 2) * (v_b ^ 2)) + ((-18 : K) * (v_a ^ 3) * (v_r ^ 2)) + ((9 : K) * (v_a ^ 6) * (v_r ^ 2)) + ((9 : K) * (v_b ^ 6) * (v_r ^ 2)) + ((18 : K) * v_r * (v_a ^ 6)) + ((18 : K) * v_r * (v_b ^ 6)) + ((18 : K) * (v_a ^ 5) * (v_r ^ 2)) + ((54 : K) * v_r * (v_a ^ 5)) + ((72 : K) * (v_a ^ 3) * (v_b ^ 2)) + ((108 : K) * v_a * (v_b ^ 4)) + ((108 : K) * (v_a ^ 4) * (v_r ^ 2)) + ((108 : K) * (v_b ^ 4) * (v_r ^ 2)) + ((198 : K) * v_r * (v_a ^ 4)) + ((198 : K) * v_r * (v_b ^ 4)) + ((324 : K) * v_a * (v_b ^ 2)) + ((-162 : K) * v_a * v_r * (v_b ^ 4)) + ((-108 : K) * v_r * (v_a ^ 3) * (v_b ^ 2)) + ((-54 : K) * v_a * (v_b ^ 4) * (v_r ^ 2)) + ((-36 : K) * (v_a ^ 3) * (v_b ^ 2) * (v_r ^ 2)) + ((27 : K) * (v_a ^ 2) * (v_b ^ 4) * (v_r ^ 2)) + ((27 : K) * (v_a ^ 4) * (v_b ^ 2) * (v_r ^ 2)) + ((54 : K) * v_a * (v_b ^ 2) * (v_r ^ 2)) + ((54 : K) * v_r * (v_a ^ 2) * (v_b ^ 4)) + ((54 : K) * v_r * (v_a ^ 4) * (v_b ^ 2)) + ((216 : K) * (v_a ^ 2) * (v_b ^ 2) * (v_r ^ 2)) + ((378 : K) * v_a * v_r * (v_b ^ 2)) + ((396 : K) * v_r * (v_a ^ 2) * (v_b ^ 2)))

def d_opposite_U_x (v_a v_b v_r v_X v_Y : K) : K :=
  ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((-2 : K) * v_a))

def d_opposite_U_y (v_a v_b v_r v_X v_Y : K) : K :=
  (((-2 : K) * v_b) + ((-2 : K) * v_a * v_b))

def d_Delta_at_opposite (v_a v_b v_r v_X v_Y : K) : K :=
  (((d_circle v_a v_b v_r v_X v_Y) ^ 2) * ((-27 : K) + ((d_norm_z v_a v_b v_r v_X v_Y) ^ 2) + ((-8 : K) * (d_z3_real v_a v_b v_r v_X v_Y)) + ((18 : K) * (d_norm_z v_a v_b v_r v_X v_Y))))

theorem identity_unit_cubic_norm (v_a v_b v_r v_X v_Y : K) :
    (((d_z3_imag v_a v_b v_r v_X v_Y) ^ 2) + ((d_z3_real v_a v_b v_r v_X v_Y) ^ 2)) =
    ((d_norm_z v_a v_b v_r v_X v_Y) ^ 3) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_cusp_distance_sum_of_squares (v_a v_b v_r v_X v_Y : K) :
    (d_cusp_distance v_a v_b v_r v_X v_Y) =
    (((d_z3_imag v_a v_b v_r v_X v_Y) ^ 2) + (((-1 : K) + (d_z3_real v_a v_b v_r v_X v_Y)) ^ 2) + ((-1 : K) * (d_circle v_a v_b v_r v_X v_Y) * ((1 : K) + (d_norm_z v_a v_b v_r v_X v_Y) + ((d_norm_z v_a v_b v_r v_X v_Y) ^ 2)))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_normal_norm (v_a v_b v_r v_X v_Y : K) :
    (((d_normal_x v_a v_b v_r v_X v_Y) ^ 2) + ((d_normal_y v_a v_b v_r v_X v_Y) ^ 2)) =
    ((d_cusp_distance v_a v_b v_r v_X v_Y) + ((d_circle v_a v_b v_r v_X v_Y) * ((2 : K) + (d_norm_z v_a v_b v_r v_X v_Y)))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_boundary_tangent_norm (v_a v_b v_r v_X v_Y : K) :
    (((d_tangent_x v_a v_b v_r v_X v_Y) ^ 2) + ((d_tangent_y v_a v_b v_r v_X v_Y) ^ 2)) =
    (((4 : K) * (d_cusp_distance v_a v_b v_r v_X v_Y)) + ((4 : K) * (d_circle v_a v_b v_r v_X v_Y) * ((2 : K) + (d_norm_z v_a v_b v_r v_X v_Y)))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_boundary_tangent_normal_orthogonality (v_a v_b v_r v_X v_Y : K) :
    (((d_normal_x v_a v_b v_r v_X v_Y) * (d_tangent_x v_a v_b v_r v_X v_Y)) + ((d_normal_y v_a v_b v_r v_X v_Y) * (d_tangent_y v_a v_b v_r v_X v_Y))) =
    (0 : K) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_deltoid_boundary_identity (v_a v_b v_r v_X v_Y : K) :
    (d_Delta_at_U v_a v_b v_r v_X v_Y) =
    (((d_circle v_a v_b v_r v_X v_Y) ^ 2) * ((-27 : K) + ((d_norm_z v_a v_b v_r v_X v_Y) ^ 2) + ((8 : K) * (d_z3_real v_a v_b v_r v_X v_Y)) + ((18 : K) * (d_norm_z v_a v_b v_r v_X v_Y)))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_deltoid_gradient_x (v_a v_b v_r v_X v_Y : K) :
    (d_Delta_x_at_U v_a v_b v_r v_X v_Y) =
    (((d_circle v_a v_b v_r v_X v_Y) * (d_deltoid_gradient_x_cofactor v_a v_b v_r v_X v_Y)) + ((8 : K) * (d_cusp_distance v_a v_b v_r v_X v_Y) * (d_normal_x v_a v_b v_r v_X v_Y))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_deltoid_gradient_y (v_a v_b v_r v_X v_Y : K) :
    (d_Delta_y_at_U v_a v_b v_r v_X v_Y) =
    (((d_circle v_a v_b v_r v_X v_Y) * (d_deltoid_gradient_y_cofactor v_a v_b v_r v_X v_Y)) + ((8 : K) * (d_cusp_distance v_a v_b v_r v_X v_Y) * (d_normal_y v_a v_b v_r v_X v_Y))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_tangency_parameter_x (v_a v_b v_r v_X v_Y : K) :
    (d_orbit_U_x_first v_a v_b v_r v_X v_Y) =
    (((1 : K) / 4) * (d_tangent_x v_a v_b v_r v_X v_Y) * ((-2 : K) + ((-3 : K) * v_r))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_tangency_parameter_y (v_a v_b v_r v_X v_Y : K) :
    (d_orbit_U_y_first v_a v_b v_r v_X v_Y) =
    (((1 : K) / 4) * (d_tangent_y v_a v_b v_r v_X v_Y) * ((-2 : K) + ((-3 : K) * v_r))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_invariant_orbit_tangency (v_a v_b v_r v_X v_Y : K) :
    (d_orbit_Delta_first v_a v_b v_r v_X v_Y) =
    ((d_z3_imag v_a v_b v_r v_X v_Y) * ((d_circle v_a v_b v_r v_X v_Y) ^ 2) * ((12 : K) + ((18 : K) * v_r))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem identity_inward_curvature (v_a v_b v_r v_X v_Y : K) :
    (d_orbit_Delta_second v_a v_b v_r v_X v_Y) =
    (((d_circle v_a v_b v_r v_X v_Y) * (d_inward_curvature_cofactor v_a v_b v_r v_X v_Y)) + (((-9 : K) / 2) * ((d_cusp_distance v_a v_b v_r v_X v_Y) ^ 2) * (((2 : K) + v_r) ^ 2))) := by
  (try simp only [d_Delta_at_opposite, d_opposite_U_y, d_opposite_U_x, d_inward_curvature_cofactor, d_orbit_Delta_second, d_orbit_Delta_first, d_deltoid_gradient_y_cofactor, d_deltoid_gradient_x_cofactor, d_Delta_yy_at_U, d_Delta_xy_at_U, d_Delta_xx_at_U, d_Delta_y_at_U, d_Delta_x_at_U, d_Delta_at_U, d_Delta_yy, d_Delta_xy, d_Delta_xx, d_Delta_y, d_Delta_x, d_Delta, d_orbit_U_y_second, d_orbit_U_x_second, d_orbit_U_y_first, d_orbit_U_x_first, d_V_y, d_V_x, d_U_y, d_U_x, d_tangent_y, d_tangent_x, d_normal_y, d_normal_x, d_cusp_distance, d_z3_imag, d_z3_real, d_circle, d_norm_z]) <;> ring

theorem substitution_boundary_specialize_Delta (v_a v_b v_r v_X v_Y : K) :
    ((-27 : K) + (((((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2) + ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) ^ 2) + ((-8 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 3)) + ((18 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((18 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((24 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2))) =
    ((-27 : K) + ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 4) + (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 4) + ((-8 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 3)) + ((18 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((18 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((2 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((24 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)))) := by
  ring

theorem substitution_boundary_specialize_Delta_x (v_a v_b v_r v_X v_Y : K) :
    (((-24 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((24 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((36 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a))) + ((4 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) * ((((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2) + ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)))) =
    (((-36 : K) * (v_b ^ 2)) + ((-24 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((4 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 3)) + ((24 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((36 : K) * (v_a ^ 2)) + ((72 : K) * v_a) + ((4 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)))) := by
  ring

theorem substitution_boundary_specialize_Delta_y (v_a v_b v_r v_X v_Y : K) :
    (((36 : K) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b))) + ((4 : K) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) * ((((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2) + ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2))) + ((48 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b)))) =
    (((4 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 3)) + ((72 : K) * v_b) + ((-72 : K) * v_a * v_b) + ((4 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b))) + ((48 : K) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)))) := by
  ring

theorem substitution_boundary_specialize_Delta_xx (v_a v_b v_r v_X v_Y : K) :
    ((36 : K) + ((-48 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a))) + ((4 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((12 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2))) =
    ((36 : K) + ((-96 : K) * v_a) + ((-48 : K) * (v_a ^ 2)) + ((4 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((12 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((48 : K) * (v_b ^ 2))) := by
  ring

theorem substitution_boundary_specialize_Delta_xy (v_a v_b v_r v_X v_Y : K) :
    (((48 : K) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b))) + ((8 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b)))) =
    (((96 : K) * v_b) + ((-96 : K) * v_a * v_b) + ((8 : K) * (((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)))) := by
  ring

theorem substitution_boundary_specialize_Delta_yy (v_a v_b v_r v_X v_Y : K) :
    ((36 : K) + ((4 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((12 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((48 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)))) =
    ((36 : K) + ((-48 : K) * (v_b ^ 2)) + ((4 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((2 : K) * v_a)) ^ 2)) + ((12 : K) * ((((2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((48 : K) * (v_a ^ 2)) + ((96 : K) * v_a)) := by
  ring

theorem substitution_zero_curvature_V_x (v_a v_b v_r v_X v_Y : K) :
    ((v_a * (-2 : K)) + ((-1 : K) * ((1 : K) + (-2 : K)) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2))))) =
    ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((-2 : K) * v_a)) := by
  ring

theorem substitution_zero_curvature_V_y (v_a v_b v_r v_X v_Y : K) :
    ((v_b * (-2 : K)) + (v_a * v_b * ((2 : K) + ((2 : K) * (-2 : K))))) =
    (((-2 : K) * v_b) + ((-2 : K) * v_a * v_b)) := by
  ring

theorem substitution_opposite_is_boundary (v_a v_b v_r v_X v_Y : K) :
    ((-27 : K) + (((((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((-2 : K) * v_a)) ^ 2) + ((((-2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) ^ 2) + ((-8 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((-2 : K) * v_a)) ^ 3)) + ((18 : K) * (((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((-2 : K) * v_a)) ^ 2)) + ((18 : K) * ((((-2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2)) + ((24 : K) * ((v_a ^ 2) + ((-1 : K) * (v_b ^ 2)) + ((-2 : K) * v_a)) * ((((-2 : K) * v_b) + ((-2 : K) * v_a * v_b)) ^ 2))) =
    ((((-1 : K) + ((v_a ^ 2) + (v_b ^ 2))) ^ 2) * ((-27 : K) + (((v_a ^ 2) + (v_b ^ 2)) ^ 2) + ((-8 : K) * ((v_a ^ 3) + ((-3 : K) * v_a * (v_b ^ 2)))) + ((18 : K) * ((v_a ^ 2) + (v_b ^ 2))))) := by
  ring

theorem derivative_differentiate_Delta_x_1 (v_a v_b v_r v_X v_Y : ℝ) :
    HasDerivAt (fun x : ℝ => ((-27 : ℝ) + (((x ^ 2) + (v_Y ^ 2)) ^ 2) + ((-8 : ℝ) * (x ^ 3)) + ((18 : ℝ) * (x ^ 2)) + ((18 : ℝ) * (v_Y ^ 2)) + ((24 : ℝ) * x * (v_Y ^ 2))))
      (((-24 : ℝ) * (v_X ^ 2)) + ((24 : ℝ) * (v_Y ^ 2)) + ((36 : ℝ) * v_X) + ((4 : ℝ) * v_X * ((v_X ^ 2) + (v_Y ^ 2)))) v_X := by
  refine (((((((hasDerivAt_const v_X (-27 : ℝ)).add ((((hasDerivAt_id v_X).pow 2).add ((hasDerivAt_const v_X v_Y).pow 2)).pow 2)).add ((hasDerivAt_const v_X (-8 : ℝ)).mul ((hasDerivAt_id v_X).pow 3))).add ((hasDerivAt_const v_X (18 : ℝ)).mul ((hasDerivAt_id v_X).pow 2))).add ((hasDerivAt_const v_X (18 : ℝ)).mul ((hasDerivAt_const v_X v_Y).pow 2))).add (((hasDerivAt_const v_X (24 : ℝ)).mul (hasDerivAt_id v_X)).mul ((hasDerivAt_const v_X v_Y).pow 2))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_differentiate_Delta_y_1 (v_a v_b v_r v_X v_Y : ℝ) :
    HasDerivAt (fun x : ℝ => ((-27 : ℝ) + (((v_X ^ 2) + (x ^ 2)) ^ 2) + ((-8 : ℝ) * (v_X ^ 3)) + ((18 : ℝ) * (v_X ^ 2)) + ((18 : ℝ) * (x ^ 2)) + ((24 : ℝ) * v_X * (x ^ 2))))
      (((36 : ℝ) * v_Y) + ((4 : ℝ) * v_Y * ((v_X ^ 2) + (v_Y ^ 2))) + ((48 : ℝ) * v_X * v_Y)) v_Y := by
  refine (((((((hasDerivAt_const v_Y (-27 : ℝ)).add ((((hasDerivAt_const v_Y v_X).pow 2).add ((hasDerivAt_id v_Y).pow 2)).pow 2)).add ((hasDerivAt_const v_Y (-8 : ℝ)).mul ((hasDerivAt_const v_Y v_X).pow 3))).add ((hasDerivAt_const v_Y (18 : ℝ)).mul ((hasDerivAt_const v_Y v_X).pow 2))).add ((hasDerivAt_const v_Y (18 : ℝ)).mul ((hasDerivAt_id v_Y).pow 2))).add (((hasDerivAt_const v_Y (24 : ℝ)).mul (hasDerivAt_const v_Y v_X)).mul ((hasDerivAt_id v_Y).pow 2))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_differentiate_Delta_xx_1 (v_a v_b v_r v_X v_Y : ℝ) :
    HasDerivAt (fun x : ℝ => (((-24 : ℝ) * (x ^ 2)) + ((24 : ℝ) * (v_Y ^ 2)) + ((36 : ℝ) * x) + ((4 : ℝ) * x * ((x ^ 2) + (v_Y ^ 2)))))
      ((36 : ℝ) + ((-48 : ℝ) * v_X) + ((4 : ℝ) * (v_Y ^ 2)) + ((12 : ℝ) * (v_X ^ 2))) v_X := by
  refine ((((((hasDerivAt_const v_X (-24 : ℝ)).mul ((hasDerivAt_id v_X).pow 2)).add ((hasDerivAt_const v_X (24 : ℝ)).mul ((hasDerivAt_const v_X v_Y).pow 2))).add ((hasDerivAt_const v_X (36 : ℝ)).mul (hasDerivAt_id v_X))).add (((hasDerivAt_const v_X (4 : ℝ)).mul (hasDerivAt_id v_X)).mul (((hasDerivAt_id v_X).pow 2).add ((hasDerivAt_const v_X v_Y).pow 2)))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_differentiate_Delta_xy_1 (v_a v_b v_r v_X v_Y : ℝ) :
    HasDerivAt (fun x : ℝ => (((-24 : ℝ) * (v_X ^ 2)) + ((24 : ℝ) * (x ^ 2)) + ((36 : ℝ) * v_X) + ((4 : ℝ) * v_X * ((v_X ^ 2) + (x ^ 2)))))
      (((48 : ℝ) * v_Y) + ((8 : ℝ) * v_X * v_Y)) v_Y := by
  refine ((((((hasDerivAt_const v_Y (-24 : ℝ)).mul ((hasDerivAt_const v_Y v_X).pow 2)).add ((hasDerivAt_const v_Y (24 : ℝ)).mul ((hasDerivAt_id v_Y).pow 2))).add ((hasDerivAt_const v_Y (36 : ℝ)).mul (hasDerivAt_const v_Y v_X))).add (((hasDerivAt_const v_Y (4 : ℝ)).mul (hasDerivAt_const v_Y v_X)).mul (((hasDerivAt_const v_Y v_X).pow 2).add ((hasDerivAt_id v_Y).pow 2)))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_differentiate_Delta_yy_1 (v_a v_b v_r v_X v_Y : ℝ) :
    HasDerivAt (fun x : ℝ => (((36 : ℝ) * x) + ((4 : ℝ) * x * ((v_X ^ 2) + (x ^ 2))) + ((48 : ℝ) * v_X * x)))
      ((36 : ℝ) + ((4 : ℝ) * (v_X ^ 2)) + ((12 : ℝ) * (v_Y ^ 2)) + ((48 : ℝ) * v_X)) v_Y := by
  refine (((((hasDerivAt_const v_Y (36 : ℝ)).mul (hasDerivAt_id v_Y)).add (((hasDerivAt_const v_Y (4 : ℝ)).mul (hasDerivAt_id v_Y)).mul (((hasDerivAt_const v_Y v_X).pow 2).add ((hasDerivAt_id v_Y).pow 2)))).add (((hasDerivAt_const v_Y (48 : ℝ)).mul (hasDerivAt_const v_Y v_X)).mul (hasDerivAt_id v_Y))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

end Step1.interior_boundary
