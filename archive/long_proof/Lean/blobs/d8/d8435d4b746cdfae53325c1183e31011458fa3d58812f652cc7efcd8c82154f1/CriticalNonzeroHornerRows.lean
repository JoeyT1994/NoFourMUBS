import CriticalZeroSumBinaryCertificate

set_option autoImplicit false
namespace CriticalNonzeroHornerRows20261003
open CriticalZeroSplitReduction20261003 HornerReflector IntegerReflector
open CriticalZeroSumAssembly20261003

def addLeft : HExpr → HExpr
  | .add a _ => a
  | _ => .lit 0
def addRight : HExpr → HExpr
  | .add _ b => b
  | _ => .lit 0
def unshift : HExpr → HExpr
  | .mulY a _ => a
  | _ => .lit 0

/-- Structural row extraction. No generic correctness is assumed: each
concrete input must separately satisfy `build (extract n e) = e`. -/
def extract : ℕ → HExpr → List HExpr
  | 0, e => [e]
  | n+1, e => addRight e::extract n (unshift (addLeft e))

def build : List HExpr → HExpr
  | [] => .lit 0
  | [a] => a
  | a::b::as => .add (.mulY (build (b::as)) 1) a

noncomputable section
variable {R : Type*} [CommRing R]

theorem value_build (k K : R) (as : List HExpr) :
    HornerReflector.value k K (build as)=
      CriticalZeroSplitReduction20261003.Coefficients.eval K (ExprCoefficients.interpret k K as) := by
  induction as with
  | nil => simp [build,HornerReflector.value,CriticalZeroSplitReduction20261003.Coefficients.eval,ExprCoefficients.interpret]
  | cons a as ih =>
      cases as with
      | nil => simp [build,HornerReflector.value,CriticalZeroSplitReduction20261003.Coefficients.eval,ExprCoefficients.interpret]
      | cons b bs =>
          simp only [build,HornerReflector.value,pow_one,ih,
            CriticalZeroSplitReduction20261003.Coefficients.eval,ExprCoefficients.interpret]
          ring

theorem dense_extract_value (k K : R) (e : HExpr) (n : ℕ)
    (he : build (extract n e)=e) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K (DenseCoefficients.fromExpr (extract n e)))=HornerReflector.value k K e := by
  rw [DenseCoefficients.interpret_fromExpr,← value_build,he]

theorem getD_neg (as : List R) (n : ℕ) :
    (CriticalZeroSplitReduction20261003.Coefficients.neg as).getD n 0= -(as.getD n 0) := by
  induction as generalizing n with
  | nil => simp [CriticalZeroSplitReduction20261003.Coefficients.neg]
  | cons a as ih =>
      cases n with
      | zero => rfl
      | succ n => simpa only [CriticalZeroSplitReduction20261003.Coefficients.neg,List.map_cons,List.getD_cons_succ] using ih n

/-- A constant-in-the-outer-variable product is still interpreted through
the shared binary convolution semantics. -/
theorem eval_scalar_product (k K : R) (c : DenseCoefficients.XY)
    (as : List DenseCoefficients.XY) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K (DenseCoefficients.mul [c] as))=
      evalII k K c*CriticalZeroSplitReduction20261003.Coefficients.eval K
        (DenseCoefficients.interpret k K as) := by
  rw [DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul]
  have hc : CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K [c])=evalII k K c := by
    simp [DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval]
  rw [hc]

end
#print axioms value_build
#print axioms dense_extract_value
#print axioms getD_neg
#print axioms eval_scalar_product
end CriticalNonzeroHornerRows20261003
