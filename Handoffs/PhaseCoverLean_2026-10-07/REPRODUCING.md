# Replaying the source closure

The Lake project pins Lean 4.33.0-rc2 and Mathlib commit
`51e6992efd06126df61a496bebf8f49482a4e129`. Its 39 selected roots have the
199-module custom source closure listed in `SOURCE_INVENTORY.json`. No compiled
objects are shipped. The `LICENSE.mathlib` copy is retained for the included
Mathlib-derived compatibility sources.

Use a disposable copy of this packet for replay. First run the strict inventory
check, before creating local build products:

```sh
python3 verify_inventory.py
python3 replay_serial.py --plan
```

Install the toolchain from `lean-toolchain` with elan, then prepare the pinned
Lake dependencies. The usual cached-dependency setup is:

```sh
lake update
lake exe cache get
```

These setup commands may download several gigabytes. They are separate from the
bounded custom-module helper below. Keep at least 2 GiB free after dependency
setup. The helper refuses to proceed if Mathlib is absent; setup must complete
before custom replay. Cached dependencies retain the source/cache authenticity
caveat. Rebuilding all dependencies from source is a separate, larger validation
and has not been performed for this packet.

For serial custom-source elaboration on a POSIX system, use:

```sh
python3 replay_serial.py
```

The helper rechecks all immutable packet hashes and computes a topological order
from the recorded imports. It holds an exclusive packet-local lock and runs one
Lean process at a time with one Lean thread, a 2304 MiB Lean heap setting, a
2816 MiB process-tree RSS stop, and a 180-second wall limit per module. It also
checks the 2 GiB free-disk reserve while running. It stops at the first failed
module or guard and preserves its log and receipt in `.phase-cover-replay/`.
Objects go to Lake's usual `.lake/build/lib/lean/` directory. The guarded helper
itself has been checked in plan mode only; a complete clean source replay of this
assembled packet has **not** been run. Smaller bounds may be requested through
its command-line options; reaching a bound is not a mathematical failure or a
successful replay.

The pinned Lake configuration also describes the project for standard tooling.
An unguarded `lake build` may compile several modules concurrently, so use the
serial helper for a bounded replay. Even a successful custom-source replay does
not establish acceptance of the entire finite phase forest. That obligation is
still explicit in both concrete consumer theorems, and the sole included pilot
covers only phase-root ordinals 0 through 63.
