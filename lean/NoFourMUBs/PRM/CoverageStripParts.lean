import NoFourMUBs.PRM.CoverageSignedNonzero
import NoFourMUBs.PRM.CoverageZeroJProduct

/-!
# Critical strip classification (I4): entry point

`topStripClassification : TopStripClassification` (`CoverageInputs`, I4 of
`CRITICAL_STRIP_CLASSIFICATION.md`), standard axioms only:

* zero `J` (paper §2): return O (`MinimalReconstruction/returns/O_zeroj_unsquared`), the product
  `K = (1 − z)(z + 3)³` from two unsquared weighted sums over the nine mixed corners instead of the
  twenty-corner square sum (`zeroJProduct : ZeroJProduct`, `CoverageZeroJProduct`), read by
  `zeroJ_classification` (`CoverageStripZero`, with the geometric step of `CoverageStripGeom`):
  - `CoverageMixedSums` (+ generated `CoverageMixedData`): the two sums as half-moment polynomials; they
    vanish on an all-critical strip (`mixed_zero`);
  - `CoverageMixedDefs`, `CoverageMixedCheckG`, `CoverageMixedCheckR`: identities (12) and (27a) in the gauge
    `s = t = 1`, one kernel check each, with the cofactors of the return's two mixed certificates;
  - `CoverageZeroJProduct`: the gauge, real and imaginary parts, and the scalar steps (§§5–7);
* nonzero `J`: return K (`MinimalReconstruction/returns/K_nonzero_J`), two sums of the unsquared corner
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
  topStripClassification_signed zeroJProduct

end NoFourMUBs.PRM.Coverage
