# ZT: output-weighted transfer lemmas and audit

**PROVED, conditional on the local matched-completion germ used by return Z.**
Every statement below is a theorem about a successfully verified Z normal
form. Numerical success on a particular seed, patch, or collection of patches
is a separate question. None of these arguments uses the global MUB covering
theorem or Stage C.

## 1. Precisely what is available from one Z computation

Write the horizontal phase representative on the original ball as

\[
 Q(w)=Q_0+Uw+\tfrac12 H_2[w,w]+Xz(w),\qquad \|w\|\le r.                 \tag{1}
\]

Here `Q0 = hor(qg0)`, where `qg0` is the exact dephased centre lift used to
construct Z's projected equations. The increments `U`, `H2`, and `Xz` are
horizontal. Z supplies constants

\[
 \|z\|\le\tau,\qquad \|Dz\|\le Z_1,\qquad
 \|D^2z\|\le Z_2,\qquad \kappa<1.                                  \tag{2}
\]

The last constant is Z's contraction bound, denoted `q` in the supplied
theorem and code. In particular,

\[
 G(w,z)=W\Phi(q_{g,0}+Uw+\tfrac12H_2[w,w]+Xz),\qquad
 \|G_z-I\|\le\kappa                                                  \tag{3}
\]

on `||w|| <= r`, `||z|| <= tau`. The centre `qg0` in (3) is important:
`W` was constructed from the dephased centre Jacobian. Replacing `qg0`
by its horizontal projection while retaining the same `W` changes the
projected equation. The representation (1) is nevertheless correct because
horizontal projection commutes with the increments, and all transfer
cross-ratios and side signatures are invariant under the omitted constant
row and column phases.

All norms are Euclidean operator norms unless otherwise stated. For a
vector-valued bilinear tensor, its output-by-input-product flattening gives
a valid norm upper bound. For a scalar symmetric bilinear form, the spectral
norm of its square matrix is sharper than its flattened row norm.

## 2. A genuine local Taylor enclosure with no new contraction

For any output matrix `A`, put

\[
 \alpha_A\ge\|AH_2\|,\qquad \chi_A\ge\|AX\|.                          \tag{4}
\]

**Lemma 1 — PROVED.** If `c,w` belong to the original closed ball and
`||w-c|| <= delta`, then

\[
 \boxed{\|A(Q(w)-Q(c)-DQ(c)(w-c))\|
 \le \tfrac12(\alpha_A+\chi_A Z_2)\delta^2.}                          \tag{5}
\]

**Proof.** The chord `c+t(w-c)` belongs to the ball. Twice differentiating
(1) gives `A D²Q = A H2 + A X D²z`. Integrate the second derivative with
Taylor's weight `1-t` on the chord and use (2). The integral of `1-t` is
`1/2`. Strict invertibility of `G_z` gives the local analytic extension
needed to interpret derivatives at a boundary point; equivalently take
limits of interior chords. ∎

This is frame-preserving: the prescribed frame `Mtheta` is already inside
`U,H2`. It is output-weighted: form `A H2` and `A X` before taking norms.
The generally much worse replacement
`||A|| (beta + ||X|| Z2)` is unnecessary.

A useful choice of `c` is the Euclidean projection of a box midpoint onto
the original ball. A point on the sphere is also valid. If the box midpoint
lies outside the original ball, using it as an *actual* Taylor centre is
not justified by Lemma 1. The enclosing ball of a sphere patch normally
extends outside the original ball; Lemma 1 only requires the chords between
`c` and the relevant sphere points, so that extension causes no problem.

### Recentring Z itself

**PROVED.** Let `c` be in the original ball and let the exact branch at `c`
be fixed by (1). Re-run Z at seed centre `theta0 + Mtheta c`, with the same
input frame `Mtheta` and radius `delta`. The original branch supplies its
local germ. If the new Z tests succeed, it constructs the branch throughout
the full sub-ball, including the part outside the old ball. With its
constants `H2c, tauc, Z2c`, one has

