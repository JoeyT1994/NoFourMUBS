# Strict-corner coverage on the full Fourier family

**A proved case of SM Proposition S.5.** This file indexes rows and
columns from 0. Let omega=exp(2 pi i/3), let F=(omega^(ij)) for
0<=i,j<=2, and put

    𝓕(p,q)ᵀ = [[F,F],[F diag(1,p,q),-F diag(1,p,q)]],
    p=exp(i alpha), q=exp(i beta).

Since F is symmetric, this is the transpose of the SM's family
𝓕(p,q) = [[F,D_v F],[F,-D_v F]], D_v = diag(1,p,q). The Fourier path of
the main text is H(t) = 𝓕(e^{it},1)ᵀ. Every such matrix is a complex
Hadamard matrix: its two block rows M₁, M₂ satisfy M₁M₁† = M₂M₂† = 6I,
and M₁M₂† = 0. The theorem below also applies to 𝓕(p,q) itself and to
all monomially equivalent representatives.

Put σ₁=2 beta-alpha, σ₂=alpha+beta, σ₃=beta-2 alpha=σ₁-σ₂. Then the
maximum of R over all positional corners is

    max_corner R = 36 (|sin σ₁|+|sin σ₂|+|sin σ₃|)².     (1)

It vanishes precisely at twelve parameter pairs modulo 2 pi:

    alpha=a pi/3, beta=b pi/3,
    0<=a,b<6 integers, a+b divisible by 3.              (2)

Each of these twelve matrices is equivalent to F₆. Consequently any
matrix in this family or its transpose, unless equivalent to F₆,
has a strict positional corner.

## Exact finite proof

The 400-corner multiset consists of 256 zeros and, for each of the
four choices ε₁,ε₂ in {-1,1}, 36 copies of

    36 (sin σ₁+ε₁ sin σ₂+ε₂ sin σ₃)².                   (3)

`verify_fourier_critical.py` checks this identity over the Laurent ring
Z[zeta6][p,p^-1,q,q^-1], with zeta6²=zeta6-1. It generates the
generic reconstruction polynomial from its definition, dephases each
of the twenty row triples and twenty column triples, and substitutes
the exact Laurent monomials of 𝓕(p,q)ᵀ. Independently it computes the
negative square of the complementary block's signed determinant.
The two computations agree at every corner. Finally it compares the
entire multiset with (3) by exact coefficient comparison.

All four signs together with the irrelevant overall sign exhaust the
eight signed sums of the three sines. Their largest absolute value
is their sum of absolute values, proving (1). The census also gives

    sum_corner R = 5184(sin² σ₁+sin² σ₂+sin² σ₃).       (4)

The right side of (1) is zero exactly when σ₁ and σ₂ are integer
multiples m pi and n pi. Solving the two linear equations gives

    alpha=(2n-m) pi/3, beta=(m+n) pi/3,

which is exactly (2). For every pair in (2), the verifier finds and
checks two permutations π₁,π₂ of {0,...,5} for which

    (𝓕(p,q)ᵀ)_ij = zeta6^(π₁(i) π₂(j)).

These twelve equivalence witnesses are included in the receipt. They
are checked entry by entry in exact modular arithmetic.

Finally, dephasing, row and column phase multiplication, and row and
column permutations preserve the multiset of corner values of R.
For row phases this follows directly from invariance of the overlap
invariants p,J,W. Column phases cancel in the corner overlap matrix. Transposition
preserves R by the universal identity checked in `verify_invariants.py`.
The conclusion therefore holds on all the stated equivalence classes.

## Provenance and remaining scope

The verifier is self-contained in this folder. Its source header
records the hashes of the three files from which its routines were
adapted. It makes no runtime imports from those modules and accepts
none of their assertions as additional axioms.

The Fourier-family result does not by itself show that every Hadamard matrix with R = 0 at every corner belongs to
these equivalence classes. STRICT_CORNER_COVERAGE.md proves that, using this result as its first part.
