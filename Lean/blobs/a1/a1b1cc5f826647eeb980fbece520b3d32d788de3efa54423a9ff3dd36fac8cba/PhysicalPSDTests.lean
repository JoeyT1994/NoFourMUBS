import NativePSDMinors

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.PhysicalPSD20261006
open scoped ComplexConjugate BigOperators
noncomputable section

def NativeTests (d : ℝ) (s t r : ℂ) : Prop :=
  0≤d ∧ 0≤d^2-Complex.normSq s ∧ 0≤d^2-Complex.normSq t ∧
  0≤d^2-Complex.normSq r ∧
  0≤d^3+2*(s*r*conj t).re-d*(Complex.normSq s+Complex.normSq t+Complex.normSq r)

def weightedGram (w : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) : ThreeMatrix :=
  ∑ l, w l • rankOne (V l)

theorem weightedGram_diagonal (w : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ)
    (hu : ∀ l i,Complex.normSq (V l i)=1) (i : Fin 3) :
    weightedGram w V i i=((∑ l,w l:ℝ):ℂ) := by
  simp [weightedGram,rankOne,Matrix.vecMulVec,Matrix.sum_apply,
    Complex.real_smul,Complex.mul_conj,hu]

theorem hermitian_common_diagonal_representation (M : ThreeMatrix) (d : ℝ)
    (hh : ∀ i j,conj (M j i)=M i j) (hd : ∀ i,M i i=(d:ℂ)) :
    M=nativePencil d (M 1 0) (M 2 0) (M 2 1) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [nativePencil,hd,hh 0 1,hh 0 2,hh 1 2]

theorem weightedGram_tests (w : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ)
    (hw : ∀ l,0≤w l) (hu : ∀ l i,Complex.normSq (V l i)=1) :
    NativeTests (∑ l,w l) (weightedGram w V 1 0)
      (weightedGram w V 2 0) (weightedGram w V 2 1) := by
  have hp : PSD (weightedGram w V) := weighted_rankOne_psd w V hw
  have heq := hermitian_common_diagonal_representation (weightedGram w V) (∑ l,w l)
    hp.1 (weightedGram_diagonal w V hu)
  exact native_principal_tests_nonneg _ _ _ _ w V hw heq.symm

def physicalWeight (plus : Bool) (H : Mat6) (j k l : Fin 3) : ℝ :=
  if plus then Real.sqrt (leadingR H)+physicalSigns H j k l
  else Real.sqrt (leadingR H)-physicalSigns H j k l

def physicalWeightedGram (plus : Bool) (H : Mat6) (j k : Fin 3) : ThreeMatrix :=
  weightedGram (physicalWeight plus H j k) (physicalColumns H)

theorem physicalWeight_nonnegative (plus : Bool) {H : Mat6}
    (hH : Physical H) (hm : Maximal H) (hR : 0<leadingR H)
    (j k : Fin 3) (hjk : j<k) (l : Fin 3) :
    0≤physicalWeight plus H j k l := by
  have hb := abs_le.mp (physicalSigns_bound hH hm hR j k hjk l)
  cases plus <;> simp [physicalWeight] <;> linarith

/-- All five actual native PSD tests are nonnegative for both signs,
with no side-classification, nonsingularity or matching premise. -/
theorem physical_all_five_tests (plus : Bool) {H : Mat6}
    (hH : Physical H) (hm : Maximal H) (hR : 0<leadingR H)
    (j k : Fin 3) (hjk : j<k) :
    NativeTests (∑ l,physicalWeight plus H j k l)
      (physicalWeightedGram plus H j k 1 0)
      (physicalWeightedGram plus H j k 2 0)
      (physicalWeightedGram plus H j k 2 1) := by
  apply weightedGram_tests
  · exact physicalWeight_nonnegative plus hH hm hR j k hjk
  · intro l i
    exact hH.1 (knownIndex i) (sideIndex l)

theorem physical_plus_gram_eq (H : Mat6) (j k : Fin 3) :
    physicalWeightedGram true H j k =
      Real.sqrt (leadingR H) • gram (physicalColumns H) +
      signedMoment (physicalSigns H j k) (physicalColumns H) := by
  exact plusPencil_eq _ _ _

theorem physical_minus_gram_eq (H : Mat6) (j k : Fin 3) :
    physicalWeightedGram false H j k =
      Real.sqrt (leadingR H) • gram (physicalColumns H) -
      signedMoment (physicalSigns H j k) (physicalColumns H) := by
  exact minusPencil_eq _ _ _

end
end Centiradian20261006.PhysicalPSD20261006
#print axioms Centiradian20261006.PhysicalPSD20261006.weightedGram_diagonal
#print axioms Centiradian20261006.PhysicalPSD20261006.hermitian_common_diagonal_representation
#print axioms Centiradian20261006.PhysicalPSD20261006.weightedGram_tests
#print axioms Centiradian20261006.PhysicalPSD20261006.physicalWeight_nonnegative
#print axioms Centiradian20261006.PhysicalPSD20261006.physical_all_five_tests
#print axioms Centiradian20261006.PhysicalPSD20261006.physical_plus_gram_eq
#print axioms Centiradian20261006.PhysicalPSD20261006.physical_minus_gram_eq
