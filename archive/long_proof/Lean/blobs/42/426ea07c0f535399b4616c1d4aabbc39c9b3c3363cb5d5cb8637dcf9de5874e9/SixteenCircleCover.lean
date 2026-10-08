import AdjugateReconstruction
import NormalizedCarrierTransport
import RationalCircleCharts

/-! A complete finite family of sixteen-real-parameter rational carrier charts.
The physical equations remain explicit filters on a closed parameter cube. -/
namespace Mub6.Classification.CompactCover
open scoped BigOperators
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor Mub6.Numerical.CircleCharts
noncomputable section

/-- Four free E entries, six free B entries, and six free C entries. -/
abbrev FreeCoordinate := (Fin 2 × Fin 2) ⊕ ((Fin 2 × Fin 3) ⊕ (Fin 3 × Fin 2))
abbrev CarrierSigns := FreeCoordinate → Bool
abbrev CarrierParameters := FreeCoordinate → ℝ

theorem free_coordinate_count : Fintype.card FreeCoordinate = 16 := by decide
theorem carrier_sign_count : Fintype.card CarrierSigns = 65536 := by
  rw [Fintype.card_fun, free_coordinate_count]
  norm_num

def freeEntry (H : Mat6) : FreeCoordinate → ℂ :=
  Sum.elim (fun q => H (front q.1.succ) (front q.2.succ))
    (Sum.elim (fun q => H (front q.1.succ) (back q.2))
      (fun q => H (back q.1) (front q.2.succ)))

def freeE (f : FreeCoordinate → ℂ) : Mat3 := fun i j =>
  Fin.cases 1 (fun a => Fin.cases 1 (fun b => f (Sum.inl (a,b))) j) i
def freeB (f : FreeCoordinate → ℂ) : Mat3 := fun i j =>
  Fin.cases 1 (fun a => f (Sum.inr (Sum.inl (a,j)))) i
def freeC (f : FreeCoordinate → ℂ) : Mat3 := fun i j =>
  Fin.cases 1 (fun b => f (Sum.inr (Sum.inr (i,b)))) j

theorem freeEntry_unit {H : Mat6} (hH : PhaseHadamard H) (q : FreeCoordinate) :
    Complex.normSq (freeEntry H q) = 1 := by
  rcases q with q | q
  · exact hH.1 _ _
  · rcases q with q | q <;> exact hH.1 _ _

theorem freeE_of_normalized {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    freeE (freeEntry H) = northwest H := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [freeE, freeEntry, northwest, front, hH.2.1, hH.2.2.1]

theorem freeB_of_normalized {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    freeB (freeEntry H) = northeast H := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [freeB, freeEntry, northeast, front, back, hH.2.1]

theorem freeC_of_normalized {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    freeC (freeEntry H) = southwest H := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [freeC, freeEntry, southwest, front, back, hH.2.2.1]

def chartEntries (signs : CarrierSigns) (t : CarrierParameters) : FreeCoordinate → ℂ :=
  fun q => signedCircle (signs q) (t q)

def chartCarrier (signs : CarrierSigns) (t : CarrierParameters) : Mat6 :=
  reconstructedCarrier (freeE (chartEntries signs t)) (freeB (chartEntries signs t))
    (freeC (chartEntries signs t))

def InParameterCube (t : CarrierParameters) : Prop := ∀ q, -1 ≤ t q ∧ t q ≤ 1

/-- These filters retain the actual phase-Hadamard equations, both determinant
inequalities, and the fixed row/column gauge; chart points need not be physical. -/
def ChartPhysicalFilter (signs : CarrierSigns) (t : CarrierParameters) : Prop :=
  NormalizedGoodSideCarrier (chartCarrier signs t)

theorem normalized_sixteen_circle_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ signs : CarrierSigns, ∃ t : CarrierParameters,
      InParameterCube t ∧ H = chartCarrier signs t ∧ ChartPhysicalFilter signs t := by
  have hc (q : FreeCoordinate) := unit_circle_complete (freeEntry_unit hH.1 q)
  choose signs t hlo hhi he using hc
  have hf : chartEntries signs t = freeEntry H := by
    funext q
    exact (he q).symm
  have hmatrix : H = chartCarrier signs t := by
    rw [chartCarrier, hf, freeE_of_normalized hH, freeB_of_normalized hH,
      freeC_of_normalized hH]
    exact normalized_reconstructedCarrier hH
  exact ⟨signs, t, fun q => ⟨hlo q, hhi q⟩, hmatrix, hmatrix ▸ hH⟩

/-- Universal physical coverage, with every common ray and pair overlap transported. -/
theorem phaseHadamard_sixteen_parameter_cover {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, ∃ signs : CarrierSigns, ∃ t : CarrierParameters,
      InParameterCube t ∧ ChartPhysicalFilter signs t ∧
      normalizedSideCarrier H k = chartCarrier signs t ∧
      (∀ z, IsRawCommonRay H z →
        IsRawCommonRay (chartCarrier signs t) (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k, hk⟩ := phaseHadamard_normalized_good_side_cover hH
  obtain ⟨signs, t, ht, he, hf⟩ := normalized_sixteen_circle_cover hk
  refine ⟨k, signs, t, ht, hf, he, ?_, normalizedSideRay_rawOverlap hH k⟩
  intro z hz
  rw [← he]
  exact normalizedSideRay_commonRay hH k hz

theorem chart_circle_denominator_bound (t : CarrierParameters) (q : FreeCoordinate) :
    1 ≤ 1 + t q ^ 2 := denominator_at_least_one _

theorem physical_chart_gram_guard {signs : CarrierSigns} {t : CarrierParameters}
    (h : ChartPhysicalFilter signs t) :
    (54 / 5 : ℝ) ≤ (gram (freeE (chartEntries signs t))).det.re ∧
    (gram (freeE (chartEntries signs t))).det.im = 0 ∧
    (gram (freeE (chartEntries signs t))).det ≠ 0 := by
  have hb := blockCarrier_blocks (freeE (chartEntries signs t))
    (freeB (chartEntries signs t)) (freeC (chartEntries signs t))
    (forcedD (freeE (chartEntries signs t)) (freeB (chartEntries signs t))
      (freeC (chartEntries signs t)))
  have he : northwest (chartCarrier signs t) = freeE (chartEntries signs t) := hb.1
  have hg := (normalized_good_side_guards h).2.2
  change (54 / 5 : ℝ) ≤ (gram (northwest (chartCarrier signs t))).det.re ∧
    (gram (northwest (chartCarrier signs t))).det.im = 0 at hg
  rw [he] at hg
  have hn := normalized_gram_ne_zero h
  rw [he] at hn
  exact ⟨hg.1, hg.2, hn⟩

end
end Mub6.Classification.CompactCover

#print axioms Mub6.Classification.CompactCover.free_coordinate_count
#print axioms Mub6.Classification.CompactCover.carrier_sign_count
#print axioms Mub6.Classification.CompactCover.freeEntry_unit
#print axioms Mub6.Classification.CompactCover.freeE_of_normalized
#print axioms Mub6.Classification.CompactCover.freeB_of_normalized
#print axioms Mub6.Classification.CompactCover.freeC_of_normalized
#print axioms Mub6.Classification.CompactCover.normalized_sixteen_circle_cover
#print axioms Mub6.Classification.CompactCover.phaseHadamard_sixteen_parameter_cover
#print axioms Mub6.Classification.CompactCover.chart_circle_denominator_bound
#print axioms Mub6.Classification.CompactCover.physical_chart_gram_guard
