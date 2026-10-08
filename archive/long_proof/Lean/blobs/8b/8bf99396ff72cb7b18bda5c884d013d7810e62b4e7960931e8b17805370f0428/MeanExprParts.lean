import ExactComplexExpr
import PhysicalNativeMean

/-! Exact expression trees for the literal native coefficient polynomials.
Every generated definition is connected by a kernel-checked equality. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open scoped ComplexConjugate
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open Centiradian20261006.NativeMean20261006
namespace MeanExprParts
def coeff0E {n : ℕ} (a c : CExpr n) := -((a-c)^2*(a+c)*(CExpr.star a)^2*(CExpr.star c)^2)

@[simp] theorem eval_coeff0E {n : ℕ} (z : Fin n → ℂ) (a c : CExpr n) :
    CExpr.eval z (coeff0E a c) = coeff0 (CExpr.eval z a) (CExpr.eval z c) := by
  simp [coeff0E, coeff0]

def coeff1E {n : ℕ} (a c : CExpr n) := (a-c)*(a+c)*(a*c-1)*(CExpr.star a)^2*CExpr.star c

@[simp] theorem eval_coeff1E {n : ℕ} (z : Fin n → ℂ) (a c : CExpr n) :
    CExpr.eval z (coeff1E a c) = coeff1 (CExpr.eval z a) (CExpr.eval z c) := by
  simp [coeff1E, coeff1]

def coeff2E {n : ℕ} (a c : CExpr n) := (c-1)^2*(c+1)*CExpr.star a*CExpr.star c

@[simp] theorem eval_coeff2E {n : ℕ} (z : Fin n → ℂ) (a c : CExpr n) :
    CExpr.eval z (coeff2E a c) = coeff2 (CExpr.eval z a) (CExpr.eval z c) := by
  simp [coeff2E, coeff2]

def coeff3E {n : ℕ} (a c : CExpr n) := -((a^2-c)*(c-1)*(c+1)*CExpr.star a*(CExpr.star c)^2)

@[simp] theorem eval_coeff3E {n : ℕ} (z : Fin n → ℂ) (a c : CExpr n) :
    CExpr.eval z (coeff3E a c) = coeff3 (CExpr.eval z a) (CExpr.eval z c) := by
  simp [coeff3E, coeff3]

def coeff4E {n : ℕ} (a c : CExpr n) := (a-1)^2*(a+1)*CExpr.star a*CExpr.star c

@[simp] theorem eval_coeff4E {n : ℕ} (z : Fin n → ℂ) (a c : CExpr n) :
    CExpr.eval z (coeff4E a c) = coeff4 (CExpr.eval z a) (CExpr.eval z c) := by
  simp [coeff4E, coeff4]

def coeff5E {n : ℕ} (a c : CExpr n) := (a-1)*(a+1)*(a-c^2)*(CExpr.star a)^2*CExpr.star c

@[simp] theorem eval_coeff5E {n : ℕ} (z : Fin n → ℂ) (a c : CExpr n) :
    CExpr.eval z (coeff5E a c) = coeff5 (CExpr.eval z a) (CExpr.eval z c) := by
  simp [coeff5E, coeff5]

def pComplexE {n : ℕ} (s t r : CExpr n) := s*CExpr.star s+t*CExpr.star t+r*CExpr.star r

@[simp] theorem eval_pComplexE {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (pComplexE s t r) = pComplex (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [pComplexE, pComplex]

def jComplexE {n : ℕ} (s t r : CExpr n) := s*r*CExpr.star t+CExpr.star s*CExpr.star r*t

@[simp] theorem eval_jComplexE {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (jComplexE s t r) = jComplex (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [jComplexE, jComplex]

def wComplexE {n : ℕ} (s t r : CExpr n) :=
  (s*CExpr.star s)*(t*CExpr.star t)+(s*CExpr.star s)*(r*CExpr.star r)+(t*CExpr.star t)*(r*CExpr.star r)-
    (s*CExpr.star s)*(t*CExpr.star t)*(r*CExpr.star r)

@[simp] theorem eval_wComplexE {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (wComplexE s t r) = wComplex (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [wComplexE, wComplex]

def symmetricP0E {n : ℕ} (s t r : CExpr n) : CExpr n := r*s^2+CExpr.star r*t^2+(3-r*CExpr.star r)*s*t

@[simp] theorem eval_symmetricP0E {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (symmetricP0E s t r) = symmetricP0 (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [symmetricP0E, symmetricP0]

def symmetricP1E {n : ℕ} (s t r : CExpr n) : CExpr n := t*(CExpr.star s)^2+r^2*CExpr.star t+(3-t*CExpr.star t)*r*CExpr.star s

@[simp] theorem eval_symmetricP1E {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (symmetricP1E s t r) = symmetricP1 (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [symmetricP1E, symmetricP1]

def symmetricP2E {n : ℕ} (s t r : CExpr n) : CExpr n := s*(CExpr.star t)^2+(CExpr.star r)^2*CExpr.star s+
  (3-s*CExpr.star s)*CExpr.star r*CExpr.star t

@[simp] theorem eval_symmetricP2E {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (symmetricP2E s t r) = symmetricP2 (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [symmetricP2E, symmetricP2]

def meanStableAE {n : ℕ} (s t r z : CExpr n) : CExpr n :=
  let p := pComplexE s t r
  let j := jComplexE s t r
  let w := wComplexE s t r
  w-p^2+9*p-18*z+2*z*p+(p+3-2*z)*j

@[simp] theorem eval_meanStableAE {n : ℕ} (z : Fin n → ℂ) (s t r z : CExpr n) :
    CExpr.eval z (meanStableAE s t r z) = meanStableA (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) (CExpr.eval z z) := by
  simp [meanStableAE, meanStableA]

end MeanExprParts
end ExactMeanChecker20261006

#print axioms ExactMeanChecker20261006.MeanExprParts.eval_coeff0E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_coeff1E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_coeff2E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_coeff3E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_coeff4E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_coeff5E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_pComplexE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_jComplexE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_wComplexE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_symmetricP0E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_symmetricP1E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_symmetricP2E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_meanStableAE
