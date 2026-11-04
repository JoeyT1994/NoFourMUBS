# Independent audit of the collected cubic phase filter

**Verdict: the mathematical inequality and the implementation in `work/x2_probe/cubic_filter.py` are sound. No sign, normalization, tensor-transformation, or remainder-factor error was found.** The file is a numerical discovery implementation; exact replay of its eventual witnesses is a separate requirement.

The audit covers the file supplied on 25 October 2026, including `pure3`, `high3`, `mixed3`, `pure4`, and the Q/P3 transformations. The correct necessary condition is the displayed support inequality for every candidate ray and actual Hadamard satisfying the separately certified geometric bounds. No classification of Fourier rays is assumed.

## 1. Scalar phase expansion fixes the signs and factors

For a column i put

`q_ij=exp(i u_j) conj(F_ji)/sqrt(6)`, `Z_ijk=q_ij conj(q_ik)`.

Thus `|Z_ijk|=1/6`. For centered vector phase x and horizontal Hadamard phase delta, the normalized residual is

`f_i(x,delta)=(|sum_j q_ij exp(i(x_j-delta_ji))|²-1)/2`

`=sum_(j<k) Re(Z_ijk exp(i[(x_j-x_k)-(delta_ji-delta_ki)]))`.

The latter identity follows because the six diagonal squared moduli sum to one. It makes the normalization unambiguous.

Let `c_i=f_i(0,0)`, `J_ij=-Im(conj(S_i)q_ij)`, with `S_i=sum_j q_ij`. If `H_i` is the Hessian in the column phase variable, then

`H_i=Re(q_i q_i*)-diag(Re(conj(S_i) q_i))`

`=-sum_(j<k) Re(Z_ijk)(e_j-e_k)(e_j-e_k)^T`.

The weighted matrix M has physical entries `M_ji=y_i J_ij`, and the weighted block Hessian H has column blocks `y_i H_i`. In particular the pure-delta linear term is **minus** `<M,delta>`.

Write `delta=eta+nu`, and use the actual-Hadamard predictors

`nu=Q(eta,eta)+P3(eta)+e`, `||e||<=epsilon_C`,

`||nu-Q(eta,eta)||<=epsilon_Q`.

The collected pure-tangent quadratic term is

`(1/2) eta^T H eta-<M,Q(eta,eta)>`.

Therefore its four-dimensional matrix is precisely `HTT-2 M_Q`, as implemented.

The collected cubic is

`eta^T H Q(eta,eta)-<M,P3(eta)>`

`-(1/6) sum_i sum_(j<k) y_i Im(Z_ijk) (eta_ji-eta_ki)^3`.

The last sign comes from substituting minus delta into the cubic exponential term. It agrees with the code's `Ceff=TQ-MP-HP/6`.

## 2. Tensor conversions and symmetrization

The geometry coefficients are polynomials in the natural tangent coordinates z, with `eta=Vraw z`. The code solves `Vraw R=T` and hence uses `z=R theta` for its orthonormal tangent coordinates theta. Applying R to each tensor input is the correct change of frame.

For a quadratic polynomial coefficient with two distinct indices, the code puts half in each symmetric tensor slot. For a cubic monomial it divides its coefficient by the number of distinct permutations of the index multiset. Those assignments reproduce the polynomial exactly on a diagonal input; no extra factorial is required.

The Q coefficients in the JSON are divided by sqrt(3), and the code restores that factor once. The P3 coefficients are already rational physical coefficients and require no sqrt(3) factor. The row-major physical reshaping is consistent with the geometry certificate and the Fourier frame.

The tensor `TQ[a,b,c]=<H T_a,Q(T_b,T_c)>` is symmetric in its last two inputs. Its full symmetrization is therefore the average of the three possible choices of the first input. The implemented average of `TQ`, its first/second swap, and its first/third swap is correct. Its diagonal polynomial is exactly `eta^T H Q(eta,eta)`.

