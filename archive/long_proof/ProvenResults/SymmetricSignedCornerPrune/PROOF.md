# Symmetric signed-corner exclusion of strict D0

## Status and dependency ledger

**Proved:** the explicit seed-only exclusion test below, for every strict seed where its rational denominators can be bounded away from zero. The test retains both side orbits. It needs no F6 carrier chart, no matrix-neighborhood hypothesis, no completion, and no quartet assumptions. Its implementation certifies whole rational seed boxes by outward intervals. **Demonstrated:** 511 of 1,000 deterministic sample boxes are excluded from strict D0; the other 489 remain unresolved by this test. This is not a proof covering the whole branch layer.

These are the precise external inputs, with source hashes in `INPUTS.json`:

* **[P1, proved archive input]** `CornerBounds/PROOF.md` §2: for any phase triple T, the determinant D(T) below is imaginary, and its negative square is the R invariant of the same-row complementary corner in any physical Hadamard. Its Laurent identity is independently regenerated in `verify.py`.
* **[A1, accepted input, not reproved]** `MinimalConstruction/ASSUMPTIONS.md` and `RECONSTRUCTION.md`, scope item 2: at R>0 the normalized side fiber has exactly two column-permutation orbits. The accepted side formulas recover both.
* **[A2, accepted input, not reproved]** The same reconstruction's unit-lambda and symmetric-side identities, also recorded in `BalancedProducts/BalancedFourSeedIdentity.md`: the products and mixed elementary moments in (4) below are those of the two side orbits. Strict-domain denominators are nonzero. The implementation additionally checks each required denominator on its entire box; accepted pointwise nonvanishing is not used as a substitute for an interval check.
* **[P2, proved and regenerated]** R(E)=R(E^T). The verifier checks this exact Laurent identity; transposition also permutes the 400 positional corners.

Strict-corner **global coverage**, positive-sheet **global surjectivity**, F6 classification, and Fourier-neighborhood constants are **not used in the local exclusion theorem**. They retain their existing, separate roles when the campaign applies local exclusions to its global reduction. No matrix radius is inferred from a seed radius.

## 1. Six known phase coordinates and three missing columns

Write

    E = [[1,1,1],[1,a,b],[1,c,d]],       |a|=|b|=|c|=|d|=1,
    s=−1−a−b,   t=−1−c−d,   r=−1−c/a−d/b.

For a physical completion H, normalize its first row and column to one and write its horizontal side as columns (1,x_l,y_l), l=0,1,2. Orthogonality implies

    Σx_l=s,   Σy_l=t,   Σ(y_l/x_l)=r.                    (1)

All x_l,y_l are unit phases. Set

    X=|s|², Y=|t|², Z=|r|², p=X+Y+Z,
    J=2 Re(s r conjugate(t)), W=XY+XZ+YZ−XYZ,
    g=27−3p+J, eta=9−p+J,
    chi=W−(p−9)(p−18)+(p−15)J,
    R=4g² eta−chi².

Also put

    P0=r s²+conjugate(r)t²+(3−Z)s t,
    P1=t conjugate(s)²+r² conjugate(t)+(3−Y)r conjugate(s),
    P2=s conjugate(t)²+conjugate(r)² conjugate(s)
                       +(3−X)conjugate(r)conjugate(t),
    k0=9−Z, k1=9−Y, k2=9−X,    A_j=chi+2 k_j eta.       (2)

The letter A_j in (2) denotes a scalar, not the corner matrix or the coefficient A in §3.

For side sign sigma in {+1,−1}, the accepted formula [A1,A2] gives

    z=(chi+i sigma sqrt(R))/(2g),
    lambda_j=(g+k_j conjugate(z))/conjugate(P_j),
    |lambda_j|=1,
    u=Π_l x_l=lambda0 conjugate(lambda1),
    v=Π_l y_l=lambda0 conjugate(lambda2),
    Pi=s t−Σ_l x_l y_l=z lambda0.                         (3)

No individual side column or cubic root will be evaluated by the predicate.

## 2. Polarized moments cancel the side singularities

The six required side sums are

    M10=s, M01=t, M1,−1=conjugate(r),
    M11=s t−Pi,
    M2,−1=s conjugate(r)−u conjugate(Pi),
    M−1,2=t r−v conjugate(Pi),                            (4)

where Mpq=Σ_l x_l^p y_l^q. The last two identities hold for arbitrary nonzero x_l,y_l with conjugation interpreted as reciprocal: expand the products and cancel. `verify.py` checks them exactly as Laurent identities in six independent variables.

Now z conjugate(z)=eta. Using (3) and |lambda0|=1,

    Pi                = (A0+i sigma sqrt(R))/(2 conjugate(P0)),
    u conjugate(Pi)   = (A1−i sigma sqrt(R))/(2 P1),
    v conjugate(Pi)   = (A2−i sigma sqrt(R))/(2 P2).        (5)

