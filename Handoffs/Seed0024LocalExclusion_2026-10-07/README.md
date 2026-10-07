# A mathematical route for the 36 seed0024 boxes

We have a complete proposed analytic argument covering all 36 delegated boxes
in `RouteC/band/seed0024/seed_boxes38.jsonl` at commit `c885a39`.
An independent reviewer found no gap. Supporting parts have now been checked
in Lean, but **the full connected exclusion is not yet a Lean theorem**.
No numerical closure ledger is changed by this handoff.

**Concurrent supplier update:** commit `02e2615` now claims closure of these
same 36 boxes using an Arb cover in two Fourier-family parameters. We checked
that its exact ID set and geometry hash match ours. That route additionally
uses `PRACTICAL_LOCAL.tex`, which the supplier explicitly says still needs
independent review. Our analytic argument does not use that theorem or its
two-parameter cover. `SUPPLIER_RECONCILIATION.json` records this distinction;
we have not counted the new supplier receipt as Lean verification.

## What the argument does

Any hypothetical physical Hadamard in these boxes, with its indicated corner
maximal among all 400, must be within **3/100** of the Fourier matrix orbit in
the maximum-column projector operator metric. This is strictly inside the
supplier's stated **1/30** Fourier exclusion neighbourhood.

The route uses the nearly repeated first three entries of the second row:
orthogonality forces its last three entries close to minus one. The other
rows split into almost equilateral triples. Their orientations pair up into
a nearby exact Fourier-family matrix. Four exact corner witnesses then
force that family member close to an ordinary Fourier matrix.

This avoids the unproved global averaging lemma, the supplied numerical
R-cap table, and further subdivision of these 36 boxes. The proof also retains
singular corners and maximality ties. Its phase hypothesis imposes no
condition on the third row of the leading corner.

Read [PROPOSED_PROOF.md](PROPOSED_PROOF.md) for the full argument and exact
constants. The claimed estimate is

    distance(H, F6 orbit) < 1/75 + 1/60 = 3/100 < 1/30.

The metric estimate uses an explicitly exhibited row gauge. It does not
assume that transposition preserves the column-projector metric.

## Formal status

[STATUS.json](STATUS.json) is the machine-readable status. The checked pieces
include actual-matrix row identities, the complementary determinant bound,
the physical maximal-corner and witness implications, the literal polynomial
perturbation bound, actual equilateral phase lifts and antipodal midpoints,
exact finite input facts, and explicit six-component column overlaps.

Remaining obligations include assembling the physical orientation pairing,
the Fourier-family construction and phase rounding, its explicit Fourier
equivalence, and the final projector-distance and exclusion theorem.
The supplier's ClusterTube exclusion is a separate formal dependency; its
sources are pinned under `references/`. Its numerical campaign has not been
replayed or admitted as a Lean theorem by this handoff.

Consequently **this handoff adds zero fully Lean-closed boxes**. It supplies
an independently reviewed mathematical route and checked components, not a
proof of the full no-four-MUB theorem. Full global coverage and certificate
soundness remain additional obligations of that theorem.

## Exact inputs and checks

- The original file has 38 rows: 36 class0024 boxes plus IDs 6491830 and
  17434864, which the supplier already assigns to the separate class2442 route.
  `INPUT_BINDINGS.json` preserves all exact rational coordinates and the split.
- Every one of the 36 boxes satisfies, in direct or swapped order,
  `|theta_0| <= 2*77/100000`, `|theta_1| <= 77/100000`.
- The supplier's prose R-cap bound `1.6e-8` does not match its own table;
  the table reaches approximately `3.18838e-8`. This argument uses neither.
- `python3 verify_inventory.py` checks file digests, exact rational geometry,
  and the explicit non-closure status. It is an inventory check, not a proof
  checker for the mathematical argument.
- `python3 check_algebra.py` additionally needs SymPy. It checks exact
  polynomial identities, finite signs, permutations and rational margins.
  Those computations are research support; the Lean checks are separate.

The Lean source import closure is included in `lean/`. `lean-toolchain` and
`lakefile.toml` pin Lean and Mathlib. On a machine with the pinned toolchain
and dependencies, `lake build` checks the listed scoped modules. It does not
produce a complete exclusion theorem because that theorem is not yet in
the source. Foundation sources originate in the previously published
`Handoffs/PopeyeLeanCompletion_2026-10-06` packet at commit `3832737`.

Local successful check records and axiom outputs appear in `checks/`.
All reported checked declarations use only Lean's standard axioms. The
previously recorded Mathlib source/cache authenticity caveat is preserved:
these receipts are not evidence of a fresh full Mathlib rebuild.
