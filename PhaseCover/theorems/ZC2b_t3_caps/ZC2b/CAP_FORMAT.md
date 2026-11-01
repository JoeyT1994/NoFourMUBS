# ZC2b: mixed spherical-cap transfer records

**PROVED interface.** Concrete transfer and coverage acceptance is
**CERTIFIED** only after Arb and exact-integer replay. Source records,
target records, existing transfer descriptors, and all existing ZC fields
keep their original meanings. T3 is an additional cap kind selected by
the existing transfer group's `kind` field.

## Sphere record and source binding

The sphere record retains the ZC shape:

```json
{
  "format": "zc-caps-v1",
  "seed": 2346,
  "caps": ["cap records"],
  "coverage": {"schema": "rational-s3-cap-cover-v1"}
}
```

The illustrative strings above are placeholders, not replayable proofs.
The new constructor labels its wrapper `zc2b-mixed-caps-v1`; both labels
describe the same sphere fields above. The label is descriptive metadata,
not an acceptance gate. The authoritative transfer kind remains the
selected original group's `kind`, and all existing cap fields retain their
definitions.
The input extract `data/zc2b_t3.json.gz` uses global zero-based seed indices:
`t3_seeds[str(seed)]` supplies the source including its ordered transfer
groups; `seed_headers[target]` supplies each T0/T1 target; `edge[target]`
supplies each T3 target. The new standalone function
`cap_t3.replay(data, proposal, precision=224, model=None)` implements that
mapping. It also accepts the previous `seeds` input layout.

An explicitly supplied `model` is an internal, already-verified cache,
never certificate JSON. The replay compares the cached source's exact
binary values for `theta0`, `Mth`, `P`, `U`, radius, orientation and gauge
convention with the selected source. Every public file replay without a
cache reconstructs the source whole-ball model in Arb.

`status`, `info`, numerical hull diagnostics, search margins, and stored
timings do not enter acceptance.

## Geometry and inherited T0/T1 fields

Every cap represents exactly

\[
\|x\|=1,\qquad v\cdot x\ge h,\qquad x=w/r.
\]

`v` is a list of four exact JSON integers; `h` is an integer or a finite
binary64 hexadecimal string. Replay requires `0<h<||v||`. All other
witness scalars use the same exact scalar syntax. Boolean values are not
integers for this purpose. Arb derives `e=v/||v||` and `t=h/||v||`.

T0/T1 caps retain every existing field and test in `ZC/CAP_FORMAT.md`.
The transfer `group_index` identifies a group in the source's ordered
`transfers` list. Its target, group action, ordered corner, and winding
are read from that group rather than copied as trusted cap data.

## Additional T3 cap fields

```json
{
  "group_index": 44,
  "v": [1073741824, 0, 0, 0],
  "h": "0x1.0000000000000p+29",
  "mode": "local_sphere",
  "weighted_target": false,
  "psi_remainder": "local_hessian",
  "t3_group_sha256": "64 lowercase hexadecimal characters",
  "t3_alignment": {
    "rows": [0, 1, 2, 3, 4, 5],
    "cols": [0, 1, 2, 3, 4, 5],
    "wind": ["36 exact integers"]
  },
  "t3_parameter": {
    "lambda_": "0x1.0000000000000p+0",
    "mu": "0x1.0000000000000p+0",
    "s": "0x1.8000000000000p-1"
  },
  "t3_distance": {
    "lambda_": "0x1.0000000000000p+0",
    "mu": "0x1.0000000000000p+0",
    "s": "0x1.8000000000000p-1"
  }
}
```

This is a schema illustration, not an accepted cap. `t3_group_sha256` is
mandatory and is computed by `cap_t3.group_digest(group)`: remove only
`boxes` from the group, serialize the remaining dictionary with sorted
keys and compact JSON separators, and take its SHA-256 digest. This binds
the new record to the descriptor selected by `group_index`; the digest
itself supplies no mathematical inequality. Every descriptor and output
is recomputed after this identity check.

`t3_alignment.rows` and `.cols` are permutations of `0,...,5`.
`t3_alignment.wind` contains 36 arbitrary exact integers. With the
descriptor's group action `g`, their convention is

\[
z(Q)=h_{36}\bigl(\pi(gQ)+2\pi N-P_{F_6}\bigr).
\]

Here `pi` applies the recorded row and column permutations, and
`P_F6[a,b]=((a*b) mod 6)*pi/3`. The new distance windings therefore have
a **plus** sign. This is equivalent to the existing box checker's
internally proposed negative-sign convention after negating its winding.
No dephasing record is needed because the exact horizontal projector
annihilates all row and column constants. An alignment may be stored on
the transfer group instead; a cap-level `t3_alignment` takes precedence.

The distance alignment is independent of the ordered corner in the
transfer descriptor: any fixed representative distance proves an upper
bound on the quotient phase distance. Changing a winding by a pure row
or column gauge can therefore leave the mathematical assertion valid.

