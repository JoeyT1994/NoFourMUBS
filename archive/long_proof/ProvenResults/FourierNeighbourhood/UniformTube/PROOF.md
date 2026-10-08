# An explicit uniform Fourier-family exclusion radius

**Theorem.** Let d_Four be the maximum matched-column projector distance
from a physical carrier U to the full two-parameter Fourier family and
its transpose, minimised over parameters, row monomial equivalences and
column permutations. Set

    δ = 2^(−2^590).

If d_Four(U) ≤ δ, then (I,U) cannot extend to four MUBs.

**Practical scope.** This is a uniform explicit constant, but far too
small for the numerical campaign. It does not supply a useful pruning
radius or a seed-to-carrier estimate. The latter, without extra
hypotheses, is [false](SEED_OBSTRUCTION.md).

## 1. Published inputs

We use the published exclusion of the entire Fourier family,
[Jaming–Matolcsi–Móra–Szöllősi–Weiner, Theorem 1.4](https://arxiv.org/html/0902.0882v2#S3).
Transposes are also excluded: exchange the two reference bases, then
complex-conjugate the resulting quartet. This preserves mutual
unbiasedness and replaces an edge by its transpose.

We also use the following quantitative minimum bound, specialised from
[Jeronimo–Perrucci–Tsigaridas, Theorem 1](https://arxiv.org/html/1112.0544#S1).
For a compact connected component of a basic closed set in R^n, specified
by m integer polynomial equations/inequalities of degree at most an even
d and coefficient magnitude at most H, a nonzero minimum of an integer
polynomial with the same degree/height bounds has magnitude at least

    (2^(4−n/2) H̃ d^n)^(−n 2^n d^n),
    H̃ = max(H,2n+2m).                                    (1)

These are external proved inputs. The argument below constructs the
polynomial, establishes all its complexity bounds and transfers its
positive minimum to a physical neighbourhood. It uses no reconstruction
hypothesis and no audit of the historical numerical implementation.

## 2. A compact domain with integer equations

Let t be real, with t²=3 and t≥0. Let z,w and the 60 entries

    X_rj, Y_rj,    r=1,...,5, j=0,...,5

be complex variables of modulus one. Set X_0j=Y_0j=1. There are

    n = 1 + 2(2+60) = 125 real variables.

The domain T has 62 circle equations, one equation t²−3=0 and one
inequality t≥0. Thus m=64. It is the connected compact product of 62
circles with the point t=sqrt(3). Its defining polynomials have degree
at most 2 and coefficient magnitudes at most 3.

Define W₀=2, W₁=−1+it, W₂=−1−it, and Z₀=1,Z₁=z,Z₂=w. With
rows (s,i) and columns (u,j), put

    M_(s,i),(u,j) = (−1)^(su) W_(ij mod 3) Z_j^s.          (2)

On T this is exactly twice the raw Fourier-family matrix

    N(z,w) = [[F,F],[F diag(1,z,w),−F diag(1,z,w)]],
    F_ij = exp(2πi ij/3).

Formula (2) has integer real/imaginary coefficients and degree at most 2.
The alternative Mᵀ treats the transpose family with identical bounds.

## 3. An integer polynomial whose zero would be a quartet

All sums below use raw columns and raw inner products. Define

    P = Σ_(A=X,Y) Σ_(j<k) |A_j†A_k|²
        + Σ_(j,k) (|X_j†Y_k|²−6)²
        + Σ_(A=X,Y) Σ_(j,k) (|M_j†A_k|²−24)².              (3)

Absolute squares mean the sum of the squares of real and imaginary
parts. Thus P is an integer polynomial in the 125 real variables and
is everywhere nonnegative on T.

If P=0, then X/sqrt(6) and Y/sqrt(6) are orthonormal bases, since their
columns have squared norm 6 and the first sum enforces orthogonality.
The second sum enforces their mutual unbiasedness. Since M=2N, the
third sum enforces unbiasedness to N/sqrt(6). Flatness already enforces
unbiasedness to I. This contradicts the published Fourier exclusion.
Consequently P has a strictly positive minimum on T. The same argument
applies with Mᵀ.

The fixed first row loses no possible quartet: each column of either
flat extra basis can be rephased independently so its first raw entry
is 1.

## 4. Degree and coefficient bounds

For a complex polynomial A+iB with integer real polynomials A,B, let
`L(A+iB)=||A||₁+||B||₁`, the combined coefficient 1-norm. It is
subadditive and submultiplicative. Moreover

    ||A²+B²||₁ ≤ L(A+iB)².

A variable raw basis entry has L=2; a fixed first-row entry has L=1.
Each entry of M has L≤4 by (2). It follows that

    L(X_j†Y_k), L(A_j†A_k) ≤ 6·2·2 = 24,
    L(M_j†A_k) ≤ 6·4·2 = 48.

There are 30 terms of the first type in (3), 36 of the second and 72
of the third. Hence

    ||P||₁ ≤ 30·24² + 36·(24²+6)² + 72·(48²+24)²
           = 402421392 < 2^30.                            (4)

This bounds every individual integer coefficient, including all possible
collisions of monomials. The degrees of the three groups are at most
4, 8 and 12. We may therefore use d=12 (even) and H=2^30 in (1).
The constraint polynomials also satisfy these bounds, and
`max(H,2n+2m)=H`.

With n=125, the base in (1) is strictly less than

    2^34 12^125 < 2^534,

and its positive exponent is `125·24^125`. Define the explicit integer

    E = 534·125·24^125.

The minimum of P is therefore strictly greater than `2^(−E)`.
Exact integer arithmetic verifies `E+21 < 2^590`, so in particular

    min_T P > 2^(−2^590) = δ.                             (5)

The verifier manipulates E and 2^590, not the enormous denominator of δ.

## 5. Transfer to a whole-family neighbourhood

For unit vectors u,v,k, the projector metric gives

    ||v†k|²−|u†k|²| ≤ ||vv†−uu†||_op = D(u,v).             (6)

Suppose a quartet contains I,U and two extra bases. Choose a Fourier
matching V=N/sqrt(6) with `max_j D(U_j,V_j)≤δ`. Such a matching exists
when d_Four(U)≤δ because the family parameters and equivalence groups
are compact. Apply its inverse row monomial to the whole quartet and
relabel the carrier columns. These operations preserve standard
flatness. Rephase the columns of the extra bases to form raw X,Y with
first row 1.

The first two groups of (3) are now zero. For an extra unit column k,
its raw counterpart is sqrt(6)k, and

    M_j†(sqrt(6)k) = 12 V_j†k.

Since `|U_j†k|²=1/6`, (6) bounds each family residual by

    ||M_j†(sqrt(6)k)|²−24| ≤ 144δ.

Thus at this point of T,

    P ≤ 72·144² δ² = 1492992 δ² < 2^21 δ² < δ,             (7)

contradicting (5). Apply the identical construction to Mᵀ for a matching
in the transpose family. This proves the theorem, including the closed
distance boundary. ∎

## 6. What this does and does not complete

The radius is explicit and uniform over the whole family and both
orientations. Its size is approximately `2^(−4.05·10^177)`. This bound
comes from a general algebraic separation theorem, not measured margins
in a Fourier-family cover. It has no useful numerical pruning scale.
Obtaining a campaign-sized radius still requires a substantially sharper
argument or a verified family cover.

The arithmetic replay checks the degree/height bookkeeping and exponent
inequalities. The written proof supplies positivity, compactness and
transfer; the two published theorems are not reproved by the replay.
The separate seed obstruction shows that this matrix theorem cannot be
converted into an unrestricted seed neighbourhood merely by shrinking η.
