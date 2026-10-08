import NativeBlockInverse

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.GramChart20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006
noncomputable section

/-- Seed-only complementary Gram matrix. The numeral denotes six times
the identity matrix, not a matrix with every entry equal to six. -/
def seedGram (E : Mat3) : Mat3 := (6:Mat3)-E*Eᴴ

theorem physical_upper_block_gram {H : Mat6} (hH : Physical H) :
    blockE H*(blockE H)ᴴ+blockB H*(blockB H)ᴴ=(6:Mat3) := by
  ext i j
  have hg := hH.2 (upperIndex i) (upperIndex j)
  rw [sum_six_split] at hg
  have he : upperIndex i=upperIndex j ↔ i=j := by
    constructor
    · intro h
      apply Fin.ext
      exact congrArg (fun k : Fin 6 => k.val) h
    · intro h; exact congrArg upperIndex h
  simpa [blockE,blockB,Matrix.mul_apply,Matrix.conjTranspose_apply,Matrix.ofNat_apply,he] using hg

theorem physical_seedGram {H : Mat6} (hH : Physical H) :
    seedGram (blockE H)=blockB H*(blockB H)ᴴ := by
  rw [seedGram,← physical_upper_block_gram hH]
  exact add_sub_cancel_left _ _

/-- This is the positive-J native determinant, with the negative partial
Gram entries in the lower triangular positions (1,0), (2,0), (2,1). -/
theorem physical_seedGram_det {H : Mat6} (hH : Physical H) :
    (seedGram (blockE H)).det=
      (27-3*gramP (rightGram H 1 0) (rightGram H 2 0) (rightGram H 2 1)+
        gramJ (rightGram H 1 0) (rightGram H 2 0) (rightGram H 2 1):ℝ) := by
  rw [physical_seedGram hH]
  exact physical_blockB_gram_det hH

theorem physical_seedGram_det_ne_zero {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) : (seedGram (blockE H)).det ≠ 0 := by
  have hb := physical_positive_blockB_det_ne_zero hH hR
  rw [physical_seedGram hH,Matrix.det_mul,Matrix.det_conjTranspose]
  exact mul_ne_zero hb (by simpa using hb)

/-- Correct multiplication order: G^-1 B is the inverse of B adjoint.
The premise BB*=G is essential; arbitrary chart parameters need not satisfy it. -/
theorem adjoint_inverse_from_gram (B G : Mat3)
    (hGram : B*Bᴴ=G) (hdet : G.det ≠ 0) : Bᴴ⁻¹=G⁻¹*B := by
  apply Matrix.inv_eq_left_inv
  rw [Matrix.mul_assoc,hGram]
  exact Matrix.nonsing_inv_mul G (isUnit_iff_ne_zero.mpr hdet)

theorem physical_adjoint_inverse_seedGram {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) :
    (blockB H)ᴴ⁻¹=(seedGram (blockE H))⁻¹*blockB H :=
  adjoint_inverse_from_gram _ _ (physical_seedGram hH).symm
    (physical_seedGram_det_ne_zero hH hR)

/-- Exact Gram-based physical reconstruction. The cross identity used is
C E* + D B* = 0, obtained from lower-row/upper-row orthogonality. -/
theorem physical_lower_block_seedGram {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) :
    blockT H=-(blockC H*(blockE H)ᴴ)*(seedGram (blockE H))⁻¹*blockB H := by
  rw [physical_lower_block_recovery hH hR,physical_adjoint_inverse_seedGram hH hR,
    Matrix.mul_assoc]

theorem physical_lower_block_nativeGram {H : Mat6} (hH : Physical H)
    (hR : 0<leadingR H) :
    blockT H=-(blockC H*(blockE H)ᴴ)*nativeInverse (seedGram (blockE H))*blockB H := by
  rw [nativeInverse_eq_nonsingInverse]
  exact physical_lower_block_seedGram hH hR

end
end Centiradian20261006.GramChart20261006

#print axioms Centiradian20261006.GramChart20261006.physical_upper_block_gram
#print axioms Centiradian20261006.GramChart20261006.physical_seedGram
#print axioms Centiradian20261006.GramChart20261006.physical_seedGram_det
#print axioms Centiradian20261006.GramChart20261006.physical_seedGram_det_ne_zero
#print axioms Centiradian20261006.GramChart20261006.adjoint_inverse_from_gram
#print axioms Centiradian20261006.GramChart20261006.physical_adjoint_inverse_seedGram
#print axioms Centiradian20261006.GramChart20261006.physical_lower_block_seedGram
#print axioms Centiradian20261006.GramChart20261006.physical_lower_block_nativeGram
