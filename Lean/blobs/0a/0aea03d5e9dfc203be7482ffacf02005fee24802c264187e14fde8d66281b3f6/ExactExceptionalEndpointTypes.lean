import ExceptionalQuartetTerminals
import ExceptionalControls
set_option autoImplicit false
namespace Mub6.ExceptionalTerminals.EndpointAudit
open Mub6 Worker12 D0Binding

example : ∀ ω : ℂ, PrimitiveCubicPhase ω →
    ¬ ∃ B : Fin 4 → BasisMatrix, IsMUBQuartet B ∧
      ∃ a b : Fin 4, a ≠ b ∧ overlap (B a) (B b) = physicalNormalize (taoPhase ω) :=
  @tao_quartet_exclusion

example : ¬ ∃ B : Fin 4 → BasisMatrix, IsMUBQuartet B ∧
    ∃ a b : Fin 4, a ≠ b ∧ overlap (B a) (B b) = physicalNormalize hTimes :=
  @hTimes_quartet_exclusion

example : ¬ ExtendsStandardPair (physicalNormalize publishedD0Phase) :=
  @d0_standard_pair_exclusion

example : ∀ {H : BasisMatrix}, ExceptionalPhase H →
    ¬ ExtendsStandardPair (physicalNormalize H) := @exceptional_standard_pair_exclusion

example : ∀ {B : Fin 4 → BasisMatrix}, IsMUBQuartet B → ∀ a b : Fin 4, a ≠ b →
    ¬ ExceptionalPhase (phaseScale (Real.sqrt 6) (overlap (B a) (B b))) :=
  @actual_edge_not_exceptional

example : ∃ B : Fin 3 → BasisMatrix, Numerical.D0Local.IsMUBTriple B ∧
    B 0 = identityBasis ∧ B 1 = physicalNormalize publishedD0Phase :=
  @d0_supports_three_bases

example : ∀ ω : ℂ, PrimitiveCubicPhase ω →
    ¬ ∃ C : BasisMatrix, IsOrthonormalBasis C ∧ IsUnbiased identityBasis C ∧
      IsUnbiased (physicalNormalize (publishedTaoPhase ω)) C :=
  @tao_no_third_basis_both_roots

#print axioms Mub6.ExceptionalTerminals.tao_quartet_exclusion
#print axioms Mub6.ExceptionalTerminals.d0_standard_pair_exclusion
#print axioms Mub6.ExceptionalTerminals.hTimes_quartet_exclusion
#print axioms Mub6.ExceptionalTerminals.exceptional_standard_pair_exclusion
#print axioms Mub6.ExceptionalTerminals.actual_edge_not_exceptional
#print axioms Mub6.ExceptionalTerminals.tao_no_third_basis
#print axioms Mub6.ExceptionalTerminals.tao_no_third_basis_both_roots
#print axioms Mub6.ExceptionalTerminals.d0_supports_three_bases
end Mub6.ExceptionalTerminals.EndpointAudit
