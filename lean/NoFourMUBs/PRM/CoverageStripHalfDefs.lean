import Mathlib

/-!
# Critical strip identities (I4): the half-strip data, as pure definitions

`HalfData` (the eighteen symbols of one half), the Newton moment formulas `HalfData.mom`, the moments
`usedMoments` occurring in the mixed and signed corner sums, and the formal half data `fData`.  They are
kept apart from the proofs about them (`CoverageStripNewton`, `CoverageStripIdFormal`) so that the kernel
checks of the two strata (`CoverageMixedCheck*`, `CoverageSignedK*`) build in parallel with the strip
chain.
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripMoments

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
def newtonHalf (s S t T r Q u v w pi up vp : ℂ) (p : ℤ × ℤ) : ℂ :=
  let m11 := s * t - pi
  let m2m1 := s * Q - up
  let mm12 := t * r - vp
  if p = (0, 0) then 3
  else if p = (1, 0) then s
  else if p = (0, 1) then t
  else if p = (-1, 1) then r
  else if p = (1, -1) then Q
  else if p = (2, 0) then s ^ 2 - 2 * u * S
  else if p = (0, 2) then t ^ 2 - 2 * v * T
  else if p = (2, -2) then Q ^ 2 - 2 * w * r
  else if p = (1, 1) then m11
  else if p = (2, -1) then m2m1
  else if p = (-1, 2) then mm12
  else if p = (3, 0) then s ^ 3 - 3 * s * u * S + 3 * u
  else if p = (0, 3) then t ^ 3 - 3 * t * v * T + 3 * v
  else if p = (2, 1) then s * m11 - t * u * S + u * r
  else if p = (1, 2) then t * m11 - s * v * T + v * Q
  else if p = (3, -1) then s * m2m1 - Q * u * S + u * T
  else if p = (-1, 3) then t * mm12 - r * v * T + v * S
  else 0

/-- The exponents handled directly by `newtonHalf`. -/
def halfDom : List (ℤ × ℤ) :=
  [(0, 0), (1, 0), (0, 1), (-1, 1), (1, -1), (2, 0), (0, 2), (2, -2), (1, 1), (2, -1), (-1, 2), (3, 0),
    (0, 3), (2, 1), (1, 2), (3, -1), (-1, 3)]

/-- **The Newton moment formulas** (`newton_moments`): `m` from `newtonHalf`, `m[−i, −j]` from the barred
half, and the quartic moment `(2, 2)`. -/
def HalfData.mom (d : HalfData) (p : ℤ × ℤ) : ℂ :=
  let m := newtonHalf d.s d.S d.t d.T d.r d.Q d.u d.v d.w d.pi d.up d.vp
  let b := newtonHalf d.S d.s d.T d.t d.Q d.r d.U d.V d.W d.PI d.UP d.VP
  if p = (2, 2) then m (1, 1) ^ 2 - 2 * d.u * d.v * b (1, 1)
  else if p ∈ halfDom then m p
  else b (-p.1, -p.2)

/-- The 24 moments used: the 21 of return O's two mixed-corner sums (`CoverageMixedData`; among them the
first-order moments `(±1, 0), (0, ±1), (1, −1), (−1, 1), (0, 0)`, which vanish on a whole strip but not
on a half) and `(3, 0), (0, 3), (2, 2)` of return K's weighted signed sum (`weightedPoly`). -/
def usedMoments : List (ℤ × ℤ) :=
  [(0, 0), (1, 0), (0, 1), (-1, 0), (0, -1), (-1, 1), (1, -1), (-1, -1), (1, 1), (2, -1), (-1, 2), (-2, 1),
    (1, -2), (2, 0), (0, 2), (2, -2), (-2, 2), (3, 0), (0, 3), (2, 1), (1, 2), (3, -1), (-1, 3), (2, 2)]

end NoFourMUBs.PRM.Coverage.StripMoments

namespace NoFourMUBs.PRM.Coverage.StripId

open StripMoments

/-- The formal half data. -/
def fData (s S t T r R X Y Z L0 L1 L2 z : ℂ) : HalfData :=
  let la := (r * s ^ 2 + R * t ^ 2 + (3 - Z) * s * t) / L0
  let lb := (t * S ^ 2 + r ^ 2 * T + (3 - Y) * r * S) / L1
  let lc := (s * T ^ 2 + R ^ 2 * S + (3 - X) * R * T) / L2
  let ba := (R * S ^ 2 + r * T ^ 2 + (3 - Z) * S * T) / L0
  let bb := (T * s ^ 2 + R ^ 2 * t + (3 - Y) * R * s) / L1
  let bc := (S * t ^ 2 + r ^ 2 * s + (3 - X) * r * t) / L2
  ⟨s, S, t, T, r, R, la * bb, la * bc, lc * bb, lb * ba, lc * ba, lb * bc, la * z, ba * z, bb * z,
    bc * z, lb * z, lc * z⟩

end NoFourMUBs.PRM.Coverage.StripId
