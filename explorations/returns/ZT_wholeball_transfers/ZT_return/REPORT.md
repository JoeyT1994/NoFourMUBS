# Return ZT — Output-weighted whole-ball boundary transfers

**Prepared from `ZT_wholeball_transfers(1).zip`, 25 October 2026.**

## 1. Result and exact scope

**PROVED.** A single verified Z normal form supplies output-weighted local Taylor bounds on every sphere patch. The output map can be kept inside the projected residual calculation, improving both the value correction and the Hessian correction. An actual patch-centre value and derivative can be enclosed using the original contraction; a fresh existence contraction is unnecessary. The exact dyadic coverage traversal is retained.

**CERTIFIED.** 193 of the 200 sampled source spheres have complete new interval-replayed transfer covers. On these sources the count is **937,968 original boxes → 344,174 certified patches**. Every included target test, both required orientation signs, and the exact integer sphere-coverage traversal passed. `per_ball_counts.csv` reports every sampled source separately and links to its replay record.

**CERTIFIED.** The entire edge sphere has **1,171,965 original boxes → 55,345 certified patches**, a factor of **21.1756**. These are 53,319 one-centre polynomial patches and 2,026 actual-centre Taylor patches. All 55,345 are checked by the new method. The edge's source-ball Hessian is below **1.872820041** in framed coordinates; its raw-parameter bound is below **4.431139798049 on the same ellipsoid**.

**CERTIFIED.** The output-weighted seed bounds have actual original-centre Taylor-remainder overestimation below a factor of three for every listed nonlinear T1 output on **167 of the 193 successful source models**. All **1,440 edge output maps** have global Hessian bounds within **2.142194 times** the true global Hessian supremum. These two sharpness claims concern explicitly different suprema; neither is advertised as a factor-three theorem for every individual sphere-patch remainder.

**CERTIFIED obstruction to the proposed scale.** For seed 6, the original 42 transfer descriptors and windings require at least **627 leaves** under FORMAT's exact traversal. This is proved by 2,184 interval noncontainment witnesses. Better remainder bounds alone cannot turn that fixed choice of transfers into a few-dozen-patch certificate.

**NOT ESTABLISHED.** Tens to a few hundred patches for every source sphere; a few-hundred-patch edge cover; a uniform factor-three estimate for every sphere-centred patch; a uniform criterion depending only on R; replacement of the four near-edge T3 source certificates; a Lean implementation. This return proves and replays local branch and boundary-transfer statements. It invokes no MUB exclusion, global atlas completeness theorem, or Stage C calculation.

### Status convention and geometric dependency

**PROVED** means an analytic theorem under the explicitly stated hypotheses. **CERTIFIED** means exact or outward interval computation with supplied replay code. **NUMERICAL** identifies candidate search, diagnostics, and unreplayed proposed covers. **NOT ESTABLISHED** identifies the remaining claims. A section's status applies to its assertions unless a more specific label is given.

All analytic branch conclusions retain precisely Z's local matched-completion germ, or the analogous local analytic F6-012 germ for the edge chart. The supplied `context/Z_THEOREM.md`, `context/PROOF.md`, and chart definitions contain these local premises. The new contraction proves their extension over the actual source ball; a pre-certified whole source ball is not assumed. Transfer replays prove the geometric and orientation conditions in the brief; they do not recheck unrelated labels or exclusion data in the development certificate.

## 2. The usable patch certificate

**PROVED.** Write the verified horizontal normal form as

\[
Q(w)=Q_0+Uw+\tfrac12H_2[w,w]+Xz(w),\qquad \|w\|\le r.
\]

For an exact output matrix $A$, let $\alpha_A\ge\|AH_2\|$. The refined implementation supplies

\[
\|AXz\|\le T_{0,A},\qquad
\|AXDz\|\le T_{1,A},\qquad
\|AXD^2z\|\le T_{2,A}.
\]

These constants are obtained by multiplying the centre residual tensors by $AX$ **before** taking norms. Appendix A, Section 10 gives every constant and its proof. The formulas do not contain the destructive scalar substitution $\|A\|\|M\|^2$.