\[
 \epsilon_A(c,\delta)=\min\left\{
 \tfrac12\|AH_{2,c}\|\delta^2+\|AX\|\tau_c,
 \tfrac12(\|AH_{2,c}\|+\|AX\|Z_{2,c})\delta^2
 \right\}.                                                        \tag{6}
\]

Here the exact first and second derivatives at the new centre are Z's
`Uc,H2c`. A fresh local normal basis may be used, but retaining the original
`X` avoids a needless basis change. Recentring is an alternative to (5),
not a consequence that every proposed sub-ball automatically passes Z.

## 3. The cheapest patch model: recenter the polynomial only

Define, for **any** `c` in real four-space,

\[
 P_c=Q_0+Uc+\tfrac12H_2[c,c],\qquad V_c=U+H_2[c,\cdot].              \tag{7}
\]

These are polynomial expressions and do not require evaluating the branch
at `c`.

**Lemma 2 — PROVED.** If `w` belongs to the original ball and
`||w-c|| <= delta`, then

\[
 \boxed{\|A(Q(w)-P_c-V_c(w-c))\|
 \le E_A:=\tfrac12\alpha_A\delta^2+\chi_A\tau.}                      \tag{8}
\]

**Proof.** With `t=w-c`, the exact identity is

\[
 Q(w)-P_c-V_ct=\tfrac12H_2[t,t]+Xz(w).
\]

Apply `A` and use (2). ∎

This is the mode implemented by `zt_patch.py`. It needs one Z computation
per source ball; all patch centres are algebraic evaluations of the same
quadratic polynomial. In particular a dyadic midpoint outside the original
ball is allowed in (7). The remainder `chi_A tau` is a genuine floor:
subdividing indefinitely cannot remove it. Lemma 1 or recentered Z is the
natural fallback when that floor is the limiting error.

For a level-`m` dyadic box, its half-width in each of four coordinates is
`h = r 2^(-m)`. At its midpoint, the circumscribed radius is exactly

\[
 \delta=2h,\qquad E_A=2\alpha_A h^2+\chi_A\tau.                      \tag{9}
\]

The cost of (9) is independent of the number of former fine boxes below
that patch.

## 4. A sphere-aware vertex bound for the target

Let `beta` be a four-dimensional box with vertex set `V(beta)`. For a
given affine map set

\[
 f(w)=\|a+B(w-c)\|^2.
\]

**Lemma 3 — PROVED.** If

\[
 B^TB-\lambda I\succeq0,                                           \tag{10}
\]

then

\[
 \sup_{w\in\beta,\ \|w\|=r}f(w)
 \le T_\lambda:={\max}_{v\in V(\beta)}
 \left(\|a+B(v-c)\|^2-\lambda(\|v\|^2-r^2)\right).                 \tag{11}
\]

For a nonempty sphere patch the right-hand side is nonnegative. Using
`sqrt(max(0,T_lambda))` is convenient for a uniform implementation.

**Proof.** Subtract the vanishing sphere constraint:

\[
 f_\lambda(w)=f(w)-\lambda(\|w\|^2-r^2).
\]

Its Hessian is `2(B^T B-lambda I)`, so it is convex by (10). Every point
of a box is a convex combination of its vertices. Therefore its value is
at most the largest vertex value. On the sphere `f_lambda=f`. ∎

The usual convex vertex test is `lambda=0`. Choosing a positive certified
lower bound for the smallest eigenvalue of `B^T B` reduces the effect of
vertices outside the sphere. Floating SVD can propose `lambda`; an Arb
LDL decomposition of `B^T B-lambda I` verifies it. On failure, `lambda=0`
always remains valid. Logically (10) also allows negative `lambda`, though
the positive choice is normally the useful one.

For a T1 target, with the signed permutation `g` incorporated in the corner
map, define

\[
 A=M_l^{-1}L_{IJ}g,\qquad
 b=M_l^{-1}(2\pi N-\theta_{0,l}),
 \qquad a=AP_c+b,\quad B=AV_c.                                     \tag{12}
\]

