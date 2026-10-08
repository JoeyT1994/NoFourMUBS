import CriticalZeroSumCoefficientAt
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.CoefficientAt
open CriticalZeroSplitReduction20261003 IntegerReflector
variable {R : Type*} [CommRing R]

theorem list_eq_of_getD (as bs : List R) (hl : as.length=bs.length)
    (h : ∀ n : ℕ, n<as.length → as.getD n 0=bs.getD n 0) : as=bs := by
  induction as generalizing bs with
  | nil =>
      cases bs with
      | nil => rfl
      | cons b bs => simp at hl
  | cons a as ih =>
      cases bs with
      | nil => simp at hl
      | cons b bs =>
          have hab : a=b := h 0 (by simp)
          have htl : as=bs := ih bs (Nat.succ.inj hl) (by
            intro n hn
            exact h (n+1) (Nat.succ_lt_succ hn))
          simp only [hab,htl]

/-- Closed checks inspect every coefficient through the proved direct
convolution. Equal list lengths retain all trailing zero coefficients. -/
theorem binary_interpret_eq (X Y : R) (as bs cs : List DenseCoefficients.XY)
    (hl : (DenseCoefficients.mul as bs).length=cs.length)
    (h : ∀ n : ℕ, n<cs.length →
      zeroII (Coefficients.add2 (mulAt as bs n) (Coefficients.neg2 (cs.getD n [])))=true) :
    DenseCoefficients.interpret X Y (DenseCoefficients.mul as bs)=
      DenseCoefficients.interpret X Y cs := by
  apply list_eq_of_getD
  · simpa only [DenseCoefficients.interpret_length] using hl
  · intro n hn
    have hn' : n<cs.length := by
      simpa only [DenseCoefficients.interpret_length,hl] using hn
    have hz := evalII_zero X Y _ (h n hn')
    rw [evalII_add,evalII_neg,eval_mulAt,
      ← DenseCoefficients.interpret_getD] at hz
    rw [DenseCoefficients.interpret_mul]
    exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

theorem binary_eval_eq (X Y z : R) (as bs cs : List DenseCoefficients.XY)
    (hl : (DenseCoefficients.mul as bs).length=cs.length)
    (h : ∀ n : ℕ, n<cs.length →
      zeroII (Coefficients.add2 (mulAt as bs n) (Coefficients.neg2 (cs.getD n [])))=true) :
    Coefficients.eval z (DenseCoefficients.interpret X Y cs)=
      Coefficients.eval z (DenseCoefficients.interpret X Y as)*
      Coefficients.eval z (DenseCoefficients.interpret X Y bs) := by
  rw [← binary_interpret_eq X Y as bs cs hl h,
    DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul]

#print axioms list_eq_of_getD
#print axioms binary_interpret_eq
#print axioms binary_eval_eq
end CriticalZeroSumAssembly20261003.CoefficientAt
