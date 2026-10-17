import NoFourMUBs.StageC.Linear

/-!
# Stage C: the second-order support interface

STATUS: proof terms are supplied, with no additional axioms or admitted goals, but this
file has NOT been compiled in the handoff environment (Lean and mathlib are absent).

This file deliberately separates the analytic estimates from their logical consumer.
`cubicResidual` is the exact residual. Its cubic estimate is a hypothesis of
`second_order_test`; defining the residual does not prove that estimate.
The paper proof in the report supplies the missing analytic theorem. Likewise the
polynomial support and normal-correction bounds are explicit hypotheses.

All phases and displacements here are in cycles, exactly as in `Linear.lean`.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

/-- The exact homogeneous quadratic term in the column expansion. -/
noncomputable def quadraticTerm (P : RMat6) (u w : I6 → ℝ) (i : I6) : ℝ :=
  Real.pi * (‖∑ j, q P u j i * (w j : ℂ)‖ ^ 2 -
    ∑ j, (star (S P u i) * q P u j i).re * w j ^ 2)

/-- Linear plus quadratic variation, with `w_ji = x_j - δ_ji`. -/
noncomputable def linearQuadratic (P δ : RMat6) (u x : I6 → ℝ) (i : I6) : ℝ :=
  (∑ j, Jm P u i j * (x j - δ j i)) +
    quadraticTerm P u (fun j => x j - δ j i) i

