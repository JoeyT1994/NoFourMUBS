# Conditioning results

Read `CONDITIONING.md` for the theorems and complete main proofs, then
`STATUS.md` for the exact dependency boundary and remaining open questions.

The main result is an analytic proof of rank 21 for every non-Tao Hadamard,
**assuming the MC1–MC4 reconstruction inputs allowed in the supplied brief**.
The strict-corner rank upper bound and the sharp all-flat Hessian constant
are independent of that classification input.

## Replay

```bash
python3 verify_all.py
```

Python 3.10+ and NumPy are sufficient. The acceptance arithmetic is exact:
unbounded integers, rational numbers, formal Laurent polynomials, and exact
algebraic fields. No eigensolver or numerical tolerance enters the exact
runner. NumPy object arrays hold Python integers or fractions.

The runner writes a JSON receipt and a readable text receipt. It runs all
nine independent check programs and returns a nonzero exit code if any
check fails. Do not use Python's `-O` option: the runner rejects it.

## Contents

- `CONDITIONING.md`: main proof, explicit constants, equality-sector result.
- `STATUS.md`: analytic results, exact algebraic certificates, numerical
  evidence, imported assumptions, and open tasks.
- `proofs/`: detailed proof supplements and the original Fourier-family
  proof used for the exact spectrum.
- `inputs/`: the supplied prompt and exact reconstruction input statements.
- `verify_*.py`: complete finite verification assets.
- `verification_receipt.*`: results of the completed replay.
- `SOURCE_MANIFEST.json`: input hashes and source provenance.
- `exploration/`: unchanged supplied numerical toolkit and 2,000 centers;
  excluded from the exact runner. Run `python3 exploration/jacobian.py`
  separately if desired; this additionally needs SciPy.

The sharp global √3 singular-value bound and the completeness of its
equality locus remain open. The package does not contain or certify a
no-four-MUB atlas.
