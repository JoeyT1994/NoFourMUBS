import Mathlib

/-!
An arithmetic sublemma for the proposed quantitative MC1 route.

This file does NOT prove that almost-critical physical strips have their
twenty scalar p values close to {0, 5, pStar}.  That is the missing physical
stability premise.  It proves an explicit robust contradiction once that
premise, the count interpretation, and the physical sum rule are supplied.
-/

namespace Seed0024.Averaging

def criticalP (p : ℝ) : ℝ := p ^ 3 - 17 * p ^ 2 + 107 * p - 243

theorem criticalP_from_kappa (p k : ℝ)
    (hk : 3 * k ^ 3 + k ^ 2 + k - 1 = 0)
    (hp : p * (1 + k ^ 2) = 5 + 9 * k ^ 2) :
    criticalP p = 0 := by
  have ha : (p - 9) * k ^ 2 + (p - 5) = 0 := by nlinarith [hp]
  have hb : (p - 3) * k + (p - 7) = 0 := by
    linear_combination ((3 * k + 1) / 2) * ha - ((p - 9) / 2) * hk
  unfold criticalP
  linear_combination ((p - 3) ^ 2 / 2) * ha -
    ((p - 9) * ((p - 3) * k - (p - 7)) / 2) * hb

theorem criticalP_strictMono : StrictMono criticalP := by
  intro a b hab
  have hfac : 0 < a ^ 2 + a * b + b ^ 2 - 17 * (a + b) + 107 := by
    nlinarith [sq_nonneg (a - b), sq_nonneg (a + b - 34 / 3)]
  have hmul := mul_pos (sub_pos.mpr hab) hfac
  unfold criticalP
  nlinarith [hmul]

theorem criticalP_root_enclosure (p : ℝ) (hp : criticalP p = 0) :
    (572220 : ℝ) / 100000 ≤ p ∧ p ≤ (572221 : ℝ) / 100000 := by
  have hl : criticalP ((572220 : ℝ) / 100000) < 0 := by
    norm_num [criticalP]
  have hu : 0 < criticalP ((572221 : ℝ) / 100000) := by
    norm_num [criticalP]
  constructor
  · by_contra hn
    have h := criticalP_strictMono (lt_of_not_ge hn)
    rw [hp] at h
    linarith
  · by_contra hn
    have h := criticalP_strictMono (lt_of_not_ge hn)
    rw [hp] at h
    linarith

theorem integer_count_gap (p : ℝ) (n m : ℕ)
    (hp : criticalP p = 0) (hcount : n + m ≤ 20) :
    (1 : ℝ) / 5000 < |5 * (n : ℝ) + p * (m : ℝ) - 108| := by
  by_contra hn
  have habs := abs_le.mp (le_of_not_gt hn)
  obtain ⟨hpl, hpu⟩ := criticalP_root_enclosure p hp
  have hm0 : (0 : ℝ) ≤ (m : ℝ) := by positivity
  have hm20 : (m : ℝ) ≤ 20 := by exact_mod_cast (show m ≤ 20 by omega)
  have hml := mul_le_mul_of_nonneg_right hpl hm0
  have hmu := mul_le_mul_of_nonneg_right hpu hm0
  let z : ℤ := 90 * (n : ℤ) + 103 * (m : ℤ) - 1944
  have hz : (z : ℝ) = 90 * (n : ℝ) + 103 * (m : ℝ) - 1944 := by
    simp [z]
  have hzlo : (-1 : ℝ) < (z : ℝ) := by nlinarith [habs.1, habs.2]
  have hzhi : (z : ℝ) < 1 := by nlinarith [habs.1, habs.2]
  have izlo : (-1 : ℤ) < z := by exact_mod_cast hzlo
  have izhi : z < (1 : ℤ) := by exact_mod_cast hzhi
  have iz0 : z = 0 := by omega
  have hnm : n = 1 ∧ m = 18 := by
    dsimp [z] at iz0
    omega
  obtain ⟨rfl, rfl⟩ := hnm
  norm_num at habs
  linarith

theorem twenty_term_error (actual model : Fin 20 → ℝ)
    (hclose : ∀ i, |actual i - model i| ≤ (1 : ℝ) / 100000) :
    |(∑ i, actual i) - ∑ i, model i| ≤ (1 : ℝ) / 5000 := by
  have hlo : ∀ i, model i - (1 : ℝ) / 100000 ≤ actual i := by
    intro i
    have h := (abs_le.mp (hclose i)).1
    linarith
  have hhi : ∀ i, actual i ≤ model i + (1 : ℝ) / 100000 := by
    intro i
    have h := (abs_le.mp (hclose i)).2
    linarith
  have hsl := Finset.sum_le_sum (s := Finset.univ) (fun i _ => hlo i)
  have hsu := Finset.sum_le_sum (s := Finset.univ) (fun i _ => hhi i)
  simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib,
    Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul] at hsl hsu
  apply abs_le.mpr
  constructor <;> linarith

theorem stable_count_contradiction
    (actual model : Fin 20 → ℝ) (p : ℝ) (n m : ℕ)
    (hp : criticalP p = 0) (hcount : n + m ≤ 20)
    (hsumActual : (∑ i, actual i) = 108)
    (hsumModel : (∑ i, model i) = 5 * (n : ℝ) + p * (m : ℝ))
    (hclose : ∀ i, |actual i - model i| ≤ (1 : ℝ) / 100000) : False := by
  have hg := integer_count_gap p n m hp hcount
  have he := twenty_term_error actual model hclose
  rw [hsumActual, hsumModel, abs_sub_comm] at he
  exact (not_le_of_gt hg) he

#print axioms criticalP_from_kappa
#print axioms criticalP_strictMono
#print axioms criticalP_root_enclosure
#print axioms integer_count_gap
#print axioms twenty_term_error
#print axioms stable_count_contradiction

end Seed0024.Averaging
