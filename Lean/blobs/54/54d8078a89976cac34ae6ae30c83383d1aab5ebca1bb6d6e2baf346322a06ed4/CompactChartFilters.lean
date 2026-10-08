import SixteenCircleCover
import Mathlib.Topology.Order.Compact

/-! Explicit physical filters and the compact parameter cube. -/
namespace Mub6.Classification.CompactCover
open scoped BigOperators
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor Mub6.Numerical.CircleCharts
noncomputable section

theorem parameter_cube_isCompact : IsCompact {t : CarrierParameters | InParameterCube t} := by
  exact isCompact_pi_infinite (fun _ => isCompact_Icc)

theorem tagged_chart_count : Fintype.card (Fin 20 × CarrierSigns) = 1310720 := by
  rw [Fintype.card_prod, Fintype.card_fin, carrier_sign_count]

theorem freeE_unit (f : FreeCoordinate → ℂ) (hf : ∀ q, Complex.normSq (f q) = 1)
    (i j : Fin 3) : Complex.normSq (freeE f i j) = 1 := by
  refine Fin.cases ?_ (fun a => ?_) i
  · norm_num [freeE]
  · refine Fin.cases ?_ (fun b => ?_) j
    · norm_num [freeE]
    · exact hf _

theorem freeB_unit (f : FreeCoordinate → ℂ) (hf : ∀ q, Complex.normSq (f q) = 1)
    (i j : Fin 3) : Complex.normSq (freeB f i j) = 1 := by
  refine Fin.cases ?_ (fun a => ?_) i
  · norm_num [freeB]
  · exact hf _

theorem freeC_unit (f : FreeCoordinate → ℂ) (hf : ∀ q, Complex.normSq (f q) = 1)
    (i j : Fin 3) : Complex.normSq (freeC f i j) = 1 := by
  refine Fin.cases ?_ (fun b => ?_) j
  · norm_num [freeC]
  · exact hf _

theorem reconstructed_first_row (f : FreeCoordinate → ℂ) (k : Fin 6) :
    reconstructedCarrier (freeE f) (freeB f) (freeC f) 0 k = 1 := by
  change reconstructedCarrier (freeE f) (freeB f) (freeC f) (front 0) k = 1
  refine Fin.addCases (m := 3) (n := 3) (fun a => ?_) (fun a => ?_) k <;>
    simp only [reconstructedCarrier, blockCarrier, front, Fin.addCases_left,
      Fin.addCases_right, freeE, freeB, Fin.cases_zero]

theorem reconstructed_first_column (f : FreeCoordinate → ℂ) (r : Fin 6) :
    reconstructedCarrier (freeE f) (freeB f) (freeC f) r 0 = 1 := by
  change reconstructedCarrier (freeE f) (freeB f) (freeC f) r (front 0) = 1
  refine Fin.addCases (m := 3) (n := 3) (fun a => ?_) (fun a => ?_) r
  · refine Fin.cases ?_ (fun b => ?_) a <;>
      simp only [reconstructedCarrier, blockCarrier, front, Fin.addCases_left,
        freeE, Fin.cases_zero, Fin.cases_succ]
  · simp only [reconstructedCarrier, blockCarrier, front, Fin.addCases_left,
      Fin.addCases_right, freeC, Fin.cases_zero]

/-- All nonconstant entries of E,B,C are circle phases. Only D needs a unit-entry filter. -/
theorem chartCarrier_unit_iff (signs : CarrierSigns) (t : CarrierParameters) :
    (∀ r k, Complex.normSq (chartCarrier signs t r k) = 1) ↔
      (∀ i j, Complex.normSq (forcedD (freeE (chartEntries signs t))
        (freeB (chartEntries signs t)) (freeC (chartEntries signs t)) i j) = 1) := by
  constructor
  · intro h i j
    exact h (back i) (back j)
  · intro hd r k
    have hf (q : FreeCoordinate) : Complex.normSq (chartEntries signs t q) = 1 :=
      signedCircle_normSq _ _
    refine Fin.addCases (m := 3) (n := 3) (fun i => ?_) (fun i => ?_) r <;>
      refine Fin.addCases (m := 3) (n := 3) (fun j => ?_) (fun j => ?_) k
    · exact freeE_unit _ hf _ _
    · exact freeB_unit _ hf _ _
    · exact freeC_unit _ hf _ _
    · exact hd _ _

