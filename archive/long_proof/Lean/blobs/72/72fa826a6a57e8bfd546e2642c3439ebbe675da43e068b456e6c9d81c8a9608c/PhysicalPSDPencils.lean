import SignedCornerPhysical
import Mathlib.Tactic.Omega

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.PhysicalPSD20261006
open scoped ComplexConjugate BigOperators
open SignedDeterminant
noncomputable section

abbrev ThreeMatrix := Matrix (Fin 3) (Fin 3) ℂ

def rankOne (v : Fin 3 → ℂ) : ThreeMatrix := Matrix.vecMulVec v (star v)
def gram (V : Fin 3 → Fin 3 → ℂ) : ThreeMatrix := ∑ l, rankOne (V l)
def signedMoment (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) : ThreeMatrix :=
  ∑ l, f l • rankOne (V l)
def plusPencil (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) : ThreeMatrix :=
  ∑ l, (q + f l) • rankOne (V l)
def minusPencil (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) : ThreeMatrix :=
  ∑ l, (q - f l) • rankOne (V l)

/-- Literal Hermitian quadratic-form meaning of positive semidefiniteness. -/
def PSD (M : ThreeMatrix) : Prop :=
  (∀ i j, conj (M j i)=M i j) ∧
  ∀ z : Fin 3 → ℂ, 0 ≤ (∑ i, ∑ j, conj (z i) * M i j * z j).re

def quadratic (M : ThreeMatrix) (z : Fin 3 → ℂ) : ℝ :=
  (∑ i, ∑ j, conj (z i) * M i j * z j).re

theorem rankOne_hermitian (v : Fin 3 → ℂ) (i j : Fin 3) :
    conj (rankOne v j i)=rankOne v i j := by
  simp [rankOne,Matrix.vecMulVec,mul_comm]

theorem rankOne_quadratic (v z : Fin 3 → ℂ) :
    quadratic (rankOne v) z = Complex.normSq (∑ i, conj (v i) * z i) := by
  simp [quadratic,rankOne,Matrix.vecMulVec,Fin.sum_univ_succ,
    Complex.normSq_apply,Complex.mul_re,Complex.mul_im,Complex.add_re,Complex.add_im]
  ring

theorem quadratic_sum (M : Fin 3 → ThreeMatrix) (z : Fin 3 → ℂ) :
    quadratic (∑ l, M l) z=∑ l, quadratic (M l) z := by
  simp [quadratic,Fin.sum_univ_succ,Complex.mul_add,Complex.add_mul,add_assoc]
  ring

theorem quadratic_smul (w : ℝ) (M : ThreeMatrix) (z : Fin 3 → ℂ) :
    quadratic (w • M) z=w * quadratic M z := by
  simp [quadratic,Fin.sum_univ_succ,Complex.real_smul,Complex.mul_re,Complex.mul_im]
  ring

theorem weighted_rankOne_psd (w : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ)
    (hw : ∀ l, 0 ≤ w l) : PSD (∑ l, w l • rankOne (V l)) := by
  constructor
  · intro i j
    simp only [Matrix.sum_apply,Matrix.smul_apply,Complex.real_smul,map_sum,map_mul,
      Complex.conj_ofReal,rankOne_hermitian]
  · intro z
    change 0 ≤ quadratic (∑ l, w l • rankOne (V l)) z
    rw [quadratic_sum]
    apply Finset.sum_nonneg
    intro l _
    rw [quadratic_smul,rankOne_quadratic]
    exact mul_nonneg (hw l) (Complex.normSq_nonneg _)

theorem plusPencil_eq (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) :
    plusPencil q f V = q • gram V + signedMoment f V := by
  simp [plusPencil,gram,signedMoment,add_smul,Finset.sum_add_distrib,Finset.smul_sum]

theorem minusPencil_eq (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) :
    minusPencil q f V = q • gram V - signedMoment f V := by
  simp [minusPencil,gram,signedMoment,sub_smul,Finset.sum_sub_distrib,Finset.smul_sum]

theorem plusPencil_psd (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ)
    (hb : ∀ l, |f l| ≤ q) : PSD (plusPencil q f V) := by
  apply weighted_rankOne_psd
  intro l
  have h := (abs_le.mp (hb l)).1
  linarith

