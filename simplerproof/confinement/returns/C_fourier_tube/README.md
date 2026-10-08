# Confinement research output — 8 October 2026

**The unrestricted confinement theorem remains unproved.** This archive
contains rigorous partial results, their complete proofs and replay
scripts, and a precise description of the remaining global region.

Start with `CONFINEMENT.md`; use `STATUS.md` for the distinction between
theorems, finite exact certificates, and numerical evidence.

The strongest new statements are:

- Global cutoff-144 confinement and complete local-minimum exclusion on
  the entire affine Fourier family and its transpose, with all phase wraps.
- Cutoff-26 confinement in the full Hadamard set within phase distance
  0.042 of either complete family.
- Complete classification of the exact 3-by-3 Hadamard-corner stratum,
  and a quantitative determinant collar at 27-10^-16.
- A sharper gauge proving d_F<=0.0914 implies nu<0.55.
- Uniform physical chart denominator bounds and exact global moment
  identities useful for a future complete cover or distance inequality.

## Replay

With Python 3.10 or later and the dependencies in `requirements.txt`:

```sh
python3 VERIFY_ALL.py
```

The script runs exact and interval verifiers only. It does not run the
floating-point self-test or a numerical search. A failed verifier exits
nonzero. Most verifiers need only the standard library; the chart
polynomial replay uses SymPy, and the decimal audit uses python-flint.
The final replay is recorded in `VERIFICATION_LOG.txt`.

## Contents

| Path | Contents |
|---|---|
| `CONFINEMENT.md` | Main results, derivations, dependencies, and the remaining global obligation |
| `STATUS.md` | Proved / finite computation / numerical evidence / unresolved |
| `GEOMETRY_AND_GAUGE.md` | Phase metric, compact minimum reduction, corrected gauge theorem |
| `SIGNED_INVARIANT_BOUNDS.md` | Universal signed-invariant derivatives and a simple 1/40 tube proof |
| `fourier_sector/` | Exact full-family theorem, improved 0.042 tube, robust determinant collar, and verifiers |
| `mc1/` | Global block/moment identities, exact Hadamard-corner classification, and finite coefficients |
| `descent/` | Exact chart conditioning and stationary seed, descent criterion, clearly separated numerical evidence |
| `verification/` | Root rational and Arb interval verifiers |
| `input_data/` | Unmodified supplied prompt, reference, and exploratory toolkit |
| `INPUTS.md` | Fact-by-fact dependency audit, original hashes, and corrections to input interpretations |

The original toolkit can optionally be replayed with
`python3 input_data/toolkit/selftest.py`. It is exploratory float code.
The preserved numerical searches are described in
`descent/NONSMOOTH_DESCENT.md`; reruns write separate replay files by default.

No saved numerical sample is used as a certificate of a whole parameter
region, and no global proof is inferred from the absence of a sampled
counterexample.