**Target criterion — PROVED.** If

\[
 \boxed{\sqrt{\max(0,T_\lambda)}+E_A<r_l,}                          \tag{13}
\]

then the target inequality holds for every point of `beta` on the source
sphere. Use (8) for the polynomial mode, or (5)/(6) with the corresponding
exact-centre affine map for the local Taylor mode.

For T0 the affine map is exact and `E_A=0`. For a T1 whose corner is an
ordering of the original leading corner, the affine seed map is exact as
well; the source orientation decides the target orientation as in FORMAT.
Computing these cases directly avoids artificial roundoff-sized quadratic
terms that are mathematically zero.

## 5. Explicit orientation inequalities

For either target side let `S` select its nine phase entries after applying
`g`, in the prescribed order, and put

\[
 \Pi=P_3\otimes P_3,\qquad R_s=\Pi S,\qquad
 P_3=I_3-\tfrac13\mathbf1\mathbf1^T.
\]

Let `psi` be the imaginary side signature. Its exact sine expansion gives

\[
 \psi(x)=\sum_{\nu}\sigma_\nu\sin(\nu\cdot x),\qquad
 \sigma_\nu\in\{-1,1\},\qquad
 \sum_\nu\nu\nu^T=72\Pi.                                          \tag{14}
\]

**PROVED from the supplied finite identity.** For every phase array,
`||D²psi|| <= 72`, and `psi(x)=psi(Pi x)`. Indeed for every real `v`,

\[
 |v^TD^2\psi(x)v|\le\sum_\nu(\nu\cdot v)^2=72v^T\Pi v.
\]

At the polynomial centre (7), define

\[
 \psi_c=\psi(SP_c),\quad g_c=D\psi(SP_c),\quad C_s=R_sV_c.
\]

Because every frequency is horizontal, `g_c Pi = g_c`. Set

\[
\begin{aligned}
 d_s&\ge\max_{v\in V(\beta)}\|C_s(v-c)\|,
     &&\text{or use }d_s=\|C_s\|\delta,\\
 e_s&=\tfrac12\|R_sH_2\|\delta^2+\|R_sX\|\tau,\\
 e_{g,s}&=\tfrac12\|g_cR_sH_2\|_{\mathrm{quad}}\delta^2
                         +\|g_cR_sX\|\tau.                        \tag{15}
\end{aligned}
\]

The quadratic norm in the last line is the spectral norm of the symmetric
`4 x 4` scalar Hessian. For desired sign `sigma`, define

\[
 \boxed{m_s=
 \min_{v\in V(\beta)}\sigma\bigl(\psi_c+g_cC_s(v-c)\bigr)
 -e_{g,s}-36(d_s+e_s)^2.}                                         \tag{16}
\]

**Orientation criterion — PROVED.** If `m_s>0`, then
`sigma psi(SQ(w))>0` on the sphere patch. Require (16) for the horizontal
side with `sigma=o_l` and the transposed vertical side with `sigma=-o_l`.

**Proof.** Put `t=w-c` and
`E=Q(w)-P_c-V_c t`. Then `||R_s E|| <= e_s` and
`|g_c R_s E| <= e_g,s` by Lemma 2. Also
`||R_s(Q(w)-P_c)|| <= d_s+e_s`. Taylor expansion of `psi` and (14) bounds
its nonlinear error by `36(d_s+e_s)^2`. The affine part has its minimum
over the box at a vertex. The value at the actual sphere point is no
smaller than that box minimum. ∎

For Lemma 1's exact-centre mode replace `P_c,V_c` by `Q(c),DQ(c)` and use

\[
\begin{aligned}
 e_s&=\tfrac12(\|R_sH_2\|+\|R_sX\|Z_2)\delta^2,\\
 e_{g,s}&=\tfrac12(\|g_cR_sH_2\|_{\mathrm{quad}}
                      +\|g_cR_sX\|Z_2)\delta^2.                  \tag{17}
\end{aligned}
\]

