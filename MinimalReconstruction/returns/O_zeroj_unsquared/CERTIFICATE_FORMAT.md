# Exact certificate format and trust boundary

## Data budget

The three files in `certificates/` contain **43,138 uncompressed bytes**:

| File | Identities | Bytes |
|---|---:|---:|
| `mixed_certificates.json` | 2 | 32,196 |
| `scalar_boundary_certificates.json` | 9 | 5,105 |
| `scalar_core_certificates.json` | 6 | 5,837 |
| **Total** | **17** | **43,138** |

There are no additional external coefficient tables, binary algebra objects,
serialized caches, or expanded polynomial certificates hidden elsewhere in
the return. The verifier source contains the displayed defining formulas and
the short Newton identities; it regenerates the Laurent expressions from them.
The budget uses decimal bytes and is below 50,000 bytes before ZIP compression.

## Integer polynomial DAGs

Each certificate file has format `integer_polynomial_dag_v1`, as specified in
the supplied return K. Each record contains an identifier, variable names,
nodes, and the node indices `lhs` and `rhs`. Allowed nodes are:

| Node | Meaning |
|---|---|
| `["const", n]` | An integer constant |
| `["var", i]` | Variable at index `i` |
| `["add", i, j]` | Sum of two earlier nodes |
| `["mul", i, j]` | Product of two earlier nodes |
| `["pow", i, n]` | Earlier node raised to a nonnegative integer power |

All references point backward. Literal rational constants, division nodes,
negative powers, floating-point numbers, radicals, and root oracles are absent.
The equality is checked by exact polynomial expansion. The scalar checkers
use sparse Python integer dictionaries; the larger mixed DAGs use FLINT's
exact multivariate polynomial arithmetic.

## Binding a DAG to the original mixed signatures

The two mixed records additionally contain

```
"rational_sources": [numerator_left, denominator_left,
                     numerator_right, denominator_right]
```

These are indices of integer-polynomial nodes, not additional expression
operations. The checked equality is

```
numerator_left * denominator_right
  = numerator_right * denominator_left.
```

The verifier independently regenerates the two rational functions from the
original lambda/Newton formulas and the displayed target plus ideal cofactor.
It checks both source bindings by exact cross multiplication, requires both
denominators to be nonzero polynomials, and checks that `lhs` and `rhs` are the
correct cross products. It also validates every output/source index.

The nonzero-denominator check matters: a fake `0/0 = 0/0` object would otherwise
pass mere cross multiplication. `--self-test` explicitly rejects that object,
as well as an equality whose left target was changed by one.

The source reconstruction does not import the old square-sum code. It starts
with the determinant/permanent definition of one corner and verifies:

1. the 48-term Laurent signature;
2. all 21 needed Newton moments on six independent Laurent phases;
3. both mixed-corner regroupings on twelve independent Laurent phases;
4. the actual-side substitutions and the two target identities.

The two regrouped moment expressions have 24 and 44 terms respectively.

## Relations and specialization

The generic calculation reduces only the proved relation `h^2=-XYZ`, leaving
the W relation uneliminated. The cleared error is exactly

```
G_W * (q0 + h*q1) / z^2.
```

The verifier regenerates `q0,q1` and checks exact divisibility. The final
generic identity multiplies by `X-1`; it never assumes `X != 1`.

On the repeated branch `X=Y=v`, only the real part of `Tpair` is needed. It is checked directly from the
uneliminated actual-side expression. Its error is `C2*q/d`, with

```
C2 = 2*v^2 + (z^2+2*z-6)*v + z^2*(z+3),
e_v = 3*(z+3)-v,
e_Z = z^2+3*z+2*v,
d_pair = z^4*(z+3)^5*e_v^4*e_Z^3/81.
```

The denominator is nonzero under the paper's guards. The factor `1/81` is cleared when the integer circuit is emitted. The real part is the
coefficient of one in the pair representation of `h`, because `h` is purely
imaginary. Equivalently the repeated calculation has `h^2=-v^2 Z` and `h=v r`.

The repeated scalar proof uses the generic imaginary identity directly. Its
new quotient and norm identities imply the sextic `F_*=0`. The retained
`Tpair` real identity and norm imply `G=0`, and the integer Bezout identity
`U*F_*+V*G=746496` gives the contradiction. No factor `v-Z` or `v-1` is
divided out; this includes the all-equal and `v=1` cases.

No norm denominator at a second quadratic root is inverted in the final
source checks. The polynomial norm identities used later are ordinary
two-variable integer equalities with explicit `C2` cofactors.

## Reproduction and formal integration

Normal `python3 verify.py --self-test` needs only Python and python-flint.
It also executes `verify_source_independent.py`, which imports no main-return
source or certificates and uses unsimplified actual Newton products, and
`verify_boundary_independent.py`, a standard-library check of an alternative
zero-product proof under the brief's full invertibility assumption. The
optional mixed-circuit generator uses SymPy to retain factored source syntax
and write compact Horner forms. SymPy is not part of the acceptance path.

The DAG operations translate to the repository's Identity expression language.
The complete Identity implementation and project configuration were not
supplied, so no compiled adapter is asserted here. An integrator must bind the
physical moment expressions to the circuit sources and import the exact
polynomial proofs. Python's successful replay is kept distinct from Lean
elaboration and kernel checking.
