import NoFourMUBs.PRM.CoverageSignedNonzero
import NoFourMUBs.PRM.CoverageStripIdZero

/-!
# Critical strip classification (I4): entry point

`topStripClassification : TopStripClassification` (`CoverageInputs`, I4 of
`CRITICAL_STRIP_CLASSIFICATION.md`), standard axioms only:

* zero `J` (paper §2): the zero-`J` square-sum identity `zeroJAlgebra` (`CoverageStripIdZero`, kernel
  checks; status in `lean/generators/stripid/STATUS.md`), reduced to it by `zeroJSquareSum_of_algebra`
  and read by `zeroJ_classification` (`CoverageStripZero`, `CoverageStripReduce`);
* nonzero `J`: return K (`proof/coverage/returns/K_nonzero_J`), two sums of the unsquared corner
  signature instead of the twenty-corner square sum (`CoverageSignedNonzero`):
  - `CoverageSignedMoments` (+ generated `CoverageSignedData`): the signed sums (3), (4) as moment
    polynomials; they vanish on an all-critical strip (`signed_zero`);
  - `CoverageSignedBoundary`: cleared `λ`-identities, (5), the universal identity (6), and (7):
    `Im w = 0` or a repeated modulus, poles included (`signed_boundary`);
  - `CoverageSignedGauge`, `CoverageSignedK0`, `…Kp`, `…Kn`, `…Kmin`: the weighted sum (4) in the
    gauge `s = t = 1` on the four curves, one kernel check each (§5);
  - `CoverageSignedNonzero`: pole forcing (`noPole`), the product of the six denominators (§6,
    `lamProduct`, with the factorizations of `CoverageQuarticPole`), and the candidates
    (`conclusion_of_candidates`, N2 window `CoverageTen.pStar_bounds`).

The scalar layer shared by both strata is `CoverageStripBlock`, `CoverageStripScalar`,
`CoverageStripNonzero` (complementary corners) and `CoverageCritical` (the critical corner reduction).
-/

namespace NoFourMUBs.PRM.Coverage

/-- **I4, the critical strip classification.** -/
theorem topStripClassification : TopStripClassification :=
  topStripClassification_signed zeroJAlgebra

end NoFourMUBs.PRM.Coverage
