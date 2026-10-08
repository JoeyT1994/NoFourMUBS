import IntegerPartition
namespace Mub6.Numerical.IntegerIntervals

def fastLeftChild (q : ZRayBox) (j : Fin 5) (imag : Bool) (cut : ℤ) : ZRayBox :=
  fun i => bif i.val == j.val then splitLeft (q j) imag cut else q i

def fastRightChild (q : ZRayBox) (j : Fin 5) (imag : Bool) (cut : ℤ) : ZRayBox :=
  fun i => bif i.val == j.val then splitRight (q j) imag cut else q i

theorem fastLeftChild_eq (q : ZRayBox) (j : Fin 5) (imag : Bool) (cut : ℤ) :
    fastLeftChild q j imag cut = leftChild q j imag cut := by
  funext i
  by_cases h : i = j
  · subst i
    simp [fastLeftChild, leftChild]
  · have hi : i.val ≠ j.val := fun he => h (Fin.ext he)
    have hb : (i.val == j.val) = false := beq_eq_false_iff_ne.mpr hi
    simp [fastLeftChild, leftChild, h, hb]

theorem fastRightChild_eq (q : ZRayBox) (j : Fin 5) (imag : Bool) (cut : ℤ) :
    fastRightChild q j imag cut = rightChild q j imag cut := by
  funext i
  by_cases h : i = j
  · subst i
    simp [fastRightChild, rightChild]
  · have hi : i.val ≠ j.val := fun he => h (Fin.ext he)
    have hb : (i.val == j.val) = false := beq_eq_false_iff_ne.mpr hi
    simp [fastRightChild, rightChild, h, hb]

def checkFastPartition {n : ℕ} (S : ℕ) (E : ZCarrier) (boxes : Fin n → ZRayBox) :
    ZRayBox → ZPartition n → Bool
  | q, .keep v => boxSubset q (boxes v)
  | q, .reject witness => rejectRayBox S E q witness
  | q, .split j imag cut left right =>
    checkFastPartition S E boxes (fastLeftChild q j imag cut) left &&
      checkFastPartition S E boxes (fastRightChild q j imag cut) right

theorem checkFastPartition_eq {n : ℕ} (S : ℕ) (E : ZCarrier) (boxes : Fin n → ZRayBox)
    (tree : ZPartition n) : ∀ q, checkFastPartition S E boxes q tree =
      checkZPartition S E boxes q tree := by
  induction tree with
  | keep v => intro q; rfl
  | reject w => intro q; rfl
  | split j imag cut left right ihLeft ihRight =>
    intro q
    simp only [checkFastPartition, checkZPartition, fastLeftChild_eq, fastRightChild_eq,
      ihLeft, ihRight]

theorem coveredBy_of_fastCheck {n S : ℕ} (hS : 0 < S) {E : ZCarrier}
    {boxes : Fin n → ZRayBox} {q : ZRayBox} {tree : ZPartition n}
    (h : checkFastPartition S E boxes q tree = true) : CoveredBy S E boxes q :=
  coveredBy_of_check hS ((checkFastPartition_eq S E boxes tree q).symm.trans h)

#print axioms checkFastPartition_eq
#print axioms coveredBy_of_fastCheck
end Mub6.Numerical.IntegerIntervals
