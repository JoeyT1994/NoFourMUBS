import NoFourMUBs.PRM.CoverageStripMoments

/-!
# Half-strip moments by Newton's identities (`CRITICAL_STRIP_CLASSIFICATION.md` §1)

For three columns `(xₖ, yₖ)` with nonzero entries, the moments `Σₖ xₖ^i yₖ^j` used by `momentPoly` are
polynomials (`HalfData.mom`, the formulas of `critical_moment_core.newton_moments`) in the eighteen
quantities `s = Σx`, `S = Σ1/x`, `t`, `T`, `r = Σy/x`, `Q = Σx/y`, `u = Πx`, `v = Πy`, `w = u/v`,
`U = 1/u`, `V = 1/v`, `W = v/u`, `π = perm(1; x; y)`, `Π = perm(1; 1/x; 1/y)`, `uΠ`, `vΠ`, `π/u`,
`π/v` (`halfDataOf`).  `newton` proves this for the 36 moments occurring in `momentPoly`.
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripMoments

open Side

/-- The eighteen symbols of one half. -/
@[ext] structure HalfData where
  s : ℂ
  S : ℂ
  t : ℂ
  T : ℂ
  r : ℂ
  Q : ℂ
  u : ℂ
  v : ℂ
  w : ℂ
  U : ℂ
  V : ℂ
  W : ℂ
  pi : ℂ
  PI : ℂ
  up : ℂ
  vp : ℂ
  UP : ℂ
  VP : ℂ

/-- The moments with the shapes of `newton_moments.half`. -/
def newtonHalf (s S t T r Q u v w wb pi up vp : ℂ) (p : ℤ × ℤ) : ℂ :=
  let m11 := s * t - pi
  let m2m1 := s * Q - up
  let mm12 := t * r - vp
  if p = (2, 0) then s ^ 2 - 2 * u * S
  else if p = (0, 2) then t ^ 2 - 2 * v * T
  else if p = (2, -2) then Q ^ 2 - 2 * w * r
  else if p = (1, 1) then m11
  else if p = (2, -1) then m2m1
  else if p = (-1, 2) then mm12
  else if p = (3, 0) then s ^ 3 - 3 * s * u * S + 3 * u
  else if p = (0, 3) then t ^ 3 - 3 * t * v * T + 3 * v
  else if p = (3, -3) then Q ^ 3 - 3 * Q * w * r + 3 * w
  else if p = (2, 1) then s * m11 - t * u * S + u * r
  else if p = (1, 2) then t * m11 - s * v * T + v * Q
  else if p = (3, -1) then s * m2m1 - Q * u * S + u * T
  else if p = (3, -2) then Q * m2m1 - s * w * r + w * t
  else if p = (-1, 3) then t * mm12 - r * v * T + v * S
  else if p = (-2, 3) then r * mm12 - t * wb * Q + wb * s
  else 0

/-- The exponents handled directly by `newtonHalf`. -/
def halfDom : List (ℤ × ℤ) :=
  [(2, 0), (0, 2), (2, -2), (1, 1), (2, -1), (-1, 2), (3, 0), (0, 3), (3, -3), (2, 1), (1, 2), (3, -1),
    (3, -2), (-1, 3), (-2, 3)]

/-- **The Newton moment formulas** (`newton_moments`): `m` from `newtonHalf`, `m[−i, −j]` from the barred
half, and the six quartic moments. -/
def HalfData.mom (d : HalfData) (p : ℤ × ℤ) : ℂ :=
  let m := newtonHalf d.s d.S d.t d.T d.r d.Q d.u d.v d.w d.W d.pi d.up d.vp
  let b := newtonHalf d.S d.s d.T d.t d.Q d.r d.U d.V d.W d.w d.PI d.UP d.VP
  if p = (2, 2) then m (1, 1) ^ 2 - 2 * d.u * d.v * b (1, 1)
  else if p = (-2, -2) then b (1, 1) ^ 2 - 2 * d.U * d.V * m (1, 1)
  else if p = (4, -2) then m (2, -1) ^ 2 - 2 * d.u * d.w * b (2, -1)
  else if p = (-4, 2) then b (2, -1) ^ 2 - 2 * d.U * d.W * m (2, -1)
  else if p = (-2, 4) then m (-1, 2) ^ 2 - 2 * d.v * d.W * b (-1, 2)
  else if p = (2, -4) then b (-1, 2) ^ 2 - 2 * d.V * d.w * m (-1, 2)
  else if p ∈ halfDom then m p
  else b (-p.1, -p.2)

/-- The eighteen symbols of actual columns. -/
def halfDataOf (x y : Fin 3 → ℂ) : HalfData where
  s := sS x
  S := (x 0)⁻¹ + (x 1)⁻¹ + (x 2)⁻¹
  t := sS y
  T := (y 0)⁻¹ + (y 1)⁻¹ + (y 2)⁻¹
  r := y 0 / x 0 + y 1 / x 1 + y 2 / x 2
  Q := x 0 / y 0 + x 1 / y 1 + x 2 / y 2
  u := uS x
  v := uS y
  w := uS x / uS y
  U := (uS x)⁻¹
  V := (uS y)⁻¹
  W := uS y / uS x
  pi := piS x y
  PI := piS (fun k => (x k)⁻¹) (fun k => (y k)⁻¹)
  up := uS x * piS (fun k => (x k)⁻¹) (fun k => (y k)⁻¹)
  vp := uS y * piS (fun k => (x k)⁻¹) (fun k => (y k)⁻¹)
  UP := piS x y / uS x
  VP := piS x y / uS y

/-- The 36 moments occurring in `momentPoly`. -/
def usedMoments : List (ℤ × ℤ) :=
  [(-4, 2), (-3, 0), (-3, 1), (-3, 2), (-3, 3), (-2, -2), (-2, -1), (-2, 0), (-2, 1), (-2, 2), (-2, 3),
    (-2, 4), (-1, -2), (-1, -1), (-1, 2), (-1, 3), (0, -3), (0, -2), (0, 2), (0, 3), (1, -3), (1, -2),
    (1, 1), (1, 2), (2, -4), (2, -3), (2, -2), (2, -1), (2, 0), (2, 1), (2, 2), (3, -3), (3, -2), (3, -1),
    (3, 0), (4, -2)]

set_option maxHeartbeats 2000000 in
/-- **Newton's identities** for the 36 moments. -/
theorem newton {x y : Fin 3 → ℂ} (hx : ∀ k, x k ≠ 0) (hy : ∀ k, y k ≠ 0) {p : ℤ × ℤ}
    (hp : p ∈ usedMoments) : ∑ k, x k ^ p.1 * y k ^ p.2 = (halfDataOf x y).mom p := by
  have a0 := hx 0; have a1 := hx 1; have a2 := hx 2
  have b0 := hy 0; have b1 := hy 1; have b2 := hy 2
  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl <;>
  · simp (config := { decide := true }) only [HalfData.mom, newtonHalf, halfDom, ite_true, ite_false,
      List.mem_cons, List.mem_nil_iff, or_false, neg_neg, Int.reduceNeg, if_true, if_false]
    simp only [halfDataOf, Fin.sum_univ_three, sS, uS, piS, zpow_neg, zpow_ofNat, zpow_one, zpow_zero,
      one_mul, mul_one]
    field_simp
    ring

end NoFourMUBs.PRM.Coverage.StripMoments
