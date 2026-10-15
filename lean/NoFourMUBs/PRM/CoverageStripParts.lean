import NoFourMUBs.PRM.CoverageStripReduce

/-!
# Critical strip classification (I4): entry point

`TopStripClassification` (`CoverageInputs`, I4 of `CRITICAL_STRIP_CLASSIFICATION.md`) is proved from

* the two scalar statements of `CoverageQuarticDefs`: `Quartic.ScalarClassification` (§3, sign
  certificate for `Q(k, K)`) and `Quartic.PoleClassification` (§4, pole substitutions), and
* two identities, in either of two equivalent-strength forms:
  - on actual strips, `NonzeroJSquareSum` (§3 (6)–(7), `I4_ADDENDUM.md` §1) and `ZeroJSquareSum`
    (§2 (4)) — `topStripClassification_of_parts`;
  - as pure algebra in the Gram data `s, t, r` of one half, `NonzeroJAlgebra` and `ZeroJAlgebra` —
    `topStripClassification_of_algebra`; these imply the strip forms
    (`nonzeroJSquareSum_of_algebra`, `zeroJSquareSum_of_algebra`).

Proved here (standard axioms only):
* `CoverageStripBlock`, `CoverageStripScalar`: corner data `g, z, L_j, K, k`; `χ = 2gz`, `η = z²`;
  the norm identities `|P_j| = |L_j|`; the §4 pole computation (`Im(āP_j) = (difference of moduli)·Im w`,
  for each `j`, so no row relabelling); the parametrisation `p = 9 − 4/h`, `J = 8k/h²`; `K ≥ K_min`;
  discriminant `≥ 0`; the reading of the three candidates (`17/3 < p⋆ < 29/5`, the two endpoints with
  their moduli from the modulus cubic).
* `CoverageStripNonzero`: the nonzero-`J` stratum (complementary-corner normalisation `J > 0`, poles,
  no poles).
* `CoverageStripGeom`, `CoverageStripZero`: the zero-`J` stratum: scalar data, `z = −3 ⇒ p = 0`,
  `z = −2 ⇒ p = 5`, the pole exclusion, `K = (1 − z)(z + 3)³`, the moduli, and the geometric-progression
  step (`λ₀ = 1`, `v = ū`, the six permutation cases, both halves, row relabelling).
* `CoverageStripMoments` (+ generated `CoverageStripMomentData`): the whole-strip square sum is the
  66-monomial moment polynomial of the paper (`stripSq_eq_momentPoly`; the 817-term corner-square Laurent
  expansion is checked by the kernel identity checker).
* `CoverageStripNewton`, `CoverageStripLambda`, `CoverageStripAlgebra`: Newton's identities for the
  36 half moments, the `λ`-substitution on a critical half, and `stripSq_alg`.
* `CoverageStripReduce`: the reductions to `NonzeroJAlgebra`, `ZeroJAlgebra` (with the zero-`J` row
  relabelling making `s, t ≠ 0`).

Remaining: `Quartic.ScalarClassification`, `Quartic.PoleClassification` (another agent) and
`NonzeroJAlgebra`, `ZeroJAlgebra` (the exact rational-function identities that
`verify_critical_square_sums.py` checks with the row-scaling device and splitting-algebra reduction).
-/

namespace NoFourMUBs.PRM.Coverage

/-- **I4 from its parts** (strip form of the square-sum identities). -/
theorem topStripClassification_of_parts (hS : Quartic.ScalarClassification)
    (hP : Quartic.PoleClassification) (hN : NonzeroJSquareSum) (hZ : ZeroJSquareSum) :
    TopStripClassification := by
  intro H hH hc hinv l
  exact ⟨fun hJ => zeroJ_classification hZ hH hc hinv l hJ,
    fun hJ => nonzeroJ_classification hS hP hN hH hc hinv l hJ⟩

end NoFourMUBs.PRM.Coverage
