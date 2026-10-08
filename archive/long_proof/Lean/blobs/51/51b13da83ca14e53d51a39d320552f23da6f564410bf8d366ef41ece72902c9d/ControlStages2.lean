import ControlStages1

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 10000
namespace ExactMeanDirect20261006.Control
open ExactMeanChecker20261006 SignedMeanIntake20261006
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open Centiradian20261006.NativeMean20261006 Centiradian20261006.NativeEvaluation20261006
open scoped ComplexConjugate
noncomputable section

def eU1 : CExpr 3 := ((((CExpr.star (.var 0)) * (.var 1)) * (.var 2)) * MeanExprParts.halfE)
noncomputable def vU1 (q : Fin 4 → ℂ) : ℂ := sideU1 (vS q) (vT q) (vRho q)
def bU1 : CBox := ⟨⟨(-132815240383321/1000000000000),(-33151391461121/250000000000)⟩,⟨(-730012042196731/1000000000000),(-364901183919523/500000000000)⟩⟩
theorem eval_U1 (q : Fin 4 → ℂ) : CExpr.eval ![vP1 q,vN0 q,vN2 q] eU1=vU1 q := by
  simp [eU1,vU1,sideU1,vP0,vP1,vP2,vN0,vN1,vN2,div_eq_mul_inv,sub_eq_add_neg]
