# Reproducing the certificate

## Requirements

Use Linux or a comparable Unix environment with Python 3.10 or later.
The exact Python checks use only the standard library. A full search also
requires a C++17 compiler supporting signed `__int128`; the retained build
used GCC 13.3.0 on x86-64 Linux. No network access or numerical solver is
needed for either mode. Run ordinary Python: optimized modes are rejected
because the exact helper programs use assertions as proof gates.

## Fresh exact gates and the retained completed search

From the extracted bundle directory, run:

```sh
python3 verify_all.py --output /tmp/dita-exact-replay
```

Choose an output directory that does not already exist. Omitting `--output`
creates a fresh temporary directory and prints its location. The command:

1. Checks the packaged file manifest.
2. Copies the exact inputs and programs to an isolated directory, removes
   their prior receipts, and freshly reruns the seven exact entry points.
3. Requires every regenerated exact receipt to equal the retained result.
4. Checks the actual completed full-search record: exit zero, the unique
   final completion line, closed-tree accounting, all 120 printed template
   boxes, and source/header/input/executable hashes.
5. Checks the independently reproduced binary's association with the same
   source, header, and input.

The expected final marker is:

```text
PASS_EXACT_GATES_AND_RETAINED_FULL_RUN
```

This mode freshly verifies the finite gates and the integrity of the
retained successful search. It does not process the five million search
boxes again. Its receipt explicitly records that distinction. It writes
all new files in the requested fresh directory, leaving the extracted
proof inputs unchanged.

The seven exact entry points cover the algebraic rays and graph, exact
overlap gaps and minor census, atlas/template association, static arithmetic
input bounds, rational-template graph, tube/graph binding, and the Laurent
identity for the Diţă parameter interval. The source and arithmetic audits
remain written mathematical proofs, bound to their reviewed bytes.

## A fresh whole-torus search

For independent regeneration of the exhaustive cover, run:

```sh
python3 verify_all.py --full-cover --output /tmp/dita-full-replay
```

This performs the preceding checks, compiles a fresh executable from the
audited source, and invokes it with the full-search mode. It starts from
the full shifted five-dimensional phase cube and reads no saved search
checkpoint. It never substitutes the template-only or local-root check.

The original run took approximately 12 minutes. Progress lines are printed
during execution. Runtime and the number of boxes may vary with the
compiler's preconditioner proposals; all acceptance and exclusion decisions
remain rigorous integer interval calculations. A successful fresh run must
empty the stack, satisfy the tree identities, write a complete coverage
record, and exit zero. Its expected final aggregate marker is:

```text
PASS_FRESH_FULL_CERTIFICATE
```

The default resource guard allows 1 GiB of address space and 3600 CPU
seconds for the search. `--cpu-limit` changes the CPU guard, and `--compiler`
selects the C++ compiler. A guard failure or unresolved box is reported as
incomplete and cannot produce the successful aggregate marker.

The build flags are:

```text
-O3 -std=c++17 -fno-fast-math -ffp-contract=off -ftrapv -Wall -Wextra
```

The retained Linux executable is included to preserve the original run's
build hash. The default replay hashes it without executing it; the full
replay compiles and executes a new binary.

## Evidence delivered

The original completed run is in `cover/full_tube_r1e4/`:

| File | Scope |
|---|---|
| `RUN_RECEIPT.json` | Actual exit, duration, build flags, and input/build hashes |
| `tube_coverage.json` | Complete-tree counters and arithmetic endpoint maximum |
| `template_boxes.jsonl` | The 120 exact dyadic terminal template domains |
| `stdout.txt`, `stderr.txt` | Search progress, successful final marker, and empty error stream |

The package also includes independent algebra, arithmetic and regional
chain audits. It is a computer-assisted mathematical proof with readable
source and a reproducible finite search. It is not a formal proof checked
by a theorem-prover kernel. The distinction does not turn numerical seed
generation or a retained receipt alone into a theorem: the proof uses the
exact data bindings, the sound enclosure algorithm, completed exhaustive
search, and strict finite compatibility inequalities together.

The regional result makes no claim of Global F or Global F′, a constant
number of physical rays, a constant affine algebra rank, or a complex
Nullstellensatz identity. Those claims are not part of any successful
marker in this bundle.
