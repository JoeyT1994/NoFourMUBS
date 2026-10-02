# T1: a qualitative boundary gap and an exact obstruction to its constants

Notation is that of [the targets](../../WhatWeWanttoProve/NOTATION.md).
Let `M(H) = max_c R_c(H)`. Distances below are geodesic distances between
phase angles in radians, without normalization by π. We state both the
Euclidean distance d₂ and maximum-coordinate distance d∞ where they differ.

## 1. Qualitative T1 holds without a boundary reconstruction formula

**Theorem.** Assume the accepted strict-corner coverage statement: every
order-six Hadamard not equivalent to F6 has a corner with R > 0. For every
η > 0 there is m(η) > 0 such that

    0 < R(θ) ≤ m(η),   dist(θ,S_F6) ≥ η

imply that some corner of H₊(θ) has R strictly greater than R(θ).
Here H₊ is assumed to be a Hadamard, as in the accepted reconstruction.

**Proof.** Consider the compact space of dephased phase Hadamards. It is
a closed subset of a finite product of unit circles. Its upper-left
corner seed is a continuous map into T⁴, and each of the 400 functions
R_c, hence their maximum M, is continuous.

The subset Kη on which the corner seed has distance at least η from S_F6
is compact. It contains no matrix equivalent to F6: any dephased corner
of such a matrix has its seed in S_F6. By strict-corner coverage, M is
strictly positive on Kη. If Kη is nonempty, its minimum μη is positive.
Set m(η) = μη/2. Every H₊ in the stated region belongs to Kη, so
`M(H₊) ≥ μη > m(η) ≥ R(θ)`. If Kη is empty the assertion is vacuous. ∎

The same proof gives `M(H) ≥ μη` for **every actual completion** of an
R = 0 corner at distance at least η from S_F6. It does not assume that
H₊ has a unique limit at a boundary seed, or a uniform modulus of
continuity there. It supplies no numerical value of μη. Therefore it
does not by itself implement the requested prune.

## 2. An unconditional complementary-corner square identity

For a dephased phase matrix E with columns `(1,xⱼ,yⱼ)ᵀ`, set
`zⱼ = yⱼ/xⱼ`. Form the 6-by-6 matrix L whose two columns for each j are

    Aⱼ = (xⱼ, −1/xⱼ, 0, 0, −zⱼ, 1/zⱼ)ᵀ,
    Bⱼ = (0, 0, yⱼ, −1/yⱼ, zⱼ, −1/zⱼ)ᵀ,
    L = [A₀ B₀ A₁ B₁ A₂ B₂],     D(E) = det L.

Write p,J,W for the invariants of `6I − EE†` and put
`R∨(E) = R(p,−J,W)`. There is the exact Laurent-polynomial identity

    R∨(E) = −D(E)².                                         (1)

It is verified by expansion with `x=(1,a,b)`, `y=(1,c,d)` and formal
conjugation `(a,b,c,d) ↦ (1/a,1/b,1/c,1/d)`; the verifier computes both
sides independently. The resulting polynomial difference is identically
zero. It also checks `conj(D) = −D`, so (1) is nonnegative on the torus.

For a differential interpretation, let Jreal be the real Jacobian of

    (arg x₀,arg y₀,...,arg x₂,arg y₂)
       ↦ (Re Σx, Im Σx, Re Σy, Im Σy, Re Σ(y/x), Im Σ(y/x)).

The complex-coordinate Jacobian is iL. Passing from each real/imaginary
pair to a number and its conjugate has determinant −2i. Thus
`−D = 8i det Jreal`, and

    R∨(E) = 64(det Jreal)².                                 (2)

For a corner A of an actual Hadamard, let B use the same three rows and
the complementary columns. Orthogonality gives `AA† + BB† = 6I`.
The off-diagonals defining R(A) are consequently the negatives of those
defining R(B). Therefore

    R(A) = R∨(B) = −D(dephase(B))² ≥ 0.                     (3)

This proves nonnegativity of **all** corners, including singular and
boundary corners, without reconstruction assumptions. Formula (1) also
expresses the campaign's existing complementary-corner prune as a square;
it is not an additional exclusion by itself.

## 3. An exact 400-corner census on a Fourier-family curve

