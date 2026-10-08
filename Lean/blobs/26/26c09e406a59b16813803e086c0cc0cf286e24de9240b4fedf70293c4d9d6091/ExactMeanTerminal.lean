import MeanExprSeed
import ExactSignedMean

/-! Literal physical exclusion from a decidable rational certificate test.
No interval containment for derived coefficients is a theorem premise: the
interpreter proves those enclosures from the four input rectangles. This does
not assert that every native closed leaf passes this more conservative test. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open SignedMeanIntake20261006 MeanExprParts
open Centiradian20261006 Centiradian20261006.NativeMean20261006
open Centiradian20261006.NativeEvaluation20261006

 def certificate (b : Fin 4 → CBox) (pair : Fin 3) : MeanCertificate where
  a := (CExpr.range b (meanAE pair)).re
  km := (CExpr.range b (kmE pair)).re
  kp := (CExpr.range b (kpE pair)).re
  hm := (CExpr.range b (hmE pair)).re
  hp := (CExpr.range b (hpE pair)).re

theorem certificate_valid (b : Fin 4 → CBox) (q : Fin 4 → ℂ) (pair : Fin 3)
    (hq : ∀ i, (b i).Contains (q i)) (hr : 0≤exactSeedR q) :
    (certificate b pair).Valid (exactMeanA q pair) (exactMeanBeta q pair)
      (exactD q) (Real.sqrt (exactSeedR q)) := by
  have ha := (CExpr.range_sound (meanAE pair) b q hq).1
  have hkm := (CExpr.range_sound (kmE pair) b q hq).1
  have hkp := (CExpr.range_sound (kpE pair) b q hq).1
  have hhm := (CExpr.range_sound (hmE pair) b q hq).1
  have hhp := (CExpr.range_sound (hpE pair) b q hq).1
  simp only [eval_meanAE,eval_kmE,eval_kpE,eval_hmE,eval_hpE,Complex.ofReal_re] at *
  refine ⟨ha,hkm,hkp,?_,?_⟩
  · simpa only [certificate,exactHMinus,exactKMinus,Real.sq_sqrt hr] using hhm
  · simpa only [certificate,exactHPlus,exactKPlus,Real.sq_sqrt hr] using hhp

theorem excludes_plus_physical {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (b : Fin 4 → CBox)
    (hb : ∀ i, (b i).Contains (seedEntry H i)) (pair : Fin 3)
    (hs : physicalSideSign H=Real.sqrt (leadingR H))
    (hc : (certificate b pair).excludesPlus=true) : False := by
  have hr : 0<exactSeedR (seedEntry H) := by rwa [exactSeedR_physical_seed hd]
  have hbound := exact_seed_mean_abs_bound hH hd hm hr pair
  rw [hs,←exactSeedR_physical_seed hd] at hbound
  have hsq : (exactMeanA (seedEntry H) pair+
      exactMeanBeta (seedEntry H) pair*Real.sqrt (exactSeedR (seedEntry H)))^2 ≤
      (exactD (seedEntry H)*Real.sqrt (exactSeedR (seedEntry H)))^2 := by
    have ht := (sq_le_sq₀ (abs_nonneg _) (mul_nonneg (exactD_nonnegative _) (Real.sqrt_nonneg _))).2 hbound
    simpa only [sq_abs,mul_comm] using ht
  exact MeanCertificate.excludesPlus_sound (certificate_valid b _ pair hb (le_of_lt hr))
    hc (exactD_nonnegative _) (Real.sqrt_pos.2 hr) hsq

theorem excludes_minus_physical {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (b : Fin 4 → CBox)
    (hb : ∀ i, (b i).Contains (seedEntry H i)) (pair : Fin 3)
    (hs : physicalSideSign H= -Real.sqrt (leadingR H))
    (hc : (certificate b pair).excludesMinus=true) : False := by
  have hr : 0<exactSeedR (seedEntry H) := by rwa [exactSeedR_physical_seed hd]
  have hbound := exact_seed_mean_abs_bound hH hd hm hr pair
  rw [hs,←exactSeedR_physical_seed hd] at hbound
  have hsq : (exactMeanA (seedEntry H) pair-
      exactMeanBeta (seedEntry H) pair*Real.sqrt (exactSeedR (seedEntry H)))^2 ≤
      (exactD (seedEntry H)*Real.sqrt (exactSeedR (seedEntry H)))^2 := by
    have ht := (sq_le_sq₀ (abs_nonneg _) (mul_nonneg (exactD_nonnegative _) (Real.sqrt_nonneg _))).2 hbound
    simpa only [sq_abs,neg_mul,mul_neg,← sub_eq_add_neg,mul_comm] using ht
  exact MeanCertificate.excludesMinus_sound (certificate_valid b _ pair hb (le_of_lt hr))
    hc (exactD_nonnegative _) (Real.sqrt_pos.2 hr) hsq

def rejectsPlus (b : Fin 4 → CBox) : Bool :=
  (certificate b 0).excludesPlus || (certificate b 1).excludesPlus || (certificate b 2).excludesPlus
def rejectsMinus (b : Fin 4 → CBox) : Bool :=
  (certificate b 0).excludesMinus || (certificate b 1).excludesMinus || (certificate b 2).excludesMinus
def rejectsBoth (b : Fin 4 → CBox) : Bool := rejectsPlus b && rejectsMinus b

/-- All actual side orientations are covered independently; the two signs may
be rejected by different known-column pairs. No sign-matching premise occurs. -/
theorem rejectsBoth_physical {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (b : Fin 4 → CBox)
    (hb : ∀ i, (b i).Contains (seedEntry H i)) (hc : rejectsBoth b=true) : False := by
  have htests : rejectsPlus b=true ∧ rejectsMinus b=true := by
    simpa only [rejectsBoth,Bool.and_eq_true] using hc
  rcases physicalSideSign_two_roots hH (le_of_lt hR) with hp | hn
  · have hs := htests.1
    simp only [rejectsPlus,Bool.or_eq_true] at hs
    rcases hs with (hs|hs)|hs
    · exact excludes_plus_physical hH hd hm hR b hb 0 hp hs
    · exact excludes_plus_physical hH hd hm hR b hb 1 hp hs
    · exact excludes_plus_physical hH hd hm hR b hb 2 hp hs
  · have hs := htests.2
    simp only [rejectsMinus,Bool.or_eq_true] at hs
    rcases hs with (hs|hs)|hs
    · exact excludes_minus_physical hH hd hm hR b hb 0 hn hs
    · exact excludes_minus_physical hH hd hm hR b hb 1 hn hs
    · exact excludes_minus_physical hH hd hm hR b hb 2 hn hs
end ExactMeanChecker20261006

#print axioms ExactMeanChecker20261006.certificate_valid
#print axioms ExactMeanChecker20261006.excludes_plus_physical
#print axioms ExactMeanChecker20261006.excludes_minus_physical
#print axioms ExactMeanChecker20261006.rejectsBoth_physical
