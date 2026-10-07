# Expanded F6 quartet-exclusion radius 1/30

**Proved, unconditional, computer-assisted.** No quartet edge has maximum
column-projector distance ≤**1/30** from the F6 monomial orbit. This
increases the previous radius 1/36 by 20%. It is a local theorem at F6;
the uniform whole-Fourier-family radius remains 1/16384.

The proof is the [previous cluster proof](PROOF.md), with raw Fourier
amplitude tolerance **1/5** and projective label radius **5/27**. The
strict amplitude-transfer estimate gives error <6d≤1/5 for 0<d≤1/30;
at d=0 the error is zero. Both constants are within the proved transfer
range d≤1/8.

For the same 48 exact rational unit-vector centres, an exhaustive integer
cover gives:

- 7,485,187 nodes;
- 7,110,861 rejected leaves;
- 217,792 included leaves;
- no unresolved leaves;
- all 48 chirp/level positive controls retained.

The outward trig table is regenerated. The C++ replay runs with
undefined-behaviour sanitization. Its complete forest identity is checked.
The expanded source differs from the audited earlier cover in precisely
three constant substitutions (and one comment): tolerance denominator
6→5; label denominator 6→27; label numerator 1→5. The integer norm,
rounding and cell-radius bounds are unchanged, and the enlarged products
are checked against the integer range.

For every one of the **1176 unordered pairs including self-pairs**, exact
rational evaluation proves that both compatibility predicates at radius
5/27 have exactly the same truth values as at radius 1/6:

    orth: p ≤ 4ρ²(1−ρ²),
    UB:   A≤0 or A²≤5p(1−p),
          A=3(1−2ρ²)²−5/2+2p.

Therefore the exhaustively enumerated graph is unchanged: 462
orthogonality edges, 828 unbiasedness edges, 52 candidate C six-cliques,
and no compatible D six-clique. Self-compatibility is excluded, so no
multiplicity assumption is missing.

Replay:

    python3 -B ProvenResults/FourierNeighbourhood/ClusterTube/verify_expanded.py

Receipts: `Verification/T2_F6_expanded_tube_2026-09-29/`.
A full-width seed certificate does not follow from this matrix theorem
alone; it still needs a complete seed-to-carrier estimate.