The existing Frobenius bound `rho³ ||Ceff||_F` is valid. A safe optional tightening is to flatten Ceff as a 4-by-16 matrix: its operator norm also bounds the diagonal cubic. An exact implementation may use the square root of the maximum absolute row sum of the resulting 4-by-4 output Gram, taking the minimum with the Frobenius bound.

## 3. Quadratic terms outside the collected polynomial

The pure-delta quadratic cross term is `eta^T H nu`. After collecting `eta^T H Q`, its remainder is bounded by

`rho * epsilon_Q * ||P_N H T||`.

Thus the code correctly replaces the previous `rho*n*HTN` by `rho*epsilon_Q*HTN`. The computed Frobenius norm of this projected operator is a safe upper bound for its operator norm.

The remaining normal-normal term is at most `(1/2)n²||H||`. The block-Hessian bound used by the code is valid because the full Hessian is block diagonal in the physical columns; each block is real symmetric, so either its Frobenius norm or its maximum absolute row sum bounds its operator norm.

The pre-existing x-linear, xx, x-eta, and x-nu terms remain valid. Every column Hessian annihilates the constant vector, so centered x may be replaced by the original five-coordinate bin displacement for the box-support bounds. Projection identities for `HTN`, `HxN`, and the normal part of M are unchanged.

The remaining linear normal uncertainty is exactly `epsilon_C ||P_N M||`: both Q and P3 are normal, so e belongs to N.

## 4. Pure-delta cubic terms involving the normal component

For centered real six-vectors a,b,c, define the symmetric cubic form from one column by its coefficient `-(1/6)sum Im(Z) Delta a Delta b Delta c`. Its absolute value is at most

`(sqrt(3)/9)||a||||b||||c||`.

Indeed

`sum_(j<k)|Delta a|³ <=sqrt(sum Delta a² * sum Delta a⁴)`

`<=sqrt(6||a||² * 8||a||⁴)=4sqrt(3)||a||³`.

Holder's inequality supplies the mixed-input version. Multiplying by `|Z|/6=1/36` gives the claimed constant.

Let `alpha_i=||eta_column_i||`, `beta_i=||nu_column_i||`. The certified bounds give

`sum alpha_i²<=rho²`, `sum beta_i²<=n²`,

`alpha_i<=am=rho/sqrt(3)`, `beta_i<=bm=sqrt(5/6)n`.

The latter normal column bound follows from the full horizontal column covariance `(5/6)P` and N being a subspace of the horizontal space.

The difference between the pure-delta cubic at eta+nu and at eta is therefore bounded by

`(sqrt(3)/9) sum_i |y_i|(3 alpha_i² beta_i+3 alpha_i beta_i²+beta_i³)`.

Every alternative in the implemented minima is valid:

`sum |y| alpha² beta <= min(yinf*am*rho*n, y2*am²*n, y1*am²*bm)`,

`sum |y| alpha beta² <= min(yinf*am*n², y2*bm²*rho, y1*am*bm²)`,

`sum |y| beta³ <= min(yinf*bm*n², y2*bm²*n, y1*bm³)`.

Here `y1=sum|y_i|`, `y2=||y||_2`, and `yinf=max|y_i|`. Cauchy-Schwarz and the stated component caps prove each line. Consequently `high3=(sqrt(3)/9)(3*s1+3*s2+s3)` is correct.

## 5. Mixed x remainder

Define the complex exponential third remainder

`R3(t)=exp(i t)-1-i t+t²/2`.

Its derivative satisfies `|R3'(t)|<=t²/2`. Integrating from phi to phi+theta gives the global inequality

`|R3(phi+theta)-R3(phi)|`

`<= (|theta|³+3 theta² |phi|+3 |theta| phi²)/6`.

Apply this with the row-pair differences of x and minus delta. It is exactly the remainder left after retaining all total-degree-at-most-two terms and separating the entire pure-delta function. There is therefore no missing mixed fourth-order term; the bound includes every higher mixed order.

The centered mixed Holder bound from Section 4, followed by the weighted Frobenius and column caps, yields

