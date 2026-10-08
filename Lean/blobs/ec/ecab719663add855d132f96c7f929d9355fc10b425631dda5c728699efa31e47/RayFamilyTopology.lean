import RayCompactness

/-! Closed incidence graphs for a shared arbitrary continuous carrier family. -/
namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
open scoped BigOperators
noncomputable section

theorem continuous_family_residual {P : Type*} [TopologicalSpace P]
    (H : P → BasisMatrix) (hH : Continuous H) (s : SignChart) (k : Fin 5) :
    Continuous (fun x : P × Parameters => residual (H x.1) s x.2 k) := by
  apply Continuous.sub _ continuous_const
  apply Complex.continuous_normSq.comp
  unfold carrierAmplitude
  apply continuous_finset_sum
  intro r _
  exact (((continuous_apply k.succ).comp
    ((continuous_apply r).comp (hH.comp continuous_fst))).star).mul
    ((continuous_apply r).comp ((continuous_chartRay s).comp continuous_snd))

theorem isClosed_family_chart_graph {P : Type*} [TopologicalSpace P]
    (H : P → BasisMatrix) (hH : Continuous H) (s : SignChart) :
    IsClosed {x : P × Parameters | ChartIncidence (H x.1) s x.2} := by
  have he : {x : P × Parameters | ChartIncidence (H x.1) s x.2} =
      (Prod.snd ⁻¹' {t : Parameters | InCube t}) ∩
      ⋂ k, {x | residual (H x.1) s x.2 k = 0} := by
    ext x
    simp [ChartIncidence]
  rw [he]
  exact (isCompact_cube.isClosed.preimage continuous_snd).inter
    (isClosed_iInter fun k =>
      isClosed_eq (continuous_family_residual H hH s k) continuous_const)

/-- Compact carrier parameter sets give compact total chart incidences;
parameters and ray coordinates remain coupled throughout. -/
theorem isCompact_family_chart_graph {P : Type*} [TopologicalSpace P]
    (H : P → BasisMatrix) (hH : Continuous H) (s : SignChart)
    {K : Set P} (hK : IsCompact K) :
    IsCompact {x : P × Parameters | x.1 ∈ K ∧ ChartIncidence (H x.1) s x.2} := by
  have he : {x : P × Parameters | x.1 ∈ K ∧ ChartIncidence (H x.1) s x.2} =
      (K ×ˢ {t : Parameters | InCube t}) ∩
        {x | ChartIncidence (H x.1) s x.2} := by
    ext x
    simp only [Set.mem_setOf_eq, Set.mem_inter_iff, Set.mem_prod]
    constructor
    · intro h
      exact ⟨⟨h.1, h.2.1⟩, h.2⟩
    · intro h
      exact ⟨h.1.1, h.2⟩
  rw [he]
  exact (hK.prod isCompact_cube).inter_right (isClosed_family_chart_graph H hH s)

#print axioms continuous_family_residual
#print axioms isClosed_family_chart_graph
#print axioms isCompact_family_chart_graph
end
end Mub6.Classification.Rays
