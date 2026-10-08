import CriticalZeroModuliInputs
import CriticalZeroComputedEquation
set_option autoImplicit false
namespace CriticalZeroPhysicalInputs20261003
open CriticalNewtonGauge20261003 CriticalZeroRational20261003
open CriticalZeroSumAssembly20261003

/-- A scalar composition accepting the exact bundle supplied by the original
physical endpoint. The scalar zero equation is explicit here and must be
discharged by the actual-matrix consumer. -/
theorem computed_from_input_bundle (X Y Z z K r : ℂ)
    (h : Inputs X Y Z z K ∧
      Y*r^2= -X*(9-z^2-X-Y) ∧
      pureNewtonPolynomial66 (zeroSide X Y z r 1)
        (zeroSide X Y z r (-1))=0) :
    Inputs X Y Z z K ∧ computedNumerator X Y z=0 ∧ commonDenominator X Y z≠0 :=
  ⟨h.1,computed_zero_from_original X Y z r
    h.1.X_ne h.1.Y_ne h.1.z_ne h.1.Dx_ne h.1.Dy_ne h.1.Dz_ne h.2.1 h.2.2⟩

#print axioms computed_from_input_bundle
end CriticalZeroPhysicalInputs20261003
