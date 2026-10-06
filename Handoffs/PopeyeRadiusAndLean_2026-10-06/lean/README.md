# Lean components for the corrected centiradian target

This first-wave packet has **49 kernel-checked theorems in seven modules** and a complete axiom audit. The only audited axioms are Lean's standard `propext`, `Classical.choice`, and `Quot.sound`.

**The physical radius-1/100 exclusion remains open.** `CentiradianExclusion` is a target definition. The packet proves actual Hadamard dephasing and complementary-Gram facts, an exhaustive side-row unit-pair chart with its nonzero guard, exact scalar majorant calculations, all-scale radial contraction, a reusable finite Taylor tail, and finite-cover composition. It does not claim that the native interval certificates have been checked in Lean. See `OUTBOX.md` for exact statements and remaining dependencies; independent semantic review and director admission are separate.

## Portable replay

Requirements:

- Lean `4.33.0-rc2`, commit `d8b18978322de05a8f3dba51ef03cf5461676c17`.
- A Mathlib Git checkout at `51e6992efd06126df61a496bebf8f49482a4e129`, with its compiled library and package cache already available. The replay script does not download or build dependencies.
- Python 3 on macOS or Linux, `ps` process monitoring, and at least 8 GiB free disk.

Run from any directory, replacing the three paths with local absolute paths:

```text
python3 /path/to/packet/replay_lean.py \
  --lean /path/to/lean-4.33.0-rc2/bin/lean \
  --mathlib /path/to/mathlib4 \
  --out /path/to/new-replay-output
```

The script checks the toolchain and all source hashes, serializes Lean checks, uses one Lean thread and a 2304 MiB heap, monitors process-tree RSS and time, and stops if free disk drops below 8 GiB. It compiles in dependency order and audits all 49 declarations. It accepts an optional per-module `--seconds` limit from 1 through 540; the default is 240. Sources are copied into new result folders, and stdout, stderr, exact commands and result receipts are retained.

The original successful proof checks used the project's existing serialized guard; their receipt hashes are in `FORMALIZATION_PUBLIC.json`. The portable runner is an additional distribution interface. It does not supply proof premises and does not change the theorem statements.

## Source modules

1. `CentiradianPhysical.lean`: actual physical matrix and target definitions, invariant gauge and complement facts.
2. `CentiradianNormalization.lean`: physical dephasing, corner-score and maximum preservation.
3. `CentiradianArithmetic.lean`: exact scalar identities and bounds for .01 and .025, under visible analytic premises.
4. `CentiradianRadial.lean`: attained sup-radius contraction and radial-tail reduction.
5. `CentiradianTaylor.lean`: finite degree-sixteen exponential remainder with a factor-two tail.
6. `CentiradianUnitPair.lean`: exhaustive unit-circle pair and actual physical side-row binding.
7. `CentiradianCover.lean`: closed-box bisection and finite-cover soundness.
8. `CentiradianAudit.lean`: imports and audits every theorem above.

`PORTABLE_SOURCE_MANIFEST.json` lists the eight exact source hashes and 49 declaration names. Failed local development checks are not proof evidence. No global no-four-MUB result, radius-.025 exclusion, or radius-.1 exclusion is asserted here.
