import NoFourMUBs.Invariance

/-!
# Main theorem

There are no four mutually unbiased bases in `ℂ⁶`, relative to the three substantive inputs of `PROOF.md`
(`NoFourMUBs.Inputs`: Tao excluded, coverage by certified Records, exclusion on Records).  Everything else
— the reduction to quartet edges, invariance under equivalence and `Γ` (conjugation, transposition), preservation of the Hadamard
property — is proved (`Basic`, `Skeleton`, `Invariance`, upstream `Hadamard6.isHadamard_of_equivalent`).
-/

open Matrix Hadamard6

namespace NoFourMUBs

theorem no_four_mubs {Ball : Mat6 → Prop} (I : Inputs Ball) : ¬ FourMUBs := by
  intro h4
  obtain ⟨H, hH, hq⟩ := exists_quartetEdge_of_fourMUBs h4
  by_cases hT : IsTaoOrbit H
  · exact I.taoExcluded H hH hT hq
  · obtain ⟨G, K, hG, hB, hGK⟩ := I.covered H hH hT
    obtain ⟨hGH, hGq⟩ := inGamma_preserves hG hH hq
    exact I.excluded K hB (isHadamard_of_equivalent hGK hGH) (quartetEdge_of_equivalent hGK hGq)

end NoFourMUBs
