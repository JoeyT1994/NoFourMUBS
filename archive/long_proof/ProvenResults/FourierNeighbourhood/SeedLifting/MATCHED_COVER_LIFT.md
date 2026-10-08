# Larger seed cubes from complete matched side covers

**Proved, computer-assisted, unconditional for physical completions.**
Let θ be the four phases of a dephased leading corner of a physical
order-six Hadamard. On the maximal-corner domain D₀, every seed in any
of the following closed cubes is excluded as a quartet edge:

| Centre θ₀, in radians | Half-width in every coordinate |
|---|---:|
| (4π/3, 5π/3, 0, π) | **1/512** |
| (0, 2π/3, π, 0) | **1/1024** |
| (0, 2π/3, π, 2π/3) | **1/2048** |

The condition is `||θ−θ₀||∞≤h`, with coordinates taken modulo 2π.
The same conclusion holds after any of the 72 dephased permutations
of the three leading rows/columns and optional transposition.

The first cube is **four times wider** than the earlier
[R=0 cube](R_ZERO_LIFT.md). It contains both signs of R and genuine
strict D₀∩F points. Its proof has a complete 255-leaf seed partition:
248 leaves enter the certified F6 matrix tube and 7 have no D₀ completion.
All leaves are certified; the partition leaves no unresolved region.
The other two cubes are each certified without seed subdivision.

The constants control **individual normalized column and row errors**,
not the normalized Frobenius norm of the entire matrix. Both error
bounds are below 1/36, so the [F6 ClusterTube](../ClusterTube/PROOF.md)
excludes the carrier and also its transpose. No lower bound on R and
no reconstruction or side-root continuation is used.

**Limits.** The largest half-width is still π times smaller than the
production half-width π/512. These cubes cover three of the six F6 seed
classes under the leading-corner frame group. They do not give a
uniform neighbourhood of the whole Fourier family, a universal R
threshold, or exclusion of a full retained production sample box.
The complete T2 and combined T1′/T2 targets remain open.

## 1. References and conditioning

Use the raw F6 matrix `ζ^(rc)`, ζ=exp(πi/3). For row and column orders
r,c, its dephased entries are

    H₀[i,j]=ζ^((r_i−r_0)(c_j−c_0)).

For the three cube centres above, respectively, use:

| Cube | Row order | Column order |
|---|---|---|
| First | (0,5,3,1,2,4) | (0,2,1,3,4,5) |
| Second | (0,2,3,1,4,5) | (0,3,4,1,2,5) |
| Third | (0,2,5,1,3,4) | (0,3,4,1,2,5) |

These are actual physical references, not approximate matrices.
`fourier_reference` checks that both orders are permutations.

For each reference E₀, the code proves a positive lower bound κ₀ for
`6I−E₀E₀†` by Sylvester's criterion: all three leading principal
minors of `6I−E₀E₀†−κ₀I` have strictly positive real lower bounds.
The matrix is Hermitian exactly. The search uses 24 dyadic bisections;
only successful positivity tests raise the certified lower endpoint.
A failed test need not prove an upper bound on the eigenvalue. The
references in the table all give κ₀>3/4.

Consequently `||E₀||op≤ν=sqrt(6−κ₀)`. If e bounds `||E−E₀||F` on a
seed box, the elementary expansion E=E₀+Δ gives

    6I−EE† ≥ κ I,      κ=κ₀−2νe−e².                      (1)

The algorithm requires κ>0. A Gram failure is unresolved, never an
exclusion. This argument remains valid across R=0.

## 2. Match every allowed side choice

For each seed box, use the certified fractional upper bound for R and
the complete horizontal/vertical side covers described in
[R_ZERO_LIFT.md](R_ZERO_LIFT.md). All necessary maximal-corner conditions
are retained. A failed resource limit is unresolved. If one complete
side cover has no compatible triple, the entire box misses D₀.

Otherwise assign every retained B triple to the three columns of B₀,
and every retained C triple to the three rows of C₀. For a fixed
triple and a fixed permutation, outward interval arithmetic gives both
its total squared Frobenius error and the largest squared individual
vector error. The **same permutation** supplies both bounds. Maximizing
over all retained triples proves four uniform bounds:

    ||B−B₀||F≤b,   max column error in B≤β,
    ||C−C₀||F≤c,   max row error in C≤γ.                  (2)

These two side matchings coexist: one permutes the last three columns,
the other the last three rows. Neither changes E or the opposite side.

An optimization first assigns each label to a minimum-cost reference
vector. If the three assigned indices are distinct, that permutation
minimizes the sum of costs. Otherwise all six permutations are tested.
A separate audit compares this optimization with literal six-permutation
search on all 180470 retained triples of a complete 1/1024 cube. They
agree on both bounds and the witnesses. Repeated labels are allowed;
there is no root-count or uniqueness assumption.

## 3. Improved completion estimate

