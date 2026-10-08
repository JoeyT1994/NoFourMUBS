import ExactInterval
import FactoredSignedMean

/-! Executable exact-rational versions of all three signed-linear tests.
Soundness depends on explicit semantic enclosures; producer output does not
supply those premises. The concrete leaf module separately closes the exact
finite decisions, while native model and physical binding remain obligations. -/
set_option autoImplicit false
namespace SignedMeanIntake20261006

def positiveTest (a y h : QInterval) : Bool := decide (
  (0 ≤ a.lo ∧ 0 ≤ y.lo ∧ (0 < a.lo ∨ 0 < y.lo)) ∨
  (0 < a.lo ∧ 0 < h.lo) ∨ (0 < y.lo ∧ h.hi < 0))

theorem positiveTest_sound {a y h : QInterval} {A Y q : ℝ}
    (hA : a.Contains A) (hY : y.Contains Y)
    (hH : h.Contains (A^2-Y^2*q^2)) (hq : 0 < q)
    (hc : positiveTest a y h=true) : 0 < A+Y*q := by
  apply Patch2442FactoredSignedMean.positive_linear hq
  have ht : (0 ≤ a.lo ∧ 0 ≤ y.lo ∧ (0 < a.lo ∨ 0 < y.lo)) ∨
      (0 < a.lo ∧ 0 < h.lo) ∨ (0 < y.lo ∧ h.hi < 0) := of_decide_eq_true hc
  rcases ht with ht | ht | ht
  · left
    have ha : (0:ℝ) ≤ (a.lo:ℝ) := by exact_mod_cast ht.1
    have hy : (0:ℝ) ≤ (y.lo:ℝ) := by exact_mod_cast ht.2.1
    refine ⟨le_trans ha hA.1,le_trans hy hY.1,?_⟩
    rcases ht.2.2 with hp | hp
    · left
      have hp' : (0:ℝ) < (a.lo:ℝ) := by exact_mod_cast hp
      exact lt_of_lt_of_le hp' hA.1
    · right
      have hp' : (0:ℝ) < (y.lo:ℝ) := by exact_mod_cast hp
      exact lt_of_lt_of_le hp' hY.1
  · right; left
    have ha : (0:ℝ) < (a.lo:ℝ) := by exact_mod_cast ht.1
    have hh : (0:ℝ) < (h.lo:ℝ) := by exact_mod_cast ht.2
    exact ⟨lt_of_lt_of_le ha hA.1,lt_of_lt_of_le hh hH.1⟩
  · right; right
    have hy : (0:ℝ) < (y.lo:ℝ) := by exact_mod_cast ht.1
    have hh : (h.hi:ℝ) < (0:ℝ) := by exact_mod_cast ht.2
    exact ⟨lt_of_lt_of_le hy hY.1,lt_of_le_of_lt hH.2 hh⟩

def negativeTest (a y h : QInterval) : Bool := positiveTest a.neg y.neg h

theorem negativeTest_sound {a y h : QInterval} {A Y q : ℝ}
    (hA : a.Contains A) (hY : y.Contains Y)
    (hH : h.Contains (A^2-Y^2*q^2)) (hq : 0 < q)
    (hc : negativeTest a y h=true) : A+Y*q < 0 := by
  have hh : h.Contains ((-A)^2-(-Y)^2*q^2) := by simpa only [neg_sq] using hH
  have hp := positiveTest_sound (QInterval.neg_sound hA) (QInterval.neg_sound hY) hh hq hc
  linarith

structure MeanCertificate where
  a : QInterval
  km : QInterval
  kp : QInterval
  hm : QInterval
  hp : QInterval
  deriving DecidableEq, Repr

namespace MeanCertificate

def Valid (c : MeanCertificate) (A B D q : ℝ) : Prop :=
  c.a.Contains A ∧ c.km.Contains (B-D) ∧ c.kp.Contains (B+D) ∧
  c.hm.Contains (A^2-(B-D)^2*q^2) ∧ c.hp.Contains (A^2-(B+D)^2*q^2)

def excludesPlus (c : MeanCertificate) : Bool :=
  positiveTest c.a c.km c.hm || negativeTest c.a c.kp c.hp

def excludesMinus (c : MeanCertificate) : Bool :=
  positiveTest c.a c.kp.neg c.hp || negativeTest c.a c.km.neg c.hm

theorem excludesPlus_sound {c : MeanCertificate} {A B D q : ℝ}
    (hv : c.Valid A B D q) (hc : c.excludesPlus=true) (hD : 0 ≤ D) (hq : 0 < q)
    (physicalBound : (A+B*q)^2 ≤ (D*q)^2) : False := by
  have hc' : positiveTest c.a c.km c.hm=true ∨ negativeTest c.a c.kp c.hp=true := by
    simpa only [excludesPlus,Bool.or_eq_true] using hc
  apply Patch2442FactoredSignedMean.exclude_plus hD (le_of_lt hq) physicalBound
  rcases hc' with hp | hn
  · exact Or.inl (positiveTest_sound hv.1 hv.2.1 hv.2.2.2.1 hq hp)
  · exact Or.inr (negativeTest_sound hv.1 hv.2.2.1 hv.2.2.2.2 hq hn)

theorem excludesMinus_sound {c : MeanCertificate} {A B D q : ℝ}
    (hv : c.Valid A B D q) (hc : c.excludesMinus=true) (hD : 0 ≤ D) (hq : 0 < q)
    (physicalBound : (A-B*q)^2 ≤ (D*q)^2) : False := by
  have hc' : positiveTest c.a c.kp.neg c.hp=true ∨ negativeTest c.a c.km.neg c.hm=true := by
    simpa only [excludesMinus,Bool.or_eq_true] using hc
  apply Patch2442FactoredSignedMean.exclude_minus hD (le_of_lt hq) physicalBound
  rcases hc' with hp | hn
  · left
    have hh : c.hp.Contains (A^2-(-(B+D))^2*q^2) := by simpa only [neg_sq] using hv.2.2.2.2
    have hs := positiveTest_sound hv.1 (QInterval.neg_sound hv.2.2.1) hh hq hp
    simpa only [neg_mul,← sub_eq_add_neg] using hs
  · right
    have hh : c.hm.Contains (A^2-(-(B-D))^2*q^2) := by simpa only [neg_sq] using hv.2.2.2.1
    have hs := negativeTest_sound hv.1 (QInterval.neg_sound hv.2.1) hh hq hn
    simpa only [neg_mul,← sub_eq_add_neg] using hs

end MeanCertificate
end SignedMeanIntake20261006

#print axioms SignedMeanIntake20261006.positiveTest_sound
#print axioms SignedMeanIntake20261006.negativeTest_sound
#print axioms SignedMeanIntake20261006.MeanCertificate.excludesPlus_sound
#print axioms SignedMeanIntake20261006.MeanCertificate.excludesMinus_sound
