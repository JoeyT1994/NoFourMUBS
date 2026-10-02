# Completion estimates for individual columns and rows

**Proved, unconditional for physical matrices.** Let H and H₀ be raw
physical order-six Hadamards, in one common alignment, with 3×3 blocks
`[[E,B],[C,D]]` and `[[E₀,B₀],[C₀,D₀]]`. Here D₀ denotes a block, not
the maximal-corner domain. Assume

    ||E−E₀||F≤e, ||B−B₀||F≤b, ||C−C₀||F≤c,
    max_j ||(B−B₀)_:,j||₂≤β,
    max_i ||(C−C₀)_i,:||₂≤γ,
    6I−EE† ≥ κ I, κ>0,       ||E₀||op≤ν.

No lower bound for R is needed. Then the maximum normalized column
Euclidean error is at most

    Lcol = max{sqrt((e²+c²)/6),
               sqrt([β²+(sqrt(3)(e+c)+νβ)²/κ]/6)},        (1)

and the maximum normalized row Euclidean error is at most

    Lrow = max{sqrt((e²+b²)/6),
               sqrt([γ²+(sqrt(3)(e+b)+νγ)²/κ]/6)}.        (2)

Each respective maximum projector distance is bounded by the same
quantity. If H₀ belongs to the F6 orbit and both quantities are ≤1/36,
then neither H nor Hᵀ can be a quartet edge, by the F6 tube theorem.
This last statement avoids assuming that maximum-column distance is
transpose invariant.

## Proof

Column orthogonality gives `E†B+C†D=0` and the corresponding reference
identity. Subtract them in the form

    C†(D−D₀)=−(E−E₀)† B−E₀†(B−B₀)−(C−C₀)† D₀.         (3)

Since `C†C=6I−E†E`, and E is square, its spectrum equals that of
`6I−EE†`. Thus `||(C†)⁻¹||op≤κ^(−1/2)`. Every column of B and D₀ has
three phase entries and Euclidean norm sqrt(3). For column j in (3),
with error β_j=||(B−B₀)_:,j||₂, this gives

    ||(D−D₀)_:,j||₂
       ≤ [sqrt(3)e + νβ_j + sqrt(3)c]/sqrt(κ).

Combine its square with β_j², divide by six, and use β_j≤β. This gives
the second term of (1). For the first three full columns, the E and C
block errors give the first term directly. Applying this argument to
H† and H₀† exchanges B with C† and interchanges b,c and β,γ, proving
(2). Each normalized column or row is a unit vector; its rank-one
projector distance is at most its Euclidean error. This proves the
projector assertions.

## Sharper seed conditioning

For the F6 reference in [R_ZERO_LIFT.md](R_ZERO_LIFT.md), put

    κ₀=3−sqrt(5),     ν₀=sqrt(3+sqrt(5)).

Writing E=E₀+Δ gives

    ||EE†−E₀E₀†||op ≤ 2ν₀||Δ||F+||Δ||F²,
    κ = κ₀−2ν₀e−e².                                    (4)

Whenever this expression is positive it is a valid Gram lower bound.
It improves the earlier `3/4−10h` bound for a phase cube with e≤2h.
Every expression is uniform over a seed box when e,b,c,β,γ are uniform
bounds obtained from complete side covers. All side permutations must
be simultaneous and must certify both the total and individual error
bounds; independent minima from incompatible matchings are not valid.
