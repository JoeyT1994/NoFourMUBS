# Requirement-by-requirement completion audit

The reconstruction proof goal is complete relative to the explicit
ClassificationPaper imports in README.md. No mathematical reconstruction
obligation remains open. The numerical no-four-MUB campaign itself is
outside this proof-recovery goal and is not certified by this dossier.

| Requirement | Authoritative proof and replay evidence |
|---|---|
| Strict-corner coverage exactly as ASSUMPTIONS.md states, including Tao | STRICT_CORNER_COVERAGE.md proves all-critical iff F6; CRITICAL_STRIP_CLASSIFICATION.md covers the ramified scalar strata and all poles. The invariant, critical-reduction, square-sum, scalar-classification, endpoint, Fourier-routing, Fourier-census and final-bookkeeping verifiers replay its algebra. |
| Exactly two normalized side-fiber orbits under column permutations on every R>0 seed | SIDE_FIBER.md proves existence, uniqueness at fixed Theta, distinction of the two roots, and all allowed root permutations. verify_side_fiber.py replays the universal identities and faithful-extension witnesses. |
| Finite pairings recover every framed completion | SIDE_FIBER.md §5 gives the forced D formula and proves Hadamard iff D is flat; no genericity or product guard is added. |
| All prescribed side-formula divisors nonzero throughout R>0 | STRICT_DOMAIN.md and SIDE_FIBER.md prove g,n,P_j,delta,rho,sigma and all unit inverses valid, with the specified square-root orientation. The invariant and side-fiber verifiers support the complete specialization proof. |
| Both matched completions flat on all R>0 | MATCHED_FLATNESS.md proves the exact product-sheet bridge and extends from a dense guarded domain by compactness and fixed-Theta uniqueness. verify_matching_bridge.py checks the bridge and a two-branch exact guard witness. |
| Nonmatched exceptions are precisely Tao, with all finite pairings accounted for | NONMATCHED_EXCEPTIONS.md explicitly imports necessary affine-minus matching, proves all-corner propagation and specialization, and treats H_cross. The outward all-corner witness, exact H_cross and exact Tao-pairing verifiers cover the finite/algebraic inputs. |
| Positive-sheet coverage as used by NumericalCampaign/REDUCTION.md | OPPOSITE_CORNER.md proves both opposite-corner transport and fixed-seed conjugation. MC1 supplies a strict maximum; nonmatched exhaustion supplies matching at that very corner. Conjugation preserves its maximum and sorting data. Tao remains a separately classified exception, not part of the matched image. |
| Exact identification of ClassificationPaper assumptions | README.md's import table, NONMATCHED_EXCEPTIONS.md §1, MATCHED_FLATNESS.md and FOURIER_ROUTING.md identify source labels and the exact necessary direction used. No historical handoff claim is an axiom. |
| Recover historical sources and identify unavailable proof material | RECOVERY_MANIFEST.json verifies 56 copied historical files. SESSION_EXCERPT_MANIFEST.json records the separately recovered handoff excerpt. It contains no global proof; the missing argument was supplied locally. |
| Preserve all existing specification statements verbatim | ASSUMPTIONS.md and RECONSTRUCTION.md have only appended proof/status references. verify_provenance.py checks their original byte prefixes against the original hashes. Historical status statements remain visible and are superseded explicitly. |
| New verifiers local to Proofs; no root registration or external edits | Every new verifier and arithmetic helper is under this folder. CHANGE_REPORT.md enumerates all changed files and the current pinned hashes. Root verify.py and external runtime pins are unchanged. |

## Replay and trust scope

Run:

    python3 MinimalConstruction/Proofs/verify_dossier.py

The full receipt is `Receipts/dossier_full_20261001.log`. It records
the outcome of all fifteen local checks, individual output hashes, and
hashes of the proof documents, code, exact polynomial data, specifications
and imported paper source. The dependency runtime is Python with Sympy
and python-flint; the outward witness uses Arb/acb. No floating-point
sample authorizes a proof conclusion.

The prose proofs supply the analytic arguments, including irreducibility,
specialization, compactness, the endpoint field-degree argument, Fourier
routing and the final irrationality contradiction. The replay is not
described as a proof-assistant formalization of those arguments.

Root integration and external hash-pin updates remain intentionally
unperformed, as requested. They are review/integration actions, not
unresolved mathematical assumptions in the reconstructed proofs.