theorem minusPencil_psd (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ)
    (hb : ∀ l, |f l| ≤ q) : PSD (minusPencil q f V) := by
  apply weighted_rankOne_psd
  intro l
  have h := (abs_le.mp (hb l)).2
  linarith

def knownIndex (i : Fin 3) : Fin 6 := ⟨i.val,by omega⟩
def sideIndex (i : Fin 3) : Fin 6 := ⟨i.val+3,by omega⟩
def physicalColumns (H : Mat6) (l i : Fin 3) : ℂ := H (knownIndex i) (sideIndex l)
def physicalSigns (H : Mat6) (j k l : Fin 3) : ℝ :=
  -cornerSigned H 0 1 2 (knownIndex j) (knownIndex k) (sideIndex l)

theorem physicalSigns_bound {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (hR : 0 < leadingR H) (j k : Fin 3) (hjk : j<k) (l : Fin 3) :
    |physicalSigns H j k l| ≤ Real.sqrt (leadingR H) := by
  have h1 : knownIndex j < knownIndex k := hjk
  have h2 : knownIndex k < sideIndex l := by
    change k.val < l.val+3
    omega
  simpa [physicalSigns] using physical_maximal_signed_abs_bound hH hm hR
    0 1 2 (knownIndex j) (knownIndex k) (sideIndex l) (by decide) (by decide) h1 h2

/-- Actual Hadamard columns and all positional maximality supply both PSD
pencils; there is no side-construction, matching, or interval premise. -/
theorem physical_both_pencils_psd {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (hR : 0 < leadingR H) (j k : Fin 3) (hjk : j<k) :
    PSD (Real.sqrt (leadingR H) • gram (physicalColumns H) +
      signedMoment (physicalSigns H j k) (physicalColumns H)) ∧
    PSD (Real.sqrt (leadingR H) • gram (physicalColumns H) -
      signedMoment (physicalSigns H j k) (physicalColumns H)) := by
  constructor
  · rw [← plusPencil_eq]
    exact plusPencil_psd _ _ _ (physicalSigns_bound hH hm hR j k hjk)
  · rw [← minusPencil_eq]
    exact minusPencil_psd _ _ _ (physicalSigns_bound hH hm hR j k hjk)

theorem gram_entry (V : Fin 3 → Fin 3 → ℂ) (i j : Fin 3) :
    gram V i j = ∑ l, V l i * conj (V l j) := by
  simp [gram,rankOne,Matrix.vecMulVec,Matrix.sum_apply]

theorem signedMoment_entry (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) (i j : Fin 3) :
    signedMoment f V i j = ∑ l, (f l : ℂ) * (V l i * conj (V l j)) := by
  simp [signedMoment,rankOne,Matrix.vecMulVec,Matrix.sum_apply,Complex.real_smul]

end
end Centiradian20261006.PhysicalPSD20261006
#print axioms Centiradian20261006.PhysicalPSD20261006.rankOne_hermitian
#print axioms Centiradian20261006.PhysicalPSD20261006.rankOne_quadratic
#print axioms Centiradian20261006.PhysicalPSD20261006.quadratic_sum
#print axioms Centiradian20261006.PhysicalPSD20261006.quadratic_smul
#print axioms Centiradian20261006.PhysicalPSD20261006.weighted_rankOne_psd
#print axioms Centiradian20261006.PhysicalPSD20261006.plusPencil_eq
#print axioms Centiradian20261006.PhysicalPSD20261006.minusPencil_eq
#print axioms Centiradian20261006.PhysicalPSD20261006.plusPencil_psd
#print axioms Centiradian20261006.PhysicalPSD20261006.minusPencil_psd
#print axioms Centiradian20261006.PhysicalPSD20261006.physicalSigns_bound
#print axioms Centiradian20261006.PhysicalPSD20261006.physical_both_pencils_psd
#print axioms Centiradian20261006.PhysicalPSD20261006.gram_entry
#print axioms Centiradian20261006.PhysicalPSD20261006.signedMoment_entry
