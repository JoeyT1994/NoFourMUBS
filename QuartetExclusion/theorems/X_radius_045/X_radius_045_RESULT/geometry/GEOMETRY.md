# Sharper actual-Hadamard geometry near the order-six Fourier matrix

## 1. Certified conclusions and scope

All phases are in radians. Let `F_ji=exp(2*pi*i*ji/6)`, and suppose an actual complex Hadamard matrix has the form

`H=F o exp(i delta)`, `delta horizontal`, `||delta||_F<=rho`.

Horizontal means zero row sums and zero column sums. Write `delta=eta+nu` as the orthogonal decomposition into the Fourier tangent kernel T and its horizontal normal complement N.

The certificates below use only the explicit Fourier matrix and necessary equations for an actual Hadamard. They do not assume that any local germ is a manifold, use the U/W chart, or appeal to an atlas. The comparison argument estimates an actual solution against an explicit polynomial; it does not assert existence of Hadamards with arbitrary tangent parameter.

**PROVED, with exact finite tensor checks CERTIFIED.** There are explicit homogeneous normal polynomials Q of degree two and P3 of degree three such that the following convenient roundups hold:

| rho | ||nu|| upper | Every row/column norm upper | ||nu-Q(eta)|| upper | ||nu-Q(eta)-P3(eta)|| upper |
|---:|---:|---:|---:|---:|
| 0.20 | 0.011634 | 0.123501 | 0.000549 | 0.000077 |
| 0.25 | 0.018271 | 0.156871 | 0.001126 | 0.000205 |
| 0.30 | 0.026504 | 0.191269 | 0.002066 | 0.000475 |
| 0.35 | 0.036464 | 0.226757 | 0.003538 | 0.001011 |
| 0.40 | 0.048390 | 0.263461 | 0.005820 | 0.002048 |
| 0.45 | 0.062757 | 0.301645 | 0.009424 | 0.004054 |
| 0.50 | 0.080594 | 0.341889 | 0.015416 | 0.008051 |
| 0.55 | 0.104570 | 0.385693 | 0.026501 | 0.016697 |

In particular the simpler exact rational constants `rho=1/2`, `n=21/250=.084`, `r=43/125=.344`, and `epsilon_Q=93/5000=.0186` are safe for the proposed half-radius cover.

These are geometric enclosures. A no-quartet theorem at any enlarged radius still requires the separate exhaustive ray cover and graph obstruction to pass.

## 2. Fourier normal equations and their symmetry

Let O(delta) be the real and imaginary parts of the 15 upper-triangular row inner products of `F o exp(i delta)`. Its derivative at zero is J. The exact verifier constructs `A=2 J^T J` from the integers `2cos(k*pi/3)=(2,1,-1,-2,-1,1)`.

The four natural tangent generators V_a are the horizontal projections of

`V_ji=1_(j odd) f(i mod3)+1_(i odd) g(j mod3)`,

with `f=(0,z0,z1)`, `g=(0,z2,z3)`. Their Gram matrix is

`G=diag([[2,-1],[-1,2]], [[2,-1],[-1,2]])`.

Thus `eta=sum_a z_a V_a` and `||eta||²=z^T G z`. Let `P_T=V G^-1 V^T`, let P_H be the horizontal projector, and let `P_N=P_H-P_T`.

The code verifies the spectral identity

`A(A-6I)(A-18I)(A-24I)=0`,

and constructs `(J^T J)^+` as an exact rational polynomial in A. It checks directly

`(J^T J)^+ (A/2)=P_N`, and `(J^T J)^+ P_N=(J^T J)^+`.

Consequently `J^+= (J^T J)^+ J^T` is the normal pseudoinverse and `||J^+||<=1/sqrt(3)`.

Let S denote transposition of a real phase matrix. Both `P_T` and `P_N` commute with S; this is checked exactly. Define the symmetrized normal residual

`R(delta)=(J^+ O(delta)+S J^+ O(S delta))/2`,

