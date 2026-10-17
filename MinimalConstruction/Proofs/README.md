# Reconstruction proof dossier

**Proof dossier complete relative to the stated ClassificationPaper inputs.**
All five reconstruction obligations now have proofs in this folder.
Recovered historical files are provenance, not additional axioms.
[COMPLETION_AUDIT.md](COMPLETION_AUDIT.md) records the requirement audit;
`python3 MinimalConstruction/Proofs/verify_dossier.py` replays all local checks.

## Proof obligations

| ID | Required conclusion | Current evidence and remaining work |
|---|---|---|
| MC1 | Every non-F6 order-six Hadamard has a positional corner with R>0, exactly as ASSUMPTIONS.md states, including Tao | Proved in [STRICT_CORNER_COVERAGE.md](STRICT_CORNER_COVERAGE.md). Exact strip identities, complete pole and scalar classification, endpoint exclusions, Fourier routing and the fixed-row sum rule show the all-critical locus is exactly F6. |
| MC2 | At every strict corner, exactly two orbits of the normalized side fiber under column permutations; finite pairings recover all framed completions | Proved in [SIDE_FIBER.md](SIDE_FIBER.md), on all R>0 without product guards. Which pairings are flat is separately MC4. |
| MC3 | Every prescribed side-formula divisor is nonzero on all R>0; the formula is flat with the required Gram; allowed root choices act only by the stated permutations | Proved in [STRICT_DOMAIN.md](STRICT_DOMAIN.md) and [SIDE_FIBER.md](SIDE_FIBER.md), including real dF, rho>=n/2>0, sigma, flatness, and all permitted root choices. |
| MC4 | Both matched completions are flat throughout R>0; all nonmatched exceptions are precisely the stated Tao cases | Proved in [MATCHED_FLATNESS.md](MATCHED_FLATNESS.md), [TAO_PAIRINGS.md](TAO_PAIRINGS.md), and [NONMATCHED_EXCEPTIONS.md](NONMATCHED_EXCEPTIONS.md). The converse explicitly imports the paper's necessary affine-minus matching rule on product-regular completions. |
| MC5 | Positive-sheet coverage in the exact form used by the first proof's `NumericalCampaign/REDUCTION.md` (archived at git tag `archive-2026-10-11`), with Tao accounted for | Proved in [OPPOSITE_CORNER.md](OPPOSITE_CORNER.md), now with MC1 discharged. Both the global opposite-corner surjection and the campaign's fixed-seed conjugation step follow. Tao is exhaustively accounted for separately from the matched image. |

The existing statements in ASSUMPTIONS.md and RECONSTRUCTION.md are
preserved verbatim. Appended references describe the audit status without
changing those statements or silently weakening their quantifiers.

## Permitted classification imports

Use source labels to avoid ambiguity in theorem numbers between paper versions.

| Source location | Label | Precisely permitted use |
|---|---|---|
| ../../ClassificationPaper/source/paper_body.tex | thm:classification | Complete finite-corner classification; not strict-corner coverage by itself. |
| ../../ClassificationPaper/source/supp_body.tex | prop:directcompletion | For complete normalized invertible side candidate sets, every framed completion has the unique forced D; flatness of D is the remaining test. |
| ../../ClassificationPaper/source/paper_body.tex | thm:regular-seed-domain | Physicality and matched flatness under the displayed product-regular guards; cannot omit those guards. |
| ../../ClassificationPaper/source/supp_body.tex | prop:supp-generic-flatness | Generic norm identity and flatness at product-regular physical specializations. |
| ../../ClassificationPaper/source/supp_body.tex | lem:supp-regular-localization | Nonvanishing of the paper's localization factors at product-regular lifts; not yet nonvanishing of every present side divisor on all R>0. |
| ../../ClassificationPaper/source/paper_body.tex | thm:global-product-regular-escape | The only classes without a product-regular frame are Tao and H_cross; does not by itself ensure a strict discriminant. |
| ../../ClassificationPaper/source/paper_body.tex | Paragraph immediately before eq:affine-minus-matching-main | Necessary matching: a physical product-regular completion uses the affine-minus vertical root. This necessary direction is essential to NONMATCHED_EXCEPTIONS.md; sufficiency alone would not supply it. |
| ../../ClassificationPaper/source/supp_body.tex | lem:supp-admissibility-guards | A simple, imbalanced row pair in a finite invertible side of a non-H2 carrier supplies the remaining product guards. Used in the all-corner open witness. |
| ../../ClassificationPaper/source/supp_body.tex | eq:fouriernormalform, eq:Dfourierformula, eq:twoproducts | Fourier-block normalization, forced lower block, and its exact autocorrelation flatness equations. FOURIER_ROUTING.md specializes these to a geometric row triple and proves the stronger Fourier-family conclusion. |

Paths in this table are relative to this `Proofs` folder.
No proof of the paper's results is requested or repeated here.

## Recovered sources

