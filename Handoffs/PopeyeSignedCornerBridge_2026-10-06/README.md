# Physical signed-corner bridge — 6 October 2026

This additive handoff contains **48 new kernel-checked Lean theorems** connecting
the signed polynomial used by the numerical tests to actual order-six complex
Hadamard matrices. An independent review passes the scoped mathematical meaning,
native formula correspondence, and recorded source/checker receipts.

The main result says that the square of the signed quantity for a corner equals
the invariant of its complementary column corner. Consequently, when the
leading corner has positive invariant and is maximal among all 400 positional
corners, the absolute signed quantity is at most the square root of the leading
invariant. Maximality ties are included. The hypotheses are the actual matrix
conditions: unit entries and row Gram matrix `6 I`.

This proves a necessary inequality used in the radius argument. **It does not
prove any uniform-radius exclusion or the no-four-MUBs theorem.** The actual
chart, analytic estimates, native enclosure semantics, finite data and complete
physical coverage still require formal proofs. See the detailed independent
[review](review/REVIEW.txt) and the frozen [formalization record](lean/FORMALIZATION_PUBLIC.json).

The original 49-theorem packet remains unchanged in
[PopeyeRadiusAndLean_2026-10-06](../PopeyeRadiusAndLean_2026-10-06).
This packet uses its physical and normalization modules; the present review
does not independently re-review all 49 older declarations.

## Reproduction and provenance

All 48 new declarations have recorded axiom lists containing only `propext`,
`Classical.choice`, and `Quot.sound`. The successful checks used one thread,
a 2304 MiB Lean heap limit, a 2816 MiB process-tree limit, and an 8 GiB disk
reserve. The largest recorded check used approximately 2.15 GB of process-tree
memory. Compiler caches and toolchain binaries are not included.

The recorded Lean version is `4.33.0-rc2`, commit
`d8b18978322de05a8f3dba51ef03cf5461676c17`. The intended Mathlib revision is
`51e6992efd06126df61a496bebf8f49482a4e129`. The local Mathlib archive has no Git
metadata, so the independent reviewer could not authenticate it to that commit.
Use a verified checkout of the specified revision for independent reproduction;
the portable replay deliberately requires that checkout. See
[replay instructions](lean/README.md).

The phase-two source record pins the earlier `CentiradianComplete/PROOF.md`.
The newer radius-0.03 document has a different proof-document hash, while its
physical algebra and native interval header are byte-identical at the reviewed
pins. The independent review records both hashes. No historical source record
has been rewritten.

The frozen Lean packet still says independent review is pending. That historical
status is superseded only for the scoped claims by the additive review here.
The reviewer inspected successful receipts and exact source snapshots; it did
not run a second Lean compilation. The source-comparison Python is additional
research evidence, not a replacement for kernel checking.

No cluster job, proof ledger, factory admission, or full-theorem status is
changed by publishing this folder.