The new [column/row completion lemma](COLUMN_COMPLETION.md) proves

    Lcol=max{sqrt((e²+c²)/6),
             sqrt([β²+(sqrt(3)(e+c)+νβ)²/κ]/6)},
    Lrow=max{sqrt((e²+b²)/6),
             sqrt([γ²+(sqrt(3)(e+b)+νγ)²/κ]/6)}.          (3)

The crucial improvement is to solve the orthogonality equation one
column at a time. Every reference D column and actual B column has
norm sqrt(3), and only the individual side-column error β is needed
for the corresponding D column. Applying the same argument to adjoints
gives the row bound.

Both quantities in (3) bound the respective maximum projector errors.
Every accepted lifting leaf verifies `Lcol≤1/36` and `Lrow≤1/36` in
Arb arithmetic. The reference is in the F6 monomial orbit, so the
ClusterTube theorem excludes a quartet edge. The row inequality permits
transposing back after a leading-corner frame transformation; no
transpose invariance of maximum-column distance is assumed.

As an explicit rational illustration, the first centre's cube of
half-width 1/1024 already passes without subdivision. Valid constants are

    e=1/512,     b=0.011680,    c=0.019952,
    β=0.007988,  γ=0.014884,    ν=2.2883,    κ=0.7549.

Here e follows directly from angular distance. The side constants are
outward upper bounds from the complete covers. The rational comparisons
`ν²>3+sqrt(5)` and `3−sqrt(5)−2νe−e²>κ`, followed by (3), are audited
exactly, using the rational upper bound 1.73206 for sqrt(3). The larger
cube uses separately certified constants on each subbox instead of one
set for the entire cube.

## 4. Complete partition of the 1/512 cube

[data/matched_cube512.json](data/matched_cube512.json) records 255 binary
paths. Starting from the closed root cube, split axis `depth mod 4` in
half at each step; 0 selects the lower half and 1 the upper half.
Each leaf records its phase-cover depth, 18 or 20.

The independent partition audit checks a full binary tree: every
non-leaf has both children, no leaf has descendants, and the root is
covered. A separate exact rational check verifies the normalized leaf
coordinates and `sum 2^(−path length)=1`. Deleting or duplicating a
leaf makes the audit fail. Closed shared faces stay covered.

There are 6 leaves at seed depth 7, 239 at depth 8, and 10 at depth 9.
Of the 255 leaves, 110 use phase-cover depth 18 and 145 use depth 20.
The replay proves 7 outside D₀ and certifies the matrix tube on the
other 248. The largest observed certified bounds are approximately
0.027722 for columns and 0.027769 for rows, both below 1/36. These
rounded decimals are descriptive; acceptance uses the outward balls.

The entire leaf list and the two additional cubes are replayed at both
96 and 160 bits. This is a proof of the entire closed cube, not a
collection of sampled or selected passing subboxes. The first cube
contains the earlier strict D₀ Fourier curve and both-sign R witnesses;
its nonvacuity follows from the earlier exact arguments.

## 5. Which F6 seed configurations are covered

For sorted row and column triples of F6, a dephased seed has integer
sixth-root exponents

    ((r₁−r₀)(c₁−c₀), (r₁−r₀)(c₂−c₀),
     (r₂−r₀)(c₁−c₀), (r₂−r₀)(c₂−c₀)) modulo 6.

Applying all 72 exact leading-corner frame maps and taking a canonical
representative yields the following exhaustive finite classification:

| Canonical exponent vector | Number among 400 positional corners | Covered class |
|---|---:|---|
| (0,0,2,4) | 48 | No |
| (0,2,3,0) | 72 | Second cube |
| (0,2,3,1) | 144 | First cube |
| (0,2,3,2) | 72 | Third cube |
| (1,2,2,4) | 36 | No |
| (2,4,4,2) | 28 | No |

This classification concerns seed frames, not six different Hadamard
families. All references are equivalent to F6. Uncovered classes remain
open for this method; no fraction of the production workload is inferred
from these multiplicities.

## 6. Using the result

[side_cover_lift.py](side_cover_lift.py) exports two distinct functions:

- `certify_known_cubes(centers,radii)` is the inexpensive campaign-facing
  rule. It checks outward containment of the full box in a proved cube,
  allowing every leading-corner frame and integer phase wrapping. Only
  `ok=True` authorizes quartet exclusion on the box's D₀ portion.
- `certify_box(centers,radii,...)` runs complete side covers and computes
  a new instance of (1)–(3). It may prove that the box misses D₀ instead;
  the returned reason distinguishes the cases. A resource limit or
  insufficient bound returns `ok=False`.

Replay all certificates with:

    python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/verify_side_cover_lift.py

No live production driver is modified. Dependencies are physical
flatness/orthogonality, the polynomial side-cover tests, the completion
lemma, and the unconditional F6 tube. Applying the physical theorem to
the named H₊ uses its accepted physicality, but the lifting proof needs
no accepted reconstruction formula, selected root, path or branch lemma.
