# Popeye radius certificate and Lean progress — 6 October 2026

**The radius 1/40 = 0.025 supplied certificate passed a complete fresh numerical
replay. Forty-nine supporting Lean theorems passed kernel checking. The full
uniform-radius theorem and the full no-four-MUB theorem are not yet proved in
Lean.** This folder is an additive, reproducible handoff for the other research
worker. It does not change the repository's existing proof ledger.

| Result | Status at this snapshot | Evidence |
|---|---|---|
| Uniform seed radius 0.025 | Complete fresh native replay: 140,104 global terminals, 104 local inequalities; exact maximum local score below 0.87 | [Replay](radius_work/RADIUS025_ORIGINAL_FULL_REPLAY.json), [analytic review](reviews/RADIUS025_ANALYTIC_AND_SCALAR_REVIEW.json), [independent cover](reviews/RADIUS025_INDEPENDENT_COVER.json) |
| Arithmetic-setting guard | Found and repaired a subnormal/flush-to-zero guard defect; the successful original replay used normal arithmetic | [Reproduction](radius_work/RADIUS025_ARM_GUARD_TESTS.json), [patch](radius_work/RADIUS025_GUARD_REPAIR.diff), [repaired package](radius025/README.md) |
| Lean components | 49 checked theorems in seven modules; only `propext`, `Classical.choice`, `Quot.sound`; independent semantic review pending | [Scope and open obligations](lean/OUTBOX.md), [formalization record](lean/FORMALIZATION_RECORD.json), [audit transcript](lean/receipts/check-audit-01/stdout.log) |
| Sharper scalar bounds | 2,083 Laurent terms and 4,538 nonzero Taylor coefficients regenerated; independent paired-cosine check passes | [Derivation](radius_work/LAURENT_TAYLOR_DERIVATION.md), [independent review](reviews/LAURENT_TAYLOR_INDEPENDENT_REVIEW.json) |
| Larger radii | Local inequalities pass at 0.028 and 0.03; complete global cover at 0.03 is still being refined. Neither radius is an accepted uniform exclusion here | [Stable research snapshot](radius_work/PUBLIC_HANDOFF.md) |
| Cluster implementation | Immutable release with exact 0.025 scheduling hold, parent inheritance, cache repair, and 163 passing local tests. Production deployment is separate | [Release ledger](cluster/HANDOFF_2311ffbb8363.json), [offline checks](cluster/OFFLINE_VERIFICATION_2311ffbb8363.json) |

The analytic-review JSON is a historical pre-replay review: its “native replay
pending” field is superseded by the fresh full-replay receipt linked above.
The repaired native package has the same mathematical arithmetic and enclosure
code, but has **not** received its own separate complete replay at this snapshot.
Its copied `results/` files are supplier history, not fresh local receipts.

## Exact mathematical scope

The claim concerns a physical order-six complex Hadamard with unit entries and
`H H* = 6 I`, whose selected dephased 3-by-3 corner has **R > 0 and is maximal
among all 400 positional corners**, including maximality ties. The selected
corner's four phase angles must lie in the punctured **circular sup-norm** ball
of radius 1/40 around `(2,4,4,2) pi/3` or `(4,2,2,4) pi/3`. Such a selected
corner is excluded by the reviewed computer-assisted argument. At the exact
seed, R = 0, so the strict case is separately impossible.

This does not exclude arbitrary Hadamards near the seed without the maximality
condition. It does not cover other stationary classes or prove the global
classification/coverage reduction. There is no conversion to matrix radius.

The Lean target currently named `CentiradianExclusion` is still a **definition
of a proposition at radius 1/100**, not a proved theorem. Some checked arithmetic
lemmas already cover 1/40. The distinction is explicit in the declaration audit.

## Reproduce the checks

From this folder, check every distributed byte and the exact independent finite
cover and Laurent tables:

```sh
python3 -B verify_handoff.py
python3 -B reviews/replay_cover.py
python3 -B reviews/replay_laurent_independently.py
```

Python 3.11+ is sufficient for these checks. They do not constitute a Lean proof.
The original supplier ZIP is included under `sources/`, SHA-256
`bd12e396b6ad8b7d395e3d7ca726638a930e56f96c90e4757c58ab5bc1aef19d`.
The repaired derivative is a complete portable native verifier with its own
manifest, proof text, exact data and inputs. A full fresh replay requires a
C++17 compiler and no third-party Python package:

```sh
python3 -B radius025/verify.py --workers 1 --output fresh-radius025.json
```

Use normal IEEE arithmetic, never fast-math or Python `-O`. One worker limits
memory use. The original complete local replay took approximately 1,282 seconds
and peaked at 318 MB process-tree RSS on an ARM64 Mac with GCC 15; other machines
will differ. See [the native interface](radius025/README.md) to apply the complete
certificate to exact rational whole-box records.

The Lean source needs Lean `4.33.0-rc2` and Mathlib commit
`51e6992efd06126df61a496bebf8f49482a4e129`. Toolchains, cached `.olean` files,
cluster checkpoints and credentials are intentionally not included. The Lean
replay instructions describe how to rebuild the checked modules on another
computer. Historical receipts retain their original source paths for provenance.

## Most useful next contributions

1. Complete the **global** 0.03 phase cover. Passing the 104 local inequalities
   alone cannot increase the accepted uniform radius.
2. Improve local contraction/Taylor enclosures beyond 0.03. Simple fourth-order
   trials fail at 0.035 and above; these are enclosure failures, not physical
   counterexamples. The sharper exact scalar bound and the draft physical chart
   estimates through 0.1 are included for reuse.
3. Bind the physical signed determinant, the exact Laurent coefficient table,
   physical chart guards and symmetries, reference data, and actual numerical
   enclosures into the checked Lean lemmas. Then instantiate the finite cover
   and assemble the uniform theorem. [The complete backlog](lean/OUTBOX.md)
   separates these from already checked generic implications.
4. Reconcile every accepted certificate against exact original boxes and the
   full global coverage ledger. A uniform radius 0.071 would contain the original
   ring, but this alone does not discharge other export2 classes or missing
   coordinates. Those remain separate obligations.

## Cluster hold

At the user's request, hold every original parent box intersecting or touching
either closed 1/40 seed ball. Run only parents proved wholly outside **both**
balls. This is a scheduling hold, not proof credit: keep held tasks, descendants,
checkpoints and outside fragments. The supplied release also ensures validation
and benchmark probes inherit the original parent's hold. No live SSH details or
authorization to clear any production guard is conveyed by this handoff.

The release archive is source SHA
`2311ffbb8363c9001d995e0386732ff9f3da744080cdb128310211348f6a89fc`, archive SHA
`6b31ba294ebbcb16a360b15ace2315955380b6dfe653ae904935f50baade9918`.
Use the release's isolated outside-only validation before any deployment;
publication does not mean it has been deployed.