For example u conjugate(Pi)=conjugate(z)conjugate(lambda1), so its numerator is g conjugate(z)+k1 eta. Equation (5) cancels the factor 1/g before interval evaluation. It also removes every square/cube root used to construct individual columns. Only the bounded scalar sqrt(R), never its reciprocal, remains. Exact polynomial reduction modulo h²=4g²eta−chi² verifies all three cancellations.

The rational coefficient functions in (5) are evaluated on the full seed box, even if it crosses R=0. The identities themselves need only hold on the physical strict subset. A negative-R box center is therefore not a reason to reject this certificate.

## 3. An explicit signed-corner mean

For T with columns (1,1,1), (1,A,C), (1,x,y), define D(T) as the determinant with paired columns

    (x_j,−1/x_j,0,0,−y_j/x_j,x_j/y_j)^T,
    (0,0,y_j,−1/y_j,y_j/x_j,−x_j/y_j)^T.

The six exponent pairs and Laurent coefficients below give all of D:

| (p,q) | c_pq(A,C) |
|---|---|
| (1,1) | −(A−C)²(A+C)/(A²C²) |
| (1,−1) | (A−C)(A+C)(AC−1)/(A²C) |
| (2,−1) | (C−1)²(C+1)/(AC) |
| (0,1) | −(A²−C)(C−1)(C+1)/(AC²) |
| (−1,2) | (A−1)²(A+1)/(AC) |
| (1,0) | (A−1)(A+1)(A−C²)/(A²C) |

Specifically,

    D(T)=Σ_(p,q) [c_pq x^p y^q − conjugate(c_pq) x^(−p)y^(−q)].  (6)

The implementation's actual six coefficient formulas are evaluated on an exact rational-function wrapper in the verifier and checked against the independently computed 6×6 determinant. This is the full 48-term Laurent identity, not a numerical fit. Define the real signed invariant f(T)=iD(T).

Choose two of E's known columns, indexed j<k in {0,1,2}; set

    (x0,x1,x2)=(1,a,b),   (y0,y1,y2)=(1,c,d),
    A=xk/xj, C=yk/yj,
    d_pq=c_pq(A,C) xj^(−p) yj^(−q).

These d coefficients account exactly for dephasing the known column j. Define

    h1=d11/conjugate(P0), h2=d2,−1/P1, h3=d−1,2/P2,

    Z0=d10 s+d01 t+d1,−1 conjugate(r)
       +d11 s t+d2,−1 s conjugate(r)+d−1,2 t r
       −(h1 A0+h2 A1+h3 A2)/2,

    alpha_jk=−(2/3) Im(Z0),
    beta_jk=(1/3) Re(h1−h2−h3).                         (7)

Substitute (4)–(5) into (6). For each side orbit sigma, the average signed invariant of the three triples consisting of known columns j,k and one missing column is exactly

    m_jk,sigma = (1/3) Σ_l f(T_jkl)
               = alpha_jk + sigma beta_jk sqrt(R).       (8)

This derivation uses [A2] at (3) and (5). Taking both possible signs uses [A1]. The coefficient functions alpha,beta are smooth rational functions of the four seed phases wherever the tested P denominators do not vanish. Their derivatives do not contain sqrt(R) or 1/sqrt(R).

## 4. Global necessary condition for D0; exclusion theorem

Let M(H) be the maximum of all 400 corner invariants. For each l, [P1] gives

    f(T_jkl)² = R(the complementary same-row corner) ≤ M(H).

Consequently

    M(H) ≥ max_l f(T_jkl)² ≥ m_jk,sigma².                (9)

The last inequality follows from the triangle inequality, or from

    3 Σ_l f_l²−(Σ_l f_l)²=Σ_(l<m)(f_l−f_m)² ≥ 0.

For an actual strict-D0 completion M(H)=R(E)>0. Thus it is necessary that there exist one sign sigma for which all three inequalities

    (alpha_jk+sigma beta_jk sqrt(R))² ≤ R,
                   (j,k)=(0,1),(0,2),(1,2)              (10)

hold simultaneously. The transposed seed has the same necessary condition, by [P2]. A different sign is allowed in that orientation.

**Exclusion theorem.** Let K be a closed rational seed-angle box. Bound R by [L,U], and alpha_jk,beta_jk by outward intervals A_jk,B_jk on all of K. If U≤0, K contains no strict-D0 seed. Otherwise set Q=sqrt([max(0,L),U]). If for each sigma in {+1,−1} there is a pair j,k such that

    inf((A_jk+sigma B_jk Q)²)>U,                         (11)

