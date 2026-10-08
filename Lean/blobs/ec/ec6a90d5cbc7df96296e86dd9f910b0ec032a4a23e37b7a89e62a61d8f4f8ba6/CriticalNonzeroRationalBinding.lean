import CriticalNonzeroSplitting
import CriticalRationalSideData

set_option autoImplicit false
namespace CriticalNonzeroRational20261003
open CriticalNewtonGauge20261003
noncomputable section

theorem signed_input_moduli (X Y k r sign : ℂ) (hX : X≠0) (hs : sign^2=1)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    sign*(sign*X)=X ∧ sign*(sign*Y)=Y ∧
      (sign*r)*(sign*((J k-r*Y)/X))=p k-X-Y := by
  have hr : r*((J k-r*Y)/X)=p k-X-Y := by
    rw [← mul_div_assoc]
    apply (div_eq_iff hX).mpr
    linear_combination -hq
  constructor
  · calc
      sign*(sign*X)=sign^2*X := by ring
      _=X := by rw [hs,one_mul]
  constructor
  · calc
      sign*(sign*Y)=sign^2*Y := by ring
      _=Y := by rw [hs,one_mul]
  · calc
      (sign*r)*(sign*((J k-r*Y)/X))=sign^2*(r*((J k-r*Y)/X)) := by ring
      _=p k-X-Y := by rw [hs,one_mul,hr]

/-- Exact binding to the independently checked generic rational-side
interface. It preserves all six signed slots and both complementary sheet
choices. Physical reconstruction still requires that interface's guards. -/
theorem rationalSide_nonzeroSide (X Y k r sign : ℂ) (hX : X≠0) (hs : sign^2=1)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    rationalSide sign (sign*X) sign (sign*Y) (sign*r)
      (sign*((J k-r*Y)/X)) (sheet k sign) (gram k sign)=
      nonzeroSide X Y k r sign := by
  obtain ⟨hxm,hym,hrm⟩ := signed_input_moduli X Y k r sign hX hs hq
  unfold rationalSide rationalNumerator rationalConumerator rationalDenominator nonzeroSide
  simp only [Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_fin_one]
  rw [hxm,hym,hrm]
  rfl

end
#print axioms signed_input_moduli
#print axioms rationalSide_nonzeroSide
end CriticalNonzeroRational20261003