All centre values, gradients, matrices, and norms can be intervals. The
criteria use outward upper bounds and strict lower margins; midpoint
evaluations without error bounds do not constitute a certificate.

## 6. Cheap rigorous values and derivatives at an actual patch centre

**Lemma 4 — PROVED.** Let `c` belong to the original closed ball. Choose an
exact dyadic vector `zhat` with `||zhat|| <= tau`. If

\[
 \eta_c\ge\frac{\|G(c,\widehat z)\|}{1-\kappa},                     \tag{18}
\]

then `||z(c)-zhat|| <= eta_c`.

**Proof.** The fixed point and the proposed point both lie in the original
contraction tube. Apply the contraction estimate to them and move the
term `kappa ||z(c)-zhat||` to the left. No fresh existence argument or
self-map test is needed. ∎

A numerical Newton solve is a proposal for `zhat`; (18) validates it on
the branch already constructed by Z. If the proposal lies outside the
tube, discard it or validate a new tube. In particular, independently
solving the two side systems and checking their orientation alone does
not prove agreement with the original *labelled* branch: side permutations
have the same orientation. Agreement with the original contraction tube
does prove this.

Evaluate the phase and Jacobian over the enclosure from (18), and write

\[
 F_c=W D\Phi(q(c))X,\qquad
 \Gamma_c=W D\Phi(q(c))(U+H_2[c,\cdot]).
\]

The inverse exists because `||F_c-I|| <= kappa < 1`. The exact derivative
is the solution of

\[
 F_cD_c=-\Gamma_c,\qquad DQ(c)=U+H_2[c,\cdot]+XD_c.                 \tag{19}
\]

An Arb matrix solve encloses it. Alternatively, for an exact dyadic
derivative proposal `Dhat`, a verified bound

\[
 \eta_D\ge\frac{\|F_c\widehat D+\Gamma_c\|}{1-\kappa}               \tag{20}
\]

gives `||D_c-Dhat|| <= eta_D`. In (20), evaluate the residual over the
rigorous phase enclosure; it must contain the exact `F_c,Gamma_c`.

Thus with

\[
 \widehat Q_c=P_c+X\widehat z,\qquad
 \widehat V_c=V_c+X\widehat D,
\]

one has the entirely explicit local certificate

\[
 \boxed{
 \|A(Q(w)-\widehat Q_c-\widehat V_c(w-c))\|
 \le\chi_A\eta_c+\chi_A\eta_D\delta
       +\tfrac12(\alpha_A+\chi_AZ_2)\delta^2.}                      \tag{21}
\]

The first two errors can be made small by improving the point solve; they
are not the fixed `chi_A tau` floor of the polynomial method. This uses one
point residual/derivative verification per patch and reuses Z's original
contraction, rather than re-running the whole-ball theorem per patch.

An optional output-weighted inverse check can reduce (20). If `C=AX` and
`Y_A` approximates `C F_c^{-1}`, then

\[
 \|CF_c^{-1}\|\le\|Y_A\|+
       \frac{\|C-Y_AF_c\|}{1-\kappa}.                              \tag{22}
\]

This follows from `(C F_c^{-1}-Y_A)=(C-Y_A F_c)F_c^{-1}`. Multiplying
the derivative residual in (20) by this bound keeps the output weighting
through the linear solve. For a root residual such as (18), the analogous
inverse is an averaged Jacobian on the segment, so one may not substitute
the endpoint inverse in (22) without a bound on that averaged Jacobian.

## 7. Phase lifts, winding checks, and exact coverage

**PROVED.** A dephasing cross-ratio matrix annihilates every row-plus-column
phase array. Signed transposition preserves that gauge subspace. Therefore
`L_IJ g hor(Q)=L_IJ g Q`; the corner phases and side signatures used above
are unchanged by the horizontal gauge.

However, a separately chosen principal-argument lift can differ by an
entrywise multiple of `2pi`; horizontal projection does not eliminate
such windings. Use the continuous lift fixed at the centre, and verify it
is the representative used by the stored transfer windings. One safe
check is as follows. Let `Dg` be the exact dephasing map and let the
recorded dephased centre/frame be `Pg,Ug`. Require

