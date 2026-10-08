import CriticalNonzeroHornerRows
import CriticalNonzeroLastStepData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroFinalRows20261003
open CriticalZeroSplitReduction20261003 HornerReflector IntegerReflector
open CriticalZeroSumAssembly20261003
open CriticalNonzeroHornerRows20261003 CriticalNonzeroLastStep20261003
def beforeRows0 : List HExpr := extract 15 beforeExpr0
def beforeDense0 : List DenseCoefficients.XY := DenseCoefficients.fromExpr beforeRows0
theorem before_reconstruct0 : build beforeRows0=beforeExpr0 := by rfl
def beforeRows1 : List HExpr := extract 15 beforeExpr1
def beforeDense1 : List DenseCoefficients.XY := DenseCoefficients.fromExpr beforeRows1
theorem before_reconstruct1 : build beforeRows1=beforeExpr1 := by rfl
def beforeRows2 : List HExpr := extract 14 beforeExpr2
def beforeDense2 : List DenseCoefficients.XY := DenseCoefficients.fromExpr beforeRows2
theorem before_reconstruct2 : build beforeRows2=beforeExpr2 := by rfl
def beforeRows3 : List HExpr := extract 14 beforeExpr3
def beforeDense3 : List DenseCoefficients.XY := DenseCoefficients.fromExpr beforeRows3
theorem before_reconstruct3 : build beforeRows3=beforeExpr3 := by rfl
def targetRows : List HExpr := extract 10 targetExpr
def targetDense : List DenseCoefficients.XY := DenseCoefficients.fromExpr targetRows
theorem target_reconstruct : build targetRows=targetExpr := by rfl

def h3Dense : DenseCoefficients.XY := HornerReflector.normalize (.pow hExpr 3)
def h4ScaledDense : DenseCoefficients.XY := HornerReflector.normalize (.mul (.lit 16) (.pow hExpr 4))
def uExpr : HExpr := .mul (.lit 2) (.add (.add (.lit 16) (.neg (.mul (.lit 32) hExpr)))
  (.mul (.lit 18) (.pow hExpr 2)))
def uDense : DenseCoefficients.XY := HornerReflector.normalize uExpr
def vDense : DenseCoefficients.XY := HornerReflector.normalize (.neg fxExpr2)

def residualDense0 : List DenseCoefficients.XY :=
 DenseCoefficients.add (DenseCoefficients.mul [h3Dense] beforeDense0)
  (DenseCoefficients.add (DenseCoefficients.mul [h3Dense] (DenseCoefficients.shift 1 beforeDense3))
    (DenseCoefficients.neg (DenseCoefficients.mul [h4ScaledDense] targetDense)))
def residualDense1 : List DenseCoefficients.XY :=
 DenseCoefficients.add (DenseCoefficients.mul [h3Dense] beforeDense1)
  (DenseCoefficients.neg (DenseCoefficients.add
    (DenseCoefficients.mul [h3Dense] (DenseCoefficients.shift 1 beforeDense3))
    (DenseCoefficients.mul [uDense] beforeDense3)))
def residualDense2 : List DenseCoefficients.XY :=
 DenseCoefficients.add (DenseCoefficients.mul [h3Dense] beforeDense2)
  (DenseCoefficients.mul [vDense] beforeDense3)
def residualDense3 : List DenseCoefficients.XY :=
 DenseCoefficients.add (DenseCoefficients.mul [h3Dense] beforeDense3)
  (DenseCoefficients.neg (DenseCoefficients.mul [h3Dense] beforeDense3))

def requestedRow0 (n : ℕ) : DenseCoefficients.XY :=
 CriticalZeroSplitReduction20261003.Coefficients.add2 (CoefficientAt.mulAt [h3Dense] beforeDense0 n)
  (CriticalZeroSplitReduction20261003.Coefficients.add2
    (CoefficientAt.mulAt [h3Dense] (DenseCoefficients.shift 1 beforeDense3) n)
    (CriticalZeroSplitReduction20261003.Coefficients.neg2 (CoefficientAt.mulAt [h4ScaledDense] targetDense n)))
def requestedRow1 (n : ℕ) : DenseCoefficients.XY :=
 CriticalZeroSplitReduction20261003.Coefficients.add2 (CoefficientAt.mulAt [h3Dense] beforeDense1 n)
  (CriticalZeroSplitReduction20261003.Coefficients.neg2
    (CriticalZeroSplitReduction20261003.Coefficients.add2
      (CoefficientAt.mulAt [h3Dense] (DenseCoefficients.shift 1 beforeDense3) n)
      (CoefficientAt.mulAt [uDense] beforeDense3 n)))
def requestedRow2 (n : ℕ) : DenseCoefficients.XY :=
 CriticalZeroSplitReduction20261003.Coefficients.add2 (CoefficientAt.mulAt [h3Dense] beforeDense2 n)
  (CoefficientAt.mulAt [vDense] beforeDense3 n)
def requestedRow3 (n : ℕ) : DenseCoefficients.XY :=
 CriticalZeroSplitReduction20261003.Coefficients.add2 (CoefficientAt.mulAt [h3Dense] beforeDense3 n)
  (CriticalZeroSplitReduction20261003.Coefficients.neg2 (CoefficientAt.mulAt [h3Dense] beforeDense3 n))
theorem residual_length0 : residualDense0.length=16 := by rfl
theorem residual_length1 : residualDense1.length=16 := by rfl
theorem residual_length2 : residualDense2.length=15 := by rfl
theorem residual_length3 : residualDense3.length=15 := by rfl
#print axioms before_reconstruct0
#print axioms before_reconstruct1
#print axioms before_reconstruct2
#print axioms before_reconstruct3
#print axioms target_reconstruct
#print axioms residual_length0
#print axioms residual_length1
#print axioms residual_length2
#print axioms residual_length3
end CriticalNonzeroFinalRows20261003