and the normal map

`Fcal(delta)=P_N delta-R(delta)`.

Its derivative at zero is zero. An actual Hadamard satisfies both row and column orthogonality, so `R(delta)=0` and

`nu=Fcal(eta+nu)`.

The second term is legitimate because `(F o exp(i delta))^T=F o exp(i S delta)` and F is symmetric. It is merely the column equation written as a row equation. Transposition is an isometry and preserves the tangent and normal spaces.

## 3. Global derivative bounds and sharper column geometry

For centered real six-vectors a,

`sum_(j<k)(a_j-a_k)^4=6sum_j a_j^4+3||a||^4<=8||a||^4`.

Also `|a_j-a_k|<=sqrt(2)||a||`. For m horizontal inputs, apply the fourth-power estimate to the first two row-difference factors and the pointwise estimate to each remaining factor. Cauchy-Schwarz over row pairs and Holder over columns give the global estimate

`||D^m O(delta)[u1,...,um]|| <= 2^((m+1)/2) product_l ||ul||`, for `m>=2`.

After applying either normal pseudoinverse and averaging, the corresponding bound for `D^m Fcal` is

`K_m=2^((m+1)/2)/sqrt(3)`.

In particular Taylor's formula gives the preliminary necessary enclosure

`||nu||<=sqrt(2/3) rho²`.

### Orthogonal column cap

For any column, its covariance on the full horizontal space is `(5/6)P`, where `P=I-11^T/6` acts on the six row entries. Its tangent covariance has spectrum contained in `{0,1/6,1/3}`. Both identities are checked exactly.

Suppose `||delta||<=rho`, `||nu||<=n`, and `n²<=3rho²/5`. Then every column, and by transposition every row, satisfies

`r(rho,n)=sqrt((rho²-n²)/3)+n/sqrt(2)`.

To see this, test the column against a unit centered vector. If its tangent functional has squared norm q, then `0<=q<=1/3` and its normal functional has squared norm `5/6-q`. The maximum is bounded by

`max_(0<=s<=n, 0<=q<=1/3) sqrt(q)*sqrt(rho²-s²)+sqrt(5/6-q)*s`.

Under the stated condition the expression increases up to `s=n` and `q=1/3`, giving the formula. It is monotone in n over this range. This improves the earlier separate bound `rho/sqrt(3)+n`.

### Pair differences and the cover frame

For two entries in one column, the full horizontal functional norm squared is `5/3`. The tangent squared norms take exactly the values `{1/6,2/9,7/18}`. Therefore, when `n²<=23rho²/30`, all within-row or within-column phase differences are bounded by

`sqrt(7/18)*sqrt(rho²-n²)+sqrt(23/18)*n`.

The same maximization proves the assertion. The frame used by the cover,

`V0/sqrt(2), (V0+2V1)/sqrt(6), V2/sqrt(2), (V2+2V3)/sqrt(6)`,

is orthonormal: the unscaled four vectors have exact Gram matrix `diag(2,6,2,6)`. `verify_frame_bridge.py` verifies this and all transpose and pair-difference identities.

## 4. Exact quadratic and cubic normal predictors

Write the Taylor expansion of the symmetrized normal map as

`Fcal(delta)=Q(delta,delta)+C(delta,delta,delta)+...`,

where `Q=-R''(0)/2` and `C=-R'''(0)/6`. The code regenerates these tensors directly from the Fourier equations and the exact pseudoinverse.

Split the tangent space orthogonally as `eta=a+b`, where a uses V0,V1 and b uses V2,V3. The exact polynomial identities are

`||Q(eta,eta)||²=(1/3)||a||²||b||²`,

`||Q(eta,eta)||<=||eta||²/(2sqrt(3))`.

The row and column definitions of Q agree on T times T. On T times N, averaging improves the estimate:

`||Q(eta,nu)||²<=(41/768)||eta||²||nu||²`.

