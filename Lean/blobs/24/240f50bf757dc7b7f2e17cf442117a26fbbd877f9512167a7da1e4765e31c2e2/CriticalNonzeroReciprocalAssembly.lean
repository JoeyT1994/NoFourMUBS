import CriticalDataGauge
import CriticalNonzeroRationalBinding

set_option autoImplicit false
namespace CriticalNonzeroPhysicalBinding20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003 CriticalNonzeroRational20261003
noncomputable section

theorem quadratic_from_product (X Y P j r : ℂ) (hX : X≠0)
    (hp : r*((j-r*Y)/X)=P-X-Y) : Y*r^2-j*r+X*(P-X-Y)=0 := by
  have he : r*(j-r*Y)=(P-X-Y)*X := by
    apply (div_eq_iff hX).mp
    simpa only [mul_div_assoc] using hp
  linear_combination -he

theorem scale_opposite_linear_inputs (a b : ℂ) (D E : Data)
    (h : E.s= -D.s ∧ E.S= -D.S ∧ E.t= -D.t ∧ E.T= -D.T ∧ E.r= -D.r ∧ E.Q= -D.Q) :
    let G := scaleData a b D
    let B := scaleData a b E
    B.s= -G.s ∧ B.S= -G.S ∧ B.t= -G.t ∧ B.T= -G.T ∧ B.r= -G.r ∧ B.Q= -G.Q := by
  rcases h with ⟨h1,h2,h3,h4,h5,h6⟩
  simp [scaleData,h1,h2,h3,h4,h5,h6,mul_neg]

/-- A pure constructor join. The hypotheses are supplied by actual guarded
reconstruction and a single common gauge in the physical wrapper. -/
theorem reconstructed_signed_pair (G B : Data) (X Y k : ℂ) (hX : X≠0)
    (hq : Y*G.r^2-J k*G.r+X*(p k-X-Y)=0)
    (hs : G.s=1) (hS : G.S=X) (ht : G.t=1) (hT : G.T=Y)
    (hQ : G.Q=(J k-G.r*Y)/X)
    (hOpp : B.s= -G.s ∧ B.S= -G.S ∧ B.t= -G.t ∧ B.T= -G.T ∧ B.r= -G.r ∧ B.Q= -G.Q)
    (hLeft : G=rationalSide G.s G.S G.t G.T G.r G.Q (sheet k 1) (gram k 1))
    (hRight : B=rationalSide B.s B.S B.t B.T B.r B.Q (sheet k (-1)) (gram k (-1))) :
    G=nonzeroSide X Y k G.r 1 ∧ B=nonzeroSide X Y k G.r (-1) := by
  rw [hs,hS,ht,hT,hQ] at hLeft
  have hcL := rationalSide_nonzeroSide X Y k G.r 1 hX (by norm_num) hq
  have heL : G=nonzeroSide X Y k G.r 1 :=
    hLeft.trans (by simpa only [one_mul] using hcL)
  rcases hOpp with ⟨hbs,hbS,hbt,hbT,hbr,hbQ⟩
  rw [hbs,hbS,hbt,hbT,hbr,hbQ,hs,hS,ht,hT,hQ] at hRight
  have hcR := rationalSide_nonzeroSide X Y k G.r (-1) hX (by norm_num) hq
  have heR : B=nonzeroSide X Y k G.r (-1) :=
    hRight.trans (by simpa only [neg_one_mul] using hcR)
  exact ⟨heL,heR⟩

end
#print axioms quadratic_from_product
#print axioms scale_opposite_linear_inputs
#print axioms reconstructed_signed_pair
end CriticalNonzeroPhysicalBinding20261003