The descriptor's existing `wind` keeps its existing meaning: three
positive `2*pi` shifts of the first three corner phases. As in
`edgecert.check_T3`, an optional fourth entry is ignored. There are no
side-order, side-winding, or Psi-sign tests for T3.

## Anchors and remainder modes

The three existing mode names retain their ZC geometric meanings:

| `mode` | Anchor `c` | Proved radius squared about the anchor |
|---|---|---|
| `polynomial` | `r*t*e` | `Delta²=r²*(1-t²)` |
| `local` | `r*t*e` | `Delta²=r²*(1-t²)` |
| `local_sphere` | `r*e` | `Delta²=2*r²*(1-t)` |

Polynomial mode evaluates the source quadratic predictor at `c`.
Local modes enclose the true `Q(c),DQ(c)` through the original verified
normal contraction. Both use the source's original whole ball and its
uniform normal-remainder bounds.

`weighted_target` remains a JSON boolean, default `false`. In a T3 cap it
requests output-weighted bounds for all normal outputs needed by that
cap: the combined inverse-parameter linearization, the projected side
phase, and the horizontal distance. With value `false`, the ordinary
`||C||*tau` or `||C||*Z2` bounds are used. With value `true`, the verifier
recomputes the corresponding ZT `T0(C)` or `T2(C)` in Arb.

`psi_remainder` is a new string field, default `"global"`:

| Value | Certified remainder for the scalar Psi Taylor expansion |
|---|---|
| `global` | `36*D²` |
| `local_hessian` | `min(36*D², (||D²psi(anchor)||/2)*D² +12*sqrt(18)*D³)` |

`D` is the recomputed upper bound on the projected nine-entry side-phase
displacement. For the fourth parameter coordinate `-2*psi`, multiply
these bounds by `2*||Mth_inverse*e4||`. The entire parameter output is
then normalized by the target radius. The anchor Hessian comes from the
exact 24-frequency identity, and the cubic term uses the proved uniform
third-derivative bound `72*sqrt(18)`. Both alternatives and all affine
remainders are detailed in `T3_THEOREM.md`. No remainder number stored
by construction is trusted.

## Two norm witnesses and strict acceptance

The parameter affine output is normalized by the X-ball's radius. The
distance affine output is normalized by the exact limit `3/20`. For each
one the verifier obtains `d+F*x`, forms `F.T*F` and `F.T*d`, and checks
one 5 by 5 matrix. This matrix dimension depends on the four source
coordinates, not on whether the output has four or 36 entries.

Each of `t3_parameter` and `t3_distance` contains `lambda_` (or the
synonym `lambda`), `mu`, and `s`. It may also contain `multiplier_vec`,
a list of four exact witness scalars, default all zero. Replay requires

\[
\mu\ge0,\qquad s\ge0,\qquad \mu^2\ge\|a\|^2,
\]

and strict positive definiteness by interval LDL of

\[
\begin{pmatrix}
\lambda I-F^TF-\tfrac12(ea^T+ae^T)
&-F^Td-\tfrac12(\mu e-ta)\\
*&s-\|d\|^2+\mu t-\lambda
\end{pmatrix}.
\]

For each output independently, the final strict requirement is

\[
1-\sqrt{s}-\varepsilon_{\rm normalized}>0.
\]

All signs are Arb signs. Failed or inconclusive interval inequalities
reject the cap. The verifier reconstructs both witnesses; a supplied
matrix, a floating eigenvalue, or a claimed numerical margin is never
accepted. Finally the X-ball's exact parameter ellipsoid must lie in
W's `E_(1/5)`, using the existing `edgecert.edge_in_W` test.

## One exact coverage certificate for mixed caps

The existing `rational-s3-cap-cover-v1` certificate is unchanged. The
mixed replay passes only each actual cap's `v,h` to
`cap_coverage.verify_coverage`; no `normal` or `threshold` alias can
substitute another geometry. T0/T1/T3 caps are combined into one list and
one polar-facet certificate. Each listed facet is checked by exact
integer equalities and strict support inequalities; complete ridge
incidence and squared dual-vertex norms at most one establish coverage.

`full_sphere` is true only if the nonempty cap list passes every transfer
test and that same complete list passes exact coverage. Dropping a cap
requires a new mathematically valid coverage certificate; changing only
the recorded cap count is insufficient.

## Production prerequisites and scope

`seedcert.check_seed_caps(ball,seeds,groups,caps,edges=())` now accepts
mixed T0/T1/T3 spheres. For every T3 target, `edges[target]` must contain
the accepted `EdgeBall` and its C1e result, either existing tubes or a
whole-ball edge certificate. This preserves the pre-existing production
box path's target-chart requirement. The enclosing atlas checker also
retains its separate C1 and exclusion checks.

The compact standalone `cap_t3.replay` proves the geometric transfers
and their sphere coverage from the supplied source whole-ball models,
conditional on the inherited local matched-completion and W/XS chart
theorems. It does not replay the target's entire C1e proof, Stage C,
the global atlas, or a global no-four-MUB theorem. Its result's `scope`
field states that boundary explicitly.
