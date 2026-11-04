# Whole-ball completion and Hessian certificate

**Status: PROVED, conditional on the local matched-completion germ stated below.** This appendix gives the theorem implemented by the final refined `fullphase/certify.py`. It makes no claim that any particular input passes its inequalities. A successful implementation must enclose every displayed constant outwards and verify every strict inequality.

All phase spaces and derivatives are real. Phase arrays have Frobenius norm; tensor norms are multilinear operator norms unless another norm is specified. An output-by-input-product matrix flattening gives a valid upper bound for each tensor norm used below. No MUB exclusion or atlas theorem is used.

## 1. Centre, gauge, and the required local germ

Let

\[
P_6=I_6-\tfrac16\mathbf1\mathbf1^T,
\qquad h(q)=P_6qP_6,
\qquad \mathcal H=\operatorname{range}(h)\subset\mathbb R^{36}.
\]

Let `L:R^36 -> R^4` take the four dephased seed phases:

\[
(Lq)_{ab}=q_{ab}-q_{a0}-q_{0b}+q_{00},\qquad a,b\in\{1,2\}.
\]

Fix a phase lift `q0` of an exact matched Hadamard centre, with `Lq0=theta0`. The centre lift itself need not be horizontal. All variable increments below are horizontal, and the reported phase centre is `h(q0)`.

Define `Phi:R^36 -> R^30` by concatenating the real and imaginary parts of the fifteen upper off-diagonal entries of

\[
H(q)H(q)^*,\qquad H(q)_{ij}=e^{iq_{ij}}.
\]

Thus `Phi(q0)=0`; the diagonal entries are identically six.

**Local-germ hypothesis.** On an open seed neighbourhood of `theta0` there is a real-analytic matched Hadamard phase family `q_*(theta)` with

\[
q_*(\theta_0)=q_0,\quad
q_*(\theta)-q_0\in\mathcal H,\quad
Lq_*(\theta)=\theta,\quad
\Phi(q_*(\theta))=0.
\]

For the supplied reconstruction, this hypothesis follows from an exact matched centre, the nonsingular side Jacobians, the implicit-function theorem, and the supplied matched-flatness theorem. It is a local dependency; the conclusion of this appendix constructs the extension over the requested ball.

## 2. Exact centre construction

Choose exact matrices

\[
V:\mathbb R^4\to\mathcal H,\quad LV=I_4,
\qquad
X:\mathbb R^{21}\xrightarrow{\sim}\mathcal H\cap\ker L.
\]

The implementation takes `V` to be the horizontal projections of the four interior seed coordinate vectors. The horizontal projections of the other 21 interior coordinate vectors form a matrix `X0`, whose columns are a basis for `H intersect ker L`. It sets `X=X0 T`, where the exact dyadic entries of `T` are frozen as hexadecimal binary64 values in `fullphase/basis.json`; the ordering of the 21 free indices is recorded there too. It verifies `T` invertible. Thus independent replays use the same exact normal basis, without a new floating-point choice of basis.

Put `J=DPhi(q0)`, `A=JX`, and prove the 21×21 matrix `A^T A` invertible. Fix the following exact Gram left inverse:

\[
\boxed{W=(A^TA)^{-1}A^T,\qquad A=JX.}
\tag{0}
\]

It satisfies `WJX=I21` exactly. Equation (0) fixes `W` uniquely from the centre and frozen basis; it does not claim that all left inverses of `JX` are identical. The implementation encloses (0) by an Arb matrix solve. The resulting `W` is held fixed as `w` varies throughout the parameter ball.

Let `M` be any exact invertible 4×4 seed frame. Define

\[
U=(V-XWJV)M,
\]

\[
h_2[u,v]=-W D^2\Phi(q_0)[Uu,Uv],
\qquad H_2=Xh_2,
\]

\[
q_p(w)=q_0+Uw+\tfrac12H_2[w,w].
\]

These formulas give `LU=M`, `LH2=0` and `WJU=0` exactly. Define the projected residual and its predictor restriction by

\[
G(w,z)=W\Phi(q_p(w)+Xz),\qquad p(w)=G(w,0).
\]

Then

