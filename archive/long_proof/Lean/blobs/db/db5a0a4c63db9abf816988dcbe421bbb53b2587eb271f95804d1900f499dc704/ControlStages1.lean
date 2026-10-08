import ExactCutpoint
import MeanExprSeed

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 10000
namespace ExactMeanDirect20261006.Control
open ExactMeanChecker20261006 SignedMeanIntake20261006
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open Centiradian20261006.NativeMean20261006 Centiradian20261006.NativeEvaluation20261006
open scoped ComplexConjugate
noncomputable section

theorem signedComplexValue (z : ℂ) : (z-conj z)*Complex.I=(signedValue z:ℂ) := by
  have h := MeanExprParts.eval_signedE_cast (fun _ : Fin 1 => z) (.var 0)
  simpa only [MeanExprParts.signedE,CExpr.eval_mul,CExpr.eval_sub,CExpr.eval_star,MeanExprParts.eval_var,MeanExprParts.eval_imagE] using h

def bq0 : CBox := ⟨⟨(999999/1000000),(1000001/1000000)⟩,⟨(-1/1000000),(1/1000000)⟩⟩

def bq1 : CBox := ⟨⟨(-1/1000000),(1/1000000)⟩,⟨(999999/1000000),(1000001/1000000)⟩⟩

def bq2 : CBox := ⟨⟨(-600001/1000000),(-599999/1000000)⟩,⟨(799999/1000000),(800001/1000000)⟩⟩

def bq3 : CBox := ⟨⟨(-1/1000000),(1/1000000)⟩,⟨(-1000001/1000000),(-999999/1000000)⟩⟩

def controlBox : Fin 4 → CBox := ![bq0,bq1,bq2,bq3]

def eS : CExpr 2 := (((-1) + (-(.var 0))) + (-(.var 1)))
noncomputable def vS (q : Fin 4 → ℂ) : ℂ := seedS q
def bS : CBox := ⟨⟨(-1000001/500000),(-999999/500000)⟩,⟨(-500001/500000),(-499999/500000)⟩⟩
theorem eval_S (q : Fin 4 → ℂ) : CExpr.eval ![q 0,q 1] eS=vS q := by
  simp [eS,vS,seedS,sub_eq_add_neg]
