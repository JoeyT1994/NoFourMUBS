import PhysicalCarrierEnclosures
import GlobalFourierConditioning
import PhysicalSideRational

/-! Independent coverage-consumer checks. These are review evidence, not new
classification or exclusion claims. -/
namespace AtlasCoverageReview
open Matrix Mub6 Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover Mub6.Classification.CarrierIntervals
open Hadamard6Extensions.FourierConditioning
noncomputable section

theorem normalized_ray_map_injective {H : BasisMatrix} (hH : PhaseHadamard H)
    (k : Fin 20) : Function.Injective (normalizedSideRay H k) := by
  intro z w hzw
  funext r
  have hn : normalizingRows (Matrix.submatrix H id (sidePermutation k)) r ≠ 0 := by
    have hu := normalizingRows_unit (phaseHadamard_column_permutation hH
      (sidePermutation k)) r
    intro he
    simp [he] at hu
  exact mul_left_cancel₀ hn (congrFun hzw r)

theorem normalized_ray_pair_relations {H : BasisMatrix} (hH : PhaseHadamard H)
    (k : Fin 20) (z w : Vector) :
    (rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) = 0 ↔
      rawOverlap z w = 0) ∧
    (Complex.normSq (rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w)) = 6 ↔
      Complex.normSq (rawOverlap z w) = 6) := by
  rw [normalizedSideRay_rawOverlap hH]
  exact ⟨Iff.rfl, Iff.rfl⟩

theorem finite_enclosure_with_explicit_witness (depth : ℕ) {H : BasisMatrix}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20, ∃ signs : CarrierSigns, ∃ cell : ParameterCell depth,
    ∃ t : CarrierParameters,
      InParameterCube t ∧ ParameterCellContains depth cell t ∧
      ExplicitPhysicalFilter signs t ∧
      normalizedSideCarrier H k = chartCarrier signs t ∧
      CarrierBox (physicalCellEnclosure signs cell) (normalizedSideCarrier H k) ∧
      (54/5 : ℝ) ≤ (Mub6.Classification.CompactCover.gram
        (freeE (chartEntries signs t))).det.re ∧
      (Mub6.Classification.CompactCover.gram
        (freeE (chartEntries signs t))).det.im = 0 ∧
      (Mub6.Classification.CompactCover.gram
        (freeE (chartEntries signs t))).det ≠ 0 := by
  obtain ⟨k,signs,cell,t,hcube,hcell,hfilter,heq,_,_⟩ :=
    phaseHadamard_finite_dyadic_cover depth hH
  have hp := (chart_physical_filter_iff signs t).mpr hfilter
  have hb := physicalChartEnclosure_sound signs (cellBox cell) t
    (cellBox_contains hcell) hp
  have hg := physical_chart_gram_guard hp
  refine ⟨k,signs,cell,t,hcube,hcell,hfilter,heq,?_,hg⟩
  rw [heq]
  exact hb

theorem both_sides_conditioned_of_normalized_good {K : BasisMatrix}
    (hK : NormalizedGoodSideCarrier K) (omega : ℂ) (homega : omega^2+omega+1=0) :
    ConditionedPhaseSide (northeast K) omega ∧
      ConditionedPhaseSide (southwest K)ᵀ omega := by
  constructor
  · apply conditionedPhaseSide_of_good _ omega homega
    · intro j
      exact hK.2.1 (back j)
    · intro i j
      exact hK.1.1 (front i) (back j)
    · exact hK.2.2.2.1
  · apply conditionedPhaseSide_of_good _ omega homega
    · intro j
      exact hK.2.2.1 (back j)
    · intro i j
      exact hK.1.1 (back j) (front i)
    · simpa only [Matrix.det_transpose] using hK.2.2.2.2

theorem same_witness_enclosure_and_conditioning (depth : ℕ) {H : BasisMatrix}
    (hH : PhaseHadamard H) (omega : ℂ) (homega : omega^2+omega+1=0) :
    ∃ k : Fin 20, ∃ signs : CarrierSigns, ∃ cell : ParameterCell depth,
      CarrierBox (physicalCellEnclosure signs cell) (normalizedSideCarrier H k) ∧
      NormalizedGoodSideCarrier (normalizedSideCarrier H k) ∧
      ConditionedPhaseSide (northeast (normalizedSideCarrier H k)) omega ∧
      ConditionedPhaseSide (southwest (normalizedSideCarrier H k))ᵀ omega ∧
      Function.Injective (normalizedSideRay H k) ∧
      (∀ z, IsRawCommonRay H z → IsRawCommonRay
        (normalizedSideCarrier H k) (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k,signs,cell,t,_,_,hf,he,hbox,_⟩ :=
    finite_enclosure_with_explicit_witness depth hH
  have hk : NormalizedGoodSideCarrier (normalizedSideCarrier H k) := by
    rw [he]
    exact (chart_physical_filter_iff signs t).mpr hf
  obtain ⟨hb,hc⟩ := both_sides_conditioned_of_normalized_good hk omega homega
  exact ⟨k,signs,cell,hbox,hk,hb,hc,normalized_ray_map_injective hH k,
    fun z hz => normalizedSideRay_commonRay hH k hz,normalizedSideRay_rawOverlap hH k⟩

-- Endpoint types and all their imported proof dependencies are audited here.
#check FourierSeedBinding.six_lambdas_phases_both_sheets
#check FourierSeedBinding.lambdaH_phase_guarded
#check FourierSeedBinding.lambdaV_phase_guarded
#check FourierPhysicalSide.rational_lambda_matches_physical
#check FourierPhysicalSide.physicalSheet_two_sqrt
#print axioms normalized_ray_map_injective
#print axioms normalized_ray_pair_relations
#print axioms finite_enclosure_with_explicit_witness
#print axioms both_sides_conditioned_of_normalized_good
#print axioms same_witness_enclosure_and_conditioning
#print axioms Mub6.Classification.CarrierIntervals.phaseHadamard_in_finite_physical_enclosures
#print axioms FourierSeedBinding.six_lambdas_phases_both_sheets
#print axioms FourierPhysicalSide.physical_numerators_factor
#print axioms FourierPhysicalSide.rational_lambda_matches_physical
#print axioms FourierPhysicalSide.physicalSheet_two_sqrt
end
end AtlasCoverageReview