\[
p(0)=Dp(0)=D^2p(0)=0,\qquad G_z(0,0)=I_{21}.
\tag{1}
\]

The equations in (1) follow algebraically from the definitions. In particular, they must not be replaced by statements that a numerical residual is merely small.

## 3. Constants evaluated from the centre

Choose nonnegative upper bounds

\[
x\ge\|X\|,\quad u\ge\|U\|,\quad
\gamma\ge\|h_2\|,\quad\beta\ge\|H_2\|,
\]

\[
c\ge\|WD^2\Phi(q_0)[U,X]\|,\qquad
d\ge\|WD^2\Phi(q_0)[X,X]\|.
\]

Here `[U,X]` denotes contraction in the two input slots. The value `gamma` is a valid centre bound and gives the optional estimate `beta<=x gamma` when `beta` is chosen that way. The refined inequalities below use the separately evaluated `beta` and the exact second derivative of `G_z(w,0)`.

The global derivative bounds

\[
\|D^2\Phi(q)\|\le2\sqrt3,\qquad
\|D^3\Phi(q)\|\le2\sqrt6
\tag{2}
\]

hold for every phase array `q`. Thus choose

\[
L_2\ge2\sqrt3\|W\|,\qquad L_3\ge2\sqrt6\|W\|.
\]

To verify (2), write `d_A(rs)=||A_r-A_s||`. One has
`max d_A²<=2||A||²` and `sum_{r<s} d_A²<=6||A||²`, hence
`sum d_A⁴<=12||A||⁴` and `sum d_A⁶<=24||A||⁶`. Differentiating each row-pair exponential and applying Cauchy–Schwarz or Hölder proves (2). The normalization uses each unordered row pair once, with both real and imaginary parts.

### Explicit finite formulas for the predictor constants

Index the 90 row-pair terms by `a=(i<j,k)` and put

\[
\nu_a=e_{ik}-e_{jk},\quad z_a=e^{i\nu_aq_0},\quad
s_a=\nu_aU,\quad T_a=\nu_aH_2,\quad d_a=\nu_aX.
\]

Thus `Ta` is a symmetric 4×4 matrix. If pair `(i,j)` has index `p` in `0,...,14`, define the complex output vector

\[
\kappa_a=(W_{:,p}-iW_{:,p+15})z_a.
\]

Then exactly

\[
p(w)=\operatorname{Re}\sum_a\kappa_a
\exp\{i(s_aw+\tfrac12T_a[w,w])\}.
\tag{3}
\]

Let `cn_a` bound the Euclidean operator norm of the real matrix
`[Re kappa_a, -Im kappa_a]`, and set

\[
t_a\ge\|T_a\|_2,\qquad
a_a=\|s_a\|+rt_a.
\]

Use the exact centre derivative tensors in (3) to obtain bounds

\[
t_3\ge\|D^3p(0)\|,\qquad t_4\ge\|D^4p(0)\|.
\]

Their exponential factors are

\[
D^3e^{i(s\cdot w+T[w,w]/2)}\big|_0
=-i s^{\otimes3}-\operatorname{Sym}_3(T\otimes s),
\]

\[
D^4e^{i(s\cdot w+T[w,w]/2)}\big|_0
=s^{\otimes4}-i\operatorname{Sym}_6(T\otimes s\otimes s)
-\operatorname{Sym}_3(T\otimes T).
\]

The subscripts indicate sums over the three, six, and three distinct pair placements, respectively, with no averaging. Keep the sum over `a` before taking these centre tensor norms. A uniform fifth derivative bound is

\[
L_5=\sum_a c_{n,a}(a_a^5+10t_aa_a^3+15t_a^2a_a).
\tag{4}
\]

For `A(w)=G_z(w,0)=WDPhi(q_p(w))X`, choose

\[
a_2\ge\|D^2A(0)\|.
\]

The exact tensor used to calculate it has entries

\[
D^2A(0)_{:,ij,k}
=\operatorname{Re}\sum_a\kappa_a
(-T_{a,ij}-i s_{a,i}s_{a,j})d_{a,k}.
\tag{5}
\]

A uniform third derivative bound for `A` is

\[
L_{3a}=\sum_a c_{n,a}\|d_a\|(a_a^3+3t_aa_a).
\tag{6}
\]