\[
 \|q_{g,0}-P_g\|+r\|D_gU-U_g\|
 +\tfrac12r^2\|D_gH_2\|+\tau\|D_gX\|<\pi.                         \tag{23}
\]

The left side bounds the maximum coordinate difference from the recorded
affine phase representative throughout the ball. Consequently each
entry remains the nearest lift; the stored integer winding vector is
applicable. Rowwise versions are sharper. At the centre, fix the seed
entries exactly to `theta0`, and verify the argument intervals select
those windings.

**Coverage proposition — PROVED.** Suppose each listed dyadic box is
certified by (13) and the two conditions (16) for every point of its
intersection with the source sphere. If FORMAT's exact integer traversal
certifies that the listed boxes cover the sphere, then every source-sphere
point satisfies one of the verified transfers. The traversal and stored
integer-box format are unchanged.

There is one integration distinction: these witnesses certify
`w in beta AND ||w||=r`. They must not be supplied to a kernel lemma whose
conclusion asserts the transfer for **all** `w in beta`. The sphere
membership hypothesis must occur in the new transfer predicate. The
coverage combinator itself needs no change.

As an exact geometric sanity check, the number of level-`m` boxes whose
closed boxes meet the unit 3-sphere is:

| Level | Meeting boxes | Transverse intersections | Tangency only |
|---:|---:|---:|---:|
| 1 | 16 | 16 | 0 |
| 2 | 256 | 224 | 32 |
| 3 | 2,080 | 2,048 | 32 |
| 4 | 16,960 | 16,928 | 32 |
| 5 | 136,832 | 136,800 | 32 |

These values follow by integer enumeration of the exact minimum and
maximum squared norms. They are **CERTIFIED combinatorial counts**; they
are not transfer-success counts. Thus a reduction to a few dozen patches
requires successful level-1 transfers in at least part of the sphere.
If all sixteen level-1 nodes must split, level 2 already contains 256
sphere-meeting nodes under the specified strict-discard traversal.

## 8. What can be proved about sharpness

**PROVED.** For a symmetric bilinear tensor
`T: R^4 x R^4 -> R^m`, define

\[
 t=\sup_{\|v\|=1}\|T[v,v]\|,
 \qquad \alpha=\|\operatorname{flatten}(T)\|_2.
\]

Then

\[
 t\le\alpha\le2t.                                                  \tag{24}
\]

**Proof.** For each unit output-dual vector `y`, let `T_y` be the scalar
symmetric `4 x 4` matrix obtained by contraction with `y`. By duality,
`alpha=sup_y ||T_y||_F`, while
`t=sup_y ||T_y||_2`. The matrix inequality
`||T_y||_F <= sqrt(4) ||T_y||_2` gives (24). The lower bound follows by
applying the flattening to the unit vector `v tensor v`. ∎

At a fixed regular centre, recentered Z admits a contraction radius
`tau_c=O(delta^3)`. Use the **exact flattened tensor norm**
`alpha_A=||flatten(A H2c)||`, and suppose `A H2c` is nonzero. If
`E_A(delta)=alpha_A delta²/2+||AX|| tau_c` and `S_A(delta)` is the true
Taylor supremum on the **full sub-ball**, then

\[
 \limsup_{\delta\downarrow0}\frac{E_A(\delta)}{S_A(\delta)}\le2.
\]

Equivalently, the asymptotic bound is `2+o(1)`. This statement concerns
the analytic bound with exact tensor norms. It does not assert a factor
at most two at each sufficiently small finite radius, or for an
arbitrarily inflated, fixed-precision norm enclosure. A finite-radius
claim uses the explicit lower witness below.

A finite-radius sharpness check is possible. Let `t_low` be a certified
lower bound for `||AH2c[v,v]||` at some unit direction, and put
`rho_A=||AX|| tau_c`. A lower bound for the true supremum on that full
sub-ball is

\[
 L_A=\tfrac12t_{\rm low}\delta^2-\rho_A.
\]