For this bound, the code contracts the exact tensor over output and orthonormal tangent indices. Its rational normal-input Gram matrix has spectrum contained in

`{0,1/216,1/96,25/864,41/768}`.

The claimed spectral containment is checked by a matrix annihilating polynomial. The Gram matrix is symmetric and positive semidefinite by construction. Its bound controls the Frobenius norm, hence the operator norm, of the tangent-to-output map for each fixed normal input.

On N times N, a second exact flattened tensor calculation gives:

`||Q(nu,nu')||<=sqrt(19/54)||nu||||nu'||<.594||nu||||nu'||`.

`certify_normal_normal.py` verifies the rational input Gram spectrum is contained in `{0,17/64,19/54,205/3456,293/3456,473/3456}`. This improves the quadratic NN term only. The global Hessian-derived quadratic constant remains sqrt(2/3), rounded upward as .817, for the initial normal enclosure and generic Taylor tails.

Define the cubic predictor

`P3(eta)=2Q(eta,Q(eta,eta))+C(eta,eta,eta)`.

The exact coefficient calculations verify two further polynomial identities:

`<Q(eta,eta),P3(eta)>=0`,

`||P3(eta)||²=(1/72)||a||²||b||²||eta||²`.

Consequently, for `||eta||<=rho`,

`p2=rho²/sqrt(12)`,

`p3=rho³/sqrt(288)`,

`p=sqrt(rho⁴/12+rho⁶/288)`

bound respectively Q, P3, and their sum. The candidate phase matrix

`delta0=eta+Q(eta,eta)+P3(eta)`

therefore has norm at most `R0=sqrt(rho²+p²)` and each row or column has norm at most

`r0=rho/sqrt(3)+p/sqrt(2)`.

The condition needed for the latter column-cap formula is `p²<=3rho²/2`, checked in the scalar verifier.

All predictor values are normal because they are obtained by applying the normal pseudoinverse and its transposed counterpart. The orthogonality to eta used in R0 therefore holds exactly.

## 5. Exact residual through degree six

Put `nu0=Q(eta,eta)+P3(eta)`. The residual to estimate is

`D(eta)=Fcal(eta+nu0)-nu0`.

Its degrees two and three vanish by the predictor definition. `predictor_residual.py` expands the Fourier exponentials with the degree-one, degree-two, and degree-three phase polynomial, and regenerates the residual homogeneous polynomials D4,D5,D6 exactly. All even-degree coefficients are sqrt(3) times rational; all odd-degree coefficients are rational.

The certified tensor bounds are

| Homogeneous term | Squared operator upper bound |
|---|---:|
| D4 | 1/648 |
| D5 | 173/8398080 |
| D6 | 4/98415 |

These are bounds for the associated symmetric multilinear tensors, and hence also for their diagonal evaluations. Here is the exact verification of the norm conversion.

First replace the natural coordinates by `z0=w0+w1`, `z1=w0-w1`, `z2=w2+w3`, `z3=w2-w3`. The orthonormal input coordinates are sqrt(2) times the even-index w coordinates and sqrt(6) times the odd-index ones. Equivalently, each occurrence of w is replaced by the orthonormal variable divided by that square root when transforming polynomial coefficients. For a degree-k monomial alpha, the symmetric tensor entries are its polynomial coefficient divided by the multinomial coefficient `k!/product(alpha!)`. Thus the output Gram is the sum of the coefficient outer products divided by that multinomial coefficient and by `2^(alpha0+alpha2)6^(alpha1+alpha3)`, with an extra factor 3 for an even-degree polynomial. For degree six its maximum absolute row sum bounds its spectral norm. For degrees four and five, the verifier improves this by checking exact Gram annihilating polynomials: `C4(1944C4-I)(648C4-I)=0` and `C5(8398080C5-173I)=0`. The matrices are symmetric and positive semidefinite, so these identities give the bounds in the table. Every term of this calculation is rational.

### Remaining terms

