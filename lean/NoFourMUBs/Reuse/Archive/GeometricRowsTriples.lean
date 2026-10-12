import NoFourMUBs.Reuse.Archive.SixRootOrdering
import NoFourMUBs.Step2.CriticalZero.GeometricMoments

set_option autoImplicit false
namespace GeometricSixRoots20261003
open NoFourMUBs.Step2.Critical
noncomputable section

theorem geometric_rows_two_triples {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (ρ : Fin 3 ↪ Fin 6) (x : Fin 6 → ℂ)
    (h0 : ∀ j, H (ρ 0) j=1)
    (h1 : ∀ j, H (ρ 1) j=x j)
    (h2 : ∀ j, H (ρ 2) j=star (x j))
    {ω : ℂ} (hω : ω^2+ω+1=0) :
    ∃ a b : ℂ, Complex.normSq a=1 ∧ Complex.normSq b=1 ∧
      sixValues x=cubicTriple ω a+cubicTriple ω b := by
  obtain ⟨hu,hs1,hs2⟩ := CriticalFourierRouting20261003.geometric_rows_moments hH ρ x h0 h1 h2
  exact six_unit_roots_two_triples x hu hs1 hs2 hω

theorem geometric_rows_ordered {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (ρ : Fin 3 ↪ Fin 6) (x : Fin 6 → ℂ)
    (h0 : ∀ j, H (ρ 0) j=1)
    (h1 : ∀ j, H (ρ 1) j=x j)
    (h2 : ∀ j, H (ρ 2) j=star (x j))
    {ω : ℂ} (hω : ω^2+ω+1=0) :
    ∃ a b : ℂ, Complex.normSq a=1 ∧ Complex.normSq b=1 ∧
      ∃ σ : Equiv.Perm (Fin 6), ∀ j,
        H (ρ 0) (σ j)=1 ∧
        H (ρ 1) (σ j)=![a,a*ω,a*ω^2,b,b*ω,b*ω^2] j ∧
        H (ρ 2) (σ j)=star (![a,a*ω,a*ω^2,b,b*ω,b*ω^2] j) := by
  obtain ⟨hu,hs1,hs2⟩ := CriticalFourierRouting20261003.geometric_rows_moments hH ρ x h0 h1 h2
  obtain ⟨a,b,ha,hb,σ,hσ⟩ := six_unit_roots_ordered x hu hs1 hs2 hω
  refine ⟨a,b,ha,hb,σ,?_⟩
  intro j
  rw [h0,h1,h2,hσ]
  exact ⟨rfl,rfl,rfl⟩

/-- No cubic-phase existence premise is needed for actual geometric rows. -/
theorem geometric_rows_standard_ordered {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (ρ : Fin 3 ↪ Fin 6) (x : Fin 6 → ℂ)
    (h0 : ∀ j, H (ρ 0) j=1)
    (h1 : ∀ j, H (ρ 1) j=x j)
    (h2 : ∀ j, H (ρ 2) j=star (x j)) :
    ∃ ω a b : ℂ, Hadamard6.IsPrimitiveCubicPhase ω ∧
      Complex.normSq a=1 ∧ Complex.normSq b=1 ∧
      ∃ σ : Equiv.Perm (Fin 6), ∀ j,
        H (ρ 0) (σ j)=1 ∧
        H (ρ 1) (σ j)=![a,a*ω,a*ω^2,b,b*ω,b*ω^2] j ∧
        H (ρ 2) (σ j)=star (![a,a*ω,a*ω^2,b,b*ω,b*ω^2] j) := by
  have hω := Hadamard6.standardOmega_isPrimitiveCubicPhase
  obtain ⟨a,b,ha,hb,σ,hσ⟩ := geometric_rows_ordered hH ρ x h0 h1 h2 hω.2
  exact ⟨Hadamard6.standardOmega,a,b,hω,ha,hb,σ,hσ⟩

end
end GeometricSixRoots20261003
#print axioms GeometricSixRoots20261003.geometric_rows_two_triples
#print axioms GeometricSixRoots20261003.geometric_rows_ordered
#print axioms GeometricSixRoots20261003.geometric_rows_standard_ordered