For an actual anchor $c$ in the original closed ball, the requested local enclosure is

\[
\boxed{
\|A(Q(w)-Q(c)-DQ(c)(w-c))\|
\le \tfrac12(\alpha_A+T_{2,A})\delta^2
}
\]

whenever $w$ also belongs to the original ball and $\|w-c\|\le\delta$. Both endpoints lie in a convex ball, so the entire Taylor segment is controlled. A sphere-centred circumscribed ball need not lie inside the source ball; no evaluation at its exterior points is used.

The cheaper polynomial mode uses

\[
P_c=Q_0+Uc+\tfrac12H_2[c,c],\quad V_c=U+H_2[c,\cdot],
\qquad E_A=\tfrac12\alpha_A\delta^2+T_{0,A}.
\]

Here $c$ may be the dyadic midpoint even when it lies outside the source ball: $P_c,V_c$ are algebraic polynomial evaluations. The branch itself is used only on the original sphere. The nonzero $T_{0,A}$ floor is removed by switching to the actual-centre method.

### Rigorous patch-centre jets

**PROVED; IMPLEMENTED.** If the original normal contraction has factor $\kappa<1$, any rational proposal $z_m$ inside its normal tube gives

\[
\|z(c)-z_m\|\le\frac{\|G(c,z_m)\|}{1-\kappa}.
\]

An interval evaluation of this residual encloses the true centre. An interval solve of the differentiated projected equations gives $DQ(c)$. Floating Newton iterations only propose $z_m$; the root enclosure and inverse are certified. This reuses the original contraction. The dephased phase lift used to construct $W$ is retained in $G$, while horizontal phases are used for the invariant transfer output.

**PROVED.** Recentring Z at $(\theta_0+Mc,M,\delta)$ also works if that new whole-sub-ball test passes. It supplies its own $\tau_c,Z_{2,c}$ and output-weighted tensors. Such a pass is a new extension beyond the old ball when the sub-ball protrudes; it cannot be inferred merely from the old radius. Recentring is available as a tighter alternative, but the achieved counts use the cheaper original-contraction methods.

### Target and orientation tests

**PROVED.** For a T1 transfer set

\[
A=M_l^{-1}L_{IJ}g,\qquad
a=A P_c+M_l^{-1}(2\pi N-\theta_{0,l}),\qquad B=A V_c.
\]

The ordinary target bound uses the maximum of $\|a+B(v-c)\|$ at the 16 box vertices plus $E_A$. A sharper valid bound on the sphere is

\[
\boxed{
\sqrt{\max\!\left\{0,\max_v\{\|a+B(v-c)\|^2-\lambda(\|v\|^2-r^2)\}\right\}}+E_A<r_l,
\quad B^TB-\lambda I\succeq0.
}
\]

The expression inside the maximum is convex, and its sphere correction vanishes at every relevant point. An Arb LDL test certifies the positive-semidefinite shift. The implementation takes the best of five verified choices including $\lambda=0$; choosing only the largest permissible shift can be worse at interior vertices.

The two orientation tests keep the exact signature value and gradient at the affine-model centre. The 24-term sine identity gives $\|D^2\psi\|\le72$, hence a quadratic error $36\eta^2$ in projected side-phase distance. The scalar gradient is applied before taking the normal and quadratic norms. Appendix A states the explicit formula and proof for each side. The production refined checker improves the target residual bound and retains the already rigorous orientation constants.

**Integration requirement — PROVED.** These tests certify the **intersection of the listed dyadic box with the sphere**. The exact coverage traversal is unchanged. A kernel theorem that currently concludes transfer on the entire box must be replaced by the sphere-restricted transfer lemma. Exterior vertices are used to bound a convex polynomial; the nonlinear branch need not exist at those vertices.

## 3. Counts for the supplied 200-ball sample

**CERTIFIED input counting.** The full CSV contains 2,328 source balls and 11,430,119 boxes: 9,159,471 T1, 2,266,120 T0, and 4,528 T3. The complete-transfer sample supplied in the archive contains exactly 200 balls and 1,167,746 original boxes. No count below is extrapolated to the other 2,128 balls.

