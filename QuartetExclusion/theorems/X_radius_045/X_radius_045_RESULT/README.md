# X extended: radius 0.45

This package contains the proof, exact certificates, independent audits, and replay code for the closed radius-0.45 Fourier no-quartet theorem. The radius is three times the earlier 0.15 radius in the same unnormalized horizontal phase Frobenius metric, measured in radians.

For every order-six complex Hadamard matrix `H`, the main quantitative conclusion is

\[
d_{\rm ph}([H],[F_6])\le9/20
\quad\Longrightarrow\quad
\min_{i,j}|\langle k_i,l_j\rangle|^2\le1/6-1/20000
\]

for any two orthonormal bases `K,L`, each unbiased to the standard basis and `H/sqrt(6)`. Hence those four bases cannot be pairwise mutually unbiased.

**Read `REPORT.md` first.** It states the precise quantifiers, normalization, proof structure, verification evidence, and limitations. The enlarged result concerns two whole additional bases. It does not assert the single-extra-ray strengthening of the earlier radius-0.15 theorem.

## Replay

Use Python 3.10 or newer with assertions enabled. No third-party packages are required.

```bash
python3 verify_all.py --workers 4
```

This regenerates the exact Fourier geometry, the independent cubic tensor bridge, the focused implementation audit, the graph and polar comparisons, and all radius-0.45 cover inequalities. It checks the interfaces between them and writes a combined receipt to `certificates/RESULT.json`. Progress from each component is saved in its corresponding log in `certificates/`.

The recorded main cover replay passed all 5,408,512 boxes in about 25.5 minutes with four worker processes. The exhaustive cover is the expensive part. Use `--workers 1` for a single-process replay or adjust the worker count to your machine. Do not use `python -O`; the driver explicitly refuses an optimized interpreter.

To replay the additional radius-0.30 theorem with its larger deficit `1/1000`, run:

```bash
python3 verify_all.py --workers 4 --include-030
```

A quick integrity and interface check against the completed replay receipts is available:

```bash
python3 verify_all.py --interfaces-only
```

This last command verifies recorded source/data identities and mathematical interfaces. It does **not** redo the finite inequality checks. The default command does.

## Contents

| Location | Contents |
|---|---|
| `REPORT.md` | Main theorem, quantitative statements, derivation and scope |
| `verify_all.py` | Combined replay and exact component-interface checks |
| `geometry/` | Actual-Hadamard normal estimates and exact quadratic/cubic predictors |
| `cubic_bridge/` | Independently regenerated predictor tensors, coordinate bridge, LDL audit |
| `cover/` | Frozen radius-0.45 verifier, compressed exhaustive data, proof and replay receipts |
| `cover_030/` | Independently replayable radius-0.30 certificate with deficit `1/1000` |
| `graph/` | Exact centers, necessary label graphs, whole-basis and polar certificates |
| `proofs/` | Underlying cover inequalities and independent analytical/source audits |
| `certificates/` | Combined result, counts, provenance and verification logs |
| `input/Basic.lean` | Retained definition reference; not a formalization of the theorem |
| `MANIFEST.json` | File hashes for the delivered snapshot |

The earlier basic-cover proof is retained as background for the generic lower-order inequalities. Its old numerical radius is superseded by the explicit constants in the new cover manifests and `cover/COVER_PROOF.md`.

Numerical computations only proposed subdivision decisions, scalar weights, and trust-region multipliers. Every accepted cover decision is checked with directed integer intervals. All tensor and graph calculations are regenerated with integers, fractions and rigorous radical enclosures.

The radius-0.50 exploration was inconclusive. This package makes no optimal-radius claim and no global claim outside the stated neighbourhood.
