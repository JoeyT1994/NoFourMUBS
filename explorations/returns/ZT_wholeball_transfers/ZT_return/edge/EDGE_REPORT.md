# Edge sphere: a sharp augmented whole-ball certificate

This appendix concerns only the supplied F6-012 chart and its boundary transfers. No MUB exclusion theorem, atlas completeness theorem, or Stage C calculation is used.

## 1. Results and scope

**CERTIFIED.** On the exact edge ball in the supplied certificate, whose radius is the binary rational encoded by `0x1.d70a3d70a3d71p-4` (displayed as 0.115), the horizontal phase lift has

\[
\sup_{\|w\|\le r_X}\|D_w^2Q(w)\| < 1.872820041,
\qquad \sup_{\|w\|\le r_X}\|Q(w)-Q(0)-Uw\|<0.008444113880.
\]

The contraction is certified at 224-bit precision, without subdividing the source ball:

| Quantity | Certified upper bound |
|---|---:|
| Normal dimension | 22 |
| Contraction factor \(q\) | 0.215815333889 |
| Normal correction \(\tau\) | 0.000944434626 |
| Centre Hessian flattening norm \(\beta\) | 1.134166995 |
| First normal derivative \(Z_1\) | 0.028661674593 |
| Second normal derivative \(Z_2\) | 0.738653045709 |
| Full Hessian bound \(\beta+\|X\|Z_2\) | 1.872820041 |
| Difference from the stored dephased affine lift | 0.019102145 |

All decimals in this table are rounded up. Full machine witnesses and replay code are supplied. The only geometric hypothesis is the local analytic F6-012 chart germ from the supplied chart construction. This is the same local-germ dependence as return Z; it is not an assumption that the chart has already been certified on the whole ball.

**CERTIFIED, coordinate qualification.** The source coordinates satisfy \(p=Mw\). The inverse-frame norm is less than 1.538189002090, so

\[
\sup_{p\in M\overline B_{r_X}}\|D_p^2Q(p)\|
 <4.431139798049.
\]

This raw-parameter bound holds on **the same ellipsoid**. It does not assert a bound on the much larger Euclidean ball of radius \(\|M\|r_X\). It is therefore the appropriate coordinate-qualified alternative to using the very large scalar chart bound mentioned in the brief.

**CERTIFIED sharpness.** An exact normalized binary-rational direction at the centre gives
\(\|H_2[v,v]\|>0.8006407690033\). Consequently the global Hessian upper bound is at most 2.339152 times the true supremum of the Hessian norm on this ball. This is a genuine lower witness, not an estimate of the maximum from a grid. `edge_sharpness.py` replays it and the output-weighted witnesses. For **every one of the 1,440 supplied edge transfer output maps**, the refined global Hessian bound is at most 2.142194 times a certified directional lower bound at the centre, hence at most 2.142194 times its true global Hessian supremum. The median certified ratio is 1.992375 and the 90th percentile is 2.046138. These ratios concern the Hessian norm on the full ball; they do not assert the same ratio for every much smaller patch remainder.

**CERTIFIED full sphere.** All 55,345 proposed cells passed their transfer tests, and exact dyadic traversal certified sphere coverage. This replaces 1,171,965 input boxes, a 21.18-fold reduction. The source data have 1,440 transfer groups. See Section 7 for the full counts and margins.

## 2. The augmented normal system

**PROVED.** Let \(\mathcal H\) be the 25-dimensional horizontal phase space. Preserve the first three seed cross-ratios \((\theta_{11},\theta_{12},\theta_{21})\), and let \(X:\mathbb R^{22}\to\mathcal H\) be any injective matrix whose range is their common kernel. In the verifier, the underlying basis is exact rational; a floating QR decomposition proposes a rational change of basis, and Arb verifies its invertibility.

Let \(\Phi:\mathbb R^{36}\to\mathbb R^{30}\) be the row-orthogonality residual used in Z. Let \(\psi_h(q)\) be the imaginary side signature for rows 0,1,2 and columns 3,4,5. Define

\[
F(q)=\bigl(\Phi(q),\psi_h(q)\bigr)\in\mathbb R^{31}.
\]

Take \(q_0\) to be the fixed dephased Fourier lift used to form the residual and its left inverse. It satisfies \(F(q_0)=0\). The normal increments are horizontal; the reported phase output is \(Q(w)=h(q(w))\), where \(q(w)=q_p(w)+Xz(w)\). The residual and its Jacobian must continue to use \(q\), not a different gauge representative. In F6-012 coordinates,

