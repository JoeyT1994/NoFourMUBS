import NoFourMUBs.Reuse.Archive.CriticalZeroPoles

set_option autoImplicit false
namespace CriticalScalarReduction20261003
noncomputable section

/-- Each literal modulus is a root of the surviving repeated-root cubic.
The product equation is explicit; it is not inferred from scalar bounds. -/
theorem zero_modulus_root (z X Y Z : ℝ)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2)
    (hprod : X*Y*Z=(1-z)*(z+3)^3) :
    X=z+3 ∨ X=(1-z)*(z+3) := by
  have hv : X^3-(X+Y+Z)*X^2+(X*Y+X*Z+Y*Z)*X-X*Y*Z=0 := by ring
  have hpair : X*Y+X*Z+Y*Z=z^2*(z+3)^2+(1-z)*(z+3)^3 := by
    linear_combination hw+hprod
  rw [hp,hpair,hprod,zero_surviving_modulus_cubic] at hv
  rcases mul_eq_zero.mp hv with hx | hx
  · have hmul : (X-(z+3))*(X-(z+3))=0 := by simpa only [pow_two] using hx
    rcases mul_eq_zero.mp hmul with hx | hx
    · exact Or.inl (sub_eq_zero.mp hx)
    · exact Or.inl (sub_eq_zero.mp hx)
  · exact Or.inr (sub_eq_zero.mp hx)

/-- Coincident roots a=b are retained. No ordering of the three moduli is fixed. -/
theorem repeated_modulus_assignment (a b X Y Z : ℝ)
    (hX : X=a ∨ X=b) (hY : Y=a ∨ Y=b) (hZ : Z=a ∨ Z=b)
    (hs : X+Y+Z=2*a+b) :
    (X=a ∧ Y=a ∧ Z=b) ∨ (X=a ∧ Y=b ∧ Z=a) ∨ (X=b ∧ Y=a ∧ Z=a) := by
  rcases hX with hx | hx <;> rcases hY with hy | hy <;>
    rcases hZ with hz | hz
  all_goals rw [hx,hy,hz] at hs ⊢
  all_goals first
    | exact Or.inl ⟨rfl,rfl,rfl⟩
    | exact Or.inr (Or.inl ⟨rfl,rfl,rfl⟩)
    | exact Or.inr (Or.inr ⟨rfl,rfl,rfl⟩)
    | have hab : a=b := by linarith
      simp [hab]

/-- The complete three-modulus allocation follows without positivity,
distinctness, or division, once the actual product identity is supplied. -/
theorem zero_moduli_permutation (z X Y Z : ℝ)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2)
    (hprod : X*Y*Z=(1-z)*(z+3)^3) :
    (X=z+3 ∧ Y=z+3 ∧ Z=(1-z)*(z+3)) ∨
    (X=z+3 ∧ Y=(1-z)*(z+3) ∧ Z=z+3) ∨
    (X=(1-z)*(z+3) ∧ Y=z+3 ∧ Z=z+3) := by
  have hx := zero_modulus_root z X Y Z hp hw hprod
  have hy := zero_modulus_root z Y X Z (by linarith)
    (by linear_combination hw) (by linear_combination hprod)
  have hz := zero_modulus_root z Z X Y (by linarith)
    (by linear_combination hw) (by linear_combination hprod)
  exact repeated_modulus_assignment (z+3) ((1-z)*(z+3)) X Y Z hx hy hz
    (by linear_combination hp)

theorem zero_product_parameter_upper (z X Y Z : ℝ)
    (hX : 0≤X) (hY : 0≤Y) (hZ : 0≤Z)
    (hprod : X*Y*Z=(1-z)*(z+3)^3) : z≤1 := by
  by_contra hn
  have hz : 1<z := lt_of_not_ge hn
  have ha : 0<z+3 := by linarith
  have hb : 1-z<0 := by linarith
  have hneg := mul_neg_of_neg_of_pos hb (pow_pos ha 3)
  have hnon := mul_nonneg (mul_nonneg hX hY) hZ
  rw [hprod] at hnon
  linarith

/-- The complete regular scalar tail, conditional on the separately required
physical cleared-square-sum equation. All its exceptional z values are explicit. -/
theorem zero_cleared_square_sum_moduli (z X Y Z : ℝ)
    (hX : 0≤X) (hY : 0≤Y) (hZ : 0≤Z)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2)
    (hS : -3888*z*(z+2)^2*(z+3)^2*(X*Y*Z+(z-1)*(z+3)^3)*
      (z^2*(z+3)^4+(z+2)^2*(X*Y*Z))^2=0) :
    z≤1 ∧ ((X=z+3 ∧ Y=z+3 ∧ Z=(1-z)*(z+3)) ∨
      (X=z+3 ∧ Y=(1-z)*(z+3) ∧ Z=z+3) ∨
      (X=(1-z)*(z+3) ∧ Y=z+3 ∧ Z=z+3)) := by
  have hprod := zero_cleared_square_sum_forces_product z (X*Y*Z)
    (mul_nonneg (mul_nonneg hX hY) hZ) hz0 hz3 hz2 hS
  exact ⟨zero_product_parameter_upper z X Y Z hX hY hZ hprod,
    zero_moduli_permutation z X Y Z hp hw hprod⟩

end
#print axioms zero_modulus_root
#print axioms repeated_modulus_assignment
#print axioms zero_moduli_permutation
#print axioms zero_product_parameter_upper
#print axioms zero_cleared_square_sum_moduli
end CriticalScalarReduction20261003
