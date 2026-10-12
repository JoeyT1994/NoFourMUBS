import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.DenseCoefficients

theorem length_fromExpr (as : List CriticalZeroSplitReduction20261003.HornerReflector.HExpr) :
    (fromExpr as).length=as.length := by
  induction as with
  | nil => rfl
  | cons a as ih => simp only [fromExpr,List.length_cons,ih]

theorem length_add (as bs : List XY) : (add as bs).length=max as.length bs.length := by
  induction as generalizing bs with
  | nil => simp [add]
  | cons a as ih =>
      cases bs with
      | nil => simp [add]
      | cons b bs => simp only [add,List.length_cons,ih]; omega

theorem length_scale (a : XY) (as : List XY) : (scale a as).length=as.length := by
  induction as with
  | nil => rfl
  | cons b bs ih => simp only [scale,List.length_cons,ih]

theorem length_mul_cons (a : XY) (as bs : List XY) (hb : bs≠[]) :
    (mul (a::as) bs).length=as.length+bs.length := by
  have hb' : 0<bs.length := by cases bs <;> simp_all
  induction as generalizing a with
  | nil =>
      rw [mul,length_add,length_scale]
      simp only [mul,List.length_cons,List.length_nil]
      omega
  | cons b as ih =>
      rw [mul,length_add,length_scale,List.length_cons,ih]
      simp only [List.length_cons]
      omega

theorem length_mul (as bs : List XY) (ha : as≠[]) (hb : bs≠[]) :
    (mul as bs).length=as.length+bs.length-1 := by
  cases as with
  | nil => exact False.elim (ha rfl)
  | cons a as => rw [length_mul_cons a as bs hb,List.length_cons]; omega

#print axioms length_fromExpr
#print axioms length_add
#print axioms length_scale
#print axioms length_mul_cons
#print axioms length_mul
end CriticalZeroSumAssembly20261003.DenseCoefficients
