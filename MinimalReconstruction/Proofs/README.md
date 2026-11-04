# Strict-corner coverage and the blocks with a given overlap matrix

These documents prove Theorem 2.5 of [`PROOF.md`](../../PROOF.md), strict-corner coverage (SM Proposition S.5,
Vanishing of R at every corner), and the facts about the blocks with a given overlap matrix behind Lemma 2.1 (the
identities of SM Proposition S.2, Reconstruction of B and C), without using any classification of Hadamard matrices.
`python3 verify_dossier.py` replays every verifier below, and the root `verify.py` runs it.

| In `PROOF.md` | Document | Verifier |
|---|---|---|
| Theorem 2.5, the overall argument | [STRICT_CORNER_COVERAGE.md](STRICT_CORNER_COVERAGE.md), routed by `PRM.md` §7.1 | `verify_strict_corner_coverage.py` |
| Part (i), the Fourier families: the only Fourier-family member with R = 0 at every corner is F₆ | [FOURIER_CRITICAL_LOCUS.md](FOURIER_CRITICAL_LOCUS.md) | `verify_fourier_critical.py` |
| Part (ii), three complete rows: the reduction to the corner scalars | [CRITICAL_CORNER_REDUCTION.md](CRITICAL_CORNER_REDUCTION.md) | `verify_critical_reduction.py` |
| Part (ii): the case J = 0 | [CRITICAL_STRIP_CLASSIFICATION.md](CRITICAL_STRIP_CLASSIFICATION.md) §§1–2 (by square sums), with a second proof by two unsquared sums in [`../returns/O_zeroj_unsquared/`](../returns/O_zeroj_unsquared/REPORT.md) | `verify_critical_square_sums.py`, and the folder's own verifier |
| Part (ii): the case J ≠ 0 | [`../returns/K_nonzero_J/`](../returns/K_nonzero_J/REVIEW.md), with a second proof by square sums in [CRITICAL_STRIP_CLASSIFICATION.md](CRITICAL_STRIP_CLASSIFICATION.md) §§3–4 | its own verifier, and `verify_critical_square_sums.py`, `verify_critical_scalar_classification.py` |
| Part (ii): the two rational cases p = 27/5 and p = 7, and the final count | [ENDPOINT_COUNTING.md](ENDPOINT_COUNTING.md) | `verify_endpoint_counting.py` |
| Lemma 2.1 and the blocks with a given overlap matrix, used by the classification of three complete rows | [SIDE_FIBER.md](SIDE_FIBER.md) §1, with [STRICT_DOMAIN.md](STRICT_DOMAIN.md) and the invariant of a block in [OPPOSITE_CORNER.md](OPPOSITE_CORNER.md) | `verify_side_fiber.py`, `verify_invariants.py` |

Matched existence, uniqueness and the converse (Theorems 2.2–2.4) are proved outside this folder, as listed in
[`../README.md`](../README.md). `critical_quartic.json`, `critical_moment_core.py` and `exact_rational.py` hold the data
and the exact-arithmetic helpers of the verifiers for three complete rows.