If `L_A>0`, the direct bound divided by `L_A` is a certified upper bound
on its overestimation factor. In the ideal exact-norm version,
`rho_A <= t delta²/8` and (24) imply a factor at most 3.

**NOT ESTABLISHED from these lemmas alone:** a factor 2--3 over all real
certificate patches. The true supremum on a sphere-only patch may be
smaller than the full-sub-ball supremum, the fixed global remainder floor
need not be small, and projected curvatures can cancel. Any measured
sharpness claim must name the tested patches and a rigorous or numerical
lower benchmark. Failure of these sufficient tests is not a mathematical
obstruction to the transfer.

## 9. Code audit of `zt_patch.py`

**PROVED as mathematical tests, subject to correct interval execution.**
The code's polynomial recentering, `2*h` circumscribed radius, output
tensor weighting, scalar orientation-Hessian norm, and positive-definite
sphere correction implement Lemmas 2--3 and (15)--(16). In particular
the orientation expansion is valid even when the polynomial centre is
not an exact Hadamard point. The side signature is a smooth trigonometric
function on all phase arrays.

The integrated verifier also checks the global lift condition (23), and
validates target indices before indexing the seed array. The first is a
mathematical hypothesis needed to reuse windings; the second prevents
Python negative-index semantics from silently accepting malformed labels.

The exact-centre reuse method is implemented by `centre_jet` and
`Transfer.check_local`. It uses the dephased centre in the projected
equation, a radial projection of the dyadic midpoint as the in-ball
anchor, a verified residual divided by `1-kappa`, and an Arb solve for
the derivative. The interval centre/derivative errors propagate directly
through the affine evaluation; no separate duplicate error term is
needed. A caller passing a cached `jet` must use the identical anchor at
which that jet was certified. These mathematical code-audit statements
are distinct from a replay of any particular list of patches.

## 10. Stronger output weighting through the projected equation

The factors `||AX|| tau` and `||AX|| Z2` are valid but need not be sharp.
The output map can be carried through the residual and the inverse-Jacobian
error before taking norms. This is implemented in `seed_weighted.py`.

Put `C=AX`. In all centre residual tensors and exponential coefficient
vectors of Z, multiply on the left by `C` before computing a norm. In
particular define

\[
\begin{aligned}
 c_C&\ge\|CWD^2\Phi(q_0)[U,X]\|,\\
 d_C&\ge\|CWD^2\Phi(q_0)[X,X]\|,\\
 t_{3,C}&\ge\|C D^3p(0)\|,\qquad t_{4,C}\ge\|C D^4p(0)\|,\\
 a_{2,C}&\ge\|C D_w^2G_z(0,0)\|,\\
 L_{2,C}&=2\sqrt3\|CW\|,\qquad L_{3,C}=2\sqrt6\|CW\|.
\end{aligned}                                                       \tag{25}
\]

For `L5,C` and `L3a,C`, use Z's sums over the ninety monomials with
`c_n,a = ||[Re(C kappa_a), -Im(C kappa_a)]||`. The other factors
`a_a,t_a,||d_a||` are unchanged. The signs of the real/imaginary columns
do not change this two-column operator norm. Then

\[
 b_{j,C}=t_{3,C}\frac{r^{3-j}}{(3-j)!}
       +t_{4,C}\frac{r^{4-j}}{(4-j)!}
       +L_{5,C}\frac{r^{5-j}}{(5-j)!},\quad j=0,1,2.                 \tag{26}
\]

Retain the original scalar bounds `u,x,beta,tau,Z1,Z2`, and put

\[
 b=ur+\tfrac12\beta r^2,\qquad d_*=b+x\tau,
\]

