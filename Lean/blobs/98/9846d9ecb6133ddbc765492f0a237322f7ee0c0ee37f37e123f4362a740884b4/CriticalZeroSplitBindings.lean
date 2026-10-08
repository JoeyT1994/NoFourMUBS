import CriticalZeroSplitCore
import CriticalZeroSplitting

set_option autoImplicit false
namespace CriticalZeroSplitReduction20261003

theorem existing_A (z K : ℂ) : CriticalZeroSplitting20261003.A z K=A z K := rfl
theorem existing_B (z K : ℂ) : CriticalZeroSplitting20261003.B z K=B z K := rfl
theorem existing_fy (X Y z K : ℂ) :
    CriticalZeroSplitting20261003.fy X Y z K=fy X Y z K := rfl
theorem existing_fx (X z K : ℂ) :
    CriticalZeroSplitting20261003.fx X z K=fx X z K := rfl

#print axioms existing_A
#print axioms existing_B
#print axioms existing_fy
#print axioms existing_fx
end CriticalZeroSplitReduction20261003