/-- Exact real residual after the quadratic term. Its O(w³) bound is not definitional. -/
noncomputable def cubicResidual (P δ : RMat6) (u x : I6 → ℝ) (i : I6) : ℝ :=
  (‖S' P δ u x i‖ ^ 2 - 1) / (4 * Real.pi) - cc P u i -
    linearQuadratic P δ u x i

/-- Exact decomposition; the genuinely analytic assertion is the bound on the last term. -/
theorem second_order_identity (P δ : RMat6) (u x : I6 → ℝ) (i : I6) :
    (‖S' P δ u x i‖ ^ 2 - 1) / (4 * Real.pi) =
      cc P u i + linearQuadratic P δ u x i + cubicResidual P δ u x i := by
  unfold cubicResidual
  ring

/-- A weighted absolute remainder bound implies a bound on the weighted sum. -/
lemma abs_weighted_sum_le {ι : Type*} [Fintype ι] (y r : ι → ℝ) :
    |∑ i, y i * r i| ≤ ∑ i, |y i| * |r i| := by
  calc
    |∑ i, y i * r i| ≤ ∑ i, |y i * r i| := Finset.abs_sum_le_sum_abs _ _
    _ = ∑ i, |y i| * |r i| :=
      Finset.sum_congr rfl (fun i _ => abs_mul _ _)

/-- The scalar triangle-inequality step; no sign assumptions on the multiplier. -/
lemma second_order_support_arithmetic {c p v r m H Enu E3 : ℝ}
    (hzero : c + p + v + r = 0)
    (hp : |p - m| ≤ H) (hv : |v| ≤ Enu) (hr : |r| ≤ E3) :
    |c + m| ≤ H + Enu + E3 := by
  rw [abs_le] at hp hv hr ⊢
  constructor <;> linarith [hp.1, hp.2, hv.1, hv.2, hr.1, hr.2]

/-- One-sided support arithmetic. Take `s` to be the sign of the constant. -/
lemma second_order_oriented_arithmetic {c p v r s H Enu E3 : ℝ}
    (hs : |s| = 1) (hsc : s * c = |c|)
    (hzero : c + p + v + r = 0)
    (hp : -(s * p) ≤ H) (hv : |v| ≤ Enu) (hr : |r| ≤ E3) :
    |c| ≤ H + Enu + E3 := by
  have hm : s * c + s * p + s * v + s * r = 0 := by
    calc
      _ = s * (c + p + v + r) := by ring
      _ = 0 := by rw [hzero, mul_zero]
  have hv' : -(s * v) ≤ Enu := by
    calc
      -(s * v) ≤ |s * v| := by linarith [neg_abs_le (s * v)]
      _ = |v| := by rw [abs_mul, hs, one_mul]
      _ ≤ Enu := hv
  have hr' : -(s * r) ≤ E3 := by
    calc
      -(s * r) ≤ |s * r| := by linarith [neg_abs_le (s * r)]
      _ = |r| := by rw [abs_mul, hs, one_mul]
      _ ≤ E3 := hr
  linarith

/-- Weighted zero identity at an unbiased vector. -/
lemma weighted_second_order_zero {P δ δ0 : RMat6} {u y x : I6 → ℝ}
    (hcol : ColUnb (E (P + δ)) (fun j => e (u j + x j))) :
    (∑ i, y i * cc P u i) +
    (∑ i, y i * linearQuadratic P δ0 u x i) +
    (∑ i, y i * (linearQuadratic P δ u x i - linearQuadratic P δ0 u x i)) +
    (∑ i, y i * cubicResidual P δ u x i) = 0 := by
  have hS := (colUnb_iff P δ u x).mp hcol
  have hzero : ∀ i, cc P u i + linearQuadratic P δ u x i +
      cubicResidual P δ u x i = 0 := by
    intro i
    rw [← second_order_identity, hS i]
    simp
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  refine Finset.sum_eq_zero fun i _ => ?_
  calc
    _ = y i * (cc P u i + linearQuadratic P δ u x i +
        cubicResidual P δ u x i) := by ring
    _ = 0 := by rw [hzero i, mul_zero]

/-- **Second-order single-vector test (C2b″), support form.**

For N1, instantiate `δ0 = ∑ k, η k • T k`.  `hpoly` bounds the *explicit*
linear-plus-quadratic polynomial at this displacement; `hnormal` bounds its
change under `δ - δ0`; `hthird` bounds the weighted true cubic residual.

The shift `m` is optional (`m = 0` gives the absolute-support version in the brief).
A nonzero shift allows signed diagonal and spectral intervals to retain their centres.

This statement also permits a quadratic chart `δ0`, but in that case the polynomial
`linearQuadratic ... δ0` has degrees up to four. Keeping only degree two requires
the extra chart terms described in `SECOND_ORDER_NORMAL.md`.
-/
theorem second_order_test {P δ δ0 : RMat6} {u y x : I6 → ℝ}
    {m H Enu E3 : ℝ}
    (hpoly : |(∑ i, y i * linearQuadratic P δ0 u x i) - m| ≤ H)
    (hnormal : |∑ i, y i *
      (linearQuadratic P δ u x i - linearQuadratic P δ0 u x i)| ≤ Enu)
    (hthird : |∑ i, y i * cubicResidual P δ u x i| ≤ E3)
    (hcol : ColUnb (E (P + δ)) (fun j => e (u j + x j))) :
    |(∑ i, y i * cc P u i) + m| ≤ H + Enu + E3 := by
  exact second_order_support_arithmetic (weighted_second_order_zero hcol) hpoly hnormal hthird

/-- **Oriented C2b″.** The support only needs an upper bound on `-s p`, where
`s` is the sign of `y·c`. This retains the sign of quadratic diagonal terms. -/
theorem second_order_oriented_test {P δ δ0 : RMat6} {u y x : I6 → ℝ}
    {s H Enu E3 : ℝ}
    (hs : |s| = 1) (hsc : s * (∑ i, y i * cc P u i) = |∑ i, y i * cc P u i|)
    (hpoly : -(s * (∑ i, y i * linearQuadratic P δ0 u x i)) ≤ H)
    (hnormal : |∑ i, y i *
      (linearQuadratic P δ u x i - linearQuadratic P δ0 u x i)| ≤ Enu)
    (hthird : |∑ i, y i * cubicResidual P δ u x i| ≤ E3)
    (hcol : ColUnb (E (P + δ)) (fun j => e (u j + x j))) :
    |∑ i, y i * cc P u i| ≤ H + Enu + E3 := by
  exact second_order_oriented_arithmetic hs hsc (weighted_second_order_zero hcol)
    hpoly hnormal hthird

/-- Uniform scalar replacement for a certified polynomial approximation.
This is useful when exact/dyadic coefficient intervals give the error `Ecoeff`. -/
lemma polynomial_support_with_coefficient_error {p pbar m H Ecoeff : ℝ}
    (hbar : |pbar - m| ≤ H) (herr : |p - pbar| ≤ Ecoeff) :
    |p - m| ≤ H + Ecoeff := by
  have ht := abs_add_le (p - pbar) (pbar - m)
  have heq : p - pbar + (pbar - m) = p - m := by ring
  rw [heq] at ht
  linarith

end NoFourMUBs.StageC
