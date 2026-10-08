import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Nlinarith
import Mathlib.Tactic.Ring

/- Abstract scalar soundness only. Polynomial enclosures and the physical
   Hadamard-to-moment binding remain separate, explicit obligations. -/
set_option autoImplicit false
namespace Patch2442FactoredSignedMean

theorem factor_identity (A B D R : ℝ) :
    (A^2+(B^2-D^2)*R)^2-(2*A*B)^2*R =
      (A^2-(B-D)^2*R)*(A^2-(B+D)^2*R) := by ring

theorem positive_of_first_dominates {a b : ℝ}
    (ha : 0<a) (hh : 0<a^2-b^2) : 0<a+b := by
  by_contra hn
  have hn' : a+b≤0 := le_of_not_gt hn
  have hp : 0≤a-b := by linarith
  have hm := mul_nonpos_of_nonpos_of_nonneg hn' hp
  nlinarith

theorem positive_of_second_dominates {a b : ℝ}
    (hb : 0<b) (hh : a^2-b^2<0) : 0<a+b := by
  have h := positive_of_first_dominates hb (show 0<b^2-a^2 by linarith)
  linarith

theorem positive_linear {A y q : ℝ} (hq : 0<q)
    (htest :
      (0≤A ∧ 0≤y ∧ (0<A ∨ 0<y)) ∨
      (0<A ∧ 0<A^2-y^2*q^2) ∨
      (0<y ∧ A^2-y^2*q^2<0)) : 0<A+y*q := by
  rcases htest with h | h | h
  · rcases h with ⟨ha,hy,ha'|hy'⟩
    · exact add_pos_of_pos_of_nonneg ha' (mul_nonneg hy (le_of_lt hq))
    · exact add_pos_of_nonneg_of_pos ha (mul_pos hy' hq)
  · apply positive_of_first_dominates h.1
    nlinarith [h.2]
  · apply positive_of_second_dominates (mul_pos h.1 hq)
    nlinarith [h.2]

theorem negative_linear {A y q : ℝ} (hq : 0<q)
    (htest :
      (A≤0 ∧ y≤0 ∧ (A<0 ∨ y<0)) ∨
      (A<0 ∧ 0<A^2-y^2*q^2) ∨
      (y<0 ∧ A^2-y^2*q^2<0)) : A+y*q<0 := by
  have ht : (0≤-A ∧ 0≤-y ∧ (0<-A ∨ 0<-y)) ∨
      (0<-A ∧ 0<(-A)^2-(-y)^2*q^2) ∨
      (0<-y ∧ (-A)^2-(-y)^2*q^2<0) := by
    rcases htest with h | h | h
    · left
      rcases h with ⟨ha,hy,ha'|hy'⟩
      · exact ⟨by linarith,by linarith,Or.inl (by linarith)⟩
      · exact ⟨by linarith,by linarith,Or.inr (by linarith)⟩
    · right;left;constructor
      · linarith [h.1]
      · nlinarith [h.2]
    · right;right;constructor
      · linarith [h.1]
      · nlinarith [h.2]
  have hh := positive_linear hq ht
  linarith

theorem square_bounds {x d : ℝ} (hd : 0≤d) (hh : x^2≤d^2) :
    -d≤x ∧ x≤d := by
  constructor
  · by_contra hn
    have hx : x< -d := lt_of_not_ge hn
    have hp : 0<(x+d)*(x-d) := mul_pos_of_neg_of_neg (by linarith) (by linarith)
    nlinarith
  · by_contra hn
    have hx : d<x := lt_of_not_ge hn
    have hp : 0<(x-d)*(x+d) := mul_pos (by linarith) (by linarith)
    nlinarith

theorem plus_necessary {A B D q : ℝ} (hD : 0≤D) (hq : 0≤q)
    (hh : (A+B*q)^2≤(D*q)^2) :
    A+(B-D)*q≤0 ∧ 0≤A+(B+D)*q := by
  obtain ⟨hl,hu⟩ := square_bounds (mul_nonneg hD hq) hh
  constructor <;> nlinarith

theorem minus_necessary {A B D q : ℝ} (hD : 0≤D) (hq : 0≤q)
    (hh : (A-B*q)^2≤(D*q)^2) :
    A-(B+D)*q≤0 ∧ 0≤A-(B-D)*q := by
  obtain ⟨hl,hu⟩ := square_bounds (mul_nonneg hD hq) hh
  constructor <;> nlinarith

theorem exclude_plus {A B D q : ℝ} (hD : 0≤D) (hq : 0≤q)
    (hh : (A+B*q)^2≤(D*q)^2)
    (htest : 0<A+(B-D)*q ∨ A+(B+D)*q<0) : False := by
  have hn := plus_necessary hD hq hh
  rcases htest with h | h <;> linarith [hn.1,hn.2]

theorem exclude_minus {A B D q : ℝ} (hD : 0≤D) (hq : 0≤q)
    (hh : (A-B*q)^2≤(D*q)^2)
    (htest : 0<A-(B+D)*q ∨ A-(B-D)*q<0) : False := by
  have hn := minus_necessary hD hq hh
  rcases htest with h | h <;> linarith [hn.1,hn.2]

#print axioms factor_identity
#print axioms positive_linear
#print axioms negative_linear
#print axioms plus_necessary
#print axioms minus_necessary
#print axioms exclude_plus
#print axioms exclude_minus
end Patch2442FactoredSignedMean
