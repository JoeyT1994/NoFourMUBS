import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.CoefficientAt
open CriticalZeroSplitReduction20261003 IntegerReflector
variable {R : Type*} [CommRing R]

theorem getD_add (as bs : List R) (n : ℕ) :
    (Coefficients.add as bs).getD n 0=as.getD n 0+bs.getD n 0 := by
  induction as generalizing bs n with
  | nil => simp [Coefficients.add]
  | cons a as ih =>
      cases bs with
      | nil => simp [Coefficients.add]
      | cons b bs =>
          cases n with
          | zero => rfl
          | succ n => exact ih bs n

theorem getD_scale (a : R) (as : List R) (n : ℕ) :
    (Coefficients.scale a as).getD n 0=a*as.getD n 0 := by
  induction as generalizing n with
  | nil => simp [Coefficients.scale]
  | cons b bs ih =>
      cases n with
      | zero => rfl
      | succ n => exact ih n

def mulAt : List DenseCoefficients.XY → List DenseCoefficients.XY → ℕ → DenseCoefficients.XY
  | [], _, _ => []
  | a::_, bs, 0 => mulII a (bs.getD 0 [])
  | a::as, bs, n+1 => Coefficients.add2 (mulII a (bs.getD (n+1) [])) (mulAt as bs n)

/-- Compute just the requested outer coefficient, never the unused tail of
the full product. Its value is the actual scalar convolution coefficient. -/
theorem eval_mulAt (X Y : R) (as bs : List DenseCoefficients.XY) (n : ℕ) :
    evalII X Y (mulAt as bs n)=
    (CriticalZeroSumAssembly20261003.Coefficients.mul
      (DenseCoefficients.interpret X Y as) (DenseCoefficients.interpret X Y bs)).getD n 0 := by
  induction as generalizing n with
  | nil => simp [mulAt,DenseCoefficients.interpret,
      CriticalZeroSumAssembly20261003.Coefficients.mul,evalII]
  | cons a as ih =>
      cases n with
      | zero =>
          simp only [mulAt,evalII_mul,DenseCoefficients.interpret,
            CriticalZeroSumAssembly20261003.Coefficients.mul,getD_add,getD_scale,
            List.getD_cons_zero,DenseCoefficients.interpret_getD,add_zero]
      | succ n =>
          simp only [mulAt,evalII_add,evalII_mul,DenseCoefficients.interpret,
            CriticalZeroSumAssembly20261003.Coefficients.mul,getD_add,getD_scale,
            List.getD_cons_succ,DenseCoefficients.interpret_getD,ih]

#print axioms getD_add
#print axioms getD_scale
#print axioms eval_mulAt
end CriticalZeroSumAssembly20261003.CoefficientAt
