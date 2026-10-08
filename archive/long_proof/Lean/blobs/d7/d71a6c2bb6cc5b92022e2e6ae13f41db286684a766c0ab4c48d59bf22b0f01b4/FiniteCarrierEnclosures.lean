import SixteenCarrierEnclosure
import SixteenDyadicCover

/-! The finite dyadic carrier cover, connected to explicit rational enclosures. -/
namespace Mub6.Classification.CarrierIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CompactCover
noncomputable section

def cellBox {depth : ℕ} (cell : ParameterCell depth) : ParameterBox :=
  fun q => ⟨(cell q).val.1, (cell q).val.2⟩

theorem cellBox_contains {depth : ℕ} {cell : ParameterCell depth}
    {t : CarrierParameters} (ht : ParameterCellContains depth cell t) :
    ∀ q, Mem (cellBox cell q) (t q) := ht

def cellEnclosure {depth : ℕ} (signs : CarrierSigns) (cell : ParameterCell depth) :
    CarrierRegion := chartEnclosure signs (cellBox cell)

/-- Every physical Hadamard belongs, after an explicitly allowed normalization,
to a member of the finite rational enclosure family at every depth. Common rays
and their complex pair overlaps survive the same normalization. -/
theorem phaseHadamard_in_finite_enclosures (depth : ℕ) {H : BasisMatrix}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20, ∃ signs : CarrierSigns, ∃ cell : ParameterCell depth,
      CarrierBox (cellEnclosure signs cell) (normalizedSideCarrier H k) ∧
      (∀ z, IsRawCommonRay H z →
        IsRawCommonRay (normalizedSideCarrier H k) (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k,s,cell,t,_,ht,hp,he,_,ho⟩ := phaseHadamard_finite_dyadic_cover depth hH
  refine ⟨k,s,cell,?_,fun z hz => normalizedSideRay_commonRay hH k hz,ho⟩
  rw [he]
  exact chartEnclosure_sound s (cellBox cell) t (cellBox_contains ht)
    ((chart_physical_filter_iff s t).mpr hp)

#print axioms cellBox_contains
#print axioms phaseHadamard_in_finite_enclosures
end
end Mub6.Classification.CarrierIntervals