theorem check_S : cutCheck ![bq0,bq1] eS bS=true := by decide +kernel
theorem bound_S (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bS.Contains (vS q) := by
  have hz : ∀ i : Fin 2, ((![bq0,bq1] : Fin 2 → CBox) i).Contains ((![q 0,q 1] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (hq 0)
    · simpa [controlBox] using (hq 1)
  have h := cutCheck_sound ![bq0,bq1] eS bS ![q 0,q 1] hz check_S
  rwa [eval_S] at h

def eT : CExpr 2 := (((-1) + (-(.var 0))) + (-(.var 1)))
noncomputable def vT (q : Fin 4 → ℂ) : ℂ := seedT q
def bT : CBox := ⟨⟨(-200001/500000),(-199999/500000)⟩,⟨(99999/500000),(100001/500000)⟩⟩
theorem eval_T (q : Fin 4 → ℂ) : CExpr.eval ![q 2,q 3] eT=vT q := by
  simp [eT,vT,seedT,sub_eq_add_neg]
theorem check_T : cutCheck ![bq2,bq3] eT bT=true := by decide +kernel
theorem bound_T (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bT.Contains (vT q) := by
  have hz : ∀ i : Fin 2, ((![bq2,bq3] : Fin 2 → CBox) i).Contains ((![q 2,q 3] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (hq 2)
    · simpa [controlBox] using (hq 3)
  have h := cutCheck_sound ![bq2,bq3] eT bT ![q 2,q 3] hz check_T
  rwa [eval_T] at h

def eRho : CExpr 4 := (((-1) + (-((.var 0) * (CExpr.star (.var 1))))) + (-((.var 2) * (CExpr.star (.var 3)))))
noncomputable def vRho (q : Fin 4 → ℂ) : ℂ := seedR q
def bRho : CBox := ⟨⟨(1499989/2500000),(150001100001/250000000000)⟩,⟨(-200001100001/250000000000),(-399997799999/500000000000)⟩⟩
theorem eval_Rho (q : Fin 4 → ℂ) : CExpr.eval ![q 2,q 0,q 3,q 1] eRho=vRho q := by
  simp [eRho,vRho,seedR,sub_eq_add_neg]
theorem check_Rho : cutCheck ![bq2,bq0,bq3,bq1] eRho bRho=true := by decide +kernel
theorem bound_Rho (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bRho.Contains (vRho q) := by
  have hz : ∀ i : Fin 4, ((![bq2,bq0,bq3,bq1] : Fin 4 → CBox) i).Contains ((![q 2,q 0,q 3,q 1] : Fin 4 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (hq 2)
    · simpa [controlBox] using (hq 0)
    · simpa [controlBox] using (hq 3)
    · simpa [controlBox] using (hq 1)
  have h := cutCheck_sound ![bq2,bq0,bq3,bq1] eRho bRho ![q 2,q 0,q 3,q 1] hz check_Rho
  rwa [eval_Rho] at h

def eP0 : CExpr 3 := ((((.var 0) * ((.var 1)^2)) + ((CExpr.star (.var 0)) * ((.var 2)^2))) + (((3 + (-((.var 0) * (CExpr.star (.var 0))))) * (.var 1)) * (.var 2)))
noncomputable def vP0 (q : Fin 4 → ℂ) : ℂ := symmetricP0 (vS q) (vT q) (vRho q)
def bP0 : CBox := ⟨⟨(7199911232239/1000000000000),(1800022192083/250000000000)⟩,⟨(-22192009/250000000000),(17753611/200000000000)⟩⟩
theorem eval_P0 (q : Fin 4 → ℂ) : CExpr.eval ![vRho q,vS q,vT q] eP0=vP0 q := by
  simp [eP0,vP0,symmetricP0,sub_eq_add_neg]
theorem check_P0 : cutCheck ![bRho,bS,bT] eP0 bP0=true := by decide +kernel
theorem bound_P0 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bP0.Contains (vP0 q) := by
  have hz : ∀ i : Fin 3, ((![bRho,bS,bT] : Fin 3 → CBox) i).Contains ((![vRho q,vS q,vT q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Rho q hq)
    · simpa [controlBox] using (bound_S q hq)
    · simpa [controlBox] using (bound_T q hq)
  have h := cutCheck_sound ![bRho,bS,bT] eP0 bP0 ![vRho q,vS q,vT q] hz check_P0
  rwa [eval_P0] at h

def eP1 : CExpr 3 := ((((.var 0) * ((CExpr.star (.var 1))^2)) + (((.var 2)^2) * (CExpr.star (.var 0)))) + (((3 + (-((.var 0) * (CExpr.star (.var 0))))) * (.var 2)) * (CExpr.star (.var 1))))
noncomputable def vP1 (q : Fin 4 → ℂ) : ℂ := symmetricP1 (vS q) (vT q) (vRho q)
def bP1 : CBox := ⟨⟨(-1600085952079/1000000000000),(-1599914047967/1000000000000)⟩,⟨(8799914048147/1000000000000),(1100010744033/125000000000)⟩⟩
theorem eval_P1 (q : Fin 4 → ℂ) : CExpr.eval ![vT q,vS q,vRho q] eP1=vP1 q := by
  simp [eP1,vP1,symmetricP1,sub_eq_add_neg]
theorem check_P1 : cutCheck ![bT,bS,bRho] eP1 bP1=true := by decide +kernel
theorem bound_P1 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bP1.Contains (vP1 q) := by
  have hz : ∀ i : Fin 3, ((![bT,bS,bRho] : Fin 3 → CBox) i).Contains ((![vT q,vS q,vRho q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_T q hq)
    · simpa [controlBox] using (bound_S q hq)
    · simpa [controlBox] using (bound_Rho q hq)
  have h := cutCheck_sound ![bT,bS,bRho] eP1 bP1 ![vT q,vS q,vRho q] hz check_P1
  rwa [eval_P1] at h

def eP2 : CExpr 3 := ((((.var 0) * ((CExpr.star (.var 1))^2)) + (((CExpr.star (.var 2))^2) * (CExpr.star (.var 0)))) + (((3 + (-((.var 0) * (CExpr.star (.var 0))))) * (CExpr.star (.var 2))) * (CExpr.star (.var 1))))
noncomputable def vP2 (q : Fin 4 → ℂ) : ℂ := symmetricP2 (vS q) (vT q) (vRho q)
def bP2 : CBox := ⟨⟨(-320068160081/1000000000000),(-9997869999/31250000000)⟩,⟨(-1760068160077/1000000000000),(-351986367993/200000000000)⟩⟩
theorem eval_P2 (q : Fin 4 → ℂ) : CExpr.eval ![vS q,vT q,vRho q] eP2=vP2 q := by
  simp [eP2,vP2,symmetricP2,sub_eq_add_neg]
theorem check_P2 : cutCheck ![bS,bT,bRho] eP2 bP2=true := by decide +kernel
theorem bound_P2 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bP2.Contains (vP2 q) := by
  have hz : ∀ i : Fin 3, ((![bS,bT,bRho] : Fin 3 → CBox) i).Contains ((![vS q,vT q,vRho q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_S q hq)
    · simpa [controlBox] using (bound_T q hq)
    · simpa [controlBox] using (bound_Rho q hq)
  have h := cutCheck_sound ![bS,bT,bRho] eP2 bP2 ![vS q,vT q,vRho q] hz check_P2
  rwa [eval_P2] at h

def eN0 : CExpr 1 := ((.var 0) * (CExpr.star (.var 0)))
noncomputable def vN0 (q : Fin 4 → ℂ) : ℂ := (Complex.normSq (vP0 q):ℂ)
def bN0 : CBox := ⟨⟨(51838721744241/1000000000000),(51841278279741/1000000000000)⟩,⟨(-255655123/200000000000),(255655123/200000000000)⟩⟩
theorem eval_N0 (q : Fin 4 → ℂ) : CExpr.eval ![vP0 q] eN0=vN0 q := by
  simp [eN0,vN0,Complex.mul_conj,sub_eq_add_neg]
theorem check_N0 : cutCheck ![bP0] eN0 bN0=true := by decide +kernel
theorem bound_N0 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bN0.Contains (vN0 q) := by
  have hz : ∀ i : Fin 1, ((![bP0] : Fin 1 → CBox) i).Contains ((![vP0 q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_P0 q hq)
  have h := cutCheck_sound ![bP0] eN0 bN0 ![vP0 q] hz check_N0
  rwa [eval_N0] at h

def eN1 : CExpr 1 := ((.var 0) * (CExpr.star (.var 0)))
noncomputable def vN1 (q : Fin 4 → ℂ) : ℂ := (Complex.normSq (vP1 q):ℂ)
def bN1 : CBox := ⟨⟨(79998212215657/1000000000000),(3200071512851/40000000000)⟩,⟨(-1787802773/1000000000000),(1787802773/1000000000000)⟩⟩
theorem eval_N1 (q : Fin 4 → ℂ) : CExpr.eval ![vP1 q] eN1=vN1 q := by
  simp [eN1,vN1,Complex.mul_conj,sub_eq_add_neg]
theorem check_N1 : cutCheck ![bP1] eN1 bN1=true := by decide +kernel
theorem bound_N1 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bN1.Contains (vN1 q) := by
  have hz : ∀ i : Fin 1, ((![bP1] : Fin 1 → CBox) i).Contains ((![vP1 q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_P1 q hq)
  have h := cutCheck_sound ![bP1] eN1 bN1 ![vP1 q] hz check_N1
  rwa [eval_N1] at h

def eN2 : CExpr 1 := ((.var 0) * (CExpr.star (.var 0)))
noncomputable def vN2 (q : Fin 4 → ℂ) : ℂ := (Complex.normSq (vP2 q):ℂ)
def bN2 : CBox := ⟨⟨(3199716463547/1000000000000),(640056711043/200000000000)⟩,⟨(-56709167/200000000000),(56709167/200000000000)⟩⟩
theorem eval_N2 (q : Fin 4 → ℂ) : CExpr.eval ![vP2 q] eN2=vN2 q := by
  simp [eN2,vN2,Complex.mul_conj,sub_eq_add_neg]
theorem check_N2 : cutCheck ![bP2] eN2 bN2=true := by decide +kernel
theorem bound_N2 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bN2.Contains (vN2 q) := by
  have hz : ∀ i : Fin 1, ((![bP2] : Fin 1 → CBox) i).Contains ((![vP2 q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_P2 q hq)
  have h := cutCheck_sound ![bP2] eN2 bN2 ![vP2 q] hz check_N2
  rwa [eval_N2] at h

def eDelta : CExpr 3 := (((.var 0) * (.var 1)) * (.var 2))
noncomputable def vDelta (q : Fin 4 → ℂ) : ℂ := (sideDelta (vS q) (vT q) (vRho q):ℂ)
def bDelta : CBox := ⟨⟨(13269240312174687/1000000000000),(13272839903077687/1000000000000)⟩,⟨(-359972010287/200000000000),(359972010287/200000000000)⟩⟩
theorem eval_Delta (q : Fin 4 → ℂ) : CExpr.eval ![vN0 q,vN1 q,vN2 q] eDelta=vDelta q := by
  simp [eDelta,vDelta,sideDelta,vN0,vN1,vN2,vP0,vP1,vP2,sub_eq_add_neg]
theorem check_Delta : cutCheck ![bN0,bN1,bN2] eDelta bDelta=true := by decide +kernel
theorem bound_Delta (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bDelta.Contains (vDelta q) := by
  have hz : ∀ i : Fin 3, ((![bN0,bN1,bN2] : Fin 3 → CBox) i).Contains ((![vN0 q,vN1 q,vN2 q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_N0 q hq)
    · simpa [controlBox] using (bound_N1 q hq)
    · simpa [controlBox] using (bound_N2 q hq)
  have h := cutCheck_sound ![bN0,bN1,bN2] eDelta bDelta ![vN0 q,vN1 q,vN2 q] hz check_Delta
  rwa [eval_Delta] at h

def eX : CExpr 1 := ((.var 0) * (CExpr.star (.var 0)))
noncomputable def vX (q : Fin 4 → ℂ) : ℂ := (Complex.normSq (vS q):ℂ)
def bX : CBox := ⟨⟨(624998500001/125000000000),(625001500001/125000000000)⟩,⟨(-3/250000),(3/250000)⟩⟩
theorem eval_X (q : Fin 4 → ℂ) : CExpr.eval ![vS q] eX=vX q := by
  simp [eX,vX,Complex.mul_conj,sub_eq_add_neg]
theorem check_X : cutCheck ![bS] eX bX=true := by decide +kernel
theorem bound_X (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bX.Contains (vX q) := by
  have hz : ∀ i : Fin 1, ((![bS] : Fin 1 → CBox) i).Contains ((![vS q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_S q hq)
  have h := cutCheck_sound ![bS] eX bX ![vS q] hz check_X
  rwa [eval_X] at h

def eY : CExpr 1 := ((.var 0) * (CExpr.star (.var 0)))
noncomputable def vY (q : Fin 4 → ℂ) : ℂ := (Complex.normSq (vT q):ℂ)
def bY : CBox := ⟨⟨(24999700001/125000000000),(25000300001/125000000000)⟩,⟨(-3/1250000),(3/1250000)⟩⟩
theorem eval_Y (q : Fin 4 → ℂ) : CExpr.eval ![vT q] eY=vY q := by
  simp [eY,vY,Complex.mul_conj,sub_eq_add_neg]
theorem check_Y : cutCheck ![bT] eY bY=true := by decide +kernel
theorem bound_Y (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bY.Contains (vY q) := by
  have hz : ∀ i : Fin 1, ((![bT] : Fin 1 → CBox) i).Contains ((![vT q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_T q hq)
  have h := cutCheck_sound ![bT] eY bY ![vT q] hz check_Y
  rwa [eval_Y] at h

def eZ : CExpr 1 := ((.var 0) * (CExpr.star (.var 0)))
noncomputable def vZ (q : Fin 4 → ℂ) : ℂ := (Complex.normSq (vRho q):ℂ)
def bZ : CBox := ⟨⟨(199997536007/200000000000),(20000246401/20000000000)⟩,⟨(-12320007/1000000000000),(12320007/1000000000000)⟩⟩
theorem eval_Z (q : Fin 4 → ℂ) : CExpr.eval ![vRho q] eZ=vZ q := by
  simp [eZ,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_Z : cutCheck ![bRho] eZ bZ=true := by decide +kernel
theorem bound_Z (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bZ.Contains (vZ q) := by
  have hz : ∀ i : Fin 1, ((![bRho] : Fin 1 → CBox) i).Contains ((![vRho q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Rho q hq)
  have h := cutCheck_sound ![bRho] eZ bZ ![vRho q] hz check_Z
  rwa [eval_Z] at h

def eP : CExpr 3 := (((.var 0) + (.var 1)) + (.var 2))
noncomputable def vP (q : Fin 4 → ℂ) : ℂ := pComplex (vS q) (vT q) (vRho q)
def bP : CBox := ⟨⟨(6199973280051/1000000000000),(3100013360033/500000000000)⟩,⟨(-26720007/1000000000000),(26720007/1000000000000)⟩⟩
theorem eval_P (q : Fin 4 → ℂ) : CExpr.eval ![vX q,vY q,vZ q] eP=vP q := by
  simp [eP,vP,pComplex,vX,vY,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_P : cutCheck ![bX,bY,bZ] eP bP=true := by decide +kernel
theorem bound_P (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bP.Contains (vP q) := by
  have hz : ∀ i : Fin 3, ((![bX,bY,bZ] : Fin 3 → CBox) i).Contains ((![vX q,vY q,vZ q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_X q hq)
    · simpa [controlBox] using (bound_Y q hq)
    · simpa [controlBox] using (bound_Z q hq)
  have h := cutCheck_sound ![bX,bY,bZ] eP bP ![vX q,vY q,vZ q] hz check_P
  rwa [eval_P] at h

def eJ : CExpr 3 := ((((.var 0) * (.var 1)) * (CExpr.star (.var 2))) + (((CExpr.star (.var 0)) * (CExpr.star (.var 1))) * (.var 2)))
noncomputable def vJ (q : Fin 4 → ℂ) : ℂ := jComplex (vS q) (vT q) (vRho q)
def bJ : CBox := ⟨⟨(1999968800137/1000000000000),(400006240031/200000000000)⟩,⟨(-3120001/100000000000),(3120001/100000000000)⟩⟩
theorem eval_J (q : Fin 4 → ℂ) : CExpr.eval ![vS q,vRho q,vT q] eJ=vJ q := by
  simp [eJ,vJ,jComplex,sub_eq_add_neg]
theorem check_J : cutCheck ![bS,bRho,bT] eJ bJ=true := by decide +kernel
theorem bound_J (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bJ.Contains (vJ q) := by
  have hz : ∀ i : Fin 3, ((![bS,bRho,bT] : Fin 3 → CBox) i).Contains ((![vS q,vRho q,vT q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_S q hq)
    · simpa [controlBox] using (bound_Rho q hq)
    · simpa [controlBox] using (bound_T q hq)
  have h := cutCheck_sound ![bS,bRho,bT] eJ bJ ![vS q,vRho q,vT q] hz check_J
  rwa [eval_J] at h

def eW : CExpr 3 := (((((.var 0) * (.var 1)) + ((.var 0) * (.var 2))) + ((.var 1) * (.var 2))) + (-(((.var 0) * (.var 1)) * (.var 2))))
noncomputable def vW (q : Fin 4 → ℂ) : ℂ := wComplex (vS q) (vT q) (vRho q)
def bW : CBox := ⟨⟨(1039976083147/200000000000),(2600059792327/500000000000)⟩,⟨(-119584869/1000000000000),(119584869/1000000000000)⟩⟩
theorem eval_W (q : Fin 4 → ℂ) : CExpr.eval ![vX q,vY q,vZ q] eW=vW q := by
  simp [eW,vW,wComplex,vX,vY,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_W : cutCheck ![bX,bY,bZ] eW bW=true := by decide +kernel
theorem bound_W (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bW.Contains (vW q) := by
  have hz : ∀ i : Fin 3, ((![bX,bY,bZ] : Fin 3 → CBox) i).Contains ((![vX q,vY q,vZ q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_X q hq)
    · simpa [controlBox] using (bound_Y q hq)
    · simpa [controlBox] using (bound_Z q hq)
  have h := cutCheck_sound ![bX,bY,bZ] eW bW ![vX q,vY q,vZ q] hz check_W
  rwa [eval_W] at h

def eStableA0 : CExpr 4 := ((((((.var 0) + (-((.var 1)^2))) + (9 * (.var 1))) + (-(18 * (.var 2)))) + ((2 * (.var 2)) * (.var 1))) + ((((.var 1) + 3) + (-(2 * (.var 2)))) * (.var 3)))
noncomputable def vStableA0 (q : Fin 4 → ℂ) : ℂ := meanStableA (vS q) (vT q) (vRho q) (vZ q)
def bStableA0 : CBox := ⟨⟨(3919819159809/125000000000),(980045210199/31250000000)⟩,⟨(-144672731/100000000000),(144672731/100000000000)⟩⟩
theorem eval_StableA0 (q : Fin 4 → ℂ) : CExpr.eval ![vW q,vP q,vZ q,vJ q] eStableA0=vStableA0 q := by
  simp [eStableA0,vStableA0,meanStableA,vP,vJ,vW,sub_eq_add_neg]
theorem check_StableA0 : cutCheck ![bW,bP,bZ,bJ] eStableA0 bStableA0=true := by decide +kernel
theorem bound_StableA0 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bStableA0.Contains (vStableA0 q) := by
  have hz : ∀ i : Fin 4, ((![bW,bP,bZ,bJ] : Fin 4 → CBox) i).Contains ((![vW q,vP q,vZ q,vJ q] : Fin 4 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_W q hq)
    · simpa [controlBox] using (bound_P q hq)
    · simpa [controlBox] using (bound_Z q hq)
    · simpa [controlBox] using (bound_J q hq)
  have h := cutCheck_sound ![bW,bP,bZ,bJ] eStableA0 bStableA0 ![vW q,vP q,vZ q,vJ q] hz check_StableA0
  rwa [eval_StableA0] at h

def eStableA1 : CExpr 4 := ((((((.var 0) + (-((.var 1)^2))) + (9 * (.var 1))) + (-(18 * (.var 2)))) + ((2 * (.var 2)) * (.var 1))) + ((((.var 1) + 3) + (-(2 * (.var 2)))) * (.var 3)))
noncomputable def vStableA1 (q : Fin 4 → ℂ) : ℂ := meanStableA (vS q) (vT q) (vRho q) (vY q)
def bStableA1 : CBox := ⟨⟨(19519443679599/500000000000),(7808222528857/200000000000)⟩,⟨(-44505791/40000000000),(44505791/40000000000)⟩⟩
theorem eval_StableA1 (q : Fin 4 → ℂ) : CExpr.eval ![vW q,vP q,vY q,vJ q] eStableA1=vStableA1 q := by
  simp [eStableA1,vStableA1,meanStableA,vP,vJ,vW,sub_eq_add_neg]
theorem check_StableA1 : cutCheck ![bW,bP,bY,bJ] eStableA1 bStableA1=true := by decide +kernel
theorem bound_StableA1 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bStableA1.Contains (vStableA1 q) := by
  have hz : ∀ i : Fin 4, ((![bW,bP,bY,bJ] : Fin 4 → CBox) i).Contains ((![vW q,vP q,vY q,vJ q] : Fin 4 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_W q hq)
    · simpa [controlBox] using (bound_P q hq)
    · simpa [controlBox] using (bound_Y q hq)
    · simpa [controlBox] using (bound_J q hq)
  have h := cutCheck_sound ![bW,bP,bY,bJ] eStableA1 bStableA1 ![vW q,vP q,vY q,vJ q] hz check_StableA1
  rwa [eval_StableA1] at h

def eStableA2 : CExpr 4 := ((((((.var 0) + (-((.var 1)^2))) + (9 * (.var 1))) + (-(18 * (.var 2)))) + ((2 * (.var 2)) * (.var 1))) + ((((.var 1) + 3) + (-(2 * (.var 2)))) * (.var 3)))
noncomputable def vStableA2 (q : Fin 4 → ℂ) : ℂ := meanStableA (vS q) (vT q) (vRho q) (vX q)
def bStableA2 : CBox := ⟨⟨(-7041449796807/1000000000000),(-879818775687/125000000000)⟩,⟨(-1449798987/1000000000000),(1449798987/1000000000000)⟩⟩
theorem eval_StableA2 (q : Fin 4 → ℂ) : CExpr.eval ![vW q,vP q,vX q,vJ q] eStableA2=vStableA2 q := by
  simp [eStableA2,vStableA2,meanStableA,vP,vJ,vW,sub_eq_add_neg]
theorem check_StableA2 : cutCheck ![bW,bP,bX,bJ] eStableA2 bStableA2=true := by decide +kernel
theorem bound_StableA2 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bStableA2.Contains (vStableA2 q) := by
  have hz : ∀ i : Fin 4, ((![bW,bP,bX,bJ] : Fin 4 → CBox) i).Contains ((![vW q,vP q,vX q,vJ q] : Fin 4 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_W q hq)
    · simpa [controlBox] using (bound_P q hq)
    · simpa [controlBox] using (bound_X q hq)
    · simpa [controlBox] using (bound_J q hq)
  have h := cutCheck_sound ![bW,bP,bX,bJ] eStableA2 bStableA2 ![vW q,vP q,vX q,vJ q] hz check_StableA2
  rwa [eval_StableA2] at h

def eU0 : CExpr 3 := ((((.var 0) * (.var 1)) * (.var 2)) * MeanExprParts.halfE)
noncomputable def vU0 (q : Fin 4 → ℂ) : ℂ := sideU0 (vS q) (vT q) (vRho q)
def bU0 : CBox := ⟨⟨(230371595988083/250000000000),(921713628120991/1000000000000)⟩,⟨(-2840629213/25000000000),(14203146369/125000000000)⟩⟩
theorem eval_U0 (q : Fin 4 → ℂ) : CExpr.eval ![vP0 q,vN1 q,vN2 q] eU0=vU0 q := by
  simp [eU0,vU0,sideU0,vP0,vP1,vP2,vN0,vN1,vN2,div_eq_mul_inv,sub_eq_add_neg]
theorem check_U0 : cutCheck ![bP0,bN1,bN2] eU0 bU0=true := by decide +kernel
theorem bound_U0 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bU0.Contains (vU0 q) := by
  have hz : ∀ i : Fin 3, ((![bP0,bN1,bN2] : Fin 3 → CBox) i).Contains ((![vP0 q,vN1 q,vN2 q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_P0 q hq)
    · simpa [controlBox] using (bound_N1 q hq)
    · simpa [controlBox] using (bound_N2 q hq)
  have h := cutCheck_sound ![bP0,bN1,bN2] eU0 bU0 ![vP0 q,vN1 q,vN2 q] hz check_U0
  rwa [eval_U0] at h

end
end ExactMeanDirect20261006.Control

#print axioms ExactMeanDirect20261006.Control.signedComplexValue
#print axioms ExactMeanDirect20261006.Control.eval_S
#print axioms ExactMeanDirect20261006.Control.check_S
#print axioms ExactMeanDirect20261006.Control.bound_S
#print axioms ExactMeanDirect20261006.Control.eval_T
#print axioms ExactMeanDirect20261006.Control.check_T
#print axioms ExactMeanDirect20261006.Control.bound_T
#print axioms ExactMeanDirect20261006.Control.eval_Rho
#print axioms ExactMeanDirect20261006.Control.check_Rho
#print axioms ExactMeanDirect20261006.Control.bound_Rho
#print axioms ExactMeanDirect20261006.Control.eval_P0
#print axioms ExactMeanDirect20261006.Control.check_P0
#print axioms ExactMeanDirect20261006.Control.bound_P0
#print axioms ExactMeanDirect20261006.Control.eval_P1
#print axioms ExactMeanDirect20261006.Control.check_P1
#print axioms ExactMeanDirect20261006.Control.bound_P1
#print axioms ExactMeanDirect20261006.Control.eval_P2
#print axioms ExactMeanDirect20261006.Control.check_P2
#print axioms ExactMeanDirect20261006.Control.bound_P2
#print axioms ExactMeanDirect20261006.Control.eval_N0
#print axioms ExactMeanDirect20261006.Control.check_N0
#print axioms ExactMeanDirect20261006.Control.bound_N0
#print axioms ExactMeanDirect20261006.Control.eval_N1
#print axioms ExactMeanDirect20261006.Control.check_N1
#print axioms ExactMeanDirect20261006.Control.bound_N1
#print axioms ExactMeanDirect20261006.Control.eval_N2
#print axioms ExactMeanDirect20261006.Control.check_N2
#print axioms ExactMeanDirect20261006.Control.bound_N2
#print axioms ExactMeanDirect20261006.Control.eval_Delta
#print axioms ExactMeanDirect20261006.Control.check_Delta
#print axioms ExactMeanDirect20261006.Control.bound_Delta
#print axioms ExactMeanDirect20261006.Control.eval_X
#print axioms ExactMeanDirect20261006.Control.check_X
#print axioms ExactMeanDirect20261006.Control.bound_X
#print axioms ExactMeanDirect20261006.Control.eval_Y
#print axioms ExactMeanDirect20261006.Control.check_Y
#print axioms ExactMeanDirect20261006.Control.bound_Y
#print axioms ExactMeanDirect20261006.Control.eval_Z
#print axioms ExactMeanDirect20261006.Control.check_Z
#print axioms ExactMeanDirect20261006.Control.bound_Z
#print axioms ExactMeanDirect20261006.Control.eval_P
#print axioms ExactMeanDirect20261006.Control.check_P
#print axioms ExactMeanDirect20261006.Control.bound_P
#print axioms ExactMeanDirect20261006.Control.eval_J
#print axioms ExactMeanDirect20261006.Control.check_J
#print axioms ExactMeanDirect20261006.Control.bound_J
#print axioms ExactMeanDirect20261006.Control.eval_W
#print axioms ExactMeanDirect20261006.Control.check_W
#print axioms ExactMeanDirect20261006.Control.bound_W
#print axioms ExactMeanDirect20261006.Control.eval_StableA0
#print axioms ExactMeanDirect20261006.Control.check_StableA0
#print axioms ExactMeanDirect20261006.Control.bound_StableA0
#print axioms ExactMeanDirect20261006.Control.eval_StableA1
#print axioms ExactMeanDirect20261006.Control.check_StableA1
#print axioms ExactMeanDirect20261006.Control.bound_StableA1
#print axioms ExactMeanDirect20261006.Control.eval_StableA2
#print axioms ExactMeanDirect20261006.Control.check_StableA2
#print axioms ExactMeanDirect20261006.Control.bound_StableA2
#print axioms ExactMeanDirect20261006.Control.eval_U0
#print axioms ExactMeanDirect20261006.Control.check_U0
#print axioms ExactMeanDirect20261006.Control.bound_U0
