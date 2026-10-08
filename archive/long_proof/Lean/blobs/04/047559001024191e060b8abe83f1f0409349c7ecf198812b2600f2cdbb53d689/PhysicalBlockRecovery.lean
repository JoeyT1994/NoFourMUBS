import NativeSignedPhysical
import PhysicalColumnGram
import CentiradianUnitPair
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators Matrix
noncomputable section

def upperIndex (k : Fin 3) : Fin 6 := ⟨k.val, by omega⟩
abbrev Mat3 := Matrix (Fin 3) (Fin 3) ℂ
def blockE (H : Mat6) : Mat3 := fun i j => H (upperIndex i) (upperIndex j)
def blockB (H : Mat6) : Mat3 := fun i j => H (upperIndex i) (bottomIndex j)
def blockC (H : Mat6) : Mat3 := fun i j => H (bottomIndex i) (upperIndex j)
def blockT (H : Mat6) : Mat3 := fun i j => H (bottomIndex i) (bottomIndex j)
def rightGram (H : Mat6) (i j : Fin 3) : ℂ :=
  ∑ k : Fin 3, H (upperIndex i) (bottomIndex k)*conj (H (upperIndex j) (bottomIndex k))

theorem sum_six_split (f : Fin 6 → ℂ) :
    (∑ k : Fin 6, f k) =
      (∑ k : Fin 3, f (upperIndex k))+(∑ k : Fin 3, f (bottomIndex k)) := by
  simp [Fin.sum_univ_succ,upperIndex,bottomIndex]
  ring

theorem rightGram_eq_complement (H : Mat6) (i j : Fin 3) :
    rightGram H i j = gramEntry H leadingColsᶜ (upperIndex i) (upperIndex j) := by
  have hc : leadingColsᶜ=({3,4,5} : Finset (Fin 6)) := by decide
  rw [hc]
  simp [rightGram,gramEntry,Fin.sum_univ_succ,bottomIndex]
  ring

theorem physical_rightGram_negative {H : Mat6} (hH : Physical H)
    (i j : Fin 3) (hij : i ≠ j) :
    rightGram H i j = -gramEntry H leadingCols (upperIndex i) (upperIndex j) := by
  rw [rightGram_eq_complement]
  apply physical_gram_complement hH
  intro h
  apply hij
  apply Fin.ext
  exact congrArg Fin.val h

theorem rightGram_conj (H : Mat6) (i j : Fin 3) :
    rightGram H j i = conj (rightGram H i j) := by
  simp [rightGram,map_sum,map_mul,mul_comm]

theorem physical_rightGram_diag {H : Mat6} (hH : Physical H) (i : Fin 3) :
    rightGram H i i=3 := by
  simp [rightGram,Complex.mul_conj,hH.1]

theorem blockB_gram_entry (H : Mat6) (i j : Fin 3) :
    (blockB H*(blockB H)ᴴ) i j = rightGram H i j := by
  rfl

theorem hermitian_three_det_formula (s t r : ℂ) :
    (3:ℂ)*3*3 - 3*conj r*r - conj s*s*3 + conj s*conj r*t +
      conj t*s*r - conj t*3*t = (27-3*gramP s t r+gramJ s t r : ℝ) := by
  apply Complex.ext <;>
    simp [gramP,gramJ,Complex.normSq_apply,Complex.mul_re,Complex.mul_im] <;> ring

/-- The native g is the determinant of the complementary three-row Gram
matrix. This uses the negative-Gram convention of leadingR exactly. -/
theorem physical_blockB_gram_det {H : Mat6} (hH : Physical H) :
    (blockB H*(blockB H)ᴴ).det =
      (27-3*gramP (rightGram H 1 0) (rightGram H 2 0) (rightGram H 2 1)+
        gramJ (rightGram H 1 0) (rightGram H 2 0) (rightGram H 2 1) : ℝ) := by
  rw [Matrix.det_fin_three]
  simp only [blockB_gram_entry,physical_rightGram_diag hH]
  rw [rightGram_conj H 1 0,rightGram_conj H 2 0,rightGram_conj H 2 1]
  exact hermitian_three_det_formula _ _ _

theorem physical_leadingR_rightGram {H : Mat6} (hH : Physical H) :
    leadingR H = gramInvariant (rightGram H 1 0) (rightGram H 2 0) (rightGram H 2 1) := by
  rw [physical_rightGram_negative hH 1 0 (by decide),
    physical_rightGram_negative hH 2 0 (by decide),
    physical_rightGram_negative hH 2 1 (by decide)]
  rfl

