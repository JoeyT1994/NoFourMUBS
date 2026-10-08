import SidePhysicalSeedParameters
import SidePhysicalTranspose
import Hadamard6.FiniteDilation

/-! Actual physical blocks meet the paper's candidate and completion
interfaces. No finiteness or modulus target is assumed here. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate Matrix
noncomputable section

theorem physical_upper_block_gram {H : Mat6} (hH : Physical H) :
    blockE H * (blockE H)ᴴ + blockB H * (blockB H)ᴴ = Hadamard6.sixI3 := by
  ext i j
  have hg := hH.2 (upperIndex i) (upperIndex j)
  rw [sum_six_split] at hg
  have hi : upperIndex i=upperIndex j ↔ i=j := by
    constructor
    · intro he
      apply Fin.ext
      exact congrArg (fun x : Fin 6 => x.val) he
    · intro he
      exact congrArg upperIndex he
  by_cases hij : i=j
  · subst j
    simpa [blockE,blockB,Matrix.mul_apply,Matrix.conjTranspose_apply,
      Complex.star_def,Hadamard6.sixI3,Matrix.one_apply] using hg
  · simpa [blockE,blockB,Matrix.mul_apply,Matrix.conjTranspose_apply,
      Complex.star_def,Hadamard6.sixI3,Matrix.one_apply,hi,hij] using hg

theorem physical_blockB_horizontal_candidate {H : Mat6}
    (hH : Physical H) (hd : Dephased H) :
    blockB H ∈ Hadamard6.horizontalCandidates (blockE H) := by
  refine ⟨(fun i j => hH.1 (upperIndex i) (bottomIndex j)),?_,
    physical_upper_block_gram hH⟩
  intro j
  change H 0 (bottomIndex j)=1
  exact hd.1 (bottomIndex j)

theorem physical_blockC_vertical_candidate {H : Mat6}
    (hH : Physical H) (hd : Dephased H) :
    blockC H ∈ Hadamard6.verticalCandidates (blockE H) := by
  refine ⟨(fun i j => hH.1 (bottomIndex i) (upperIndex j)),?_,?_⟩
  · intro i
    change H (bottomIndex i) 0=1
    exact hd.2 (bottomIndex i)
  · have hHt : Physical (Matrix.transpose H) := physical_transpose hH
    have h := congrArg Matrix.transpose (physical_upper_block_gram hHt)
    have hEt : blockE (Matrix.transpose H)=Matrix.transpose (blockE H) := rfl
    have hBt : blockB (Matrix.transpose H)=Matrix.transpose (blockC H) := rfl
    have hsix : Matrix.transpose Hadamard6.sixI3=Hadamard6.sixI3 := by
      simp [Hadamard6.sixI3]
    have hEc : (Matrix.map (blockE H) star).transpose=(blockE H)ᴴ := rfl
    have hCc : (Matrix.map (blockC H) star).transpose=(blockC H)ᴴ := rfl
    simpa only [hEt,hBt,Matrix.transpose_add,Matrix.transpose_mul,
      Matrix.transpose_transpose,Matrix.conjTranspose_transpose,
      Matrix.transpose_conjTranspose,hEc,hCc,hsix] using h

theorem physical_blockC_isUnit_det {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H) :
    IsUnit (blockC H).det := by
  have hRt : 0 < leadingR (Matrix.transpose H) := by
    rw [dephased_physical_leadingR_transpose hH hd]
    exact hR
  have hHt : Physical (Matrix.transpose H) := physical_transpose hH
  have ht := physical_positive_blockB_det_ne_zero hHt hRt
  have hBt : blockB (Matrix.transpose H)=Matrix.transpose (blockC H) := rfl
  rw [hBt,Matrix.det_transpose] at ht
  exact isUnit_iff_ne_zero.mpr ht

theorem physical_forcedD_binding {H : Mat6} (hH : Physical H)
    (hR : 0 < leadingR H) :
    blockT H=Hadamard6.forcedD (blockE H) (blockB H) (blockC H) := by
  rw [physical_lower_block_recovery hH hR,Hadamard6.forcedD,
    Matrix.conjTranspose_nonsing_inv]
  simp only [Matrix.neg_mul]

#print axioms physical_upper_block_gram
#print axioms physical_blockB_horizontal_candidate
#print axioms physical_blockC_vertical_candidate
#print axioms physical_blockC_isUnit_det
#print axioms physical_forcedD_binding
end
end StrictReconstruction20261007.SideIntrinsic
