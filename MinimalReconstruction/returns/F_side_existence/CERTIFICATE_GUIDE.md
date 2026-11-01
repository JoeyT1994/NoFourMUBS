# Certificate inventory and formalization guide

## Replay

From this folder, run:

```bash
python3 verify_all.py
```

The checker uses the supplied files only, with Python and SymPy. The tested
versions and measured wall times are in `verification.json`. The assembly
checker uses only the Python standard library; the other checkers use SymPy
for exact polynomial circuits and integer/rational arithmetic. None uses
floating-point evaluation to accept an identity.

Default replay never regenerates coefficient certificates. Individual
generators are available for reproducibility, but generation and acceptance
are distinct. `python3 verify_all.py --record` additionally saves a receipt
and module logs. Every verifier exits nonzero on failure. The core and
y-reduction checkers use explicit conditionals, so Python optimization does
not disable certificate validation.

## Proof dependency order

| Stage | Mathematical input | Exact certificate file | Verifier |
|---|---|---|---|
| Strict domain | Independent Gram and unit seed identities | `domain/domain_certificates.json` | `domain/verify_domain.py` |
| Compact lambda formulas | Sheet quadratic only | `certificates/gram_certificates.json`, `bridges` | `core/verify_gram.py` |
| I, II, III and Y0, Y1 | Six independent Gram coordinates plus the sheet quadratic | `certificates/gram_certificates.json` | `core/verify_gram.py` |
| Reality, rho, cross/norm equations | I--III and explicit constructor definitions | `algebra/core_certificates.json` | `algebra/verify_core.py` |
| Third-row Fourier flatness | Y0, Y1 and already proved core equations | `algebra/y_certificates.json` | `algebra/verify_y.py` |
| Sigma, first-row flatness, Fourier assembly, signature | Elementary scalar/unit relations | `assembly/assembly_certificates.json` | `assembly/verify_assembly.py` |
| Independent linkage audit | The actual expressions used in the two modules | Fixed cofactor identities in the checker | `domain/verify_core_review.py` |

There is one small ordering point. The final matrix norm lemmas in the core
module take `sigma_norm` as an input. That input is obtained from the rho
quadratic by the assembly module's two elementary x-row identities. The rho
quadratic itself does not depend on `sigma_norm` or on a physical side.
Thus the mathematical dependency order is acyclic.

## Gram certificate format

`core/gram_model.py` contains the fixed mathematical circuits. Its polynomial
variables are `[s,S,t,T,r,Q,y]`, where uppercase variables are independent
formal conjugates and `y` means `zeta=g*z`. The sole sheet relation is

```text
y^2 - chi*y + g^2*eta = 0.
```

For each of the five nontrivial Gram identities, the file records an exact
clearing factor and a polynomial identity

```text
clearing_factor * auxiliary_residual = sheet_quadratic * cofactor.
```

All clearing factors are monomials in fixed integers and the already proved
nonzero `Pj` and their conjugates. The identity `h=n*m-k*bar(k)` is also checked;
its cleared residual is identically zero without the sheet relation.

### Small coefficient blocks

The two Y residuals have larger full expansions, but are split by powers of
the independent `s,S`. Each record has `residual_blocks` and `cofactor_blocks`.
A block is `[ [s_power,S_power], terms ]`; each term is
`[ [t_power,T_power,r_power,Q_power,y_power], integer_coefficient ]`.

The checker verifies, for every possible index `(i,j)`,

```text
residual[i,j] = sum(modulus[a,b] * cofactor[i-a,j-b]).
```

It checks the union of all residual indices and all possible product indices,
including zero blocks. This proves the full cofactor identity by ordinary
coefficient comparison. No coefficient of the quadratic is set to zero,
and no new division or exceptional stratum is introduced.

| Target | Full residual terms | Full cofactor terms | Coefficient identities | Largest expanded identity side | Largest cofactor block |
|---|---:|---:|---:|---:|---:|
| I | 407 | 16 | 35 | 33 | 3 |
| II | 998 | 72 | 47 | 64 | 10 |
| III | 682 | 42 | 47 | 50 | 7 |
| Y0 | 16,629 | 4,014 | 192 | 271 | 101 |
| Y1 | 41,483 | 13,365 | 291 | 525 | 243 |

The complete five-identity certificate therefore consists of 612 small
coefficient comparisons. The largest expanded side has 525 monomials,
within the requested size limit. Sections 3 and 6 of `SIDE_EXISTENCE.md`
explain both the compact I--III cofactors and the Y coefficient-block proof.

The four lambda bridges use their own independent variable list
`[g,chi,eta,y,c0,c1,c2]`. Each has a fully expanded target and explicit
cofactor of the same sheet quadratic.

## Small algebra certificate format

The core and y files use `integer_polynomial_cofactors_v1`. Their exponent
order is recorded in `variables`, and a polynomial term is
`[integer_coefficient, exponent_vector]`. Uppercase names again denote
independent variables, interpreted as conjugates only when the paper proof
specializes the identity to complex numbers.

Each `step` contains its target polynomial and a dictionary of explicit
cofactors of previously established relations. The verifier multiplies the
integer arrays and checks equality to the target. It also reconstructs each
target and input from fixed source circuits.

When a step includes a `cancel` field, it checks
`target = cancel * consequence` exactly and records the consequence for
later steps. The paper proof supplies the corresponding nonzero fact, using
only `g,n,delta,e,rho` and fixed integers. These are not numerical guards.

There are 19 core steps and 12 y-reduction steps. Their largest cofactors
have 3 and 11 monomials. `y_gram_conditions.json` records the two explicit
21- and 19-term inputs. The independent linkage checker proves that these
are exactly the two Gram polynomials certified by the root module.

## Assembly and strict-domain formats

These files record their variable order and all integer target, relation,
and cofactor arrays. Their verifiers reconstruct the mathematical circuits
independently of the arrays. The strict-domain module has 24 certificates.
The assembly module has 39 certificates, including the optional recovery
of both row products; its largest cofactor has 32 monomials.

The universal actual-side Laurent identity is certified in independent
entry/conjugate variables against six explicit unit-norm relations. It is
applied only after the constructed side has already been proved flat.

## Lean integration

The output contains supporting Lean source in:

- `domain/DomainLemmas.lean`;
- `algebra/SmallPolynomialLemmas.lean`;
- `assembly/AssemblyLemmas.lean`.

These files contain complete scalar/ring proof scripts without admitted
lemmas. They are explicitly **uncompiled** and do not claim the final matrix
existence theorem. In particular the 31 small constructor lemmas are generated
from exactly the verified cofactor coefficients and use `linear_combination`.

For the complete target, the remaining formal work is to instantiate the
independent variables by actual complex quantities; replay the small Gram
coefficient identities; carry out the elementary real positivity and root
choices; and assemble the finite matrices. Equation (16) in the main proof
also gives compact factored I--III cofactors suitable for direct
`field_simp` followed by `ring` or `linear_combination`.

For Y0/Y1, use the saved coefficient blocks as individual ring lemmas, then
sum the blocks to obtain the cleared equality. This avoids asking Lean or
SymPy to simplify one large rational constructor expression.

The final theorem should produce `horizontalCandidates` and
`verticalCandidates` with the exact `sideSignature` equations in the supplied
`Statements.lean`. A theorem asserting `MatchedExistence` additionally needs
the separate forced-lower-block flatness result; this package does not assume
or prove that result.
