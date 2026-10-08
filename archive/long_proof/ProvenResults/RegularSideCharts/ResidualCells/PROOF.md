# Four local R gaps and a complete reconstruction cover

The seven cells are indexed as in [the preceding diagnostic](../PROOF.md#4-what-the-seven-t6-cells-actually-show).
Their exact centres are the binary Float64 values in
[cells.json](../data/cells.json); the exact half-width is the binary
Float64 value of `math.pi/512`. Statements below concern these whole
closed boxes, not the rounded centres in the original sample log.

## 1. A local gap on four full cells

**Theorem.** In cells 1, 2, 4 and 5, every physical order-six Hadamard
completion whose leading corner attains the largest R among all 400
corners has leading-corner R strictly greater than 1. In particular,

    θ ∈ D₀ ∩ (cell 1 ∪ cell 2 ∪ cell 4 ∪ cell 5)  ⇒  R(θ)>1.

The statement about physical completions is unconditional. Its
application to H₊ uses only that the accepted reconstruction is physical.
It requires neither an exclusion neighbourhood of the Fourier family
nor a reconstruction formula on R=0.

**Proof by outward certificate.** Suppose a maximal leading corner in
one of these boxes has R≤1. Each column (1,x,y)ᵀ of its normalized
horizontal side must satisfy the necessary moment constraints of
[SideColumnPrune](../../CornerBounds/SideColumnPrune/PROOF.md).
Every competing corner formed from two seed columns and this side
column must have R≤1. Thus an exhaustive phase cover can discard any
column box whose moment conditions are impossible or whose certified
competing-corner R is greater than 1.

The three actual side columns must survive in three remaining labels,
with repeated labels allowed. The adjugate, remaining-column and
aggregate moment conditions of
[SideTriplePrune](../../CornerBounds/SideTriplePrune/PROOF.md) must hold
for those labels. The verifier exhausts all compatible triples,
including repeated labels and self-loops, and finds none.

It uses `cover_side_triples` with cap **1**, depth 12, maximum 2048
labels and phase-cover budget 100000. Only the horizontal orientation
is needed. All real/complex inequalities use outward Arb arithmetic.

| Cell | Remaining labels | Compatible graph edges | Surviving triples |
|---|---:|---:|---:|
| 1 | 66 | 1 | 0 |
| 2 | 72 | 4 | 0 |
| 4 | 204 | 542 | 0 |
| 5 | 83 | 15 | 0 |

This contradicts the supposed physical side. The inequalities exclude
R=1 as well: rejecting a competing corner uses R_competing>1, so no
strict R<1 premise is necessary. ∎

**The cap is conditional.** Here 1 is not claimed to bound R on the
whole seed box. It bounds R under the hypothesis being contradicted.
This is a new use of the existing side-triple certificate. Calling the
low-level routine with this cap does **not** authorize discarding the
whole box. It authorizes discarding only its R≤1 portion from D₀.

In particular, the R=0 crossings of cells 1, 2 and 4 have a certified
gap from the relevant D₀ portion. The bounds for cells 3, 6 and 7
remain open; unsuccessful finite searches establish nothing about them.
This is a local T1-style result supporting T6, not the uniform T1′ target.

**Explicit clearance from the wall.** For these four cells, the verifier
also certifies `sup_box Σⱼ |∂ⱼR| < 10000`. It uses the centre gradient
and the outward Hessian bound already implemented for the corner test:

    Σⱼ |∂ⱼR(θ)| ≤ Σⱼ |∂ⱼR(c)| + h Σⱼₖ sup_box |∂ⱼ∂ₖR| < 10000.

The mean-value theorem on the convex seed box gives
`|R(θ)−R(ζ)| < 10000 ||θ−ζ||∞` for distinct points in that box.
If θ belongs to D₀ and R(ζ)=0, the left-hand side exceeds 1.
Consequently `||θ−ζ||∞ > 1/10000` radians. Thus the within-cell
10⁻⁴-neighbourhood of its R=0 wall is excluded from D₀. Both points
must lie in the same certified box; this is not a global wall tube.
The corollary is vacuous for cell 5, which contains no R=0 point.

## 2. An explicit reconstruction atlas for the positive cell

**Proposition.** The whole of cell 5 is covered by 61 closed subcells
on each of which the current campaign `hplus_tm` constructs a finite
order-four Taylor enclosure (computed at order eight). Four subdivision
steps along the remaining difficult region suffice; the maximum depth
is four. There are four internal nodes and 61 leaves.

The enclosure statement has the existing FastTM arithmetic and local
reconstruction dependencies. Identification with H₊ up to the allowed
row/column permutations uses the existing branch lemma. No new
reconstruction identity is assumed or a denominator treated as nonzero
without passing the campaign's existing interval checks.

**Certificate.** Start with the exact binary parent centre c and
half-width r. Its sixteen ideal children have half-width h=r/2 and
centres c+s h for s∈{−1,+1}⁴. Compute outward interval enclosures Iₖ of
these ideal centre coordinates, choose binary centres c′ₖ=mid(Iₖ),
and use a common child half-width

    r′ ≥ maxₖ (h + sup |Iₖ−c′ₖ|).

Every ideal child is therefore contained in the stored child cube,
and their union covers the parent without floating-point gaps.
[atlas.jl](atlas.jl) implements this rule, attempting the existing
constructor on each cube and subdividing only failures.

The Julia replay checks all 61 construction results, their finite
coefficients/remainders, the four internal nodes and depth four.
Independently, the Python verifier parses the exact binary centres and
radii and rechecks every child containment with rational arithmetic:

    |c′ₖ−(cₖ+sₖr/2)|+r/2 ≤ r′.

It checks that every internal node has all sixteen children and that
there are no disconnected or duplicate nodes. Missing or shrunken
leaves are rejected. Thus the 61 constructor successes cover the entire
parent, not merely 61 sampled points. ∎

## 3. What this gives the campaign, and what remains

For four full cells, the condition R≤1 is now a rigorously removable
part of the domain. Any subcell with a certified upper R bound at most
1 can be pruned when it lies in one of these four boxes. Overlaps and
rounding of subcell containment must themselves be checked.

Cell 5 no longer has an unresolved *existence of a reconstruction
enclosure* problem: `reconstruction_atlas` returns the complete cover
and the actual Taylor models. It also accepts a `max_error` argument
for demanding tighter remainder bounds, and returns `ok=false` if its
budget or maximum depth prevents a complete cover.

**Enclosure quality remains a limitation.** The default 61-chart cover
only requires finite valid bounds; the largest per-entry sum of real
and imaginary remainder bounds is about **118.051**, much too broad to
assume cheap downstream ray or cover certification. Requiring every entry's
sum of real/imaginary remainders to be at most 10⁻³ caused extensive
additional subdivision in an exploratory run, which was stopped without
a complete certificate. That incomplete run proves no stronger claim.

These results do not exclude a quartet on any of the seven whole
cells. Cells 3, 6 and 7 still require stronger domain information or a
different treatment of their branch portions. For the four gap cells,
practical completion still needs tight enclosures of the surviving
positive-R portions and successful downstream quartet certificates.