theorem check_U1 : cutCheck ![bP1,bN0,bN2] eU1 bU1=true := by decide +kernel
theorem bound_U1 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bU1.Contains (vU1 q) := by
  have hz : ∀ i : Fin 3, ((![bP1,bN0,bN2] : Fin 3 → CBox) i).Contains ((![vP1 q,vN0 q,vN2 q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_P1 q hq)
    · simpa [controlBox] using (bound_N0 q hq)
    · simpa [controlBox] using (bound_N2 q hq)
  have h := cutCheck_sound ![bP1,bN0,bN2] eU1 bU1 ![vP1 q,vN0 q,vN2 q] hz check_U1
  rwa [eval_U1] at h

def eU2 : CExpr 3 := ((((CExpr.star (.var 0)) * (.var 1)) * (.var 2)) * MeanExprParts.halfE)
noncomputable def vU2 (q : Fin 4 → ℂ) : ℂ := sideU2 (vS q) (vT q) (vRho q)
def bU2 : CBox := ⟨⟨(-132779218881211/200000000000),(-663207924349633/1000000000000)⟩,⟨(3649191926174993/1000000000000),(3649880095326001/1000000000000)⟩⟩
theorem eval_U2 (q : Fin 4 → ℂ) : CExpr.eval ![vP2 q,vN0 q,vN1 q] eU2=vU2 q := by
  simp [eU2,vU2,sideU2,vP0,vP1,vP2,vN0,vN1,vN2,div_eq_mul_inv,sub_eq_add_neg]
theorem check_U2 : cutCheck ![bP2,bN0,bN1] eU2 bU2=true := by decide +kernel
theorem bound_U2 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bU2.Contains (vU2 q) := by
  have hz : ∀ i : Fin 3, ((![bP2,bN0,bN1] : Fin 3 → CBox) i).Contains ((![vP2 q,vN0 q,vN1 q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_P2 q hq)
    · simpa [controlBox] using (bound_N0 q hq)
    · simpa [controlBox] using (bound_N1 q hq)
  have h := cutCheck_sound ![bP2,bN0,bN1] eU2 bU2 ![vP2 q,vN0 q,vN1 q] hz check_U2
  rwa [eval_U2] at h

def eM0 : CExpr 5 := ((((.var 0) * (.var 1)) * (.var 2)) + (-((.var 3) * (.var 4))))
noncomputable def vM0 (q : Fin 4 → ℂ) : ℂ := sideMomentConstants (vS q) (vT q) (vRho q) 0
def bM0 : CBox := ⟨⟨(-3909642028829919/250000000000),(-488190760423117/31250000000)⟩,⟨(-8232167364597/1000000000000),(8232168728421/1000000000000)⟩⟩
theorem eval_M0 (q : Fin 4 → ℂ) : CExpr.eval ![vDelta q,vS q,vT q,vStableA0 q,vU0 q] eM0=vM0 q := by
  simp [eM0,vM0,sideMomentConstants,vDelta,vStableA0,vStableA1,vStableA2,vU0,vU1,vU2,vX,vY,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_M0 : cutCheck ![bDelta,bS,bT,bStableA0,bU0] eM0 bM0=true := by decide +kernel
theorem bound_M0 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bM0.Contains (vM0 q) := by
  have hz : ∀ i : Fin 5, ((![bDelta,bS,bT,bStableA0,bU0] : Fin 5 → CBox) i).Contains ((![vDelta q,vS q,vT q,vStableA0 q,vU0 q] : Fin 5 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Delta q hq)
    · simpa [controlBox] using (bound_S q hq)
    · simpa [controlBox] using (bound_T q hq)
    · simpa [controlBox] using (bound_StableA0 q hq)
    · simpa [controlBox] using (bound_U0 q hq)
  have h := cutCheck_sound ![bDelta,bS,bT,bStableA0,bU0] eM0 bM0 ![vDelta q,vS q,vT q,vStableA0 q,vU0 q] hz check_M0
  rwa [eval_M0] at h

def eM1 : CExpr 2 := ((.var 0) * (CExpr.star (.var 1)))
noncomputable def vM1 (q : Fin 4 → ℂ) : ℂ := sideMomentConstants (vS q) (vT q) (vRho q) 1
def bM1 : CBox := ⟨⟨(7960045906686899/1000000000000),(7965202238355817/1000000000000)⟩,⟨(2122850788221117/200000000000),(10619410246961067/1000000000000)⟩⟩
theorem eval_M1 (q : Fin 4 → ℂ) : CExpr.eval ![vDelta q,vRho q] eM1=vM1 q := by
  simp [eM1,vM1,sideMomentConstants,vDelta,vStableA0,vStableA1,vStableA2,vU0,vU1,vU2,vX,vY,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_M1 : cutCheck ![bDelta,bRho] eM1 bM1=true := by decide +kernel
theorem bound_M1 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bM1.Contains (vM1 q) := by
  have hz : ∀ i : Fin 2, ((![bDelta,bRho] : Fin 2 → CBox) i).Contains ((![vDelta q,vRho q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Delta q hq)
    · simpa [controlBox] using (bound_Rho q hq)
  have h := cutCheck_sound ![bDelta,bRho] eM1 bM1 ![vDelta q,vRho q] hz check_M1
  rwa [eval_M1] at h

def eM2 : CExpr 5 := ((((.var 0) * (.var 1)) * (CExpr.star (.var 2))) + (-((.var 3) * (.var 4))))
noncomputable def vM2 (q : Fin 4 → ℂ) : ℂ := sideMomentConstants (vS q) (vT q) (vRho q) 2
def bM2 : CBox := ⟨⟨(-70113081519713/500000000000),(-22915482562437/200000000000)⟩,⟨(-89191905642709/125000000000),(-5503092243721/8000000000)⟩⟩
theorem eval_M2 (q : Fin 4 → ℂ) : CExpr.eval ![vDelta q,vS q,vRho q,vStableA1 q,vU1 q] eM2=vM2 q := by
  simp [eM2,vM2,sideMomentConstants,vDelta,vStableA0,vStableA1,vStableA2,vU0,vU1,vU2,vX,vY,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_M2 : cutCheck ![bDelta,bS,bRho,bStableA1,bU1] eM2 bM2=true := by decide +kernel
theorem bound_M2 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bM2.Contains (vM2 q) := by
  have hz : ∀ i : Fin 5, ((![bDelta,bS,bRho,bStableA1,bU1] : Fin 5 → CBox) i).Contains ((![vDelta q,vS q,vRho q,vStableA1 q,vU1 q] : Fin 5 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Delta q hq)
    · simpa [controlBox] using (bound_S q hq)
    · simpa [controlBox] using (bound_Rho q hq)
    · simpa [controlBox] using (bound_StableA1 q hq)
    · simpa [controlBox] using (bound_U1 q hq)
  have h := cutCheck_sound ![bDelta,bS,bRho,bStableA1,bU1] eM2 bM2 ![vDelta q,vS q,vRho q,vStableA1 q,vU1 q] hz check_M2
  rwa [eval_M2] at h

def eM3 : CExpr 2 := ((.var 0) * (.var 1))
noncomputable def vM3 (q : Fin 4 → ℂ) : ℂ := sideMomentConstants (vS q) (vT q) (vRho q) 3
def bM3 : CBox := ⟨⟨(-5309522482520889/1000000000000),(-5307309610779243/1000000000000)⟩,⟨(1326550788167009/500000000000),(1327657236957819/500000000000)⟩⟩
theorem eval_M3 (q : Fin 4 → ℂ) : CExpr.eval ![vDelta q,vT q] eM3=vM3 q := by
  simp [eM3,vM3,sideMomentConstants,vDelta,vStableA0,vStableA1,vStableA2,vU0,vU1,vU2,vX,vY,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_M3 : cutCheck ![bDelta,bT] eM3 bM3=true := by decide +kernel
theorem bound_M3 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bM3.Contains (vM3 q) := by
  have hz : ∀ i : Fin 2, ((![bDelta,bT] : Fin 2 → CBox) i).Contains ((![vDelta q,vT q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Delta q hq)
    · simpa [controlBox] using (bound_T q hq)
  have h := cutCheck_sound ![bDelta,bT] eM3 bM3 ![vDelta q,vT q] hz check_M3
  rwa [eval_M3] at h

def eM4 : CExpr 5 := ((((.var 0) * (.var 1)) * (.var 2)) + (-((.var 3) * (.var 4))))
noncomputable def vM4 (q : Fin 4 → ℂ) : ℂ := sideMomentConstants (vS q) (vT q) (vRho q) 4
def bM4 : CBox := ⟨⟨(-5743349875539073/1000000000000),(-5722829831531251/1000000000000)⟩,⟨(15760865837296083/500000000000),(3942781460896111/125000000000)⟩⟩
theorem eval_M4 (q : Fin 4 → ℂ) : CExpr.eval ![vDelta q,vT q,vRho q,vStableA2 q,vU2 q] eM4=vM4 q := by
  simp [eM4,vM4,sideMomentConstants,vDelta,vStableA0,vStableA1,vStableA2,vU0,vU1,vU2,vX,vY,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_M4 : cutCheck ![bDelta,bT,bRho,bStableA2,bU2] eM4 bM4=true := by decide +kernel
theorem bound_M4 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bM4.Contains (vM4 q) := by
  have hz : ∀ i : Fin 5, ((![bDelta,bT,bRho,bStableA2,bU2] : Fin 5 → CBox) i).Contains ((![vDelta q,vT q,vRho q,vStableA2 q,vU2 q] : Fin 5 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Delta q hq)
    · simpa [controlBox] using (bound_T q hq)
    · simpa [controlBox] using (bound_Rho q hq)
    · simpa [controlBox] using (bound_StableA2 q hq)
    · simpa [controlBox] using (bound_U2 q hq)
  have h := cutCheck_sound ![bDelta,bT,bRho,bStableA2,bU2] eM4 bM4 ![vDelta q,vT q,vRho q,vStableA2 q,vU2 q] hz check_M4
  rwa [eval_M4] at h

def eM5 : CExpr 2 := ((.var 0) * (.var 1))
noncomputable def vM5 (q : Fin 4 → ℂ) : ℂ := sideMomentConstants (vS q) (vT q) (vRho q) 5
def bM5 : CBox := ⟨⟨(-207402392308487/7812500000),(-13268327111108797/500000000000)⟩,⟨(-3319116543115021/250000000000),(-829100878124467/62500000000)⟩⟩
theorem eval_M5 (q : Fin 4 → ℂ) : CExpr.eval ![vDelta q,vS q] eM5=vM5 q := by
  simp [eM5,vM5,sideMomentConstants,vDelta,vStableA0,vStableA1,vStableA2,vU0,vU1,vU2,vX,vY,vZ,Complex.mul_conj,sub_eq_add_neg]
theorem check_M5 : cutCheck ![bDelta,bS] eM5 bM5=true := by decide +kernel
theorem bound_M5 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bM5.Contains (vM5 q) := by
  have hz : ∀ i : Fin 2, ((![bDelta,bS] : Fin 2 → CBox) i).Contains ((![vDelta q,vS q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Delta q hq)
    · simpa [controlBox] using (bound_S q hq)
  have h := cutCheck_sound ![bDelta,bS] eM5 bM5 ![vDelta q,vS q] hz check_M5
  rwa [eval_M5] at h

def eB0 : CExpr 1 := ((-MeanExprParts.imagE) * (.var 0))
noncomputable def vB0 (q : Fin 4 → ℂ) : ℂ := sideMomentLinear (vS q) (vT q) (vRho q) 0
def bB0 : CBox := ⟨⟨(-2840629213/25000000000),(14203146369/125000000000)⟩,⟨(-921713628120991/1000000000000),(-230371595988083/250000000000)⟩⟩
theorem eval_B0 (q : Fin 4 → ℂ) : CExpr.eval ![vU0 q] eB0=vB0 q := by
  simp [eB0,vB0,sideMomentLinear,vU0,vU1,vU2,sub_eq_add_neg]
theorem check_B0 : cutCheck ![bU0] eB0 bB0=true := by decide +kernel
theorem bound_B0 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bB0.Contains (vB0 q) := by
  have hz : ∀ i : Fin 1, ((![bU0] : Fin 1 → CBox) i).Contains ((![vU0 q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_U0 q hq)
  have h := cutCheck_sound ![bU0] eB0 bB0 ![vU0 q] hz check_B0
  rwa [eval_B0] at h

def eB2 : CExpr 1 := (MeanExprParts.imagE * (.var 0))
noncomputable def vB2 (q : Fin 4 → ℂ) : ℂ := sideMomentLinear (vS q) (vT q) (vRho q) 2
def bB2 : CBox := ⟨⟨(364901183919523/500000000000),(730012042196731/1000000000000)⟩,⟨(-132815240383321/1000000000000),(-33151391461121/250000000000)⟩⟩
theorem eval_B2 (q : Fin 4 → ℂ) : CExpr.eval ![vU1 q] eB2=vB2 q := by
  simp [eB2,vB2,sideMomentLinear,vU0,vU1,vU2,sub_eq_add_neg]
theorem check_B2 : cutCheck ![bU1] eB2 bB2=true := by decide +kernel
theorem bound_B2 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bB2.Contains (vB2 q) := by
  have hz : ∀ i : Fin 1, ((![bU1] : Fin 1 → CBox) i).Contains ((![vU1 q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_U1 q hq)
  have h := cutCheck_sound ![bU1] eB2 bB2 ![vU1 q] hz check_B2
  rwa [eval_B2] at h

def eB4 : CExpr 1 := (MeanExprParts.imagE * (.var 0))
noncomputable def vB4 (q : Fin 4 → ℂ) : ℂ := sideMomentLinear (vS q) (vT q) (vRho q) 4
def bB4 : CBox := ⟨⟨(-3649880095326001/1000000000000),(-3649191926174993/1000000000000)⟩,⟨(-132779218881211/200000000000),(-663207924349633/1000000000000)⟩⟩
theorem eval_B4 (q : Fin 4 → ℂ) : CExpr.eval ![vU2 q] eB4=vB4 q := by
  simp [eB4,vB4,sideMomentLinear,vU0,vU1,vU2,sub_eq_add_neg]
theorem check_B4 : cutCheck ![bU2] eB4 bB4=true := by decide +kernel
theorem bound_B4 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bB4.Contains (vB4 q) := by
  have hz : ∀ i : Fin 1, ((![bU2] : Fin 1 → CBox) i).Contains ((![vU2 q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_U2 q hq)
  have h := cutCheck_sound ![bU2] eB4 bB4 ![vU2 q] hz check_B4
  rwa [eval_B4] at h

def eAA : CExpr 2 := ((.var 0) * (CExpr.star (.var 1)))
noncomputable def vAA (q : Fin 4 → ℂ) : ℂ := q 1*conj (q 0)
def bAA : CBox := ⟨⟨(-1000001/500000000000),(1000001/500000000000)⟩,⟨(499999/500000),(500001000001/500000000000)⟩⟩
theorem eval_AA (q : Fin 4 → ℂ) : CExpr.eval ![q 1,q 0] eAA=vAA q := by
  simp [eAA,vAA,sub_eq_add_neg]
theorem check_AA : cutCheck ![bq1,bq0] eAA bAA=true := by decide +kernel
theorem bound_AA (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bAA.Contains (vAA q) := by
  have hz : ∀ i : Fin 2, ((![bq1,bq0] : Fin 2 → CBox) i).Contains ((![q 1,q 0] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (hq 1)
    · simpa [controlBox] using (hq 0)
  have h := cutCheck_sound ![bq1,bq0] eAA bAA ![q 1,q 0] hz check_AA
  rwa [eval_AA] at h

def eCC : CExpr 2 := ((.var 0) * (CExpr.star (.var 1)))
noncomputable def vCC (q : Fin 4 → ℂ) : ℂ := q 3*conj (q 2)
def bCC : CBox := ⟨⟨(-400001200001/500000000000),(-999997/1250000)⟩,⟨(749997/1250000),(300001200001/500000000000)⟩⟩
theorem eval_CC (q : Fin 4 → ℂ) : CExpr.eval ![q 3,q 2] eCC=vCC q := by
  simp [eCC,vCC,sub_eq_add_neg]
theorem check_CC : cutCheck ![bq3,bq2] eCC bCC=true := by decide +kernel
theorem bound_CC (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bCC.Contains (vCC q) := by
  have hz : ∀ i : Fin 2, ((![bq3,bq2] : Fin 2 → CBox) i).Contains ((![q 3,q 2] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (hq 3)
    · simpa [controlBox] using (hq 2)
  have h := cutCheck_sound ![bq3,bq2] eCC bCC ![q 3,q 2] hz check_CC
  rwa [eval_CC] at h

def eC0 : CExpr 2 := ((((-(((.var 0) + (-(.var 1)))^2)) * ((.var 0) + (.var 1))) * ((CExpr.star (.var 0))^2)) * ((CExpr.star (.var 1))^2))
noncomputable def vC0 (q : Fin 4 → ℂ) : ℂ := coeff0 (vAA q) (vCC q)
def bC0 : CBox := ⟨⟨(-640056973669/1000000000000),(-319971513837/500000000000)⟩,⟨(-80003560829/62500000000),(-639971513639/500000000000)⟩⟩
theorem eval_C0 (q : Fin 4 → ℂ) : CExpr.eval ![vAA q,vCC q] eC0=vC0 q := by
  simp [eC0,vC0,coeff0,neg_mul,sub_eq_add_neg]
theorem check_C0 : cutCheck ![bAA,bCC] eC0 bC0=true := by decide +kernel
theorem bound_C0 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bC0.Contains (vC0 q) := by
  have hz : ∀ i : Fin 2, ((![bAA,bCC] : Fin 2 → CBox) i).Contains ((![vAA q,vCC q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_AA q hq)
    · simpa [controlBox] using (bound_CC q hq)
  have h := cutCheck_sound ![bAA,bCC] eC0 bC0 ![vAA q,vCC q] hz check_C0
  rwa [eval_C0] at h

def eC1 : CExpr 2 := ((((((.var 0) + (-(.var 1))) * ((.var 0) + (.var 1))) * (((.var 0) * (.var 1)) + (-1))) * ((CExpr.star (.var 0))^2)) * (CExpr.star (.var 1)))
noncomputable def vC1 (q : Fin 4 → ℂ) : ℂ := coeff1 (vAA q) (vCC q)
def bC1 : CBox := ⟨⟨(2559903846801/1000000000000),(640024038689/250000000000)⟩,⟨(1279903846163/1000000000000),(320024038531/250000000000)⟩⟩
theorem eval_C1 (q : Fin 4 → ℂ) : CExpr.eval ![vAA q,vCC q] eC1=vC1 q := by
  simp [eC1,vC1,coeff1,neg_mul,sub_eq_add_neg]
theorem check_C1 : cutCheck ![bAA,bCC] eC1 bC1=true := by decide +kernel
theorem bound_C1 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bC1.Contains (vC1 q) := by
  have hz : ∀ i : Fin 2, ((![bAA,bCC] : Fin 2 → CBox) i).Contains ((![vAA q,vCC q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_AA q hq)
    · simpa [controlBox] using (bound_CC q hq)
  have h := cutCheck_sound ![bAA,bCC] eC1 bC1 ![vAA q,vCC q] hz check_C1
  rwa [eval_C1] at h

def eC2 : CExpr 2 := ((((((.var 0) + (-1))^2) * ((.var 0) + 1)) * (CExpr.star (.var 1))) * (CExpr.star (.var 0)))
noncomputable def vC2 (q : Fin 4 → ℂ) : ℂ := coeff2 (vAA q) (vCC q)
def bC2 : CBox := ⟨⟨(-1080023155361/500000000000),(-2159953689757/1000000000000)⟩,⟨(719953689577/1000000000000),(360023155271/500000000000)⟩⟩
theorem eval_C2 (q : Fin 4 → ℂ) : CExpr.eval ![vCC q,vAA q] eC2=vC2 q := by
  simp [eC2,vC2,coeff2,neg_mul,sub_eq_add_neg]
theorem check_C2 : cutCheck ![bCC,bAA] eC2 bC2=true := by decide +kernel
theorem bound_C2 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bC2.Contains (vC2 q) := by
  have hz : ∀ i : Fin 2, ((![bCC,bAA] : Fin 2 → CBox) i).Contains ((![vCC q,vAA q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_CC q hq)
    · simpa [controlBox] using (bound_AA q hq)
  have h := cutCheck_sound ![bCC,bAA] eC2 bC2 ![vCC q,vAA q] hz check_C2
  rwa [eval_C2] at h

def eC3 : CExpr 2 := (((((-(((.var 0)^2) + (-(.var 1)))) * ((.var 1) + (-1))) * ((.var 1) + 1)) * (CExpr.star (.var 0))) * ((CExpr.star (.var 1))^2))
noncomputable def vC3 (q : Fin 4 → ℂ) : ℂ := coeff3 (vAA q) (vCC q)
def bC3 : CBox := ⟨⟨(59992035819/250000000000),(240031856711/1000000000000)⟩,⟨(-720031857139/1000000000000),(-179992035927/250000000000)⟩⟩
theorem eval_C3 (q : Fin 4 → ℂ) : CExpr.eval ![vAA q,vCC q] eC3=vC3 q := by
  simp [eC3,vC3,coeff3,neg_mul,sub_eq_add_neg] <;> ring
theorem check_C3 : cutCheck ![bAA,bCC] eC3 bC3=true := by decide +kernel
theorem bound_C3 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bC3.Contains (vC3 q) := by
  have hz : ∀ i : Fin 2, ((![bAA,bCC] : Fin 2 → CBox) i).Contains ((![vAA q,vCC q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_AA q hq)
    · simpa [controlBox] using (bound_CC q hq)
  have h := cutCheck_sound ![bAA,bCC] eC3 bC3 ![vAA q,vCC q] hz check_C3
  rwa [eval_C3] at h

def eC4 : CExpr 2 := ((((((.var 0) + (-1))^2) * ((.var 0) + 1)) * (CExpr.star (.var 0))) * (CExpr.star (.var 1)))
noncomputable def vC4 (q : Fin 4 → ℂ) : ℂ := coeff4 (vAA q) (vCC q)
def bC4 : CBox := ⟨⟨(399951199903/1000000000000),(3125381251/7812500000)⟩,⟨(2799951200123/1000000000000),(2800048800347/1000000000000)⟩⟩
theorem eval_C4 (q : Fin 4 → ℂ) : CExpr.eval ![vAA q,vCC q] eC4=vC4 q := by
  simp [eC4,vC4,coeff4,neg_mul,sub_eq_add_neg]
theorem check_C4 : cutCheck ![bAA,bCC] eC4 bC4=true := by decide +kernel
theorem bound_C4 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bC4.Contains (vC4 q) := by
  have hz : ∀ i : Fin 2, ((![bAA,bCC] : Fin 2 → CBox) i).Contains ((![vAA q,vCC q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_AA q hq)
    · simpa [controlBox] using (bound_CC q hq)
  have h := cutCheck_sound ![bAA,bCC] eC4 bC4 ![vAA q,vCC q] hz check_C4
  rwa [eval_C4] at h

def eC5 : CExpr 2 := ((((((.var 0) + (-1)) * ((.var 0) + 1)) * ((.var 0) + (-((.var 1)^2)))) * ((CExpr.star (.var 0))^2)) * (CExpr.star (.var 1)))
noncomputable def vC5 (q : Fin 4 → ℂ) : ℂ := coeff5 (vAA q) (vCC q)
def bC5 : CBox := ⟨⟨(349989332027/125000000000),(700021336249/250000000000)⟩,⟨(-1400042672243/500000000000),(-559982931143/200000000000)⟩⟩
theorem eval_C5 (q : Fin 4 → ℂ) : CExpr.eval ![vAA q,vCC q] eC5=vC5 q := by
  simp [eC5,vC5,coeff5,neg_mul,sub_eq_add_neg]
theorem check_C5 : cutCheck ![bAA,bCC] eC5 bC5=true := by decide +kernel
theorem bound_C5 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bC5.Contains (vC5 q) := by
  have hz : ∀ i : Fin 2, ((![bAA,bCC] : Fin 2 → CBox) i).Contains ((![vAA q,vCC q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_AA q hq)
    · simpa [controlBox] using (bound_CC q hq)
  have h := cutCheck_sound ![bAA,bCC] eC5 bC5 ![vAA q,vCC q] hz check_C5
  rwa [eval_C5] at h

def eWeight0 : CExpr 3 := (((.var 0) * (CExpr.star (.var 1))) * (CExpr.star (.var 2)))
noncomputable def vWeight0 (q : Fin 4 → ℂ) : ℂ := coeff0 (vAA q) (vCC q)*conj (q 0)*conj (q 2)
def bWeight0 : CBox := ⟨⟨(-320042185049/500000000000),(-39994726847/62500000000)⟩,⟨(1279915630623/1000000000000),(1280084371171/1000000000000)⟩⟩
theorem eval_Weight0 (q : Fin 4 → ℂ) : CExpr.eval ![vC0 q,q 0,q 2] eWeight0=vWeight0 q := by
  simp [eWeight0,vWeight0,vC0,sub_eq_add_neg]
theorem check_Weight0 : cutCheck ![bC0,bq0,bq2] eWeight0 bWeight0=true := by decide +kernel
theorem bound_Weight0 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bWeight0.Contains (vWeight0 q) := by
  have hz : ∀ i : Fin 3, ((![bC0,bq0,bq2] : Fin 3 → CBox) i).Contains ((![vC0 q,q 0,q 2] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_C0 q hq)
    · simpa [controlBox] using (hq 0)
    · simpa [controlBox] using (hq 2)
  have h := cutCheck_sound ![bC0,bq0,bq2] eWeight0 bWeight0 ![vC0 q,q 0,q 2] hz check_Weight0
  rwa [eval_Weight0] at h

end
end ExactMeanDirect20261006.Control
#print axioms ExactMeanDirect20261006.Control.eval_U1
#print axioms ExactMeanDirect20261006.Control.check_U1
#print axioms ExactMeanDirect20261006.Control.bound_U1
#print axioms ExactMeanDirect20261006.Control.eval_U2
#print axioms ExactMeanDirect20261006.Control.check_U2
#print axioms ExactMeanDirect20261006.Control.bound_U2
#print axioms ExactMeanDirect20261006.Control.eval_M0
#print axioms ExactMeanDirect20261006.Control.check_M0
#print axioms ExactMeanDirect20261006.Control.bound_M0
#print axioms ExactMeanDirect20261006.Control.eval_M1
#print axioms ExactMeanDirect20261006.Control.check_M1
#print axioms ExactMeanDirect20261006.Control.bound_M1
#print axioms ExactMeanDirect20261006.Control.eval_M2
#print axioms ExactMeanDirect20261006.Control.check_M2
#print axioms ExactMeanDirect20261006.Control.bound_M2
#print axioms ExactMeanDirect20261006.Control.eval_M3
#print axioms ExactMeanDirect20261006.Control.check_M3
#print axioms ExactMeanDirect20261006.Control.bound_M3
#print axioms ExactMeanDirect20261006.Control.eval_M4
#print axioms ExactMeanDirect20261006.Control.check_M4
#print axioms ExactMeanDirect20261006.Control.bound_M4
#print axioms ExactMeanDirect20261006.Control.eval_M5
#print axioms ExactMeanDirect20261006.Control.check_M5
#print axioms ExactMeanDirect20261006.Control.bound_M5
#print axioms ExactMeanDirect20261006.Control.eval_B0
#print axioms ExactMeanDirect20261006.Control.check_B0
#print axioms ExactMeanDirect20261006.Control.bound_B0
#print axioms ExactMeanDirect20261006.Control.eval_B2
#print axioms ExactMeanDirect20261006.Control.check_B2
#print axioms ExactMeanDirect20261006.Control.bound_B2
#print axioms ExactMeanDirect20261006.Control.eval_B4
#print axioms ExactMeanDirect20261006.Control.check_B4
#print axioms ExactMeanDirect20261006.Control.bound_B4
#print axioms ExactMeanDirect20261006.Control.eval_AA
#print axioms ExactMeanDirect20261006.Control.check_AA
#print axioms ExactMeanDirect20261006.Control.bound_AA
#print axioms ExactMeanDirect20261006.Control.eval_CC
#print axioms ExactMeanDirect20261006.Control.check_CC
#print axioms ExactMeanDirect20261006.Control.bound_CC
#print axioms ExactMeanDirect20261006.Control.eval_C0
#print axioms ExactMeanDirect20261006.Control.check_C0
#print axioms ExactMeanDirect20261006.Control.bound_C0
#print axioms ExactMeanDirect20261006.Control.eval_C1
#print axioms ExactMeanDirect20261006.Control.check_C1
#print axioms ExactMeanDirect20261006.Control.bound_C1
#print axioms ExactMeanDirect20261006.Control.eval_C2
#print axioms ExactMeanDirect20261006.Control.check_C2
#print axioms ExactMeanDirect20261006.Control.bound_C2
#print axioms ExactMeanDirect20261006.Control.eval_C3
#print axioms ExactMeanDirect20261006.Control.check_C3
#print axioms ExactMeanDirect20261006.Control.bound_C3
#print axioms ExactMeanDirect20261006.Control.eval_C4
#print axioms ExactMeanDirect20261006.Control.check_C4
#print axioms ExactMeanDirect20261006.Control.bound_C4
#print axioms ExactMeanDirect20261006.Control.eval_C5
#print axioms ExactMeanDirect20261006.Control.check_C5
#print axioms ExactMeanDirect20261006.Control.bound_C5
#print axioms ExactMeanDirect20261006.Control.eval_Weight0
#print axioms ExactMeanDirect20261006.Control.check_Weight0
#print axioms ExactMeanDirect20261006.Control.bound_Weight0
