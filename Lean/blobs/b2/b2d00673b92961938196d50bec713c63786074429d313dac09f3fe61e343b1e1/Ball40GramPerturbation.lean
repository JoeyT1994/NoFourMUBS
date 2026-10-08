import CentiradianArithmetic

/-!
Source-only translation of Radius025Complete/PROOF.md, Section 1, lines 102--121.
This supplies the finite-difference estimate behind the stated derivative bound.
It reuses the existing quartic Gram identity/bound and enlarged majorant arithmetic.
No phase-to-Gram approximation or physical exclusion is assumed proved here.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.Ball40Translation20261007
noncomputable section

theorem signed_sum_bound {a b c P : ℝ}
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hc : 0 ≤ c) (hp : a+b+c ≤ P) :
    |b+c-a| ≤ P := by
  apply abs_le.mpr
  constructor <;> linarith

/-- An exact finite-difference formula, so the entire segment is controlled
without an unproved differentiability or interval-derivative claim. -/
theorem homogeneousL_difference (X Y Z X' Y' Z' : ℝ) :
    homogeneousL X Y Z - homogeneousL X' Y' Z' =
      81 * ((X-X')*((Y+Y')+(Z+Z')-(X+X')) +
        (Y-Y')*((X+X')+(Z+Z')-(Y+Y')) +
        (Z-Z')*((X+X')+(Y+Y')-(Z+Z'))) := by
  unfold homogeneousL
  ring

