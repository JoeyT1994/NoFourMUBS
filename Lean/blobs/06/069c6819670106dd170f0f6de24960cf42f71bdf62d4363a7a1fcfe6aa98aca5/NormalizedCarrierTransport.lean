import CompactCarrierCover

/-! The normalized cover transports all common rays in one common frame. -/
namespace Mub6.Classification.CompactCover
open scoped BigOperators
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
noncomputable section

def normalizedSideRay (H : Mat6) (k : Fin 20) (z : Vector) : Vector :=
  rowPhaseRay (normalizingRows (H.submatrix id (sidePermutation k))) z

theorem rephase_carrierAmplitude (d e : Fin 6 → ℂ)
    (hd : ∀ r, Complex.normSq (d r) = 1) (H : Mat6) (z : Vector) (k : Fin 6) :
    carrierAmplitude (rephase d e H) (rowPhaseRay d z) k =
      star (e k) * carrierAmplitude H z k := by
  have h := overlap_rephase H (fun r _ => z r) d e (fun _ => 1) hd k 0
  simpa only [overlap, carrierAmplitude, rephase, rowPhaseRay, mul_one] using h

theorem normalizeCarrier_commonRay {H : Mat6} (hH : PhaseHadamard H)
    {z : Vector} (hz : IsRawCommonRay H z) :
    IsRawCommonRay (normalizeCarrier H) (rowPhaseRay (normalizingRows H) z) := by
  constructor
  · exact rowPhase_preserves_rawUnitRay _ (normalizingRows_unit hH) (normalizingRows_zero hH) hz.1
  · intro k
    rw [normalizeCarrier, rephase_carrierAmplitude _ _ (normalizingRows_unit hH),
      Complex.normSq_mul]
    simpa only [Complex.star_def, Complex.normSq_conj, normalizingCols_unit hH,
      one_mul] using hz.2 k

theorem normalizedSideRay_commonRay {H : Mat6} (hH : PhaseHadamard H)
    (k : Fin 20) {z : Vector} (hz : IsRawCommonRay H z) :
    IsRawCommonRay (normalizedSideCarrier H k) (normalizedSideRay H k z) := by
  apply normalizeCarrier_commonRay (phaseHadamard_column_permutation hH _)
  exact permuteCols_commonRay (sidePermutation k) hz

theorem normalizedSideRay_rawOverlap {H : Mat6} (hH : PhaseHadamard H)
    (k : Fin 20) (z w : Vector) :
    rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) = rawOverlap z w :=
  rowPhase_rawOverlap _ (normalizingRows_unit (phaseHadamard_column_permutation hH _)) z w

/-- A common frame simultaneously transports every ray and every pair overlap. -/
theorem phaseHadamard_normalized_good_side_cover_with_rays {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, NormalizedGoodSideCarrier (normalizedSideCarrier H k) ∧
      (∀ z, IsRawCommonRay H z →
        IsRawCommonRay (normalizedSideCarrier H k) (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k, hk⟩ := phaseHadamard_normalized_good_side_cover hH
  exact ⟨k, hk, fun _ hz => normalizedSideRay_commonRay hH k hz,
    normalizedSideRay_rawOverlap hH k⟩

end
end Mub6.Classification.CompactCover

#print axioms Mub6.Classification.CompactCover.rephase_carrierAmplitude
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_commonRay
#print axioms Mub6.Classification.CompactCover.normalizedSideRay_commonRay
#print axioms Mub6.Classification.CompactCover.normalizedSideRay_rawOverlap
#print axioms Mub6.Classification.CompactCover.phaseHadamard_normalized_good_side_cover_with_rays
