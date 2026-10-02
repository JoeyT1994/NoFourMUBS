# Coverage audit for refined branch-layer cells

Scope: bookkeeping of closed seed boxes. This is not a new exclusion
theorem and does not assert closure of the campaign layer.

For each recorded node, interpret its four binary64 centres and positive
binary64 radius as exact rational numbers. Its closed box is their
Cartesian product. The root must contain the requested enlarged parent.

At every split the verifier requires exactly 16 children. In coordinate
j, all children whose j-th address bit is zero must have the identical
interval I0, and all with bit one the identical interval I1. It verifies
that I0 reaches the parent's lower endpoint, I1 reaches its upper endpoint,
and the intervals overlap. Consequently I0 union I1 contains the parent
interval. The complete Cartesian product of the two choices in four
coordinates covers the parent box, including every boundary point.
Induction down the finite tree proves that the leaf union covers the
root. Duplicate paths, missing children, descendants below a leaf and
unreachable nodes are errors. All comparisons use exact rational arithmetic.

A leaf is closed only by replaying an existing outward-interval domain
exclusion, the production accelerated cover certificate, or a proved
whole-box T2 containment rule on at least its recorded box. A second-pass
root exclusion uses its existing enlarged input convention and complete
binary cover replay. Conditional R-gap results do not close whole leaves.
No sample, timeout, exception or unrecognized status supplies acceptance.

The inventory must enumerate every original survivor exactly once, bind
IDs and coordinates to layer.txt, and have one unambiguous outcome for
each input. Missing results remain open. A successful geometric audit
with open cells is not a campaign closure PASS.

Dependencies: CampaignSecondPass, the production domain tests and
ClusterCover, and whichever SeedLifting theorems the leaf receipts invoke.
The campaign's accepted reconstruction inputs remain accepted inputs.

## Fixed-guard limitation

If every tested child has radius at least g, it cannot be contained in
an axis-aligned cube of radius h<g: its coordinate interval has length
at least 2g>2h. In the retained integer corner-frame containment tests,
each nonzero matrix row gives transformed radius at least g as well.
This is a limitation of that containment policy, not of the seed theorem.
The exact cover argument above also permits subdividing an already
enlarged parent and checking all actual child endpoints, without assuming
a second fixed guard on every child; such a policy must be implemented
and audited separately before use.

## Exact inner-box and slab partition

`collar.py` implements that separate policy for rational boxes. Let the
already enlarged parent be P = product [a_i,b_i], and let an inner box
I = product [c_i,d_i] satisfy a_i <= c_i < d_i <= b_i. Keep I. For every
coordinate i, add the lower slab

    product_{j<i} [c_j,d_j] × [a_i,c_i] × product_{j>i} [a_j,b_j]

when a_i<c_i, and the analogous upper slab [d_i,b_i] when d_i<b_i.
This gives at most eight slabs. Given any point of P outside I, choose
the first coordinate outside its inner interval. The point belongs to
the corresponding slab. Points of I and shared boundaries are retained.
Therefore the nine-or-fewer closed boxes cover all of P; their interiors
are disjoint. No part of the parent's 2^-40 enlargement is removed.

Every endpoint is an exact rational. The audit reconstructs this precise
partition, requires exactly its leaves without duplicates, and checks
the rational volumes. The covering proof rests on the first-coordinate
argument, not on volume equality alone. Testing I by a retained T2 rule
at outward-enclosed rational centres and radii certifies only I. Slabs
remain open unless they receive independent certificates. This policy
does not assert that any whole parent is closed.

## Direct interval F-order filter

`ordering.py` evaluates the existing canonical-domain inequalities without
constructing H+. For M(x,y)=|1+exp(ix)+exp(iy)|^2, the exact identity
M=3+2 cos(x)+2 cos(y)+2 cos(x-y) gives the three horizontal squared Gram
moduli as M(a,b), M(c,d), M(a-c,b-d), and the vertical ones as M(a,c),
M(b,d), M(a-b,c-d). These are precisely the quantities ordered in
`NumericalCampaign/Certification/domain.jl:f_test`, justified by the
campaign reduction. Signs or conjugation of off-diagonal Gram entries
do not change their moduli.

Outward Arb evaluation over the whole input box encloses these quantities.
A strictly negative enclosure for Xh-Yh, Yh-Zh, Xv-Yv, Yv-Zv or Xh-Xv
contradicts respectively the horizontal order, vertical order or first
component of the required lexicographic order. This proves the box misses
F, hence D0 intersection F. Equality, overlap, or a resource/input failure
does not exclude. The scope is outside_F, not outside physical D0.
The registered verifier includes a strict negative example and boxes
containing an equal-modulus F point that must remain unresolved.

## Mixed F/side binary cover

`fast_prune.py` first applies the F filter, then the retained unconditional
`CampaignSecondPass.check_leaf` at phase depth 8 (and depth 10 at terminal
seed boxes). The latter uses the proved paired-side constraints. Each
accepted leaf thus misses F or misses physical D0, so in either case it
misses D0 intersection F. The exact complete binary partition argument
of CampaignSecondPass proves the whole enlarged parent misses that
intersection. This is deliberately a different scope from outside_D0.
The root guard is retained by exact subdivision of the enlarged root,
as in the existing second-pass proof. Failed leaves or any exhausted
budget keep the entire parent open. Replay reconstructs every leaf and
reruns the selected engine; no stored numerical bound supplies acceptance.