[RECOVERY_MANIFEST.json](RECOVERY_MANIFEST.json) records original paths,
byte sizes and SHA-256 hashes for 56 files recovered from the two historical
coordinate packages. They include derivations, reviews, implementations and
old diagnostic receipts. They are copied verbatim under `Recovered/`.
Their inherited assertions remain subject to the obligations above.
The search of Documents, Downloads and Files, including 100 ZIP archives,
did not locate the original COMPREHENSIVE_HANDOFF.md. An archived task did
retain the decoded output of reading lines 290–440. That verbatim excerpt
is separately documented in [SESSION_EXCERPT_MANIFEST.json](SESSION_EXCERPT_MANIFEST.json)
and retained in [Recovered/session_excerpts/COMPREHENSIVE_HANDOFF_lines290-440.md](Recovered/session_excerpts/COMPREHENSIVE_HANDOFF_lines290-440.md).
It calls global critical-locus closure a proposed result and does not
contain its proof. This recovery does not discharge MC1.

- [Single-sheet source](Recovered/single_sheet_integration/coordinates/Hadamard6_Single_Sheet_Conjugate_Fourier_Form.md).
- [Phase-gate source](Recovered/phase_gate_review/coordinates/Hadamard6_Unitary_Core_Phase_Gate_Form.md).
- [Historical phase-gate review](Recovered/phase_gate_review/coordinates/PHASE_GATE_REVIEW.md).

## New local verifiers

- `python3 MinimalConstruction/Proofs/verify_invariants.py`: exact determinant,
  denominator and phase-block identities, and the opposite-corner involution.
  Its PASS is scoped to those identities, not the open global theorems.
- `python3 MinimalConstruction/Proofs/verify_provenance.py`: recovered-source
  hashes and append-only preservation of the two pinned specification files.
- `python3 MinimalConstruction/Proofs/verify_side_fiber.py`: universal Laurent
  side identities, Fourier reconstruction, and exact nonsingular witnesses
  for the faithful algebraic extension used in the all-strict theorem.
- `python3 MinimalConstruction/Proofs/verify_matching_bridge.py`: exact bridge
  to the paper's affine-minus matching and an exact strict seed satisfying
  every product guard on both branches in both directions.
- `python3 MinimalConstruction/Proofs/verify_tao_pairings.py`: universal
  fourth-moment flatness test, all 400 Tao corners, and all four pairings
  at each of its two strict corner classes.
- `python3 MinimalConstruction/Proofs/verify_all_corner_matching_witness.py`:
  outward open witness with a product-regular framing at every corner on
  all 72 generic presentations, covering both sheets and every root choice.
- `python3 MinimalConstruction/Proofs/verify_exceptional_matching.py`: exact
  matching at all 400 H_cross corners and an explicit strict corner.
- `python3 MinimalConstruction/Proofs/verify_critical_reduction.py`: exact
  complementary critical equations, including J=0 and the fixed-row
  twenty-corner sum coefficients. This does not prove global MC1.
- `python3 MinimalConstruction/Proofs/verify_fourier_critical.py`: all 400
  Fourier-family corners as exact Laurent identities, and equivalence
  witnesses for every zero-maximum parameter point. No imports from
  outside this folder are needed.
- `python3 MinimalConstruction/Proofs/verify_fourier_routing.py`: exact
  identities for the singular-minor and geometric-row-progression routes
  into the Fourier families. Their exhaustion arguments are written out.
- `python3 MinimalConstruction/Proofs/verify_critical_p7.py`: exact
  20-corner square sum, uniformly at least 768, for the p=7 endpoint
  strips classified in the accompanying proof.
- `python3 MinimalConstruction/Proofs/verify_critical_equicorrelation.py`:
  exact boundary products, cubics and mixed-corner factors for the other
  rational endpoint exclusion.
- `python3 MinimalConstruction/Proofs/verify_critical_square_sums.py`:
  all 43 moment identities on independent Laurent variables and complete
  regeneration of both critical-strip square-sum factorizations.
- `python3 MinimalConstruction/Proofs/verify_critical_scalar_classification.py`:
  exact Bernstein/Sturm sign classification, all interval endpoints and
  physical pole candidates, with no omitted denominator-zero case.
- `python3 MinimalConstruction/Proofs/verify_strict_corner_coverage.py`:
  the remaining algebra and irrationality bookkeeping for the global proof.
- `python3 MinimalConstruction/Proofs/verify_dossier.py`: all fifteen
  verifiers above, with input and output hashes in one replay receipt.

`interval_constructor.py` is the local arithmetic helper for the outward
witness; its source and hash provenance are recorded in its header.
The exploratory elimination work that preceded the critical-strip proofs (`research_*.py` and
`Research/`, including the historical plan `Research/CRITICAL_ROUTE.md`) was not a proof input and is
preserved at the git tag `archive-2026-10-17`.
The accepted, independently replayed implementation is now
`critical_moment_core.py` and `exact_rational.py`, with the checked
`critical_quartic.json` polynomial data. Its full domain proof is
[CRITICAL_STRIP_CLASSIFICATION.md](CRITICAL_STRIP_CLASSIFICATION.md).
Research snapshots are not used as proof inputs.

These are deliberately not registered in the root verify.py. Integration
and updates to external hash pins await review. Current receipts and the
complete changed-file report are retained within this folder.
