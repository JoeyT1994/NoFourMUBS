# A quantitative proof of the enlarged-cell cover

**Status: proved for the stated tree and depth.** No reconstruction or
classification input is used. This proves geometry, not the completeness
of a campaign's saved records or the correctness of its prune predicates.

## Statement

Start at centre 0 and radius p=RN(pi) in binary64. At depth l let the
nominal radius be p/2^l. Form child centres by rounded addition/subtraction
of half that radius, as in Campaign/driver.jl. Assume round-to-nearest,
depth at most 13, and exact round-trip serialization of the binary64
centres. The closed boxes with the computed enlarged radius

    e_l = RN(p/2^l + 2^-40)

at every terminal node of a complete adaptive tree cover [-pi,pi]^4.
Nodes terminated by a rigorous exclusion count as terminal nodes too.

## Proof

Binary64 spacing on [2,4) is 2^-51, so |p-pi|<=2^-52. Power-of-two
scaling here is exact. Associate each computed node with the ideal node
obtained from the same sequence of signs, using exact pi and exact sums.
Its centre is pi times a sum of signed 2^-j for 1<=j<=l, whose absolute
value is less than 1. Its ideal radius is pi/2^l.

All computed centres remain in (-4,4): the sum of the step magnitudes
is less than p, and at most 13 errors of magnitude 2^-52 cannot bring it
to 4. Thus each centre addition incurs at most 2^-52 absolute error.
Comparison first to exact arithmetic with p, then to pi, gives

    |computed centre - ideal centre| <= (l+1)2^-52,
    |nominal radius - ideal radius| <= 2^(-52-l).

The enlargement addition has absolute rounding error at most 2^-52.
Consequently the computed enlarged node contains its ideal node whenever

    2^-40 > (l+2)2^-52 + 2^(-52-l).

For l<=13 the right side is at most 16*2^-52=2^-48, strictly less
than 2^-40. This holds separately in each of four coordinates. Ideal
children partition their ideal parent with shared boundaries. Induction
over any complete adaptive tree proves coverage by its ideal terminal
nodes, each contained in its computed enlarged node. No assertion that
enlarged children cover the **whole enlarged parent** is required.

The same proof covers the layer pruner's exact/outward Arb addition of
2^-40: it incurs no adverse enlargement rounding beyond this bound.

## Replay and limitations

`python3 ProvenResults/DyadicTiling/verify.py`

The verifier brackets pi using rational alternating series and Machin's
identity. It independently enumerates all 16,383 one-dimensional nodes
through level 13 and proves that each rounded enlarged interval contains
its ideal interval. Cartesian products and the adaptive-tree argument
above supply universal four-dimensional scope. Registered as `dyadic_tiling`.

Campaign environment variables can override maximum depths. This theorem
does not silently validate arbitrary values of CERT_MAXDEPTH,
EXPAND_EXTRA, or EXPAND_SINGULAR_EXTRA. The saved headers and complete
tree/accounting audit must show that the actual run meets the hypotheses.
The live cluster records are not in this archive and were not inspected.
