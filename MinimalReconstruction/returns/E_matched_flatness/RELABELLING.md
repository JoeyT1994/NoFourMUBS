# Matched flatness from one weighted defect (handoff M)

Used by `PROOF.md` Theorem 2.2: the relabelling that reduces matched flatness to the single defect W₁₁, which
return R2 (`proof/theorems/R2_flatness_cross_side`) and return E (`FLATNESS.md`) prove.

Use the repository's block arrangement `H=[[E,B],[C,D]]`. Suppose B and C are normalized phase sides on conjugate signature roots and are nonsingular. Let

`Δ_ij = |D_ij|² − 1`, and `W = C* Δ B*`.

The existing Gram argument proves that every row and column of Δ sums to zero. The first row of B and first column of C consist of ones. Consequently the first row and column of W vanish. Nonsingularity of B and C then gives `W=0 ⇒ Δ=0`, as already formalized in `L1/FlatMatrix.lean`.

Let P and Q be permutation matrices of order three fixing index zero, and set

`E′=P E Q`, `B′=P B`, `C′=C Q`.

The normalized first row and column remain fixed. Phase conditions, side signatures, and strictness are preserved by the corresponding row/column permutations.

The same D is the forced block for these transformed sides. One way to see this without expanding an inverse is to use its defining cross equation. From `D B*=−C E*`,

`D (B′)* = D B* P* = −C E* P* = −C Q Q* E* P* = −C′ (E′)*`.

Since B′ is nonsingular, this cross equation determines the forced block uniquely. Therefore Δ′=Δ and

`W′=(C′)* Δ′ (B′)* = Q* W P*`.

The two permutations fixing index zero are identity and interchange of indices one and two. Choosing P and Q independently moves any of `W11,W12,W21,W22` into position `(1,1)`.

Thus it suffices to establish **one universal statement**: every strict normalized seed with any actual matched sides has `W11=0`. Applied to the four transformed inputs, it gives all four entries and hence flatness. The transformation does not assume the conclusion that the forced block is flat.

The current calculation writes each weighted entry as `F0_pq + z F1_pq`. Retain the two universal coefficient identities for `(p,q)=(0,0)` in the zero-based `FlatCircuits` convention. Restrict the third-moment bridge to this entry, then use the covariance argument to finish. The proof should transport the actual matched sides, so it automatically covers either root orientation and does not invent a continuous root branch.

In Lean this is `L1/FlatBridge`: `W_rowPerm` and `W_colPerm` move each defect to (1, 1), and `W_zero` concludes (see
`lean/README.md`, `L1/`).