\[
\psi_h(Q(w))=-p_4/2=-\tfrac12(Mw)_4.
\]

Thus the inhomogeneous linear right-hand side is the matrix \(T:\mathbb R^4\to\mathbb R^{31}\) with its first 30 rows zero and last row \(-M_{4,:}/2\). This term is essential in both the centre Newton residual and its first derivative.

Set \(J=DF(q_0)\), and use the exact Gram left inverse

\[
W=((JX)^T(JX))^{-1}(JX)^T.
\]

Its existence is certified by an Arb solve. If \(V\) lifts the first three seed increments and \(M_3\) denotes the first three rows of \(M\), define

\[
U=VM_3+XW(T-JVM_3),\qquad
H_2=-XW D^2F(q_0)[U,U].
\]

Let

\[
q_p(w)=q_0+Uw+\tfrac12H_2[w,w],\qquad
G(w,z)=W\{F(q_p(w)+Xz)-Tw\}.
\]

Exactly as in Z, \(G_z(0,0)=I_{22}\), and the local chart germ supplies the compatibility needed for \(G(w,0)\) to vanish to third order. The higher derivatives of the linear term \(-Tw\) vanish. Z's predictor-residual, contraction, and derivative proof therefore applies with 22 normal coordinates in place of 21.

The projected equation is enough. On a small neighbourhood of the origin, projected uniqueness identifies its solution with the supplied local chart germ. Every component of
\(F(q(w))-Tw\) is real analytic and vanishes on that neighbourhood. The real-analytic identity theorem makes all 31 components vanish throughout the connected open ball; continuity includes its boundary. In particular, the completed matrix is exactly Hadamard and has the required fourth chart coordinate throughout the ball.

This argument avoids division by the vanishing discriminant \(R\). The fold \(p_4=0\) is included, and no orientation test that would require \(R>0\) is imposed on the source edge chart.

## 3. Explicit global derivative constants

**PROVED and CERTIFIED.** The 24-term sine expansion of the side signature has integer frequencies \(\nu\in\mathbb Z^9\) satisfying

\[
\sum_\nu\nu\nu^T=72(P_3\otimes P_3),\qquad
\max_\nu\|\nu\|^2=18.
\]

The verifier reconstructs these frequencies and checks the first identity in exact integer arithmetic. Cauchy–Schwarz gives

\[
\|D^2\psi_h\|\le72,\qquad
\|D^3\psi_h\|\le72\sqrt{18}.
\]

Partition \(W=(W_\Phi,W_\psi)\). Combining these with Z's global bounds for \(\Phi\), valid bounds for the projected augmented residual are

\[
L_2=2\sqrt3\|W_\Phi\|+72\|W_\psi\|,
\qquad
L_3=2\sqrt6\|W_\Phi\|+72\sqrt{18}\|W_\psi\|.
\]

The other constants are computed from the exact centre tensors and the prescribed frame, before taking norms. The implementation reconstructs \(F\) as a finite trigonometric polynomial: 90 row-pair monomials and the 24 side-signature frequencies. The cubic and quartic predictor residuals and the second normal-Jacobian coefficient are formed as tensors; only then are their norms bounded by Arb LDL Gram tests. The fifth-order and normal-third-order remainders are finite sums of explicit monomial bounds. Thus all constants are finite and replayable, and no fitted Hessian constant enters a verdict.

## 4. Preserve the output in the normal correction

**PROVED.** The basic bound

\[
C_A^{\rm basic}=\|AH_2\|+\|AX\|Z_2
\]

is valid, but it is unnecessarily large for several edge transfers. Let \(C=AX\). Prefix every projected residual tensor by \(C\) before taking its norm. Denote the resulting constants by
\(b_{0,A},b_{2,A},c_A,d_A,a_{2,A},L_{3a,A},L_{2,A},L_{3,A}\).
The quantities \(u,x,\beta,\tau,Z_1,Z_2\) remain the already certified unweighted ones. Put

\[
b=ur+\tfrac12\beta r^2,\qquad d_*=b+x\tau,
\]

\[
q_A=c_A r+\tfrac12a_{2,A}r^2+\tfrac16L_{3a,A}r^3
 +(d_A+L_{3,A}x^2b)\tau+\tfrac12L_{3,A}x^3\tau^2,
\]

