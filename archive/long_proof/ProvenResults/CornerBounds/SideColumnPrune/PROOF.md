# A reconstruction-free exclusion test for the branch layer

**Theorem.** The finite two-phase cover described below certifies that a
closed seed box contains no point of D₀. It remains valid when the box
crosses R=0 and the reconstruction has no Taylor model. It uses only
flatness and row orthogonality of a physical Hadamard, not any accepted
reconstruction or coverage input.

Four exhibited level-9 boxes pass this test, although the current campaign
tests retain them as singular. Thus this is an additional usable prune.
It does not prove T1′ or T2 uniformly and makes no claim about how much
of the full branch layer it removes.

## 1. A necessary identity for one unknown side column

Write the first three rows of a physical completion as `[E B]`, with

    E = [[1,1,1],[1,a,b],[1,c,d]].

Rephase the columns of B so their first entries are 1. This changes
neither their Gram matrix nor any corner R. Put

    s = −(1+a+b),  t = −(1+c+d),  r = −(1+c/a+d/b).

Orthogonality says that B has row sums s,t and mixed row product r.
For any one of its columns `(1,x,y)ᵀ`, define

    A=s−x,   B₁=t−y,   C=r−y/x.

The other two columns have phases `(u₁,v₁)` and `(u₂,v₂)`, so

    A=u₁+u₂, B₁=v₁+v₂, C=v₁/u₁+v₂/u₂.

In particular each of |A|, |B₁|, |C| is at most 2. There is also the
complex identity

    A C conj(B₁) = |A|²+|B₁|²+|C|²−4.                    (1)

To prove it, set q=u₂/u₁ and t=v₂/v₁. The left side becomes
`(1+q)(1+t/q)(1+1/t)`, which expands to
`2+q+1/q+t+1/t+t/q+q/t`. The right side gives the same expansion.
The two real parts of (1) are polynomial constraints on the two missing
column phases. Necessity suffices: we never assume these constraints
characterise completable columns.

## 2. A competing corner without constructing the remaining columns

For any two columns j,k of E, let M consist of those two columns and
the candidate column `(1,x,y)ᵀ`. In any physical completion this is an
actual corner on the first three rows. Its complementary three columns
form another corner N, with `MM†+NN†=6I`.

Use the unconditional [complementary-square identity](../PROOF.md#2-an-unconditional-complementary-corner-square-identity):

    R(N) = R∨(M) = −det L(M)².                            (2)

This quantity is especially inexpensive to enclose. Write the three
columns of M as `(1,exp(iαᵢ),exp(iβᵢ))ᵀ`, and put γᵢ=βᵢ−αᵢ.
For each i≠j, let a<b be the indices other than i, and c<d those other
than j. Let εᵢⱼ be the sign of the permutation

    (2a,2b,2c+1,2d+1,2i,2j+1).

Laplace expansion along the first two and next two rows of L gives

    det L = −8i Q,
    Q = Σ_(i≠j) εᵢⱼ sin(α_b−α_a) sin(β_d−β_c) sin(γ_i−γ_j).

Terms with i=j vanish. Thus

    R(N) = 64 Q².                                        (3)

The verifier checks this six-term determinant formula exactly, as well
as the underlying Laurent-polynomial square identity. Only the two
known E columns and the two candidate phases enter (3).

## 3. Finite-cover certificate

Let K be a closed seed box and certify `R(E)<M₀` throughout K. Cover
the full candidate phase torus T² by finitely many closed boxes.
Every box must satisfy at least one of these outward interval tests,
uniformly for all seeds in K:

1. One of |A|, |B₁|, |C| is strictly greater than 2.
2. The real or imaginary part of the residual in (1) excludes zero.
3. For one of the three E-column pairs, (3) is strictly greater than M₀.

Suppose a physical H with its seed in K were in D₀. Choose any column
of its B block. It is in a covering box and satisfies the necessary
identities, so tests 1 and 2 cannot hold there. Test 3 supplies an actual
corner N with `R(N)>M₀>R(E)`, contradicting D₀. This proves exclusion.

The same test may be applied to Eᵀ. A certificate in either orientation
suffices, because transpose preserves R and takes positional corners
to positional corners. No relation between reconstruction sheets is
needed. In particular, the test excludes **every physical completion**
of every seed in the box, not just H₊.

## 4. Independent R upper bounds

For a box with centre c and half-widths hᵢ, Taylor's theorem gives

    R(θ) ≤ R(c) + Σ_i h_i |∂_i R(c)|
           + (1/2) Σ_(i,j) h_i h_j sup_K |∂_ij R|.         (4)

The code encloses the value and first derivatives at the centre, and
the Hessian over the entire box, with Arb balls. Its derivative rules
are the product rule, conjugation, and the first two derivatives of
`exp(iθ)`. They involve no division or root. Formula (4) is therefore
valid across R=0. When necessary the seed box is bisected, and **every**
child must pass its R bound before the parent is accepted.

The general `prune_box` entry point uses sixteen seed subboxes to select
a cap, then checks every bound against that cap with Arb. Its floating
conversion only proposes the integer cap; it cannot cause acceptance.

## 5. Coverage and acceptance details

`cover_side_columns` starts with the 64 squares of an 8×8 partition
of [0,1]² in turns. An undecided square is bisected along its longest
side. All phase centres and half-widths are dyadic. The two children
cover the closed parent; endpoints are deliberately shared.

Acceptance requires that the entire queue be exhausted using tests
1–3. Reaching either the depth or node limit returns an unresolved
result, never exclusion. The replay also checks the full binary-forest
identity `nodes = 2·leaves−64`.

The retained boxes have centres `kπ/512`, with k in
[cells.json](data/cells.json), and half-width

    ρ = π/512 + 2^(−40).

The small enlargement contains the Float64 cells used in the baseline
comparison; the verifier checks that containment. Certificates use
96-bit outward Arb arithmetic and exact integer comparison thresholds.

## 6. Demonstrated benefit and remaining limits

The four boxes have certified R caps 11, 3, 18 and 6. The existing
campaign `f_test` and `bc_test` both return `:maybe`; the R upper bound
does not exclude them; `d0_test` returns `:singular`. The new test
excludes all four, using 1,400–2,102 two-phase tree nodes and roughly
0.02–0.05 seconds per cell in the retained run, including the R cap.

These are selected examples from a local search, not a representative
sample of the production layer. They demonstrate new exclusions at
the campaign's actual cell size. No global saving or fraction of the
ten-million-cell layer is inferred. The live cluster code has not been
changed; the implementation here is a standalone pruning tool for
review and integration.