Equations (3)–(6), together with matrix and tensor norm bounds, use only centre data and the prescribed radius `r`.

## 4. Refined whole-ball inequalities

Fix `r>0`. Define

\[
\begin{aligned}
b_0&=t_3r^3/6+t_4r^4/24+L_5r^5/120,\\
b_1&=t_3r^2/2+t_4r^3/6+L_5r^4/24,\\
b_2&=t_3r+t_4r^2/2+L_5r^3/6,
\end{aligned}
\tag{7}
\]

\[
\mathrm{base}=ur+\tfrac12\beta r^2,\qquad
q_{\rm base}=cr+\tfrac12a_2r^2+\tfrac16L_{3a}r^3.
\]

Find `tau>0` such that

\[
q=q_{\rm base}+(d+L_3x^2\mathrm{base})\tau
+\tfrac12L_3x^3\tau^2<1,
\qquad b_0+q\tau<\tau.
\tag{8}
\]

Put

\[
\delta=\mathrm{base}+x\tau,
\]

\[
m_1=c+a_2r+\tfrac12L_{3a}r^2+L_3x^2(u+\beta r)\tau,
\]

\[
m_2=L_3x(u+\beta r)^2+L_2x\beta,
\qquad m_{zz}=d+L_3x^2\delta,
\]

\[
Z_1=\frac{b_1+m_1\tau}{1-q},\qquad
Z_2=\frac{b_2+m_2\tau+2m_1Z_1+m_{zz}Z_1^2}{1-q}.
\tag{9}
\]

**Conclusion.** There is a unique solution `z(w)` of `G(w,z)=0` in `||z||<=tau` for every `||w||<=r`. It is real-analytic on the interior, continuous on the closed ball, and satisfies

\[
\|z(w)\|\le\tau,\quad \|Dz(w)\|\le Z_1,\quad
\|D^2z(w)\|\le Z_2.
\tag{10}
\]

The family `q(w)=q_p(w)+Xz(w)` is an exact Hadamard phase family with seed `theta0+Mw`, not merely a solution of the 21 projected equations.

### Proof

Taylor expansion and (1), (4) give (7) as bounds on `p,Dp,D²p`. Equations (5),(6) give
`||A(w)-I||<=qbase` and `||DA(w)||<=c+a2 r+L3a r²/2`.

Expanding the normal derivative away from the predictor gives

\[
\|G_z(w,z)-I\|\le q
\quad (\|w\|\le r,\ \|z\|\le\tau).
\]

The first normal variation is bounded by `d+L3 x² base`, and its second normal variation by `L3 x³`, yielding exactly (8). Hence `z -> z-G(w,z)` is a contraction mapping the closed `tau`-ball strictly into itself. Banach's theorem proves existence and uniqueness; the analytic implicit-function theorem gives analyticity for `||w||<r`.

Direct differentiation gives bounds `m1,m2,mzz` on `G_wz,G_wwz,G_zz`. In particular, the last term in `m1` bounds the change of `G_wz` between `z=0` and the normal tube. The integral identities

\[
G_w(w,z)=Dp(w)+\int_0^1G_{wz}(w,tz)[z]dt,
\]

and its second-w-derivative counterpart, followed by twice differentiating `G(w,z(w))=0`, prove (9),(10).

For the full residual, the local matched germ has the same seed as `q(w)` and differs from `q_p(w)` by a unique vector in `range(X)`. For sufficiently small `w` that normal coordinate lies in the contraction tube, so projected uniqueness identifies it with `z(w)`. Each of the 30 components of `Phi(q(w))` is real-analytic on the connected open ball and vanishes on a nonempty open neighbourhood of zero. The real-analytic identity theorem makes all 30 vanish throughout the open ball. Continuity includes its boundary. Unimodularity is built into `H(q)`, so `H(q(w))H(q(w))*=6I` everywhere. This proves the asserted exact Hadamard family. ∎

## 5. Hessian and C1 consequences

One has `z(0)=Dz(0)=D²z(0)=0`. Consequently `U` and `H2` are the exact first and second derivatives of the completed phase family at the centre. Throughout the ball,

