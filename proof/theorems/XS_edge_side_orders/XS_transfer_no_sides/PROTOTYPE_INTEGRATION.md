# Reference T3 checker without side data

`t3_no_sides.py` is a small integration prototype for the supplied Python
Taylor-model APIs. It is not a deployed replacement for the production Arb,
Julia, or Lean code.

## Caller contract

The caller supplies a real phase TM `Q` of shape `(batch,36)` whose represented
matrices are already proved Hadamard. It supplies an already certified uniform
upper bound `coarse_distance <= 3/20` for their horizontal phase quotient
distance from F6. The script validates the numerical bound but does not
construct or prove that premise.

The accepted W chart theorem and the new XS transfer theorem are separate
proof dependencies. The checker itself does not establish either theorem.

```python
from fractions import Fraction
from t3_no_sides import EdgeTarget, check_T3_no_sides

target = EdgeTarget.from_record(edge_record)  # Reuse across source batches.
checked = check_T3_no_sides(
    Q, target, transfer_group,
    coarse_distance=Fraction(3, 20),
)
```

Exact rational input is allowed at the inclusive distance endpoint `3/20`.
For an Arb interval input, its entire enclosure must be in `[0,3/20]`; a ball
straddling the endpoint is rejected.

## Checks performed

Only `rows`, `cols`, `g`, and `wind[:3]` are read from the transfer record. The
new format accepts three windings. Four-element legacy arrays also work, and
their fourth item is neither read nor validated. No `hcols`, `vrows`,
`wind_h`, or `wind_v` field is accessed.

The first three corner cross ratios are linear transformations of `Q`.
`Psi` is evaluated directly on the nine entries of the horizontal submatrix,
with its complement columns listed in increasing order. This deterministic
listing has no reference-angle or nearest-order calculation; the signature is
permutation invariant. No fourth corner seed, side angles, or Krawczyk tube
are part of the transfer check.

The target geometry reads only `chart`, `Mth`, `r`, and optional `q0`. All
binary64 records are treated as exact rationals. The target inverse is
enclosed in Arb. For `A=diag(1,1,1,1/24)*Mth` and
`c=diag(1,1,1,1/24)*q0`, the code certifies

\[
\sqrt{c^TWc}+r\sqrt{\lambda}<\frac15,
\qquad
\lambda\ge\lambda_{\max}(A^TWA).
\]

An outward Gershgorin row-sum bound gives `lambda`. Thus the complete target
ellipsoid lies inside W's exact domain, including nonzero centers. This
sufficient bound is not an optimal ellipsoid-containment test.

Finally, the supplied `tmarb.norm_sup` proves the strict target condition

\[
\sup_{\text{source box}}\|Mth^{-1}(p_K-q0)\|_2<r.
\]

The returned `TransferCheck` holds `p_K`, its target coordinates, the
membership upper bounds, the target-domain bound, and the assumed distance
bound. Combining these verified conditions with the external transfer theorem
gives the mathematical transfer for `K=g applied to exp(iQ)`. The enclosing proof retains its existing rule for the symmetry `g`; ordinary row/column equivalence of the untransformed source is not silently inferred.

## Validation performed

`verify_t3_prototype.py` ran successfully, with 26 checks recorded in
`receipts/prototype.json`. They exercise exact F6, gauge and permutation
invariance, phase winding changes, all four symmetry actions against an
independent direct Acb signature evaluation, and a nonconstant exact Fourier
family represented by a whole-box TM. They also check rejection of a genuine
nearby Fourier-family point outside a tiny target, invalid coarse bounds,
targets outside W's domain, and malformed records.

Deprecated fields were replaced by opaque objects behind a mapping that
raises if any of those keys are accessed. The unused fourth legacy winding
was likewise opaque. Changing only the fourth seed entry left parameter
extraction unchanged; that extraction-only check makes no Hadamard assertion
about the modified matrix.

The development target's verified metric distortion is bounded by
`lambda=1.0000000000000006661338147750939242541790008544921875`.
Its W tangent-radius upper bound is approximately
`0.115000000000000043299`, so its stored floating frame has been accounted for.

Example replay:

```bash
python verify_t3_prototype.py --receipt receipts/prototype.json
```

No complete source-transfer certificate was replayed by this smoke suite. No
edge-certifier module was imported, and no MUB atlas or Stage C computation was
used.
