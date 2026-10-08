import SideIntrinsicExhaustion
import PhysicalBlockRecovery

/-! Physical necessity join. Horizontal reconstruction uses only the physical
Hadamard equations, dephasing, and positive leadingR. The separate vertical
corollary explicitly assumes positive leadingR of the transpose; no unproved
transpose-invariant transport is used. Independent column permutations remain
inside the two side existentials. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate Matrix
noncomputable section

theorem physical_horizontal_side_exhaustion {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H) :
    ∃ (epsilon : ℝ) (delta w : ℂ) (p : Equiv.Perm (Fin 3)),
      epsilon^2=1 ∧
      delta^2=prescribedDeltaRadicand (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilon ∧
      0 ≤ (prescribedDF (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilon delta).re ∧
      w^3=prescribedXi (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilon delta ∧
      ∀ i j, prescribedSide (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilon delta w i j =
          blockB H i (p j) := by
  have hB : Hadamard6.EntrywiseUnit (blockB H) := by
    intro i j
    exact hH.1 (upperIndex i) (bottomIndex j)
  have hfirst : ∀ j, blockB H 0 j=1 := by
    intro j
    change H 0 (bottomIndex j)=1
    exact hd.1 (bottomIndex j)
  have hRB : 0 < gramInvariant (rightGram H 1 0)
      (rightGram H 2 0) (rightGram H 2 1) := by
    rw [← physical_leadingR_rightGram hH]
    exact hR
  have hex := strict_normalized_matrix_side_exhaustion (blockB H) hB hfirst
    (by simpa only [blockB_gram_entry] using hRB)
  simpa only [blockB_gram_entry] using hex

/-- Horizontal side necessity and the forced fourth block under exactly the
same physical strict-domain hypotheses. -/
theorem physical_horizontal_exhaustion_and_completion {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H) :
    ∃ (epsilon : ℝ) (delta w : ℂ) (p : Equiv.Perm (Fin 3)),
      epsilon^2=1 ∧
      delta^2=prescribedDeltaRadicand (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilon ∧
      0 ≤ (prescribedDF (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilon delta).re ∧
      w^3=prescribedXi (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilon delta ∧
      (∀ i j, prescribedSide (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilon delta w i j =
          blockB H i (p j)) ∧
      blockT H = -(blockC H * (blockE H)ᴴ) * (blockB H)ᴴ⁻¹ := by
  obtain ⟨epsilon,delta,w,p,he,hdelta,ho,hw,hside⟩ :=
    physical_horizontal_side_exhaustion hH hd hR
  exact ⟨epsilon,delta,w,p,he,hdelta,ho,hw,hside,
    physical_lower_block_recovery hH hR⟩

/-- Vertical necessity has its own explicit strict-domain premise. Its
permutation is independent of the horizontal permutation. -/
theorem physical_vertical_side_exhaustion {H : Mat6}
    (hH : Physical H) (hd : Dephased H)
    (hRt : 0 < leadingR (Matrix.transpose H)) :
    ∃ (epsilon : ℝ) (delta w : ℂ) (p : Equiv.Perm (Fin 3)),
      epsilon^2=1 ∧
      delta^2=prescribedDeltaRadicand (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0) (rightGram (Matrix.transpose H) 2 1) epsilon ∧
      0 ≤ (prescribedDF (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilon delta).re ∧
      w^3=prescribedXi (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilon delta ∧
      ∀ i j, prescribedSide (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilon delta w i j =
          blockC H (p j) i := by
  exact physical_horizontal_side_exhaustion (physical_transpose hH)
    ⟨hd.2,hd.1⟩ hRt

/-- Both actual side reconstructions and the forced lower block. The two
strict invariant hypotheses are explicit and the two permutations are independent. -/
theorem physical_two_side_exhaustion_and_completion {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H)
    (hRt : 0 < leadingR (Matrix.transpose H)) :
    ∃ (epsilonB : ℝ) (deltaB wB : ℂ) (pB : Equiv.Perm (Fin 3))
      (epsilonC : ℝ) (deltaC wC : ℂ) (pC : Equiv.Perm (Fin 3)),
      (epsilonB^2=1 ∧
      deltaB^2=prescribedDeltaRadicand (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilonB ∧
      0 ≤ (prescribedDF (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilonB deltaB).re ∧
      wB^3=prescribedXi (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilonB deltaB ∧
      ∀ i j, prescribedSide (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilonB deltaB wB i j =
          blockB H i (pB j)) ∧
      (epsilonC^2=1 ∧
      deltaC^2=prescribedDeltaRadicand (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0) (rightGram (Matrix.transpose H) 2 1) epsilonC ∧
      0 ≤ (prescribedDF (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilonC deltaC).re ∧
      wC^3=prescribedXi (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilonC deltaC ∧
      ∀ i j, prescribedSide (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilonC deltaC wC i j =
          blockC H (pC j) i) ∧
      blockT H = -(blockC H * (blockE H)ᴴ) * (blockB H)ᴴ⁻¹ := by
  obtain ⟨epsilonB,deltaB,wB,pB,heB,hdB,hoB,hwB,hB⟩ :=
    physical_horizontal_side_exhaustion hH hd hR
  obtain ⟨epsilonC,deltaC,wC,pC,heC,hdC,hoC,hwC,hC⟩ :=
    physical_vertical_side_exhaustion hH hd hRt
  exact ⟨epsilonB,deltaB,wB,pB,epsilonC,deltaC,wC,pC,
    ⟨heB,hdB,hoB,hwB,hB⟩,⟨heC,hdC,hoC,hwC,hC⟩,
    physical_lower_block_recovery hH hR⟩

#print axioms physical_horizontal_side_exhaustion
#print axioms physical_horizontal_exhaustion_and_completion
#print axioms physical_vertical_side_exhaustion
#print axioms physical_two_side_exhaustion_and_completion
end
end StrictReconstruction20261007.SideIntrinsic
