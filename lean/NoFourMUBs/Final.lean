import NoFourMUBs.Complete
import NoFourMUBs.PRM.CoverageMain
import NoFourMUBs.PRM.CoverageEndpoints
import NoFourMUBs.PRM.CoverageStripParts

/-!
# The main theorem, with strict-corner coverage proved

`Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs`.  Its only input is the finite atlas certificate of
`PROOF_v2.md` §5.  Strict-corner coverage (Theorem 1.5, MC1) is proved:

* routing, the Fourier critical locus, the block lemma and the ten-corner count (`CoverageMain`);
* the critical strip classification I4 (`CoverageStripParts`): zero `J` by the zero-`J` square-sum
  identity (`CoverageStripIdZero`), nonzero `J` by the two signed corner sums of return K
  (`CoverageSignedNonzero`);
* the two endpoint exclusions I5 (`CoverageEndpoints`).
-/

namespace NoFourMUBs

/-- **Theorem 1.5 (strict-corner coverage, MC1).** -/
theorem PRM.strictCornerCoverage : PRM.StrictCornerCoverage :=
  PRM.strictCornerCoverage_of_criticalStripGap
    ⟨PRM.Coverage.topStripClassification, PRM.Coverage.endpointExclusions⟩

/-- **There are no four mutually unbiased bases in `ℂ⁶`**, given the atlas certificate.
(Namespaced, since `NoFourMUBs.no_four_mubs` is the skeleton theorem of `Main.lean`.) -/
theorem Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs :=
  no_four_mubs_of_coverage C PRM.strictCornerCoverage

end NoFourMUBs
