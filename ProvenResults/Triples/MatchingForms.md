# Matching forms: basis-free matchings, the residual-tensor criterion, and Lemma Z

**Statement.** (1) A diagonal-phase matching of an MU triple (I, U, V) is exactly a factorisation
D_I(η) = D_U(r)·D_V(s), and the trivial matching is infinitesimally isolated. (2) A second matching
exists iff some unimodular x ⊥ 𝟙 makes Σ_j x_j R_j rank one (residual tensor of the Hadamard cube).
(3) Every Zauner triple has the explicit nontrivial matching (I−2P₁)(I−2P₂) = diag(VU*, UV*), so its
count is at least 2.

**Status.** Proved. (1) and (2) are short derivations from
[TriangleNullityProof](TriangleNullityProof.md) and MMVW Prop. 3.1/3.4
([arXiv:2503.14752](https://arxiv.org/abs/2503.14752)); (3) is checked exactly and symbolically by
[ZaunerMatching.py](ZaunerMatching.py).

**Dependencies.** TriangleNullityProof; MMVW Props. 3.1 and 3.4 (published); Zauner Prop. 5.6 /
Szöllősi Prop. 4.2 for the description of Zauner triples. No reconstruction input.

**Provenance.** Written during the N1 attack of 27 September 2026 (record archived at
`../NoFourMUBSArchive/N1-attack-2026-09-27/README.md`, §§1, 1b, 3); promoted without mathematical
change on 27 September 2026.

**Use.** Lemma Z is the only known source of a second matching. With
[OneBinaryMatching](../EdgeRigidity/OneBinaryMatching.md) it shows that the known count-two triples
all have zero-minor edges. The open lemma N1 (no count-one triple without zero minors) would finish
no four MUBs via [Quartets](../Quartets/README.md); it is not attacked here.

## 1. Basis-free form of a matching

For a basis B, write D_B(x) = B diag(x) B† for x ∈ T⁶. For a triple
(I, U, V), a matching is a triple (η, r, s) with

    U† D_I(η) V = D_r (U†V) D_s,

where D_r and D_s are diagonal. Setting Φ = U D_r U† and Ψ = V D_s V†, this is
equivalent to

    D_I(η) = D_U(r) · D_V(s).                                 (M)

In words: a unitary that is diagonal in basis I factors as a unitary diagonal
in U times one diagonal in V. The condition is symmetric in the three bases.
The trivial matching is η = r = s = 1.

**The trivial matching is infinitesimally isolated.** Differentiating (M)
gives diag_I(α) = diag_U(β) + diag_V(γ). For mutually unbiased bases the
three spaces span{P_i}, span{Q_j}, span{R_k} are Hilbert–Schmidt orthogonal
modulo scalars. The reason is that tr(P_i Q_j) = 1/6 for every pair. So only
the scalar solution exists. Any second matching is therefore a global
phenomenon and cannot be found by perturbing the trivial one.

## 2. Residual-tensor criterion for a second matching

Use the Hadamard cube of [MMVW](https://arxiv.org/abs/2503.14752),
C_{jkl} = √6³⟨e_j,f_k⟩⟨f_k,g_l⟩⟨g_l,e_j⟩. It has unimodular entries.
Every slice S_j = (C_{jkl})_{kl} is a phase Hadamard, and every piercing sums
to √6 (MMVW, Prop. 3.1). Up to coordinate phases, this is our triangle
tensor times √6. By MMVW, Prop. 3.4, these axioms together with the Haagerup
condition characterise MU triplets.

**Lemma R.** Write S_j = J/√6 + R_j, where J is the all-ones matrix.

1. R_j 𝟙 = 0 and 𝟙ᵀR_j = 0, because each piercing sums to √6.
2. Σ_j R_j = 0.
3. R_j R_j* = 6I − J.
4. tr(R_j*R_{j'}) = 36δ − 6.
5. |1/√6 + (R_j)_{kl}| = 1.

The same holds in the other two directions.

So on 𝟙^⊥ ≅ C⁵ the operators Û_j = R_j/√6 are six unitaries with
Σ_j Û_j = 0 and Hilbert–Schmidt Gram matrix 6I − J.

**Criterion.** A second matching exists if and only if there is a
unimodular x ⊥ 𝟙 with Σ_j x_j R_j of rank one. Its factors are then
automatically flat, by (2.5) of the nullity proof. Equivalently, the 5-dim
operator space span{Û₁*Û_j} ∋ I has a common eigenvector.

*Proof.* The trivial matching is x = 𝟙. Distinct matchings are orthogonal
(nullity proof, (2.3)), so every other matching has Σ_j x_j = 0. Hence
Σ_j x_j S_j = Σ_j x_j R_j. The rest is (2.2)–(2.5) of
[TriangleNullityProof](TriangleNullityProof.md). ∎

**Why no generic identity can prove N1.** The candidate x range over a 3-real
-dimensional family: unimodular, Σx = 0, modulo a scalar. Being rank one is
a condition of real codimension 2(25 − 9) = 32 in M₅(C). So a second
matching is a highly non-generic coincidence. Appendix A of the nullity
proof gives six permutation matrices satisfying every axiom above except the
flat-entry and product (Haagerup) conditions, with count 1.

A proof of N1 must therefore use the product structure
C_{jkl} = a_{jk} b_{kl} c_{lj} strongly enough to produce the Zauner
reflections of Section 3. In other words, it must classify the cube. This
is MMVW's Conjecture 1, which is open. It is supported by their 20,000
numerical triplets, all of Zauner type or the isolated F₆ triplet.

## 3. Zauner triples have a second matching (Lemma Z)

**Zauner triples.** Let U, V, X, Y be 3×3 diagonal unitaries and F = F₃. Set

    Z₁ = [[F, XF], [F, −XF]]/√6,
    Z₂ = [[UF, UYF], [VF, −VYF]]/√6.

{I, Z₁, Z₂} is an MU triple exactly when Z₁†Z₂ is Hadamard. By Zauner's
Prop. 5.6 (Szöllősi, Prop. 4.2), this happens exactly when the seed Z₁†Z₂ is
a 2-circulant Hadamard.

**Lemma Z.** Let P_i be the projector onto the first three columns of Z_i.
Then

    (I − 2P₁)(I − 2P₂) = diag(VU*, UV*).

This is a matching (M) with r = s = (−1,−1,−1,1,1,1) and η = (v/u, u/v). It
is nontrivial unless V = ±U. Proof: I − 2P₁ = −[[0, I],[I, 0]] and
I − 2P₂ = −[[0, UV*],[VU*, 0]]. [ZaunerMatching.py](ZaunerMatching.py)
checks this exactly and symbolically.

So Zauner triples have count at least 2. Their second matching is binary in
two directions. By
[OneBinaryMatching](../EdgeRigidity/OneBinaryMatching.md),
that forces zero minors, and indeed both center edges are of the form
[[F, XF],[F, −XF]].
