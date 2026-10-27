# ZC2a: cap transfers from the F6-012 X-ball

## Status and scope

**PROVED, with the hypotheses below.** A successfully checked augmented
whole-ball model of the F6-012 chart admits the same five-by-five cap
certificate as ZC. In polynomial mode its target error is

\[
\boxed{\epsilon_A=\tfrac12\alpha_A\Delta^2+\tau_A,\qquad
       \alpha_A\geq\|AH_2\|.}                                      \tag{1}
\]

In either local mode its target error is

\[
\boxed{\epsilon_A=\tfrac12 K_A\Delta^2,\qquad
       K_A\geq\sup_{\|w\|\leq r}\|AD^2Q(w)\|,}                    \tag{2}
\]

where the actual centre value and derivative are enclosed using the
**22-dimensional augmented edge system**. The quantities \(\tau_A\) and
\(K_A\) are the output-weighted bounds of `ZT_edge/EDGE_REPORT.md` §4,
recomputed for the supplied source and target output map. The same source
contraction controls both target-side orientation inequalities, including
caps that cross the source fold.

**PROVED, scope qualification.** This is a theorem about boundary transfer
geometry. Its geometric premises are the local analytic F6-012 chart germ
used by the supplied ZT edge theorem and the validity of the target seed
chart. A replay of the cap certificate verifies its analytic inequalities,
its specified transfer, and its sphere coverage. It does not independently
prove the local chart construction, recertify a target's Stage C exclusion,
or establish the entire no-four-MUB atlas. Those are separate dependencies
of the surrounding argument.

**NOT ESTABLISHED by this document alone.** Any numerical cap count,
construction runtime, full-sphere replay result, or conclusion about the
rest of the atlas. The accompanying replay report supplies the achieved
finite-certificate results. In particular, the numerical constants for
the older radius-0.115 example in `ZT_edge/EDGE_REPORT.md` §1 must not be
copied to a different source record.

All vector norms below are Euclidean. Matrix norms are induced Euclidean
norms. An output-by-input-product flattening of a bilinear tensor is a
valid upper bound for its bilinear norm; for a scalar symmetric form, the
spectral norm of its four-by-four matrix can be used instead.

## 1. Exact source and target data

### 1.1 The source model

**PROVED, conditional on the verified model.** Let \(r>0\) be the exact
stored source radius and let \(M\) be the invertible stored four-by-four
edge frame. The chart parameter is \(p=Mw\), \(\|w\|\leq r\). Distinguish
three phase representatives:

* \(q_{g,0}\), the lift of the dephased Fourier matrix fixed at the centre,
  including the entrywise integer windings required by the record;
* \(q(w)=q_{g,0}+Uw+H_2[w,w]/2+Xz(w)\), the lift in which the projected
  residual is evaluated; its increments are horizontal, but the whole
  array need not be dephased;
* \(Q(w)=\operatorname{hor}q(w)=Q_0+Uw+H_2[w,w]/2+Xz(w)\), the horizontal
  output used for transfers, with \(Q_0=\operatorname{hor}q_{g,0}\).

Here \(X:\mathbb R^{22}\to\mathbb R^{36}\) is injective and horizontal.
Its range preserves the first three seed cross-ratios. If \(\Phi\) is the
30-component row-orthogonality residual and \(\psi_h\) is the horizontal
side signature, define

\[
F(q)=(\Phi(q),\psi_h(q)),\qquad
T=\begin{pmatrix}0_{30\times4}\\-M_{4,:}/2\end{pmatrix},\qquad
G(w,z)=W\{F(q_{g,0}+Uw+H_2[w,w]/2+Xz)-Tw\}.                     \tag{3}
\]

The left inverse \(W\) has 22 rows. The whole-ball computation verifies,
on \(\|w\|\leq r\), \(\|z\|\leq\tau\),

