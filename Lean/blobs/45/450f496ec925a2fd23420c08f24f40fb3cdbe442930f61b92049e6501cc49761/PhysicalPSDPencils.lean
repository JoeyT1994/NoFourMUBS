import SignedCornerPhysical
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Analysis.Complex.Order
import Mathlib.Tactic.Omega

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.PhysicalPSD20261006
open scoped ComplexConjugate ComplexOrder BigOperators
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

theorem rankOne_psd (v : Fin 3 → ℂ) : (rankOne v).PosSemidef :=
  Matrix.posSemidef_vecMulVec_self_star v

theorem plusPencil_eq (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) :
    plusPencil q f V = q • gram V + signedMoment f V := by
  simp [plusPencil,gram,signedMoment,add_smul,Finset.sum_add_distrib,Finset.smul_sum]

theorem minusPencil_eq (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) :
    minusPencil q f V = q • gram V - signedMoment f V := by
  simp [minusPencil,gram,signedMoment,sub_smul,Finset.sum_sub_distrib,Finset.smul_sum]

theorem plusPencil_psd (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ)
    (hb : ∀ l, |f l| ≤ q) : (plusPencil q f V).PosSemidef := by
  apply Matrix.posSemidef_sum
  intro l _
  apply (rankOne_psd (V l)).smul
  have h := (abs_le.mp (hb l)).1
  linarith

theorem minusPencil_psd (q : ℝ) (f : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ)
    (hb : ∀ l, |f l| ≤ q) : (minusPencil q f V).PosSemidef := by
  apply Matrix.posSemidef_sum
  intro l _
  apply (rankOne_psd (V l)).smul
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
    (Real.sqrt (leadingR H) • gram (physicalColumns H) +
      signedMoment (physicalSigns H j k) (physicalColumns H)).PosSemidef ∧
    (Real.sqrt (leadingR H) • gram (physicalColumns H) -
      signedMoment (physicalSigns H j k) (physicalColumns H)).PosSemidef := by
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
#print axioms Centiradian20261006.PhysicalPSD20261006.rankOne_psd
#print axioms Centiradian20261006.PhysicalPSD20261006.plusPencil_eq
#print axioms Centiradian20261006.PhysicalPSD20261006.minusPencil_eq
#print axioms Centiradian20261006.PhysicalPSD20261006.plusPencil_psd
#print axioms Centiradian20261006.PhysicalPSD20261006.minusPencil_psd
#print axioms Centiradian20261006.PhysicalPSD20261006.physicalSigns_bound
#print axioms Centiradian20261006.PhysicalPSD20261006.physical_both_pencils_psd
#print axioms Centiradian20261006.PhysicalPSD20261006.gram_entry
#print axioms Centiradian20261006.PhysicalPSD20261006.signedMoment_entry
