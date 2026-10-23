# R2: exact cross-side ideal certificate

**Fallback completed.** The return supplies a compact exact arithmetic
certificate for the requested conic ideal membership, and a paper proof of
the exact change of coordinates between the conic contraction and the old
weighted defect. An independent structural derivation of the cross-side
cancellation from the metric and corner-side couplings was **not obtained**.

The certificate data are **8,481 bytes**. The complete dependency-free
certificate core, including its formula builder, independent checker, and
target-binding check, is **22,765 bytes**. The input brief reports 229 KB
for `FlatData.lean`; this is a source/data comparison, not a Lean benchmark.
No Lean file was modified and no Lean build was performed.

## Run the exact core

Python 3.10 or later, with no third-party dependencies:

```sh
python verify_all.py
```

This checks that the stored circuit is exactly the circuit constructed from
the stated corner/Gram formulas, proves coefficient and exponent bounds,
and checks exact separating-integer evaluations. The two cross-side zeros
and three horizontal/vertical invariant equalities are all checked.

The independent checker contains unconditional failure checks. The builder
and optional algebra checks reject `-O` and `-OO`.

## Optional independent symbolic checks

```sh
python -m pip install -r requirements-symbolic.txt
python verify_all.py --symbolic
```

These additionally verify the covariance/ideal formulas, the covariance
determinant norm over six independent Gram variables, the compact residuals
in exact rational arithmetic, and the direct conic `C11` coefficients.

## Read

- `REPORT.md`: result, proof assembly, certificate sizes, and remaining scope.
- `proofs/C_W_RELATION.md`: full coordinate change, determinant guards,
  affine reduction, covariance inverse, and explicit conic ideal coefficients.
- `proofs/COMPACT_W_CERTIFICATE.md`: scaled third moments and the exact
  two-residual identity.
- `proofs/PACKING_LEMMA.md`: why a single separating integer evaluation
  proves a universal Laurent-polynomial identity.
- `LEAN_HANDOFF.md`: concrete formal integration work still required.
- `verification_results.json`: the successful complete replay and measurements.

`reference/` contains the relevant input definitions/proofs, the existing
weighted-defect replay, and baseline measurements. Dependencies, generated
bytecode, and the large exploratory coefficient expansions are not included.