\[
\|G_z-I\|\leq\kappa<1,\qquad
\|G(w,0)\|+\kappa\tau<\tau,\qquad
\|Dz(w)\|\leq Z_1,\qquad \|D^2z(w)\|\leq Z_2.                   \tag{4}
\]

The self-map and contraction inequalities produce a unique analytic
normal correction throughout the ball. Near the centre it agrees with
the stipulated local F6-012 chart germ. Therefore all components of
\(F(q(w))-Tw\), including those not selected independently by \(W\),
vanish throughout the connected open ball by the real-analytic identity
theorem, and on the boundary by continuity. Thus the source is an actual
Hadamard chart and

\[
\psi_h(Q(w))=-\tfrac12(Mw)_4.                                    \tag{5}
\]

This is precisely the augmented-system argument of
`ZT_edge/EDGE_REPORT.md` §2 and the whole-ball contraction of §3, not an
assumption that the supplied local germ already extends to the full ball.
Strict contraction also supplies the differentiability at a boundary
anchor needed below, either by the local implicit-function theorem or
by limits of interior Taylor segments.

### 1.2 The T1 target

**PROVED.** Fix a valid target seed chart with centre \(\theta_t\),
invertible frame \(M_t\), radius \(r_t>0\), and orientation
\(o_t\in\{-1,1\}\). Fix one T1 descriptor consisting of a signed
transposition \(g\in\{\mathrm{id},\mathrm{conj},T,\mathrm{conj}T\}\),
ordered triples \(I,J\), and an exact winding \(N\in\mathbb Z^4\).
Let \(L_{I,J}\) be the four cross-ratio rows of FORMAT §4 and set

\[
A=M_t^{-1}L_{I,J}g,\qquad
b=M_t^{-1}(2\pi N-\theta_t),\qquad y(w)=AQ(w)+b.                 \tag{6}
\]

The target-coordinate condition is \(\|y(w)\|<r_t\). It must be combined
with

\[
o_t\,\psi_h(gH(w);I,J)>0,\qquad
-o_t\,\psi_v(gH(w);I,J)>0.                                     \tag{7}
\]

The second side is the transposed vertical side, exactly as in FORMAT
§4. Under the target reconstruction/uniqueness theorem already used by
T1 transfers, (6)--(7) place the equivalence class of the source matrix in
the target's interior.

**PROVED, edge distinction.** The seed-chart shortcut that declares a
reordering of the original corner exactly linear is not available here:
only the first three edge cross-ratios are affine, and the fourth edge
coordinate is a signature, not the fourth seed phase. The supplied
`patches.Transfer` correctly disables that shortcut when
`model['edge_chart']` is true. Both target-side signs remain required.

## 2. What the output-weighted edge bounds prove

**PROVED.** For any fixed output matrix \(A\), put \(C=AX\). All weighted
constants are obtained by multiplying the projected residual tensors by
\(C\) before taking their norms. They are evaluated on the same tube
already validated by (4); there is no new weighted contraction premise.

Write \(p_G(w)=G(w,0)\). Suppose the edge computation supplies

\[
\begin{aligned}
b_{0,A}&\geq\sup\|Cp_G(w)\|,&
b_{2,A}&\geq\sup\|CD^2p_G(w)\|,\\
q_A&\geq\sup\|C(G_z-I)\|,&
m_{1,A}&\geq\sup\|CG_{wz}\|,\\
m_{2,A}&\geq\sup\|CG_{wwz}\|,&
m_{zz,A}&\geq\sup\|CG_{zz}\|.
\end{aligned}                                                   \tag{8}
\]

Integrating \(G_z-I\) along the segment from \(0\) to \(z(w)\) gives

\[
0=CG(w,z(w))=Cp_G(w)+Cz(w)
       +\int_0^1C(G_z(w,tz(w))-I)z(w)\,dt.
\]

Consequently

\[
\boxed{\|AXz(w)\|\leq b_{0,A}+q_A\tau=:\tau_A.}                 \tag{9}
\]

Differentiating \(G(w,z(w))=0\) twice, separating the identity part of
\(G_z\), and using

