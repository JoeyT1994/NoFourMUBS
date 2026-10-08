# Phase-cover proof progress

This packet combines independently reviewed Lean components and one successful
actual finite replay: `RejectionPilot64Compact` rejects the first 64 closed phase
root cells, with ordinals 0 through 63. These are phase cells, not physical
supplier boxes. The packet closes **zero** of the 36 physical boxes and does not
establish the global no-four-MUB theorem.

The included components connect actual rays to the phase grid, bind midpoint and
endpoint indices, prove integer rejection and projector-ball inclusion, and
provide square-based checker refinements. The 229 proved base table entries extend
by proved symmetry to the queried lookup values. Table accuracy is required only
at the relevant indices divisible by 120; the concrete leaf checks enforce level
at most four.

The two reviewed concrete compositions prove soundness of the original and
square-based leaf predicates with the proved compact table. The square variant
uses square-only midpoint rejection and centre labels, with the original endpoint
check as a fallback. Acceptance by one checker does not establish acceptance by
the other; each requires its own finite replay. The tape and root-index theorems connect successful
finite acceptance to phase coverage and then to the retained physical domain.
Acceptance of the **entire** required phase cover remains an explicit obligation.
The successful 64-root pilot does not discharge that obligation.

There are 206 selected audited declarations: the 203-declaration component
collection plus three theorems for the square-based concrete composition. This is
a scoped inventory count, not 206 independent physical results. Shared
dependencies appear once in the 199-module custom source closure.

Only the additive `NoInit` label variants are included. They retain the reviewed
logical definitions and statements while preventing an unnecessary closed
executable initializer. Their original counterparts are excluded to avoid duplicate
global declarations. The original failed or unreviewed concrete modules, other
pilots, full candidate forest payload, compiled objects, and operational metadata
are not included.

`lean/` contains one custom Lean source closure. `SOURCE_INVENTORY.json` binds each
module to its source hash, imports, and the object hashes used by the recorded
checks. `receipts/` contains narrow projections of successful source checks and
their standard-axiom audits. `reviews/` pins the independent reviews for the
selected sources; the original records are identified by exact hashes. The
projections are not represented as byte-for-byte copies of those original records.
`STATUS.json` gives the precise scope and counts, and `MANIFEST.json` hashes every
included file except the manifest itself.

The successful checks used Lean 4.33.0-rc2 and mathlib revision
`51e6992efd06126df61a496bebf8f49482a4e129`, with recorded cached dependencies. The
source inventory and import bindings do not constitute a fresh clean rebuild or
prove cache authenticity. The existing kernel/source-cache caveat remains
unchanged. Only `propext`, `Classical.choice`, and `Quot.sound` occur in the selected
declaration audits.

The pinned `lakefile.toml`, `lean-toolchain`, and `LICENSE.mathlib` are included.
See `REPRODUCING.md` for bounded, serial replay instructions and the distinction
between cached dependencies and a clean source rebuild. The replay helper was
checked in plan mode only.

Run `python3 verify_inventory.py` (Python 3.11 or later) inside this directory to verify file hashes,
custom-import closure, receipt/review bindings, module conflicts, prohibited
payloads, and the stated scope. This inventory verification does not run Lean and
does not provide new mathematical proof credit.
