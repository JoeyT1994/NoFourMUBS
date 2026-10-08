import CriticalZeroParam

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

end
#print axioms zero_no_modulus_pole
#print axioms zero_all_moment_denominators
end CriticalScalarReduction20261003
