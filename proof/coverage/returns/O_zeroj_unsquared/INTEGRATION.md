# Integration of Return O

## Mathematical replacement

`REPORT.md` proves the product conclusion directly. A suitable interface is:

```lean
def ZeroJProduct : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H →
    AllCritical H → AllMinorsInvertible H → ∀ l : Fin 20,
    blockJ (triBlock H 0 l) = 0 →
    blockTheta (triBlock H 0 l) ≠ -3 →
    blockTheta (triBlock H 0 l) ≠ -2 →
    blockK (triBlock H 0 l) =
      (1 - blockTheta (triBlock H 0 l)) *
        (blockTheta (triBlock H 0 l) + 3) ^ 3
```

This is an interface proposal, not a new axiom or an assertion of compilation.
The proved statement in the report actually needs invertibility only of the
selected complementary halves. The above formulation matches the existing
classification call site conveniently.

In `CoverageStripZero.zeroJ_classification`:

1. Keep `zero_data`, the `z=-3,-2` case splits and pole guards.
2. Obtain `hK` from the new product theorem.
3. Keep `zero_moduli` and the existing row relabelling.
4. Remove the call to `stripSq_eq_zero` and the extraction of a factor from the
   `ZeroJSquareSum` identity.

`zero_moduli` already takes `hK` directly, so its statement need not change.

`CoverageSignedNonzero.topStripClassification_signed` currently takes
`ZeroJAlgebra`, converts it with `zeroJSquareSum_of_algebra`, and supplies that
to the zero-J classification. Change its parameter to the new product proof.
Update `CoverageStripParts` and the complete project's final theorem
application accordingly. The public statement of `PRM.strictCornerCoverage`
can remain unchanged.

## New proof components

The mathematical implementation can be organized around the following small
interfaces:

* mixed-corner sums and their termwise zero proofs;
* the 21 required half moments and 24/44-term regroupings;
* the generic inserted-column identity, with its `X-1` multiplier retained;
* the zero-product boundary scalar lemma;
* the degree-two distinct-modulus contradiction;
* the generic imaginary reduction on repeated moduli, its scalar norm, and the retained `Tpair` real-part identity and norm;
* the integer Bézout identity with constant 746496.

All polynomial certificate data are in the requested integer DAG format.
The paper records all denominator guards and row-scaling interpretations.
No nonzero-J classification theorem is needed for this new zero-J proof.

## Geometric step

`lean/CoverageStripGeom.candidate.lean` preserves the supplied
`half_geometric` and `strip_geometric` statements and implements the permanent
saturation argument. It replaces the coordinate-cubic permutation cases.
`review/GEOMETRIC_STEP.md` gives the full common-gauge proof and a review of the
old argument.

**UNCOMPILED:** the candidate is provided for integration and review. Its
direct imported dependencies, the full project configuration and Mathlib
checkout, `Final.lean`, and `lean/check_axioms.py` are absent from the handoff.
No Lean or Lake executable is installed in the execution environment.

## Shared dependencies to extract before deletion

The supplied import graph prevents blanket deletion of the shared modules:

| Supplied K module | Surviving dependency |
|---|---|
| `CoverageSignedGauge` | Direct import of `CoverageStripIdHalf`; uses `fData`, `lamData_eq_fData`, `fData_mom_scale`, `QF`, `halfQ`, `halfQ_val`, `HalfQ.val_mom`, `qvalidR` |
| `CoverageSignedBoundary` | Direct import of `CoverageStripReduce`; uses shared half reduction and row-permutation lemmas |

Extract the still-used formal row scaling, fraction/pair algebra, half moments,
and shared physical/permutation lemmas to appropriate independent modules.
Update K's imports and check the full transitive graph before deleting any
shared infrastructure. The excerpt does not establish whether `Fast` and
`Stage` can disappear after this extraction.

After the complete proof is integrated, the zero-J square-sum data and its
dedicated checker/generator are mathematically obsolete. Remove them only
after the real full-project import/build checks establish that they are unused.

## Required final gates in the complete repository

```text
python3 verify.py
python3 lean/check_axioms.py --full
```

The first command passes for this self-contained return. The second command
is unavailable here and is not represented as passed. No original supplied
Lean module has been deleted or overwritten by this return.

## Source excerpt audit on 18 October 2026

`review/IMPORT_AUDIT.json` records the supplied Lean modules, their direct imports, and the required project modules missing from the handoff. This is an audit of the supplied excerpt, not of an unseen current checkout. The newly attached brief and scripts exactly match snapshot `73152c64`; the recovered handoff does not contain a complete Lean checkout. The mathematical source identities and scalar certificates were checked, but the new `ZeroJProduct` theorem still needs a Lean implementation and kernel replay. No library definition is being asserted as that missing proof.
