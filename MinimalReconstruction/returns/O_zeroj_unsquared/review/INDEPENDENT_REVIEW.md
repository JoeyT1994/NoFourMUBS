# Independent audit of the unsquared mixed-corner source identities

**Date: 18 October 2026.**

**Verdict: PASS for the audited mathematical steps and exact identities.**

The audit covers the generic weighted identity, its distinct-modulus consequence, the repeated-modulus `Tpair` real-part identity, and the shortened repeated-modulus argument with Bézout constant 746496. It also checks the binding of the moment formulas to the permitted actual-side identities, the gauge, and the nonvanishing assumptions. It does not claim Lean compilation or full-project integration.

The original recovered source certificates are valid under these inputs. The shorter argument needs only the generic `Tx` source and the repeated `Tpair` source; its predecessor's specialized repeated `Tx` source and its coefficients A, B are unnecessary.

## Independent exact reconstruction — CERTIFIED

`verify_source_independent.py` regenerates the 48-term Laurent signature from the permanent and squared determinant. It obtains the two mixed-moment expressions directly from column exponents: 24 grouped terms for `Tx` and 44 for `Tpair`. It imports no source, certificate, or arithmetic class from the recovered return.

Its arithmetic differs from the primary verifier in two useful ways. It retains full polynomials in the variable h before reducing powers through h² = −XYZ, rather than using the primary verifier's two-component `Pair` class. It also uses the actual Newton products U·bar(π) and V·bar(π), rather than starting with their simplified expressions z·bar(λ₁) and z·bar(λ₂). It checks the three lambda norm identities modulo the W relation before simplification. Thus its check does not silently assume the lambda cancellation used in the primary source.

After clearing denominators, the generic target difference is exactly divisible by

    XY + XZ + YZ − XYZ − z²(z+3)²,
    Z = 9 − z² − X − Y.

On the repeated locus X = Y = v, the difference between the reconstructed real part of `Tpair` and 3(C + 2vD)/(16(z+3)⁵) is exactly divisible by

    C₂ = 2v² + (z² + 2z − 6)v + z²(z+3).

Both checks pass. The independent checker additionally expands the shortened repeated-branch reduction, both of its polynomial norm identities, and the new Bézout identity. Those checks also pass. Separate SymPy expansions independently reproduced the reduction, the new norm, and the Bézout constant during the audit; SymPy is not a dependency of the delivered checker.

## Binding to actual corners — PROVED

For a normalized phase side, `SIDE_FIBER.md` §1 defines the actual lambda phases on every invertible side, including critical sides. It gives λ₀ = −UV·bar(det)/det, π = zλ₀, U = λ₀bar(λ₁), and V = λ₀bar(λ₂). Unit modulus of λ₀ then gives U·bar(π) = z·bar(λ₁) when z is real, and likewise for V. The source moment substitutions consequently apply to the actual selected halves, without assuming that a constructor supplies them or that R > 0.

The signature is symmetric in its three columns because its determinant is squared. It is zero when the two retained indices coincide. Therefore the half-ordered sum defining `Tx` counts each of the nine mixed corners once. In `Tpair`, the unordered weight is `(x_j+x_k)y_c/2`; its factor of one half must be retained. The source coefficients retain exactly this normalization. The primary verifier's independent Laurent checks bind both regroupings directly to twelve independent formal phase variables, before using orthogonality or criticality.

Every source term is an unsquared signature of an actual mixed corner. All-criticality therefore makes both sums zero term by term. There is no use of the twenty-corner square sum, its column splitting algebra, the nonzero-J classification, or [CT].

## Gauge and denominators — PROVED

With positive moduli X,Y, choose unit row phases so that the physical sums s and t are positive. Reciprocal Laurent scaling by 1/s and 1/t gives s=t=1, S=X, T=Y, r=h/Y, and q=−h/X, where h is the original physical number s r bar(t). This h is purely imaginary on J=0 and satisfies h²=−XYZ. It is nonzero when XYZ>0.

The Laurent involution after this scaling is not ordinary conjugation of the scaled entries. This causes no problem: the signature has row weight zero, `Tx` has row weight (1,0), and `Tpair` has row weight (1,1). Their vanishing survives the reciprocal scaling. Their reconstructed expressions have real rational coefficients in z,X,Y and the actual purely imaginary h, so extracting the real or imaginary coefficient is justified.

Every source denominator is built from z, X, Y, and the three factors e_U = 3(z+3)−U. The repeated target adds only z+3. They are nonzero under the stated physical assumptions and the allowed pole-free lemma. The latter was inspected in `CoverageStripZero.lean`: it is an elementary scalar argument preceding the old square-sum step and does not depend on that step.

In particular, X−1 occurs as a multiplier on the generic identity's left side. It is not divided out. The generic consequence remains valid at X=1. The repeated argument below likewise never divides by v−1 or by v−Z.

## Distinct moduli — PROVED

Let τ=z+3 and Δ=XYZ+(z−1)τ³. The scalar identity

    (τ−X)(τ−Y)(τ−Z)=(z+2)Δ

shows that no modulus equals τ under the contradiction hypothesis Δ≠0. For XYZ>0, the generic source's imaginary part gives

    (τ−X)(Y−Z)(τ²−X)(zτ−(z+2)X)=0.

Row permutations preserve z and permute the three moduli. If they are pairwise distinct, the three values X,Y,Z would therefore be distinct roots of the single quadratic

    Q(T)=(τ²−T)(zτ−(z+2)T).

Its leading coefficient is z+2≠0. This is impossible. No exceptional specialization has been omitted in this deduction.

## Shortened repeated branch, including all-equal moduli — PROVED / CERTIFIED

Write X=Y=v, Z=9−z²−2v. The W relation factors as (v−τ)C₂, so Δ≠0 gives C₂=0. The same generic imaginary identity gives

    R_v=(3v−(9−z²))Q(v)=0.

This step retains the factor v−Z; it does not divide by it. Hence all-equal moduli are included.

The new exact reduction is

    4R_v=z(a+bv)+E C₂.

Since z≠0, it gives a+bv=0. Its norm identity forces

    H(z)=(z²−6z−18)(z²+2z−2)(z²+6z+6)=0,

because z+2 and τ are nonzero. The independently source-bound real part of `Tpair` gives C+2vD=0. The second norm forces

    G(z)=6z⁵+43z⁴+128z³+216z²+216z+108=0.

The delivered polynomial coefficients satisfy U(z)H(z)+V(z)G(z)=746496 exactly. Thus H=G=0 is impossible. The coefficients and all signs were independently expanded and checked. This closes the positive-product repeated case, including X=Y=Z and v=1, without the old repeated `Tx` source identity.

The zero-product boundary is a separate part of the full proof; the present audit's positive-product argument does not replace or skip it.

The sextic H used here is F_* in REPORT.md.
