# Spherical-cap transfer certificate format

**PROVED interface; concrete acceptance is decided by replay.** Source and
target data are the exact hexadecimal binary-rational records in
`transfer_input.json.gz`. Source indices and transfer-group indices are
zero-based. The compact input's equality with the supplied headers and
ordered descriptors is checked by `verify_input_projection.py`.

## Source record

```json
{
  "format": "zc-caps-v1",
  "seed": 6,
  "caps": ["cap records described below"],
  "coverage": {"schema": "rational-s3-cap-cover-v1"}
}
```

`info`, search statuses, diagnostic margins, and stored numerical hull output
are never accepted as proof. The required cap coefficients and source
indices determine the actual mathematical assertion.

## One cap

```json
{
  "group_index": 0,
  "v": [1073741824, 0, 0, 0],
  "h": "0x1.0000000000000p+29",
  "mode": "polynomial",
  "weighted_target": false,
  "lambda_": "0x1.0000000000000p+0",
  "mu": "0x1.0000000000000p+0",
  "s": "0x1.8000000000000p-1"
}
```

This is an illustration of the fields, **not a valid transfer witness**.

In normalized source coordinates `x=w/r`, the actual closed cap is

    ||x||=1, v.x>=h.

`v` contains four exact integers. `h` denotes the exact finite binary64
rational encoded by its hexadecimal string. Replay requires
`0<h<||v||`. It sets `e=v/||v||` and `t=h/||v||` internally using Arb.
The combined verifier sends only `v,h` to the coverage checker; aliases
cannot substitute a different cap geometry.

`group_index` selects the existing source transfer group, including its
kind, target, group action, ordered corner and winding. T0 and T1 are
implemented. T3 and outgoing edge-source caps are not implemented here.

Supported modes:

| Mode | Anchor | Target model error |
|---|---|---|
| `polynomial` | `c=r*h*v/(v.v)` | `||AH2||*Delta²/2 + ||AX||*tau` |
| `local` | Same interior anchor | `(||AH2||+||AX||*Z2)*Delta²/2` |
| `local_sphere` | `c=r*e` | Same local error, with `Delta²=2*r²*(1-t)` |

The first two modes use `Delta²=r²*(1-h²/(v.v))`. For local modes,
the verifier encloses `Q(c),DQ(c)` using the original contraction and
recomputes both the target and orientation bounds. Exact linear transfers
have zero target model error.

If `weighted_target` is true, the global normal error is replaced by the
recomputed output-weighted `T0_C` and the local normal Hessian by `T2_C`,
where `C=AX`. `weighted.py` uses ZT equations (25)--(29), with all bounds
recomputed by Arb. The source contraction and orientation bounds are
unchanged. The flag must be a JSON boolean.

## Target matrix witness

Normalize the affine output by the target radius, writing it `d+F x`.
`s` is a proposed squared upper bound for its norm. `lambda_` (or `lambda`)
is a free real sphere multiplier. `mu` is the nonnegative scalar cap
multiplier. All are finite hexadecimal binary rationals or exact integers.
Replay reconstructs

\[
\begin{pmatrix}
\lambda I-F^TF & -F^Td-\mu e/2\\
* & s-\|d\|^2+\mu t-\lambda
\end{pmatrix}
\]

and requires a strict interval LDL factorization. It then requires

    r_target*(1-sqrt(s)) > recomputed_target_error.

The optional `multiplier_vec` contains four exact witness scalars `a`.
Replay checks `mu>=||a||` and replaces the upper-left block by
`lambda*I-F^T*F-sym(e*a^T)`, the off-diagonal block by
`-F^T*d-(mu*e-t*a)/2`. The constant block is unchanged. This is the
strengthened lossless quadratic cap certificate; the produced searches
use its scalar subfamily unless otherwise indicated.

Both side orientations are separately checked by the rigorous linear-cap
minimum and the explicit quadratic signature remainder. The target
matrix alone is never sufficient for a general T1 transfer.

## Exact coverage witness

```json
{
  "schema": "rational-s3-cap-cover-v1",
  "dimension": 4,
  "cap_count": 26,
  "facets": [
    {"vertices": [0, 1, 2, 3],
     "numerator": ["four integers"], "denominator": "positive integer"}
  ]
}
```

Again this is a schema illustration, not literal replayable data. Actual
`numerator` and `denominator` entries are JSON integers. Each facet names
four cap indices and a dual vertex `y=numerator/denominator`.

For every facet the integer checker verifies independent normal rows,
equality for its four incident cap inequalities, strict inequality for
every other cap inequality, and `||y||²<=1`. Every triangular ridge must
occur exactly twice and duplicate facets are rejected. These conditions
prove that the facet enumeration is complete; numerical hull output is
not trusted. Degenerate or nonsimplicial polar hulls are rejected by this
short certificate format.

`verify_coverage(..., require_cover=False)` exists only for construction
diagnostics. In that mode `passed` means the hull enumeration was proved;
the separate `covers` flag must also be true to assert a sphere cover.
The combined transfer verifier always requires full coverage.

## Dependencies and scope

The source whole-ball normal form is reconstructed from exact input data,
and its continuous lift is checked against the stored winding convention.
The local matched-completion germ remains an explicit theorem hypothesis.
No atlas completeness theorem, Stage C computation, or MUB exclusion is
invoked. A `CERTIFIED full sphere` result asserts precisely the requested
geometric target and orientation conditions on the entire source sphere.