Put ω = exp(2πi/3), let F = (ωⁱʲ) for i,j = 0,1,2, and define

    N(z) = [[F,F],[F Z,−F Z]],     Z = diag(1,z,1),  |z| = 1.

Block multiplication gives `N(z)N(z)† = 6I`. At z = 1 this is
`F₂ ⊗ F₃`, equivalent to F6 by the Chinese remainder indexing of its
rows and columns.

The complete positional corner multiset is:

| R-value as a Laurent polynomial in z | Multiplicity |
|---|---:|
| 0 | 256 |
| −9(z−1)⁶(z+1)²/z⁴ | 36 |
| −9(z−1)²(z+1)²(z²+1)²/z⁴ | 72 |
| −9(z−1)²(z+1)⁶/z⁴ | 36 |

**Exact certificate.** Enumerate the 20 row triples and 20 column triples.
Each dephased seed entry is a monomial in z and a sixth root of unity.
Substitute those monomials into the defining polynomial R. Independently
evaluate the 48-term Laurent polynomial D on each complementary block
and use (3). Both calculations produce the displayed census. All
coefficient arithmetic is over the integers with `ζ₆² = ζ₆−1`; no
sampling, floating-point comparison, or interpolation is involved.

Parameterize the lower half-circle by

    z = (1−iv)/(1+iv) = exp(−iδ),   δ = 2 arctan v,  0 < v < 1.

Set `M(v) = 2304v²/(1+v²)⁴`. The four values above become

    0,   v⁴ M(v),   (1−v²)² M(v)/4,   M(v).

Consequently `max_c R_c(N(z)) = M(v)`. The corner with original rows
`(0,1,3)` and columns `(0,2,4)` attains this maximum.

## 4. This is a positive-sheet example in D₀ ∩ F

Order the rows of N(z) as `(3,1,0,2,4,5)` and columns as
`(0,2,4,1,3,5)`, then divide each column by its first entry. Call the
result H. Its leading corner is

    E = [[1,1,1],[1,ω²,−ω/z],[1,1,−1/z]].                   (4)

It has the same maximal R-value as the corner in §3. To check the
positive-sheet convention rather than merely exhibiting a completion,
direct calculation gives

    g = 12/(1+v²),    χ = −48/(1+v²)²,
    R = M(v),        sqrt(R) = 48v/(1+v²)²,
    z₊ = (χ+i sqrt(R))/(2g) = −(1+z).                       (5)

The actual horizontal side B and transposed vertical side Cᵀ are

    B = [[1,1,1],[ω/z,−1,−ω²],[1/z,−1,−1]],
    Cᵀ = [[1,1,1],[ω,ω²,ω],[−ω²/z,ω,ω²]].

The constructor's three λ values and the symmetric side data are:

| Side | (λ₀,λ₁,λ₂) | u = ∏xⱼ | v_side = ∏yⱼ | Π = (Σxⱼ)(Σyⱼ)−Σxⱼyⱼ |
|---|---|---|---|---|
| h, using z₊ | (ω/z,ω,ω) | 1/z | 1/z | −ω(1+1/z) |
| v, using conj(z₊) | (−ω²,−ω,z) | ω | −ω²/z | ω²(1+1/z) |

The verifier checks the λ-defining equations and all entries of this
table as rational identities. For the canonical side, the symmetric
data are `u=λ₀ conj(λ₁)`, `v_side=λ₀ conj(λ₂)`, `Π=z_side λ₀`, as
recorded in [BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md),
§§1–2. The actual and canonical sides also have the same s,t,r because
they have the same Gram matrix.

These six data determine the side up to column permutation: the
polynomial `∏ⱼ(T₀+xⱼT₁+yⱼT₂)` has coefficients

    T₀³ + s T₀²T₁ + t T₀²T₂
    + u conj(s) T₀T₁² + Π T₀T₁T₂ + v_side conj(t) T₀T₂²
    + u T₁³ + v_side T₂³ + u r T₁²T₂ + v_side conj(r) T₁T₂².

