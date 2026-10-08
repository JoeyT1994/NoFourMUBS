import ControlStages3
import ExactSignedMean

/-! One positive-width exact control rectangle. This is not a leaf or ID
from the external campaign. Every derived coefficient enclosure is supplied
by the checked cutpoint chain, not by a native producer assertion. -/
set_option autoImplicit false
set_option maxHeartbeats 2000000
namespace ExactMeanDirect20261006.Control
open ExactMeanChecker20261006 SignedMeanIntake20261006
open Centiradian20261006 Centiradian20261006.NativeMean20261006
open Centiradian20261006.NativeEvaluation20261006
open scoped ComplexConjugate
noncomputable section

def controlCenter : Fin 4 → ℂ := ![1,Complex.I,(-3/5:ℂ)+(4/5:ℂ)*Complex.I,-Complex.I]

theorem control_positive_width (i : Fin 4) :
    (controlBox i).re.hi-(controlBox i).re.lo=(1/500000:ℚ) ∧
    (controlBox i).im.hi-(controlBox i).im.lo=(1/500000:ℚ) := by
  fin_cases i <;> decide +kernel

theorem control_center_member (i : Fin 4) : (controlBox i).Contains (controlCenter i) := by
  fin_cases i <;> norm_num [controlBox,controlCenter,bq0,bq1,bq2,bq3,CBox.Contains,QInterval.Contains,
    Complex.mul_re,Complex.mul_im,Complex.div_re,Complex.div_im,Complex.normSq_apply]

theorem control_center_unit (i : Fin 4) : Complex.normSq (controlCenter i)=1 := by
  fin_cases i <;> norm_num [controlCenter,Complex.normSq_apply,Complex.mul_re,Complex.mul_im,
    Complex.div_re,Complex.div_im]

theorem control_R_positive (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) :
    0<exactSeedR q := by
  have h := (bound_R q hq).1.1
  change (bR.re.lo:ℝ) ≤ exactSeedR q at h
  have hn : (0:ℝ)<(bR.re.lo:ℝ) := by norm_num [bR]
  exact lt_of_lt_of_le hn h

def directCertificate : MeanCertificate where
  a := bA.re
  km := bKm.re
  kp := bKp.re
  hm := bHm.re
  hp := bHp.re

theorem directCertificate_valid (q : Fin 4 → ℂ)
    (hq : ∀ i, (controlBox i).Contains (q i)) :
    directCertificate.Valid (exactMeanA q 2) (exactMeanBeta q 2)
      (exactD q) (Real.sqrt (exactSeedR q)) := by
  have hA := (bound_A q hq).1
  have hKm := (bound_Km q hq).1
  have hKp := (bound_Kp q hq).1
  have hHm := (bound_Hm q hq).1
  have hHp := (bound_Hp q hq).1
  simp only [vA,vKm,vKp,vHm,vHp,Complex.ofReal_re] at *
  have hr := (control_R_positive q hq).le
  refine ⟨hA,hKm,hKp,?_,?_⟩
  · simpa only [directCertificate,exactHMinus,exactKMinus,Real.sq_sqrt hr] using hHm
  · simpa only [directCertificate,exactHPlus,exactKPlus,Real.sq_sqrt hr] using hHp

/-- Both decisions are closed exact rational kernel reductions on the final
literal cutpoint endpoints; the soundness chain above proves their meaning. -/
theorem directCertificate_both : directCertificate.excludesPlus=true ∧
    directCertificate.excludesMinus=true := by decide +kernel

/-- The positive-width control genuinely excludes the requested physical
configuration. Even positive R follows from the input rectangle here. -/
theorem control_excludes {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hb : ∀ i, (controlBox i).Contains (seedEntry H i)) : False := by
  have hr := control_R_positive (seedEntry H) hb
  have hR : 0<leadingR H := by rwa [exactSeedR_physical_seed hd] at hr
  have hbound := exact_seed_mean_abs_bound hH hd hm hr 2
  have hv := directCertificate_valid (seedEntry H) hb
  have hD := exactD_nonnegative (seedEntry H)
  have hq := Real.sqrt_pos.2 hr
  rcases physicalSideSign_two_roots hH hR.le with hp | hn
  · rw [hp,←exactSeedR_physical_seed hd] at hbound
    have ht := (sq_le_sq₀ (abs_nonneg _) (mul_nonneg hD (Real.sqrt_nonneg _))).2 hbound
    have hsq : (exactMeanA (seedEntry H) 2+
        exactMeanBeta (seedEntry H) 2*Real.sqrt (exactSeedR (seedEntry H)))^2 ≤
        (exactD (seedEntry H)*Real.sqrt (exactSeedR (seedEntry H)))^2 := by
      simpa only [sq_abs,mul_comm] using ht
    exact MeanCertificate.excludesPlus_sound hv directCertificate_both.1 hD hq hsq
  · rw [hn,←exactSeedR_physical_seed hd] at hbound
    have ht := (sq_le_sq₀ (abs_nonneg _) (mul_nonneg hD (Real.sqrt_nonneg _))).2 hbound
    have hsq : (exactMeanA (seedEntry H) 2-
        exactMeanBeta (seedEntry H) 2*Real.sqrt (exactSeedR (seedEntry H)))^2 ≤
        (exactD (seedEntry H)*Real.sqrt (exactSeedR (seedEntry H)))^2 := by
      simpa only [sq_abs,neg_mul,mul_neg,←sub_eq_add_neg,mul_comm] using ht
    exact MeanCertificate.excludesMinus_sound hv directCertificate_both.2 hD hq hsq
end
end ExactMeanDirect20261006.Control

#print axioms ExactMeanDirect20261006.Control.control_positive_width
#print axioms ExactMeanDirect20261006.Control.control_center_member
#print axioms ExactMeanDirect20261006.Control.control_center_unit
#print axioms ExactMeanDirect20261006.Control.control_R_positive
#print axioms ExactMeanDirect20261006.Control.directCertificate_valid
#print axioms ExactMeanDirect20261006.Control.directCertificate_both
#print axioms ExactMeanDirect20261006.Control.control_excludes
