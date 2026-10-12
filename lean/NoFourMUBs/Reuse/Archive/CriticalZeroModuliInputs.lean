import NoFourMUBs.Step2.CriticalZero.MomentData
import NoFourMUBs.Reuse.Archive.CriticalZeroSplitting

set_option autoImplicit false
namespace CriticalZeroPhysicalInputs20261003
open CriticalPhysical20261003 CriticalZeroSplitting20261003
noncomputable section

/-- Explicit prerequisites shared by the finite moment and splitting checks.
Z is retained as the third original squared correlation modulus. -/
structure Inputs (X Y Z z K : ℂ) : Prop where
  X_ne : X≠0
  Y_ne : Y≠0
  z_ne : z≠0
  Dx_ne : X-3*z-9≠0
  Dy_ne : Y-3*z-9≠0
  Dz_ne : X+Y+z^2+3*z≠0
  sum : X+Y+Z=9-z^2
  pairs : X*Y+X*Z+Y*Z=z^2*(z+3)^2+K
  product : X*Y*Z=K
  fy_zero : fy X Y z K=0
  fx_zero : fx X z K=0
  A_ne : A z K≠0

/-- The actual squared moduli provide every splitting input and nonpole
condition. No nonzero third correlation or distinct-root hypothesis is used. -/
theorem moment_inputs (s t r : ℂ) (z : ℝ)
    (hs : s≠0) (ht : t≠0)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : momentP s t r=9-z^2) (hw : momentW s t r=z^2*(z+3)^2) :
    let X := Complex.normSq s
    let Y := Complex.normSq t
    let Z := Complex.normSq r
    Inputs (X : ℂ) (Y : ℂ) (Z : ℂ) (z : ℂ) (X*Y*Z : ℝ) := by
  let X := Complex.normSq s
  let Y := Complex.normSq t
  let Z := Complex.normSq r
  let K := X*Y*Z
  have hsum : X+Y+Z=9-z^2 := hp
  have hpairs : X*Y+X*Z+Y*Z=z^2*(z+3)^2+K := by
    change X*Y+X*Z+Y*Z-K=z^2*(z+3)^2 at hw
    linarith
  have hproducts := CriticalScalarReduction20261003.zero_all_moment_denominators
    z X Y Z (Complex.normSq_nonneg s) (Complex.normSq_nonneg t)
    (Complex.normSq_nonneg r) hzlo hz0 hz3 hz2 hsum hw
  have ha : 3*z+9-X≠0 := (mul_ne_zero_iff.mp hproducts.1).2
  have hb : 3*z+9-Y≠0 := (mul_ne_zero_iff.mp hproducts.2.1).2
  have hc : 3*z+9-Z≠0 := (mul_ne_zero_iff.mp hproducts.2.2).2
  have hX : (X : ℂ)≠0 := by
    apply Complex.ofReal_ne_zero.mpr
    exact (Complex.normSq_pos.mpr hs).ne'
  have hY : (Y : ℂ)≠0 := by
    apply Complex.ofReal_ne_zero.mpr
    exact (Complex.normSq_pos.mpr ht).ne'
  have hpc : (X : ℂ)+Y+Z=9-(z : ℂ)^2 := by exact_mod_cast hsum
  have hwc : (X : ℂ)*Y+X*Z+Y*Z=(z : ℂ)^2*(z+3)^2+K := by
    exact_mod_cast hpairs
  have hkc : (X : ℂ)*Y*Z=(K : ℂ) := by simp [K]
  have hsplit := splitting_relations (X : ℂ) Y Z z K hpc hwc hkc
  have hac : 3*(z : ℂ)+9-X≠0 := by exact_mod_cast ha
  have hbc : 3*(z : ℂ)+9-Y≠0 := by exact_mod_cast hb
  have hcc : 3*(z : ℂ)+9-Z≠0 := by exact_mod_cast hc
  have hA : A (z : ℂ) K≠0 := by
    rw [← shifted_product (X : ℂ) Y Z z K hpc hwc hkc]
    exact mul_ne_zero (mul_ne_zero hac hbc) hcc
  change Inputs (X : ℂ) Y Z z K
  refine ⟨hX,hY,Complex.ofReal_ne_zero.mpr hz0,?_,?_,?_,hpc,hwc,hkc,
    hsplit.1,hsplit.2,hA⟩
  · intro h
    apply hac
    linear_combination -h
  · intro h
    apply hbc
    linear_combination -h
  · intro h
    apply hcc
    linear_combination h-hpc

/-- The actual overlap equation gives exactly the quadratic expected by the
36 finite moment checks, using the already established nonzero X. -/
theorem quadratic_from_product (X Y z r : ℂ) (hX : X≠0)
    (h : r*(-r*Y/X)=9-z^2-X-Y) :
    Y*r^2= -X*(9-z^2-X-Y) := by
  have hm := (div_eq_iff hX).mp (show (r*(-r*Y))/X=9-z^2-X-Y by
    simpa only [mul_div_assoc] using h)
  linear_combination -hm

end
#print axioms moment_inputs
#print axioms quadratic_from_product
end CriticalZeroPhysicalInputs20261003
