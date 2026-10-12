import NoFourMUBs.Step2.CriticalZero.EquicorrelationMixedCorner

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators
namespace NoFourMUBs.Step2.Critical.Equicorrelation
open Matrix Hadamard6 CriticalStripMoments20261003 CriticalPhysical20261003

/-- Use the existing arbitrary-corner signature theorem with the archived
literal invariant. This includes a swap of the two noninitial rows. -/
theorem selected_signed_zero {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H)
    (r c : Fin 3 → Fin 6) (hr : Function.Injective r) (hc : Function.Injective c) :
    signedInvariant (H.submatrix r c) = 0 := by
  rcases hH with ⟨hN, A, rfl, hA⟩
  let B : Mat3 := (FourierBridge.toOAI A.1).submatrix r c
  have hs : (sideSignature B).im = 0 :=
    allCritical_submatrix_signature_im hA
      (fun i => FourierBridge.coordinates.symm (r i))
      (fun j => FourierBridge.coordinates.symm (c j))
      (FourierBridge.coordinates.symm.injective.comp hr)
      (FourierBridge.coordinates.symm.injective.comp hc)
  have hB : EntrywiseUnit B := fun i j => hN.1.1 (r i) (c j)
  change signedInvariant B = 0
  rw [signedInvariant, phaseInvariant_eq_neg_sideSignature B hB]
  apply Complex.ext <;> simp [Complex.star_def, hs]

def tail (j : Fin 3) : Fin 6 := j.natAdd 3

def mixedCols (k : Fin 6) (j : Fin 3) : Fin 3 → Fin 6 := ![0, k, tail j]

def swappedRows : Fin 3 → Fin 6 := ![0, 2, 1]

theorem mixedCols_one_injective (j : Fin 3) :
    Function.Injective (mixedCols 1 j) := by
  fin_cases j <;> decide

theorem mixedCols_two_injective (j : Fin 3) :
    Function.Injective (mixedCols 2 j) := by
  fin_cases j <;> decide

theorem swappedRows_injective : Function.Injective swappedRows := by decide

/-- An all-critical normalized matrix cannot contain the exact endpoint block
[[1,1,1],[1,1,alpha],[1,alpha^-1,1]].
This theorem assumes that block explicitly; obtaining it from scalar Gram
invariants is a separate, still necessary normalization step. -/
theorem normalized_block_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H)
    (h11 : H 1 1 = 1) (h12 : H 1 2 = alpha)
    (h21 : H 2 1 = alpha⁻¹) (h22 : H 2 2 = 1) : False := by
  have hx (j : Fin 3) :
      H 1 (tail j) = 1 ∨ H 1 (tail j) = -1 ∨
        H 1 (tail j) = alpha * (H 2 (tail j)) ^ 2 := by
    have hs := selected_signed_zero hH front (mixedCols 1 j)
      front_injective (mixedCols_one_injective j)
    rw [normalized_invariant _ (fun l => hH.1.2.1 (mixedCols 1 j l))] at hs
    change signedExpression (H 1 0) (H 1 1) (H 1 (tail j))
      (H 2 0) (H 2 1) (H 2 (tail j)) = 0 at hs
    rw [hH.1.2.2 1, h11, hH.1.2.2 2, h21] at hs
    exact first_mixed_constraint _ _ (hH.1.1.1 1 _) (hH.1.1.1 2 _) hs
  have hy (j : Fin 3) :
      H 2 (tail j) = 1 ∨ H 2 (tail j) = -1 ∨
        (H 1 (tail j)) ^ 2 = alpha * H 2 (tail j) := by
    have hs := selected_signed_zero hH swappedRows (mixedCols 2 j)
      swappedRows_injective (mixedCols_two_injective j)
    rw [normalized_invariant _ (fun l => hH.1.2.1 (mixedCols 2 j l))] at hs
    change signedExpression (H 2 0) (H 2 2) (H 2 (tail j))
      (H 1 0) (H 1 2) (H 1 (tail j)) = 0 at hs
    rw [hH.1.2.2 2, h22, hH.1.2.2 1, h12] at hs
    exact second_mixed_constraint _ _ (hH.1.1.1 1 _) (hH.1.1.1 2 _) hs
  have hsum : ∑ j : Fin 3, H 1 (tail j) = target := by
    have ho := relative_row_sum_zero hH.1.1 (a := 1) (b := 0) (by decide)
    simp [CriticalRowSum20261003.relativeRow, Fin.sum_univ_succ,
      hH.1.2.1, hH.1.2.2, h11, h12] at ho
    rw [Fin.sum_univ_three]
    change H 1 3 + H 1 4 + H 1 5 = target
    dsimp only [target]
    linear_combination ho
  exact complement_impossible (fun j => H 1 (tail j)) (fun j => H 2 (tail j))
    (fun j => hH.1.1.1 1 _) hx hy hsum

end NoFourMUBs.Step2.Critical.Equicorrelation
