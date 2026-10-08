import PhysicalSeedSheets

/-! Global necessity: twenty actual normalized carriers with a four-phase seed bridge. -/
namespace Mub6.Classification.FourPhase
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover FourierSeedBinding
noncomputable section

/-- All entries and blocks are those of the same physical normalized carrier. -/
structure ActualSeedBridge (H : Mat6) : Prop where
  seed_unit : IsPhase (H 1 1) ∧ IsPhase (H 1 2) ∧ IsPhase (H 2 1) ∧ IsPhase (H 2 2)
  seed_eq : northwest H = seed (H 1 1) (H 1 2) (H 2 1) (H 2 2)
  horizontal_unit : ∀ i j, IsPhase (northeast H i j)
  vertical_unit : ∀ i j, IsPhase ((southwest H)ᵀ i j)
  horizontal_row : ∀ j, northeast H 0 j = 1
  vertical_row : ∀ j, (southwest H)ᵀ 0 j = 1
  horizontal_actual : actualSide (northeast H 1) (northeast H 2) = northeast H
  vertical_actual : actualSide ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) = (southwest H)ᵀ
  horizontal_gram : northeast H * (northeast H)ᴴ =
    gramH (H 1 1) (H 1 2) (H 2 1) (H 2 2)
  vertical_gram : (southwest H)ᵀ * ((southwest H)ᵀ)ᴴ =
    gramV (H 1 1) (H 1 2) (H 2 1) (H 2 2)
  horizontal_moment : sideS (northeast H) = rowS (H 1 1) (H 1 2) ∧
    sideT (northeast H) = rowT (H 2 1) (H 2 2) ∧
    sideR (northeast H) = rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)
  vertical_moment : sideS ((southwest H)ᵀ) = rowS (H 1 1) (H 2 1) ∧
    sideT ((southwest H)ᵀ) = rowT (H 1 2) (H 2 2) ∧
    sideR ((southwest H)ᵀ) = rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)
  horizontal_guard : (54 / 5 : ℝ) ≤ Complex.normSq (northeast H).det
  vertical_guard : (54 / 5 : ℝ) ≤ Complex.normSq ((southwest H)ᵀ).det
  horizontal_invertible : (northeast H).det ≠ 0
  vertical_invertible : ((southwest H)ᵀ).det ≠ 0
  shared_g : g (H 1 1) (H 1 2) (H 2 1) (H 2 2) = Complex.normSq (northeast H).det ∧
    g (H 1 1) (H 1 2) (H 2 1) (H 2 2) = Complex.normSq ((southwest H)ᵀ).det
  g_lower : (54 / 5 : ℝ) ≤ g (H 1 1) (H 1 2) (H 2 1) (H 2 2)
  R_nonneg : 0 ≤ radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2)
  R_cases : 0 < radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) ∨
    radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) = 0
  reconstruction : H = reconstructedCarrier (northwest H) (northeast H) (southwest H)

theorem normalized_actual_seed_bridge {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ActualSeedBridge H where
  seed_unit := seed_entries_phase hH
  seed_eq := normalized_northwest_seed hH
  horizontal_unit := horizontal_phase hH
  vertical_unit := vertical_phase hH
  horizontal_row := horizontal_first_row hH
  vertical_row := vertical_first_row hH
  horizontal_actual := horizontal_actualSide hH
  vertical_actual := vertical_actualSide hH
  horizontal_gram := horizontal_gram_seed hH
  vertical_gram := vertical_gram_seed hH
  horizontal_moment := horizontal_moments hH
  vertical_moment := vertical_moments hH
  horizontal_guard := horizontal_det_guard hH
  vertical_guard := vertical_det_guard hH
  horizontal_invertible := horizontal_det_ne_zero hH
  vertical_invertible := vertical_det_ne_zero hH
  shared_g := ⟨seed_g_horizontal_det hH, seed_g_vertical_det hH⟩
  g_lower := seed_g_lower_bound hH
  R_nonneg := seed_radicand_nonneg hH
  R_cases := seed_radicand_dichotomy hH
  reconstruction := normalized_reconstructedCarrier hH

/-- No good seed or side invertibility hypothesis is added to physicality. -/
theorem phaseHadamard_actual_seed_cover {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧ ActualSeedBridge K := by
  obtain ⟨k, hk⟩ := phaseHadamard_normalized_good_side_cover hH
  exact ⟨k, hk, normalized_actual_seed_bridge hk⟩

end
end Mub6.Classification.FourPhase

#check Mub6.Classification.FourPhase.ActualSeedBridge
#check Mub6.Classification.FourPhase.normalized_actual_seed_bridge
#print axioms Mub6.Classification.FourPhase.normalized_actual_seed_bridge
#check Mub6.Classification.FourPhase.phaseHadamard_actual_seed_cover
#print axioms Mub6.Classification.FourPhase.phaseHadamard_actual_seed_cover
