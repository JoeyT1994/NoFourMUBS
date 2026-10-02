# Quantitative D₀ branch forcing on the Fourier atlas

This strengthens [exact atlas rigidity](ATLAS_RIGIDITY.md) with an
explicit corner-gap estimate and a perturbation inequality. It is a
bound on the competing side branch, **not yet a seed-to-carrier bound**.
The latter still requires control of the actual side block from the seed.

## 1. An explicit corner gap

Use the notation of the atlas proof. For the alternative horizontal side
B_A at E₂(z,w), let α=S conjugate(T)/(conjugate(S) T). If 0<R(E)≤20,
then one of the six mixed corners J used there satisfies

    R([E B_A]_:,J) − R(E)
        ≥ R(E) |α³−1|² / 282000.                       (1)

This concerns the explicit orthogonal three-row matrix [E B_A]; it need
not be extended to a full Hadamard to compute its corner values.

**Proof.** The same exact Bernstein certificate gives the stronger bound

    Q(p,t) ≥ (17/39366) R(E)².                          (2)

For k≤1, its bound F≥64 gives Q≥1536k¹⁰≥1536k¹².
Since R≤36k⁶, this is at least (32/27)R², which exceeds the right
side of (2).

For 1≤k<3, every relevant Bernstein leaf has either H or H₁ at least
17408; this is the smallest of the seven positive rational lower bounds
printed in the certificate. Since 0<u≤1 and
H=1024k¹⁰(k−2)²+uH₁, both leaf types give H≥17408u. Therefore

    Q=(3/128)(3−k)⁶ H ≥408(3−k)⁶u.

The displayed formula for R_* in the atlas proof gives
R≤9k³(k+1)(3−k)³u≤972(3−k)³u. Consequently

    Q ≥ (408/972²)R²/u ≥ (17/39366)R²,

as claimed. All divisions have positive denominators because R>0.

There is also the exact identity

    |α³−1|² = (Y−Z)² R(E)/(Y Z)³.                      (3)

The Laurent verifier checks it after clearing denominators. One geometric
way to see it is to use the closed triangle A+B₁+C=0 in the side proof.
Writing B₁/A=−1/2+d+ih and C/A=−1/2−d−ih gives
`d=U₀(Y−Z)/(2YZ)`, `|h|=sqrt(R)/(2YZ)`, where U₀=9−Y−Z.
The product AB₁C is positive. Comparing the imaginary part and modulus
of B₁C/A² gives (3).

The six-corner identity and (3) now give

    Σ_J [R_J−R(E)] = |α³−1|² Q/(R(E)YZ).

Use (2), `YZ≤(Y+Z)²/4≤81/4`, and the fact that the maximum of six
numbers is at least their average. The resulting coefficient is
17/4782969, which is greater than 1/282000. This proves (1). ∎

In particular, if all corners are within ε≥0 of maximality, meaning
`R_corner≤R(E)+ε`, then

    |α³−1| ≤ sqrt(282000 ε/R(E)),
    min_(ζ³=1) |α−ζ| ≤ sqrt(70500 ε/R(E)).              (4)

For the second inequality choose α/ζ=exp(iθ), |θ|≤π/3, and use
`sin(3t)≥2 sin(t)` for 0≤t≤π/6. Thus exact D₀ maximality forces a
cubic root, and approximate maximality forces a quantitative alignment.

## 2. A uniform perturbation bound for the three-row corner test

Let K and K₀ be flat three-by-six matrices with mutually orthogonal rows,
with their first rows all one. Match their column positions. Suppose
corresponding entries of rows two and three have phases differing by at
most η radians, with a consistent lift chosen separately for each entry.
Then every corresponding three-column corner satisfies

    |R(K_:,J)−R(K₀_:,J)| ≤36864 η.                     (5)

To prove this, use the complementary-square identity on the other three
columns. Its real function Q_sin is a sum of six products of three sines:
one of an α difference, one of a β difference, and one of a β−α
difference. Thus |Q_sin|≤6. The sum of absolute first derivatives of
each product in the six phase variables is at most 2+2+4=8, so
`||∇Q_sin||₁≤48`. For R=64Q_sin², the gradient's one-norm is at
most 128·6·48=36864 on the entire phase space. Integrate along the
straight segment between the chosen phase lifts. Intermediate matrices
need not have orthogonal rows: the sine expression and its derivative
bound are defined there regardless. Orthogonality is needed only at the
two endpoints to identify the sine expression with the physical R.

Now suppose K consists of the first three rows of a physical Hadamard
whose leading corner is maximal, and K₀=[E₂(z,w) B_A(z,w)] has
0<R₀≤20. Applying (5) twice gives

    max_J [R((K₀)_:,J)−R₀] ≤73728 η.

Combining with (1), a necessary condition is

    R₀ |α³−1|² ≤ 20,791,296,000 η.                    (6)

A strict violation excludes the actual completion from D₀. This is
uniform on a whole cell if a validated side cover proves the phase
matching and the displayed inequality throughout that cell. The constants
are deliberately conservative; local interval derivatives can improve
(5) without changing its proof.

The missing hypothesis is explicit: proximity of the **seed alone**
does not establish the three-row matching in (5). A complete restricted
lifting theorem must bound the possible side blocks or bypass that
matching with a different argument. Formula (6) must not be applied
using a sampled side or a chosen reconstruction branch.

The subsequent [linear-gap theorem](LINEAR_GAP.md) strengthens the
control of |Y−Z| from approximate maximality and gives an explicit
projection bound. The perturbation bound (5) remains applicable.
