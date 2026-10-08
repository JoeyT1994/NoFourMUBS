# Linear corner gap and projection to cubic-root alignment

**Proved.** At a strict Fourier surface seed E₂(z,w), let B_A be the
alternative horizontal side from the [side classification](PROOF.md).
Use S=1+z+w, T=1+ω²z+ωw, Y=|S|², Z=|T|² and R=R(E₂). If
0<R≤20, at least one of the six mixed corners J in the
[atlas-rigidity proof](ATLAS_RIGIDITY.md) satisfies

    R([E₂ B_A]_:,J) − R ≥ R |Y−Z| / 10.                  (1)

Consequently approximate maximality, `R_corner≤R+ε`, implies

    |Y−Z| ≤ 10ε/R.                                      (2)

This is linear in ε, improving the square-root control obtainable from
the averaged gap. It remains an exact-atlas side theorem; converting
seed proximity to the required side matching is still necessary.

## 1. The second exact identity

Let δ_J=R([E₂ B_A]_:,J)−R, p=Y+Z, t=YZ. In addition to the previously
proved mean identity, there is the exact rational identity

    Σ_J δ_J² = (Y−Z)² P(p,t)/(YZ)⁸.                      (3)

[variance_polynomial.json](data/variance_polynomial.json) records all
114 nonzero rational coefficients of P. Its weighted degree is at most
22, with p of weight one and t of weight two. The extended
[mixed_algebra.py](mixed_algebra.py) reconstructs each of the six corner
values from the complementary sine determinant, squares their gaps,
clears denominators and checks (3) as a polynomial identity over
Q(sqrt(−3))[z,w]. The replay does not accept interpolation or samples
as proof of the identity.

The sign certificate in [linear_gap.py](linear_gap.py) proves

    P(p,t) ≥ (3/10) R² t⁸                                (4)

throughout the physical region 0<R≤20. Here are its exact reductions.
Use k,c as in the atlas proof, so p=9−k²,
t=k²(k²+9+6kc), R=36k⁶(1−c²). The expression

    F(k,c)=[P(9−k²,t)−(3/10)R²t⁸]/k²⁰

is a polynomial; the replay checks the division exactly. On the closed
rectangle 0≤k≤1, −1≤c≤1 all its Bernstein coefficients are nonnegative.

For 1≤k<3 put `c=−1+(3−k)³(k+1)u/(8k³)`. Physicality gives
0<u≤1, as proved in the atlas theorem. The expression

    H(k,u)=k²⁰ F(k,c)/(3−k)¹⁵

is again a polynomial. Define

    A(k)=864k²⁰(k+1),
    B(k)=−432k¹⁷(k+1)(13k⁵−86k⁴+169k³−8k²−194k+32),
    C(k,u)=[H−A(k−2)⁴−u B(k−2)²]/u²,
    D(k,u)=C−B²/(4A).

Both C and D are polynomials, verified by exact division. Completing
the square gives

    H=A[(k−2)²+uB/(2A)]²+u²D.                           (5)

A>0 on 1≤k≤3. A rational Bernstein tree covers the whole closed
rectangle [1,3]×[0,1] with **13 nodes and seven leaves**. It certifies
H≥0 on three leaves, D≥0 on two, and R>20 on two. The last type cannot
contain a point under consideration. Equation (5) handles the D≥0
leaves, including the singular-looking point (k,u)=(2,0). Every bound
and bisection is rational and all boundary faces are included. Thus
F≥0 and (4) follows. Nonnegative bounds suffice here; strict positivity
of the desired final gap comes from R>0 and Y≠Z.

## 2. From a squared gap to a positive gap

The earlier mean certificate gives Σ_J δ_J≥0. Put M=max_J δ_J, so
M≥0. Each δ_J is at least −5M, since the other five are at most M.
Therefore `(δ_J+5M)(M−δ_J)≥0`, and hence

    Σ_J δ_J² ≤ −4M Σ_J δ_J+30M² ≤30M².

Combine this with (3) and (4):

    30M² ≥ (3/10)R²(Y−Z)².

Taking nonnegative square roots proves (1). This step uses all six
corners and does not select a favourable sampled corner.

## 3. Explicit projection onto the cubic-root locus

There is the additional exact factorization

    (zw)(Y−Z)=(1−ω²)(z−ω²)(w−ω)(z−ωw).                  (6)

It is checked by the same Laurent verifier. Thus the locus Y=Z is the
union of the three circles z=ω², w=ω, z=ωw. For 0<R≤20 there is a
point on this union whose two free phases differ from those of (z,w)
in Euclidean geodesic distance by at most

    36 |Y−Z| / R^(1/3).                                 (7)

**Proof.** Set u₀=z/ω² and v₀=w/ω. The three chord lengths between
1,u₀,v₀ are, in sorted order, a≤b≤c. Their triangle inequality gives
b≥c/2. Formula (6) gives |Y−Z|=sqrt(3)abc. The exact R formula gives

    R=9|u₀²−v₀|² |v₀²−u₀|² |u₀v₀−1|² ≤2916c⁶,

because the three factors are bounded respectively by 3c,3c,2c.
It follows that

    a≤2|Y−Z|/(sqrt(3)c²) <18|Y−Z|/R^(1/3).

For the last constant, 2/sqrt(3)<6/5 and 2916^(1/3)<15 suffice.
Change just z or just w to satisfy the factor corresponding to a in (6).
The shortest angular displacement is at most (π/2)a<2a, proving (7).
No claim that R stays positive along this projected segment is implicit
in (7); that must be established separately when continuing a carrier.

Combining (2) and (7) supplies the explicit projection bound

    distance to Y=Z ≤360 ε/R^(4/3).                      (8)

This is the ingredient needed to move an approximately maximal atlas
side to exact cubic-root alignment. Bounds for continuation of the actual
carrier and control as R→0 remain separate obligations. No positive-width
seed prune is enabled by (8) alone.