`mixed3=(sqrt(3)/9)[ y1 X³`

`+3 X² min(y2*rho,y1*r)`

`+3 X min(yinf*rho²,y1*r²) ]`.

This agrees with the implementation. The estimate is valid for all real phases, not merely phases below one radian.

## 6. Pure-delta fourth remainder

After retaining the pure-delta cubic, the complex exponential remainder has magnitude at most `|Delta delta|⁴/24`. Since each pair coefficient has magnitude 1/6 and

`sum_(j<k)(Delta delta)^4<=8||delta_column||⁴`,

the column contribution is at most `||delta_column||⁴/18`. Thus

`pure4 <= min(yinf*r²*rho²,y1*r⁴)/18`.

The code's factor 1/18 and both alternatives are correct.

## 7. Safe geometric constants and diagnostic check

The current exact geometry replay supplies the following useful roundups:

| rho | n | r | epsilon_Q | epsilon_C |
|---:|---:|---:|---:|---:|
| .4 | .0484 | .264 | .00582 | .00205 |
| .45 | .0628 | .3017 | .009424 | .004054 |
| .5 | .081 | .342 | .0155 | .0081 |

Their sharper rational values are recorded in `work/x2_geometry/certificate/geometry_summary.json`. In particular epsilon_C at .5 is at most .008050155130, so the requested .0081 is safe.

As an additional numerical diagnostic, 100 independently chosen phase/weight/tangent cases compare the transformed Q/P3 tensors and the collected quadratic/cubic coefficients against a separately expanded pairwise phase polynomial. All discrepancies are below 2e-12. The receipt `cubic_filter_diagnostic.json` is labeled NUMERICAL; it checks the implementation conventions and supplements the mathematical derivation above.

**Final status:** the cubic support inequality is proved under the certified geometric hypotheses, and the numerical implementation was audited without finding a defect. A certified bin exclusion using this filter must still replay every witness with rigorous arithmetic and bind its tensor coefficients and geometric constants to their exact certificates.

## 8. Sharper remainder constants, with an input-free exact checker

The optional improvements suggested during this audit are now independently checked by `cubic_filter_certificate/verify_cubic_filter_bridge.py`. It requires only the standard library, has no input data, and regenerates Q/P3 from the Fourier orthogonality equations before checking the exact transformed tensors.

For a centered real six-vector a, set `P=I-11^T/6`, `s=||a||²`, and `q=(a_i²)-s*1/6`. On centered v define `B(v)=P diag(v) P`. Direct exact matrix calculations give

`<B(v),B(w)>=(2/3)<v,w>`, `<P,B(v)>=0`, `||P||_F²=5`.

Project `aa^T` onto the orthogonal sum of the line spanned by P and the space of B(v). Its projected squared norm is

`s²/5+(3/2)||q||²=(3/2)sum a_i⁴-s²/20`.

It cannot exceed `||aa^T||_F²=s²`. Consequently

`sum a_i⁴<=(7/10)||a||⁴`,

and the pair fourth-moment identity sharpens to

`sum_(j<k)(a_j-a_k)^4<=(36/5)||a||⁴`.

This yields the stronger cubic mixed coefficient `1/sqrt(30)` and pure fourth-remainder coefficient `1/20`. They may replace `sqrt(3)/9` and `1/18` in Sections 4–6. The finite Gram identities and scalar constant arithmetic are included in the standalone checker; the projection argument supplies the universal inequality.

The checker outputs exact QT/PT tensors in the field `Q(sqrt(2),sqrt(3))` and independently compares polynomial substitution with the tensor-input transformation rule. Its run passed in less than one second. The original numerical tensor transformations also passed the separately expanded pair-polynomial diagnostic.

A subsequent read-only audit of `work/x2_cover/rho_04_cubic/verify_cover.py` found its code17 branch consistent with the inequality, including the sparse QBLOCK/PBLOCK construction, row-difference DPBLOCK, cubic coefficient symmetrization, multiplicity-weighted Frobenius norm, flattened Gram bound, and sharper remainder constants. Its canonical natural tensors were compared exactly with the input-free regeneration. All 3,024 entries of its T/QT/PT interval tensors were independently verified to enclose the exact algebraic coefficients using rational square-root enclosures. Receipt: `cubic_filter_certificate/code17_bridge_audit.json`.