/-- The source constant 162P holds between any two nonnegative Gram triples
whose sums are at most P. All signs of every perturbation are retained. -/
theorem homogeneousL_lipschitz {X Y Z X' Y' Z' P : ℝ}
    (hX : 0 ≤ X) (hY : 0 ≤ Y) (hZ : 0 ≤ Z)
    (hX' : 0 ≤ X') (hY' : 0 ≤ Y') (hZ' : 0 ≤ Z')
    (hp : X+Y+Z ≤ P) (hp' : X'+Y'+Z' ≤ P) :
    |homogeneousL X Y Z - homogeneousL X' Y' Z'| ≤
      162*P*(|X-X'|+|Y-Y'|+|Z-Z'|) := by
  have hcX : |(Y+Y')+(Z+Z')-(X+X')| ≤ 2*P :=
    signed_sum_bound (add_nonneg hX hX') (add_nonneg hY hY')
      (add_nonneg hZ hZ') (by linarith)
  have hcY : |(X+X')+(Z+Z')-(Y+Y')| ≤ 2*P :=
    signed_sum_bound (add_nonneg hY hY') (add_nonneg hX hX')
      (add_nonneg hZ hZ') (by linarith)
  have hcZ : |(X+X')+(Y+Y')-(Z+Z')| ≤ 2*P :=
    signed_sum_bound (add_nonneg hZ hZ') (add_nonneg hX hX')
      (add_nonneg hY hY') (by linarith)
  have htX : |(X-X')*((Y+Y')+(Z+Z')-(X+X'))| ≤ |X-X'| *(2*P) := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left hcX (abs_nonneg _)
  have htY : |(Y-Y')*((X+X')+(Z+Z')-(Y+Y'))| ≤ |Y-Y'| *(2*P) := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left hcY (abs_nonneg _)
  have htZ : |(Z-Z')*((X+X')+(Y+Y')-(Z+Z'))| ≤ |Z-Z'| *(2*P) := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left hcZ (abs_nonneg _)
  rw [homogeneousL_difference, abs_mul]
  rw [abs_of_nonneg (by norm_num : (0:ℝ) ≤ 81)]
  calc
    _ ≤ 81 *
        (|(X-X')*((Y+Y')+(Z+Z')-(X+X'))| +
         |(Y-Y')*((X+X')+(Z+Z')-(Y+Y'))| +
         |(Z-Z')*((X+X')+(Y+Y')-(Z+Z'))|) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      exact le_trans (abs_add_le _ _) (add_le_add (abs_add_le _ _) (le_refl _))
    _ ≤ 81 * (|X-X'| *(2*P)+|Y-Y'| *(2*P)+|Z-Z'| *(2*P)) := by
      exact mul_le_mul_of_nonneg_left (add_le_add (add_le_add htX htY) htZ)
        (by norm_num)
    _ = 162*P*(|X-X'|+|Y-Y'|+|Z-Z'|) := by ring

theorem homogeneousNorm_nonneg (a b : ℝ) : 0 ≤ homogeneousNorm a b := by
  unfold homogeneousNorm
  nlinarith [sq_nonneg a, sq_nonneg b, sq_nonneg (a-b)]

theorem homogeneousNorm_bound {a b ρ : ℝ} (hρ : 0 ≤ ρ)
    (ha : |a| ≤ ρ) (hb : |b| ≤ ρ) : homogeneousNorm a b ≤ 3*ρ^2 := by
  have ha2 := mul_self_le_mul_self (abs_nonneg a) ha
  have hb2 := mul_self_le_mul_self (abs_nonneg b) hb
  have hab : |a*b| ≤ ρ^2 := by
    rw [abs_mul, pow_two]
    exact mul_le_mul ha hb (abs_nonneg b) hρ
  unfold homogeneousNorm
  nlinarith [sq_abs a, sq_abs b, neg_le_abs (a*b)]

/-- The quadratic Gram sum really has the source coefficient 18, including
the two differences whose coordinate radius is 2 rho. -/
theorem quadratic_gram_sum_bound {a b c d ρ : ℝ} (hρ : 0 ≤ ρ)
    (ha : |a| ≤ ρ) (hb : |b| ≤ ρ) (hc : |c| ≤ ρ) (hd : |d| ≤ ρ) :
    homogeneousNorm a b + homogeneousNorm c d +
      homogeneousNorm (c-a) (d-b) ≤ 18*ρ^2 := by
  have hca : |c-a| ≤ 2*ρ := by
    have h : |c-a| ≤ |c|+|a| := by
      simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le c 0 a
    linarith
  have hdb : |d-b| ≤ 2*ρ := by
    have h : |d-b| ≤ |d|+|b| := by
      simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le d 0 b
    linarith
  have h1 := homogeneousNorm_bound hρ ha hb
  have h2 := homogeneousNorm_bound hρ hc hd
  have h3 := homogeneousNorm_bound (show 0 ≤ 2*ρ by linarith) hca hdb
  nlinarith

/-- The same analytic error bound gives the source p <= 19 rho^2 on the
closed radius-1/40 domain, rather than taking this second bound as an input. -/
theorem gram_sum_bound {X Y Z a b c d ρ : ℝ} (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40)
    (ha : |a| ≤ ρ) (hb : |b| ≤ ρ) (hc : |c| ≤ ρ) (hd : |d| ≤ ρ)
    (herror : |X-homogeneousNorm a b| + |Y-homogeneousNorm c d| +
      |Z-homogeneousNorm (c-a) (d-b)| ≤ 35*ρ^3+18*ρ^4) :
    X+Y+Z ≤ 19*ρ^2 := by
  have hquad := quadratic_gram_sum_bound hρ ha hb hc hd
  have hupper : X+Y+Z ≤ 18*ρ^2+35*ρ^3+18*ρ^4 := by
    linarith [le_abs_self (X-homogeneousNorm a b),
      le_abs_self (Y-homogeneousNorm c d),
      le_abs_self (Z-homogeneousNorm (c-a) (d-b))]
  have hcoeff : 18+35*ρ+18*ρ^2 ≤ 19 := by
    calc
      _ ≤ 18+35*((1:ℝ)/40)+18*((1:ℝ)/40)^2 := by gcongr
      _ ≤ 19 := by norm_num
  have hmul := mul_le_mul_of_nonneg_right hcoeff (sq_nonneg ρ)
  nlinarith only [hupper, hmul]

/-- Faithful source L estimate. The analytic phase-to-Gram error remains an
explicit numerical inequality, while its propagation and the quartic bound
are proved here. There is no division by rho, R, or the determinant cone. -/
theorem gram_L_bound {X Y Z a b c d ρ : ℝ} (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40)
    (hX : 0 ≤ X) (hY : 0 ≤ Y) (hZ : 0 ≤ Z)
    (ha : |a| ≤ ρ) (hb : |b| ≤ ρ) (hc : |c| ≤ ρ) (hd : |d| ≤ ρ)
    (herror : |X-homogeneousNorm a b| + |Y-homogeneousNorm c d| +
      |Z-homogeneousNorm (c-a) (d-b)| ≤ 35*ρ^3+18*ρ^4) :
    324*(X*Y+X*Z+Y*Z-X*Y*Z)-81*(X+Y+Z)^2 ≤
      972*ρ^4+107730*ρ^5+55404*ρ^6 := by
  have hp := gram_sum_bound hρ hρ' ha hb hc hd herror
  have hquad := quadratic_gram_sum_bound hρ ha hb hc hd
  have hdiff := homogeneousL_lipschitz hX hY hZ
    (homogeneousNorm_nonneg a b) (homogeneousNorm_nonneg c d)
    (homogeneousNorm_nonneg (c-a) (d-b)) hp
    (show homogeneousNorm a b + homogeneousNorm c d +
      homogeneousNorm (c-a) (d-b) ≤ 19*ρ^2 by nlinarith [sq_nonneg ρ])
  have hmul := mul_le_mul_of_nonneg_left herror
    (show 0 ≤ 162*(19*ρ^2) by positivity)
  have hdiff' : homogeneousL X Y Z -
      homogeneousL (homogeneousNorm a b) (homogeneousNorm c d)
        (homogeneousNorm (c-a) (d-b)) ≤ 107730*ρ^5+55404*ρ^6 := by
    calc
      _ ≤ |homogeneousL X Y Z -
          homogeneousL (homogeneousNorm a b) (homogeneousNorm c d)
            (homogeneousNorm (c-a) (d-b))| := le_abs_self _
      _ ≤ 162*(19*ρ^2)*(35*ρ^3+18*ρ^4) := le_trans hdiff hmul
      _ = 107730*ρ^5+55404*ρ^6 := by ring
  have hquartic := quartic_gram_bound hρ ha hb hc hd
  have hxyz : 0 ≤ X*Y*Z := mul_nonneg (mul_nonneg hX hY) hZ
  have hdrop : 324*(X*Y+X*Z+Y*Z-X*Y*Z)-81*(X+Y+Z)^2 ≤
      homogeneousL X Y Z := by
    unfold homogeneousL
    nlinarith only [hxyz]
  linarith

end
end Centiradian20261006.Ball40Translation20261007

#print axioms Centiradian20261006.Ball40Translation20261007.signed_sum_bound
#print axioms Centiradian20261006.Ball40Translation20261007.homogeneousL_difference
#print axioms Centiradian20261006.Ball40Translation20261007.homogeneousL_lipschitz
#print axioms Centiradian20261006.Ball40Translation20261007.homogeneousNorm_nonneg
#print axioms Centiradian20261006.Ball40Translation20261007.homogeneousNorm_bound
#print axioms Centiradian20261006.Ball40Translation20261007.quadratic_gram_sum_bound
#print axioms Centiradian20261006.Ball40Translation20261007.gram_sum_bound
#print axioms Centiradian20261006.Ball40Translation20261007.gram_L_bound
