# Steps 1 and 2: proofs and certificates

The proofs behind Steps 1 and 2 of [`PROOF.md`](../../PROOF.md) arrived as self-contained "returns", each kept here
with its write-up, exact verifiers and certificates. Every acceptance decision is exact: polynomial identities,
Bernstein and Sturm certificates, and rational interval signs. The original zips' SHA-256 hashes are in
[`returns/SOURCE_ZIPS.sha256`](returns/SOURCE_ZIPS.sha256). Returns on research questions that the proof does not use
are in [`explorations/returns/`](../../explorations/returns/).

## Used by the proof

| Return | Proves (in `PROOF.md`) | Replay |
|---|---|---|
| [`C_step1_saddle/`](returns/C_step1_saddle/README.md) | **Theorem 1** (the maxima of R): a direct saddle theorem, then 651 exact claims; certificates and Lean in `lean/Step1Gen/` | `python3 lean/Step1Gen/verify_certificates.py` |
| [`A_deltoid/`](returns/A_deltoid/README.md) | **Theorem 2** (connectedness): sheet parity, continuity of θ ↦ [H₊(θ)], the joining family at F6 (`CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`) | `cd returns/A_deltoid && python3 verify_all.py` |
| [`J_side_existence/`](returns/J_side_existence/RESULT.md) | **Theorem 2.2, sides**: the Jacobian identity det ∂(Gram)/∂(angles) = ¼ Im Ψ and the clopen/maximum argument (`RESULT.md`; identity check `check_jacobian.py`) | `python3 returns/J_side_existence/check_jacobian.py` |
| [`Q_fourier_anchor/`](returns/Q_fourier_anchor/PROOF.md) | **Theorem 2.2 and Lemma 4.2, the anchor**: the Fourier family K(t) is matched at a strict corner with R(t) = 144 sin²t (1 + cos t)² > 0 for 0 < t < π, which starts the clopen/maximum arguments for side existence and coverage ([`REVIEW.md`](returns/Q_fourier_anchor/REVIEW.md); Lean `Step2/FourierAnchor`). It replaced the explicit anchor H₀ (73 KB of Lean, `anchor.py` and one certificate field) | `cd returns/Q_fourier_anchor && python3 verify.py` |
| [`E_matched_flatness/`](returns/E_matched_flatness/FLATNESS.md) | **Theorem 2.2, flatness**: four weighted third-moment defects whose eight coefficients vanish identically (the fourth-moment identity L-id is certified as a second proof). The proof now uses only the two coefficients of W₁₁ and gets the other three defects by relabelling (handoff M, [`audits/AUDIT_2026-10-17/ALGEBRAIC_PROOFS.md`](audits/AUDIT_2026-10-17/ALGEBRAIC_PROOFS.md)) | `cd returns/E_matched_flatness && python3 verify_all.py` |
| [`G_prm/`](returns/G_prm/PRM.md) | **Theorem 2.4** (the nonmatched converse) and exact reach; an 81-case Fourier census and Laurent identities. Its Theorem B (guarded PR-M) is not on the critical path | `cd returns/G_prm && python3 verify_all.py` |
| [`K_nonzero_J/`](returns/K_nonzero_J/REPORT.md) | **Theorem 2.5, nonzero-J critical strips**: two signed corner sums, a universal identity, four curves and the λ-denominator product ([`REVIEW.md`](returns/K_nonzero_J/REVIEW.md); Lean `PRM/CoverageSigned*`) | `cd returns/K_nonzero_J && python3 verify.py` |

The rest of Theorem 2.5 (routing, the zero-J strips, the endpoint exclusions and the ten-corner count) is in
[`MinimalConstruction/Proofs/`](../../MinimalConstruction/Proofs/README.md) (`STRICT_CORNER_COVERAGE.md` and the
files it cites). `python3 verify.py` replays all of the above.

## Cross-checks and provenance

| Return | Role |
|---|---|
| [`B_exact_quotient/`](returns/B_exact_quotient/README.md) | Independent exact proof of Step 1 and of the quotient coverage; also shows no interval box cover of T⁴ can terminate (R, ∇R and Hess R vanish at the F3 seed). Replayed by `verify.py` |
| [`F_side_existence/`](returns/F_side_existence/README.md) | The earlier proof of side existence by explicit radical sides with integer-cofactor identities; superseded by J, still replayed by `verify.py` as a cross-check |
| [`D_step2_audit/`](returns/D_step2_audit/README.md) | Audit and blueprint of Step 2 that the Lean formalisation follows; it found the PR-M point |

## Returned 18 Oct, being integrated

| Return | Replaces | Review |
|---|---|---|
| [`O_zeroj_unsquared/`](returns/O_zeroj_unsquared/REPORT.md) | the zero-J square sum in Theorem 2.5 (216 KB of Lean data) | [REVIEW](returns/O_zeroj_unsquared/REVIEW.md) |
| [`S_endpoints_by_counting/`](returns/S_endpoints_by_counting/PROOF.md) | the two endpoint exclusions in Theorem 2.5 (about 51 KB of Lean) | [REVIEW](returns/S_endpoints_by_counting/REVIEW.md) |

## Audits

[`audits/`](audits/): the independent audit of Theorem 2.4, exact reach and strict-corner coverage
([`AUDIT_2026-10-15.md`](audits/AUDIT_2026-10-15.md), no errors found), the audit of return G's Theorem B, the I4
addendum with its check scripts, and the whole-repository audit of 17 Oct
([`AUDIT_2026-10-17/RESPONSE.md`](audits/AUDIT_2026-10-17/RESPONSE.md): no failed check; two Julia driver defects, now
fixed; a documentation overclaim on connectedness, now corrected).
