import PhysicalBlockRecovery
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators Matrix
noncomputable section

def cyclicStep (i : Fin 3) (offset : ℕ) : Fin 3 :=
  ⟨(i.val+offset)%3, Nat.mod_lt _ (by decide)⟩

/-- Literal cyclic-cofactor indexing in interval_model.hpp::mi, over ℂ. -/
def nativeCofactor (A : Mat3) : Mat3 := fun i j =>
  A (cyclicStep j 1) (cyclicStep i 1)*A (cyclicStep j 2) (cyclicStep i 2)-
    A (cyclicStep j 1) (cyclicStep i 2)*A (cyclicStep j 2) (cyclicStep i 1)

def nativeDeterminant (A : Mat3) : ℂ := ∑ j : Fin 3, A 0 j*nativeCofactor A j 0
def nativeInverse (A : Mat3) : Mat3 := fun i j =>
  nativeCofactor A i j*(nativeDeterminant A)⁻¹

theorem nativeCofactor_eq_adjugate (A : Mat3) : nativeCofactor A=A.adjugate := by
  have htwo : (⟨2,by decide⟩ : Fin 3)=(2 : Fin 3) := rfl
  rw [Matrix.adjugate_fin_three]
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [nativeCofactor,cyclicStep] <;>
    simp only [htwo] <;> ring

theorem nativeDeterminant_eq_det (A : Mat3) : nativeDeterminant A=A.det := by
  unfold nativeDeterminant
  rw [nativeCofactor_eq_adjugate]
  exact (Matrix.det_eq_sum_mul_adjugate_row A 0).symm

/-- Equality includes singular inputs under Lean's totalized inverse. The
inverse identities below separately retain the actual nonzero determinant. -/
theorem nativeInverse_eq_nonsingInverse (A : Mat3) : nativeInverse A=A⁻¹ := by
  rw [Matrix.inv_def,Ring.inverse_eq_inv]
  ext i j
  simp [nativeInverse,nativeCofactor_eq_adjugate,nativeDeterminant_eq_det,mul_comm]

theorem nativeInverse_right (A : Mat3) (h : A.det ≠ 0) : A*nativeInverse A=1 := by
  rw [nativeInverse_eq_nonsingInverse]
  exact Matrix.mul_nonsing_inv A (isUnit_iff_ne_zero.mpr h)

theorem nativeInverse_left (A : Mat3) (h : A.det ≠ 0) : nativeInverse A*A=1 := by
  rw [nativeInverse_eq_nonsingInverse]
  exact Matrix.nonsing_inv_mul A (isUnit_iff_ne_zero.mpr h)

/-- The actual anchor phases and row-normalized upper-right block. Selecting
the source's canonical orientation is a remaining chart-cover obligation. -/
def anchorDiagonal (H : Mat6) : Mat3 := Matrix.diagonal (fun i => blockB H i 0)
def normalizedSideK (H : Mat6) : Mat3 := (anchorDiagonal H)ᴴ*blockB H

theorem physical_anchor_unitary {H : Mat6} (hH : Physical H) :
    anchorDiagonal H*(anchorDiagonal H)ᴴ=1 := by
  ext i j
  by_cases hij : i=j
  · subst j
    simp [anchorDiagonal,Matrix.mul_apply,Matrix.conjTranspose_apply,
      Matrix.diagonal,Complex.mul_conj,blockB,hH.1]
  · simp [anchorDiagonal,Matrix.mul_apply,Matrix.conjTranspose_apply,
      Matrix.diagonal,hij,Ne.symm hij]

theorem physical_anchor_adjoint_inverse {H : Mat6} (hH : Physical H) :
    (anchorDiagonal H)ᴴ⁻¹=anchorDiagonal H := by
  exact Matrix.inv_eq_left_inv (physical_anchor_unitary hH)

theorem physical_blockB_anchor_factor {H : Mat6} (hH : Physical H) :
    blockB H=anchorDiagonal H*normalizedSideK H := by
  rw [normalizedSideK,← Matrix.mul_assoc,physical_anchor_unitary hH,Matrix.one_mul]

theorem physical_normalizedSideK_det_ne_zero {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) : (normalizedSideK H).det ≠ 0 := by
  have hb := physical_positive_blockB_det_ne_zero hH hR
  rw [physical_blockB_anchor_factor hH,Matrix.det_mul] at hb
  exact right_ne_zero_of_mul hb

theorem physical_native_inverse_guard {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) : nativeDeterminant (normalizedSideK H)ᴴ ≠ 0 := by
  rw [nativeDeterminant_eq_det,Matrix.det_conjTranspose]
  simpa using physical_normalizedSideK_det_ne_zero hH hR

/-- Actual physical lower-block recovery in the precise native multiplication
order -C E* Z (K*)⁻¹, with its cyclic-cofactor inverse kernel checked. -/
theorem physical_lower_block_native {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) :
    blockT H = -(blockC H*(blockE H)ᴴ*anchorDiagonal H)*
      nativeInverse (normalizedSideK H)ᴴ := by
  rw [nativeInverse_eq_nonsingInverse,physical_lower_block_recovery hH hR,
    physical_blockB_anchor_factor hH,Matrix.conjTranspose_mul,Matrix.mul_inv_rev,
    physical_anchor_adjoint_inverse hH]
  simp only [Matrix.mul_assoc,Matrix.neg_mul]

end
end Centiradian20261006.NativeSigned20261006

#print axioms Centiradian20261006.NativeSigned20261006.nativeCofactor_eq_adjugate
#print axioms Centiradian20261006.NativeSigned20261006.nativeDeterminant_eq_det
#print axioms Centiradian20261006.NativeSigned20261006.nativeInverse_eq_nonsingInverse
#print axioms Centiradian20261006.NativeSigned20261006.nativeInverse_right
#print axioms Centiradian20261006.NativeSigned20261006.nativeInverse_left
#print axioms Centiradian20261006.NativeSigned20261006.physical_anchor_unitary
#print axioms Centiradian20261006.NativeSigned20261006.physical_anchor_adjoint_inverse
#print axioms Centiradian20261006.NativeSigned20261006.physical_blockB_anchor_factor
#print axioms Centiradian20261006.NativeSigned20261006.physical_normalizedSideK_det_ne_zero
#print axioms Centiradian20261006.NativeSigned20261006.physical_native_inverse_guard
#print axioms Centiradian20261006.NativeSigned20261006.physical_lower_block_native