\[
G_{ww}(w,z)=D^2p_G(w)+\int_0^1G_{wwz}(w,tz)[z]\,dt
\]

gives

\[
\boxed{
 Z_{2,A}:=b_{2,A}+m_{2,A}\tau+2m_{1,A}Z_1
             +m_{zz,A}Z_1^2+q_A Z_2
 \ \geq\ \sup\|AXD^2z\|.}                                     \tag{10}
\]

If \(\alpha_A\geq\|AH_2\|\) and \(\chi_A\geq\|AX\|\), it follows that

\[
\boxed{K_A=\alpha_A+\min\{Z_{2,A},\chi_A Z_2\}
       \ \geq\ \sup_{\|w\|\leq r}\|AD^2Q(w)\|.}                \tag{11}
\]

An independently verified upper bound for the right side of (11) can be
used directly; it need not be decomposed by subtracting one separately
rounded Hessian estimate from another. This is the meaning of
`weighted_Hessian` in `edge_wholeball.weighted_hessian`.

**PROVED, explicit dependency on ZT.** In the notation of
`ZT_edge/EDGE_REPORT.md` §4, put
\(u\geq\|U\|\), \(x_X\geq\|X\|\), \(\beta\geq\|H_2\|\),
\(B=ur+\beta r^2/2\), and \(D=B+x_X\tau\). Its concrete bounds in (8) are

\[
\begin{aligned}
q_A={}&c_A r+\tfrac12 a_{2,A}r^2+\tfrac16 L_{3a,A}r^3
       +(d_A+L_{3,A}x_X^2 B)\tau
       +\tfrac12 L_{3,A}x_X^3\tau^2,\\
m_{1,A}={}&c_A+a_{2,A}r+\tfrac12L_{3a,A}r^2
              +L_{3,A}x_X^2(u+\beta r)\tau,\\
m_{2,A}={}&L_{3,A}x_X(u+\beta r)^2+L_{2,A}x_X\beta,\\
m_{zz,A}={}&d_A+L_{3,A}x_X^2D.
\end{aligned}                                                   \tag{12}
\]

The predictor residual tensors provide \(b_{0,A}\) and \(b_{2,A}\).
The global derivative constants use both the row-orthogonality part and
the signature part of the augmented residual. In particular, replacing
them by the 21-dimensional seed residual constants would not validate
(8). The number \(q_A\) may exceed one: the only contraction inequality
required is the unweighted \(\kappa<1\) in (4).

The basic bounds \(\chi_A\tau\) and
\(\alpha_A+\chi_AZ_2\) also remain valid. A record with
`weighted_target: false` preserves those original meanings. The weighted
edge certificate uses `weighted_target: true`, (9), and (11).

## 3. Cap geometry and the affine target model

### 3.1 Anchors

**PROVED.** Let \(v\in\mathbb Z^4\setminus\{0\}\) and let \(h\) be an
exact positive rational satisfying \(h^2<v^Tv\). Define

\[
C(v,h)=\{x:\|x\|=1,\ v^Tx\geq h\},\quad
e=\frac v{\|v\|},\quad t=\frac h{\|v\|}.
\]

For `polynomial` and `local` modes set

\[
c=\frac{rh}{v^Tv}v,
\qquad \Delta^2=r^2\left(1-\frac{h^2}{v^Tv}\right).              \tag{13}
\]

Then \(\|c\|=rt<r\), and for every \(x\in C(v,h)\),

\[
\|rx-c\|^2=r^2+\|c\|^2-2r c^Tx
\leq r^2(1-t^2)=\Delta^2.
\]

For `local_sphere` set instead

\[
c=re,\qquad \Delta^2=2r^2(1-t).                                 \tag{14}
\]

The same distance conclusion follows from
\(\|rx-re\|^2=2r^2(1-e^Tx)\). In both cases \(c\) and \(rx\) belong
to the original closed ball, so their entire joining segment belongs to
that ball. No Hessian bound outside the original ball is being assumed.

