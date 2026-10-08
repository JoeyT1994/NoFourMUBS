import RayFamilyTopology
import ThirdBasisIncidence

/-! A closed carrier-support locus, without any decision of nonemptiness. -/
namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
noncomputable section

abbrev BasisParameters := Fin 6 → Parameters
abbrev BasisSigns := Fin 6 → SignChart

theorem isCompact_basis_cube : IsCompact {t : BasisParameters | ∀ j, InCube (t j)} := by
  exact isCompact_pi_infinite fun _ => isCompact_cube

theorem continuous_basis_overlap (s : BasisSigns) (i j : Fin 6) :
    Continuous (fun t : BasisParameters =>
      rawOverlap (chartRay (s i) (t i)) (chartRay (s j) (t j))) := by
  unfold rawOverlap
  apply continuous_finset_sum
  intro r _
  exact (((continuous_apply r).comp
    ((continuous_chartRay (s i)).comp (continuous_apply i))).star).mul
    ((continuous_apply r).comp ((continuous_chartRay (s j)).comp (continuous_apply j)))

theorem isClosed_family_basis_graph {P : Type*} [TopologicalSpace P]
    (H : P → BasisMatrix) (hH : Continuous H) (s : BasisSigns) :
    IsClosed {x : P × BasisParameters | BasisIncidence (H x.1) s x.2} := by
  have hc : ∀ j, IsClosed {x : P × BasisParameters |
      ChartIncidence (H x.1) (s j) (x.2 j)} := by
    intro j
    exact (isClosed_family_chart_graph H hH (s j)).preimage
      (continuous_fst.prod_mk ((continuous_apply j).comp continuous_snd))
  have ho : ∀ i j, IsClosed {x : P × BasisParameters |
      i≠j → rawOverlap (chartRay (s i) (x.2 i)) (chartRay (s j) (x.2 j))=0} := by
    intro i j
    by_cases hij : i=j
    · simp only [hij,ne_eq,not_true_eq_false,false_implies,Set.setOf_true]
      exact isClosed_univ
    · simp only [hij,false_implies,not_false_eq_true,true_implies]
      exact isClosed_eq ((continuous_basis_overlap s i j).comp continuous_snd) continuous_const
  have he : {x : P × BasisParameters | BasisIncidence (H x.1) s x.2} =
      (⋂ j, {x | ChartIncidence (H x.1) (s j) (x.2 j)}) ∩
      ⋂ i, ⋂ j, {x | i≠j →
        rawOverlap (chartRay (s i) (x.2 i)) (chartRay (s j) (x.2 j))=0} := by
    ext x
    simp [BasisIncidence]
  rw [he]
  exact (isClosed_iInter hc).inter (isClosed_iInter fun i => isClosed_iInter (ho i))

theorem isCompact_family_basis_graph {P : Type*} [TopologicalSpace P]
    (H : P → BasisMatrix) (hH : Continuous H) (s : BasisSigns)
    {K : Set P} (hK : IsCompact K) :
    IsCompact {x : P × BasisParameters | x.1∈K ∧ BasisIncidence (H x.1) s x.2} := by
  have he : {x : P × BasisParameters | x.1∈K ∧ BasisIncidence (H x.1) s x.2} =
      (K ×ˢ {t : BasisParameters | ∀ j, InCube (t j)}) ∩
      {x | BasisIncidence (H x.1) s x.2} := by
    ext x
    simp only [Set.mem_setOf_eq,Set.mem_inter_iff,Set.mem_prod]
    constructor
    · intro h
      exact ⟨⟨h.1,fun j => (h.2.1 j).1⟩,h.2⟩
    · intro h
      exact ⟨h.1.1,h.2⟩
  rw [he]
  exact (hK.prod isCompact_basis_cube).inter_right (isClosed_family_basis_graph H hH s)

def SupportsThirdBasis (H : BasisMatrix) : Prop := ∃ B, RawThirdBasis H B

theorem supports_third_basis_chart_iff {H : BasisMatrix} (hH : PhaseHadamard H) :
    SupportsThirdBasis H ↔ ∃ s t, BasisIncidence H s t := by
  constructor
  · rintro ⟨B,hB⟩
    obtain ⟨s,t,ht,_⟩ := (third_basis_chart_iff hH B).mp hB
    exact ⟨s,t,ht⟩
  · rintro ⟨s,t,ht⟩
    exact ⟨chartBasis s t,(third_basis_chart_iff hH _).mpr ⟨s,t,ht,rfl⟩⟩

/-- All six rays share the same carrier parameter. Compact projection keeps
every limiting support carrier, including singular and chart-boundary cases. -/
theorem isCompact_third_basis_support {P : Type*} [TopologicalSpace P]
    (H : P → BasisMatrix) (hH : Continuous H) (physical : ∀ p, PhaseHadamard (H p))
    {K : Set P} (hK : IsCompact K) :
    IsCompact {p | p∈K ∧ SupportsThirdBasis (H p)} := by
  have he : {p | p∈K ∧ SupportsThirdBasis (H p)} =
      ⋃ s : BasisSigns, Prod.fst ''
        {x : P × BasisParameters | x.1∈K ∧ BasisIncidence (H x.1) s x.2} := by
    ext p
    simp only [Set.mem_setOf_eq,Set.mem_iUnion,Set.mem_image]
    constructor
    · rintro ⟨hp,hb⟩
      obtain ⟨s,t,ht⟩ := (supports_third_basis_chart_iff (physical p)).mp hb
      exact ⟨s,(p,t),⟨hp,ht⟩,rfl⟩
    · rintro ⟨s,⟨q,t⟩,⟨hq,ht⟩,hp⟩
      dsimp only at hp
      subst q
      exact ⟨hq,(supports_third_basis_chart_iff (physical p)).mpr ⟨s,t,ht⟩⟩
  rw [he]
  exact isCompact_iUnion fun s => (isCompact_family_basis_graph H hH s hK).image continuous_fst

theorem isClosed_third_basis_support {P : Type*} [TopologicalSpace P] [T2Space P]
    (H : P → BasisMatrix) (hH : Continuous H) (physical : ∀ p, PhaseHadamard (H p))
    {K : Set P} (hK : IsCompact K) :
    IsClosed {p | p∈K ∧ SupportsThirdBasis (H p)} :=
  (isCompact_third_basis_support H hH physical hK).isClosed

#print axioms isCompact_basis_cube
#print axioms continuous_basis_overlap
#print axioms isClosed_family_basis_graph
#print axioms isCompact_family_basis_graph
#print axioms supports_third_basis_chart_iff
#print axioms isCompact_third_basis_support
#print axioms isClosed_third_basis_support

end
end Mub6.Classification.Rays
