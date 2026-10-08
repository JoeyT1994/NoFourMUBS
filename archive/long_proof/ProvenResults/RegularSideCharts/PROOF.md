# Regular implicit side charts at every physical strict corner

## Statement and dependencies

Let E be a 3-by-3 corner of an actual phase Hadamard H of order six,
with R(E)>0. Normalize the complementary block B in the same three rows
by column phases, so its columns are (1, exp(iαⱼ), exp(iβⱼ))ᵀ.
The six real side phases are locally real-analytic functions of the
three complex off-diagonal Gram entries. This holds at symmetric seeds
as well as generic seeds. The analogous assertion holds for Cᵀ.

This is unconditional for physical sides. Its algebraic input is the
proved [complementary-square identity](../CornerBounds/PROOF.md#2-an-unconditional-complementary-corner-square-identity).
It does not establish global reconstruction coverage or select a sheet.

## 1. The determinant detects all local side singularities

Order q=(α₀,β₀,α₁,β₁,α₂,β₂), put xⱼ=exp(iαⱼ),
yⱼ=exp(iβⱼ), zⱼ=yⱼ/xⱼ, and define

    Φ(q) = (Re Σx, Im Σx, Re Σy, Im Σy, Re Σz, Im Σz).

Writing J=DΦ, the complementary-square identity gives exactly

    det(J)² = R(E)/64.                                      (1)

Indeed, the complex Jacobian is iL in the notation of that identity.
Converting each real/imaginary output pair to a complex number and its
conjugate multiplies the determinant by (−2i)³=8i. Thus
−det L=8i det J, which gives (1). Normalizing the first column of B,
if needed to apply the original four-variable identity, rotates the
three output planes and translates the input phases. Neither operation
changes the squared determinant or R.

Since R(E)>0, J is invertible. The real-analytic inverse function
theorem proves the stated chart. Conversely, at a physical R(E)=0
point, this moment Jacobian is singular. Symmetry equalities alone
create no additional local singularity of these side equations.

## 2. Explicit local sizes and sensitivity

Every column of J has squared Euclidean norm 2, so ||J||_F²=12.
If κ bounds ||J(q₀)⁻¹||₂, one may always take

    κ = 72/√R(E₀).                                         (2)

To see this, the product of the largest five singular values is at
most (12/5)^(5/2), by AM–GM, whereas their full product is √R/8.
Thus ||J⁻¹||₂ ≤ 8(12/5)^(5/2)/√R < 72/√R.

There is also the global Lipschitz estimate

    ||J(q+h)−J(q)||₂ ≤ √5 ||h||₂.                           (3)

The squared Frobenius difference, for a single column pair with phase
increments (u,v), is

    |Δx|² + |Δy|² + 2|Δz|²
       ≤ u²+v²+2(v−u)² ≤ 5(u²+v²).

Summing proves (3). Put r=1/(2κ√5). For every target moment vector t with

    ||t−Φ(q₀)||₂ ≤ 1/(4κ²√5),                              (4)

the map q ↦ q−J(q₀)⁻¹(Φ(q)−t) is a contraction of the closed
Euclidean r-ball into itself, with contraction factor at most 1/2.
It has a unique fixed point there. The Jacobian remains invertible
throughout the ball, so the solution depends analytically on t in
the interior. For two targets in this region,

    ||q(t)−q(t′)||₂ ≤ 2κ ||t−t′||₂.                         (5)

For the seed E=[[1,1,1],[1,a,b],[1,c,d]], a=e^(iθ₁), etc., the target is

    (s,t,r) = (−1−a−b, −1−c−d, −1−c/a−d/b).

Its real Jacobian has squared Frobenius norm 8. Hence its Euclidean
Lipschitz constant is at most √8. A sufficient seed radius for (4) is

    ||θ−θ₀||₂ ≤ 1/(4κ²√40).                                (6)

Within it, the labelled side phases vary by at most
2κ√8 ||θ−θ′||₂. The same bound controls the Frobenius change in B,
since |exp(iu)−exp(iv)|≤|u−v|. Transposition gives the vertical result.

The universal choice (2) makes (6) equal to R(E₀)/(20736√40).
This is conservative and is not a claim of a campaign-sized chart.
Validated local inverse bounds and anisotropic boxes can be much better.

## 3. A directly implementable validation test

Take a numerical proposal q₀, an exact real matrix A (binary floating
entries interpreted exactly are allowed), and Q=q₀+[−r,r]⁶. Let T
enclose all six target moments of the requested seed box. Use outward
interval arithmetic to bound, componentwise,

    ηᵢ ≥ sup_{t∈T} |[A(Φ(q₀)−t)]ᵢ|,
    λᵢ ≥ sup_{q∈Q} Σⱼ |[I−A J(q)]ᵢⱼ|.

If λᵢ<1 and ηᵢ+λᵢr<r for all i, the same fixed-point proof gives
a unique side solution in Q for every t∈T. Invertibility of A and J
follows from ||I−AJ||∞<1. The strict inequalities also give analytic
parameter dependence. [chart.py](chart.py) implements this test with
Arb; proposed inverses never authorize acceptance without the interval
test. The verifier certifies a seed box around the exact physical
Fourier-family example and checks two rejection controls.

This is a labelled local chart, not an enumeration of every solution.
Using it for H₊ requires matching the intended branch, or retaining
all relevant side branches. Given matched physical sides, the forced
completion is D=−CE†(6I−EE†)⁻¹B. Its inverse is regular at the base
point: G=BB† is positive semidefinite, and det G=g cannot vanish when
R=4g²η−χ²>0. Identifying the resulting analytic germ with the campaign's
H₊ uses its accepted local reconstruction identities and branch choice.
The local side theorem alone does not prove flatness of every arbitrary
pair of horizontal and vertical continuations.

## 4. What the seven T6 cells actually show

[data/cells.json](data/cells.json) retains the seven unrounded binary
Float64 centres from the production benchmark. The half-width is the
exact binary Float64 value of π/512. The verifier evaluates two exact
points of each box with offsets ±(−1,+1,+1,−1) times that half-width.

| Cell | R at first point | R at second point | Certified conclusion |
|---|---:|---:|---|
| 1 | −51.2838 | 46.0811 | Crosses R=0 |
| 2 | −25.5815 | 66.2690 | Crosses R=0 |
| 3 | −88.4846 | 17.2975 | Crosses R=0 |
| 4 | −7.72145 | 79.3446 | Crosses R=0 |
| 5 | 0.332847 | 86.5620 | R>0.3328 on the entire box |
| 6 | −59.3926 | 40.1174 | Crosses R=0 |
| 7 | −32.9304 | 60.5343 | Crosses R=0 |

These displayed numbers are rounded summaries of outward Arb bounds.
For cell 5, a Hessian mean-value bound certifies derivative signs
(+,−,−,+) throughout the box, proving the first point is its minimum.
The other six conclusions use continuity and strict opposite signs.
No float-sampled assertion of D₀ membership is needed for these claims.

The independent Julia [diagnostic](diagnose.jl) reports that the six
crossing cells fail at sqrt(R), before side construction. Cell 5 passes
that operation and fails the sufficient convergence test for the
complex square root δ: |d²/d₀²−1| is bounded by about 30.98, above 1.
This failed bound does not prove that δ or a divisor actually vanishes.
For this cell, the existing H₊ constructor succeeds on 15/16 equal
children and 255/256 equal grandchildren. These are reconstruction
enclosures, not quartet exclusions. The first straightforward interval
side-chart test also fails on these boxes; no production replacement
or complete T6 certificate is claimed.

Consequently positive R at the sampled D₀ points cannot be used to
classify all seven whole cells as degeneracies away from R=0. Six
retain a genuine R=0 wall; one isolates a strictly positive-R enclosure
problem. The theorem above removes a possible intrinsic side-map
singularity as an explanation at any physical positive-R point.
