import CriticalZeroSumCommonData
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem eval_base_x (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z [X-9,-3]=dx X z := by
  simp only [CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,remainingModulus]
  ring
#print axioms eval_base_x
theorem eval_base_y (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z [Y-9,-3]=dy Y z := by
  simp only [CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,remainingModulus]
  ring
#print axioms eval_base_y
theorem eval_base_z (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z [X+Y,3,1]=dz X Y z := by
  simp only [CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,remainingModulus]
  ring
#print axioms eval_base_z
theorem eval_base_remaining (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z [9-X-Y,0,-1]=remainingModulus X Y z := by
  simp only [CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,remainingModulus]
  ring
#print axioms eval_base_remaining
theorem eval_base_one (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z [1]=1 := by
  simp only [CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,remainingModulus]
  ring
#print axioms eval_base_one
end
end CriticalZeroSumAssembly20261003
