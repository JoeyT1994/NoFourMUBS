# Zero 3-minors, antipodal quotients and Hadamard blocks

**Statement.** An order-six complex Hadamard with a zero ordinary 3-by-3 minor has an antipodal (three +1, three -1, up to scalar) row or column quotient, and an antipodal quotient forces a 3-by-3 Hadamard block. For non-Tao matrices the three conditions are equivalent.

**Status.** Analytic proof with exact controls. The elementary direction (zero3 => antipodal => block) is unconditional. The converse (block => zero3 for non-Tao) uses the active Fourier-block theorem.

**Dependencies.** Elementary direction: none. Converse: [FourierBlockClassification.md](../FourierBlocks/FourierBlockClassification.md) (proved; a block forces N(p,q), N(p,q)^T or Tao, and N, N^T have the antipodal row pair 0,3, hence a zero 3-minor). The same sharpened form is proved independently in [ProjectorRank5.md](ProjectorRank5.md), Section 1. The quartet consequence is in [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md).

**Provenance.** `NoFourMUBSArchive/03_algebraic/core/BLOCK_ZERO3_EQUIVALENCE.md`, `verify_block_zero3_equivalence.py` (receipt values are pinned in `data/expected_results.json`).

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# Hadamard blocks and singular three-minors are equivalent on triangle edges

**Theorem (elementary direction).** Every order-six complex Hadamard with
an ordinary singular 3-by-3 submatrix contains a 3-by-3 complex Hadamard
submatrix. No full mate, product-regular frame or genericity is needed.

More precisely, an ordinary singular three-minor is equivalent to an actual
row or column quotient having, up to a scalar, three entries +1 and three
entries -1. Either condition forces a Hadamard block.

**Theorem (using the accepted Fourier-block theorem).** For every non-Tao
order-six complex Hadamard, the following are equivalent:

1. It contains a 3-by-3 Hadamard block.
2. It has a zero ordinary 3-minor.
3. It has an antipodal row or column quotient, with multiplicities 3+3.

The only additional input in this equivalence is the block-to-Tao-or-zero3
theorem: [FourierBlockClassification.md](../FourierBlocks/FourierBlockClassification.md) together with the antipodal pair of N, or
[ProjectorRank5.md](ProjectorRank5.md), Section 1. Tao itself has Hadamard blocks
but no singular three-minor, so its exclusion is necessary in this statement.

## 1. A singular flat three-corner has proportional rows or columns

After dephasing any flat three-corner, write

    E = [[1,1,1], [1,a,b], [1,c,d]],  |a|=|b|=|c|=|d|=1.

Its determinant is

    f = (a-1)(d-1) - (b-1)(c-1).

If any of a,b,c,d equals 1, the equation f=0 immediately forces two rows
or two columns to coincide. For example a=1 gives b=1 or c=1. If b=1
and a!=1, then d=1, giving coincident first and third columns; c=1 is
the transpose case. If only d=1, f=0 forces b=1 or c=1.

Otherwise all four factors are nonzero. Conjugating f=0 on the physical
torus gives

    (a-1)(d-1)/(ad) = (b-1)(c-1)/(bc).

Since their common numerator is nonzero, ad=bc. The original equation now
gives a+d=b+c. Therefore the unordered pairs {a,d} and {b,c} are the roots
of the same monic quadratic. Either a=b,d=c, giving proportional columns,
or a=c,d=b, giving proportional rows. This includes coincident roots.

No singular corner type has been omitted by division: the factors divided
by in the second case were explicitly treated in the first case.

## 2. Proportional corner rows force an antipodal full quotient

Suppose the two corner rows are proportional. Divide their full row quotient
by that proportionality phase, and move the corner columns first. Its first
three entries are 1. Full Hadamard orthogonality says the other three unit
entries sum to -3. Equality in the triangle inequality forces each to be -1.
Thus the full quotient is (1,1,1,-1,-1,-1), up to scalar and permutation.
Proportional corner columns are the transposed case.

Conversely such an antipodal quotient makes the two corresponding rows
proportional on either three-column part, producing a singular three-minor
after adding any third row. The column case is again its transpose.

## 3. An antipodal quotient forces a Fourier block

Consider the row case. By compatible monomial operations, put two rows first:

    (1,1,1 | 1,1,1),
    (1,1,1 |-1,-1,-1).

Every other row is orthogonal to both. Its first three entries therefore sum
to zero, as do its last three entries. Three unit complex numbers sum to
zero precisely when they are a scalar multiple of the three cubic roots.
Consequently, in the fixed first-three-column order, each remaining row is
proportional to one of

    f+ = (1,omega,omega^2),  f- = (1,omega^2,omega),
    omega^2+omega+1=0.

Both types must occur: otherwise the entire 6-by-3 restriction to these
columns would have rank at most two, because its rows would lie in the span
of (1,1,1) and just one of f+,f-. This contradicts the orthogonality of the
three full columns. Pick one row of each type together with the first row.
Their first-three-column restriction is a 3-by-3 Hadamard block.

In fact each type occurs twice. Conjugating the column Gram equation by the
order-three Fourier matrix makes the multiplicities of the three Fourier
row types equal to two. The first two rows already supply the constant type.
The multiplicity observation is not needed for existence of the block.

The column-antipodal case follows by transposition. Thus the proof covers
all row/column choices and all physical parameters, without reconstruction
guards or localization.

## 4. Consequence for the current triangle target

**Theorem (with the accepted Tao triangle exclusion).** The following two
global statements are equivalent:

- Every physical order-six MUB triangle has a Hadamard block on some actual edge.
- Every physical order-six MUB triangle has a singular three-minor, equivalently
  an antipodal quotient, on some actual edge.

Indeed every actual edge of a physical triangle is non-Tao. The equivalence
above applies separately to each of the three actual transition matrices;
it does not require independently changing their shared gauges.

Therefore block forcing is not a stronger mathematical target than the
previous antipodal/zero3 target. It is a new concrete way of expressing the
same open global obligation. Existing one-binary-matching and isolated-endpoint
antipodal ownership immediately give **block ownership at those same scopes**.
They do not establish that every triangle belongs to one of those scopes.

**Open:** force these equivalent conditions on some edge of every physical
triangle. The argument here does not force an antipodal quotient, a second
matching, a preferred seed corner, or a rank drop from full mate existence.
No entire previously unowned matching-count case is excluded.

## Verification

**Certified computation:** `block_zero3.py` checks the
singular-corner polynomial identities, the unit-triple cubic-root identities,
Fourier multiplicity equations, a full two-parameter antipodal family over
Q(omega)(p,q), and every one of the 400 three-minors and 400 possible Hadamard
blocks in each of exact F6 and Tao controls. These controls support the algebraic argument; samples
are not used as its universal premise. The accepted converse Fourier-block
classification and Tao triangle exclusion are named inputs, not freshly
replayed by this verifier.

Replay: `python3 verify.py` in this folder (sub-check `zero3_antipodal_block_equivalence`).
The Tao triangle exclusion is now proved in this library: see [Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md).