**NUMERICAL candidate counts, with certified replays identified separately.** The two searches use the supplied transfer descriptors and exact dyadic subdivision pattern. They are constructive searches, not minimum-cover optimizations.

| Method on all 200 sample balls | Total boxes including retained leaves | Median | 90th percentile | Complete proposals without retained leaves |
|---|---:|---:|---:|---:|
| Supplied cover | 1,167,746 | 4,381 | 8,353.3 | — |
| Output applied after the normal norm | 714,717 | 1,977.5 | 4,956 | 91 |
| Output retained inside the normal residual | 572,919 | 1,647.5 | 2,724 | 165 |

In the refined search, 339,866 patches passed the numerical candidate test. Of the retained 233,053 original leaves, 229,778 belong to the seven balls where the source Z contraction fails; only 3,275 belong to otherwise successful source models. Thus the latter 193 sources have a proposed total of 343,141 cells, versus 937,968 originally.

**CERTIFIED achieved covers.** At report assembly, **193 sampled source spheres**, totalling **344,174 patches**, have complete outward-Arb replay and exact coverage. The corresponding original count is **937,968**. The worst target margin among these complete covers is greater than **3.841781722E-7**, and the worst orientation margin is greater than **1.417751245**. The per-ball table distinguishes proposed totals, retained leaves, and genuinely certified complete covers.

The final covers contain **340,655 polynomial tests and 3,519 actual-centre Taylor tests**. Among these 193 sources, the median decreases from **4,284 to 1,624**, the new 90th percentile is **2,594.4**, and the largest new cover has **6,008 patches**. These are statistics of the achieved finite certificates, not estimates for the unsupplied spheres.

The last 28 candidate covers initially retained 3,275 original leaves. Actual-centre tests certified 22 of those covers directly. On the remaining six sources, 134 failing boxes required one or two rounds of dyadic child refinement. The final count is 1,033 patches above the numerical 343,141-cell proposal; all resulting patches and all six coverage traversals passed. Final repaired cover lists and replay records are in `counts/refined_repaired_results/` and `counts/certified_repaired_spheres/`.

Keeping the other seven sources' 229,778 original fallback boxes gives **573,952 cells across the 200-source sample**. Only the 344,174 newly checked patches on the 193 successful sources are certified by this new verifier; the retained fallback boxes still rely on the original verification route.

| Source index | Original boxes | Achieved certified patches | Status |
|---|---:|---:|---|
| 6 | 2,778 | 1292 | CERTIFIED full sphere |
| 8 | 2,984 | 1506 | CERTIFIED full sphere |
| 23 | 6,742 | 3193 | CERTIFIED full sphere |
| 73 | 3,654 | 1247 | CERTIFIED full sphere |
| 104 | 3,213 | 1165 | CERTIFIED full sphere |
| 937 | 1,847 | 577 | CERTIFIED full sphere |
| 2089 | 1,095 | 542 | CERTIFIED full sphere |
| 2299 | 887 | 384 | CERTIFIED full sphere |

The 91 complete covers from the simpler method were independently replayed before refinement: all 140,306 patch tests passed, replacing 325,839 original boxes. The refined verification recomputes its own output-weighted constants; it does not trust the numeric search cache or the exported bounds JSON. An original leaf listed as a fallback is not itself an interval certificate.

## 4. Why the existing choices do not yield a few dozen patches

**CERTIFIED.** Exact integer sphere counting gives 16 cells at level 1, 256 at level 2, 2,080 at level 3, and 16,960 at level 4. The level-2 count includes 32 tangency-only cells required by the supplied closed-box traversal.

For seed 6, a finite noncontainment certificate excludes the root box, 15 of its 16 level-1 children, and 36 of the 240 level-2 children of those blocked orthants. For each blocked node and each of the source's 42 recorded transfer descriptors, a point

\[
w=r\,v/\sqrt{v\cdot v},\qquad v\in\mathbb Z^4,
\]