\[
m_{1,A}=c_A+a_{2,A}r+\tfrac12L_{3a,A}r^2
 +L_{3,A}x^2(u+\beta r)\tau,
\]

\[
m_{2,A}=L_{3,A}x(u+\beta r)^2+L_{2,A}x\beta,
\qquad m_{zz,A}=d_A+L_{3,A}x^2d_*.
\]

These bound respectively \(C(G_z-I)\), \(CG_{wz}\), \(CG_{wwz}\), and \(CG_{zz}\) on the original validated tube. The weighted number \(q_A\) need not be less than one; the already certified unweighted contraction factor \(q<1\) establishes the branch and supplies \(Z_1,Z_2\). Differentiating \(G(w,z(w))=0\) twice and moving the identity part of \(G_z\) to the left gives

\[
Cz''=-C\mathcal R-C(G_z-I)z'',
\]

where
\(\mathcal R=G_{ww}+2G_{wz}z'+G_{zz}[z',z']\).
The identity
\(G_{ww}=p''+\int_0^1G_{wwz}(w,tz)[z]dt\), with \(p(w)=G(w,0)\), yields

\[
\boxed{Z_{2,A}=b_{2,A}+m_{2,A}\tau+2m_{1,A}Z_1
                 +m_{zz,A}Z_1^2+q_AZ_2.}
\]

Therefore

\[
\boxed{\|A D^2Q\|\le\|AH_2\|+
\min\{Z_{2,A},\|AX\|Z_2\}.}
\]

There is also a useful value remainder. The integral identity

\[
G(w,z)=p(w)+z+\int_0^1(G_z(w,tz)-I)z\,dt
\]

implies

\[
\boxed{\|AXz(w)\|\le b_{0,A}+q_A\tau=:\tau_A.}
\]

This \(\tau_A\), instead of \(\|AX\|\tau\), is used in the one-centre polynomial transfer test. It is crucial near the edge: for the five diagnostic maps 0,100,500,1000,1439, the certified target correction is respectively below 0.006919, 0.009056, 0.003741, 0.003925 and 0.008442, while the basic normal correction is much larger.

The weighted constants are inexpensive to reuse. The implementation caches the unweighted cubic and quartic tensors, second normal-Jacobian tensor, and per-monomial remainder weights. A new output map requires left multiplication and small Gram-norm tests, about 0.02 seconds in the measured run, rather than a new contraction.

## 5. Exact patch centres without new branch assumptions

**PROVED; implemented by `edge_replay.centre_jet`.** For an anchor \(c\) inside the closed original ball, take a rational normal-coordinate proposal \(z_m\) with \(\|z_m\|<\tau\). The original contraction gives the a posteriori error

\[
\|z(c)-z_m\|\le
\frac{\|W(F(q_p(c)+Xz_m)-Tc)\|}{1-q}.
\]

A floating or midpoint Newton iteration only proposes \(z_m\); Arb encloses its residual and checks the displayed bound. The exact centre phase and derivative then satisfy

\[
q_c\in q_p(c)+X[z],\qquad
Q(c)\in h(q_p(c))+X[z],
\]

\[
DQ(c)=P_1-X(WJ_cX)^{-1}W(J_cP_1-T),
\qquad P_1=U+H_2[c,\cdot],
\]

with \(J_c=DF(q_c)\) evaluated in the fixed residual lift, while \(Q(c)=h(q_c)\) is the horizontal output. The source contraction certifies the branch and the inverse; no new seven-unknown local branch identification is assumed.

For a dyadic cube, the anchor is its midpoint when that midpoint lies in the original ball; otherwise it is the exact radial projection of that midpoint onto the sphere. Every segment from this anchor to a point of the sphere patch lies inside the original ball. Thus the uniform weighted Hessian bound gives the genuine local error
\(\tfrac12 C_A\delta^2\), without a nonvanishing \(\tau_A\) floor.

The transfer target and the two orientation tests are then those of the main ZT patch lemma. In particular, the phase signature is bounded with its exact gradient and the global Hessian constant 72. Convex affine target bounds are evaluated on cube vertices, optionally using the verified sphere quadratic majorant. The dyadic coverage traversal is unchanged.

## 6. Relation to the seven-unknown system

**PROVED.** The method also applies directly to either seven-unknown augmented side system in `edgecert.py`. Write it as

\[
F_7(p,x)=0,\quad p=p_c+Mv,
\quad x_p(v)=x_c+Gv+\tfrac12H[v,v].
\]

With \(Y=(F_{7,x}(p_c,x_c))^{-1}\), set
\(\mathcal G(v,z)=YF_7(p_c+Mv,x_p(v)+z)\).
The same contraction and output-weighted residual proof applies, with seven normal coordinates and \(X=I_7\). The exact centre derivatives are

\[
G=-F_{7,x}^{-1}F_{7,p}M,
\qquad
H=-F_{7,x}^{-1}D^2F_7[(M,G),(M,G)].
\]

The signature coordinate enters linearly, so its large raw coefficient in \(M\) does not appear in higher trigonometric frequencies. The horizontal and vertical systems use the prescribed parameter permutation/sign change. For an explicit output phase map \(O(p,x_h,x_v)\), the chain rule keeps \(A\) attached to \(DO\) and \(D^2O\); one should not replace these by \(\|A\|\|DO\|\) before contraction.

**Implementation choice.** The delivered whole-ball verifier uses the 22-coordinate formulation because the desired phase output is linear in its normal coordinate. It avoids propagating norm losses through the forced lower-right block, its inverse, and its argument. The seven-unknown equations are used only in the optional independent numerical jet diagnostic. No radius-certified direct seven-unknown implementation is claimed in this return.

## 7. Edge-sphere counts and limitations

**NUMERICAL proposal.** The deterministic top-16-candidate search produced 53,319 polynomial patches and 2,026 fine cells requiring the actual-centre method, for a total of 55,345 cells. The original edge sphere has 1,171,965 boxes. The proposal uses levels 2–7; it does not reach the brief's goal of a few hundred edge patches.

**CERTIFIED replay.** Every one of the 55,345 cells passed: 53,319 with the global polynomial test and 2,026 with the actual-centre Hessian test. The exact coverage traversal visited 110,177 nodes. Across the complete cover, the certified target margin is greater than 8.7921267e-8 and both orientation margins are greater than 0.3847124436. The replay took about 246 seconds. There are no unverified original-leaf fallbacks in this final cover.

The proposal file is `edge_proposed_patches.json`; the 2,026 cells are in `edge_proposed_fallback.json`. Despite that historical filename, the replay does **not** accept those original leaves on trust. It applies the new augmented-contraction centre jet and weighted Hessian test to every one of them. `edge_replay_summary.json` supplies the final all-patch verdict, minimum margins, and exact coverage-node count.

**NOT ESTABLISHED.** Optimality of these patch counts, a few-hundred-patch edge cover, and a uniformly sharp third-order patch Taylor remainder are not proved. The 55,345-cell cover is a simple reproducible search over the supplied transfer descriptors. Improved target selection, true-centre tests at coarser levels, or tighter orientation ranges can reduce it further; the present count is an achieved cover, not a lower bound.

**NUMERICAL independent diagnostic.** Analytic differentiation of the seven-unknown systems and the forced block, checked against the full-phase centre tensor, gives horizontal Hessian flattening norms 1.1138–1.1943 at 1,000 deterministic sphere points, with a maximum matched-completion defect below 3.45e-15. Its full centre Hessian agrees entrywise with the independent augmented-system tensor to less than 3.13e-15; a directional central finite difference with step 0.001 agrees to 4.36e-7. These samples are not used in any certificate. The certified directional lower witnesses in Section 1 have a different, rigorous status.

## 8. Replay and arithmetic details

- `edge_augmented.py`: augmented whole-ball contraction, output-weighted constants, stored-lift identification, and raw-parameter conversion.
- `edge_replay.py`: every listed target and orientation inequality, actual-centre fallback, and exact sphere coverage.
- `edge_sharpness.py`: fixed-direction lower witnesses against certified global Hessian upper bounds.
- `edge_study.py`: untrusted candidate generation; outputs must be replayed.
- `edge_numeric.py`: independent numerical analytic jets, not a certificate.

The implementation uses Arb inequalities for every verdict. Floating QR, singular values, and Newton iterations propose data only. The Gram upper bounds are validated by Arb LDL tests. A compatibility issue with python-flint 0.9 is handled explicitly: generic `arb_interval ** 2` returns NaN for some intervals straddling zero; the LDL implementation uses multiplication instead and all output-bound functions reject nonfinite intervals. Exact coordinate and winding data are preserved. The interval proof neither invokes nor presupposes a completed global MUB covering argument.
