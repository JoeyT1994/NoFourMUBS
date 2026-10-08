# Confinement results and verification bundle

Start with `CONFINEMENT.md`. The unrestricted cutoff 26 theorem is **not
proved**; the bundle provides sharp structural confinement and exact
global auxiliary results. `STATUS.md` states the remaining gap explicitly.

## Contents

| File or directory | Purpose |
|---|---|
| `CONFINEMENT.md` | Main statement, proof chain, findings, and input audit |
| `STATUS.md` | Separation of proved results, finite certificates, and numerical evidence |
| `FOURIER_BLOCK_LOCUS.md` | Complete reduction of every matrix with a 3×3 Hadamard submatrix |
| `verify_fourier_block_locus.py` | Exact81-case exceptional-branch verification |
| `fourier/` | Sharp full-torus Fourier/transpose theorem, lattice cover, sharpness, and exact verifier |
| `critical/` | Improved gauge, topology, nonsmooth criterion, and input audit |
| `mc1/` | General moment identities, explicit necessary tests, and exact verifier |
| `numerics/` | Exploratory minimax script, records, and supplied self-test output |
| `inputs/` | Unmodified copies of the supplied mathematical prompt, reference, and toolkit |
| `INPUTS.json` | SHA-256 identification of those input files and the uploaded archive |
| `verify_all.py` | Runs all exact/interval verification scripts and summarizes their status |
| `verification_results.json` | Result of the delivered verification run |

## Replay all certificates

Use Python3.10 or later. The full verifier needs `sympy` and
`python-flint`; the affine, block, and general-identity verifiers use
only Python's standard library.

```sh
python3 -m pip install -r requirements.txt
python3 verify_all.py
```

Each script exits nonzero if an acceptance comparison fails. The
aggregate script runs from any working directory, writes
`verification_results.json` next to itself, and prints each result.
A successful replay certifies the finite claims in the **partial
theorems**, not the unrestricted global statement.

Individual commands, from the bundle's `output/` directory, are:

```sh
python3 fourier/verify_fourier.py
python3 verify_fourier_block_locus.py
python3 critical/verify_auxiliary.py
python3 critical/verify_chart_seed.py
python3 mc1/verify_general_identities.py
```

The Fourier-block script regenerates `fourier_block_exact_data.json`.

## Numerical exploration

The following commands require `numpy`, `scipy`, and `mpmath`, which
are also listed in `requirements.txt`:

```sh
python3 inputs/toolkit/selftest.py
python3 numerics/explore_minima.py --samples 24 --steps 250 --seed 1837 --output numerics/replay_24.json
python3 numerics/explore_minima.py --samples 160 --steps 250 --seed 830611 --output numerics/replay_160.json
```

Exact numerical trajectories can depend on BLAS, SciPy, and platform
versions. These commands are deliberately not part of `verify_all.py`.
Neither convergence nor agreement with the saved results is a proof of
global confinement. The complete saved numerical records are included
so every reported stopping class can be inspected.

## Proof inputs

The supplied F2 is the principal mathematical input to the affine
corner computation. The local-minimum reduction accepts the supplied
F4; its external certificate was not included in the handoff and is
not claimed to have been replayed. The other uses of F1–F8 are listed
in `CONFINEMENT.md`.

No original supplied file was modified. No classification of all
Hadamards into the affine families is assumed. All singular and finite
branches of the proved structural theorem are retained.
