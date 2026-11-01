# Strict-corner coverage and the side fibre

The documents here prove **Theorem 2.5 (strict-corner coverage)** of [`PROOF.md`](../../PROOF.md), and the side
fibre behind Lemma 2.1, with no classification input. `python3 verify_dossier.py` replays every verifier below (the
root `verify.py` runs it).

| `PROOF.md` | Document | Verifier |
|---|---|---|
| Theorem 2.5, overall argument | [STRICT_CORNER_COVERAGE.md](STRICT_CORNER_COVERAGE.md) (routing by `PRM.md` §7.1) | `verify_strict_corner_coverage.py` |
| 2.5 step 1, all-critical Fourier members are F6 | [FOURIER_CRITICAL_LOCUS.md](FOURIER_CRITICAL_LOCUS.md) | `verify_fourier_critical.py` |
| 2.5 step 2, corner scalar reduction | [CRITICAL_CORNER_REDUCTION.md](CRITICAL_CORNER_REDUCTION.md) | `verify_critical_reduction.py` |
| 2.5 step 2, zero-J strips | [CRITICAL_STRIP_CLASSIFICATION.md](CRITICAL_STRIP_CLASSIFICATION.md) §§1–2 (§§3–4: a second, square-sum proof) | `verify_critical_square_sums.py`, `verify_critical_scalar_classification.py` |
| 2.5 step 2, nonzero-J strips | return K, [`../../proof/coverage/returns/K_nonzero_J/`](../returns/K_nonzero_J/REVIEW.md) | its own verifier |
| 2.5 step 2, the two endpoints (and the final count) | [ENDPOINT_COUNTING.md](ENDPOINT_COUNTING.md) (return S) | `verify_endpoint_counting.py` |
| Lemma 2.1 and the side fibre (cited by the strip classification) | [SIDE_FIBER.md](SIDE_FIBER.md) §1, with [STRICT_DOMAIN.md](STRICT_DOMAIN.md) and the phase-block invariant ([OPPOSITE_CORNER.md](OPPOSITE_CORNER.md)) | `verify_side_fiber.py`, `verify_invariants.py` |

Matched existence, uniqueness and the converse (Theorems 2.2–2.4) are proved outside this folder: return J (sides),
return E (flatness), `PROOF.md` §2.2 (uniqueness) and return G (converse); see the contents table in
[`../README.md`](../README.md).

`critical_quartic.json`, `critical_moment_core.py` and `exact_rational.py` are the data and exact-arithmetic helpers of
the strip verifiers.
