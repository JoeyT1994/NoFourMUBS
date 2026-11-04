import NoFourMUBs.PRM.CoverageStripHalfDefs
import NoFourMUBs.Identity.Fast

/-!
# Critical strip identities (I4): the moment formulas over `QF`

* `HalfQ`, `HalfQ.mom`: `HalfData` and `HalfData.mom` over the quadratic-extension fractions `QF C` of
  `NoFourMUBs.Identity.Frac` (copies of the definitions of `CoverageStripHalfDefs`); `HalfQ.val_mom`:
  evaluation commutes with them, on the moments `usedMoments`.
* `QF.validR`: the fast kernel test on both components.
-/

set_option linter.unusedSimpArgs false

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId

open NoFourMUBs.Kronecker StripMoments

variable {n m : ℕ} {C : Ctx n m}

/-- The eighteen symbols of a half, over `QF C`. -/
structure HalfQ (C : Ctx n m) where
  s : QF C
  S : QF C
  t : QF C
  T : QF C
  r : QF C
  Q : QF C
  u : QF C
  v : QF C
  w : QF C
  U : QF C
  V : QF C
  W : QF C
  pi : QF C
  PI : QF C
  up : QF C
  vp : QF C
  UP : QF C
  VP : QF C

/-- `newtonHalf` over `QF C`. -/
def newtonHalfQ (s S t T r Q u v w pi up vp : QF C) (p : ℤ × ℤ) : QF C :=
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

/-- `HalfData.mom` over `QF C`. -/
def HalfQ.mom (d : HalfQ C) (p : ℤ × ℤ) : QF C :=
  let m := newtonHalfQ d.s d.S d.t d.T d.r d.Q d.u d.v d.w d.pi d.up d.vp
  let b := newtonHalfQ d.S d.s d.T d.t d.Q d.r d.U d.V d.W d.PI d.UP d.VP
  if p = (2, 2) then m (1, 1) ^ 2 - 2 * d.u * d.v * b (1, 1)
  else if p ∈ halfDom then m p
  else b (-p.1, -p.2)

variable (ρ : Fin n → ℂ) (ζ : ℂ)

/-- The values. -/
def HalfQ.val (d : HalfQ C) : HalfData :=
  ⟨d.s.val ρ ζ, d.S.val ρ ζ, d.t.val ρ ζ, d.T.val ρ ζ, d.r.val ρ ζ, d.Q.val ρ ζ, d.u.val ρ ζ,
    d.v.val ρ ζ, d.w.val ρ ζ, d.U.val ρ ζ, d.V.val ρ ζ, d.W.val ρ ζ, d.pi.val ρ ζ, d.PI.val ρ ζ,
    d.up.val ρ ζ, d.vp.val ρ ζ, d.UP.val ρ ζ, d.VP.val ρ ζ⟩

variable {ρ ζ}

theorem QF.val_two : (2 : QF C).val ρ ζ = 2 := by rw [QF.val_ofNat]; norm_num
theorem QF.val_three : (3 : QF C).val ρ ζ = 3 := by rw [QF.val_ofNat]; norm_num
theorem QF.val_one' : (1 : QF C).val ρ ζ = 1 := by rw [QF.val_ofNat]; norm_num
theorem QF.val_ofNat' (k : ℕ) [k.AtLeastTwo] : (no_index (OfNat.ofNat k : QF C)).val ρ ζ = OfNat.ofNat k := by
  rw [QF.val_ofNat]; exact Nat.cast_ofNat

set_option maxHeartbeats 2000000 in
/-- **Evaluation commutes with the moment formulas.** -/
theorem HalfQ.val_mom (h : QF.Good C ρ ζ) (d : HalfQ C) {p : ℤ × ℤ} (hp : p ∈ usedMoments) :
    (d.mom p).val ρ ζ = (d.val ρ ζ).mom p := by
  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
  · simp (config := { decide := true }) only [HalfQ.mom, HalfData.mom, newtonHalfQ, newtonHalf, halfDom,
      ite_true, ite_false, List.mem_cons, List.mem_nil_iff, or_false, neg_neg, Int.reduceNeg, if_true,
      if_false]
    simp only [QF.val_add h, QF.val_sub h, QF.val_mul h, QF.val_pow h, QF.val_two, QF.val_three,
      HalfQ.val]

/-! ### The fast test on both components -/

def qvalidR (x : QF C) (ns : ℕ) : Bool := x.x0.num.validR ns && x.x1.num.validR ns

theorem QF.val_eq_zero_of_validR {x : QF C} {ns : ℕ} (hx : qvalidR x ns = true) : x.val ρ ζ = 0 := by
  simp only [qvalidR, Bool.and_eq_true] at hx
  rw [QF.val, Frac.val_eq_zero_of_validR hx.1, Frac.val_eq_zero_of_validR hx.2]; ring

theorem QF.eq_of_validR (h : QF.Good C ρ ζ) {x y : QF C} {ns : ℕ} (hx : qvalidR (x - y) ns = true) :
    x.val ρ ζ = y.val ρ ζ := by
  have := QF.val_eq_zero_of_validR (ρ := ρ) (ζ := ζ) hx
  rw [QF.val_sub h] at this
  exact sub_eq_zero.1 this

end NoFourMUBs.PRM.Coverage.StripId
