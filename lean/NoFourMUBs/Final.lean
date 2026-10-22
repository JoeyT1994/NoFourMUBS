import NoFourMUBs.Complete
import NoFourMUBs.PRM.CoverageMain
import NoFourMUBs.PRM.CoverageStripParts

/-!
# The main theorem, with strict-corner coverage proved

`Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs`.  Its only input is the finite atlas certificate of
`PROOF.md` Steps 2 and 4.  Strict-corner coverage (Theorem 2.5, MC1, for matrices outside the Fourier
family, whose classes are covered by connectedness: `Step2.fourierClasses_subset`) is proved:

* routing, the block lemma and the ten-corner count, which also excludes the two rational endpoints
  (return S, `CoverageEndCount`; `CoverageMain`);
* the critical strip classification I4 (`CoverageStripParts`): zero `J` by the zero-`J` square-sum
  identity (`CoverageStripIdZero`), nonzero `J` by the two signed corner sums of return K
  (`CoverageSignedNonzero`).
-/

namespace NoFourMUBs

/-- **Theorem 2.5 (strict-corner coverage, MC1).** -/
theorem PRM.strictCornerCoverage : PRM.StrictCornerCoverage :=
  PRM.strictCornerCoverage_of_classification PRM.Coverage.topStripClassification

/-- **There are no four mutually unbiased bases in `ℂ⁶`**, given the atlas certificate.
(Namespaced, since `NoFourMUBs.no_four_mubs` is the skeleton theorem of `Main.lean`.) -/
theorem Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs :=
  no_four_mubs_of_coverage C PRM.strictCornerCoverage

end NoFourMUBs
