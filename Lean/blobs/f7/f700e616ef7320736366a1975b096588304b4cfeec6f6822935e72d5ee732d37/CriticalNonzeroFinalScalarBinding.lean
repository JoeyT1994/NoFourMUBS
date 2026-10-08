import CriticalNonzeroFinalResiduals
import CriticalNonzeroLastStepBinding
set_option autoImplicit false
namespace CriticalNonzeroFinalRows20261003
open CriticalZeroSplitReduction20261003 HornerReflector IntegerReflector
open CriticalZeroSumAssembly20261003
open CriticalNonzeroHornerRows20261003 CriticalNonzeroLastStep20261003
noncomputable section
variable {R : Type*} [CommRing R]
def stepH (k : R) : R := 1+k^2
def stepU (k : R) : R := 2*(16-32*stepH k+18*(stepH k)^2)
def stepV (k : R) : R := (9*stepH k-4)*(stepH k)^2

theorem h3_interpret (k K : R) : evalII k K h3Dense=(stepH k)^3 := by
  simp only [h3Dense,HornerReflector.normalize_sound,HornerReflector.value,hExpr,
    Int.cast_one,stepH]
theorem h4_interpret (k K : R) : evalII k K h4ScaledDense=16*(stepH k)^4 := by
  simp only [h4ScaledDense,HornerReflector.normalize_sound,HornerReflector.value,hExpr,
    Int.cast_one,Int.cast_ofNat,Int.cast_neg,stepH]
theorem u_interpret (k K : R) : evalII k K uDense=stepU k := by
  simp only [uDense,HornerReflector.normalize_sound,uExpr,HornerReflector.value,hExpr,
    Int.cast_one,Int.cast_ofNat,Int.cast_neg,stepH,stepU,sub_eq_add_neg]
theorem v_interpret (k K : R) : evalII k K vDense=stepV k := by
  simp only [vDense,HornerReflector.normalize_sound,fxExpr2,HornerReflector.value,hExpr,
    Int.cast_one,Int.cast_ofNat,Int.cast_neg,stepH,stepV,sub_eq_add_neg,neg_neg]
theorem coefficient_equation0 (k K : R) :
    (stepH k)^3*(HornerReflector.value k K beforeExpr0)+(stepH k)^3*(K*(HornerReflector.value k K beforeExpr3))-16*(stepH k)^4*CriticalNonzeroPolynomial20261003.reducedNumerator k K=0 := by
  have he := residual_zero0 k K
  simpa only [residualDense0,DenseCoefficients.interpret_add,DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,
    CriticalZeroSplitReduction20261003.Coefficients.eval_neg,eval_scalar_product,
    DenseCoefficients.interpret_shift,CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    pow_one,h3_interpret,h4_interpret,u_interpret,v_interpret,
    before_binding0,before_binding1,before_binding2,before_binding3,
    target_binding,target_interpret,sub_eq_add_neg,add_assoc] using he
#print axioms coefficient_equation0
theorem coefficient_equation1 (k K : R) :
    (stepH k)^3*(HornerReflector.value k K beforeExpr1)-((stepH k)^3*(K*(HornerReflector.value k K beforeExpr3))+stepU k*(HornerReflector.value k K beforeExpr3))=0 := by
  have he := residual_zero1 k K
  simpa only [residualDense1,DenseCoefficients.interpret_add,DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,
    CriticalZeroSplitReduction20261003.Coefficients.eval_neg,eval_scalar_product,
    DenseCoefficients.interpret_shift,CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    pow_one,h3_interpret,h4_interpret,u_interpret,v_interpret,
    before_binding0,before_binding1,before_binding2,before_binding3,
    target_binding,target_interpret,sub_eq_add_neg,add_assoc] using he
#print axioms coefficient_equation1
theorem coefficient_equation2 (k K : R) :
    (stepH k)^3*(HornerReflector.value k K beforeExpr2)+stepV k*(HornerReflector.value k K beforeExpr3)=0 := by
  have he := residual_zero2 k K
  simpa only [residualDense2,DenseCoefficients.interpret_add,DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,
    CriticalZeroSplitReduction20261003.Coefficients.eval_neg,eval_scalar_product,
    DenseCoefficients.interpret_shift,CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    pow_one,h3_interpret,h4_interpret,u_interpret,v_interpret,
    before_binding0,before_binding1,before_binding2,before_binding3,
    target_binding,target_interpret,sub_eq_add_neg,add_assoc] using he
#print axioms coefficient_equation2
theorem coefficient_equation3 (k K : R) :
    (stepH k)^3*(HornerReflector.value k K beforeExpr3)-(stepH k)^3*(HornerReflector.value k K beforeExpr3)=0 := by
  have he := residual_zero3 k K
  simpa only [residualDense3,DenseCoefficients.interpret_add,DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,
    CriticalZeroSplitReduction20261003.Coefficients.eval_neg,eval_scalar_product,
    DenseCoefficients.interpret_shift,CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    pow_one,h3_interpret,h4_interpret,u_interpret,v_interpret,
    before_binding0,before_binding1,before_binding2,before_binding3,
    target_binding,target_interpret,sub_eq_add_neg,add_assoc] using he
#print axioms coefficient_equation3
#print axioms h3_interpret
#print axioms h4_interpret
#print axioms u_interpret
#print axioms v_interpret
end
end CriticalNonzeroFinalRows20261003