### 3.2 Polynomial mode

**PROVED.** Put

\[
P_c=Q_0+Uc+\tfrac12H_2[c,c],\qquad V_c=U+H_2[c,\cdot],
\]

\[
d=\frac{AP_c+b-AV_cc}{r_t},\qquad F_c=\frac r{r_t}AV_c.           \tag{15}
\]

For \(w=rx\) and \(\xi=w-c\), the exact polynomial identity is

\[
y(w)=r_t(d+F_cx)+\tfrac12 AH_2[\xi,\xi]+AXz(w).
\]

The final two terms have norm at most
\(\alpha_A\Delta^2/2+\tau_A\), by (9) and (13). This proves (1).
It also shows why the five-by-five matrix below acts on an affine
predictor: the squared norm of the full quadratic predictor is quartic
and cannot be inserted into a quadratic S-procedure without further work.

### 3.3 Actual-centre modes

**PROVED.** Let \(Q_c=Q(c)\), \(D_c=DQ(c)\), enclosed by the edge centre
jet as explained in §5. Put

\[
d=\frac{AQ_c+b-AD_cc}{r_t},\qquad F_c=\frac r{r_t}AD_c.           \tag{16}
\]

Taylor's theorem along the segment from \(c\) to \(w\) gives

\[
y(w)=r_t(d+F_cx)
 +\int_0^1(1-s)AD^2Q(c+s(w-c))[w-c,w-c]\,ds.
\]

By (11), (13), or (14), the integral has norm at most
\(K_A\Delta^2/2\). This proves (2) with no normal-error floor.
The exact value and derivative need not be stored as exact algebraic
numbers: their Arb enclosures are used throughout (16) and the subsequent
matrix inequality. The interval calculation therefore already accounts
for the centre-jet uncertainty.

## 4. The cap-transfer theorem

### 4.1 Target matrix certificate

**PROVED.** Let \(d,F_c\) be as in (15) or (16). Supply exact rational
numbers \(\lambda,\mu,s\) and \(a\in\mathbb Q^4\) with

\[
s\geq0,\qquad \mu\geq0,\qquad \mu^2\geq a^Ta.
\]

Form

\[
\mathcal S=
\begin{pmatrix}
\lambda I-F_c^TF_c-\operatorname{sym}(ea^T)&
 -F_c^Td-\tfrac12(\mu e-ta)\\
 -d^TF_c-\tfrac12(\mu e-ta)^T&
 s-d^Td+t\mu-\lambda
\end{pmatrix}.                                                  \tag{17}
\]

If an interval LDL factorization certifies \(\mathcal S\succ0\), then
\(\|d+F_cx\|^2<s\) for every cap point. Indeed,

\[
s-\|d+F_cx\|^2
=\binom{x}{1}^{\!T}\mathcal S\binom{x}{1}
 +(e^Tx-t)(\mu+a^Tx)+\lambda(1-\|x\|^2).                         \tag{18}
\]

The last term vanishes on the sphere, the middle term is nonnegative,
and the first term is strictly positive. This is a sufficient certificate;
no numerical optimality or losslessness assertion is needed for acceptance.
Taking \(a=0\) is permitted.

Consequently the additional strict inequality

\[
\boxed{m_t:=r_t(1-\sqrt s)-\epsilon_A>0}                        \tag{19}
\]

proves \(\|y(w)\|<r_t\) throughout the cap. The matrix is built using
the exact data and rigorous coefficient enclosures, so successful
interval pivots prove positive definiteness for the actual coefficients.

### 4.2 The two signature margins

**PROVED.** The signature is a 24-term trigonometric polynomial

\[
\psi(u)=\sum_{\nu}\varepsilon_\nu\sin(\nu^Tu),\qquad
\sum_\nu\nu\nu^T=72\Pi,\qquad
\Pi=P_3\otimes P_3,
\quad P_3=I-\tfrac13\mathbf1\mathbf1^T.
\]

