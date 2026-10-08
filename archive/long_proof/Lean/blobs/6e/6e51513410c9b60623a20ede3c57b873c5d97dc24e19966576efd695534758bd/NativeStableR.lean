import PhysicalNativeMean
import CentiradianArithmetic

/-! Exact interpretation of the native stableR and stableA arithmetic.
These are mathematical formulas, not claims about floating-point execution.
The established invariant expansion and Gram normalization are reused. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeEvaluation20261006
open scoped ComplexConjugate
open SignedDeterminant NativeMean20261006
noncomputable section

/-- Operation order and factors from signed_linear_engine.cpp::stableR. -/
def stableRFormula {K : Type*} [CommRing K] (p j w : K) : K :=
  let pp := p^2
  let jj := j^2
  jj*j*4+jj*(-pp+p*2+27)+j*(pp*p*2-pp*24-p*w*2+p*54+w*30)-
    pp^2+pp*p*18+pp*w*2-pp*81-p*w*54-w^2+w*324

def nativeStableR (p j w : ℝ) : ℝ := stableRFormula p j w

def nativeStableA (p j w z : ℝ) : ℝ :=
  w-p^2+p*9-z*18+z*p*2+(p+3-z*2)*j

def seedS (q : Fin 4 → ℂ) : ℂ := -1-q 0-q 1
def seedT (q : Fin 4 → ℂ) : ℂ := -1-q 2-q 3
def seedR (q : Fin 4 → ℂ) : ℂ := -1-q 2*conj (q 0)-q 3*conj (q 1)

def exactSeedR (q : Fin 4 → ℂ) : ℝ :=
  nativeStableR (gramP (seedS q) (seedT q) (seedR q))
    (gramJ (seedS q) (seedT q) (seedR q))
    (gramW (seedS q) (seedT q) (seedR q))

/-- Uses the prior checked expansion, rather than redoing the invariant proof. -/
theorem nativeStableR_eq_invariant (p j w : ℝ) :
    nativeStableR p j w=invariant p j w := by
  rw [invariant_expansion]
  unfold nativeStableR stableRFormula
  ring

theorem cast_nativeStableR (p j w : ℝ) :
    (nativeStableR p j w:ℂ)=stableRFormula (p:ℂ) (j:ℂ) (w:ℂ) := by
  simp [nativeStableR,stableRFormula]

theorem stableRFormula_gram (s t r : ℂ) :
    stableRFormula (pComplex s t r) (jComplex s t r) (wComplex s t r)=
      (gramInvariant s t r:ℂ) := by
  rw [←cast_gramP,←cast_gramJ,←cast_gramW,←cast_nativeStableR,nativeStableR_eq_invariant]
  rfl

theorem meanStableA_eq_real_formula (s t r : ℂ) (z : ℝ) :
    meanStableA s t r (z:ℂ)=
      (nativeStableA (gramP s t r) (gramJ s t r) (gramW s t r) z:ℂ) := by
  unfold meanStableA
  rw [←cast_gramP,←cast_gramJ,←cast_gramW]
  simp [nativeStableA]
  <;> ring

theorem meanStableA_is_real (s t r : ℂ) (z : ℝ) :
    (meanStableA s t r (z:ℂ)).im=0 := by
  rw [meanStableA_eq_real_formula]
  exact Complex.ofReal_im _

theorem exactSeedR_eq_gramInvariant (q : Fin 4 → ℂ) :
    exactSeedR q=gramInvariant (seedS q) (seedT q) (seedR q) := by
  exact nativeStableR_eq_invariant _ _ _

theorem seedS_seedEntry (H : Mat6) : seedS (seedEntry H)=nativeSeedS H := by rfl
theorem seedT_seedEntry (H : Mat6) : seedT (seedEntry H)=nativeSeedT H := by rfl
theorem seedR_seedEntry (H : Mat6) : seedR (seedEntry H)=nativeSeedR H := by rfl

/-- The actual native seed invariant equals literal leadingR. Dephasing alone
is sufficient: no physicality, maximality or interval assumption is needed. -/
theorem exactSeedR_physical_seed {H : Mat6} (hd : Dephased H) :
    exactSeedR (seedEntry H)=leadingR H := by
  rw [exactSeedR_eq_gramInvariant]
  exact (dephased_leadingR hd).symm

/-- The complex native formula is also bound, with an exactly zero imaginary
part because its entire value is the cast of the real physical invariant. -/
theorem stableRFormula_physical_seed {H : Mat6} (hd : Dephased H) :
    stableRFormula
      (pComplex (nativeSeedS H) (nativeSeedT H) (nativeSeedR H))
      (jComplex (nativeSeedS H) (nativeSeedT H) (nativeSeedR H))
      (wComplex (nativeSeedS H) (nativeSeedT H) (nativeSeedR H)) = (leadingR H:ℂ) := by
  rw [stableRFormula_gram]
  exact congrArg (fun x : ℝ => (x:ℂ)) (dephased_leadingR hd).symm
end
end Centiradian20261006.NativeEvaluation20261006

#print axioms Centiradian20261006.NativeEvaluation20261006.nativeStableR_eq_invariant
#print axioms Centiradian20261006.NativeEvaluation20261006.cast_nativeStableR
#print axioms Centiradian20261006.NativeEvaluation20261006.stableRFormula_gram
#print axioms Centiradian20261006.NativeEvaluation20261006.meanStableA_eq_real_formula
#print axioms Centiradian20261006.NativeEvaluation20261006.meanStableA_is_real
#print axioms Centiradian20261006.NativeEvaluation20261006.exactSeedR_eq_gramInvariant
#print axioms Centiradian20261006.NativeEvaluation20261006.seedS_seedEntry
#print axioms Centiradian20261006.NativeEvaluation20261006.seedT_seedEntry
#print axioms Centiradian20261006.NativeEvaluation20261006.seedR_seedEntry
#print axioms Centiradian20261006.NativeEvaluation20261006.exactSeedR_physical_seed
#print axioms Centiradian20261006.NativeEvaluation20261006.stableRFormula_physical_seed
