# Algebraic proof replacements

The Fourier argument below is a complete paper proof of the family-matching statement, with exact symbolic and combinatorial replay. The flatness argument proves a symmetry reduction to one remaining universal identity. The supplied Lean files prove the auxiliary matrix covariance, scalar barrier, shell bound, integer count, and shortened Record exclusion; they do not yet replace the full Fourier or flatness modules.

## Fourier matching without the 200 identity checks

Let ω²+ω+1=0, and let d0,d1,d2 be unit complex numbers. Index the six rows and columns by `(a,i)` and `(b,j)`, where a,b are in Z/2 and i,j are in Z/3. Write

`K(d)[(a,i),(b,j)] = (−1)^(ab) ω^(ij) d_j^a`.

For a 3 by 3 phase matrix B define

`sig(B) = −perm(B) det(B)² / product(B entries)`.

This agrees with the repository's denominator-free `Step2.sideSignature`, because conjugation is inversion on unit entries. Under row phases r_i and column phases c_j, the permanent acquires a factor `(product r)(product c)`, the squared determinant its square, and the denominator its cube. Thus `sig` is unchanged. Row and column permutations also leave it unchanged, because the determinant's sign is squared. Finally `sig(conj B)=conj(sig B)`.

We prove, for every pair of three-element row and column subsets R,C,

`sig(K(d)[R,C]) = conjugate(sig(K(d)[Rᶜ,Cᶜ]))`.

This is the exact matching identity used by `allCornersMatched_of_tri` in `PRM/FourierMatch.lean`.

### Symmetries of the family

Each operation below is a permutation and unit phase change, together with a reparametrization of d. It therefore preserves the desired identity and sends complementary blocks to complementary blocks.

1. Shift top row indices by s0 and bottom row indices by s1. Then
   `K(d)[(a,i+s_a),(b,j)] = ω^(s0 j) K(d′)[(a,i),(b,j)]`,
   with `d′_j=ω^((s1−s0)j)d_j`. The leading factor is a column phase.
2. Interchange the top and bottom row layers. Then
   `K(d)[(1−a,i),(b,j)] = (−1)^b d_j K(d^−1)[(a,i),(b,j)]`.
3. Replace column residue j by uj+v, with u=±1. The factor `ω^(iv)` is a row phase; the remaining Fourier index becomes ui, and `d′_j=d_(uj+v)`. These six affine maps are all permutations of the three residues. Reflection may be paired with reflection of both row layers.
4. Independently interchange the two columns at any residue j. This replaces d_j by −d_j.
5. Multiply all bottom rows by `d0^−1` to normalize the parameters to `(1,x,y)`.

For rows, a three-subset is either a whole layer or two rows from one layer and one from the other. Independent cyclic shifts and layer interchange put these into `{0,1,2}` or `{0,1,3}`, in the indexing `3a+i`.

For columns, occupancy among the three residues is either `(1,1,1)` or a permutation of `(2,1,0)`. Residue permutations and independent pair interchanges put these into `{0,1,2}` or `{0,1,3}`. Any induced row permutation can be normalized afterward by operations 1 and 2 without changing the column subset. There are therefore four representative cases.

The orbit sizes are respectively `2×8=16`, `2×12=24`, `18×8=144`, and `18×12=216`; they sum to 400. The script independently exhausts the generated actions and confirms exactly these four disjoint orbits.

### A whole row layer and one column at every residue

The representative block is F3. Its permanent is −3, its squared determinant is −27, and its entry product is 1. Hence its signature is −81. The complementary block is another F3 up to row/column phases, so it has the same real signature.

### A whole row layer and a repeated column residue

Two columns of the representative are proportional. Its determinant and signature vanish. The complementary column subset also has occupancy `(2,1,0)` and its row subset is the other whole layer. Its signature is also zero.

### Mixed rows and one column at every residue

The representative and its complementary block are

```
A = [ 1  1   1  ]       B = [  1    ω²     ω   ]
    [ 1  ω   ω² ]           [ −1   −ωx   −ω²y ]
    [ 1  x   y  ]           [ −1   −ω²x  −ωy  ].
```

Multiply B on the left by `diag(1,−1,−1)` and on the right by `diag(1,ω/x,ω²/y)`. Since ω³=1, the result is

```
[ 1  1/x  1/y ]
[ 1  ω²   ω   ]
[ 1  1    1   ].
```

Reverse the row order. This is exactly `conj(A)`, since x and y are unit. All scaling factors are unit. Therefore `sig(B)=sig(conj A)=conj(sig A)`, proving matching without expanding the signature.

### Mixed rows and a repeated column residue

The representative is

```
A = [ 1  1  1 ]
    [ 1  ω  1 ]
    [ 1  x −1 ].
```

Direct three-term determinant and six-term permanent calculations give

`det(A)=2(1−ω)`, `perm(A)=2x`, `product(A entries)=−ωx`.

Since `(1−ω)²=−3ω`, its signature is

`−2x · 4(1−ω)² / (−ωx) = −24`.

The same normalization argument applies to every block in this row/column type. The complement has the same type, so both signatures equal the same real constant −24. This completes all four cases and the full matching proof.

### Formal integration

Keep `allCornersMatched_of_tri` and the final reduction from the upstream Fourier normal form. Replace the `okQ` family of 200 polynomial checks with:

- a general phase/permutation covariance lemma for the side signature;
- the five explicit family transformations above;
- the two row types and two column occupancy types;
- the three constant-signature calculations and the displayed mixed-block equivalence.

