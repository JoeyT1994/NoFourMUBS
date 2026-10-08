import GlobalCornerSixSinePhysical
import Root255CoverageReview

set_option autoImplicit false
namespace SixSineIndependentReview20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover CanonicalCorners GlobalCornerDomain

/-- Every complementary side, including singular ones, is bounded by the
selected maximum. Actual six phase-entry equalities remain explicit. -/
theorem literal_global_bound {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (p q : Perm) (x y : Fin 3 → ℝ)
    (hx : ∀ j, northeast (oriented vertical (candidate H p q)) 1 j =
      Complex.exp ((x j : ℂ) * Complex.I))
    (hy : ∀ j, northeast (oriented vertical (candidate H p q)) 2 j =
      Complex.exp ((y j : ℂ) * Complex.I)) :
    64 * (GlobalCornerSixSine.sixSine x y)^2 ≤ score H :=
  globalMax_complementary_sixSine_exp hH vertical p q x y hx hy

/-- Literal zero phases are included; no division-by-determinant restriction. -/
theorem zero_side_score :
    64 * (GlobalCornerSixSine.sixSine (fun _ => 0) (fun _ => 0))^2 = 0 := by
  simp [GlobalCornerSixSine.sixSine]

/-- Independent row phase shifts preserve the exact exported expression. -/
theorem row_phase_invariance (x y : Fin 3 → ℝ) (u v : ℝ) :
    GlobalCornerSixSine.sixSine (fun j => x j+u) (fun j => y j+v) =
      GlobalCornerSixSine.sixSine x y :=
  GlobalCornerSixSine.sixSine_rowShift x y u v

/-- The geometry helper imported by the Fin6 root255 endpoint has exactly
the closed radian intervals recorded in the external campaign. -/
theorem literal_root255_geometry (θ : Fin 4 → ℝ) :
    ShoulderRoot255Trig20261003.Cube θ ↔
      (-253 / 256 ≤ θ 0 ∧ θ 0 ≤ -252 / 256) ∧
      (281 / 256 ≤ θ 1 ∧ θ 1 ≤ 282 / 256) ∧
      (282 / 256 ≤ θ 2 ∧ θ 2 ≤ 283 / 256) ∧
      (-254 / 256 ≤ θ 3 ∧ θ 3 ≤ -253 / 256) :=
  GlobalAssemblyCoverageReview20261003.root255_cube_iff_grid θ

#print axioms literal_global_bound
#print axioms zero_side_score
#print axioms row_phase_invariance
#print axioms literal_root255_geometry
end SixSineIndependentReview20261003