Each frequency lies in the range of \(\Pi\). Therefore
\(\psi(u)=\psi(\Pi u)\), its gradient is in that range, and
Cauchy--Schwarz gives the global bound

\[
|D^2\psi(u)[a,b]|
\leq\sum_\nu|\nu^Ta|\,|\nu^Tb|
\leq72\|a\|\|b\|.                                              \tag{20}
\]

The exact integer identity behind (20) is reconstructed in
`edge_wholeball.setup`; it is the signature bound of the ZT edge report
§3. It holds on every phase array, not just on a chart neighbourhood.

For one side let \(S\) select the appropriate nine phases after applying
\(g\), and let \(R=\Pi S\). Let \(\sigma=o_t\) for the horizontal side
and \(\sigma=-o_t\) for the transposed vertical side. For polynomial mode
take \((Q_c,D_c)=(P_c,V_c)\); for local modes use the actual jet. Define

\[
f=\psi(SQ_c),\quad \gamma=D\psi(SQ_c),\quad
\ell(x)=\sigma\{f+\gamma RD_c(rx-c)\}.                           \tag{21}
\]

The following are valid **polynomial-mode** error bounds:

\[
\begin{aligned}
E_R&=\tfrac12\|RH_2\|\Delta^2+\|RX\|\tau,\\
E_\gamma&=\tfrac12\|\gamma RH_2\|_{\rm scalar}\Delta^2
                          +\|\gamma RX\|\tau.
\end{aligned}                                                   \tag{22}
\]

The following are valid **local-mode** bounds:

\[
\begin{aligned}
E_R&=\tfrac12(\|RH_2\|+\|RX\|Z_2)\Delta^2,\\
E_\gamma&=\tfrac12(\|\gamma RH_2\|_{\rm scalar}
                               +\|\gamma RX\|Z_2)\Delta^2.
\end{aligned}                                                   \tag{23}
\]

Here \(\|\gamma RH_2\|_{\rm scalar}\) denotes the norm of the four-by-four
scalar Hessian. Every \(\tau,Z_2\) in (22)--(23) is from the **edge**
model, so these bounds apply with 22 normal coordinates. The gradient is
applied before the norm. Weighted side bounds from (9)--(11) may replace
the corresponding basic bounds only after being recomputed for those
side outputs; the implemented checker does not require that sharpening.

Put

\[
D_R=\|RD_c\|\Delta+E_R.
\]

Taylor expansion of \(\psi\) at \(SQ_c\), using its invariance under
\(I-\Pi\), (20), and the source remainder gives

\[
\boxed{\sigma\psi(SQ(w))\geq
        \ell(x)-E_\gamma-36D_R^2.}                              \tag{24}
\]

To evaluate the affine minimum explicitly, write
\(\ell(x)=a_0+b_0^Tx\), \(b_e=b_0^Te\), and
\(b_\perp=b_0-b_ee\). If \(b_0=0\), its minimum is \(a_0\).
If \(-b_e/\|b_0\|\geq t\), its unconstrained sphere minimizer lies in
the cap, and the minimum is \(a_0-\|b_0\|\). Otherwise it is

\[
\min_{x\in C(v,h)}\ell(x)
=a_0+t b_e-\sqrt{1-t^2}\,\|b_\perp\|.                           \tag{25}
\]

This follows by writing a rim point as
\(te+\sqrt{1-t^2}u\) with \(u\perp e\), \(\|u\|=1\), and minimizing
the remaining inner product. The rim branch is used only if its branch
inequality is interval-certified; the full-sphere bound is always a safe
fallback. Thus a certified lower bound for

\[
\boxed{m_\sigma:=\min_{C(v,h)}\ell-E_\gamma-36D_R^2>0}           \tag{26}
\]

proves the required side sign. Perform this test separately for the
horizontal and transposed vertical sides.

### 4.3 Conclusion

