import CriticalZeroSumBinaryCertificate
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.CoefficientRow
open CriticalZeroSplitReduction20261003 IntegerReflector
variable {R : Type*} [CommRing R]

def interpret (Y : R) : DenseCoefficients.XY → List R
  | [] => []
  | a::as => evalI Y a::interpret Y as

theorem interpret_add (Y : R) (as bs : DenseCoefficients.XY) :
    interpret Y (Coefficients.add2 as bs)=Coefficients.add (interpret Y as) (interpret Y bs) := by
  induction as generalizing bs with
  | nil => simp [Coefficients.add2,interpret,Coefficients.add]
  | cons a as ih =>
      cases bs with
      | nil => simp [Coefficients.add2,interpret,Coefficients.add]
      | cons b bs => simp [Coefficients.add2,interpret,Coefficients.add,evalI_add,ih]

theorem interpret_neg (Y : R) (as : DenseCoefficients.XY) :
    interpret Y (Coefficients.neg2 as)=Coefficients.neg (interpret Y as) := by
  induction as with
  | nil => simp [Coefficients.neg2,interpret,Coefficients.neg]
  | cons a as ih =>
      simp only [Coefficients.neg2,List.map_cons,interpret,Coefficients.neg,evalI_neg] at *
      rw [ih]

theorem interpret_rowMul (Y : R) (a : List ℤ) (as : DenseCoefficients.XY) :
    interpret Y (rowMul a as)=Coefficients.scale (evalI Y a) (interpret Y as) := by
  induction as with
  | nil => simp [rowMul,interpret,Coefficients.scale]
  | cons b bs ih =>
      simp only [rowMul,List.map_cons,interpret,Coefficients.scale,evalI_mul] at *
      rw [ih]

theorem interpret_mul (Y : R) (as bs : DenseCoefficients.XY) :
    interpret Y (mulII as bs)=
      CriticalZeroSumAssembly20261003.Coefficients.mul (interpret Y as) (interpret Y bs) := by
  induction as with
  | nil => simp [mulII,interpret,CriticalZeroSumAssembly20261003.Coefficients.mul]
  | cons a as ih =>
      simp only [mulII,interpret_add,interpret_rowMul,interpret,evalI,
        CriticalZeroSumAssembly20261003.Coefficients.mul,ih]

theorem interpret_getD (Y : R) (as : DenseCoefficients.XY) (n : ℕ) :
    (interpret Y as).getD n 0=evalI Y (as.getD n []) := by
  induction as generalizing n with
  | nil => simp [interpret,evalI]
  | cons a as ih =>
      cases n with
      | zero => rfl
      | succ n => simpa only [interpret,List.getD_cons_succ] using ih n

theorem eval_getD_add (Y : R) (as bs : DenseCoefficients.XY) (n : ℕ) :
    evalI Y ((Coefficients.add2 as bs).getD n [])=
      evalI Y (as.getD n [])+evalI Y (bs.getD n []) := by
  rw [← interpret_getD,interpret_add,CoefficientAt.getD_add,
    interpret_getD,interpret_getD]

def mulRowAt : DenseCoefficients.XY → DenseCoefficients.XY → ℕ → List ℤ
  | [], _, _ => []
  | a::_, bs, 0 => mulI a (bs.getD 0 [])
  | a::as, bs, n+1 => Coefficients.add (mulI a (bs.getD (n+1) [])) (mulRowAt as bs n)

theorem eval_mulRowAt (Y : R) (as bs : DenseCoefficients.XY) (n : ℕ) :
    evalI Y (mulRowAt as bs n)=
      (CriticalZeroSumAssembly20261003.Coefficients.mul (interpret Y as) (interpret Y bs)).getD n 0 := by
  induction as generalizing n with
  | nil => simp [mulRowAt,interpret,CriticalZeroSumAssembly20261003.Coefficients.mul,evalI]
  | cons a as ih =>
      cases n with
      | zero =>
          simp only [mulRowAt,evalI_mul,interpret,
            CriticalZeroSumAssembly20261003.Coefficients.mul,CoefficientAt.getD_add,CoefficientAt.getD_scale,
            List.getD_cons_zero,interpret_getD,add_zero]
      | succ n =>
          simp only [mulRowAt,evalI_add,evalI_mul,interpret,
            CriticalZeroSumAssembly20261003.Coefficients.mul,CoefficientAt.getD_add,CoefficientAt.getD_scale,
            List.getD_cons_succ,interpret_getD,ih]

theorem eval_mulRowAt_actual (Y : R) (as bs : DenseCoefficients.XY) (n : ℕ) :
    evalI Y (mulRowAt as bs n)=evalI Y ((mulII as bs).getD n []) := by
  rw [← interpret_getD,interpret_mul]
  exact eval_mulRowAt Y as bs n

/-- One row in one coefficient of the three-variable product. Both finite
convolutions retain all contributions, while unused rows are not expanded. -/
def mulAtRow : List DenseCoefficients.XY → List DenseCoefficients.XY → ℕ → ℕ → List ℤ
  | [], _, _, _ => []
  | a::_, bs, 0, i => mulRowAt a (bs.getD 0 []) i
  | a::as, bs, n+1, i => Coefficients.add
      (mulRowAt a (bs.getD (n+1) []) i) (mulAtRow as bs n i)

theorem eval_mulAtRow (Y : R) (as bs : List DenseCoefficients.XY) (n i : ℕ) :
    evalI Y (mulAtRow as bs n i)=
      evalI Y ((CoefficientAt.mulAt as bs n).getD i []) := by
  induction as generalizing n with
  | nil => simp [mulAtRow,CoefficientAt.mulAt,evalI]
  | cons a as ih =>
      cases n with
      | zero => exact eval_mulRowAt_actual Y a (bs.getD 0 []) i
      | succ n =>
          simp only [mulAtRow,CoefficientAt.mulAt,evalI_add,eval_getD_add,
            eval_mulRowAt_actual,ih]

#print axioms interpret_add
#print axioms interpret_neg
#print axioms interpret_rowMul
#print axioms interpret_mul
#print axioms interpret_getD
#print axioms eval_getD_add
#print axioms eval_mulRowAt
#print axioms eval_mulRowAt_actual
#print axioms eval_mulAtRow
end CriticalZeroSumAssembly20261003.CoefficientRow
