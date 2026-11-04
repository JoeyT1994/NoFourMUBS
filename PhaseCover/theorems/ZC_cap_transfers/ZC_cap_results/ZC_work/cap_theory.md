# Cap-transfer theorem and a lossless quadratic certificate

**PROVED**, conditional on the same local matched-completion germ and successfully checked whole-ball normal form as `context/Z_THEOREM.md`. These arguments concern transfer geometry only. They use no MUB atlas and no Stage C result. No finite sample has been replayed in this note.

## 1. Rational cap data and a useful anchor

**PROVED.** Normalize source coordinates by `w=r x`. Store a cap using a nonzero rational vector `n` and rational scalar `h`:

\[
C(n,h)=\{x\in\mathbb R^4:\|x\|=1,\ n^Tx\ge h\}.
\]

Its conventional axis and cosine are `e=n/||n||` and `t=h/||n||`; neither need be stored. For `0<=h<||n||`, take

\[
c=r\frac{h}{n^Tn}n,\qquad
\Delta^2=r^2\left(1-\frac{h^2}{n^Tn}\right).
\tag{1}
\]

Both `c` and `Delta^2` are rational for rational input data. Every cap point satisfies `||rx-c||^2<=Delta^2`, because

\[
\|rx-c\|^2=r^2+\|c\|^2-2r\,c^Tx
\le r^2\left(1-\frac{h^2}{n^Tn}\right).
\]

Also `||c||<=r`, so all straight Taylor segments from `c` to a cap point remain in the original source ball. This is the smallest enclosing ball of the cap when `h>=0`. The boundary anchor `c=re` instead gives `Delta^2=2r^2(1-t)`, which is larger. For `h<=0`, `c=0, Delta=r` is a safe choice. Caps with `h=||n||` are singletons and should be checked directly; with `h>||n||` they are empty.

## 2. A six-number, lossless certificate for any quadratic on a cap

**PROVED.** Let

\[
f(x)=x^TQx+2b^Tx+d,\qquad Q=Q^T.
\]

Supply real numbers `lambda, a0` and a vector `a in R^4`. Verify

\[
a_0\ge\|a\|,
\qquad
S=\begin{pmatrix}
Q-\operatorname{sym}(na^T)+\lambda I_4 &
b-\tfrac12(a_0n-ha)\\
\left(b-\tfrac12(a_0n-ha)\right)^T & d+h a_0-\lambda
\end{pmatrix}\succeq0,
\tag{2}
\]

where `sym(na^T)=(na^T+an^T)/2`. Then `f>=0` on `C(n,h)`. A positive definite `S` gives strict positivity. The identity proving this is

\[
f(x)=
\binom{x}{1}^TS\binom{x}{1}
 +(n^Tx-h)(a_0+a^Tx)
 +\lambda(1-\|x\|^2).
\tag{3}
\]

On the unit sphere, `a0+a^T x>=a0-||a||>=0`. The cap makes the other factor nonnegative. Thus a checker only needs a four-dimensional norm inequality and a five-by-five PSD test. There is no optimizer in the trusted checker. The six witness numbers can be frozen as exact rational or hexadecimal binary rationals.

**PROVED: losslessness for quadratics.** For `-||n||<h<||n||`, every quadratic strictly positive on the cap has a witness (2) with `S` positive definite and `a0>||a||`. Thus arbitrarily accurate rational proposals eventually admit interval replay. This exactness concerns the quadratic being checked; a quadratic majorant of a quartic target may still introduce geometric or remainder overestimation.

Here is a direct moment argument. Define

\[
\mathcal F=\left\{(m,X):
Y=\begin{pmatrix}1&m^T\\m&X\end{pmatrix}\succeq0,
\ \operatorname{tr}X=1,
\ \|Xn-hm\|\le n^Tm-h
\right\}.
\tag{4}
\]

This is exactly the convex hull of `(x,xx^T)` for cap points `x`. To prove it, write `u=n^Tm-h`, `v=Xn-hm`. At an extreme point with `u=0`, variance in the `n` direction vanishes; the remaining transverse sphere moments have rank one by a symmetric perturbation preserving their two affine constraints. If `u>0` and the cone inequality is strict, the same perturbation excludes rank at least two. In the remaining case put `z=v/u`. Then `||z||=1`, `n^Tz>=n^Tm>h`, and `(1,z)=Y(-h,n)/u` belongs to the range of `Y`. Subtracting a sufficiently small positive multiple of `(1,z)(1,z)^T` preserves PSD; after normalization it preserves (4), because both its cone coordinates are reduced by the same factor. Extremality therefore forces `Y=(1,z)(1,z)^T`.