lies in that sphere patch and maps strictly outside the descriptor's target. Membership is checked with exact integer square comparisons. The output distance uses the full Z polynomial with its normal correction subtracted as an error bound. There are 2,184 successful interval inequalities; the smallest normalized outside margin exceeds $0.0003377482199989$.

Every blocked node must therefore be subdivided by FORMAT's traversal. Counting every unblocked child optimistically as one admissible leaf gives

\[
\boxed{1+204+422=627\text{ leaves at minimum}.}
\]

This is a lower bound for those **fixed descriptors and stored windings** under the specified traversal. It does not exclude smaller covers using additional transfer choices, a different cell structure, or a different coverage proof. The earlier affine zero-remainder survey is only a diagnostic; it is not used to prove this lower bound.

## 5. Edge sphere

**CERTIFIED.** The supplied F6-012 edge ball is covered by 55,345 new patches, with exact coverage checked at 110,177 traversal nodes. All target and orientation inequalities passed. The target margin exceeds $8.7921267\times10^{-8}$; the orientation margin exceeds $0.3847124436$. The full replay took approximately 246 seconds in the recorded run. Timing is an implementation measurement, not a theorem about Lean-kernel cost.

The whole source ball is handled by an augmented full-phase system with 22 normal coordinates. It preserves three seed cross-ratios and adds the signed side-signature equation

\[
\psi_h(Q(w))=-\tfrac12(Mw)_4.
\]

The projected residual therefore has 31 equations before taking its Gram left inverse. The local F6-012 germ supplies compatibility; projected uniqueness and the real-analytic identity theorem recover all full equations over the whole ball. The fold where $R=0$ is included. There is no division by $R$.

For the exact radius stored as `0x1.d70a3d70a3d71p-4`, displayed as 0.115, the certified constants include

\[
\kappa<0.215815333889,\quad \tau<0.000944434626,
\quad \|D_w^2Q\|<1.872820041.
\]

The raw $p$-coordinate consequence is $\|D_p^2Q\|<4.431139798049$ on $p\in M\overline B_r$. This is the coordinate-qualified replacement for the very large chart bound in the brief. It makes no assertion on a larger isotropic raw-parameter domain.

**PROVED.** The same implicit-system method carries over to the original seven-unknown side systems. Appendix B gives the exact first and second derivative formulas and the output chain rule. The delivered implementation uses 22 full-phase normal coordinates because the desired phase output is linear in the normal variable. A radius-certified direct seven-unknown implementation is not claimed.

## 6. Measured and certified sharpness

**PROVED.** In four input dimensions, the flattened norm of a symmetric vector-valued Hessian is at most twice its true diagonal quadratic norm. With exact tensor norms and a nonzero weighted centre Hessian, recentered Z consequently has limsup at most two for the ratio of its bound to the true full-subball Taylor-remainder supremum as the subball radius tends to zero. Appendix A gives the proof and a finite-radius factor-three sufficient test. It does not turn this asymptotic statement into a claim about all patches at their existing sizes.

**CERTIFIED.** For all 8,284 nonlinear T1 maps on the 193 successful source models, the refined normal bounds were replayed. A directional centre witness proves a factor-three global-Hessian estimate for 6,819 maps; every map passes on 155 whole balls.

There is a stronger finite-radius result for the actual source-centre Taylor remainder. If $t_A$ is a certified lower witness for $\|AH_2[v,v]\|$, define

\[
U_A=\tfrac12\alpha_A r^2+T_{0,A},\qquad
L_A=\tfrac12t_A r^2-T_{0,A}.
\]

At $w=rv$, the reverse triangle inequality proves the lower bound, so the true full-ball remainder supremum lies between $L_A$ and $U_A$. The Arb replay certifies $U_A<3L_A$ for **7,590 maps** and $U_A<2L_A$ for **5,621 maps**. Every map passes the factor-three test on **167 balls**, and the factor-two test on **65 balls**. These are actual upper-versus-lower certificates, not sampled guesses of a supremum.

**CERTIFIED.** All 1,440 edge transfer output maps have their refined global-Hessian bound below 2.142194 times a verified directional-centre lower witness; hence also below that factor times the true global supremum. The unweighted edge Hessian bound is within 2.339152 times its true supremum. The witness directions are fixed and replayed in Arb.

