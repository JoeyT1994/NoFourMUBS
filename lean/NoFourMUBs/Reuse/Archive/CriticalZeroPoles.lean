import NoFourMUBs.Reuse.Archive.CriticalZeroParam

set_option autoImplicit false
namespace CriticalScalarReduction20261003
noncomputable section

/-- Physical nonnegative moduli prohibit a zero-J moment denominator away from
z=-3,-2,0. No correlation is divided out in this proof. -/
theorem zero_no_modulus_pole (z X Y Z : ℝ)
    (hY : 0≤Y) (hZ : 0≤Z) (hzlo : -3≤z)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2) : X≠3*z+9 := by
  intro hX
  subst X
  have hs : Y+Z= -z*(z+3) := by linear_combination hp
  have hz3pos : 0<z+3 := by
    have hh : -3<z := lt_of_le_of_ne hzlo (Ne.symm hz3)
    linarith
  have hznonpos : z≤0 := by nlinarith [add_nonneg hY hZ]
  have hzneg : z<0 := lt_of_le_of_ne hznonpos hz0
  have hprod : (3*z+8)*(Y*Z)= -z*(z+3)^3 := by
    linear_combination -hw + (3*z+9)*hs
  have hright : 0< -z*(z+3)^3 := mul_pos (neg_pos.mpr hzneg) (pow_pos hz3pos 3)
  have hden : 0<3*z+8 := by
    by_contra hn
    have hdenle : 3*z+8≤0 := le_of_not_gt hn
    have := mul_nonpos_of_nonpos_of_nonneg hdenle (mul_nonneg hY hZ)
    linarith
  have hs2 : (Y+Z)^2=z^2*(z+3)^2 := by rw [hs]; ring
  have hd : (3*z+8)*(Y-Z)^2=3*z*(z+2)^2*(z+3)^2 := by
    linear_combination (3*z+8)*hs2 - 4*hprod
  have htwo : 0<(z+2)^2 := sq_pos_of_ne_zero (by intro hh; apply hz2; linarith)
  have hthree : 0<(z+3)^2 := sq_pos_of_ne_zero (ne_of_gt hz3pos)
  have hrneg : 3*z*(z+2)^2*(z+3)^2<0 :=
    mul_neg_of_neg_of_pos (mul_neg_of_neg_of_pos (by linarith) htwo) hthree
  have hl := mul_nonneg (le_of_lt hden) (sq_nonneg (Y-Z))
  linarith

/-- All three literal factors used by the zero-J moment formulas are nonzero.
Zero correlations are allowed; only the three explicitly separate z strata are removed. -/
theorem zero_all_moment_denominators (z X Y Z : ℝ)
    (hX : 0≤X) (hY : 0≤Y) (hZ : 0≤Z) (hzlo : -3≤z)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2) :
    z*(3*z+9-X)≠0 ∧ z*(3*z+9-Y)≠0 ∧ z*(3*z+9-Z)≠0 := by
  have hx := zero_no_modulus_pole z X Y Z hY hZ hzlo hz0 hz3 hz2 hp hw
  have hy := zero_no_modulus_pole z Y X Z hX hZ hzlo hz0 hz3 hz2
    (by linarith) (by linear_combination hw)
  have hz := zero_no_modulus_pole z Z X Y hX hY hzlo hz0 hz3 hz2
    (by linarith) (by linear_combination hw)
  exact ⟨mul_ne_zero hz0 (sub_ne_zero.mpr (Ne.symm hx)),
    mul_ne_zero hz0 (sub_ne_zero.mpr (Ne.symm hy)),
    mul_ne_zero hz0 (sub_ne_zero.mpr (Ne.symm hz))⟩


/-- Exact scalar form of the denominator product; no division or nonzero premise. -/
theorem zero_denominator_product (z X Y Z : ℝ)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2) :
    (3*z+9-X)*(3*z+9-Y)*(3*z+9-Z)=3*z*(z+3)^4+(3*z+8)*(X*Y*Z) := by
  linear_combination -(3*z+9)^2*hp+(3*z+9)*hw

theorem zero_scalar_denominator_nonzero (z X Y Z : ℝ)
    (hX : 0≤X) (hY : 0≤Y) (hZ : 0≤Z) (hzlo : -3≤z)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2) :
    3*z*(z+3)^4+(3*z+8)*(X*Y*Z)≠0 := by
  have hs := zero_all_moment_denominators z X Y Z hX hY hZ hzlo hz0 hz3 hz2 hp hw
  rw [← zero_denominator_product z X Y Z hp hw]
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero_iff.mp hs.1).2
    (mul_ne_zero_iff.mp hs.2.1).2) (mul_ne_zero_iff.mp hs.2.2).2

theorem zero_second_factor_positive (z K : ℝ) (hK : 0≤K)
    (hz0 : z≠0) (hz3 : z≠ -3) :
    0<z^2*(z+3)^4+(z+2)^2*K := by
  have hz3' : z+3≠0 := by intro h; apply hz3; linarith
  have hfirst := mul_pos (sq_pos_of_ne_zero hz0) (pow_pos (sq_pos_of_ne_zero hz3') 2)
  have hsecond := mul_nonneg (sq_nonneg (z+2)) hK
  nlinarith only [hfirst,hsecond]

/-- After the separately required physical square-sum identity has been
established, all other factors are nonzero on this exact stratum. -/
theorem zero_cleared_square_sum_forces_product (z K : ℝ) (hK : 0≤K)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (h : -3888*z*(z+2)^2*(z+3)^2*(K+(z-1)*(z+3)^3)*
      (z^2*(z+3)^4+(z+2)^2*K)^2=0) : K=(1-z)*(z+3)^3 := by
  have htwo : z+2≠0 := by intro hh; apply hz2; linarith
  have hthree : z+3≠0 := by intro hh; apply hz3; linarith
  have hp := zero_second_factor_positive z K hK hz0 hz3
  have hlead : (-3888:ℝ)*z*(z+2)^2*(z+3)^2≠0 :=
    mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) hz0)
      (pow_ne_zero 2 htwo)) (pow_ne_zero 2 hthree)
  have hmid := (mul_eq_zero.mp h).resolve_right (pow_ne_zero 2 (ne_of_gt hp))
  have he := (mul_eq_zero.mp hmid).resolve_left hlead
  linarith

/-- The surviving product gives the literal repeated-root modulus cubic. -/
theorem zero_surviving_modulus_cubic (z T : ℝ) :
    T^3-(9-z^2)*T^2+(z^2*(z+3)^2+(1-z)*(z+3)^3)*T-(1-z)*(z+3)^3 =
      (T-(z+3))^2*(T-(1-z)*(z+3)) := by ring

end
#print axioms zero_no_modulus_pole
#print axioms zero_all_moment_denominators
#print axioms zero_denominator_product
#print axioms zero_scalar_denominator_nonzero
#print axioms zero_second_factor_positive
#print axioms zero_cleared_square_sum_forces_product
#print axioms zero_surviving_modulus_cubic
end CriticalScalarReduction20261003