then no physical completion with seed in K belongs to strict D0. The two witnesses may be different pairs. The same conclusion follows by applying (11) to the transpose.

**Proof.** Suppose a physical strict-D0 completion exists at a seed in K. It has one of the two side signs [A1]. Its true sqrt(R) belongs to Q. Its corresponding mean in (8) therefore lies in the interval used for that sign in (11), contradicting (9) and M=R≤U. This reasoning only evaluates the square root on the strict physical subset. It makes no claim that the negative-R portion has a side or a completion. Q need not parameterize every possible mean; an overenclosure is sufficient. ∎

A failure of (11) is inconclusive; it is not evidence of a D0 completion. This is a global explicit necessary seed relation, with a whole-box decision procedure, rather than a claim that the six F6 classes have been globally excluded.

## 5. Certified evaluation on rational seed boxes

The public function is `predicate(centers, radii, transpose=False)`. Centers and radii are finite rationals in radians, represented by integers, `Fraction`, or exact binary floats. There are four independently specified positive seed radii. NaN, infinity, invalid dimensions and nonpositive radii are rejected.

For a real coefficient function F equal to R, alpha_jk or beta_jk, the code uses

    F(theta0+h) in F(theta0) + [−e,e],
    e=Σ_i radius_i |d_i F(theta0)|
      +(1/2)Σ_ij radius_i radius_j sup_K |d_ij F|.        (12)

First and second derivatives are obtained by forward derivative jets with outward rectangular complex intervals. Products, conjugates and inverses use their exact derivative rules. If a P denominator cannot be separated from zero on the full interval evaluation, the test returns unresolved. Equation (12) follows by the one-dimensional second-order integral remainder along the segment theta0+t h; it needs no finite-difference approximation or guessed Hessian constant.

All arithmetic acceptance uses `mpmath.iv` at 35 decimal digits, backed by directed arbitrary-precision `libmp` interval operations. Floats only serialize outward endpoints, propose binary sample centers, and record timings. The endpoint conversion advances one binary64 ULP in the outward direction and checks the resulting inclusion with intervals. The code explicitly implements complex conjugation rather than using the broken `iv.mpc.conjugate()` method in the installed mpmath 1.3.0.

The arithmetic backend is part of the software trust base, just as IntervalArithmetic is for the production certificate. The verifier includes independent rational Taylor checks, non-monotone trigonometric interval checks, exact symbolic identities, six negative controls containing known physical D0 points, and a full optional interval replay. It is not advertised as a formal verification of every line of the interval library.

## 6. Reproducible pilot and scope of its cost estimate

The archive list has 338,054 records. Select the 1-based lines

    1+floor(k*(338054−1)/999),       k=0,...,999.

The verifier checks all selected records against the hash-pinned gzip, including their exact binary64 centers. This is a deterministic, source-order-stratified sample, not an independent random sample or a proof of a population proportion. For each level-l record, take the outward binary64 upper enclosure of

    pi/2^l + 2^(−40)

as each **seed-angle** half-width. Cached R bounds and nearest-F6 classifications in the source are metadata only; they do not authorize any acceptance.

The horizontal test runs first; a failure is followed by the transposed test. Results:

| Nearest class metadata | Sample boxes | Certified outside strict D0 |
|---|---:|---:|
| 0,0,2,4 | 88 | 88 |
| 0,2,3,0 | 318 | 128 |
| 0,2,3,2 | 49 | 39 |
| 1,2,2,4 | 207 | 10 |
| 2,4,4,2 | 321 | 229 |
| 4,5,0,3 | 17 | 17 |
| **Total** | **1,000** | **511** |

Of the 511 acceptances, 471 use the original orientation and 40 the transpose. All 511 use (11), not merely a nonpositive R cap. **172 accepted boxes have a recomputed R enclosure crossing zero.** The main pilot consumed 439.810 summed worker CPU seconds, 0.439810 CPU seconds per attempted box, and 111.301 wall seconds with four workers. The independent full replay has its own receipt and is not included in that pilot timing.

At the measured throughput, scanning all 338,054 records would cost about 41.3 CPU hours, excluding initialization/I/O and allowing for hardware and data-distribution differences. This is a scan-cost extrapolation, not a promise of the same 51.1% yield. The sample is drawn from the older representative list, not the numerical agent's final refinement output. No full-list scan or cluster run was launched.

## 7. What remains

489 sample boxes remain unresolved by this predicate, including most of the active class and substantial stationary subregions. There is no claim that they lie in D0, nor that this test will close them after subdivision. A stronger symmetric witness could retain the second moment of f rather than its signed mean, but no success is claimed for that unimplemented extension here. This module supplies a useful new strict-D0 prune, not a quartet certificate or a completed no-four-MUB proof.
