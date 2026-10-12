import NoFourMUBs.Step2.CriticalZero.NonzeroSideInvolution
import NoFourMUBs.Reuse.Archive.CriticalNonzeroMomentInterface

/-! Conjugation of the existing Newton formulas; no moment formula is recreated. -/
set_option autoImplicit false
set_option maxHeartbeats 3000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroMoments20261003 CriticalZeroLight20261003
variable {F : Type*} [Field F] [CharZero F] {A B : F}

@[simp] theorem star_algebraMap_fixed (c : F) :
    star (algebraMap F (QuadraticAlgebra F A B) c) = algebraMap F _ c := by
  ext <;> simp

/-- Index adapter to the original 36 formulas. -/
def quadMoment (m : MomentTag) (D : Data (Quad A B)) : Quad A B :=
  match m with
  | .m1_m1 => quadNewton_m1_m1 D
  | .m1_m2 => quadNewton_m1_m2 D
  | .m1_p2 => quadNewton_m1_p2 D
  | .m1_p3 => quadNewton_m1_p3 D
  | .m2_m1 => quadNewton_m2_m1 D
  | .m2_m2 => quadNewton_m2_m2 D
  | .m2_p0 => quadNewton_m2_p0 D
  | .m2_p1 => quadNewton_m2_p1 D
  | .m2_p2 => quadNewton_m2_p2 D
  | .m2_p3 => quadNewton_m2_p3 D
  | .m2_p4 => quadNewton_m2_p4 D
  | .m3_p0 => quadNewton_m3_p0 D
  | .m3_p1 => quadNewton_m3_p1 D
  | .m3_p2 => quadNewton_m3_p2 D
  | .m3_p3 => quadNewton_m3_p3 D
  | .m4_p2 => quadNewton_m4_p2 D
  | .p0_m2 => quadNewton_p0_m2 D
  | .p0_m3 => quadNewton_p0_m3 D
  | .p0_p2 => quadNewton_p0_p2 D
  | .p0_p3 => quadNewton_p0_p3 D
  | .p1_m2 => quadNewton_p1_m2 D
  | .p1_m3 => quadNewton_p1_m3 D
  | .p1_p1 => quadNewton_p1_p1 D
  | .p1_p2 => quadNewton_p1_p2 D
  | .p2_m1 => quadNewton_p2_m1 D
  | .p2_m2 => quadNewton_p2_m2 D
  | .p2_m3 => quadNewton_p2_m3 D
  | .p2_m4 => quadNewton_p2_m4 D
  | .p2_p0 => quadNewton_p2_p0 D
  | .p2_p1 => quadNewton_p2_p1 D
  | .p2_p2 => quadNewton_p2_p2 D
  | .p3_m1 => quadNewton_p3_m1 D
  | .p3_m2 => quadNewton_p3_m2 D
  | .p3_m3 => quadNewton_p3_m3 D
  | .p3_p0 => quadNewton_p3_p0 D
  | .p4_m2 => quadNewton_p4_m2 D

def opposite : MomentTag → MomentTag
  | .m1_m1 => .p1_p1
  | .m1_m2 => .p1_p2
  | .m1_p2 => .p1_m2
  | .m1_p3 => .p1_m3
  | .m2_m1 => .p2_p1
  | .m2_m2 => .p2_p2
  | .m2_p0 => .p2_p0
  | .m2_p1 => .p2_m1
  | .m2_p2 => .p2_m2
  | .m2_p3 => .p2_m3
  | .m2_p4 => .p2_m4
  | .m3_p0 => .p3_p0
  | .m3_p1 => .p3_m1
  | .m3_p2 => .p3_m2
  | .m3_p3 => .p3_m3
  | .m4_p2 => .p4_m2
  | .p0_m2 => .p0_p2
  | .p0_m3 => .p0_p3
  | .p0_p2 => .p0_m2
  | .p0_p3 => .p0_m3
  | .p1_m2 => .m1_p2
  | .p1_m3 => .m1_p3
  | .p1_p1 => .m1_m1
  | .p1_p2 => .m1_m2
  | .p2_m1 => .m2_p1
  | .p2_m2 => .m2_p2
  | .p2_m3 => .m2_p3
  | .p2_m4 => .m2_p4
  | .p2_p0 => .m2_p0
  | .p2_p1 => .m2_m1
  | .p2_p2 => .m2_m2
  | .p3_m1 => .m3_p1
  | .p3_m2 => .m3_p2
  | .p3_m3 => .m3_p3
  | .p3_p0 => .m3_p0
  | .p4_m2 => .m4_p2

