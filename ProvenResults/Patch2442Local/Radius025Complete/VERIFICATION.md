# Verification chronology and actual costs

## Complete accepting GCC invocation

The complete public verifier was run with freshly compiled engines. Its retained
receipt is `results/FULL_VERIFICATION.json`, with status **PASS_UNIFORM_BALL**.
No stored success label or numerical endpoint replaced recomputation.

| Check | Recorded result |
|---|---:|
| Exact rational seed radius | 1/40 |
| Verified global terminal boxes | 140,104 |
| Unresolved terminal boxes | 0 |
| Degree-two terminals | 72,481 |
| Degree-four terminals | 67,623 |
| Local inequalities | 104 |
| Maximum local score | 7833210364118525/9007199254740992 |
| Full verification wall seconds | 597.720102126 |
| Global replay wall seconds | 571.3273927549999 |
| Summed native degree-two worker CPU seconds | 348.1364 |
| Summed native degree-four worker CPU seconds | 1910.086 |
| Local native CPU seconds | 6.75755 |
| Fresh compiler-invocation wall seconds, summed | 10.55601442999955 |

These are observed verification costs, not estimates for future runs and not the
cost of all exploratory work. Four worker processes were used. Compiler details
and the actual source paths and flags are in the receipt.

## Earlier component and construction records

The initial algebra-and-local run is retained as `results/COMPONENT_CHECK.json`.
It is explicitly **not** a full-ball certificate. The adaptive cover construction
has status `GLOBAL_COMPONENT_PASS` in `results/COVER_CONSTRUCTION.json`; it is
also a component record, not a replacement for the full accepting invocation.
`DEVELOPMENT_RECORD.md` describes which exploratory ideas are not in the final
accepting code. The public verifier recomputes the whole mixed-degree cover.

## Manifest and clean-extraction chronology

The full GCC receipt records the manifest present when that run began. After
the receipt was frozen, the final package manifest additionally pins this
receipt and the final documentation. These final documentation changes do not
alter any accepting expression, parameter, data file or arithmetic routine.

A final archive is extracted into a new directory for another complete replay,
using Clang and the eight positive whole-box examples. That clean-extraction
receipt is supplied **outside this module's own manifest**, under `Verification/`
in the delivery ZIP, to avoid a circular hash dependency on its own bytes. Its
recorded module-manifest hash must equal the manifest in this directory. A
Clang build omits GCC's `-fno-tree-vrp` and retains the strict floating-point
flags and all runtime arithmetic guards. Two compiler builds of the same
verifier are not two independently designed proofs.

A verification receipt must be read together with `PROOF.md`, the analytic
remainder rules and the accepting implementation. The numerical execution model
is an explicit trust boundary. No proof-assistant formalization or independent
peer review is claimed.
