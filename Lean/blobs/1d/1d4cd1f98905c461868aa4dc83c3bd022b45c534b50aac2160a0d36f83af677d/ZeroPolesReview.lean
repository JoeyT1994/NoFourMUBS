import CriticalZeroPoles

set_option autoImplicit false
namespace ZeroPolesIndependentReview20261003
open CriticalScalarReduction20261003
noncomputable section

theorem literal_denominator_product (z X Y Z : ℝ)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2) :
    (3*z+9-X)*(3*z+9-Y)*(3*z+9-Z) =
      3*z*(z+3)^4+(3*z+8)*(X*Y*Z) :=
  zero_denominator_product z X Y Z hp hw

theorem literal_nonzero_domain (z X Y Z : ℝ)
    (hX : 0≤X) (hY : 0≤Y) (hZ : 0≤Z) (hzlo : -3≤z)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z-X*Y*Z=z^2*(z+3)^2) :
    z*(3*z+9-X)≠0 ∧ z*(3*z+9-Y)≠0 ∧ z*(3*z+9-Z)≠0 ∧
      3*z*(z+3)^4+(3*z+8)*(X*Y*Z)≠0 := by
  obtain ⟨hx,hy,hz⟩ := zero_all_moment_denominators z X Y Z
    hX hY hZ hzlo hz0 hz3 hz2 hp hw
  exact ⟨hx,hy,hz,zero_scalar_denominator_nonzero z X Y Z
    hX hY hZ hzlo hz0 hz3 hz2 hp hw⟩

theorem zero_correlation_retained (z Y Z : ℝ)
    (hY : 0≤Y) (hZ : 0≤Z) (hzlo : -3≤z)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : Y+Z=9-z^2) (hw : Y*Z=z^2*(z+3)^2) :
    z*(3*z+9)≠0 ∧ z*(3*z+9-Y)≠0 ∧ z*(3*z+9-Z)≠0 := by
  have h := zero_all_moment_denominators z 0 Y Z
    (by norm_num) hY hZ hzlo hz0 hz3 hz2
    (by simpa using hp) (by simpa using hw)
  simpa using h

theorem all_three_exceptional_poles :
    ((0:ℝ)+0+0=9-(-3)^2 ∧
      (0:ℝ)*0+0*0+0*0-0*0*0=(-3)^2*(-3+3)^2 ∧ 3*(-3:ℝ)+9-0=0) ∧
    ((3:ℝ)+1+1=9-(-2)^2 ∧
      (3:ℝ)*1+3*1+1*1-3*1*1=(-2)^2*(-2+3)^2 ∧ 3*(-2:ℝ)+9-3=0) ∧
    ((9:ℝ)+0+0=9-0^2 ∧
      (9:ℝ)*0+9*0+0*0-9*0*0=0^2*(0+3)^2 ∧ (0:ℝ)*(3*0+9-9)=0) := by
  norm_num

theorem product_requires_cleared_equation (z K : ℝ) (hK : 0≤K)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (h : -3888*z*(z+2)^2*(z+3)^2*(K+(z-1)*(z+3)^3)*
      (z^2*(z+3)^4+(z+2)^2*K)^2=0) :
    K=(1-z)*(z+3)^3 :=
  zero_cleared_square_sum_forces_product z K hK hz0 hz3 hz2 h

theorem product_not_forced_by_nonnegative_K :
    ∃ z K : ℝ, -3≤z ∧ z≤3 ∧ 0≤K ∧ z≠0 ∧ z≠ -3 ∧ z≠ -2 ∧
      K≠(1-z)*(z+3)^3 := by
  refine ⟨-1,0,?_⟩
  norm_num

theorem repeated_modulus_roots (z T : ℝ)
    (h : T^3-(9-z^2)*T^2+
      (z^2*(z+3)^2+(1-z)*(z+3)^3)*T-(1-z)*(z+3)^3=0) :
    T=z+3 ∨ T=(1-z)*(z+3) := by
  rw [zero_surviving_modulus_cubic] at h
  rcases mul_eq_zero.mp h with hs | hl
  · left
    nlinarith only [hs]
  · right
    linarith

end
end ZeroPolesIndependentReview20261003
#print axioms ZeroPolesIndependentReview20261003.literal_denominator_product
#print axioms ZeroPolesIndependentReview20261003.literal_nonzero_domain
#print axioms ZeroPolesIndependentReview20261003.zero_correlation_retained
#print axioms ZeroPolesIndependentReview20261003.all_three_exceptional_poles
#print axioms ZeroPolesIndependentReview20261003.product_requires_cleared_equation
#print axioms ZeroPolesIndependentReview20261003.product_not_forced_by_nonnegative_K
#print axioms ZeroPolesIndependentReview20261003.repeated_modulus_roots