theorem invariant_positive_g_ne_zero (p J W : ℝ) (h : 0<invariant p J W) :
    27-3*p+J ≠ 0 := by
  intro hz
  unfold invariant at h
  rw [hz] at h
  nlinarith [sq_nonneg (W-(p-9)*(p-18)+(p-15)*J)]

/-- Positive leading invariant forces the actual upper-right block to be
invertible. No radius, maximality, dephasing, or inverse premise is needed. -/
theorem physical_positive_blockB_det_ne_zero {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) : (blockB H).det ≠ 0 := by
  rw [physical_leadingR_rightGram hH] at hR
  have hg := invariant_positive_g_ne_zero _ _ _ hR
  have hd : (blockB H*(blockB H)ᴴ).det ≠ 0 := by
    rw [physical_blockB_gram_det hH]
    exact_mod_cast hg
  rw [Matrix.det_mul] at hd
  exact left_ne_zero_of_mul hd

theorem physical_block_cross_gram {H : Mat6} (hH : Physical H) :
    blockC H*(blockE H)ᴴ + blockT H*(blockB H)ᴴ=0 := by
  ext i j
  have hij : bottomIndex i ≠ upperIndex j := by
    intro h
    have hv := congrArg Fin.val h
    dsimp [bottomIndex,upperIndex] at hv
    omega
  have hg := hH.2 (bottomIndex i) (upperIndex j)
  rw [if_neg hij,sum_six_split] at hg
  simpa [blockC,blockE,blockT,blockB,Matrix.mul_apply,Matrix.conjTranspose_apply] using hg

/-- Exact physical completion formula, with nonsingularity derived from
positive leadingR. Off-locus uniform inverse bounds remain separate work. -/
theorem physical_lower_block_recovery {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) :
    blockT H = -(blockC H*(blockE H)ᴴ)*(blockB H)ᴴ⁻¹ := by
  have hu : IsUnit (blockB H)ᴴ.det := by
    rw [Matrix.det_conjTranspose]
    exact isUnit_iff_ne_zero.mpr (by simpa using physical_positive_blockB_det_ne_zero hH hR)
  have hc : blockT H*(blockB H)ᴴ = -(blockC H*(blockE H)ᴴ) := by
    exact eq_neg_of_add_eq_zero_right (physical_block_cross_gram hH)
  calc
    blockT H = (blockT H*(blockB H)ᴴ)*(blockB H)ᴴ⁻¹ := by
      rw [Matrix.mul_assoc,Matrix.mul_nonsing_inv _ hu,Matrix.mul_one]
    _ = _ := by rw [hc]

/-- Exhaustive side-column completion follows by physical transpose. Both
orientations are retained and the nonzero anchor guard remains explicit. -/
theorem physical_side_column_pair {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (j : Fin 6) (hj : j ≠ 0)
    (ha : (-1-H 1 j-H 2 j)*conj (H 3 j)-1 ≠ 0) :
    let a := (-1-H 1 j-H 2 j)*conj (H 3 j)-1
    (H 4 j*conj (H 3 j)=pairPlus a ∧ H 5 j*conj (H 3 j)=pairMinus a) ∨
      (H 4 j*conj (H 3 j)=pairMinus a ∧ H 5 j*conj (H 3 j)=pairPlus a) := by
  exact physical_side_row_pair (physical_transpose hH) ⟨hd.2,hd.1⟩ j hj ha

end
end Centiradian20261006.NativeSigned20261006

#print axioms Centiradian20261006.NativeSigned20261006.sum_six_split
#print axioms Centiradian20261006.NativeSigned20261006.rightGram_eq_complement
#print axioms Centiradian20261006.NativeSigned20261006.physical_rightGram_negative
#print axioms Centiradian20261006.NativeSigned20261006.rightGram_conj
#print axioms Centiradian20261006.NativeSigned20261006.physical_rightGram_diag
#print axioms Centiradian20261006.NativeSigned20261006.blockB_gram_entry
#print axioms Centiradian20261006.NativeSigned20261006.hermitian_three_det_formula
#print axioms Centiradian20261006.NativeSigned20261006.physical_blockB_gram_det
#print axioms Centiradian20261006.NativeSigned20261006.physical_leadingR_rightGram
#print axioms Centiradian20261006.NativeSigned20261006.invariant_positive_g_ne_zero
#print axioms Centiradian20261006.NativeSigned20261006.physical_positive_blockB_det_ne_zero
#print axioms Centiradian20261006.NativeSigned20261006.physical_block_cross_gram
#print axioms Centiradian20261006.NativeSigned20261006.physical_lower_block_recovery
#print axioms Centiradian20261006.NativeSigned20261006.physical_side_column_pair
