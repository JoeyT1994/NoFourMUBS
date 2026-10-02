# T2: a finite-radius tube around the whole Fourier family

**Proved, computer-assisted:** every quartet edge satisfies
**d_Four>1/16384**, uniformly around the entire Fourier family, its
transpose, and all allowed equivalences. All 294 covering boxes passed;
the search excluded 2,178,035 candidate six-cliques. The exact reduction
audit and 408 positive controls also passed. See the
[completed receipt](../../../Verification/T2_practical_partition_2026-09-28/README.md).

The certified radius is **δ₀=1/16384 ≈ 0.00006104**, in the existing maximum
column-projector distance, minimized over the Fourier family, its transpose,
and Hadamard equivalences. The [proof](PROOF.md) reduces the statement to
an exhaustive integer search with raw unbiasedness tolerance 1/1000.

The search works directly with the Fourier matrices. It requires no H₊
formula, reconstruction assumptions, root count, or regularity of common
rays. It independently checks the parameter symmetry reduction and
regenerates the orthogonality graph.

This addresses the matrix half of T2. Turning it into a seed-box prune
still requires a D₀-restricted seed-to-carrier estimate, or a direct
matrix-distance enclosure on the box. No seed radius η₂ or matching T1′
threshold m is provided here.

## Replay

From the repository root, with Python, python-flint and a C++17 compiler:

```sh
python3 ProvenResults/FourierNeighbourhood/PracticalTube/verify_partition.py \
  --output-dir Verification/T2_practical_tube_replay
```

The full search can take many minutes. It uses 294 closed leaf boxes
covering the 270 original parameter boxes; difficult boxes are refined.
There are no downloaded data dependencies. The verifier generates and
checks 437,760 trigonometric bounds with Arb; all subsequent rejection
comparisons use integers. Integer-square-root proposals are corrected by
integer comparisons before use. An unresolved case fails the run.

- [tube.cpp](tube.cpp): exhaustive ray-box subdivision and graph search.
- [domain_audit.py](domain_audit.py): exact rational torus tiling.
- [verify_partition.py](verify_partition.py): current full replay and exact
  leaf-coverage audit; the default starts every search afresh.
- [audit.py](audit.py): separate exact audit of matrix equivalences,
  interval endpoints, refinements and constants.
- [verify.py](verify.py): the original unrefined replay and shared Arb
  trigonometric-table generation.

The method builds on the discretization strategy of
[Jaming et al.](https://arxiv.org/abs/0902.0882). Its correctness argument
and finite checks are given in full in this folder.

An interrupted partition run can resume completed jobs, with matching
source/table hashes, by adding `--resume` to the same command. A fresh run
is the default. The verifier saves checkpoint inputs before beginning the
search and audits all 294 distinct leaf cells before reporting success.

The positive controls can be replayed separately:

```sh
python3 ProvenResults/FourierNeighbourhood/PracticalTube/verify_controls.py
```
