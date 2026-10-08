# Sharp capacity bound for phase-box labels

**Status: proved.** This replaces the quadratic sufficient bound in
[PROOF.md §2](PROOF.md) by the exact minimum for boxes with every half-width
less than π/4. It is independent of the carrier and of root regularity.

Let `v(φ)=(1,e^{iφ₁},…,e^{iφ₅})/√6` and let a label have coordinate
half-widths `0≤r_k<π/4`. Then

    min_{x,y in label} 36 |x†y|²
      = (1 + Σ cos(2r_k))²
        + min_{ε in {−1,+1}⁵} (Σ ε_k sin(2r_k))².             (1)

Consequently the label has capacity one exactly when the right side is
strictly greater than 6. Only sixteen sign patterns need evaluation,
since simultaneous sign reversal gives the same square. Strict comparison
of outward interval lower bounds with the integer 6 gives a certificate;
an inconclusive interval comparison does not certify capacity.

## Proof

The possible coordinate differences are precisely `d_k∈[−2r_k,2r_k]`.
Set `a=max_k 2r_k<π/2` and minimize

    |1 + Σ exp(i d_k)|²

on this compact box. Freeze all coordinates except coordinate k, and put
`A=1+Σ_{l≠k} exp(i d_l)`. Every summand has positive real part and argument
in `[−a,a]`. Their sum has positive real part and argument `β∈[−a,a]`.
As a function of t=d_k the objective is

    |A|² + 1 + 2|A| cos(t−β).

Here `|t−β|≤2a<π`. There is no interior minimum: the only possible interior
stationary point is `t=β`, which is a maximum. Thus replacing t by one
of its endpoints cannot increase the objective. Starting from a global
minimizer, apply this replacement to each of the five coordinates. The
result is an endpoint vertex that is also a global minimizer. At a vertex
the real part is `1+Σ cos(2r_k)` and the imaginary part is
`Σ ε_k sin(2r_k)`, proving (1). Each difference vertex is attained by a
pair of opposite label corners, so the bound is exact. ∎

## Optimal uniform half-width

For `r_k=r`, five signs have an odd sum, whose smallest absolute value is
one. With `c=cos(2r)`, (1) becomes

    min 36 |x†y|² = (1+5c)² + sin²(2r) = 24c²+10c+2.

For `0≤r<π/4`, capacity one is therefore equivalent to

    cos(2r)>1/4,  or  r < ½ arccos(1/4) ≈ 0.6590580358.

Equality is attained by three positive and two negative differences.
The strict threshold is optimal for cubic phase labels. Anisotropic
labels may be admissible even when one radius exceeds this threshold;
use (1), not their largest radius alone.

## Campaign implementation

[box_capacity.jl](../../../NumericalCampaign/Certification/box_capacity.jl)
uses outward intervals for the range guard, all trigonometric values,
sums and squares. It first tries the simpler bound
`Re(6x†y) ≥ 1+Σ min_{|t|≤2r_k} cos(t)`, which is valid for arbitrary
nonnegative radii and can certify a box with a particularly wide coordinate.
Only a positive lower bound whose square exceeds 6 is accepted this way.
`certify_cell_cover(...; sharp_capacity=true)` uses this
test on each proposed label instead of the fixed cap. Containment and the
exhaustive graph certificate remain required. The default remains the
existing cap until campaign adoption. Wider admissible labels need not
help the graph test; actual savings must be measured.