A small decidable finite orbit-cover lemma is an acceptable interim bridge: it replaces polynomial certificates with combinatorial bookkeeping. An eventual proof using subsets of `Fin 2 × Fin 3` can avoid a stored orbit table entirely. This saves identity checking; whether the final Lean module is shorter depends on how reusable the symmetry API is.

## Matched flatness from one weighted defect

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

`lean/AlgebraicLemmas.lean` includes the general matrix equality for weighted covariance. The full preservation of the repository's side hypotheses and uniqueness of its forced block are formal integration tasks. This argument reduces the number of algebraic identities; it does not itself prove the two retained coefficients vanish.

## A direct integer count

The existing `CoverageTen.count_certificate` enumerates bounded pairs to show that, for natural a,b with a+b≤10,

`25a+29b≤270` or `162≤15a+17b`.

There is a short elementary proof. If a+b≤9 then `25a+29b≤29(a+b)≤261`. Otherwise a+b=10. If b≤5 then `25a+29b=250+4b≤270`; if b≥6 then `15a+17b=150+2b≥162`.

The supplied Lean proof uses these three cases and linear integer arithmetic. It needs no 121-pair enumeration. The original `by decide` is shorter source code and already safe; this change favors a readable algebraic explanation rather than a large practical performance saving.

The alternative modulo-five cubic argument already exists in `CoverageSumArith.lean`. It should not be presented as a new discovery. The current final route uses the weaker interval classification and the ten-corner count. Choose one production route and isolate the other as a cross-check before deleting any imports.

## A normal bound without evaluating a root

Let L≥0 and assume

`x≤R`, `LR<σ`, `Ln≤σ`, and

`σx − (L/2)x² ≤ b ≤ σn − (L/2)n²`.

Then x≤n. Indeed, if x>n, then Lx<σ and Ln≤σ imply

`σ − (L/2)(x+n) > 0`.

Thus

`[σx − (L/2)x²] − [σn − (L/2)n²] = (x−n)[σ − (L/2)(x+n)] > 0`,

contradicting the assumed inequalities. This proof is in `normal_bound_of_barrier` and compiles in Lean.

For a record, x is the normal norm. Choose a rational upper bound Lbar≥2√3, rational upper bounds for the residual terms, and a rational nbar. Verify the polynomial inequalities `Lbar R<σ`, `Lbar nbar≤σ`, and `2 bbar≤2σ nbar−Lbar nbar²`. These conditions directly certify the needed bound. A rational proof of `Lbar≥2√3` needs only positivity and `Lbar²≥12`.

The current kernel route already avoids unstable floating subtraction by bounding the square root with a rational lower bound and using `2b/(σ+s_lo)`. The barrier is an alternative interface, not a repair of an established error. Measure certificate and proof costs before choosing it.

## The exact boundary shell

For a boundary point with orthogonal decomposition `δ=Tη+ν`,

`R²=‖Tη‖²+‖ν‖²`.

If `‖ν‖≤n`, this gives both

`R²−n²≤‖Tη‖²≤R²`.

The lower bound is already used by Lean's boundary interface. The upper bound can eliminate artificial tangent boxes outside radius R. The external Python replay currently uses the larger triangle shell `R−n≤‖Tη‖≤R+n`.

To exploit this, add the upper-bound hypothesis to the shell predicate consumed by `BoundaryCover.hcover`, supply it from `RecordCert.decomp`, and regenerate the covers. For the Python rounded frame, also propagate the frame discrepancy: the upper bound for its tangent norm is `R+‖T−Tf‖ rH`. Do not apply an exact-frame bound directly to the rounded frame without that correction.

The supplied `orthogonal_shell` lemma proves the squared inequalities. No reduction in the number of atlas records or boxes is claimed without a regenerated replay.

## Discharge Fourier membership by a limit argument

One special numerical obligation can be removed by formally reusing the Fourier joining argument already present in `PROOF.md` Step 2.3. This does not remove the record numbered 877 from the atlas.

Let `H(t)=K(1,e^(it),1)`. Block multiplication shows this is Hadamard for every real t, and `H(t)→K(1,1,1)` as t→0. The limiting matrix is `F2⊗F3`, equivalent to the repository's Fourier representative.

The cross ratio of rows `(0,0),(1,0)` and columns `(0,0),(0,1)` is `e^(it)`. Every cross ratio of F6 is a sixth root of unity, and every cross ratio of Tao is a cube root of unity. Cross ratios are preserved as a set by Hadamard equivalence. For `0<t<π/3`, `e^(6it)≠1`. Therefore H(t) is equivalent to neither F6 nor Tao.

Apply the already proved exact-reach theorem to H(t). Its class lies in the union of the matched and conjugate-matched classes. Taking t→0 gives

`[F6] ∈ closure(MatchedClasses ∪ ConjugateMatchedClasses)`.

In the actual coverage proof, maximum propagation and the anchor H0 already put both of those sets inside the covered classes W. Since W is closed, it follows that `[F6]∈W`. The numerical `fourier` field is then unnecessary in that route.

For Lean integration, prove the limit membership independently of every atlas, using `PRM.exactReach` and strict-corner coverage. In `coverage_of_matched_density`, derive Fourier membership after `hMatched` and `hConjugate` instead of receiving it as an input. Factor the dependency carefully: `Statements.lean` is imported by `Reach`, so put the new assembly theorem in a later module rather than importing `Reach` back into `Statements`. The current theorem requiring an arbitrary `MatchedDensityReach` alone cannot derive this limit statement; use the stronger exact reach actually available at `Final`.

This is a paper-level discharge of one certificate field, not an implemented Lean change. It preserves the maximum-anchor obligation and supplies the missing formal joining bridge instead of assuming standalone connectedness.