def degrees : MomentTag → ℤ × ℤ
  | .m1_m1 => (-1, -1)
  | .m1_m2 => (-1, -2)
  | .m1_p2 => (-1, 2)
  | .m1_p3 => (-1, 3)
  | .m2_m1 => (-2, -1)
  | .m2_m2 => (-2, -2)
  | .m2_p0 => (-2, 0)
  | .m2_p1 => (-2, 1)
  | .m2_p2 => (-2, 2)
  | .m2_p3 => (-2, 3)
  | .m2_p4 => (-2, 4)
  | .m3_p0 => (-3, 0)
  | .m3_p1 => (-3, 1)
  | .m3_p2 => (-3, 2)
  | .m3_p3 => (-3, 3)
  | .m4_p2 => (-4, 2)
  | .p0_m2 => (0, -2)
  | .p0_m3 => (0, -3)
  | .p0_p2 => (0, 2)
  | .p0_p3 => (0, 3)
  | .p1_m2 => (1, -2)
  | .p1_m3 => (1, -3)
  | .p1_p1 => (1, 1)
  | .p1_p2 => (1, 2)
  | .p2_m1 => (2, -1)
  | .p2_m2 => (2, -2)
  | .p2_m3 => (2, -3)
  | .p2_m4 => (2, -4)
  | .p2_p0 => (2, 0)
  | .p2_p1 => (2, 1)
  | .p2_p2 => (2, 2)
  | .p3_m1 => (3, -1)
  | .p3_m2 => (3, -2)
  | .p3_m3 => (3, -3)
  | .p3_p0 => (3, 0)
  | .p4_m2 => (4, -2)

theorem opposite_involutive (m : MomentTag) : opposite (opposite m) = m := by
  cases m <;> rfl

theorem moment_conjugates (X Y : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (D : Data (Quad A B))
    (hS : toQuadratic D.S = algebraMap F _ X * star (toQuadratic D.s))
    (hT : toQuadratic D.T = algebraMap F _ Y * star (toQuadratic D.t))
    (hQ : toQuadratic D.Q = algebraMap F _ (Y/X) * star (toQuadratic D.r))
    (hU : toQuadratic D.U = algebraMap F _ (X^3) * star (toQuadratic D.u))
    (hV : toQuadratic D.V = algebraMap F _ (Y^3) * star (toQuadratic D.v))
    (hW : toQuadratic D.W = algebraMap F _ ((X/Y)^3) * star (toQuadratic D.w))
    (hPI : toQuadratic D.PI = algebraMap F _ (X*Y) * star (toQuadratic D.pi))
    (hUP : toQuadratic D.UP = algebraMap F _ (X^2/Y) * star (toQuadratic D.up))
    (hVP : toQuadratic D.VP = algebraMap F _ (Y^2/X) * star (toQuadratic D.vp))
    (m : MomentTag) :
    star (toQuadratic (quadMoment m D)) =
      algebraMap F _ (X^(-(degrees m).1) * Y^(-(degrees m).2)) *
        toQuadratic (quadMoment (opposite m) D) := by
  have htwo : toQuadratic (2 : Quad A B) = (2 : QuadraticAlgebra F A B) := rfl
  have hthree : toQuadratic (3 : Quad A B) = (3 : QuadraticAlgebra F A B) := rfl
  cases m
  all_goals
    simp only [quadMoment, opposite, degrees,
      quadNewton_m1_m1, quadNewton_m1_m2, quadNewton_m1_p2, quadNewton_m1_p3, quadNewton_m2_m1, quadNewton_m2_m2, quadNewton_m2_p0, quadNewton_m2_p1, quadNewton_m2_p2, quadNewton_m2_p3, quadNewton_m2_p4, quadNewton_m3_p0, quadNewton_m3_p1, quadNewton_m3_p2, quadNewton_m3_p3, quadNewton_m4_p2, quadNewton_p0_m2, quadNewton_p0_m3, quadNewton_p0_p2, quadNewton_p0_p3, quadNewton_p1_m2, quadNewton_p1_m3, quadNewton_p1_p1, quadNewton_p1_p2, quadNewton_p2_m1, quadNewton_p2_m2, quadNewton_p2_m3, quadNewton_p2_m4, quadNewton_p2_p0, quadNewton_p2_p1, quadNewton_p2_p2, quadNewton_p3_m1, quadNewton_p3_m2, quadNewton_p3_m3, quadNewton_p3_p0, quadNewton_p4_m2,
      toQuadratic_add, toQuadratic_sub, toQuadratic_mul, toQuadratic_pow,
      toQuadratic_nat, htwo, hthree, hS, hT, hQ, hU, hV, hW, hPI, hUP, hVP,
      star_add, star_sub, star_mul, star_pow, star_algebraMap_fixed, star_star,
      star_natCast, star_ofNat]
  all_goals
    apply QuadraticAlgebra.ext
    all_goals
      norm_num only [zpow_neg, zpow_ofNat, zpow_zero, neg_zero, neg_neg,
        QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
        QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
        QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
        QuadraticAlgebra.re_star, QuadraticAlgebra.im_star,
        QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
        QuadraticAlgebra.re_natCast, QuadraticAlgebra.im_natCast,
        QuadraticAlgebra.re_ofNat, QuadraticAlgebra.im_ofNat,
        QuadraticAlgebra.re_one, QuadraticAlgebra.im_one,
        pow_succ, pow_zero, mul_zero, zero_mul, add_zero, zero_add, sub_zero]
      field_simp [hX, hY]
      <;> ring

end NoFourMUBs.Step2.Critical.NonzeroClearing