Let `f_m=K_m/m!`. In the Taylor polynomial of Fcal through m=6, every term whose composed eta-degree is at least seven is bounded by the corresponding coefficient of the positive scalar polynomial

`sum_(m=2)^6 f_m (rho*t+p2*t²+p3*t³)^m`.

Retain and sum its coefficients of t-degrees at least seven; call the result Ecomp. This uses the global multilinear derivative bounds from Section 3. It safely ignores cancellations in those higher degrees.

The remainder of the order-six Taylor expansion of Fcal itself, evaluated at delta0, is at most

`E7=K_7 R0^7/7!`, with `K_7=16/sqrt(3)`.

It follows that

`||D(eta)|| <= d(rho)`

where

`d(rho)=sqrt(1/648)rho⁴+sqrt(173/8398080)rho⁵+sqrt(4/98415)rho⁶+Ecomp+E7`.

The scalar verifier evaluates this formula with outward rational square-root bounds. For example it gives `d(.5)<=.003810123764`.

No numerical tensor or sampled direction is used in this bound. The finite polynomial expansion and Gram matrices are regenerated during replay.

## 6. Comparison with an actual solution

This step needs an actual Hadamard, rather than a local-existence or continuation theorem. Suppose a safe preliminary normal bound n is available, and put

`nbar=max(n,p)`, `rbar=max(r(rho,n),r0)`.

The straight segment between the actual phase matrix `eta+nu` and the polynomial candidate `eta+nu0` has normal norm at most nbar, total norm at most R0, and every row/column norm at most rbar. The total bound follows from convexity and the endpoint bounds `rho<=R0` and R0; it does not replace R0 by `sqrt(rho²+n²)`.

For a normal direction w, the quadratic derivative satisfies

`||2Q(eta,w)||<=sqrt(41/192)rho||w||`,

`||2Q(nu,w)||<=2sqrt(19/54)nbar||w||`.

For the remaining derivative terms, the global row-difference argument can be sharpened for inputs delta,delta,w:

`||D³ O[delta,delta,w]||<=4 rbar R0 ||w||`.

Indeed each column contributes at most `4||delta_column||²||w_column||`; sum by Cauchy-Schwarz and use `sum||delta_column||⁴<=rbar² R0²`. The same estimate holds for the transposed equation because the row cap also holds. Taylor's integral remainder for the derivative therefore contributes at most `(2/sqrt(3))rbar R0`.

A Lipschitz constant for Fcal along the segment, in normal directions, is consequently

`L=sqrt(41/192)rho+2sqrt(19/54)nbar+(2/sqrt(3))rbar R0`.

The replay uses the safe rational coefficient roundups `.463` and `.594` in the first two terms, and an outward rational square-root bound in the last.

Since the actual solution satisfies `nu=Fcal(eta+nu)`,

`||nu-nu0|| <= L||nu-nu0||+d(rho)`.

Whenever L<1 this proves

`epsilon_C=d(rho)/(1-L)`,

`||nu||<=p+epsilon_C`,

`||nu-Q(eta,eta)||<=p3+epsilon_C`.

Replace n by the minimum of its old value and the new upper bound and repeat. Every finite iteration is a valid implication for the same actual solution. No convergence assumption, fixed-point existence theorem, or choice of a small branch is needed.

### Preliminary bounds used to start the iteration

The first enclosure `n<=.817rho²` follows directly from the global Hessian. A stronger intermediate recurrence uses the exact TT and TN quadratic estimates and a cubic remainder bounded columnwise:

`n_new=min(n, .289rho²+.463rho*n+(.594-.289)n²+.385*r(rho,n)*rho²)`.

For the pure tangent term use `||eta||²<=rho²-||nu||²`; the NN term combines with its negative quadratic contribution. All coefficients in this recurrence are safe rational upper bounds; its right-hand side is monotone in n in the column-cap range. This supplies a certified starting tube for the final comparison. `normal_bounds_symmetric.py` and `cubic_envelopes.py` record every finite update.

