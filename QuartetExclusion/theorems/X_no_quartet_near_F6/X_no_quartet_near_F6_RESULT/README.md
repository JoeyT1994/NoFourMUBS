# X — no quartet edge throughout the radius-0.15 Fourier neighbourhood

**Result: PROVED with CERTIFIED finite steps.** Every complex Hadamard class
at horizontal phase quotient distance at most `3/20 = 0.15` from `F6` is
quartet-free. The metric is the unnormalized Frobenius norm of horizontal
phase increments in radians, with no division by 6.

The stronger result is quantitative: for every orthonormal basis
`K=(k_1,...,k_6)` unbiased to `I` and `H/sqrt(6)`, and every unit vector `v`
unbiased to those same two bases,

`min_j |<k_j,v>|^2 <= 8/75 = 1/6 - 3/50`.

## Replay

From this extracted directory, run:

```sh
python3 -I scripts/verify_all.py
```

Python 3.10 or newer and its standard library are sufficient. No installation,
network access, NumPy, SciPy, mpmath, or Arb is required. Do not use `python -O`.
The complete replay takes roughly two to three minutes in the construction
environment. Timing is informational; no time limit determines acceptance.

The driver verifies file digests and then recomputes:

1. The exact Fourier tangent/normal geometry and bin norm bounds.
2. All 1,232,256 nodes of the complete five-phase ray cover.
3. The exact algebraic 48-center graph, all 16 possible six-cliques, and 768
   exact zero-overlap witnesses.
4. The shared-center interface, ball inclusions, and the probability gap.

An error, failed assertion, missing witness, or unresolved leaf aborts replay.
Successful replay ends with:

```text
ALL PASS: closed rho = 3/20; probability bound = 8/75; deficit = 3/50.
```

Receipts and logs are regenerated in `certificates/`. Previously supplied
receipts are evidence of a run, not trusted mathematical inputs.

## Files

| Path | Purpose |
|---|---|
| `REPORT.md` | The complete theorem, proof assembly, status labels, and limits |
| `proofs/COVER_PROOF.md` | Geometry, exhaustive phase bins, every rejection inequality, interval arithmetic |
| `proofs/ROBUST_GRAPH_PROOF.md` | Algebraic centers, robust graph, quantitative obstruction |
| `proofs/INDEPENDENT_AUDIT.md` | Independent mathematical and replay review |
| `scripts/verify_all.py` | One-command replay and component assembly |
| `scripts/verify_geometry.py` | Exact Fourier linear algebra and rational bounds |
| `scripts/verify_cover.py` | Exhaustive directed-interval ray-cover verification |
| `scripts/verify_48_graph.py` | Exact algebraic graph and center-approximation verification |
| `data/` | Integer phase centers, compressed node decisions and rational witnesses |
| `certificates/` | Replay receipts and logs |
| `input/BRIEF.md`, `input/Basic.lean` | Supplied task and definition of `QuartetEdge` |
| `MANIFEST.json` | SHA-256 digests of immutable package files |

The proof does not assume a local Hadamard chart, an exact classification of
all Fourier-unbiased rays, or an earlier MUB-atlas certificate. Numerical
exploration proposed the proof witnesses; each proposal is checked exactly
by the shipped verifier. This is a computer-assisted mathematical proof,
not a Lean formalization. No optimality of the radius is claimed.
