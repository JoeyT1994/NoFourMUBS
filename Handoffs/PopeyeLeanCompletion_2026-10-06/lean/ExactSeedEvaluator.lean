import NativeStableR

/-! Matrix-free exact meanings of every signed-mean output. Inputs are four
complex seed entries; pair order is the native (0,1),(0,2),(1,2). Actual-H
binding is proved from dephasing. No numerical or interval assertion occurs. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeEvaluation20261006
open scoped ComplexConjugate BigOperators
open SignedDeterminant NativeMean20261006 NativeSigned20261006
noncomputable section

def knownX (q : Fin 4 → ℂ) : Fin 3 → ℂ := ![1,q 0,q 1]
def knownY (q : Fin 4 → ℂ) : Fin 3 → ℂ := ![1,q 2,q 3]
def pairFirst : Fin 3 → Fin 3 := ![0,0,1]
def pairSecond : Fin 3 → Fin 3 := ![1,2,2]

def exactPairForm (q : Fin 4 → ℂ) (pair : Fin 3) (M : Fin 6 → ℂ) : ℂ :=
  nativePairForm (knownX q (pairFirst pair)) (knownY q (pairFirst pair))
    (knownX q (pairSecond pair)) (knownY q (pairSecond pair)) M

def exactMeanA (q : Fin 4 → ℂ) (pair : Fin 3) : ℝ :=
  signedValue (exactPairForm q pair (sideMomentConstants (seedS q) (seedT q) (seedR q)))
def exactMeanBeta (q : Fin 4 → ℂ) (pair : Fin 3) : ℝ :=
  signedValue (exactPairForm q pair (sideMomentLinear (seedS q) (seedT q) (seedR q)))
def exactDelta (q : Fin 4 → ℂ) : ℝ := sideDelta (seedS q) (seedT q) (seedR q)
def exactD (q : Fin 4 → ℂ) : ℝ := 3*exactDelta q

def exactKMinus (q : Fin 4 → ℂ) (pair : Fin 3) : ℝ := exactMeanBeta q pair-exactD q
def exactKPlus (q : Fin 4 → ℂ) (pair : Fin 3) : ℝ := exactMeanBeta q pair+exactD q
def exactHMinus (q : Fin 4 → ℂ) (pair : Fin 3) : ℝ :=
  (exactMeanA q pair)^2-(exactKMinus q pair)^2*exactSeedR q
def exactHPlus (q : Fin 4 → ℂ) (pair : Fin 3) : ℝ :=
  (exactMeanA q pair)^2-(exactKPlus q pair)^2*exactSeedR q

theorem exactPairForm_physical_seed {H : Mat6} (hd : Dephased H)
    (pair : Fin 3) (M : Fin 6 → ℂ) :
    exactPairForm (seedEntry H) pair M=physicalPairForm H pair M := by
  fin_cases pair <;>
    simp [exactPairForm,knownX,knownY,pairFirst,pairSecond,physicalPairForm,
      topFirst,topSecond,seedEntry,hd.2]

theorem exactMeanA_physical_seed {H : Mat6} (hd : Dephased H) (pair : Fin 3) :
    exactMeanA (seedEntry H) pair=nativeClearedA H pair := by
  rw [exactMeanA,exactPairForm_physical_seed hd]
  rfl

theorem exactMeanBeta_physical_seed {H : Mat6} (hd : Dephased H) (pair : Fin 3) :
    exactMeanBeta (seedEntry H) pair=nativeClearedBeta H pair := by
  rw [exactMeanBeta,exactPairForm_physical_seed hd]
  rfl

theorem exactDelta_physical_seed (H : Mat6) : exactDelta (seedEntry H)=nativeDelta H := by rfl

theorem exactDelta_nonnegative (q : Fin 4 → ℂ) : 0≤exactDelta q := sideDelta_nonnegative _ _ _
theorem exactD_nonnegative (q : Fin 4 → ℂ) : 0≤exactD q := mul_nonneg (by norm_num) (exactDelta_nonnegative q)

theorem exactKMinus_physical_seed {H : Mat6} (hd : Dephased H) (pair : Fin 3) :
    exactKMinus (seedEntry H) pair=nativeClearedBeta H pair-3*nativeDelta H := by
  rw [exactKMinus,exactD,exactMeanBeta_physical_seed hd,exactDelta_physical_seed]

theorem exactKPlus_physical_seed {H : Mat6} (hd : Dephased H) (pair : Fin 3) :
    exactKPlus (seedEntry H) pair=nativeClearedBeta H pair+3*nativeDelta H := by
  rw [exactKPlus,exactD,exactMeanBeta_physical_seed hd,exactDelta_physical_seed]

theorem exactHMinus_physical_seed {H : Mat6} (hd : Dephased H) (pair : Fin 3) :
    exactHMinus (seedEntry H) pair=(nativeClearedA H pair)^2-
      (nativeClearedBeta H pair-3*nativeDelta H)^2*leadingR H := by
  rw [exactHMinus,exactMeanA_physical_seed hd,exactKMinus_physical_seed hd,exactSeedR_physical_seed hd]

theorem exactHPlus_physical_seed {H : Mat6} (hd : Dephased H) (pair : Fin 3) :
    exactHPlus (seedEntry H) pair=(nativeClearedA H pair)^2-
      (nativeClearedBeta H pair+3*nativeDelta H)^2*leadingR H := by
  rw [exactHPlus,exactMeanA_physical_seed hd,exactKPlus_physical_seed hd,exactSeedR_physical_seed hd]

/-- The exact evaluator invariant is the square of the actual side sign. -/
theorem exact_seed_sign_square {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    (physicalSideSign H)^2=exactSeedR (seedEntry H) := by
  rw [exactSeedR_physical_seed hd]
  exact physicalSideSign_square hH

/-- Matrix-free exact necessary inequality, obtained from the already checked
actual-matrix theorem after all evaluator meanings have been proved. -/
theorem exact_seed_mean_abs_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<exactSeedR (seedEntry H)) (pair : Fin 3) :
    |exactMeanA (seedEntry H) pair+physicalSideSign H*exactMeanBeta (seedEntry H) pair| ≤
      exactD (seedEntry H)*Real.sqrt (exactSeedR (seedEntry H)) := by
  rw [exactSeedR_physical_seed hd] at hR
  rw [exactMeanA_physical_seed hd,exactMeanBeta_physical_seed hd,exactD,
    exactDelta_physical_seed,exactSeedR_physical_seed hd]
  exact physical_native_mean_abs_bound hH hd hm hR pair
end
end Centiradian20261006.NativeEvaluation20261006

#print axioms Centiradian20261006.NativeEvaluation20261006.exactPairForm_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.exactMeanA_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.exactMeanBeta_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.exactDelta_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.exactDelta_nonnegative
#print axioms Centiradian20261006.NativeEvaluation20261006.exactD_nonnegative
#print axioms Centiradian20261006.NativeEvaluation20261006.exactKMinus_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.exactKPlus_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.exactHMinus_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.exactHPlus_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.exact_seed_sign_square
#print axioms Centiradian20261006.NativeEvaluation20261006.exact_seed_mean_abs_bound