The feasible moment set is compact, and its cone constraints have a strictly feasible point. For an explicit point, set `e=n/||n||`, `t=h/||n||`, choose `max(t,0)<s<1`, and choose

\[
0<\epsilon<\min\{1-s^2,(1-s)(s-t)\}.
\]

Then

\[
m=se,\quad
X=(s^2+\epsilon)ee^T+
\frac{1-s^2-\epsilon}{3}(I-ee^T)
\]

has `Y>0`, `tr X=1`, and strict cone inequality. Conic duality applied to minimizing `Q:X+2b^T m+d` yields exactly (2)-(3), with a free multiplier for `tr X=1`. If the minimum is `rho>0`, a dual certificate for `f-rho` becomes strictly PSD for `f` by adding `(rho/2) I_5` to `S` and adding `rho/2` to `lambda`. A sufficiently small increase in `a0` gives strict cone slack while retaining strict PSD. Rational approximation then preserves both strict tests.

The moment-hull construction is the sphere-face specialization of the one-cut trust-region SOC-RLT formulation. A primary reference is Burer and Anstreicher, *Second-Order-Cone Constraints for Extended Trust-Region Subproblems*, SIAM J. Optim. 23 (2013), 432-451, Theorem 1 and equation (2), [primary paper](https://optimization-online.org/wp-content/uploads/2011/03/2957.pdf). The direct cap proof above supplies the needed specialization.

### Why the ordinary two-scalar S-lemma is insufficient

**PROVED.** Restricting (2) to `a=0, a0=mu>=0` gives the familiar sufficient certificate

\[
\begin{pmatrix}Q+\lambda I&b-\mu n/2\\ *&d+\mu h-\lambda\end{pmatrix}\succeq0.
\tag{5}
\]

It is not lossless on a sphere cap. On `S^3 intersect {x1>=0}`, the true maximum of `q(x)=(x1-1/2)^2` is `1/4`. To certify `M-q>=0` by (5), the first diagonal entry forces `lambda>=1`, while the last forces `M>=lambda+1/4`; hence it cannot certify any `M<5/4`. In contrast, the exact factorization

\[
\tfrac14-(x_1-\tfrac12)^2=x_1(1-x_1)
\]

is certificate (3) with `a0=1, a=-e1, lambda=0, S=0`. Positive slack makes it strictly replayable. This example has an affine target output, so the failure is independent of the quartic-predictor issue.

**PROVED: an important exact subcase.** If an affine target has
`F^T F=gamma I`, then on the unit sphere

\[
\|d+Fx\|^2=\|d\|^2+\gamma+2(F^Td)^Tx.
\]

Its target-inclusion region is therefore a spherical cap (or a constant
condition when `F^T d=0`). The scalar-multiplier certificate is lossless
in this subcase: maximizing the remaining linear objective over the sphere
cap has the same value as maximizing it over the ball cut by the cap
halfspace, whose convex support dual is exact under `t<1`. The linear
minimum formula in Section 4 gives the value directly. This explains why
caps are a natural cell shape for transfers close to scaled isometries;
no approximate-isometry assumption is used in any finite replay.

## 3. Target inclusion: valid quadratic surrogates

**PROVED.** Let the target output be

\[
y(w)=A Q(w)+b_l,\qquad
Q(w)=Q_0+Uw+\tfrac12H_2[w,w]+Xz(w),
\]

and require `||y(w)||<r_l`. Write `v=w-c` and form

\[
a=A\left(Q_0+Uc+\tfrac12H_2[c,c]\right)+b_l,
\quad B=A(U+H_2[c,\cdot]),\quad H=AH_2.
\]

The predictor is `p(v)=a+Bv+H[v,v]/2`. This is a vector of quadratic polynomials. Its squared norm is generally **quartic**, not quadratic. No ordinary S-lemma should be applied directly to `r_l^2-||p(v)||^2` while calling it quadratic.

Let `alpha>=||H||` and let `E0>=||AXz||` throughout the original source ball. The reference implementation supplies `E0=||AX|| tau`; output-weighted `T0,A` may replace it only after its own inequalities are replayed.

### Mode A: affine target plus a norm remainder

**PROVED.** Put

\[
E=\tfrac12\alpha\Delta^2+E_0.
\]

Choose a rational `R>0` with `R+E<r_l`. Apply (2) to the genuine quadratic

\[
f(x)=R^2-\|a+B(rx-c)\|^2.
\tag{6}
\]

Acceptance proves `||y(w)||<=R+E<r_l` on the whole cap. In coefficients, set `d0=a-Bc`, `F=rB`; then

\[
Q=-F^TF,\qquad b=-F^Td_0,\qquad d=R^2-d_0^Td_0.
\]

One may instead take `R=r_l-E` as an interval expression and demand a strictly positive quadratic certificate, with `R>0`; strict positivity then supplies the missing strict target margin.

### Mode B: retain the quadratic curvature in squared distance

**PROVED.** Define the quadratic

\[
q_2(v)=\|a+Bv\|^2+a^T H[v,v].
\]

For `||v||<=Delta`, use

\[
K=\|a\|+\|B\|\Delta+\tfrac12\alpha\Delta^2,
\]

\[
D_2=\|B\|\alpha\Delta^3+\tfrac14\alpha^2\Delta^4
       +2K E_0+E_0^2.
\tag{7}
\]

Then `||y(w)||^2<=q2(v)+D2`. Indeed the omitted predictor terms are precisely the cubic `(Bv)^T H[v,v]` and quartic `||H[v,v]||^2/4`; the normal correction contributes at most `2K E0+E0^2`. Apply (2) to

\[
f(x)=r_l^2-D_2-q_2(rx-c).
\tag{8}
\]

Strict acceptance proves the target. Compared with Mode A this retains the signed second-order curvature of squared distance and has a third-order predictor remainder. It need not always be sharper; either independently verified certificate may be selected.

### Mode C: a true cap-anchor jet

**PROVED.** Enclose `Qc=Q(c)` and `Dc=DQ(c)` with `patches.centre_jet`; the anchor (1) lies in the original ball, so its original contraction suffices. Let `T2,A>=||AXD^2z||` globally; the reference bound is `||AX|| Z2`. Then

\[
y(w)=A Q_c+b_l+A D_c v+\tfrac12H[v,v]+\eta_A,
\qquad \|\eta_A\|\le\tfrac12T_{2,A}\Delta^2.
\tag{9}
\]

Mode A uses `a=AQc+b_l`, `B=ADc` and `E=(alpha+T2,A)Delta^2/2`. Mode B uses the same `a,B,H` but substitutes `E0=T2,A Delta^2/2` in (7). Thus the whole-ball normal-error floor disappears. Only the value and first derivative are recentered; the fixed quadratic predictor Hessian remains inside `H`.

For T0 and the exact linear seed-corner T1 cases already recognized by `patches.Transfer`, use their exact `a0,B0` and zero remainder. Their target inequality is directly quadratic, and (2) is lossless for that target on a fixed cap.

## 4. The two orientation inequalities

**PROVED.** For either side, let `R` denote the gauge-invariant side phase output and let `sigma` be the required sign, namely `o_l` for the horizontal side and `-o_l` for the transposed vertical side. The supplied sine identity gives `||D^2 psi||<=72` globally, so Taylor error is at most `36 ||Delta phase||^2`.

At the polynomial anchor let `P_c=Q0+Uc+H2[c,c]/2`, `V_c=U+H2[c,.]`, `psi0=psi(RP_c)` and `g=Dpsi(RP_c)`. The scalar quadratic model is

\[
m(v)=\sigma\left(\psi_0+g RV_cv+\tfrac12g RH_2[v,v]\right).
\tag{10}
\]

Let `alpha_R>=||RH2||`, `E0,R>=||RXz||`, and `E0,gR>=||gRXz||`. Then

\[
D_R=\|RV_c\|\Delta+\tfrac12\alpha_R\Delta^2+E_{0,R},
\qquad E_\psi=E_{0,gR}+36D_R^2,
\tag{11}
\]

and `sigma psi(RQ(w))>=m(v)-Epsi`. Applying (2) separately to `m(rx-c)-Epsi` for both sides gives the required strict signs. The gradient is applied before taking the output norm. The reference bounds `||RX||tau` and `||gRX||tau` are valid; output-weighted improvements require their own replay.

At a true anchor use `Qc,Dc` in place of `Pc,Vc` and retain `gRH2[v,v]/2`. Replace

\[
D_R\quad\hbox{by}\quad
\|RD_c\|\Delta+\tfrac12(\alpha_R+T_{2,R})\Delta^2,
\]

and replace `E0,gR` by `T2,gR Delta^2/2`. This follows from (9) with the corresponding side outputs. It is stronger than dropping the quadratic scalar term and subtracting its absolute norm, while using the same global derivative information.

A cheap fallback drops the quadratic term, subtracts its absolute bound, and minimizes the remaining linear function exactly on the cap. For `l(x)=a+b^Tx`, `e=n/||n||`, `t=h/||n||`, write `be=b^Te` and `bp=b-be e`. If `b=0`, the minimum is `a`. Otherwise, if `-be/||b||>=t`, the minimum is `a-||b||`; if not, it is

\[
a+t b_e-\sqrt{1-t^2}\,\|b_p\|.
\tag{12}
\]

The branch condition must itself be interval-verified; a full-sphere minimum is a conservative fallback if it is undecided.

## 5. Optional direct quartic SOS certificate

**PROVED as a sufficient test; NOT ESTABLISHED as a lossless degree-four test.** If one wants to retain the entire quadratic target predictor, first verify `R=r_l-E0>0` and form

\[
F_4(x)=R^2-\|p(rx-c)\|^2.
\]

Let `m2(x)` be the 15 monomials in four variables of degree at most two and `m1(x)=(1,x1,x2,x3,x4)`. A valid certificate is

\[
F_4(x)-\eta=
m_2(x)^TPm_2(x)
 +(n^Tx-h)m_1(x)^TLm_1(x)
 +(1-\|x\|^2)k_2(x),
\tag{13}
\]

with `eta>0`, `P>=0`, `L>=0` and an arbitrary quadratic `k2`. A rational coefficient identity is checked exactly. With interval coefficients, enclose the coefficient residual, sum absolute upper bounds (every unit-sphere monomial has absolute value at most one), and require that this sum be less than `eta`. This makes approximate coefficient matching rigorous. No assertion is made that every positive quartic has this degree-four certificate.

## 6. A one-scalar fallback using the enclosing ball

**PROVED.** Mode A can also be certified over the entire ball `||v||<=Delta` with the ordinary one-quadratic S-lemma. Supply `kappa>=0` and verify

\[
\begin{pmatrix}
\kappa I-B^TB&-B^Ta\\
-a^TB&R^2-a^Ta-\kappa\Delta^2
\end{pmatrix}\succeq0.
\tag{14}
\]

This is lossless for the enclosing ball under its ordinary Slater condition `Delta>0`. It may be conservative for the cap because the enclosing ball contains points off the source sphere. For proposal generation one may minimize the scalar bound

\[
\|a\|^2+\kappa\Delta^2+
a^TB(\kappa I-B^TB)^{-1}B^Ta,
\qquad \kappa>\lambda_{\max}(B^TB).
\]

Only the final matrix inequality is trusted. The lossless cap certificate (2) avoids this geometric enlargement without increasing matrix size; it adds one four-vector and one norm inequality.

## 7. Exact/Arb replay contract

**PROVED.** A cap record needs rational `n,h`, a transfer descriptor, a model mode, and six rational numbers per checked quadratic. The checker must:

1. Rebuild and verify the original whole-ball normal form; preserve the local-germ dependency and continuous-lift/winding check.
2. Validate cap geometry, the transfer descriptor, the target frame inverse and the required target orientation.
3. Recompute the anchor, radius, all target and side coefficients, and outward remainder bounds. Candidate-supplied numerical bounds are not trusted.
4. Check `a0>=0` and `a0^2-sum(a_i^2)>=0` exactly for each multiplier; strict interval versions are sufficient.
5. Construct the symmetric five-by-five matrix (2) in Arb. A verified LDL factorization with positive pivots proves positive definiteness and hence strict positivity. Exact rational LDL or a rational factorization plus residual diagonal dominance can handle PSD witnesses when needed.
6. Verify the target and both orientation inequalities, except exact linear-corner cases whose orientation follows from the original whole-ball certificate as in `patches.Transfer`.
7. Verify the sphere cover by an independent exact cap-coverage theorem. Transfer acceptance alone does not prove coverage.

Only proposal generation uses floating optimization. For caps carrying a strict true quadratic margin the strengthened certificate has strict real witnesses; this is why rationalization plus interval checking can be made reliable rather than relying on an optimizer's status flag.

## 8. Edge-chart applicability

**PROVED conditionally; NOT CERTIFIED on the supplied edge data by this note.** All formulas are agnostic to the normal-space dimension and to the equations used to obtain `Q,U,H2,X,tau,Z2`. They therefore apply to the augmented 22-normal-coordinate X-ball model of ZT, provided its full model, output maps, global remainder bounds, actual-centre jet code when used, and the lift/winding conventions are supplied and replayed. Its fold causes no new division by `R` in these cap formulas. An edge sample count or full edge cap cover requires those concrete computations and cannot be inferred from the theorem alone.
