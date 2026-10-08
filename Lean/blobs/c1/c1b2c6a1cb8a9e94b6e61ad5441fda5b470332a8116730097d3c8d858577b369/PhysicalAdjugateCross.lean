import PhysicalBlockRecovery

/- Literal no_side_pair necessary equality. The adjugate derivation does not
use an inverse, positive R, a radius, or a nonzero determinant. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderAdjugate20261008
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators Matrix
noncomputable section

theorem gram_adjugate_sandwich (B : Mat3) :
    Bᴴ*(B*Bᴴ).adjugate*B=(B*Bᴴ).det • (1 : Mat3) := by
  rw [Matrix.adjugate_mul_distrib]
  calc
    _ = (Bᴴ*Bᴴ.adjugate)*(B.adjugate*B) := by
      simp only [Matrix.mul_assoc]
    _ = (Bᴴ.det • (1 : Mat3))*(B.det • (1 : Mat3)) := by
      rw [Matrix.mul_adjugate,Matrix.adjugate_mul]
    _ = _ := by simp [Matrix.det_mul,smul_smul,mul_comm]

theorem cross_adjugate_identity (B T X : Mat3) (hc : X+T*Bᴴ=0) :
    X*(B*Bᴴ).adjugate*B= -((B*Bᴴ).det • T) := by
  have hx : X= -(T*Bᴴ) := eq_neg_of_add_eq_zero_left hc
  calc
    _ = -(T*(Bᴴ*(B*Bᴴ).adjugate*B)) := by
      rw [hx]; simp only [Matrix.neg_mul,Matrix.mul_assoc]
    _ = _ := by rw [gram_adjugate_sandwich,Matrix.mul_smul,Matrix.mul_one]

/-- W has the exact supplier multiplication order E* adj(G). The vertical
row is multiplied directly, without a conjugation. -/
def sideCrossW (H : Mat6) : Mat3 :=
  (blockE H)ᴴ*(blockB H*(blockB H)ᴴ).adjugate

theorem physical_cross_adjugate {H : Mat6} (hH : Physical H) :
    blockC H*sideCrossW H*blockB H =
      -((blockB H*(blockB H)ᴴ).det • blockT H) := by
  simpa only [sideCrossW,Matrix.mul_assoc] using
    cross_adjugate_identity (blockB H) (blockT H)
      (blockC H*(blockE H)ᴴ) (physical_block_cross_gram hH)

theorem physical_gram_det_nonnegative (H : Mat6) :
    (blockB H*(blockB H)ᴴ).det=(Complex.normSq (blockB H).det : ℂ) := by
  rw [Matrix.det_mul,Matrix.det_conjTranspose,Complex.mul_conj]

/-- Every one of the nine actual row/column cross pairs satisfies the
supplier modulus equality, even when the complementary Gram is singular. -/
theorem physical_cross_modulus {H : Mat6} (hH : Physical H) (i j : Fin 3) :
    ‖(blockC H*sideCrossW H*blockB H) i j‖=Complex.normSq (blockB H).det := by
  have hu : ‖blockT H i j‖=1 := by
    rw [Complex.norm_def]
    simp [blockT,hH.1]
  rw [physical_cross_adjugate hH,physical_gram_det_nonnegative]
  change ‖-((Complex.normSq (blockB H).det : ℂ)*blockT H i j)‖=_
  rw [norm_neg,norm_mul,hu,mul_one,Complex.norm_real,
    Real.norm_eq_abs,abs_of_nonneg (Complex.normSq_nonneg _)]

end
#print axioms gram_adjugate_sandwich
#print axioms cross_adjugate_identity
#print axioms physical_cross_adjugate
#print axioms physical_gram_det_nonnegative
#print axioms physical_cross_modulus
end ShoulderAdjugate20261008
