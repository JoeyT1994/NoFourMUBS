# Exact certificate semantics

The default acceptance command is `python3 -I -S verify_certificates.py`.
It requires `certificates/manifest.json` and verifies the exact file set,
hashes, kinds and claim counts before returning the overall `PASS` result.
Development mode `--algebra-only` can examine a subset without a manifest;
its result is explicitly `PARTIAL_ALGEBRA_PASS`.

All numeric data in certificate JSON are strings. A rational is parsed by
`fractions.Fraction`. A sparse monomial exponent is parsed as an integer.
No text is evaluated as Python code. Unknown expression operators fail.
Failures use explicit exceptions, so Python `-O` cannot remove them.

## Polynomial bundles

`kind = "polynomial_bundle"` has `variables`, named `definitions`, and
one or more lists of claims. The expression grammar is:

```text
expression := rational_string | variable_name | definition_name
            | ["add", expression, ...]
            | ["mul", expression, ...]
            | ["neg", expression]
            | ["pow", expression, nonnegative_integer_string]
```

The checker expands expressions into sparse maps from exponent tuples to
Fractions. Definitions are memoized; circular definitions, variable
shadowing, negative polynomial powers and malformed operators are rejected.

| Record | Checked meaning |
|---|---|
| `identities: {name,lhs,rhs}` | Expanded rational coefficient maps are equal. Explicit ideal-membership and Bezout cofactors are encoded here. |
| `derivatives: {name,of,variable,order,equals}` | Formal coefficient differentiation of the source, repeated the nonnegative stated number of times, equals the claimed polynomial. |
| `substitutions: {name,source,replacements,result}` | Exact simultaneous substitution in the source equals the result. Substitutions are not applied recursively to one another. |
| `evaluations: {name,polynomial,at,equals}` | Exact evaluation at a full rational variable assignment equals the claimed rational. |
| `orthant_nonnegative: {name,polynomial,variables}` | All expanded coefficients are nonnegative and the polynomial only uses the indicated nonnegative variables. Hence its value is nonnegative on that orthant. |
| `positivity: {name,polynomial,variable,lower,upper,coefficients,lower_bound}` | The affine Bernstein expansion is exact, the polynomial is univariate, the interval is ordered, and every coefficient is at least the strictly positive bound. |
| `interval_covers: {name,lower,upper,positivity_names}` | The referenced positive intervals concern the same polynomial and variable, have no gap, and cover the whole requested interval. |

For a Bernstein record with coefficients \(\beta_i\), degree \(n\),
and interval \([a,b]\), the exact identity checked is

\[
p(a+(b-a)t)=\sum_{i=0}^n\beta_i\binom ni t^i(1-t)^{n-i}.
\]

For \(0\le t\le1\), the basis is nonnegative and sums to one, so the
coefficient lower bound is a rigorous uniform lower bound for \(p\).
The checker uses integer binomial coefficients and sparse rational
polynomials, not numerical interval sampling.

## Algebraic-number bundle

`kind = "algebraic_bundle"` contains linear or quadratic `isolations`
and `rational_inequalities`. Polynomial coefficients are stored in
ascending powers.

An isolation specifies rational lower/upper endpoints, their exact
polynomial values, and a positive or negative derivative sign. The checker
verifies endpoint values and opposite signs. The derivative is affine, so
its extrema occur at endpoints; two strictly positive or two strictly
negative endpoint derivatives prove strict monotonicity throughout.
Continuity and the intermediate value theorem then give exactly one root
in the interval. No general root-counting algorithm is trusted.

The physical transverse root has a separate **capture** proof: any root
with `y ≥ -1` lies in the specified interval. That implication is proved
by the source-linked secant identities and in the supplied Lean script.
An interval's unique-root assertion alone is not substituted for capture.

## Endpoint bundle

`kind = "endpoint_bundle"` stores exact finite data for the structural
bridge and optional endpoint strengthening. The checker independently
regenerates the original Laurent circuit from its definition, not from a
supplied Fourier expansion. It then:

1. checks the three normalized `g`, `eta`, `chi` coefficient maps;
2. verifies all stored powers in the algebra \(\mathbb Q[T]/(T^2+15)\),
   where \(q=(1+T)/4\), \(\bar q=(1-T)/4\), and \(q\bar q=1\);
3. regenerates all row/column permutations, transposition and conjugation
   operations, their dephased exponent matrices and determinant signs;
4. checks global Laurent invariance for all 144 maps;
5. verifies the complete 18-entry orbit, multiplicities and distinct exact
   quadratic-field coordinate tuples;
6. evaluates the invariant, all first moments, the real Hessian and its
   leading principal minors at every orbit entry;
7. regenerates every normalized repeated-root placement and compares its
   seed image with the complete orbit.

This finite evaluator uses only rational field-pair arithmetic, sparse
Laurent convolution and exact Gaussian elimination for determinants.
Its field specification is validated against the checker's arithmetic.

The usual interpretation of Euler/Laurent moments as angular derivatives,
the embedding \(T=i\sqrt{15}\), and the Hessian criterion are elementary
paper/analysis lemmas. They are not magically formalized by Python replay.
The primary (W) route only needs the finite lift/orbit census from this
bundle; the larger optional Laurent/Hessian layer is labeled exact Python
only in `STATUS.md`.

## Generation and Lean trust boundaries

Generators may use SymPy and the supplied reference code. Their output is
untrusted until replayed. The independent Python checker imports none of
them. The Lean generator writes ordinary theorem statements and proof
scripts from the certificates; a successful Lean kernel check is required
before calling those statements formal proofs. All shipped Lean is
uncompiled in this environment.

The certificate manifest prevents accidental file omissions or changes.
It is an integrity manifest, not an independent proof that this list of
facts implies (W). That implication is given by the paper blueprint and
still needs end-to-end Lean integration.
