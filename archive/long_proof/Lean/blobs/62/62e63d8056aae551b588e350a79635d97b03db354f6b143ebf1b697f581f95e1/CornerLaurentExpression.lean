import LaurentPhase

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000

namespace Centiradian20261006.LaurentList
open scoped ComplexConjugate

def aP := monomial ⟨1,0,0,0⟩
def bP := monomial ⟨0,1,0,0⟩
def cP := monomial ⟨0,0,1,0⟩
def dP := monomial ⟨0,0,0,1⟩
def sP := neg (add (ofInt 1) (add aP bP))
def tP := neg (add (ofInt 1) (add cP dP))
def rP := neg (add (ofInt 1) (add (mul cP (conjugate aP)) (mul dP (conjugate bP))))
def xP := mul sP (conjugate sP)
def yP := mul tP (conjugate tP)
def zP := mul rP (conjugate rP)
def pP := add (add xP yP) zP
def jP := add (mul (mul sP rP) (conjugate tP))
  (mul (mul (conjugate sP) (conjugate rP)) tP)
def wP := add (add (add (mul xP yP) (mul xP zP)) (mul yP zP))
  (neg (mul (mul xP yP) zP))
def gP := add (add (ofInt 27) (neg (mul (ofInt 3) pP))) jP
def etaP := add (add (ofInt 9) (neg pP)) jP
def chiP := add
  (add wP (neg (mul (add pP (ofInt (-9))) (add pP (ofInt (-18))))))
  (mul (add pP (ofInt (-15))) jP)
def cornerPolynomial := add (mul (mul (mul (ofInt 4) gP) gP) etaP)
  (neg (mul chiP chiP))

noncomputable section

def complexCornerR (a b c d : ℂ) : ℂ :=
  let s := -(1+(a+b))
  let t := -(1+(c+d))
  let r := -(1+(c*conj a+d*conj b))
  let X := s*conj s
  let Y := t*conj t
  let Z := r*conj r
  let p := X+Y+Z
  let J := s*r*conj t+conj s*conj r*t
  let W := X*Y+X*Z+Y*Z+ -(X*Y*Z)
  let g := 27+ -(3*p)+J
  let eta := 9+ -p+J
  let chi := W+ -((p+ -9)*(p+ -18))+(p+ -15)*J
  4*g*g*eta+ -(chi*chi)

/-- Soundness of the exact list expression for the native positive-J corner
invariant. The actual 2,083-term generated table is a separate obligation. -/
theorem eval_cornerPolynomial (h : Exp4 → ℂ)
    (hz : h ⟨0,0,0,0⟩=1)
    (hm : ∀ a b, h (addExp a b)=h a*h b)
    (hc : ∀ e, h (negExp e)=star (h e)) :
    eval h cornerPolynomial =
      complexCornerR (h ⟨1,0,0,0⟩) (h ⟨0,1,0,0⟩) (h ⟨0,0,1,0⟩) (h ⟨0,0,0,1⟩) := by
  simp only [cornerPolynomial,chiP,etaP,gP,wP,jP,pP,xP,yP,zP,sP,tP,rP,aP,bP,cP,dP,
    eval_add,eval_neg,eval_mul h hm,eval_conjugate h hc,eval_ofInt h hz,eval_monomial]
  simp only [complexCornerR,Int.cast_neg,Int.cast_ofNat,Int.cast_one]
  rfl

theorem eval_phase_cornerPolynomial (θ : Fin 4 → ℝ) :
    eval (phaseCharacter θ) cornerPolynomial =
      complexCornerR (phaseCharacter θ ⟨1,0,0,0⟩) (phaseCharacter θ ⟨0,1,0,0⟩)
        (phaseCharacter θ ⟨0,0,1,0⟩) (phaseCharacter θ ⟨0,0,0,1⟩) :=
  eval_cornerPolynomial _ (phaseCharacter_zero θ) (phaseCharacter_add θ) (phaseCharacter_neg θ)

end
end Centiradian20261006.LaurentList

#print axioms Centiradian20261006.LaurentList.eval_cornerPolynomial
#print axioms Centiradian20261006.LaurentList.eval_phase_cornerPolynomial
