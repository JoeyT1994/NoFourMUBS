import CriticalZeroSumCoefficientRow
import CriticalZeroSumDenseLengths
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.CoefficientRow
open CriticalZeroSplitReduction20261003 IntegerReflector
variable {R : Type*} [CommRing R]

def maxWidth : List DenseCoefficients.XY → ℕ
  | [] => 0
  | a::as => max a.length (maxWidth as)

theorem length_getD_le_maxWidth (as : List DenseCoefficients.XY) (n : ℕ) :
    (as.getD n []).length≤maxWidth as := by
  induction as generalizing n with
  | nil => simp [maxWidth]
  | cons a as ih =>
      cases n with
      | zero => simp [maxWidth]
      | succ n =>
          simp only [List.getD_cons_succ,maxWidth]
          exact le_trans (ih n) (Nat.le_max_right _ _)

theorem length_add2 (as bs : DenseCoefficients.XY) :
    (Coefficients.add2 as bs).length=max as.length bs.length := by
  induction as generalizing bs with
  | nil => simp [Coefficients.add2]
  | cons a as ih =>
      cases bs with
      | nil => simp [Coefficients.add2]
      | cons b bs => simp only [Coefficients.add2,List.length_cons,ih]; omega

theorem length_mulII_le (as bs : DenseCoefficients.XY) :
    (mulII as bs).length≤as.length+bs.length := by
  induction as with
  | nil => simp [mulII]
  | cons a as ih =>
      rw [mulII,length_add2]
      simp only [rowMul,List.length_map,List.length_cons]
      omega

theorem length_mulAt_le (as bs : List DenseCoefficients.XY) (n : ℕ) :
    (CoefficientAt.mulAt as bs n).length≤maxWidth as+maxWidth bs := by
  induction as generalizing n with
  | nil => simp [CoefficientAt.mulAt,maxWidth]
  | cons a as ih =>
      cases n with
      | zero =>
          have h := length_mulII_le a (bs.getD 0 [])
          have h' := length_getD_le_maxWidth bs 0
          simp only [CoefficientAt.mulAt,maxWidth]
          omega
      | succ n =>
          have h := length_mulII_le a (bs.getD (n+1) [])
          have h' := length_getD_le_maxWidth bs (n+1)
          have ht := ih n
          rw [CoefficientAt.mulAt,length_add2]
          simp only [maxWidth]
          omega

theorem evalII_eq_of_rows (X Y : R) (p q : DenseCoefficients.XY) (N : ℕ)
    (hp : p.length≤N) (hq : q.length≤N)
    (h : ∀ i : ℕ, i<N → evalI Y (p.getD i [])=evalI Y (q.getD i [])) :
    evalII X Y p=evalII X Y q := by
  induction N generalizing p q with
  | zero =>
      have hp' : p=[] := by cases p <;> simp_all
      have hq' : q=[] := by cases q <;> simp_all
      rw [hp',hq']
  | succ N ih =>
      cases p with
      | nil =>
          cases q with
          | nil => rfl
          | cons b bs =>
              have h0 := h 0 (by omega)
              have ht := ih [] bs (by simp) (by simpa using hq) (by
                intro i hi
                exact h (i+1) (Nat.succ_lt_succ hi))
              simp only [List.getD_nil,List.getD_cons_zero,evalI] at h0
              simp only [evalII] at ht
              change (0 : R)=evalI Y b+X*evalII X Y bs
              rw [← h0,← ht,mul_zero,zero_add]
      | cons a as =>
          cases q with
          | nil =>
              have h0 := h 0 (by omega)
              have ht := ih as [] (by simpa using hp) (by simp) (by
                intro i hi
                exact h (i+1) (Nat.succ_lt_succ hi))
              simp only [List.getD_nil,List.getD_cons_zero,evalI] at h0
              simp only [evalII,h0,ht,mul_zero,zero_add]
          | cons b bs =>
              have h0 := h 0 (by omega)
              have ht := ih as bs (by simpa using hp) (by simpa using hq) (by
                intro i hi
                exact h (i+1) (Nat.succ_lt_succ hi))
              simp only [List.getD_cons_zero] at h0
              simp only [evalII,h0,ht]

/-- All X rows, including padded zero rows, give the exact requested z
coefficient. The support bounds are structural and independent of values. -/
theorem coefficient_eq_of_rows (X Y : R) (as bs : List DenseCoefficients.XY)
    (n : ℕ) (c : DenseCoefficients.XY) (N : ℕ)
    (hp : maxWidth as+maxWidth bs≤N) (hc : c.length≤N)
    (h : ∀ i : ℕ, i<N → zeroI (Coefficients.add
      (mulAtRow as bs n i) (Coefficients.neg (c.getD i [])))=true) :
    evalII X Y (CoefficientAt.mulAt as bs n)=evalII X Y c := by
  apply evalII_eq_of_rows X Y _ _ N (le_trans (length_mulAt_le as bs n) hp) hc
  intro i hi
  have hz := evalI_zero Y _ (h i hi)
  rw [evalI_add,evalI_neg,eval_mulAtRow] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

#print axioms length_getD_le_maxWidth
#print axioms length_add2
#print axioms length_mulII_le
#print axioms length_mulAt_le
#print axioms evalII_eq_of_rows
#print axioms coefficient_eq_of_rows
end CriticalZeroSumAssembly20261003.CoefficientRow
