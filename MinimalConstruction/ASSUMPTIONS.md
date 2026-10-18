# Accepted reconstruction inputs

These statements are accepted as proved elsewhere, at the user's explicit
instruction. This folder specifies and evaluates the construction; it does
not independently certify these global input theorems.

| Input | Statement used here |
|---|---|
| Strict-corner coverage | Every order-six complex Hadamard other than F6 has a dephased positional 3-by-3 corner with the reconstruction's `R>0`. This does not say every corner is strict. |
| Strict side/completion exhaustion | At a strict corner the two normalized side orbits and their finite pairings recover all framed completions. Both matched pairings are flat; exceptional Tao completions require the optional fixed-corner enumeration. |
| Positive-sheet coverage | A non-F6, non-Tao class is recovered by a matched pairing. Passing to the opposite corner reverses its sheet and retains strictness, yielding the positive-sheet surjection. Opposite sheets at the original seeds need not be equivalent. |
| Side formulas and strict-domain denominators | The side recipe in `RECONSTRUCTION.md` has phase entries, the prescribed Gram matrix, and nonvanishing divisors on `R>0`; root choices act through the stated side permutations. |

The working statement is precisely the one-page PDF's scope: `H_+(a,b,c,d)`
for four unit phases and `R>0` covers all non-F6, non-Tao classes up to
Hadamard equivalence. The map is not injective.

Historical sources named in the reconstruction are the collaborator's
`COMPREHENSIVE_HANDOFF.md`, `Hadamard6_Single_Sheet_Conjugate_Fourier_Form.md`,
and `Hadamard6_Unitary_Core_Phase_Gate_Form.md`, with the corrected guards.
These are provenance references, not additional working coordinate systems or
included proof packets. The statements above are retained so the current
specification can be read without those files.

The classification paper and its included certificates are a separate input.
Do not describe its certificate package as independently verifying all of the
later strict-corner and sheet-reversal claims.

## Proof dossier added 30 September 2026

The statements above are preserved verbatim. Their proof audit now lives in
[Proofs/README.md](Proofs/README.md), with exact campaign obligations MC1–MC5
and the permitted imports from ClassificationPaper. Historical acceptance
is not itself a completed proof relative to those imports.

- Strict-corner coverage (MC1): proved, without [CT], in
  [Proofs/STRICT_CORNER_COVERAGE.md](Proofs/STRICT_CORNER_COVERAGE.md) (nonzero-J strips by return K) — `PROOF.md` Theorem 2.5.
- Strict side/completion exhaustion and Tao exceptions (MC2, MC4): proved; in the current proof they are
  Theorems 2.2–2.4 of `PROOF.md`.
- Positive-sheet coverage: [opposite-corner transport](Proofs/OPPOSITE_CORNER.md)
  is proved with explicit matching and uniqueness hypotheses. MC5 records
  the additional fixed-seed obligation used by the campaign and Tao's role.
- Side formulas and denominators: [strict-domain positivity and denominator
  identities](Proofs/STRICT_DOMAIN.md) are proved on all R>0; the remaining
  side identities and exact permutation claims are tracked under MC3.

Recovered sources are copied verbatim under Proofs/provenance/Recovered/ with a hash
manifest. Its verifiers are replayed by the root `verify.py` (job `mc_reconstruction_proofs`). Appending this section changes this file's hash; external
pins must be updated after review using the changed-file report.

### Further proof progress, 30 September 2026

The earlier status entries above are retained verbatim as an audit trail.
[Proofs/SIDE_FIBER.md](Proofs/SIDE_FIBER.md) now proves MC2 and MC3:
exactly two normalized side orbits under column permutations, exhaustive
finite pairing, and the full side recipe with nonzero prescribed divisors
on every R>0 seed. [Proofs/MATCHED_FLATNESS.md](Proofs/MATCHED_FLATNESS.md)
proves both matched completions flat on that entire domain.
[Proofs/TAO_PAIRINGS.md](Proofs/TAO_PAIRINGS.md) proves the exact Tao
corner census and its three-versus-one pairing counts. Opposite-corner
transport and the campaign's fixed-seed conjugation step now have their
side-uniqueness and matched-flatness hypotheses discharged.

Two global obligations remain open: strict-corner existence for every
non-F6 class, and the converse that every nonmatched strict completion
is one of the Tao exceptions. Consequently the complete positive-sheet
coverage theorem is not yet proved by this dossier.

### Nonmatched converse completed, 30 September 2026

[Proofs/NONMATCHED_EXCEPTIONS.md](Proofs/NONMATCHED_EXCEPTIONS.md) now
proves that every nonmatched strict completion is Tao. It explicitly
imports the necessary affine-minus matching statement from the paragraph
before ClassificationPaper's `eq:affine-minus-matching-main`, together
with the paper's global product-regular reach and admissibility lemma.
An outward all-corner open witness and an exact H_cross census support
the algebraic propagation argument, including product ramification.
The strict seed itself is also proved invertible in STRICT_DOMAIN.md.

Thus MC2, MC3 and MC4 are proved relative to the listed paper inputs.
The remaining global obligation is MC1: every non-F6 class must have
a strict corner. Full positive-sheet coverage remains conditional on
that one obligation. Earlier status statements are retained verbatim.

### Global reconstruction inputs proved, 1 October 2026

All preceding statements and historical status entries are retained verbatim.
[Proofs/STRICT_CORNER_COVERAGE.md](Proofs/STRICT_CORNER_COVERAGE.md) now
proves MC1 exactly: every non-F6 equivalence class, including Tao, has a
strict positional corner. The all-critical locus is precisely F6.

Together with [the side-fiber theorem](Proofs/SIDE_FIBER.md),
[matched flatness](Proofs/MATCHED_FLATNESS.md),
[the nonmatched converse](Proofs/NONMATCHED_EXCEPTIONS.md), and
[the Tao census](Proofs/TAO_PAIRINGS.md), this discharges every input
in the table above relative to the explicitly identified ClassificationPaper
results. [Opposite-corner and fixed-seed sheet transport](Proofs/OPPOSITE_CORNER.md)
therefore gives the stated positive-sheet coverage and the exact campaign
sheet step; Tao remains separately accounted for by its exceptional pairings.

The local replay command is `python3 MinimalConstruction/Proofs/verify_dossier.py`.
[Proofs/COMPLETION_AUDIT.md](Proofs/provenance/COMPLETION_AUDIT.md) maps the requirements
to proofs and verifiers. [Proofs/CHANGE_REPORT.md](Proofs/provenance/CHANGE_REPORT.md)
lists every changed file and the new hashes. The dossier is part of the root `verify.py`.
