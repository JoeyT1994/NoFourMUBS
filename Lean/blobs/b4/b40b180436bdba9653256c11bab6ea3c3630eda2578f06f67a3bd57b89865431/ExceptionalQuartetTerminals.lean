import TaoQuartetTerminal
import D0CoverageConsumer
import CircleD0SymmetryClosing
set_option autoImplicit false

/-! Closed physical endpoints for the fixed H×/D0 class and both Tao root
branches. No assumption about their nonextension or their ray covers remains.
No assertion is made about generic Karlsson matrices or all Hadamards. -/
namespace Mub6.ExceptionalTerminals
open Mub6 Numerical Numerical.CircleFullPrototype Worker12 D0Binding

theorem d0_standard_pair_exclusion : PublishedD0StandardPairExclusion :=
  d0_standard_pair_exclusion_of_cover
    Numerical.CircleFullD0.D0SymmetryClosing.complete_circle_cover

theorem d0_quartet_exclusion : D0QuartetExclusion :=
  d0QuartetExclusion_of_published d0_standard_pair_exclusion

theorem hTimes_quartet_exclusion :
    ¬ OccursAsQuartetEdge (physicalNormalize hTimes) :=
  quartet_exclusion_of_monomialEquivalent physical_hTimes_monomial_publishedD0
    (quartetExclusion_of_standardPair d0_standard_pair_exclusion)

theorem hTimes_class_exclusion {H : BasisMatrix}
    (h : MonomialEquivalent H hTimes) :
    ¬ OccursAsQuartetEdge (physicalNormalize H) :=
  quartet_exclusion_of_monomialEquivalent
    (physicalNormalize_monomialEquivalent h) hTimes_quartet_exclusion

theorem tao_class_exclusion {H : BasisMatrix} {ω : ℂ}
    (hω : PrimitiveCubicPhase ω) (h : MonomialEquivalent H (taoPhase ω)) :
    ¬ OccursAsQuartetEdge (physicalNormalize H) :=
  quartet_exclusion_of_monomialEquivalent
    (physicalNormalize_monomialEquivalent h) (tao_quartet_exclusion ω hω)

theorem hTimes_transpose_exclusion :
    ¬ OccursAsQuartetEdge (physicalNormalize (transposeEdge hTimes)) :=
  Eq.mpr (congrArg (fun H : BasisMatrix => ¬ OccursAsQuartetEdge H)
    (physicalNormalize_transpose hTimes))
    (quartet_exclusion_transpose hTimes_quartet_exclusion)

theorem hTimes_conjugate_exclusion :
    ¬ OccursAsQuartetEdge (physicalNormalize (conjugateBasis hTimes)) :=
  Eq.mp (congrArg (fun H : BasisMatrix => ¬ OccursAsQuartetEdge H)
    (physicalNormalize_conjugate hTimes))
    (quartet_exclusion_conjugate hTimes_quartet_exclusion)

theorem hTimes_adjoint_exclusion :
    ¬ OccursAsQuartetEdge (physicalNormalize (adjointEdge hTimes)) := by
  change ¬ OccursAsQuartetEdge
    (physicalNormalize (transposeEdge (conjugateBasis hTimes)))
  rw [physicalNormalize_transpose]
  exact quartet_exclusion_transpose hTimes_conjugate_exclusion

theorem exceptional_boundary_targets : TaoQuartetExclusion ∧ D0QuartetExclusion :=
  ⟨tao_quartet_exclusion, d0_quartet_exclusion⟩

/-- Exact equivalence classes only: this predicate excludes no surrounding
parameter box and assumes no global Hadamard classification. -/
def ExceptionalPhase (H : BasisMatrix) : Prop :=
  MonomialEquivalent H hTimes ∨
    ∃ ω : ℂ, PrimitiveCubicPhase ω ∧ MonomialEquivalent H (taoPhase ω)

theorem exceptional_phase_exclusion {H : BasisMatrix} (h : ExceptionalPhase H) :
    ¬ OccursAsQuartetEdge (physicalNormalize H) := by
  rcases h with hx | ⟨ω, hω, ht⟩
  · exact hTimes_class_exclusion hx
  · exact tao_class_exclusion hω ht

theorem exceptional_standard_pair_exclusion {H : BasisMatrix} (h : ExceptionalPhase H) :
    ¬ ExtendsStandardPair (physicalNormalize H) := by
  intro hext
  exact exceptional_phase_exclusion h
    ((occursAsQuartetEdge_iff_extendsStandardPair _).2 hext)

/-- Direct classification consumer: every actual quartet edge, rescaled to
phase convention, avoids both exceptional classes. All four bases are retained. -/
theorem actual_edge_not_exceptional {B : Fin 4 → BasisMatrix}
    (hB : IsMUBQuartet B) (a b : Fin 4) (hab : a ≠ b) :
    ¬ ExceptionalPhase (phaseScale (Real.sqrt 6) (overlap (B a) (B b))) := by
  intro he
  have hn := exceptional_phase_exclusion he
  rw [physicalNormalize_phaseScale_sqrtSix] at hn
  exact hn ⟨B, hB, a, b, hab, rfl⟩

-- Exact interface assignments, including a literal actual-quartet statement.
example : PublishedD0StandardPairExclusion := @d0_standard_pair_exclusion
example : TaoQuartetExclusion ∧ D0QuartetExclusion := @exceptional_boundary_targets
example : ¬ ∃ B : Fin 4 → BasisMatrix, IsMUBQuartet B ∧
    ∃ a b : Fin 4, a ≠ b ∧ overlap (B a) (B b) = physicalNormalize hTimes :=
  @hTimes_quartet_exclusion

#print axioms d0_standard_pair_exclusion
#print axioms d0_quartet_exclusion
#print axioms hTimes_quartet_exclusion
#print axioms hTimes_class_exclusion
#print axioms tao_class_exclusion
#print axioms hTimes_transpose_exclusion
#print axioms hTimes_conjugate_exclusion
#print axioms hTimes_adjoint_exclusion
#print axioms exceptional_boundary_targets
#print axioms exceptional_phase_exclusion
#print axioms exceptional_standard_pair_exclusion
#print axioms actual_edge_not_exceptional
end Mub6.ExceptionalTerminals