**PROVED (edge cap-transfer theorem).** Assume the source model (3)--(4),
the target chart and descriptor of §1.2, and the common lift identification
of §6. Let a cap satisfy (13), or (14) for `local_sphere`. If the SOC test,
the five-by-five matrix test (17), the target margin (19), and both side
margins (26) are certified, then **every** source-sphere point
\(w=rx\), \(x\in C(v,h)\), transfers by the specified T1 descriptor into
the interior of its target seed chart.

This conclusion concerns the sphere cap. It must not be substituted for
a statement asserting the transfer on an enclosing four-dimensional
box or ball. The proof permits the source value \((Mw)_4=0\): no
division by the discriminant and no strict source-side orientation
assumption occurs. The strict orientations in (26) are those of the
chosen **target corner**.

## 5. Why the local edge jet is on the correct branch

**PROVED.** The centre computation uses the original contraction, rather
than solving an unrelated side system. For an anchor \(c\) from (13) or
(14), set

\[
q_p(c)=q_{g,0}+Uc+H_2[c,c]/2,\qquad P_1=U+H_2[c,\cdot].
\]

Choose an exact dyadic proposal \(z_m\) with \(\|z_m\|<\tau\), and
evaluate its projected residual in the fixed residual lift:

\[
\eta_c\geq
\frac{\|W\{F(q_p(c)+Xz_m)-Tc\}\|}{1-\kappa}.                    \tag{27}
\]

The contraction inequality, applied to \(z_m\) and its unique fixed
point, proves \(\|z(c)-z_m\|\leq\eta_c\). Enclose the exact root by
that ball (or its enclosing coordinate box), and evaluate
\(J_c=DF(q(c))\) over it. Differentiating the projected equation yields

\[
(WJ_cX)Dz(c)=-W(J_cP_1-T),
\]

\[
\boxed{DQ(c)=P_1-X(WJ_cX)^{-1}W(J_cP_1-T).}                     \tag{28}
\]

The inverse exists by (4), and an interval linear solve encloses it.
The term \(-T\) in (28), just like \(-Tc\) in (27), is essential. The
output value is \(Q(c)=Q_0+Uc+H_2[c,c]/2+Xz(c)\); the Jacobian is still
evaluated in the residual lift \(q(c)\). Replacing that lift by its
horizontal projection while retaining the old left inverse would change
the projected equations and is not justified.

This is exactly `ZT_edge/EDGE_REPORT.md` §5, implemented by
`edge_wholeball.edge_centre_jet`. The seed routine
`patches.centre_jet` allocates 21 normal coordinates and omits the
signature right-hand side. It cannot be called for an edge source.

## 6. Gauge, winding, and every point of the cap

**PROVED.** Let \(D_g\) denote the exact dephasing operator

\[
(D_gq)_{ij}=q_{ij}-q_{i0}-q_{0j}+q_{00}.
\]

Let \(P_{\rm rec},U_{\rm rec}\) be the stored dephased centre and frame.
The source model verifies the single whole-ball inequality

\[
\boxed{
L_{\rm lift}:=
\|q_{g,0}-P_{\rm rec}\|
+r\|D_gU-U_{\rm rec}\|
+\tfrac12r^2\|D_gH_2\|
+\tau\|D_gX\|<\pi.}                                            \tag{29}
\]

Let \(\delta(w)=Uw+H_2[w,w]/2+Xz(w)\) and define the recorded-gauge lift
\(q_{\rm rec}(w)=q_{g,0}+D_g\delta(w)\). The centre is a Fourier lift
plus exact entrywise integer multiples of \(2\pi\), so
\(D_gq_{g,0}-q_{g,0}\) is itself a row-plus-column array of integer
\(2\pi\) multiples. Consequently \(q_{\rm rec}(w)\) and
\(D_gq(w)\) exponentiate to the same dephased matrix. On the supplied
record the first-row and first-column centre windings are zero, so in
fact these real arrays coincide. In general the definition of
\(q_{\rm rec}\) also covers nonzero integer centre windings there.
For every \(\|w\|\leq r\),

