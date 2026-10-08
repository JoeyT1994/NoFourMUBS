# Reproduction boundary

Use Lean 4.33.0-rc2, commit d8b18978322de05a8f3dba51ef03cf5461676c17,
and Mathlib revision 51e6992efd06126df61a496bebf8f49482a4e129. The matching external
package pins are retained in `mathlib-lake-manifest.json`; obtain those packages
separately. `LICENSE.mathlib` retains the dependency's license notice.

`python3 verify_inventory.py` is a read-only integrity check. It verifies the exact
file set, SHA256 digests and sizes, custom source import closure, replay order,
selected source/receipt/object bindings, independent review projections and the
50 selected printed axiom reports. It neither checks Lean proofs nor authenticates
the omitted original receipts or compiled objects from their digests alone.

For a fresh Lean replay, prepare the pinned external dependencies, then compile
the unchanged sources in `REPLAY_PLAN.json` order to a separate output directory.
Put that output directory before other custom-module paths so imports resolve to
the newly replayed objects. Do not replace source files or reuse an unpinned
alternate module. These sources use ordinary literal imports, with no dynamic
import edges.

Use the existing serialized guard: one Lean job, 2304 MiB heap, 2816 MiB process
tree RSS stop, 180 seconds per job, and a 2 GiB free disk reserve. Preserve failed
and successful source/receipt evidence. Require successful compilation of every
custom module, inspect each selected axiom root, and independently review any
source change. The only allowed selected axioms are propext, Classical.choice and
Quot.sound. The plan is not a claim that a clean replay has been performed.

The inherited Mathlib source/cache authenticity caveat remains. The publication
collection reused existing successful evidence and performed no compilation.
