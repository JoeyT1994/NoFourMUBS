import ControlStages2

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 10000
namespace ExactMeanDirect20261006.Control
open ExactMeanChecker20261006 SignedMeanIntake20261006
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open Centiradian20261006.NativeMean20261006 Centiradian20261006.NativeEvaluation20261006
open scoped ComplexConjugate
noncomputable section

def eWeight1 : CExpr 3 := (((.var 0) * (CExpr.star (.var 1))) * (.var 2))
noncomputable def vWeight1 (q : Fin 4 → ℂ) : ℂ := coeff1 (vAA q) (vCC q)*conj (q 0)*(q 2)
def bWeight1 : CBox := ⟨⟨(-2560143832623/1000000000000),(-255985616921/100000000000)⟩,⟨(1279856168851/1000000000000),(1280143832261/1000000000000)⟩⟩
theorem eval_Weight1 (q : Fin 4 → ℂ) : CExpr.eval ![vC1 q,q 0,q 2] eWeight1=vWeight1 q := by
  simp [eWeight1,vWeight1,vC1,sub_eq_add_neg]
theorem check_Weight1 : cutCheck ![bC1,bq0,bq2] eWeight1 bWeight1=true := by decide +kernel
theorem bound_Weight1 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bWeight1.Contains (vWeight1 q) := by
  have hz : ∀ i : Fin 3, ((![bC1,bq0,bq2] : Fin 3 → CBox) i).Contains ((![vC1 q,q 0,q 2] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_C1 q hq)
    · simpa [controlBox] using (hq 0)
    · simpa [controlBox] using (hq 2)
  have h := cutCheck_sound ![bC1,bq0,bq2] eWeight1 bWeight1 ![vC1 q,q 0,q 2] hz check_Weight1
  rwa [eval_Weight1] at h

def eWeight2 : CExpr 3 := (((.var 0) * ((CExpr.star (.var 1))^2)) * (.var 2))
noncomputable def vWeight2 (q : Fin 4 → ℂ) : ℂ := coeff2 (vAA q) (vCC q)*(conj (q 0))^2*(q 2)
def bWeight2 : CBox := ⟨⟨(359962110633/500000000000),(72007577889/100000000000)⟩,⟨(-86403031171/40000000000),(-539981055413/250000000000)⟩⟩
theorem eval_Weight2 (q : Fin 4 → ℂ) : CExpr.eval ![vC2 q,q 0,q 2] eWeight2=vWeight2 q := by
  simp [eWeight2,vWeight2,vC2,sub_eq_add_neg]
theorem check_Weight2 : cutCheck ![bC2,bq0,bq2] eWeight2 bWeight2=true := by decide +kernel
theorem bound_Weight2 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bWeight2.Contains (vWeight2 q) := by
  have hz : ∀ i : Fin 3, ((![bC2,bq0,bq2] : Fin 3 → CBox) i).Contains ((![vC2 q,q 0,q 2] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_C2 q hq)
    · simpa [controlBox] using (hq 0)
    · simpa [controlBox] using (hq 2)
  have h := cutCheck_sound ![bC2,bq0,bq2] eWeight2 bWeight2 ![vC2 q,q 0,q 2] hz check_Weight2
  rwa [eval_Weight2] at h

def eWeight3 : CExpr 2 := ((.var 0) * (CExpr.star (.var 1)))
noncomputable def vWeight3 (q : Fin 4 → ℂ) : ℂ := coeff3 (vAA q) (vCC q)*conj (q 2)
def bWeight3 : CBox := ⟨⟨(-360022779901/500000000000),(-143990888199/200000000000)⟩,⟨(47990888171/200000000000),(240045559663/1000000000000)⟩⟩
theorem eval_Weight3 (q : Fin 4 → ℂ) : CExpr.eval ![vC3 q,q 2] eWeight3=vWeight3 q := by
  simp [eWeight3,vWeight3,vC3,sub_eq_add_neg]
theorem check_Weight3 : cutCheck ![bC3,bq2] eWeight3 bWeight3=true := by decide +kernel
theorem bound_Weight3 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bWeight3.Contains (vWeight3 q) := by
  have hz : ∀ i : Fin 2, ((![bC3,bq2] : Fin 2 → CBox) i).Contains ((![vC3 q,q 2] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_C3 q hq)
    · simpa [controlBox] using (hq 2)
  have h := cutCheck_sound ![bC3,bq2] eWeight3 bWeight3 ![vC3 q,q 2] hz check_Weight3
  rwa [eval_Weight3] at h

def eWeight4 : CExpr 3 := (((.var 0) * (.var 1)) * ((CExpr.star (.var 2))^2))
noncomputable def vWeight4 (q : Fin 4 → ℂ) : ℂ := coeff4 (vAA q) (vCC q)*(q 0)*(conj (q 2))^2
def bWeight4 : CBox := ⟨⟨(-2800073440787/1000000000000),(-2799926560387/1000000000000)⟩,⟨(-400073440217/1000000000000),(-399926559817/1000000000000)⟩⟩
theorem eval_Weight4 (q : Fin 4 → ℂ) : CExpr.eval ![vC4 q,q 0,q 2] eWeight4=vWeight4 q := by
  simp [eWeight4,vWeight4,vC4,sub_eq_add_neg]
theorem check_Weight4 : cutCheck ![bC4,bq0,bq2] eWeight4 bWeight4=true := by decide +kernel
theorem bound_Weight4 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bWeight4.Contains (vWeight4 q) := by
  have hz : ∀ i : Fin 3, ((![bC4,bq0,bq2] : Fin 3 → CBox) i).Contains ((![vC4 q,q 0,q 2] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_C4 q hq)
    · simpa [controlBox] using (hq 0)
    · simpa [controlBox] using (hq 2)
  have h := cutCheck_sound ![bC4,bq0,bq2] eWeight4 bWeight4 ![vC4 q,q 0,q 2] hz check_Weight4
  rwa [eval_Weight4] at h

def eWeight5 : CExpr 2 := ((.var 0) * (CExpr.star (.var 1)))
noncomputable def vWeight5 (q : Fin 4 → ℂ) : ℂ := coeff5 (vAA q) (vCC q)*conj (q 0)
def bWeight5 : CBox := ⟨⟨(559981811243/200000000000),(2800090945167/1000000000000)⟩,⟨(-2800090944657/1000000000000),(-1399954527857/500000000000)⟩⟩
theorem eval_Weight5 (q : Fin 4 → ℂ) : CExpr.eval ![vC5 q,q 0] eWeight5=vWeight5 q := by
  simp [eWeight5,vWeight5,vC5,sub_eq_add_neg]
theorem check_Weight5 : cutCheck ![bC5,bq0] eWeight5 bWeight5=true := by decide +kernel
theorem bound_Weight5 (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bWeight5.Contains (vWeight5 q) := by
  have hz : ∀ i : Fin 2, ((![bC5,bq0] : Fin 2 → CBox) i).Contains ((![vC5 q,q 0] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_C5 q hq)
    · simpa [controlBox] using (hq 0)
  have h := cutCheck_sound ![bC5,bq0] eWeight5 bWeight5 ![vC5 q,q 0] hz check_Weight5
  rwa [eval_Weight5] at h

def eSA : CExpr 12 := ((((((0 + ((.var 0) * (.var 1))) + ((.var 2) * (.var 3))) + ((.var 4) * (.var 5))) + ((.var 6) * (.var 7))) + ((.var 8) * (.var 9))) + ((.var 10) * (.var 11)))
noncomputable def vSA (q : Fin 4 → ℂ) : ℂ := exactPairForm q 2 (sideMomentConstants (seedS q) (seedT q) (seedR q))
def bSA : CBox := ⟨⟨(-105339647569566129/1000000000000),(-105064258160545539/1000000000000)⟩,⟨(-17876651826059071/200000000000),(-22276967530247949/250000000000)⟩⟩
theorem eval_SA (q : Fin 4 → ℂ) : CExpr.eval ![vWeight0 q,vM0 q,vWeight1 q,vM1 q,vWeight2 q,vM2 q,vWeight3 q,vM3 q,vWeight4 q,vM4 q,vWeight5 q,vM5 q] eSA=vSA q := by
  simp [eSA,vSA,exactPairForm,knownX,knownY,pairFirst,pairSecond,nativePairForm,vAA,vCC,vS,vT,vRho,vWeight0,vWeight1,vWeight2,vWeight3,vWeight4,vWeight5,vM0,vM1,vM2,vM3,vM4,vM5,sub_eq_add_neg]
theorem check_SA : cutCheck ![bWeight0,bM0,bWeight1,bM1,bWeight2,bM2,bWeight3,bM3,bWeight4,bM4,bWeight5,bM5] eSA bSA=true := by decide +kernel
theorem bound_SA (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bSA.Contains (vSA q) := by
  have hz : ∀ i : Fin 12, ((![bWeight0,bM0,bWeight1,bM1,bWeight2,bM2,bWeight3,bM3,bWeight4,bM4,bWeight5,bM5] : Fin 12 → CBox) i).Contains ((![vWeight0 q,vM0 q,vWeight1 q,vM1 q,vWeight2 q,vM2 q,vWeight3 q,vM3 q,vWeight4 q,vM4 q,vWeight5 q,vM5 q] : Fin 12 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Weight0 q hq)
    · simpa [controlBox] using (bound_M0 q hq)
    · simpa [controlBox] using (bound_Weight1 q hq)
    · simpa [controlBox] using (bound_M1 q hq)
    · simpa [controlBox] using (bound_Weight2 q hq)
    · simpa [controlBox] using (bound_M2 q hq)
    · simpa [controlBox] using (bound_Weight3 q hq)
    · simpa [controlBox] using (bound_M3 q hq)
    · simpa [controlBox] using (bound_Weight4 q hq)
    · simpa [controlBox] using (bound_M4 q hq)
    · simpa [controlBox] using (bound_Weight5 q hq)
    · simpa [controlBox] using (bound_M5 q hq)
  have h := cutCheck_sound ![bWeight0,bM0,bWeight1,bM1,bWeight2,bM2,bWeight3,bM3,bWeight4,bM4,bWeight5,bM5] eSA bSA ![vWeight0 q,vM0 q,vWeight1 q,vM1 q,vWeight2 q,vM2 q,vWeight3 q,vM3 q,vWeight4 q,vM4 q,vWeight5 q,vM5 q] hz check_SA
  rwa [eval_SA] at h

def eSB : CExpr 6 := (((0 + ((.var 0) * (.var 1))) + ((.var 2) * (.var 3))) + ((.var 4) * (.var 5)))
noncomputable def vSB (q : Fin 4 → ℂ) : ℂ := exactPairForm q 2 (sideMomentLinear (seedS q) (seedT q) (seedR q))
def bSB : CBox := ⟨⟨(11369725717616389/1000000000000),(11373887809388877/1000000000000)⟩,⟨(279168997088143/125000000000),(279689259292081/125000000000)⟩⟩
theorem eval_SB (q : Fin 4 → ℂ) : CExpr.eval ![vWeight0 q,vB0 q,vWeight2 q,vB2 q,vWeight4 q,vB4 q] eSB=vSB q := by
  simp [eSB,vSB,exactPairForm,knownX,knownY,pairFirst,pairSecond,nativePairForm,vAA,vCC,vS,vT,vRho,vWeight0,vWeight1,vWeight2,vWeight3,vWeight4,vWeight5,sideMomentLinear,vB0,vB2,vB4,sub_eq_add_neg]
theorem check_SB : cutCheck ![bWeight0,bB0,bWeight2,bB2,bWeight4,bB4] eSB bSB=true := by decide +kernel
theorem bound_SB (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bSB.Contains (vSB q) := by
  have hz : ∀ i : Fin 6, ((![bWeight0,bB0,bWeight2,bB2,bWeight4,bB4] : Fin 6 → CBox) i).Contains ((![vWeight0 q,vB0 q,vWeight2 q,vB2 q,vWeight4 q,vB4 q] : Fin 6 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Weight0 q hq)
    · simpa [controlBox] using (bound_B0 q hq)
    · simpa [controlBox] using (bound_Weight2 q hq)
    · simpa [controlBox] using (bound_B2 q hq)
    · simpa [controlBox] using (bound_Weight4 q hq)
    · simpa [controlBox] using (bound_B4 q hq)
  have h := cutCheck_sound ![bWeight0,bB0,bWeight2,bB2,bWeight4,bB4] eSB bSB ![vWeight0 q,vB0 q,vWeight2 q,vB2 q,vWeight4 q,vB4 q] hz check_SB
  rwa [eval_SB] at h

def eA : CExpr 1 := (((.var 0) + (-(CExpr.star (.var 0)))) * MeanExprParts.imagE)
noncomputable def vA (q : Fin 4 → ℂ) : ℂ := (exactMeanA q 2:ℂ)
def bA : CBox := ⟨⟨(22276967530247949/125000000000),(17876651826059071/100000000000)⟩,⟨(-27538940902059/100000000000),(27538940902059/100000000000)⟩⟩
theorem eval_A (q : Fin 4 → ℂ) : CExpr.eval ![vSA q] eA=vA q := by
  have h := signedComplexValue (vSA q)
  simpa [eA,vA,exactMeanA,vSA,sub_eq_add_neg] using h
theorem check_A : cutCheck ![bSA] eA bA=true := by decide +kernel
theorem bound_A (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bA.Contains (vA q) := by
  have hz : ∀ i : Fin 1, ((![bSA] : Fin 1 → CBox) i).Contains ((![vSA q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_SA q hq)
  have h := cutCheck_sound ![bSA] eA bA ![vSA q] hz check_A
  rwa [eval_A] at h

def eBeta : CExpr 1 := (((.var 0) + (-(CExpr.star (.var 0)))) * MeanExprParts.imagE)
noncomputable def vBeta (q : Fin 4 → ℂ) : ℂ := (exactMeanBeta q 2:ℂ)
def bBeta : CBox := ⟨⟨(-279689259292081/62500000000),(-279168997088143/62500000000)⟩,⟨(-520261471561/125000000000),(520261471561/125000000000)⟩⟩
theorem eval_Beta (q : Fin 4 → ℂ) : CExpr.eval ![vSB q] eBeta=vBeta q := by
  have h := signedComplexValue (vSB q)
  simpa [eBeta,vBeta,exactMeanBeta,vSB,sub_eq_add_neg] using h
theorem check_Beta : cutCheck ![bSB] eBeta bBeta=true := by decide +kernel
theorem bound_Beta (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bBeta.Contains (vBeta q) := by
  have hz : ∀ i : Fin 1, ((![bSB] : Fin 1 → CBox) i).Contains ((![vSB q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_SB q hq)
  have h := cutCheck_sound ![bSB] eBeta bBeta ![vSB q] hz check_Beta
  rwa [eval_Beta] at h

def eD : CExpr 1 := (3 * (.var 0))
noncomputable def vD (q : Fin 4 → ℂ) : ℂ := (exactD q:ℂ)
def bD : CBox := ⟨⟨(39807720936524061/1000000000000),(39818519709233061/1000000000000)⟩,⟨(-1079916030861/200000000000),(1079916030861/200000000000)⟩⟩
theorem eval_D (q : Fin 4 → ℂ) : CExpr.eval ![vDelta q] eD=vD q := by
  simp [eD,vD,exactD,exactDelta,vDelta,vS,vT,vRho,sub_eq_add_neg]
theorem check_D : cutCheck ![bDelta] eD bD=true := by decide +kernel
theorem bound_D (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bD.Contains (vD q) := by
  have hz : ∀ i : Fin 1, ((![bDelta] : Fin 1 → CBox) i).Contains ((![vDelta q] : Fin 1 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Delta q hq)
  have h := cutCheck_sound ![bDelta] eD bD ![vDelta q] hz check_D
  rwa [eval_D] at h

def eR : CExpr 3 := (((((((((((((.var 0)^2) * (.var 0)) * 4) + (((.var 0)^2) * (((-((.var 1)^2)) + ((.var 1) * 2)) + 27))) + ((.var 0) * ((((((((.var 1)^2) * (.var 1)) * 2) + (-(((.var 1)^2) * 24))) + (-(((.var 1) * (.var 2)) * 2))) + ((.var 1) * 54)) + ((.var 2) * 30)))) + (-(((.var 1)^2)^2))) + ((((.var 1)^2) * (.var 1)) * 18)) + ((((.var 1)^2) * (.var 2)) * 2)) + (-(((.var 1)^2) * 81))) + (-(((.var 1) * (.var 2)) * 54))) + (-((.var 2)^2))) + ((.var 2) * 324))
noncomputable def vR (q : Fin 4 → ℂ) : ℂ := (exactSeedR q:ℂ)
def bR : CBox := ⟨⟨(2324975214353/200000000000),(12131922637969/1000000000000)⟩,⟨(-126762591613/500000000000),(126762591613/500000000000)⟩⟩
theorem eval_R (q : Fin 4 → ℂ) : CExpr.eval ![vJ q,vP q,vW q] eR=vR q := by
  calc
    CExpr.eval ![vJ q,vP q,vW q] eR = stableRFormula (vP q) (vJ q) (vW q) := by
      simp [eR,stableRFormula,sub_eq_add_neg]
    _ = (gramInvariant (vS q) (vT q) (vRho q):ℂ) := stableRFormula_gram _ _ _
    _ = vR q := congrArg (fun x : ℝ => (x:ℂ)) (exactSeedR_eq_gramInvariant q).symm
theorem check_R : cutCheck ![bJ,bP,bW] eR bR=true := by decide +kernel
theorem bound_R (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bR.Contains (vR q) := by
  have hz : ∀ i : Fin 3, ((![bJ,bP,bW] : Fin 3 → CBox) i).Contains ((![vJ q,vP q,vW q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_J q hq)
    · simpa [controlBox] using (bound_P q hq)
    · simpa [controlBox] using (bound_W q hq)
  have h := cutCheck_sound ![bJ,bP,bW] eR bR ![vJ q,vP q,vW q] hz check_R
  rwa [eval_R] at h

def eKm : CExpr 2 := ((.var 0) + (-(.var 1)))
noncomputable def vKm (q : Fin 4 → ℂ) : ℂ := (exactKMinus q 2:ℂ)
def bKm : CBox := ⟨⟨(-44293547857906357/1000000000000),(-44274424889934349/1000000000000)⟩,⟨(-9561671926793/1000000000000),(9561671926793/1000000000000)⟩⟩
theorem eval_Km (q : Fin 4 → ℂ) : CExpr.eval ![vBeta q,vD q] eKm=vKm q := by
  simp [eKm,vKm,exactKMinus,vBeta,vD,sub_eq_add_neg]
theorem check_Km : cutCheck ![bBeta,bD] eKm bKm=true := by decide +kernel
theorem bound_Km (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bKm.Contains (vKm q) := by
  have hz : ∀ i : Fin 2, ((![bBeta,bD] : Fin 2 → CBox) i).Contains ((![vBeta q,vD q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Beta q hq)
    · simpa [controlBox] using (bound_D q hq)
  have h := cutCheck_sound ![bBeta,bD] eKm bKm ![vBeta q,vD q] hz check_Km
  rwa [eval_Km] at h

def eKp : CExpr 2 := ((.var 0) + (.var 1))
noncomputable def vKp (q : Fin 4 → ℂ) : ℂ := (exactKPlus q 2:ℂ)
def bKp : CBox := ⟨⟨(7066538557570153/200000000000),(35351815755822773/1000000000000)⟩,⟨(-9561671926793/1000000000000),(9561671926793/1000000000000)⟩⟩
theorem eval_Kp (q : Fin 4 → ℂ) : CExpr.eval ![vBeta q,vD q] eKp=vKp q := by
  simp [eKp,vKp,exactKPlus,vBeta,vD,sub_eq_add_neg]
theorem check_Kp : cutCheck ![bBeta,bD] eKp bKp=true := by decide +kernel
theorem bound_Kp (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bKp.Contains (vKp q) := by
  have hz : ∀ i : Fin 2, ((![bBeta,bD] : Fin 2 → CBox) i).Contains ((![vBeta q,vD q] : Fin 2 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_Beta q hq)
    · simpa [controlBox] using (bound_D q hq)
  have h := cutCheck_sound ![bBeta,bD] eKp bKp ![vBeta q,vD q] hz check_Kp
  rwa [eval_Kp] at h

def eHm : CExpr 3 := (((.var 0)^2) + (-(((.var 1)^2) * (.var 2))))
noncomputable def vHm (q : Fin 4 → ℂ) : ℂ := (exactHMinus q 2:ℂ)
def bHm : CBox := ⟨⟨(994839543105408951227/125000000000),(1834078099347271511947/200000000000)⟩,⟨(-15153319621152078887/25000000000),(15153319621152078887/25000000000)⟩⟩
theorem eval_Hm (q : Fin 4 → ℂ) : CExpr.eval ![vA q,vKm q,vR q] eHm=vHm q := by
  simp [eHm,vHm,exactHMinus,vA,vKm,vR,sub_eq_add_neg]
theorem check_Hm : cutCheck ![bA,bKm,bR] eHm bHm=true := by decide +kernel
theorem bound_Hm (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bHm.Contains (vHm q) := by
  have hz : ∀ i : Fin 3, ((![bA,bKm,bR] : Fin 3 → CBox) i).Contains ((![vA q,vKm q,vR q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_A q hq)
    · simpa [controlBox] using (bound_Km q hq)
    · simpa [controlBox] using (bound_R q hq)
  have h := cutCheck_sound ![bA,bKm,bR] eHm bHm ![vA q,vKm q,vR q] hz check_Hm
  rwa [eval_Hm] at h

def eHp : CExpr 3 := (((.var 0)^2) + (-(((.var 1)^2) * (.var 2))))
noncomputable def vHp (q : Fin 4 → ℂ) : ℂ := (exactHPlus q 2:ℂ)
def bHp : CBox := ⟨⟨(16598720767756842770477/1000000000000),(3489046119230092833139/200000000000)⟩,⟨(-211752939861014161619/500000000000),(211752939861014161619/500000000000)⟩⟩
theorem eval_Hp (q : Fin 4 → ℂ) : CExpr.eval ![vA q,vKp q,vR q] eHp=vHp q := by
  simp [eHp,vHp,exactHPlus,vA,vKp,vR,sub_eq_add_neg]
theorem check_Hp : cutCheck ![bA,bKp,bR] eHp bHp=true := by decide +kernel
theorem bound_Hp (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : bHp.Contains (vHp q) := by
  have hz : ∀ i : Fin 3, ((![bA,bKp,bR] : Fin 3 → CBox) i).Contains ((![vA q,vKp q,vR q] : Fin 3 → ℂ) i) := by
    intro i
    fin_cases i
    · simpa [controlBox] using (bound_A q hq)
    · simpa [controlBox] using (bound_Kp q hq)
    · simpa [controlBox] using (bound_R q hq)
  have h := cutCheck_sound ![bA,bKp,bR] eHp bHp ![vA q,vKp q,vR q] hz check_Hp
  rwa [eval_Hp] at h

end
end ExactMeanDirect20261006.Control
#print axioms ExactMeanDirect20261006.Control.eval_Weight1
#print axioms ExactMeanDirect20261006.Control.check_Weight1
#print axioms ExactMeanDirect20261006.Control.bound_Weight1
#print axioms ExactMeanDirect20261006.Control.eval_Weight2
#print axioms ExactMeanDirect20261006.Control.check_Weight2
#print axioms ExactMeanDirect20261006.Control.bound_Weight2
#print axioms ExactMeanDirect20261006.Control.eval_Weight3
#print axioms ExactMeanDirect20261006.Control.check_Weight3
#print axioms ExactMeanDirect20261006.Control.bound_Weight3
#print axioms ExactMeanDirect20261006.Control.eval_Weight4
#print axioms ExactMeanDirect20261006.Control.check_Weight4
#print axioms ExactMeanDirect20261006.Control.bound_Weight4
#print axioms ExactMeanDirect20261006.Control.eval_Weight5
#print axioms ExactMeanDirect20261006.Control.check_Weight5
#print axioms ExactMeanDirect20261006.Control.bound_Weight5
#print axioms ExactMeanDirect20261006.Control.eval_SA
#print axioms ExactMeanDirect20261006.Control.check_SA
#print axioms ExactMeanDirect20261006.Control.bound_SA
#print axioms ExactMeanDirect20261006.Control.eval_SB
#print axioms ExactMeanDirect20261006.Control.check_SB
#print axioms ExactMeanDirect20261006.Control.bound_SB
#print axioms ExactMeanDirect20261006.Control.eval_A
#print axioms ExactMeanDirect20261006.Control.check_A
#print axioms ExactMeanDirect20261006.Control.bound_A
#print axioms ExactMeanDirect20261006.Control.eval_Beta
#print axioms ExactMeanDirect20261006.Control.check_Beta
#print axioms ExactMeanDirect20261006.Control.bound_Beta
#print axioms ExactMeanDirect20261006.Control.eval_D
#print axioms ExactMeanDirect20261006.Control.check_D
#print axioms ExactMeanDirect20261006.Control.bound_D
#print axioms ExactMeanDirect20261006.Control.eval_R
#print axioms ExactMeanDirect20261006.Control.check_R
#print axioms ExactMeanDirect20261006.Control.bound_R
#print axioms ExactMeanDirect20261006.Control.eval_Km
#print axioms ExactMeanDirect20261006.Control.check_Km
#print axioms ExactMeanDirect20261006.Control.bound_Km
#print axioms ExactMeanDirect20261006.Control.eval_Kp
#print axioms ExactMeanDirect20261006.Control.check_Kp
#print axioms ExactMeanDirect20261006.Control.bound_Kp
#print axioms ExactMeanDirect20261006.Control.eval_Hm
#print axioms ExactMeanDirect20261006.Control.check_Hm
#print axioms ExactMeanDirect20261006.Control.bound_Hm
#print axioms ExactMeanDirect20261006.Control.eval_Hp
#print axioms ExactMeanDirect20261006.Control.check_Hp
#print axioms ExactMeanDirect20261006.Control.bound_Hp