\[
\|q_{\rm rec}(w)-(P_{\rm rec}+U_{\rm rec}w)\|\leq L_{\rm lift}<\pi.
\]

Each coordinate difference is also strictly less than \(\pi\). Because
\(q_{\rm rec}(w)\) is a phase lift of the dephased matrix, it is consequently
the unique entrywise representative nearest \(P_{\rm rec}+U_{\rm rec}w\)
required by FORMAT §8. This is a statement on the whole ball, and hence
simultaneously on every cap, including all of its boundary.

To compute the output, horizontal projection may be used because
\(Q(w)-q_{\rm rec}(w)\) is a row-plus-column phase array. Every corner
cross-ratio row annihilates such arrays. Signed transposition preserves
the gauge subspace, so

\[
L_{I,J}gQ(w)=L_{I,J}gq_{\rm rec}(w)
\]

as a real identity, not merely modulo \(2\pi\). The side signature is
also invariant under the induced row and column phases. Hence all target
and sign formulas use precisely the stored descriptor's phase convention.

An entrywise \(2\pi\)-winding change, by contrast, need not be a
row-plus-column array. It cannot be discarded by horizontal projection.
The verified centre choice and (29) are what justify reuse of the stored
four winding integers on every point of a cap. Independent principal
arguments at cap centres are neither needed nor permitted as a silent
replacement of this convention.

`edge_model` verifies centre-lift ambiguity below \(\pi/4\), verifies
(29) below \(\pi\), and records its certified upper bound. Its augmented
coefficients can be constructed from the original Fourier lift because
the added centre windings are exact integer multiples of \(2\pi\),
under which the residual and all of its derivatives are unchanged.

## 7. Reuse of the existing checker and exact coverage

### 7.1 Required interface changes

**PROVED, correspondence with the implementation.** The geometry, SOC
test, five-by-five matrix, LDL proof, target margin, and two signature
tests in `caps.check_cap` do not depend on the normal dimension. They can
be reused. Two dispatches are necessary:

1. For an edge source with `weighted_target: true`, obtain `T0 = tau_A`
   and `local_hessian = weighted_Hessian` from the augmented edge
   computation. Use the latter directly in local modes. The seed-only
   weighted residual cache is not a proof of these edge bounds.
2. For either local mode, call `edge_wholeball.edge_centre_jet`; use the
   seed centre routine only for a seed source.

The adapted implementation supplies the first through
`cap_weighted.target_bounds` / `edge_wholeball.cap_target_bounds`, and
the second through the explicit `edge_chart` branch in `caps.check_cap`.
`edgecaps.check_edge_caps` rebuilds the source, resolves every cap's
`group_index`, checks every transfer, and checks the independent cover.
The source parser checks the exact finite field dimensions and positive
radius; a cached model is bound to those same source fields before reuse.
Existing unweighted semantics are preserved. All accepted inequalities
are exact or interval inequalities; optimization, SVD, QR, and Newton
midpoints propose numbers only.

For kernel use, the source theorem must carry the 22-coordinate augmented
residual and the local-germ dependence. One cannot instantiate a theorem
whose premise fixes the seed's 21-coordinate residual merely by inserting
a 22-column array.

### 7.2 Coverage implication

**PROVED.** For positive thresholds, define

\[
P=\{y:v_i^Ty\leq h_i\ \text{for every listed cap}\}.
\]

The listed closed caps cover \(S^3\) exactly when
\(P\subseteq\overline B_1\). If \(y\in P\) has norm greater than one,
then \(x=y/\|y\|\) satisfies every \(v_i^Tx<h_i\), so it is uncovered.
Conversely, an uncovered \(x\in S^3\) satisfies all these strict
inequalities; finite positive slack allows \((1+\delta)x\in P\) for
some \(\delta>0\), contradicting \(P\subseteq\overline B_1\).