At rho=.5, the final comparison gives `n<=.080593844074`, `r<=.341888806012`, `epsilon_C<=.008050155130`, and `epsilon_Q<=.015415850768`.

## 7. Interface for a quadratic support test

`quadratic_predictor.json` supplies the exact physical coefficients in row-major order. Its convention is

`eta=sum_a z_a V_a`,

`Q(eta,eta)=sqrt(3) sum_ab z_a z_b Q_div_sqrt3[a][b]`.

The signs are fixed by `nu=Q(eta,eta)+error`, not its negative. The Gram matrix and natural basis V are included. The cubic predictor is likewise supplied by its homogeneous natural-coordinate coefficients in `cubic_predictor.json`.

The range of Q on tangent inputs is a four-dimensional normal subspace. An integer basis Z for it is supplied, together with its exact inverse Gram matrix. This supports the optional bound

`|<C,nu>| <= (rho²/sqrt(12))||P_range(Q) C||+epsilon_Q||P_N C||`.

A stronger cover implementation can substitute the exact quadratic form `<C,Q(eta,eta)>` into its tangent quadratic expression and retain only `epsilon_Q||P_N C||` as the normal linear uncertainty. The geometry certificate supplies that error uniformly for every actual Hadamard in the whole ball.

## 8. Optional extension of the geometry to rho=3/5

At rho=.6 the initial normal tube is too large for the direct comparison estimate to improve it. A second, still germ-free argument supplies a smaller tube. This concerns only the projected normal map, and does not assert that arbitrary projected roots are Hadamards.

For each tangent eta with norm at most rho, consider the closed normal ball of radius `h=.07` about `nu0=Q(eta)+P3(eta)`. Put `nloc=p+h`, `Rloc=sqrt(rho²+nloc²)`, and `rloc=rho/sqrt(3)+nloc/sqrt(2)`. The same derivative estimate gives

`Lloc=.463rho+1.188nloc+(2/sqrt(3))rloc Rloc`.

The exact replay checks `Lloc<.824449<1` and `d(rho)+Lloc*h<h`. Thus the map `nu -> Fcal(eta+nu)` maps this complete closed ball strictly into itself and is a contraction. Banach's theorem provides a projected normal fixed point nu* there.

Now compare nu* with any actual Hadamard increment in the radius-.6 ball. The preliminary actual normal cap is less than .271238. On the segment between the two fixed points use normal cap `max(n,nloc)`, total cap Rloc, and row/column cap `max(r(rho,n),rloc)`. The exact Lipschitz estimate is less than .961394, hence strictly below one. The two fixed points must agree. This identifies the actual normal component with the fixed point in the small ball without using any local germ theorem.

Starting the direct comparison iteration from this improved bound gives

`||nu||<=.146285255460`,

`row/column norms<=.439395952076`,

`||nu-Q-P3||<=.041585685260`,

`||nu-Q||<=.054313607322`.

These radius-.6 geometric bounds are checked by `certify_local_predictor_ball.py`. No no-quartet claim at radius .6 follows without the separate vector-cover and graph stages.

## 9. Replay and status

The portable certificate directory contains only standard-library Python and this proof. Run

`python3 -I verify_all.py`

from that directory, or supply the driver's absolute path. It recomputes the Fourier pseudoinverse, frame and transpose identities, quadratic and cubic polynomial identities, mixed tensor Gram, residual polynomial tensors, scalar tail bounds, and all comparison iterations. The component JSON outputs are receipts and machine-readable interfaces, not trusted mathematical inputs.

**CERTIFIED:** all finite matrix identities, polynomial identities, norm comparisons, rational enclosures, and scalar iteration results.

**PROVED:** the global derivative estimates, column and pair maximizations, Taylor-tail assembly, and actual-solution comparison.

**Not asserted by this component:** an enlarged no-quartet region, existence of all projected normal-graph points as Hadamards, a classification of nearby Hadamards, or a Lean formalization.
