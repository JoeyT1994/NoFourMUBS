# Coupled side covers without reconstruction

**Theorem.** The algorithm in `paired_prune.py`, when it returns
`ok=True`, proves that the entire closed input seed box has no physical
completion in the strict maximal-corner domain D₀. It allows boxes
crossing R=0. It neither selects a reconstruction sheet nor assumes
that a side label contains at most one solution.

The new coupling supplies two exclusions beyond a sharper R bound;
together they exclude four of the 53 retained production sample boxes.
This is a domain prune, not a quartet certificate on genuine D₀ points,
and does not close T2.

## Polynomial completion constraint

Simultaneously dephase the first row and first column of a physical raw
Hadamard H, and partition it as `[[E,B],[C,D]]`, with 3×3 blocks. Let

    G = 6I − EE† = BB†,       g = det(G) ≥ 0,
    W = E† adj(G).

Orthogonality gives `EC† + BD† = 0`. For every square B, singular or not,

    B† adj(BB†) B = det(BB†) I.

This follows from the polynomial adjugate product identity and
`X adj(X)=adj(X)X=det(X)I`. Multiplying the orthogonality equation by
`B† adj(G)` and taking adjoints therefore gives

    g D + C W B = 0.                                      (1)

If v=(1,x,y)ᵀ is any column of B and u=(1,p,q) is any row of C, flatness
of the corresponding entry of D implies

    |u W v| = g.                                         (2)

There is **no conjugation on u** in (2). The vertical side cover applies
the horizontal construction to Eᵀ: its column vectors are precisely
transposes of the rows of C. The horizontal and vertical dephasings
coexist because they use, respectively, the last three column phases
and last three row phases.

Equation (2) is necessary even when g=0. In that case it may be weak,
but dividing by g is unnecessary. No step divides by R either.

For `E=[[1,1,1],[1,a,b],[1,c,d]]`, write
`s=−1−a−b`, `t=−1−c−d`, `q=−1−c bar(a)−d bar(b)`. Then

    G = [[3,bar(s),bar(t)],[s,3,bar(q)],[t,q,3]],
    g = 27−3(|s|²+|t|²+|q|²)+2 Re(s q bar(t)).

The adjugate is the already verified explicit formula in
[SideTriplePrune](../SideTriplePrune/PROOF.md). Unit moduli fix the
three diagonal entries of G exactly; interval evaluation of W and g
then encloses their values for every seed in the box.

## Complete finite covers

Let M be a certified upper bound for R(E) throughout the seed box.
Use [SideColumnPrune](../SideColumnPrune/PROOF.md) in both orientations,
with its complementary-corner bound M. Every column of B and every row
of C belonging to a physical D₀ completion lies in a retained label.
All discards use necessary moment or maximal-corner conditions.

For each orientation, retain every unordered multiset of three labels
passing all pair tests and all three moment sums from SideTriplePrune.
Loops and repeated labels remain allowed. Denote these sets T_B and T_C.
Every actual side block belongs to a retained multiset.

For each active B label i and C label j, evaluate (2) using outward
complex and real balls over the entire seed box and both labels.
Keep the bipartite edge (i,j) unless the ball `|u W v|−g` excludes zero.
For a pair of actual side triples, **all nine cross edges** must remain.
If no pair in T_B × T_C has that property, no physical D₀ completion
exists. Empty T_B or T_C already proves this conclusion.

The finite matching algorithm intersects the three B neighbour sets,
then checks every C triple all of whose labels lie in that intersection.
Its inverted index only removes triples containing none of the labels
in the intersection. Pools of one or two labels are not discarded:
repetition is legitimate. The verifier compares this procedure with
literal nine-edge enumeration on every 3-by-3 bipartite graph and every
pair of three-label multisets.

Each interval may contain combinations coming from different seed
points. This only enlarges the retained sets and cannot remove a
completion at one common seed point.

## Fractional R bound and resource limits

The existing outward Taylor bound for R is applied on all 16 children
formed by halving each seed interval. The maximum of their outward
upper endpoints is M; no integer rounding is used. These closed
children cover the parent. Each child bound is checked against M in
Arb arithmetic. A nonfinite bound returns unresolved. If M≤0, there is
no point of the strict domain D₀, which requires R>0.

For positive M the full covers, side graphs, and cross graph must finish
before an exclusion is accepted. Hitting a node, label, pair, triple,
cross-pair or matching limit returns `ok=False`. The low-level function
`cover_paired_sides` requires the caller to justify M. A conditional cap
M on just the subset R≤M would justify only a conditional exclusion of
that subset, not exclusion of the whole seed box.

Acceptance uses Arb at 96 bits. No rounded scalar, sampled carrier or
numerical root is used to accept a certificate. Default phase depth 10
means 10 binary splits after the initial 8×8 torus partition; labels
have width 1/256 turn in each coordinate when neither direction is
removed earlier.

## Reproducible scope

[data/production_boxes.json](data/production_boxes.json) preserves all
53 retained sample boxes and the SHA-256 of the original benchmark.
Centres mean the exact binary64 numbers encoded there; radii are π/512
radians with outward enclosure, also containing the original binary64
radius. The replay compares the previous integer-cap test, the
fractional-cap single-side test, and the joint test at depth 10.

The previous test excludes none; the fractional cap excludes indices
23 and 37; the joint test additionally excludes indices 6 and 20.
Indices are zero based in the retained list of 53. The other 49 are
unresolved at these resource limits. This measured improvement is not
an estimate for the entire production layer.

Positive controls include an actual Fourier matrix with singular G,
a nonsingular Fourier corner, and a completed cover of a box containing
a known strict D₀ Fourier-family point. The proof is unconditional for
physical completions. Applying it to the named reconstructed H₊ uses
the campaign's accepted assertion that H₊ is physical. The live
campaign driver is unchanged.
