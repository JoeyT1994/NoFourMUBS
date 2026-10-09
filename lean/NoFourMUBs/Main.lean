import NoFourMUBs.Invariance

/-!
# Main theorem

There are no four mutually unbiased bases in `ℂ⁶`, relative to the three substantive inputs of `PROOF.md`
(`NoFourMUBs.Inputs`: Tao excluded, coverage by certified Records, exclusion on Records).  Everything else
— the reduction to quartet edges, invariance under equivalence and entrywise conjugation, preservation of the Hadamard
property — is proved (`Basic`, `Skeleton`, `Invariance`, upstream `Hadamard6.isHadamard_of_equivalent`).
-/

open Matrix Hadamard6

namespace NoFourMUBs

theorem no_four_mubs {Ball : Mat6 → Prop} (I : Inputs Ball) : ¬ FourMUBs := by
  intro h4
  obtain ⟨H, hH, hq⟩ := exists_quartetEdge_of_fourMUBs h4
  by_cases hT : IsTaoOrbit H
  · exact I.taoExcluded H hH hT hq
  · obtain ⟨K, hB, hHK | hHK⟩ := I.covered H hH hT
    · exact I.excluded K hB (isHadamard_of_equivalent hHK hH) (quartetEdge_of_equivalent hHK hq)
    · exact I.excluded K hB (isHadamard_of_equivalent hHK (isHadamard_conjM hH))
        (quartetEdge_of_equivalent hHK (quartetEdge_conjM hq))

end NoFourMUBs