**NOT ESTABLISHED.** A factor-two or factor-three estimate for the true Taylor remainder about every sphere-patch centre. The local upper enclosure is proved and implemented. A local sharpness claim additionally needs a lower witness on that particular patch. The above source-centre and global-Hessian results are not substituted for it.

## 7. Failure region and fallback

**CERTIFIED outcome; NUMERICAL location diagnostics.** Whole-ball Z succeeds on 193/200 sampled sources and fails on exactly

`2264, 2279, 2297, 2313, 2325, 2326, 2327`.

Their supplied centre-$R$ diagnostics lie between 0.5168659233 and 29.0503550763. All sampled sources with that diagnostic at least 30 pass this contraction. This is a statement about these finite data, not a uniform theorem on an $R$-defined parameter region.

The five failures with centre diagnostic below 10 have numerical frame condition numbers approximately 42.6–105.3. All four T3 sources—2297, 2325, 2326, and 2327—are in this failed group. Their 4,528 source-to-edge transfers remain with the original fallback route. The newly certified outgoing edge sphere does not automatically certify these incoming T3 transfers.

Even successful Z models can have a loose normal Hessian. Seed 2257 has contraction factor about 0.6762 and $Z_2\approx45.23$; seed 2124 has factor about 0.6897 and $Z_2\approx51.24$. Output weighting improves these cases substantially but does not make every Hessian estimate three-sharp. In the sample, all 1,603 maps with supplied centre $R\ge330$ pass a Hessian ratio below 2.623, while isolated maps below that range remain much worse. No global $R$-only sufficient condition is proved.

**Implemented fallback.** Use the polynomial test first. When its nonzero normal-correction floor prevents acceptance, use an actual centre jet and the quadratic local bound. Keep fine boxes where either test still fails. If the source whole-ball contraction fails, retain the original branch-certification and transfer method; the new checker reports failure instead of silently assuming that branch certificate.

## 8. Replay, arithmetic, and provenance

**CERTIFIED arithmetic policy.** Float SVD, QR, Newton iterates, and candidate searches are proposals. Arb interval comparisons, verified matrix solves, LDL Gram tests, and exact integer coverage decide acceptance. Exact hexadecimal input floats are treated as their binary rational values. The original phase winding conventions are checked against the continuous source lift over the full ball.

