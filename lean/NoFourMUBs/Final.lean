import NoFourMUBs.Step4

/-!
# The end-to-end theorem

**No four MUBs in ℂ⁶**, with every remaining input explicit.

Certificate inputs (finite, checked externally by `certify.py` and the independent Julia checker):
* `A : ι → RecordCert`, a finite atlas of certified Records (Lemmas 3.1 and 3.2 are proved for each);
* `BoundaryTransfers A` (the boundary trees, through Lemma 4.1);
* `htao`: the Tao matrices lie in the atlas;
* the anchor certificates (a matched maximum anchor and the Fourier class lie in the atlas).

Mathematical inputs:
* Step 1's census (`MaximumCensus`): proved on paper, with its finite algebra compiled in library `Step1`;
* the reconstruction facts `MatchedExistence`, `MatchedUniqueness` and `MatchedDensityReach`
  (`STEP2_BLUEPRINT.md`; density is the open point of `PROOF.md`'s trust boundary).
-/

open Matrix Hadamard6

namespace NoFourMUBs

theorem no_four_mubs_final {ι : Type*} [Finite ι] (A : ι → RecordCert) (anchors : Finset Step2.StrictSeed)
    (hb : BoundaryTransfers A)
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hAnchors : Step2.MaximumAnchorCertificate (InAtlas A) anchors)
    (hFourier : Step2.FourierAnchorCertificate (InAtlas A))
    (hCensus : Step2.MaximumCensus anchors)
    (hE : Step2.MatchedExistence) (hU : Step2.MatchedUniqueness) (hD : Step2.MatchedDensityReach) :
    ¬ FourMUBs :=
  no_four_mubs_of_atlas A htao
    (Step2.coverage_of_matched_density (InAtlas A) anchors hE hU hD hCensus (recordClopen_of_atlas A hb)
      hAnchors hFourier)

end NoFourMUBs
