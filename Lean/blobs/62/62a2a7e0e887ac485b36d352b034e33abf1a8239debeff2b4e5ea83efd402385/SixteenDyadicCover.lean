import CompactChartFilters

/-! A finite rational subdivision at every requested depth; no cells excluded. -/
namespace Mub6.Classification.CompactCover
open Mub6.Numerical
noncomputable section

abbrev ParameterInterval := ℚ × ℚ

def ParameterIntervalContains (q : ParameterInterval) (x : ℝ) : Prop :=
  (q.1 : ℝ) ≤ x ∧ x ≤ (q.2 : ℝ)

def parameterDyadicGrid : ℕ → ℚ → ℚ → List ParameterInterval
  | 0, lo, hi => [(lo, hi)]
  | n + 1, lo, hi =>
      parameterDyadicGrid n lo ((lo + hi) / 2) ++
        parameterDyadicGrid n ((lo + hi) / 2) hi

theorem parameterDyadicGrid_complete (n : ℕ) (lo hi : ℚ) (x : ℝ)
    (hx : (lo : ℝ) ≤ x ∧ x ≤ (hi : ℝ)) :
    ∃ q ∈ parameterDyadicGrid n lo hi, ParameterIntervalContains q x := by
  induction n generalizing lo hi with
  | zero => exact ⟨(lo, hi), by simp [parameterDyadicGrid], hx⟩
  | succ n ih =>
    by_cases hm : x ≤ (((lo + hi) / 2 : ℚ) : ℝ)
    · obtain ⟨q, hq, hcontains⟩ := ih lo ((lo + hi) / 2) ⟨hx.1, hm⟩
      exact ⟨q, by simp [parameterDyadicGrid, hq], hcontains⟩
    · obtain ⟨q, hq, hcontains⟩ := ih ((lo + hi) / 2) hi
        ⟨le_of_lt (lt_of_not_ge hm), hx.2⟩
      exact ⟨q, by simp [parameterDyadicGrid, hq], hcontains⟩

theorem parameterDyadicGrid_length (n : ℕ) (lo hi : ℚ) :
    (parameterDyadicGrid n lo hi).length = 2 ^ n := by
  induction n generalizing lo hi with
  | zero => simp [parameterDyadicGrid]
  | succ n ih => simp [parameterDyadicGrid, ih, pow_succ, Nat.mul_two]

def parameterScalarCells (depth : ℕ) : Finset ParameterInterval :=
  (parameterDyadicGrid depth (-1) 1).toFinset

abbrev ParameterCell (depth : ℕ) :=
  FreeCoordinate → {q : ParameterInterval // q ∈ parameterScalarCells depth}

def ParameterCellContains (depth : ℕ) (cell : ParameterCell depth)
    (t : CarrierParameters) : Prop :=
  ∀ q, ParameterIntervalContains (cell q).val (t q)

instance finite_parameter_cells (depth : ℕ) : Fintype (ParameterCell depth) := inferInstance

theorem parameter_cube_finite_dyadic_cover (depth : ℕ) {t : CarrierParameters}
    (ht : InParameterCube t) :
    ∃ cell : ParameterCell depth, ParameterCellContains depth cell t := by
  have each (j : FreeCoordinate) : ∃ q,
      q ∈ parameterScalarCells depth ∧ ParameterIntervalContains q (t j) := by
    obtain ⟨q, hmem, hcontains⟩ :=
      parameterDyadicGrid_complete depth (-1) 1 (t j) (by simpa using ht j)
    exact ⟨q, by simpa [parameterScalarCells] using hmem, hcontains⟩
  classical
  choose q hq hcontains using each
  exact ⟨fun j => ⟨q j, hq j⟩, hcontains⟩

/-- Every physical carrier has an exact member of a finite rational chart-cell cover,
with all physical equations and all transported common rays retained. -/
theorem phaseHadamard_finite_dyadic_cover (depth : ℕ) {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, ∃ signs : CarrierSigns, ∃ cell : ParameterCell depth,
    ∃ t : CarrierParameters,
      InParameterCube t ∧ ParameterCellContains depth cell t ∧
      ExplicitPhysicalFilter signs t ∧ normalizedSideCarrier H k = chartCarrier signs t ∧
      (∀ z, IsRawCommonRay H z →
        IsRawCommonRay (chartCarrier signs t) (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k, signs, t, ht, hf, he, hr, hp⟩ := phaseHadamard_sixteen_parameter_cover hH
  obtain ⟨cell, hc⟩ := parameter_cube_finite_dyadic_cover depth ht
  exact ⟨k, signs, cell, t, ht, hc, (chart_physical_filter_iff signs t).mp hf, he, hr, hp⟩

end
end Mub6.Classification.CompactCover

#print axioms Mub6.Classification.CompactCover.parameterDyadicGrid_complete
#print axioms Mub6.Classification.CompactCover.parameterDyadicGrid_length
#print axioms Mub6.Classification.CompactCover.parameter_cube_finite_dyadic_cover
#print axioms Mub6.Classification.CompactCover.phaseHadamard_finite_dyadic_cover
