# Strict-corner coverage and the side fibre

These documents prove Theorem 2.5 of [`PROOF.md`](../../PROOF.md), strict-corner coverage, and the side fibre behind
Lemma 2.1, without using any classification of Hadamard matrices. `python3 verify_dossier.py` replays every verifier
below, and the root `verify.py` runs it.

| In `PROOF.md` | Document | Verifier |
|---|---|---|
| Theorem 2.5, the overall argument | [STRICT_CORNER_COVERAGE.md](STRICT_CORNER_COVERAGE.md), routed by `PRM.md` §7.1 | `verify_strict_corner_coverage.py` |
| Step 1: the only Fourier member with every corner critical is F6 | [FOURIER_CRITICAL_LOCUS.md](FOURIER_CRITICAL_LOCUS.md) | `verify_fourier_critical.py` |
| Step 2: the reduction to a corner scalar | [CRITICAL_CORNER_REDUCTION.md](CRITICAL_CORNER_REDUCTION.md) | `verify_critical_reduction.py` |
| Step 2: the strips with J = 0 | [CRITICAL_STRIP_CLASSIFICATION.md](CRITICAL_STRIP_CLASSIFICATION.md) §§1–2, with a second proof by square sums in §§3–4 | `verify_critical_square_sums.py`, `verify_critical_scalar_classification.py` |
| Step 2: the strips with J ≠ 0 | [`../returns/K_nonzero_J/`](../returns/K_nonzero_J/REVIEW.md) | its own verifier |
| Step 2: the two endpoints, and the final count | [ENDPOINT_COUNTING.md](ENDPOINT_COUNTING.md) | `verify_endpoint_counting.py` |
| Lemma 2.1 and the side fibre, used by the strip classification | [SIDE_FIBER.md](SIDE_FIBER.md) §1, with [STRICT_DOMAIN.md](STRICT_DOMAIN.md) and the phase-block invariant in [OPPOSITE_CORNER.md](OPPOSITE_CORNER.md) | `verify_side_fiber.py`, `verify_invariants.py` |

Matched existence, uniqueness and the converse (Theorems 2.2–2.4) are proved outside this folder, as listed in
[`../README.md`](../README.md). `critical_quartic.json`, `critical_moment_core.py` and `exact_rational.py` hold the data
and the exact-arithmetic helpers of the strip verifiers.
