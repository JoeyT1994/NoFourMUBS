# Integration into the coverage proof

## What is established, and what still needs the complete repository

The paper proof and exact algebra establish N1 and N2. The exported data are integer polynomial identities, suitable for the repository's `NoFourMUBs/Identity` checker. They do not require a new numerical oracle, a general rational-function oracle, interpolation, or a Sturm checker.

**No new Lean file is represented as compiled.** The input snapshot supplies the relevant proposition statements and assembly code, but does not supply `Identity`, its current expression constructors, the complete dependency graph, a Lake project, or `lean/check_axioms.py`. Rather than invent those interfaces, this return states the precise proof boundaries and exports the mathematical circuits in a neutral format. Translating the four basic arithmetic node kinds to the actual repository constructors and proving the semantic bridges are integration work.

## Suggested new modules

1. **`CoverageStripSignedMoments`**: define the signed strip sum and the `xy`-weighted signed strip sum. Prove the two-term and six-term moment readouts from the corner Laurent identity. Existing dephasing, Laurent covariance, and finite column-sum infrastructure can be reused. Only nine half moments are needed. The actual nine-moment function used by the Python boundary checker is independently verified on six Laurent variables and separately exported as polynomial DAGs.

2. **`CoverageStripSignedBoundary`**: derive the three cleared paired-half equations from `L * lambda = P`; apply the 24-term universal Gram identity. This gives the product of the Gram triangle's imaginary part and the three modulus differences equal to zero **without an L guard**. The paired equation must be proved in cleared form; introducing an inverse of L here would lose the pole-inclusive conclusion.

3. **`CoverageStripSignedValues`**: use the direct repeated-modulus cubic and the `Kmin` modulus-cubic factorization to select one of four curves. Under all six L guards, the four exported weighted identities imply that the weighted sum is nonzero. Record its row weight `(1,1)`: in the formal gauge `s=t=1` it equals the physical sum divided by the original nonzero `s*t`.

4. **`CoverageStripSignedNonzero`**: conclude that a pole exists, use the four explicit products of the six L's, and obtain the existing `Quartic.Candidates k K` predicate. The old endpoint-reading lemma `conclusion_of_candidates` can then supply exactly the current nonzero-J conclusion, including `EquiEndpoint` and `P7Endpoint`. Alternatively the simple modulus calculations in REPORT §6 can be proved directly.

The certificate modules should import only the identity machinery and the small definitions they require. Reusing an existing generic moment implementation is fine, but the new proof does not need to import the old square-sum data or its large checking modules merely to obtain the nine elementary moment formulas.

## Existing theorems and assembly

The target remains the nonzero-J half of `TopStripClassification` in the supplied `PRM/CoverageInputs.lean`:

```text
blockJ (triBlock H 0 l) != 0 ->
  (17/3 < blockP (triBlock H 0 l) and
             blockP (triBlock H 0 l) < 29/5)
  or EquiEndpoint (triBlock H 0 l)
  or P7Endpoint (triBlock H 0 l).
```

The existing positive-J setup in `CoverageStripNonzero.lean` is reusable:

- `criticalCorner_nonzeroJ` and `param_of_reduction` supply the scalar parameter.
- `theta_param` supplies the two real signatures.
- `blockP_compl`, `blockJ_compl`, `equiEndpoint_compl`, and `p7Endpoint_compl` transport negative J to positive J.
- `conclusion_of_candidates` reads the same three candidates into the endpoint/interval disjunction.

The new positive-J proof should not require arguments of type `NonzeroJSquareSum` or `Quartic.ScalarClassification`. The pole-product proof also replaces the former `PoleClassification` proof dependency if desired. The four-curve reduction already applies at poles, so the old `Im(P0)` row-relabelling pole argument is unnecessary.

Keep `zeroJ_classification` and its existing zero-J algebra certificate. Add an assembly theorem combining it with the new nonzero-J theorem, rather than trying to prove `NonzeroJAlgebra`: that interface fixes the old square-sum identity and is not the right target for this proof.

The brief identifies the two explicit `PRM.Coverage.nonzeroJAlgebra` uses in `Final.lean` at lines 42 and 47. Replace those assembly calls with the signed-moment assembly theorem. Do not remove `CoverageStripIdZero` or zero-J prerequisites. After checking the new import graph, the no-longer-referenced nonzero-J square-sum data and quartic sign modules can be removed from this route.

`PRM.strictCornerCoverage` and all statements downstream retain their current signatures. The existing endpoint exclusions and the ten-corner sum proof remain in place.

## Kernel certificate interpretation

See `CERTIFICATE_FORMAT.md`. Each circuit asserts an equality of integer polynomials. An evaluator maps constants, variables, addition, multiplication, and natural powers to the corresponding `Identity` expressions. If the current checker lacks a DAG-sharing constructor, introduce let-bound subexpressions or use the existing circuit interface rather than expanding the DAG into duplicated source trees.

The four boundary certificates have the form

```text
original_weighted_moment = displayed_nonzero_value
                         + modulus_numerator * quotient / error_denominator.
```

The exported polynomial target cross-multiplies the displayed denominators before encoding. The proof bridge must separately supply their nonvanishing from `k>0`, positive Gram moduli, and the six L guards. On the physical Gram relation, the modulus numerator is zero, so the cofactor term vanishes. No physical division by the Gram relation occurs.

Reconstruct the target from the mathematical definitions in the Lean source and compare it with the certificate. Do not add an axiom asserting that the JSON has the intended meaning. The returned Python generator and checker follow this same separation: they rebuild the source target, compare regenerated certificates, and then independently expand the integer circuits.

## Required integration gate

After implementing the semantic bridges in the full project:

```sh
python3 verify.py
python3 lean/check_axioms.py --full
```

Also inspect the import graph and the axiom output for the new nonzero-J theorem and `PRM.strictCornerCoverage`. Expected axioms are the project's standard logical axioms. No runtime or memory improvement from the new Lean build is claimed until this gate is actually run.
