# Three compatible side columns are necessary for D₀

**New result.** The surviving column boxes in the
[single-column prune](../SideColumnPrune/PROOF.md) must support three
mutually compatible column positions. If their compatibility graph has
no such triple, the entire seed box misses D₀. This strengthens the
previous test, which required every candidate column box to be rejected.

The theorem uses only physical flatness and orthogonality. It remains
valid at singular Gram matrices and across R=0, without reconstruction,
division by a determinant, or any assertion that a label holds at most
one column.

## 1. Two exact compatibility identities

For a physical completion, write its first three rows as `[E B]` and
rephase the columns of B to have first entry 1. Write those columns as

    v_j=(1,x_j,y_j)ᵀ,       |x_j|=|y_j|=1,       j=1,2,3.

For `E=[[1,1,1],[1,a,b],[1,c,d]]`, define

    s=−(1+a+b), t=−(1+c+d), r=−(1+c/a+d/b),
    G=6I−EE†=[[3,conj(s),conj(t)],[s,3,conj(r)],[t,r,3]].

Then `BB†=G`. For any two **different column positions** j,k,

    v_j† adj(G) v_k = 0.                                  (1)

This does not require G to be invertible. Indeed the identities
`adj(XY)=adj(Y)adj(X)` and `X adj(X)=adj(X)X=det(X)I` give

    B† adj(BB†) B
      = B† adj(B†) adj(B) B
      = conj(det B) det B I
      = det(G) I.                                        (2)

These adjugate identities hold for singular matrices too, either directly
by cofactors or as polynomial identities extended from invertible matrices.

A second test uses the remaining column. For candidate columns
`(1,x,y)ᵀ` and `(1,x′,y′)ᵀ`, set

    u=s−x−x′,          v=t−y−y′.

If both candidates occupy positions in B, its remaining column is
`(1,u,v)ᵀ`. Consequently

    |u|²=|v|²=1,
    r−y conj(x)−y′ conj(x′) = v conj(u).                   (3)

There is no root choice in (1)–(3). All expressions are polynomials in
the phases and their conjugates.

## 2. Retain a cover of all columns consistent with D₀

First certify `R(E)<M₀` throughout the closed seed box K, using the
previous Taylor-bound verifier. Subdivide the full two-phase torus.
Reject a phase box only by a proved single-column test:

- the necessary two-column moment identity fails;
- one of the remaining pair sums has modulus greater than 2;
- two E columns and the candidate column force a complementary corner
  with R greater than M₀.

All other small phase boxes are retained as labels. Their union covers
**every column of every physical completion in D₀ with seed in K**.
They need not represent distinct roots, and no root count or regularity
statement is made.

## 3. The compatibility graph, including repeated labels

For each unordered pair of labels, including a label paired with itself,
enclose (1) and (3) over K and the two phase boxes. Delete the edge if
one required zero is excluded by its outward interval enclosure.
Otherwise retain the edge. A self-edge is a loop.

Suppose a completion in D₀ existed. Assign each of its three column
positions to a retained label containing that column. The same label
may be chosen twice or three times. Every pair of these positions
satisfies (1) and (3), so all three pair edges exist. Any repeated label
therefore requires a loop.

Thus the graph must contain an unordered compatible multiset of three
labels. The finite enumeration includes all `i≤j≤k`, with all three
pair edges present. For each such triple, the actual columns must also
satisfy the three complex moment equations

    x_i+x_j+x_k=s,
    y_i+y_j+y_k=t,
    y_i conj(x_i)+y_j conj(x_j)+y_k conj(x_k)=r.             (4)

If every graph triple fails at least one interval test in (4), there
is no completion in D₀. In particular, a graph with no compatible
triple already certifies exclusion. This proves the theorem.

The same argument applies to Eᵀ. Either orientation may certify the
original box, since transpose preserves R and the positional-corner
maximum defining D₀.

## 4. Why the loop convention matters

Even when G is nonsingular, two different columns may lie in the same
phase label. Deleting loops merely because the column positions differ
would be unsound. The code deletes a loop only if the interval tests
exclude **all pairs** from that label.

At a singular G, even identical columns can satisfy (1). For example,
`B` with all entries 1 has `G=3·ones(3,3)` and `adj(G)=0`. Its three
columns occupy one label three times. The verifier confirms that the
graph step retains this compatible triple. This is a graph control,
not a claim that this particular G comes from a physical E completion.

The graph tests also allow pairs arising at different seed points in K.
This enlarges the candidate graph and can prevent an exclusion; it
cannot produce a false exclusion of a triple at one common seed point.

## 5. Acceptance and resource limits

The cover begins with an 8×8 closed partition of the phase torus in
turns. At the default depth of eight binary bisections, each retained
label has side length 1/128 turn. Moment and corner tests may remove
larger boxes sooner. The full queue must be processed, and the binary
forest count is checked.

Label, node, pair and triple limits all fail closed: exhaustion returns
unresolved. The graph routine treats self-edges and repeated vertices
explicitly; an exact exhaustive test over all 64 looped graphs on three
vertices checks its multiset enumeration against direct enumeration.

All numerical acceptance uses outward Arb balls at 96 bits. The integer
R cap is proposed from sixteen Taylor bounds, then each bound is checked
against the cap with Arb. There is no floating-point acceptance decision.

## 6. New demonstrated exclusions

The retained local sample consists of eleven level-9 branch cells, with
exact centres and enlargement convention in [cells.json](data/cells.json)
and [the earlier box definition](../SideColumnPrune/PROOF.md#5-coverage-and-acceptance-details).
The existing campaign F and BC tests retain every one, its order-two R
test does not exclude them, and its D₀ test returns singular. The separate
[baseline](data/baseline.txt) records this comparison and source hashes.

The previous single-column method excludes four of these boxes. With
the same seed boxes and automatic R bounds, the new method excludes all
eleven. The seven new boxes are `mixed_15`, `mixed_17`, `mixed_22`,
`mixed_41`, `mixed_51`, `mixed_59` and `mixed_65`.

At default depth the covers retain 31–159 labels. The resulting graphs
have no compatible triples, so the final moment test (4) is not needed
for these particular certificates. It remains available in the general
tool. The replay also leaves unresolved a box containing a previously
proved positive-R Fourier-family point of D₀.

These are selected local examples, not a representative production
benchmark. The result supplies a stronger standalone pruning theorem
and implementation; it does not settle uniform T1′/T2 or prove a fraction
of the complete branch layer removable. The live cluster code is unchanged.
