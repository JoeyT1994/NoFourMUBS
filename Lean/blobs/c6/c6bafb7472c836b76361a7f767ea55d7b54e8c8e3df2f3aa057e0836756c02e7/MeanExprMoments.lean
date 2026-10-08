import MeanExprParts

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open scoped ComplexConjugate
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open Centiradian20261006.NativeMean20261006
namespace MeanExprParts

def normE {n : ℕ} (a : CExpr n) : CExpr n := a*CExpr.star a
def halfE {n : ℕ} : CExpr n := .point (1/2) 0
def imagE {n : ℕ} : CExpr n := .point 0 1
@[simp] theorem eval_normE {n : ℕ} (z : Fin n → ℂ) (a : CExpr n) :
    CExpr.eval z (normE a)=(Complex.normSq (CExpr.eval z a):ℂ) := by
  simp [normE,Complex.mul_conj]
@[simp] theorem eval_halfE {n : ℕ} (z : Fin n → ℂ) : CExpr.eval z halfE=(1/2:ℂ) := by
  apply Complex.ext <;> norm_num [halfE,CExpr.eval,Complex.div_re,Complex.div_im,Complex.normSq_apply]
@[simp] theorem eval_imagE {n : ℕ} (z : Fin n → ℂ) : CExpr.eval z imagE=Complex.I := by
  apply Complex.ext <;> norm_num [imagE,CExpr.eval]

def deltaE {n : ℕ} (s t r : CExpr n) : CExpr n :=
  normE (symmetricP0E s t r)*normE (symmetricP1E s t r)*normE (symmetricP2E s t r)
@[simp] theorem eval_deltaE {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (deltaE s t r)=(sideDelta (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r):ℂ) := by
  simp [deltaE,sideDelta]

def u0E {n : ℕ} (s t r : CExpr n) : CExpr n :=
  (symmetricP0E s t r)*normE (symmetricP1E s t r)*normE (symmetricP2E s t r)*halfE
@[simp] theorem eval_u0E {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (u0E s t r)=sideU0 (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [u0E,sideU0,div_eq_mul_inv]

def u1E {n : ℕ} (s t r : CExpr n) : CExpr n :=
  (CExpr.star (symmetricP1E s t r))*normE (symmetricP0E s t r)*normE (symmetricP2E s t r)*halfE
@[simp] theorem eval_u1E {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (u1E s t r)=sideU1 (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [u1E,sideU1,div_eq_mul_inv]

def u2E {n : ℕ} (s t r : CExpr n) : CExpr n :=
  (CExpr.star (symmetricP2E s t r))*normE (symmetricP0E s t r)*normE (symmetricP1E s t r)*halfE
@[simp] theorem eval_u2E {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) :
    CExpr.eval z (u2E s t r)=sideU2 (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) := by
  simp [u2E,sideU2,div_eq_mul_inv]

def constantsE {n : ℕ} (s t r : CExpr n) : Fin 6 → CExpr n := ![
  deltaE s t r*s*t-meanStableAE s t r (r*CExpr.star r)*u0E s t r,
  deltaE s t r*CExpr.star r,
  deltaE s t r*s*CExpr.star r-meanStableAE s t r (t*CExpr.star t)*u1E s t r,
  deltaE s t r*t,
  deltaE s t r*t*r-meanStableAE s t r (s*CExpr.star s)*u2E s t r,
  deltaE s t r*s]
def linearE {n : ℕ} (s t r : CExpr n) : Fin 6 → CExpr n := ![
  -imagE*u0E s t r,0,imagE*u1E s t r,0,imagE*u2E s t r,0]
@[simp] theorem eval_constantsE {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) (k : Fin 6) :
    CExpr.eval z (constantsE s t r k)=sideMomentConstants (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) k := by
  fin_cases k <;> simp [constantsE,sideMomentConstants]
@[simp] theorem eval_linearE {n : ℕ} (z : Fin n → ℂ) (s t r : CExpr n) (k : Fin 6) :
    CExpr.eval z (linearE s t r k)=sideMomentLinear (CExpr.eval z s) (CExpr.eval z t) (CExpr.eval z r) k := by
  fin_cases k <;> simp [linearE,sideMomentLinear]

def pairE {n : ℕ} (u v a c : CExpr n) (M : Fin 6 → CExpr n) : CExpr n :=
  let A := a*CExpr.star u
  let C := c*CExpr.star v
  (coeff0E A C*CExpr.star u*CExpr.star v)*M 0+
    (coeff1E A C*CExpr.star u*v)*M 1+
    (coeff2E A C*(CExpr.star u)^2*v)*M 2+
    (coeff3E A C*CExpr.star v)*M 3+
    (coeff4E A C*u*(CExpr.star v)^2)*M 4+
    (coeff5E A C*CExpr.star u)*M 5
@[simp] theorem eval_pairE {n : ℕ} (z : Fin n → ℂ) (u v a c : CExpr n) (M : Fin 6 → CExpr n) :
    CExpr.eval z (pairE u v a c M)=nativePairForm (CExpr.eval z u) (CExpr.eval z v)
      (CExpr.eval z a) (CExpr.eval z c) (fun k => CExpr.eval z (M k)) := by
  simp [pairE,nativePairForm]

def signedE {n : ℕ} (a : CExpr n) : CExpr n := (a-CExpr.star a)*imagE
@[simp] theorem eval_signedE {n : ℕ} (z : Fin n → ℂ) (a : CExpr n) :
    (CExpr.eval z (signedE a)).re=signedValue (CExpr.eval z a) := by
  simp [signedE,signedValue]
end MeanExprParts
end ExactMeanChecker20261006

#print axioms ExactMeanChecker20261006.MeanExprParts.eval_normE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_halfE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_imagE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_deltaE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_u0E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_u1E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_u2E
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_constantsE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_linearE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_pairE
#print axioms ExactMeanChecker20261006.MeanExprParts.eval_signedE
