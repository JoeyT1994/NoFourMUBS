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


## Two stronger regional tubes of radius 1/30

The closed cells (A,B)=(0,0) and (2,0), at grid 180, admit the stronger
**matrix-column projector radius 1/30**. These are new regional results,
not an assumption based on the isolated F6 tube. The relaxed common-ray
cover uses raw-amplitude tolerance 1/5 and common-ray projector radius
rho=5/27. The transfer inequality above gives raw-amplitude error less
than 1/5 at every positive matrix distance at most 1/30.

`cover30.cpp` differs from the pinned integer cover in exactly two constant
expressions, checked byte-for-byte at replay. Its confinement condition is

    27*(dist + 6*rad) < 30*Q,

which is exactly (dist+6*rad)/(6*Q) < 5/27. Its parameter assertion admits
only tolerance denominator 5 and this radius. The scalar tolerance test,
integer square-root corrections, phase/parameter enclosures, rejection
logic and complete 32-child recursion are unchanged. `stronger_tubes.py`
checks the expanded signed-integer range bounds and runs with UBSan.

The graph inequalities remain valid at rho=5/27. They follow from
projective-angle triangle inequalities, using two balls of angular radius
arcsin(rho); here 2*arcsin(rho) is below pi/2. The necessary orthogonality
condition is p <= 4*rho^2*(1-rho^2). For unbiasedness retain an edge if
A <= 0 or A^2 <= 5*p*(1-p), where
A=3*(1-2*rho^2)^2-5/2+2*p. Every coefficient is rational. Self-edge tests
exclude repeated labels within either basis. Literal and recursive
six-clique enumerations both exclude a compatible second basis.

| Cell | Complete-cover nodes | C six-cliques | Largest candidate D pool |
|---|---:|---:|---:|
| (0,0)/180 | 11,803,235 | 52 | 8 |
| (2,0)/180 | 11,713,987 | 64 | 8 |

All 48 labels appear in each cover and all 768 positive controls pass.
Every clean replay repeats the covers, exact graphs, generated arithmetic
and complete-forest identities. Trials at (3,0), (3,1) and (5,0) did not
pass the stronger graph test and are not adopted; their proved radius
remains 1/36. Failure of this sufficient graph test is inconclusive.


## Exact transfer improvement: radii 1/34 and 1/28

The original matrix radii above used the convenient inequality f(d)<6d.
The same covers prove larger matrix tubes without changing any raw-ray
cover, graph, phase-cell bound or common-ray radius. For 0<=d<=1/8,

    f(d) = (1-sqrt(1-d^2))*sqrt(6) + d*sqrt(30)
         <= (4/3)*d^2 + (11/2)*d.

Indeed sqrt(6)<5/2, sqrt(30)<11/2, and sqrt(1-d^2)>=7/8, so
1-sqrt(1-d^2)=d^2/(1+sqrt(1-d^2)) <= (8/15)*d^2.
All comparisons are exact rational inequalities after squaring positive
quantities. The upper polynomial is increasing for nonnegative d.

At d=1/34 the upper bound is 565/3468 < 1/6, with strict margin
13/3468. At d=1/28 it is 233/1176 < 1/5, with strict margin
11/5880. Consequently the five denominator-6 covers prove radius **1/34**,
and the two denominator-5 covers prove radius **1/28**. Their smaller
original radius statements remain true. These are closed matrix tubes,
since the raw tolerance comparisons remain strict even at their endpoints.
`transfer.py` checks these rational comparisons in every clean replay and
restricts their use to the explicitly replayed parameter cells.

In particular the closed cell (0,0)/180 contains the exact F6 parameter
point, so its 1/28 tube also applies to every monomial image of F6.
The additive root-free fallback calls the pinned residual-completion
validator with this newly proved radius. The older 227-leaf base cover
continues to replay at its original radius 1/30.
