import NoFourMUBs.Reuse.Archive.GeometricTopBlocks
import NoFourMUBs.Reuse.Archive.ConjugateBlockNormalization

import NoFourMUBs.Reuse.Archive.GeometricFourierTail

set_option autoImplicit false
namespace GeometricNormalization20261003
open Hadamard6 CriticalFourierRouting20261003
noncomputable section

/-- Full geometric-row routing, including the actual allowed transformations.
No normal-form, distinct-root, all-critical or exclusion premise remains. -/
theorem geometric_rows_fourier {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (ρ : Fin 3 ↪ Fin 6) (x : Fin 6 → ℂ)
    (h0 : ∀ j, H (ρ 0) j=1)
    (h1 : ∀ j, H (ρ 1) j=x j)
    (h2 : ∀ j, H (ρ 2) j=star (x j)) : FourierOrTranspose H := by
  obtain ⟨K,hK,heHK,ω,u,hω,_hu,hA,hB⟩ := geometric_rows_top_blocks hH ρ x h0 h1 h2
  obtain ⟨L,hL,heKL,r,s,_hr,_hs,D,hform⟩ :=
    conjugate_first_blocks_normalization hK hω.1 hω.2 hA hB
  have hf : FourierOrTranspose (Worker12.unsplitMatrix L) :=
    geometric_first_three_blocks_fourier hL hform hω
  have he : OAI.MUB6.Equivalent (Worker12.unsplitMatrix (Worker12.splitMatrix H))
      (Worker12.unsplitMatrix L) := Worker12.equivalent_unsplit (equivalent_trans heHK heKL)
  have hunsplit : Worker12.unsplitMatrix (Worker12.splitMatrix H)=H :=
    NoFourMUBs.Step2.FourierBridge.toOAI_fromOAI H
  rw [hunsplit] at he
  exact fourier_of_monomial he hf

/-- Any explicit monomial equivalence producing the three literal geometric
rows suffices. The equivalence is physical data, not a classification premise. -/
theorem monomial_geometric_rows_fourier {H K : OAI.MUB6.CMatrix}
    (he : OAI.MUB6.Equivalent H K)
    (hK : OAI.MUB6.IsHadamard K) (ρ : Fin 3 ↪ Fin 6) (x : Fin 6 → ℂ)
    (h0 : ∀ j, K (ρ 0) j=1)
    (h1 : ∀ j, K (ρ 1) j=x j)
    (h2 : ∀ j, K (ρ 2) j=star (x j)) : FourierOrTranspose H :=
  fourier_of_monomial he (geometric_rows_fourier hK ρ x h0 h1 h2)

end
end GeometricNormalization20261003
#print axioms GeometricNormalization20261003.geometric_rows_fourier
#print axioms GeometricNormalization20261003.monomial_geometric_rows_fourier