The runtime used Python 3.12, NumPy, and python-flint 0.9.0 at 224-bit precision for the new analytical bounds. Python-flint documents rigorous midpoint-radius error bounds and separated interval comparisons; approximate linear algebra is not used for an acceptance decision. See [Python-flint general concepts](https://python-flint.readthedocs.io/en/latest/general.html) and [FLINT real matrix arithmetic](https://flintlib.org/doc/arb_mat.html).

The verifier handles a python-flint 0.9 generic-power issue for intervals straddling zero, uses explicit multiplication in the affected LDL steps, and rejects nonfinite bounds. An upper-only Frobenius helper is never used to establish a lower sharpness or noncontainment witness; those use enclosing norms. Negative controls reject changed windings, malformed boxes, and nonfinite bounds.

`README.md` gives short and full replay commands. `RESULTS_SUMMARY.json` records the assembled achieved status; `per_ball_counts.csv` has all 200 rows. The complete supplied context, including the development certificate, is included so that the handoff is self-contained. The original context sources are preserved; compatibility changes are confined to the delivered verifier and its `vendor/` copies. Hashes of the replay inputs and code are recorded with the batch results.

## Appendix A — Seed-ball and general patch proofs


**PROVED, conditional on the local matched-completion germ used by return Z.**
Every statement below is a theorem about a successfully verified Z normal
form. Numerical success on a particular seed, patch, or collection of patches
is a separate question. None of these arguments uses the global MUB covering
theorem or Stage C.

### 1. Precisely what is available from one Z computation

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

### 2. A genuine local Taylor enclosure with no new contraction

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

#### Recentring Z itself

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

### 3. The cheapest patch model: recenter the polynomial only

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

### 4. A sphere-aware vertex bound for the target

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

### 5. Explicit orientation inequalities

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

### 6. Cheap rigorous values and derivatives at an actual patch centre

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

### 7. Phase lifts, winding checks, and exact coverage

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

### 8. What can be proved about sharpness

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

### 9. Code audit of `zt_patch.py`

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

### 10. Stronger output weighting through the projected equation

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

#### Measured and replayed sharpness of the simpler bound

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

#### Replay of the refined weights on all successful sample models

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

#### An actual finite-radius Taylor-remainder sharpness certificate

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


## Appendix B — Edge-chart proof and certificate


This appendix concerns only the supplied F6-012 chart and its boundary transfers. No MUB exclusion theorem, atlas completeness theorem, or Stage C calculation is used.

### 1. Results and scope

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

### 2. The augmented normal system

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

### 3. Explicit global derivative constants

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

### 4. Preserve the output in the normal correction

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

### 5. Exact patch centres without new branch assumptions

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

### 6. Relation to the seven-unknown system

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

### 7. Edge-sphere counts and limitations

**NUMERICAL proposal.** The deterministic top-16-candidate search produced 53,319 polynomial patches and 2,026 fine cells requiring the actual-centre method, for a total of 55,345 cells. The original edge sphere has 1,171,965 boxes. The proposal uses levels 2–7; it does not reach the brief's goal of a few hundred edge patches.

**CERTIFIED replay.** Every one of the 55,345 cells passed: 53,319 with the global polynomial test and 2,026 with the actual-centre Hessian test. The exact coverage traversal visited 110,177 nodes. Across the complete cover, the certified target margin is greater than 8.7921267e-8 and both orientation margins are greater than 0.3847124436. The replay took about 246 seconds. There are no unverified original-leaf fallbacks in this final cover.

The proposal file is `edge_proposed_patches.json`; the 2,026 cells are in `edge_proposed_fallback.json`. Despite that historical filename, the replay does **not** accept those original leaves on trust. It applies the new augmented-contraction centre jet and weighted Hessian test to every one of them. `edge_replay_summary.json` supplies the final all-patch verdict, minimum margins, and exact coverage-node count.

**NOT ESTABLISHED.** Optimality of these patch counts, a few-hundred-patch edge cover, and a uniformly sharp third-order patch Taylor remainder are not proved. The 55,345-cell cover is a simple reproducible search over the supplied transfer descriptors. Improved target selection, true-centre tests at coarser levels, or tighter orientation ranges can reduce it further; the present count is an achieved cover, not a lower bound.

**NUMERICAL independent diagnostic.** Analytic differentiation of the seven-unknown systems and the forced block, checked against the full-phase centre tensor, gives horizontal Hessian flattening norms 1.1138–1.1943 at 1,000 deterministic sphere points, with a maximum matched-completion defect below 3.45e-15. Its full centre Hessian agrees entrywise with the independent augmented-system tensor to less than 3.13e-15; a directional central finite difference with step 0.001 agrees to 4.36e-7. These samples are not used in any certificate. The certified directional lower witnesses in Section 1 have a different, rigorous status.

### 8. Replay and arithmetic details

- `edge_augmented.py`: augmented whole-ball contraction, output-weighted constants, stored-lift identification, and raw-parameter conversion.
- `edge_replay.py`: every listed target and orientation inequality, actual-centre fallback, and exact sphere coverage.
- `edge_sharpness.py`: fixed-direction lower witnesses against certified global Hessian upper bounds.
- `edge_study.py`: untrusted candidate generation; outputs must be replayed.
- `edge_numeric.py`: independent numerical analytic jets, not a certificate.

The implementation uses Arb inequalities for every verdict. Floating QR, singular values, and Newton iterations propose data only. The Gram upper bounds are validated by Arb LDL tests. A compatibility issue with python-flint 0.9 is handled explicitly: generic `arb_interval ** 2` returns NaN for some intervals straddling zero; the LDL implementation uses multiplication instead and all output-bound functions reject nonfinite intervals. Exact coordinate and winding data are preserved. The interval proof neither invokes nor presupposes a completed global MUB covering argument.