/-- A direct matrix-equation filter: nine lower-block unit equations, all column
Gram equations, and the two side determinant guards. No solution is deleted. -/
def ExplicitPhysicalFilter (signs : CarrierSigns) (t : CarrierParameters) : Prop :=
  (∀ i j, Complex.normSq (forcedD (freeE (chartEntries signs t))
    (freeB (chartEntries signs t)) (freeC (chartEntries signs t)) i j) = 1) ∧
  (chartCarrier signs t)ᴴ * chartCarrier signs t = (6 : ℂ) • (1 : Mat6) ∧
  (54 / 5 : ℝ) ≤ Complex.normSq (freeB (chartEntries signs t)).det ∧
  (54 / 5 : ℝ) ≤ Complex.normSq (freeC (chartEntries signs t)).det

theorem chart_physical_filter_iff (signs : CarrierSigns) (t : CarrierParameters) :
    ChartPhysicalFilter signs t ↔ ExplicitPhysicalFilter signs t := by
  have hb := blockCarrier_blocks (freeE (chartEntries signs t))
    (freeB (chartEntries signs t)) (freeC (chartEntries signs t))
    (forcedD (freeE (chartEntries signs t)) (freeB (chartEntries signs t))
      (freeC (chartEntries signs t)))
  change northwest (chartCarrier signs t) = _ ∧ northeast (chartCarrier signs t) = _ ∧
    southwest (chartCarrier signs t) = _ ∧ southeast (chartCarrier signs t) = _ at hb
  constructor
  · intro h
    refine ⟨(chartCarrier_unit_iff signs t).mp h.1.1, h.1.2, ?_, ?_⟩
    · rw [← hb.2.1]
      exact h.2.2.2.1
    · rw [← hb.2.2.1]
      exact h.2.2.2.2
  · intro h
    refine ⟨⟨(chartCarrier_unit_iff signs t).mpr h.1, h.2.1⟩,
      reconstructed_first_row _, reconstructed_first_column _, ?_, ?_⟩
    · rw [hb.2.1]
      exact h.2.2.1
    · rw [hb.2.2.1]
      exact h.2.2.2

/-- Explicit guards include circle denominators and the positive real Gram divisor. -/
theorem explicit_filter_denominators {signs : CarrierSigns} {t : CarrierParameters}
    (h : ExplicitPhysicalFilter signs t) :
    (∀ q, 1 ≤ 1 + t q ^ 2) ∧
    (54 / 5 : ℝ) ≤ (gram (freeE (chartEntries signs t))).det.re ∧
    (gram (freeE (chartEntries signs t))).det.im = 0 ∧
    (gram (freeE (chartEntries signs t))).det ≠ 0 :=
  ⟨chart_circle_denominator_bound t,
    physical_chart_gram_guard ((chart_physical_filter_iff signs t).mpr h)⟩

end
end Mub6.Classification.CompactCover

#print axioms Mub6.Classification.CompactCover.parameter_cube_isCompact
#print axioms Mub6.Classification.CompactCover.tagged_chart_count
#print axioms Mub6.Classification.CompactCover.freeE_unit
#print axioms Mub6.Classification.CompactCover.freeB_unit
#print axioms Mub6.Classification.CompactCover.freeC_unit
#print axioms Mub6.Classification.CompactCover.reconstructed_first_row
#print axioms Mub6.Classification.CompactCover.reconstructed_first_column
#print axioms Mub6.Classification.CompactCover.chartCarrier_unit_iff
#print axioms Mub6.Classification.CompactCover.chart_physical_filter_iff
#print axioms Mub6.Classification.CompactCover.explicit_filter_denominators
