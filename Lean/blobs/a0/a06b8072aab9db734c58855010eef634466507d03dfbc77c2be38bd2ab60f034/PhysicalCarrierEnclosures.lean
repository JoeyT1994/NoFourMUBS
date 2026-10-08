import FiniteCarrierEnclosures

/-! Physical unit-entry bounds sharpen the rational outer enclosure. -/
namespace Mub6.Classification.CarrierIntervals
open Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CompactCover
noncomputable section

def unitClip (q : RationalRectangle) : RationalRectangle :=
  ⟨max q.reLo (-1), min q.reHi 1, max q.imLo (-1), min q.imHi 1⟩

theorem unit_component_bounds {z : ℂ} (hz : Complex.normSq z=1) :
    (-1 : ℝ) ≤ z.re ∧ z.re ≤ 1 ∧ (-1 : ℝ) ≤ z.im ∧ z.im ≤ 1 := by
  rw [Complex.normSq_apply] at hz
  have hr := sq_nonneg z.re
  have hi := sq_nonneg z.im
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor <;> nlinarith

theorem mem_unitClip {q : RationalRectangle} {z : ℂ}
    (hq : MemRectangle q z) (hz : Complex.normSq z=1) : MemRectangle (unitClip q) z := by
  obtain ⟨hrlo,hrhi,hilo,hihi⟩ := unit_component_bounds hz
  simp only [MemRectangle,unitClip,Rat.cast_max,Rat.cast_min,Rat.cast_neg,Rat.cast_one]
  exact ⟨max_le hq.1 hrlo,le_min hq.2.1 hrhi,
    max_le hq.2.2.1 hilo,le_min hq.2.2.2 hihi⟩

def physicalChartEnclosure (signs : CarrierSigns) (box : ParameterBox) : CarrierRegion :=
  fun i j => unitClip (chartEnclosure signs box i j)

theorem physicalChartEnclosure_sound (signs : CarrierSigns) (box : ParameterBox)
    (t : CarrierParameters) (ht : ∀ q, Mem (box q) (t q))
    (hp : ChartPhysicalFilter signs t) :
    CarrierBox (physicalChartEnclosure signs box) (chartCarrier signs t) := by
  intro i j
  exact mem_unitClip (chartEnclosure_sound signs box t ht hp i j) (hp.1.1 i j)

def physicalCellEnclosure {depth : ℕ} (signs : CarrierSigns) (cell : ParameterCell depth) :
    CarrierRegion := physicalChartEnclosure signs (cellBox cell)

theorem phaseHadamard_in_finite_physical_enclosures (depth : ℕ) {H : BasisMatrix}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20, ∃ signs : CarrierSigns, ∃ cell : ParameterCell depth,
      CarrierBox (physicalCellEnclosure signs cell) (normalizedSideCarrier H k) ∧
      (∀ z, IsRawCommonRay H z →
        IsRawCommonRay (normalizedSideCarrier H k) (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k,s,cell,t,_,ht,hp,he,_,ho⟩ := phaseHadamard_finite_dyadic_cover depth hH
  refine ⟨k,s,cell,?_,fun z hz => normalizedSideRay_commonRay hH k hz,ho⟩
  rw [he]
  exact physicalChartEnclosure_sound s (cellBox cell) t (cellBox_contains ht)
    ((chart_physical_filter_iff s t).mpr hp)

#print axioms unit_component_bounds
#print axioms mem_unitClip
#print axioms physicalChartEnclosure_sound
#print axioms phaseHadamard_in_finite_physical_enclosures
end
end Mub6.Classification.CarrierIntervals
