import Hadamard6.SimultaneousFourierNormalization
import NoFourMUBs.Reuse.Archive.ContinuousBindings
import NoFourMUBs.Step2.CriticalZero.FourierRoutingModel

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace GeometricNormalization20261003
open Hadamard6
noncomputable section

/-- Dephasing only changes the lower rows when the two top blocks already
have the geometric Fourier form. In particular the conjugate pair is fixed. -/
theorem simultaneousDephase_top_fixed {H : Mat6} {ω u : ℂ}
    (hA : Matrix.toBlocks₁₁ H=fourier3 ω)
    (hB : Matrix.toBlocks₁₂ H=rowGauge (fourierParameters u (star u)) (fourier3 ω)) :
    ∀ i j, simultaneousDephase H (Sum.inl i) j=H (Sum.inl i) j := by
  have ht (i : I3) : topPhase H i=1 := by
    change star (Matrix.toBlocks₁₁ H i 0)=1
    rw [hA]
    simp [fourier3]
  have hl (j : I3) : leftPhase H j=1 := by
    change star (Matrix.toBlocks₁₁ H 0 j)*Matrix.toBlocks₁₁ H 0 0=1
    rw [hA]
    simp [fourier3]
  have hr (j : I3) : rightPhase H j=1 := by
    change star (topPhase H 0*Matrix.toBlocks₁₂ H 0 j)=1
    rw [ht,hB]
    simp [rowGauge,fourierParameters,fourier3]
  intro i j
  rcases j with j | j
  · change topPhase H i*H (Sum.inl i) (Sum.inl j)*leftPhase H j=_
    rw [ht,hl]
    simp
  · change topPhase H i*H (Sum.inl i) (Sum.inr j)*rightPhase H j=_
    rw [ht,hr]
    simp

theorem bottom_orientation {C : Mat3} {ω : ℂ}
    (hC : IsHadamard3 C) (hcol : ∀ i, C i 0=1)
    (hω : ω^2+ω+1=0) :
    ∃ r s : ℂ, Complex.normSq r=1 ∧ Complex.normSq s=1 ∧
      ∃ τ : Equiv.Perm I3, ∀ i j,
        C (τ i) j=columnGauge (fourierParameters r s) (fourier3 ω) i j := by
  obtain ⟨r,s,ξ,hr,hs,_hξ,hξq,hform⟩ := hadamard3_firstColumn_eq_columnGauge_fourier hC hcol
  refine ⟨r,s,hr,hs,?_⟩
  rcases quadratic_root_relative hω hξq with he | he
  · refine ⟨Equiv.refl I3,?_⟩
    intro i j
    rw [hform,he]
    rfl
  · refine ⟨swapFourierOrientation,?_⟩
    intro i j
    rw [hform,he]
    change fourierParameters r s j*fourier3 (ω^2) (swapFourierOrientation i) j =
      fourierParameters r s j*fourier3 ω i j
    exact congrArg (fun z : ℂ => fourierParameters r s j*z)
      (congrArg (fun M : Mat3 => M i j) (fourier3_square_swap_rows hω))

/-- The lower block is normalized using only lower-row phases and a lower-row
permutation. The already supplied top blocks, including u and star u, survive. -/
theorem conjugate_first_blocks_normalization {H : Mat6} {ω u : ℂ}
    (hH : IsHadamard H) (hωu : Complex.normSq ω=1) (hω : ω^2+ω+1=0)
    (hA : Matrix.toBlocks₁₁ H=fourier3 ω)
    (hB : Matrix.toBlocks₁₂ H=rowGauge (fourierParameters u (star u)) (fourier3 ω)) :
    ∃ K : Mat6, IsHadamard K ∧ Equivalent H K ∧
      ∃ r s : ℂ, Complex.normSq r=1 ∧ Complex.normSq s=1 ∧
        ∃ D : Mat3, K=fourierNormalForm ω u (star u) r s D := by
  have hAf : IsHadamard3 (Matrix.toBlocks₁₁ H) := by
    rw [hA]
    rw [Worker12.fourier3_power_eq_literal hω]
    exact Worker12.literal_fourier3_isHadamard hωu hω
  have hfour := allFourBlocksHadamard_of_topLeft hH hAf
  let K := simultaneousDephase H
  have hK : IsHadamard K := simultaneousDephase_isHadamard hH
  have hKC : IsHadamard3 (Matrix.toBlocks₂₁ K) :=
    (simultaneousDephase_blocks_hadamard hfour).2.2.1
  have hc : ∀ i, Matrix.toBlocks₂₁ K i 0=1 :=
    bottomLeft_simultaneousDephase_firstColumn hH.1
  obtain ⟨r,s,hr,hs,τ,hτ⟩ := bottom_orientation hKC hc hω
  let L := permuteMatrix (liftBottomPermutation τ) (Equiv.refl I6) K
  have hL : IsHadamard L := permuteMatrix_isHadamard hK
  have heq : Equivalent H L := equivalent_trans
    (equivalent_simultaneousDephase hH.1)
    (equivalent_permuteMatrix (liftBottomPermutation τ) (Equiv.refl I6) K)
  have hLA : Matrix.toBlocks₁₁ L=fourier3 ω := by
    ext i j
    change simultaneousDephase H (Sum.inl i) (Sum.inl j)=fourier3 ω i j
    rw [simultaneousDephase_top_fixed hA hB]
    exact congrArg (fun M : Mat3 => M i j) hA
  have hLB : Matrix.toBlocks₁₂ L=rowGauge (fourierParameters u (star u)) (fourier3 ω) := by
    ext i j
    change simultaneousDephase H (Sum.inl i) (Sum.inr j)=_
    rw [simultaneousDephase_top_fixed hA hB]
    exact congrArg (fun M : Mat3 => M i j) hB
  have hLC : Matrix.toBlocks₂₁ L=columnGauge (fourierParameters r s) (fourier3 ω) := by
    ext i j
    exact hτ i j
  refine ⟨L,hL,heq,r,s,hr,hs,Matrix.toBlocks₂₂ L,?_⟩
  rw [← Matrix.fromBlocks_toBlocks L,hLA,hLB,hLC]
  rfl

end
end GeometricNormalization20261003
#print axioms GeometricNormalization20261003.simultaneousDephase_top_fixed
#print axioms GeometricNormalization20261003.bottom_orientation
#print axioms GeometricNormalization20261003.conjugate_first_blocks_normalization