\[
\begin{aligned}
 k_{0,C}&=c_Cr+\tfrac12a_{2,C}r^2+\tfrac16L_{3a,C}r^3,\\
 k_C&=k_{0,C}+(d_C+L_{3,C}x^2b)\tau
                      +\tfrac12L_{3,C}x^3\tau^2,\\
 m_{1,C}&=c_C+a_{2,C}r+\tfrac12L_{3a,C}r^2
                          +L_{3,C}x^2(u+\beta r)\tau,\\
 m_{2,C}&=L_{3,C}x(u+\beta r)^2+L_{2,C}x\beta,\\
 m_{zz,C}&=d_C+L_{3,C}x^2d_*.
\end{aligned}                                                       \tag{27}
\]

**Lemma 5 — PROVED.** Throughout the original ball,

\[
\begin{aligned}
 \|Cz\|&\le T_{0,C},\\
 \|CDz\|&\le T_{1,C},\\
 \|CD^2z\|&\le T_{2,C},
\end{aligned}
\]

where valid explicit choices are

\[
\begin{aligned}
 T_{0,C}&=b_{0,C}+k_{0,C}\tau
       +\tfrac12(d_C+L_{3,C}x^2b)\tau^2
       +\tfrac16L_{3,C}x^3\tau^3,\\
 T_{1,C}&=b_{1,C}+m_{1,C}\tau+k_C Z_1,\\
 T_{2,C}&=b_{2,C}+m_{2,C}\tau+2m_{1,C}Z_1
                         +m_{zz,C}Z_1^2+k_C Z_2.                   \tag{28}
\end{aligned}
\]

Each can be replaced by its minimum with the old bounds
`||C|| tau`, `||C|| Z1`, and `||C|| Z2`. The simpler
`T0,C = b0,C+k_C tau` is also valid. No condition `k_C<1` is required:
existence and invertibility have already been proved by the original Z
contraction.

**Proof.** Repeating Z's Taylor bounds after left multiplication by `C`
gives

\[
 \|C(G_z-I)\|\le k_C,\quad
 \|CG_{wz}\|\le m_{1,C},\quad
 \|CG_{wwz}\|\le m_{2,C},\quad
 \|CG_{zz}\|\le m_{zz,C}.
\]

Expanding `C G(w,z)=0` in its normal variable gives

\[
 Cz=-Cp-C(G_z(w,0)-I)z
      -\tfrac12CG_{zz}(w,0)[z,z]-\text{third-order normal remainder}.
\]

The normal third derivative is bounded by `L3,C x³`; this gives the first
line of (28), including its factors `1/2` and `1/6`. Differentiating
`G(w,z(w))=0` once and twice gives

\[
 CDz=-CG_w-C(G_z-I)Dz,
\]

\[
 CD^2z=-CG_{ww}-2CG_{wz}Dz-CG_{zz}[Dz,Dz]
                            -C(G_z-I)D^2z.
\]

Use `||CG_w|| <= b1,C+m1,C tau`,
`||CG_ww|| <= b2,C+m2,C tau`, and the original `Z1,Z2` bounds in the
remaining factors. This proves (28). ∎

Consequently the stronger versions of (5) and (8) are

\[
 \boxed{\epsilon_A^{\rm local}
    =\tfrac12(\|AH_2\|+T_{2,AX})\delta^2,\qquad
        E_A^{\rm polynomial}
    =\tfrac12\|AH_2\|\delta^2+T_{0,AX}.}                            \tag{29}
\]

The same replacement applies to `R_s` and `g_c R_s` in the orientation
inequalities. The tensors `D³p(0),D⁴p(0),D²G_z(0,0)`, the mixed
second-derivative tensors, and the monomial weights are cached once per
source ball. Each output map then only requires left matrix products,
small norm certifications, and scalar arithmetic.

### Measured and replayed sharpness of the simpler bound

**NUMERICAL.** `curvature_survey.py` evaluated all 8,284 nonlinear T1
output maps in the 193 successfully modelled sample balls, using 1,336
unit directions per centre. For the simpler bound
`C_A=||AH2||+||AX||Z2`, its ratio to the largest sampled centre curvature
had median 3.3453, 90th percentile 16.1851, and maximum 683.068. The
flattened centre tensor alone had median ratio 1.3949 and maximum 1.9182.
This separates the principal numerical loss: the scalar normal-Hessian
bound, rather than flattening the centre tensor.