The existing `cap_coverage.verify_coverage` verifies the finite polar-hull
witness in exact integer arithmetic: each listed simplex is a strict
supporting facet of the convex hull of \(v_i/h_i\), each triangular ridge
occurs twice, and every dual vertex has squared norm at most one. The
support and ridge conditions certify the complete facet enumeration;
the dual norm inequalities imply \(P\subseteq\overline B_1\).
Therefore acceptance of every cap transfer and of this exact coverage
certificate proves that every X-ball sphere point transfers.

For completeness, each tested supporting simplex has four linearly
independent polar vertices on a hyperplane of offset one, hence four
affinely independent vertices. A fifth strictly supported point makes
the polar hull four-dimensional. Every triangular face of a checked
tetrahedral facet is an actual hull ridge, and an actual hull ridge has
exactly two incident facets. Requiring it twice therefore closes the
nonempty selected facet set under ridge adjacency. The facet adjacency
graph of a convex polytope is connected, so every hull facet is selected.
The origin lies strictly below each of their supporting hyperplanes of
offset one, hence is interior to that hull. Its polar is the bounded
polytope \(P\), whose vertices are precisely the checked dual vertices.
Convexity of the closed unit ball completes the implication from the
vertex norm tests to \(P\subseteq\overline B_1\).

Transfer and coverage must use the **same exact** \(v_i,h_i\). Enlarging
a cap helps coverage but invalidates a transfer witness unless its
inequalities are replayed. Dropping a cap requires a fresh coverage
proof. Changing `group_index` requires rebuilding the output and all
sign data; the old witness must never be accepted by reference to its
former group.

### 7.3 Exact format extension

**PROVED, format compatibility.** An optional `caps` member on an edge
record has the same meaning as FORMAT §4a on a seed record. Each
`group_index` refers to a T1 descriptor in that edge record's existing
`transfers` list. The source is always the edge chart, and the target is
the seed chart named by that descriptor. With this field present, its
caps and exact coverage certificate establish the edge sphere's boundary
transfer condition; the group's former boxes are not evidence used by
that cap replay. No existing field changes meaning.

## 8. Dependency ledger

**PROVED, dependency accounting.** The cap argument uses the following
specific existing results and no global atlas exclusion conclusion.

| Step in this theorem | Required input result | What is used |
|---|---|---|
| Actual edge source throughout the closed ball | `ZT_edge/EDGE_REPORT.md` §§2--3 | Local F6-012 germ; augmented contraction; analytic identity theorem; \(\tau,Z_1,Z_2\) |
| Polynomial target error | Edge report §4, value identity | \(\|AXz\|\leq\tau_A=b_{0,A}+q_A\tau\) |
| Local target error | Edge report §4, second-derivative identity | Weighted Hessian \(K_A\); chords stay in the source ball |
| Actual centre value and derivative | Edge report §5 | Original contraction residual enclosure; augmented \(-Tc,-T\) terms; 22 normal coordinates |
| Both target-side signs | Edge report §3 and ZT main `theory.md` orientation argument | Exact signature frequencies, Hessian bound 72, edge \(\tau,Z_2\), linear minimum on the cap |
| Five-by-five matrix proof | `ZC/cap_theory.md` §§1--4 | Cap geometry and the elementary quadratic identity (18) |
| Stored winding convention | `ZT_edge/theory.md` §7 and `edge_model` | Whole-ball bound (29), cross-ratio and signature gauge invariance |
| Target identification | FORMAT §4 / surrounding T1 reconstruction theorem | Target ellipsoid inclusion and both signs identify its matched chart |
| Sphere coverage | `ZC/coverage.py` / `cert/cap_coverage.py` | Exact polar facets, complete enumeration, dual norm inequalities |

**NOT ESTABLISHED by these dependencies alone.** Full atlas validity,
Lean kernel acceptance of the new edge-cap implementation, optimality of
the cap count, or a global no-four-MUB theorem. A successful finite Arb
and exact replay is labelled **CERTIFIED** in the accompanying report;
floating construction diagnostics are labelled **NUMERICAL** and do not
enter the proof.
