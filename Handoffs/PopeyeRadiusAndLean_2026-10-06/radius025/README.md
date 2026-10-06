> Guard-repaired derivative, 2026-10-06. Copied `results/` are historical supplied receipts.
> Fresh local replay evidence is recorded separately under the campaign radius directory.

# Uniform stationary-F3 exclusion at radius 1/40

The verified uniform seed-angle radius is **1/40 = 0.025 radians**, at both
stationary seeds `(2,4,4,2) pi/3` and `(4,2,2,4) pi/3`. Maximality ties are
allowed. This is a full punctured-ball result, not a finite-shell certificate.

The new proof uses a larger-domain invariant majorant, exact-dyadic rectangular
8-by-94 local residual combinations, and a complete mixed-degree global cover.
The fourth-order global checks replace unresolved second-order enclosures.
A positive whole-box response is possible only after the complete proof replay.

## Verify

Python 3.11 or newer and a C++17 compiler are required. No Python third-party
package or optimization solver is needed for proof verification. GCC and Clang
are supported; the verifier omits GCC's `-fno-tree-vrp` when invoking Clang while
retaining strict floating-point flags. It checks the numerical execution guards
and recompiles all accepting engines on every invocation. Do not use Python `-O`.

```bash
sha256sum -c MANIFEST.sha256
python -B verify.py --output work/full_replay.json --workers 4
```

The only successful full-proof status is `PASS_UNIFORM_BALL`. The receipt must
be read with `PROOF.md` and the correctness arguments for the accepting code;
it is not a substitute for those arguments. This is a computer-assisted proof,
not a Lean formalization or an independent audit of the entire MUB campaign.

## Certify whole boxes

```bash
python -B verify.py --boxes LIST.jsonl.gz --output work/box_results.jsonl.gz --workers 4
```

Each input record contains `id`, and arrays `centers` and `radii` of four exact
rational **strings**, in absolute seed-angle radians. Plain JSONL and gzip JSONL
are supported. Binary floating JSON coordinates are rejected. The entire closed
box must lie in one of the two punctured balls; unresolved membership, outside
boxes and seed-touching boxes are nonaccepting. Any nonaccepted row causes a
nonzero process exit code.

The explicit `seed_radius_units` format represents
`theta_j = theta_seed,j + 2*pi*lifts_j + (1/40)*(centers_j +/- radii_j)`.
It is not silently interpreted as absolute radians. This format allows exact
outer-boundary checks without replacing pi by a decimal approximation.

```bash
python -B verify.py --boxes examples/inside.jsonl --output work/inside.jsonl --workers 4
```

All eight positive examples lie wholly outside the previous radius-1/100 balls.
They test the interface, not global coverage. The new global proof is replayed
before these boxes are accepted.

## Component-only check

```bash
python -B verify.py --algebra-and-local-only --output work/components.json
```

This deliberately reports `COMPONENTS_ONLY_NOT_A_UNIFORM_CERTIFICATE` and cannot
be combined with `--boxes`. It is not a successful check of the global cover.

## Contents and scope

`PROOF.md` gives the complete analytic reductions and finite obligations.
`data/dense_preconditioners.json` contains the 9,776 exact dyadic local entries;
their native encoding and all 104 row inequalities are rechecked.
`data/phase_cover.jsonl.gz` contains the complete closed cover with an explicit
Taylor degree for every terminal. Both the main cover check and an independent
binary-trie check reject missing branches. The stored degree selects an
appropriate enclosure algorithm, never an assumed successful predicate.

This scoped derivative repairs only the unsupported-subnormal arithmetic guard
in `interval_model.hpp`; see `GUARD_REPAIR.json`. The interval operations and
`taylor_model.hpp` are unchanged from the supplied radius-1/40 package. The unused legacy `geometry.py` with its incorrect radius metadata
has been removed. `box_interface.py` consistently reports `1/40`.

`PREVIOUS_PROOF.md` and `BASELINE_AUDIT.md` are historical provenance, not proofs
of the enlarged radius. The new argument does not assume MC1--MC4, a global
all-critical classification, an effective-minimum cutoff, or an older inner
ball. The complementary-square identity is regenerated algebraically.

This package does **not** certify radius 0.0475 or 0.06 and does not independently
replay the remainder of the global no-four-MUBs campaign. Existing proof modules
are not overwritten. Actual completed verification counts, hashes and timings
are recorded in `results/FULL_VERIFICATION.json` and `VERIFICATION.md`.

The complete fresh GCC run passed all 140,104 terminals and all 104 local
inequalities. Its exact maximum local score is below 87/100. The additional
clean-extraction compiler replay is retained under `Verification/` in the
delivery ZIP, separately from this module to avoid a self-referential manifest.