**CERTIFIED.** `curvature_replay.py` replayed the selected directions in
Arb for all 1,187 nonlinear T1 output maps on 33 favourable balls. Every
map passed

\[
 \|AH_2\|+\|AX\|Z_2
   <3\|AH_2[v,v]\|,\qquad \|v\|=1.
\]

The largest certified ratio upper bound was
`2.962358040490293`. Since `D²Q(0)=H2`, this proves a factor below 3
against the true **whole-ball Hessian supremum** for those listed maps.
It does not prove a factor below 3 for the Taylor remainder on every
sphere patch. The witness file is `results/curvature_certified_33.json`.

### Replay of the refined weights on all successful sample models

**CERTIFIED.** `refined_export.py` constructed the cache and replayed
(25)--(29) for all 8,284 nonlinear T1 maps on the 193 successful Z models.
It writes `results/refined_weights_seed_j.json` for every source and the
aggregate `results/refined_weights_summary.json`.

For 6,819 maps, the refined whole-ball Hessian bound is less than three
times the exact centre directional curvature witness. Every nonlinear
map passes this factor-three test on 155 of the 193 balls. The median
reported certified ratio upper bound is 2.0683; its 90th percentile is
4.5364. Replacing `||AX|| tau` by the weighted value bound improves that
normal remainder floor by a median factor 2.9423, a 90th-percentile factor
5.7855, and a maximum factor 14.6090. These distribution statistics group
rigorously verified per-map bounds; they are not a uniform theorem for
all seeds above an `R` threshold.

**Measured failure region.** The largest refined Hessian ratio upper
bound is 71.5943 at seed 2257, group 41 (target 1890). Its numerical centre
`R` is 43.3195, the certified whole-ball lower bound is 17.1505, and the
original contraction bound is 0.6762. Seed 2124, group 45 has ratio 59.5115,
numerical centre `R=39.3965`, certified whole-ball `R>=15.7466`, and
contraction bound 0.6897. Conversely every one of the 1,603 sampled output
maps whose numerical centre `R>=330` has a certified Hessian ratio below
2.6230. This last statement is explicitly a statement about the sampled
maps. Some maps in the numerical centre range `250<=R<300` still have a
ratio above 14, so a scalar `R` cut alone has not been proved sufficient.

### An actual finite-radius Taylor-remainder sharpness certificate

The same exported bounds provide a check of the original-centre Taylor
remainder without a further point solve. Let `v` be the exact unit
direction used above, let `t_low <= ||AH2[v,v]||`, and let `T0` be the
certified weighted normal value bound. On the original source ball put

\[
 U_A=\tfrac12\alpha_A r^2+T_0,\qquad
 L_A=\tfrac12t_{\rm low}r^2-T_0.
\]

**PROVED.** The exact supremum

\[
 S_A=\sup_{\|w\|\le r}
       \|A(Q(w)-Q(0)-DQ(0)w)\|
\]

satisfies `L_A <= S_A <= U_A`: use (1) and the reverse triangle
inequality at `w=rv` for the lower bound. Consequently `U_A<3L_A` is a
genuine factor-three Taylor-remainder certificate when `L_A>0`.

**CERTIFIED.** `taylor_sharpness_replay.py`, applied to the replayed weight
files, verified `U_A<3L_A` for 7,590 of the 8,284 maps and `U_A<2L_A` for
5,621 maps. Every nonlinear map on 167 source balls passes the
factor-three check; every map on 65 balls passes the factor-two check.
There are 8,257 positive directional lower witnesses. Among those, the
median ratio upper bound is 1.8323 and the 90th percentile is 2.7822.
The complete per-map results are in `results/taylor_sharpness.json`.

This is a statement about linearization at the **original source centre**
over its entire ball. A corresponding factor-two or factor-three
certificate at every sphere patch centre is **NOT ESTABLISHED** by these
computations. The local enclosure theorem (29) is valid there, but its
sharpness requires a local lower witness.