\[
\boxed{\|D_w^2h(q(w))\|\le C_w:=\beta+xZ_2.}
\tag{11}
\]

Two valid C1 remainder bounds are

\[
\boxed{n_{\rm direct}=\tfrac12\beta r^2+x\tau,\qquad
n_{\rm Hessian}=\tfrac12C_wr^2.}
\tag{12}
\]

Either bound encloses `||h(q(w))-h(q0)-Uw||`; their minimum may be used. If recorded centre/frame data are `P, U_recorded` with

\[
\|P-h(q_0)\|\le\epsilon_P,\qquad
\|U_{\rm recorded}-U\|_2\le\epsilon_U,
\]

add `epsilon_P+r epsilon_U` to the chosen remainder. These bounds use the continuous centre-based phase lift. Projecting pointwise principal phases instead would require the projected winding lattice `2pi h(Z^36)`.

### Raw seed derivatives versus the prescribed ellipsoid

For `theta=theta0+Mw`, (11) implies

\[
\|D_\theta^2h(q)\|\le C_w\|M^{-1}\|^2
\quad\text{on }\theta_0+M\overline B_r.
\]

A sharper version evaluates the raw centre tensor separately: if

\[
\beta_\theta\ge
\|H_2[M^{-1}\cdot,M^{-1}\cdot]\|,
\]

then

\[
\boxed{C_{\theta,\mathrm{ellipsoid}}
=\beta_\theta+xZ_2\|M^{-1}\|^2}
\tag{13}
\]

is valid on that same ellipsoid. Equation (13) does not assert a bound on the larger Euclidean ball of radius `||M||r`.

To obtain the brief's isotropic function `C(theta0,rho)`, run the theorem with `M=I` and `r=rho`. Whenever its tests pass, `C(theta0,rho)=Cw` is a bound throughout `||theta-theta0||<=rho`. Failure of the inequalities supplies no such bound; it is not a mathematical exclusion of that seed ball.

## 6. Strictness and matched orientation on the entire ball

The conclusion so far constructs an exact Hadamard family. The following additional centre-based tests ensure it remains in the requested strict matched branch.

For a 3×3 phase block define

\[
\psi(a)=\operatorname{Im}\left(
\operatorname{perm}(e^{ia})\det(e^{ia})^2
/\prod_{ij}e^{ia_{ij}}\right).
\]

Its 24-term sine expansion has integer frequencies satisfying

\[
\sum_{k=1}^{24}\nu_k\nu_k^T=72(P_3\otimes P_3).
\]

This exact finite identity is replayed by `signature_replay.py`; it implies the global bound `||D²psi||<=72`. The function is invariant under row/column phasing and transposition.

For each complementary side `s in {h,v}`, let `S_s` select its nine phase entries, put `A_s=(P3 tensor P3) S_s`, and evaluate

\[
\psi_{s,0}=\psi(S_sq_0),\qquad
g_s=D\psi(S_sq_0).
\]

Define

\[
\epsilon_s=\|A_sU\|r+\tfrac12\|A_sH_2\|r^2+\|A_sX\|\tau,
\]

\[
v_s=\|g_sA_sU\|r+
\tfrac12\|g_sA_sH_2\|r^2+
\|g_sA_sX\|\tau+36\epsilon_s^2.
\tag{14}
\]

The tensor `g_s A_s H2` is a scalar symmetric 4×4 matrix, for which its spectral norm suffices. If the intended centre orientation is `o in {+1,-1}`, require

\[
m_h=o\psi_{h,0}-v_h>0,\qquad
m_v=-o\psi_{v,0}-v_v>0.
\tag{15}
\]

Taylor's theorem with `||D²psi||<=72` proves (14), so (15) fixes both signs throughout the ball. In particular neither complementary determinant vanishes. By the supplied side-signature identity `R=4(Im Psi)^2` and the matched-root criterion, the family is strict and matched everywhere, with the intended orientation. A valid lower bound is

\[
R\ge4\min(m_h,m_v)^2>0.
\]

All numerical lower bounds used in (15) or this final display must themselves be rounded downwards. The theorem is a finite, centre-based certificate with explicit radius dependence; it contains no seed subdivision.
