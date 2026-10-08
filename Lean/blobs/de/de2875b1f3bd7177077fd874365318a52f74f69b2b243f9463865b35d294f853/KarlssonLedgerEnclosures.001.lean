import KarlssonLedgerConsumers
import KarlssonSerializedLedger
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLedger
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
open Mub6.Classification.KarlssonLifted Mub6.Classification.KarlssonConditioning
noncomputable section

def Encloses (j : Job) (E : CarrierRegion) : Prop :=
  Live j → ∃ K : Mat6, OccursAsQuartetEdge (normalized K) ∧
    CarrierBox E (ClassificationCover.toNumerical K)

theorem raw_output_encloses (c : RawInput) (hr : sqrt3Valid c.sqrt3) (E : CarrierRegion)
    (hout : ∀ i j, RectangleIncludes (conditionedOutput c i j) (E i j)) :
    Encloses (rawJob c) E := by
  rintro ⟨x,hx,hg,hocc⟩
  obtain ⟨K,he,hbox⟩ := conditioned_export_sound c hr E hout hx hg.1 hg.2.1 hg.2.2
    (normalized_occurs_hadamard hocc)
  exact ⟨K,normalized_equivalent_occurs hocc he,hbox⟩

theorem seam_output_encloses (c : SeamInput) (hr : sqrt3Valid c.sqrt3) (E : CarrierRegion)
    (hout : ∀ i j, RectangleIncludes (c.output i j) (E i j)) :
    Encloses (seamJob c) E := by
  rintro ⟨x,hx,_,hocc⟩
  have hb := seam_compiler_sound c hr hx (normalized_occurs_hadamard hocc)
  exact ⟨_,hocc,fun i j => rectangle_includes_sound (hout i j) (hb i j)⟩

theorem lifted_output_encloses (c : LiftedInput) (hr : sqrt3Valid c.sqrt3) (E : CarrierRegion)
    (hout : ∀ i j, RectangleIncludes (c.output i j) (E i j)) :
    Encloses (liftedJob c) E := by
  rintro ⟨x,hx,hg,hocc⟩
  have hp : ∀ i : Fin 4, Mem (c.phases i) (![x 2,x 3,x 4,x 5] i) := by
    intro i
    fin_cases i
    · exact hx 2
    · exact hx 3
    · exact hx 4
    · exact hx 5
  have hb := lifted_compiler_sound c hr (hx 0) (hx 1) hp hg.1 hg.2 (normalized_occurs_hadamard hocc)
  exact ⟨_,hocc,fun i j => rectangle_includes_sound (hout i j) (hb i j)⟩

theorem enclosure_certificate_closes {j : Job} {E : CarrierRegion}
    (hencl : Encloses j E) (hcert : CarrierExcluded E) : ¬ Live j := by
  intro h
  obtain ⟨K,hK,hbox⟩ := hencl h
  exact hcert K (normalized_occurs_hadamard hK) hbox hK

/-- The exported carrier list must bind every unresolved leaf. Duplicate
carriers are harmless, but a missing leaf is an explicit proof failure. -/
theorem exported_ledger_cover (forest : ForestOn roots) (carriers : List CarrierRegion)
    (bound : ∀ j ∈ forest.frontier, ∃ E ∈ carriers, Encloses j E)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6, OccursAsQuartetEdge (normalized K) ∧
      ∃ E ∈ carriers, CarrierBox E (ClassificationCover.toNumerical K) := by
  obtain ⟨j,hj,hL⟩ := serialized_forest_cover forest hH h₂
  obtain ⟨E,hE,hbound⟩ := bound j hj
  obtain ⟨K,hK,hbox⟩ := hbound hL
  exact ⟨K,hK,E,hE,hbox⟩

#print axioms raw_output_encloses
#print axioms seam_output_encloses
#print axioms lifted_output_encloses
#print axioms enclosure_certificate_closes
#print axioms exported_ledger_cover
end
end Mub6.Classification.KarlssonLedger

