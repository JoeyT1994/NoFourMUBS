# Five additional direct Fourier tubes of radius 1/36

**Proved by new complete local replays.** For the raw Fourier convention
in PROOF.md, every parameter pair in any of the following closed cells
has a quartet-free maximum-column projector tube of radius **1/36**:

| Grid | A | B | Complete-cover nodes |
|---|---:|---:|---:|
| 180 | 0 | 0 | 9,128,003 |
| 180 | 2 | 0 | 9,073,859 |
| 180 | 3 | 0 | 9,007,715 |
| 180 | 3 | 1 | 9,026,147 |
| 180 | 5 | 0 | 8,904,003 |

A cell means a in [A/180,(A+1)/180] and
b in [B/180,(B+1)/180], in turns. This is a regional theorem, not a new
whole-family uniform radius. Equivalence and conjugation images inherit
the same direct radius. For a transposed carrier, apply the direct test
to its actual transpose; no column-distance transpose invariance is used.

## Complete finite certificates

Reuse the pinned `WideFamilyTube/certificate.py`, `cover.cpp`, exact
rational centers and `PracticalTube` scalar arithmetic without edits.
For each listed cell set the raw amplitude tolerance to tau=1/6 and the
common-ray ball radius to rho=1/6. These two numbers have different
meanings. The resulting matrix-projector radius is 1/36.

The 48 rational unit-ray centers for each cell are exactly those in its
pinned `centers_180_A_B.json`. Their origin and root accuracy are not
assumptions. `verify_cell` checks their unit coordinates exactly, builds
the exact possible-orthogonality and possible-unbiasedness graphs, and
excludes every pair of compatible six-cliques, including self-edge
checks and an independent literal enumeration of the restricted second
basis candidates.

The integer cover starts with all 19^5 closed phase cells. It either
rejects a whole cell by an outward necessary raw-amplitude equation,
puts the whole cell inside a retained center ball, or visits all 32
children. No maximum-depth unresolved cell is permitted. Every accepted
run satisfies the complete-forest identity

    31*nodes + 19^5 = 32*(rejected+included).

All 48 labels occur. All 384 positive controls per cell are retained by
the actual rejection routine. The trigonometric table is regenerated
with Arb; its SHA-256 is
`fc771aee6c2cdab092dd0c9cc8b261fc7623b5f76279fdf08d4a854d64b7e35a`.
The compiler enables undefined-behaviour sanitization, leaves assertions
on, and must complete without an arithmetic or cover failure. The
existing exact integer-range bounds are checked again. The scalar
kernel already admits tolerance denominators from 6 through 16384;
these new trials use its existing denominator-6 branch.

The five covers visit **45,139,727 nodes** in total and retain **1,920
positive controls**. The complete logs, exact graph cases, source bindings
and fresh replay receipt are under the new verification directory.
`extra_tubes.py` independently rebuilds and repeats all five covers on
every clean module replay; stored counts do not authorize success.

## Matrix transfer

If a physical normalized basis U has column-projector distance d_j from
a reference column, and x is unbiased to that column of U, phase-aligned
unit-vector geometry gives raw amplitude error at most

    (1-sqrt(1-d_j^2))*sqrt(6) + d_j*sqrt(30).

For 0<d_j<=1/8 this is strictly less than 6*d_j, as in the pinned
WideFamilyTube theorem; it is zero at d_j=0. Therefore d_j<=1/36 implies
raw amplitude error less than 1/6. A hypothetical quartet in the stated
closed matrix tube would produce two missing bases inside the fully
covered relaxed common-ray set. The exact graph obstruction forbids
those two bases. This proves the new direct tube radius.

No reconstruction assumption is used in this matrix-tube theorem. The
side-fibre inputs enter only when lifting a seed box into one of these
tubes. A sixth trial at (A,B)=(10,2) was inconclusive and is explicitly
excluded from the new manifest; its older 1/48 radius remains available.