Unique factorization, with each linear factor normalized to have T₀
coefficient 1, identifies the multisets of columns. This works even
when individual x coordinates repeat. Thus the positive constructor
recovers B and C up to side permutations. Since g > 0, the forced
completion `D = −C E†(6I−EE†)⁻¹ B` then recovers H with those same
permutations. In particular, **H₊ at (4) lies in D₀**.

For `0 < v < 1/√3`, its ordered Gram-modulus triples are

    h = (4, 1+9v², 0)/(1+v²),
    vertical = (3(1+v²), (1+√3v)², (1−√3v)²)/(1+v²).

They satisfy `h₁ > h₂ > h₃`, `vertical₁ > vertical₂ > vertical₃`,
and `h₁ > vertical₁`. Thus (4) is already in F.

## 5. Distances, an exact witness, and necessary constants

Every dephased F6 corner has four entries that are sixth roots of unity:
its entries are ratios `ζ₆^((rᵢ−r₀)(cⱼ−c₀))`. Hence S_F6 is a subset
of the sixth-root grid in T⁴. The seed in (4) at v = 0 belongs to S_F6,
because N(1) is equivalent to F6.

For `0 < δ < π/6`, precisely the b and d phases of (4) move from this
grid point, each by δ. That point is a nearest point in the entire
sixth-root grid. Since it belongs to S_F6, we obtain the **exact** distances

    d₂(θ(v),S_F6) = √2 δ,       d∞(θ(v),S_F6) = δ.            (6)

For a concrete algebraic witness choose `v = 1/32`, so

    z = (1023−64i)/1025,
    (a,b,c,d) = (ω², −ω(1023+64i)/1025, 1, −(1023+64i)/1025),
    0 < R(θ) = max_c R_c(H₊(θ))
             = 2473901162496/1103812890625 < 9/4.             (7)

Using `arctan x = ∫₀ˣ dt/(1+t²)` gives

    1/20 < 64/1025 < δ = 2 arctan(1/32) < 1/16 < π/6.

Both distances in (6) exceed 0.05, while the seed lies in D₀ ∩ F.
Thus **m ≥ 20 and η ≤ 0.05 cannot satisfy T1**, even on D₀ ∩ F.
In fact, this particular witness already rules out m ≥ 9/4 at those η.

There is a stronger necessary relation. For Euclidean distance take
`δ = η/√2`, for any `0 < η < π/(3√2)`. Equation (6) places the seed
exactly at distance η, where T1 still applies. No corner beats it, so

    m < 2304 sin²(η/(2√2)) cos⁶(η/(2√2)) < 288η².           (8)

For maximum-coordinate distance the corresponding necessary bound is

    m < 2304 sin²(η/2) cos⁶(η/2) < 576η²,   0 < η < π/6.   (9)

These bounds follow from an actual positive-sheet curve, not a fitted
asymptotic. At Euclidean η = 0.05, (8) requires m < 0.72. If m ≥ 20
and η is in the displayed range, it requires `η > √10/12`. No
sufficiency is asserted at any of these thresholds.

## Scope and campaign consequence

The unconditional results here are (1)–(3) and the corner census for
the explicitly given Hadamards N(z). Identification with H₊ uses the
accepted local side identities and their symmetric data. The qualitative
gap theorem separately uses accepted strict-corner coverage. No published
MUB-exclusion theorem is needed for these conclusions.

The witnesses lie in the Fourier family, already excluded as quartet
edges by the campaign's existing published input. That does not repair
T1 as stated: T1 quantifies over all strict seeds, including these.
A useful reformulation could exclude a larger neighbourhood, use a
smaller m, or add a separate Fourier-family neighbourhood argument. Merely
restricting to D₀ ∩ F does not remove the obstruction.

The compactness theorem justifies the qualitative strategy, but no
computable lower bound for m(η) has been established here. No numerical
prune is enabled. The quantitative target remains open.

Replay: [verify.py](verify.py), registered as `corner_boundary_bounds`
in the root verification runner. The mathematical proof supplies the
compactness argument and distance inequalities; the replay supplies
exact identities and the finite 400-corner census.

The [verification receipt](../../Verification/T1_corner_bounds_2026-09-28/summary.json)
records PASS for the isolated replay. The replay uses exact symbolic and
integer arithmetic throughout; no numerical sample is part of the certificate.
