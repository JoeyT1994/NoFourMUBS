# Typed phase-tape refinement

`WitnessTapeRefinement.lean` proves that acceptance by the supplied-witness
checker implies acceptance by the existing byte-tape checker. Its eleven
declarations passed a guarded Lean check and an independent scoped review.
The packet contains the unchanged custom source dependency closure, source and
object hashes from the recorded checks, the narrowed successful receipt, and
review evidence. It contains no compiled objects or concrete forest payload.

The main theorem retains three explicit `LeafRefinement` implications:
accepted midpoint leaves imply rejection by the target checker, accepted
endpoint leaves with a checked floor witness imply target rejection, and
accepted inclusion leaves imply target inclusion. The theorem preserves the
actual cell conversion, all 32 children in order, validity and split-level
gates, exact byte values, and complete tape consumption.

The coverage corollaries additionally require the target checker's `LeafSound`,
accepted actual tapes, and coverage of every original root. This component
accepts no actual tape or root and closes no physical box. It does not establish
the complete forest or the no-four-MUBs theorem.

`FORMALIZATION_RECORD.json` is the unchanged author record written before the
independent review. `REVIEW_ADDENDUM.json` records the subsequent review. The
portable review in `reviews/ROOT_INDEPENDENT_REVIEW.json` removes only the
original review's three machine-local resolved paths and identifies the
original review by SHA-256. The addendum's review hash refers to that preserved
original; `MANIFEST.json` pins the portable projection. Neither the original
record nor the original review was silently rewritten.

## Verification and reproduction

Run `python3 verify_inventory.py` with Python 3.11 or later to check file hashes,
custom import closure and order, selected source and receipt consistency,
standard-axiom reports, scope fields, and pinned Lake configuration. This is an
inventory check; it does not execute Lean or validate its kernel independently.

The selected successful check used Lean 4.33.0-rc2 with `-j1 -M2304 -T2000000`,
a 180-second wall limit, a 2 GiB free-disk reserve, and a 2816 MiB process-tree
RSS stop. The source check took about 61.44 seconds and peaked at 2,052,407,296
bytes of process-tree RSS. Its printed axiom reports use only `propext`,
`Classical.choice`, and `Quot.sound`. The two earlier failed attempts remain in
the research archive and confer no proof credit.

`lean-toolchain` and `lakefile.toml` pin Lean and Mathlib. The custom modules are
listed in dependency order by `SOURCE_INVENTORY.json`. A fresh reproduction
requires the pinned external dependencies and serialized compilation of that
source closure before the selected root. Preserve the stated resource limits
when attempting such a reproduction. No clean rebuild was performed for this
packet: the recorded guarded checks used existing Lean, Mathlib, and custom
compiled dependencies. The inherited source/cache-authenticity caveat remains
explicit. The inventory does not turn a matching object hash into a claim of
an independently rebuilt cache.

Sources imported from Mathlib retain their existing notices; `LICENSE.mathlib`
is included. The package builder and its collection audit remain in the
research archive outside this immutable source packet.
