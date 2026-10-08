import CriticalZeroSumCoefficientOps

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.Conditional.CoefficientProducts
open CriticalZeroSplitReduction20261003.Coefficients
variable {R : Type*} [CommRing R]

/-- Multiplication by one inner coefficient list, reusing the checked scalar
list convolution. -/
def rowMul (as : List R) (bs : List (List R)) : List (List R) :=
  bs.map (CriticalZeroSumAssembly20261003.Coefficients.mul as)

def mul2 : List (List R) → List (List R) → List (List R)
  | [], _ => []
  | a::as, bs => add2 (rowMul a bs) ([]::mul2 as bs)

theorem eval2_rowMul (K z : R) (as : List R) (bs : List (List R)) :
    eval2 K z (rowMul as bs)=eval z as*eval2 K z bs := by
  induction bs with
  | nil => simp [rowMul,eval2]
  | cons b bs ih =>
      simp only [rowMul,List.map_cons,eval2,
        CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at *
      rw [ih]
      ring

/-- Both convolution levels are evaluated, including all zero padding. -/
theorem eval2_mul2 (K z : R) (as bs : List (List R)) :
    eval2 K z (mul2 as bs)=eval2 K z as*eval2 K z bs := by
  induction as with
  | nil => simp [mul2,eval2]
  | cons a as ih =>
      simp only [mul2,eval2_add,eval2_rowMul,eval2,eval,zero_add,ih]
      ring

#print axioms eval2_rowMul
#print axioms eval2_mul2
end CriticalZeroSumAssembly20261003.Conditional.CoefficientProducts