## 9. Signed trust-region support for code18

Let `c=y dot c_midpoint`, `b=T^T M`, and `A=HTT-2M_Q`. The weighted residual equation has tangent contribution `-b dot eta+(1/2)eta^T A eta`. After bounding all other terms in absolute value, feasibility therefore implies

`c<=max_(||eta||<=rho)(b dot eta-(1/2)eta^T A eta)+E`.

For any real `lambda>=0` with `P=A+2lambda I` positive definite, completing the square gives

`b dot eta-(1/2)eta^T A eta`

`=lambda||eta||²+(1/2)b^T P^-1 b`

`-(1/2)(eta-P^-1 b)^T P(eta-P^-1 b)`

`<=lambda rho²+(1/2)b^T P^-1 b`.

Every such lambda is a valid support witness. Its numerical optimization is only discovery. A stored nonnegative rational lambda is accepted rigorously by checking positive interval LDL pivots for P, solving `Pz=b` by directed interval arithmetic, and using an upper enclosure of `(1/2)b dot z+lambda rho²`.

**Directional-sign requirement.** The rejection must use the signed lower bound for c. Alternatively, the checker may use `abs(c)` only after proving `c>=0` and constructing A,b from that same oriented y. The old absolute-value support was symmetric; this signed trust-region replacement is not. The numerical script orients y before constructing all coefficients and is therefore consistent. An exact checker should retain the signed left-hand side to avoid an unnecessary sign premise.

The numerical eigenbasis transform and multiplier bracketing in `cubic_tr_filter.py` are consistent with this proof. This addition needs no existence or optimality theorem for the trust-region problem; positive definiteness and the displayed identity suffice.

## 10. Exact code18 implementation audit

The independent read-only audit of `work/x2_cover/rho_045_tr/verify_cover.py` found the new implementation consistent with Section 9. It uses the signed interval `signed_lhs`, exact nonnegative rational multipliers with denominator `2^20`, and the same oriented weight vector for all of its coefficients. It omits precisely the two earlier tangent support terms, `rho*||b||` and `rho²*||A||/2`, replacing their sum with the signed trust-region upper bound. All other cubic and error terms remain present.

The production factorization uses `P=L D L^T`. Every computed pivot interval must have strictly positive lower endpoint. Directed interval arithmetic therefore encloses the exact factorization, proves positive definiteness of the symmetric matrix, and encloses `w=L^-1 b`. The return value uses

`lambda*rho²+(1/2)sum_k w_k²/D_k`.

The latter sum equals `(1/2)b^T P^-1 b`; it avoids the dependency and rounding costs of an explicit inverse. A failed or inconclusive pivot causes the witness to fail, never to be accepted.

The code18 record contains six signed integer weights and one nonnegative integer multiplier. The replay checks record widths, complete byte consumption, every submitted worker result, and all children of every retained bin. The final assertion requires no remaining leaf. The manifest binds the declared radius and all four geometry constants to their expected rational values. The full cover replay remains a separate obligation from this implementation audit.

`cubic_filter_certificate/audit_cover_bridge.py` performs the exact bridge audit against a supplied production checker. It checked all 3,024 T/QT/PT entries against the fresh algebraic regeneration, then compared the actual interval-LDL return value with independent rational Gauss-Jordan solutions on 128 positive-definite shifted matrices. These cases include zero multipliers and indefinite unshifted Hessians. Singular pivots, negative pivots, and a negative multiplier were also confirmed to be rejected. Receipt: `cubic_filter_certificate/code18_bridge_audit.json`.

**Code18 audit verdict: PASS.** This verdict covers the mathematical inequality and implementation; a no-quartet theorem additionally requires the complete exact vector-cover replay and the finite graph/polar comparison certificate.
