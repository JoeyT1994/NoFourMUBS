import NoFourMUBs.Reuse.Archive.CriticalZeroSplitReduction
import NoFourMUBs.Reuse.Archive.CriticalZeroModuliInputs
import NoFourMUBs.Reuse.Archive.CriticalZeroModuli

set_option autoImplicit false
namespace CriticalZeroPhysicalInputs20261003
open CriticalZeroSplitReduction20261003
noncomputable section

/-- The checked raw factorization supplies the already proved scalar moduli
tail. The raw numerator zero is an explicit input until the separate finite
computed-to-raw identification is finished. Every exceptional parameter stays
visible; the third squared correlation is allowed to vanish. -/
theorem raw_zero_moduli_from_inputs (z X Y Z : ℝ)
    (hX : 0≤X) (hY : 0≤Y) (hZ : 0≤Z)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hI : Inputs (X : ℂ) Y Z z (X*Y*Z : ℝ))
    (hn : rawNumerator (X : ℂ) Y z=0) :
    z≤1 ∧ ((X=z+3 ∧ Y=z+3 ∧ Z=(1-z)*(z+3)) ∨
      (X=z+3 ∧ Y=(1-z)*(z+3) ∧ Z=z+3) ∨
      (X=(1-z)*(z+3) ∧ Y=z+3 ∧ Z=z+3)) := by
  have hq := raw_fraction_split (X : ℂ) Y z (X*Y*Z : ℝ)
    hI.fy_zero hI.fx_zero hI.z_ne hI.A_ne
  rw [hn,zero_div] at hq
  have hS := (div_eq_iff (pow_ne_zero 3 hI.A_ne)).mp hq.symm
  simp only [zero_mul,B] at hS
  have hSr : -3888*z*(z+2)^2*(z+3)^2*(X*Y*Z+(z-1)*(z+3)^3)*
      (z^2*(z+3)^4+(z+2)^2*(X*Y*Z))^2=0 := by
    exact_mod_cast hS
  have hp : X+Y+Z=9-z^2 := by exact_mod_cast hI.sum
  have hw' : X*Y+X*Z+Y*Z=z^2*(z+3)^2+X*Y*Z := by
    exact_mod_cast hI.pairs
  exact CriticalScalarReduction20261003.zero_cleared_square_sum_moduli z X Y Z
    hX hY hZ hz0 hz3 hz2 hp (by linarith) hSr

end
#print axioms raw_zero_moduli_from_inputs
end CriticalZeroPhysicalInputs20261003
