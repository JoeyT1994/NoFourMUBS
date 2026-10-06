# Uniform stationary-F3 exclusion: radius 1/40

**Verified radius: 1/40 = 0.025 radians**, a factor 5/2 larger than the audited
radius 1/100. Both stationary seeds `(2,4,4,2) pi/3` and `(4,2,2,4) pi/3` are
covered, including the closed outer boundary. The theorem concerns physical
order-six unit-entry Hadamards whose selected corner satisfies
`0 < R(E) = max_400 R(H_corner)`. Maximality ties are allowed.

## Main module

Start with `ProvenResults/Patch2442Local/Radius025Complete/PROOF.md` and `README.md`.
The module is self-contained for verification and installs additively; older
proof packages are not replaced. All code, finite data, exact reference checks,
physical controls, examples, provenance and a full GCC receipt are included.

From that module directory:

```bash
sha256sum -c MANIFEST.sha256
python -B verify.py --output work/replay.json --workers 4
```

For boxes, use `--boxes LIST.jsonl.gz --output work/results.jsonl.gz`. Every box
invocation first replays the entire uniform proof. The documented component-only
mode is deliberately not a uniform-ball certificate.

## Final verification

The complete proof passed fresh GCC and clean-extraction Clang runs. Both checked
**140,104 terminal boxes**, **104 local inequalities**, and all **9,776 exact local
coefficient bindings**, with zero unresolved terminals. The worst local score is
`7833210364118525/9007199254740992 < 87/100 < 1`.

See `Verification/SUMMARY.json` and `Verification/CLEAN_CLANG_REPLAY.json`.
The latter records the exact final module-manifest hash. Outer files have their
own `ARCHIVE_MANIFEST.sha256`, which can be checked from this ZIP's extraction root.
The CRC of every ZIP member and every file digest were checked when packaging.

The proof uses a larger-radius Gram majorant, 8-by-94 fixed dyadic local residual
combinations, and a complete mixed-degree phase cover. The audited interval and
Taylor arithmetic headers are unchanged. It does not invoke MC1--MC4, a global
all-critical classification, an old confinement threshold, or a matrix/projector
exclusion tube. The complementary-corner polynomial identity is regenerated.

This is a computer-assisted proof under the stated numerical execution model,
not a Lean formalization or independent peer review. No uniform radius 0.0475 or
0.06, optimality of 1/40, or independent verification of the global MUB campaign
is asserted. The former audit's inactive stale-radius helper is removed.
