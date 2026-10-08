import MeanExprMoments
import ExactSeedEvaluator

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open scoped ComplexConjugate
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open Centiradian20261006.NativeMean20261006 Centiradian20261006.NativeEvaluation20261006
namespace MeanExprParts

@[simp] theorem eval_var {n : ℕ} (q : Fin n → ℂ) (i : Fin n) : CExpr.eval q (.var i)=q i := rfl
@[simp] theorem eval_signedE_cast {n : ℕ} (q : Fin n → ℂ) (a : CExpr n) :
    CExpr.eval q (signedE a)=(signedValue (CExpr.eval q a):ℂ) := by
  apply Complex.ext <;> simp [signedE,signedValue,Complex.mul_re,Complex.mul_im]

def seedSE : CExpr 4 := -1-.var 0-.var 1
def seedTE : CExpr 4 := -1-.var 2-.var 3
def seedRE : CExpr 4 := -1-.var 2*CExpr.star (.var 0)-.var 3*CExpr.star (.var 1)
@[simp] theorem eval_seedSE (q : Fin 4 → ℂ) : CExpr.eval q seedSE=seedS q := by simp [seedSE,seedS]
@[simp] theorem eval_seedTE (q : Fin 4 → ℂ) : CExpr.eval q seedTE=seedT q := by simp [seedTE,seedT]
@[simp] theorem eval_seedRE (q : Fin 4 → ℂ) : CExpr.eval q seedRE=seedR q := by simp [seedRE,seedR]
def knownXE : Fin 3 → CExpr 4 := ![1,.var 0,.var 1]
def knownYE : Fin 3 → CExpr 4 := ![1,.var 2,.var 3]
@[simp] theorem eval_knownXE (q : Fin 4 → ℂ) (i : Fin 3) :
    CExpr.eval q (knownXE i)=knownX q i := by fin_cases i <;> simp [knownXE,knownX]
@[simp] theorem eval_knownYE (q : Fin 4 → ℂ) (i : Fin 3) :
    CExpr.eval q (knownYE i)=knownY q i := by fin_cases i <;> simp [knownYE,knownY]

def meanAE (pair : Fin 3) : CExpr 4 := signedE (pairE
  (knownXE (pairFirst pair)) (knownYE (pairFirst pair))
  (knownXE (pairSecond pair)) (knownYE (pairSecond pair)) (constantsE seedSE seedTE seedRE))
def meanBetaE (pair : Fin 3) : CExpr 4 := signedE (pairE
  (knownXE (pairFirst pair)) (knownYE (pairFirst pair))
  (knownXE (pairSecond pair)) (knownYE (pairSecond pair)) (linearE seedSE seedTE seedRE))
def meanDE : CExpr 4 := 3*deltaE seedSE seedTE seedRE
@[simp] theorem eval_meanAE (q : Fin 4 → ℂ) (pair : Fin 3) :
    CExpr.eval q (meanAE pair)=(exactMeanA q pair:ℂ) := by
  simp [meanAE,exactMeanA,exactPairForm]
@[simp] theorem eval_meanBetaE (q : Fin 4 → ℂ) (pair : Fin 3) :
    CExpr.eval q (meanBetaE pair)=(exactMeanBeta q pair:ℂ) := by
  simp [meanBetaE,exactMeanBeta,exactPairForm]
@[simp] theorem eval_meanDE (q : Fin 4 → ℂ) : CExpr.eval q meanDE=(exactD q:ℂ) := by
  simp [meanDE,exactD,exactDelta]

def stableRE {n : ℕ} (p j w : CExpr n) : CExpr n :=
  let pp := p^2
  let jj := j^2
  jj*j*4+jj*(-pp+p*2+27)+j*(pp*p*2-pp*24-p*w*2+p*54+w*30)-
    pp^2+pp*p*18+pp*w*2-pp*81-p*w*54-w^2+w*324
@[simp] theorem eval_stableRE {n : ℕ} (q : Fin n → ℂ) (p j w : CExpr n) :
    CExpr.eval q (stableRE p j w)=stableRFormula (CExpr.eval q p) (CExpr.eval q j) (CExpr.eval q w) := by
  simp [stableRE,stableRFormula]
def meanRE : CExpr 4 := stableRE (pComplexE seedSE seedTE seedRE)
  (jComplexE seedSE seedTE seedRE) (wComplexE seedSE seedTE seedRE)
@[simp] theorem eval_meanRE (q : Fin 4 → ℂ) : CExpr.eval q meanRE=(exactSeedR q:ℂ) := by
  simp [meanRE,stableRFormula_gram,exactSeedR_eq_gramInvariant]
def kmE (pair : Fin 3) : CExpr 4 := meanBetaE pair-meanDE
def kpE (pair : Fin 3) : CExpr 4 := meanBetaE pair+meanDE
def hmE (pair : Fin 3) : CExpr 4 := (meanAE pair)^2-(kmE pair)^2*meanRE
def hpE (pair : Fin 3) : CExpr 4 := (meanAE pair)^2-(kpE pair)^2*meanRE
@[simp] theorem eval_kmE (q : Fin 4 → ℂ) (pair : Fin 3) :
    CExpr.eval q (kmE pair)=(exactKMinus q pair:ℂ) := by simp [kmE,exactKMinus]
@[simp] theorem eval_kpE (q : Fin 4 → ℂ) (pair : Fin 3) :
    CExpr.eval q (kpE pair)=(exactKPlus q pair:ℂ) := by simp [kpE,exactKPlus]
@[simp] theorem eval_hmE (q : Fin 4 → ℂ) (pair : Fin 3) :
    CExpr.eval q (hmE pair)=(exactHMinus q pair:ℂ) := by simp [hmE,exactHMinus]
@[simp] theorem eval_hpE (q : Fin 4 → ℂ) (pair : Fin 3) :
    CExpr.eval q (hpE pair)=(exactHPlus q pair:ℂ) := by simp [hpE,exactHPlus]
end MeanExprParts
end ExactMeanChecker20261006

#print axioms ExactMeanChecker20261006.MeanExprParts.eval_var
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_signedE_cast
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_seedSE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_seedTE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_seedRE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_knownXE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_knownYE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_meanAE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_meanBetaE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_meanDE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_stableRE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_meanRE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_kmE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_kpE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_hmE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_hpE
