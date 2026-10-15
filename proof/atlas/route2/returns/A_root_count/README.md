# Route 2-A return — 252 roots, projective coverage, three exact prototypes

Read **REPORT.md** first. It contains the theorem statements, proofs, scope limits,
all numerical/certified distinctions, and the upstream dependency of the physical witnesses.

## Replay the certificates

From this directory:

```sh
OPENBLAS_NUM_THREADS=1 python3 run_all.py
```

Dependencies: Python 3.10+, NumPy, SymPy. The exact checker uses **Python integer
arithmetic with outward-rounded dyadic intervals**, not floating-point inequalities.
NumPy only proposes approximate roots, preconditioners, and separating witnesses.
No Arb installation or network access is needed. Do not use Python's `-O` flag:
assertions are the fail-closed checks in these research scripts, and the checker
refuses to run when assertions are disabled.

The replay checks all 252 root boxes, all 923 nonempty square minors, all 31,626
root-separation witnesses, the exact torus classification, and the conservative
orthogonality graph for each of centres 100, 2471, and 5305 (zero-based indices
into the supplied `phases` array). Both the in-place and standalone replays passed;
see `replay.log` and `standalone_replay.log`.

## Optional numerical regeneration

```sh
OPENBLAS_NUM_THREADS=1 python3 homotopy.py --centres 100 2471 5305
OPENBLAS_NUM_THREADS=1 python3 special_points.py
```

The continuation uses NumPy; Numba is optional acceleration. Its output is
**numerical**, even when every path succeeds. `run_all.py` independently checks the
resulting root proposals and does not trust the continuation.

`roots_*.npz` contains the input floating-point midpoint matrices and numerical root
proposals. Every stored IEEE floating-point value has an exact dyadic interpretation
when passed to the checker. `certified_charts_*.npz` contains projective-chart
centres and preconditioners; they are regenerated during certificate replay.
The exact coefficient box has real/imaginary halfwidth 2^-25, and the root chart
boxes have real/imaginary halfwidth 2^-13.

## Files

- `REPORT.md`: complete mathematical return and limitations.
- `certify.py`: exact directed-rounding arithmetic and parameter-uniform root certificates.
- `torus_certificate.py`: replays root certificates, certifies the real locus, and checks cliques.
- `physical_witness.py`: exact enclosures of explicitly defined matched expressions inside the boxes.
- `exact_checks.py`: small rational/symbolic algebra checks, including the Fourier boundary curve.
- `homotopy.py`: 252-path numerical projective homotopy.
- `special_points.py`: numerical Fourier-family/Tao comparisons.
- `certificate_*.json`, `torus_*.json`, `physical_witness_*.json`: measured summaries, not substitutes for replay.
- `replay.log`: a complete successful certificate replay.
- `input_toolkit/`, `UPSTREAM_PROOF_v2.md`: supplied reference inputs retained for provenance.

**Scope:** the root and graph certificates are unconditional for the inverse-dual
system, and for every exactly unitary matrix in the parameter boxes. The claim that
the explicitly evaluated matched expressions are Hadamard matrices uses the supplied
matched-construction/flatness theorem and formula. It is not inferred from a small
residual. The current boxes are not atlas balls of radius 0.16 or 0.3.

`SHA256SUMS.txt` records the returned files before any replay regenerates outputs.
`PROVENANCE.json` records the input ZIP hash and the tested Python/package versions.
