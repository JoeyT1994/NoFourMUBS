# Return ZC — Certified spherical-cap boundary transfers

**Prepared 26 October 2026 from the supplied `ZC_cap_transfers.zip`.**

## 1. Result and exact scope

**PROVED.** A cap transfer can be checked with a five-by-five positive-semidefinite matrix and explicit normal-form error bounds. Allowing an affine nonnegative cap multiplier makes the quadratic positivity certificate lossless for strict positivity on a genuine spherical cap. The ordinary two-scalar sphere/cap S-procedure is only sufficient; this report gives an exact counterexample to unconditional losslessness.

**PROVED.** Positive-threshold rational caps cover the unit three-sphere precisely when their complementary halfspace polytope lies in the closed unit four-ball. The supplied short coverage certificate verifies complete polar-facet enumeration with integer supporting inequalities and ridge incidence, then checks the norms of every dual vertex. Its correctness does not assume that a numerical convex-hull program returned all facets.

**CERTIFIED.** This return contains complete new cap-transfer and exact full-sphere coverage certificates for **191 of the 200 supplied seed spheres**. On exactly those sources, **920,143 original boxes and 333,983 previous ZT patches are replaced by 6,217 certified caps**. The reductions are 148.0043 and 53.7209, respectively. The certified cap counts have minimum 10, median 27, and maximum 159.

**CERTIFIED.** The smallest target margin among these complete covers is greater than 4.339134985064108e-07; the smallest required orientation margin is greater than 2.207995833033982. Target margins are in the target frame's Euclidean norm units, and orientation margins refer to the required signed imaginary signatures. All reported finite margins are outward-rounded lower bounds from Arb. Every accepted source normal form, phase-lift convention, transfer target, and required orientation is recomputed by replay.

**NUMERICAL.** Cap directions, thresholds, multiplier proposals, adaptive additions, and pruning are numerical searches. A numerical cap cover is promoted to CERTIFIED only after every cap inequality and the exact coverage certificate pass. Random sphere samples are diagnostics only. Each proposal and replay result is provided separately; `per_ball_cap_counts.csv` has one row for each of the 200 sample sources.

**NOT ESTABLISHED.** A new cap cover is not certified here for 9 sample source(s). Their IDs are `2124, 2257, 2264, 2279, 2297, 2313, 2325, 2326, 2327`. No new X-ball cap cover, T3 cap certificate, full 2,328-source result, count optimality theorem, or Lean implementation is claimed. The cap-transfer theorem extends to an independently verified augmented X-ball normal form, but the concrete augmented replay implementation is not in this input archive and was not rebuilt here.

### Status and local geometric premise

**PROVED** denotes a mathematical implication under its explicitly stated hypotheses. **CERTIFIED** denotes an exact or outward interval computation that can be replayed with the supplied code. **NUMERICAL** denotes candidate search or diagnostics. **NOT ESTABLISHED** denotes a conclusion that this return does not prove.

All branch statements retain the local matched-completion germ in `context/Z_THEOREM.md`. The source contraction extends that germ over its original ball; this return does not silently assume a previously certified whole source ball. The analogous local F6-012 germ is needed for the conditional X-ball statement. No MUB atlas completeness result or Stage C calculation is used. These certificates establish boundary-transfer geometry, not the nonexistence of four mutually unbiased bases.

## 2. Finite results and comparison

**CERTIFIED input counting.** The supplied sample has 200 sources with complete transfer lists and 1,167,746 original source-boundary boxes. The remaining source records supply target headers. This return does not extrapolate counts to their unsupplied transfer lists. The original X-ball boxes are outside the seed-sphere count.

| Seed | Original boxes | Previous ZT certified patches | Certified caps | Original boxes / caps |
|---:|---:|---:|---:|---:|
| 6 | 2,778 | 1,292 | 26 | 106.85 |
| 8 | 2,984 | 1,506 | 27 | 110.52 |
| 23 | 6,742 | 3,193 | 42 | 160.52 |
| 37 | 10,040 | 4,255 | 119 | 84.37 |
| 73 | 3,654 | 1,247 | 22 | 166.09 |
| 104 | 3,213 | 1,165 | 25 | 128.52 |
| 937 | 1,847 | 577 | 18 | 102.61 |
| 2089 | 1,095 | 542 | 13 | 84.23 |
| 2299 | 887 | 384 | 10 | 88.70 |
| 96 | 14,516 | 5,302 | 159 | 91.30 |

The comparison uses `certified_patch_count` in the supplied `ZT_per_ball_counts.csv`, rather than a preliminary proposed-patch count. Full per-source statuses, counts, margins, coverage-facet counts, and current-proposal hash matches are in `per_ball_cap_counts.csv`.

**CERTIFIED.** 193 source normal forms succeeded during candidate construction. Entries lacking a certified new full cover retain their explicit failure or open status; an old listed box is not accepted as an unverified fallback by this checker. The source models currently marked not established are `2264, 2279, 2297, 2313, 2325, 2326, 2327`. A source-model failure is a failure of this sufficient contraction test, not proof that the source branch does not exist.

**NOT ESTABLISHED — cap search.** The following source normal forms passed, but the bounded numerical construction did not produce an independently certified full cover. A proposed-cap count is not a certified sphere-cover count. The displayed polar distances are numerical diagnostics, with coverage requiring at least one.

| Seed | Proposed caps | Numerical minimum polar facet distance |
|---:|---:|---:|
| 2124 | 199 | 0.992963832440992 |
| 2257 | 206 | 0.9875358138846585 |

**CERTIFIED partial transfers.** All 405 individual cap transfers on sources `2124, 2257` passed independent target and orientation replay. Their result status is `CERTIFIED caps only`; these caps are excluded from all complete-cover totals and reduction factors above.

**CERTIFIED incompleteness of the frozen candidate lists.** The exact witnesses in `gaps/` and their replay records in `gap_replay.json` give a rational vector `y=n/d` for each remaining list, with `v_i.y<=h_i` for every cap and `||y||>1`. Consequently `y/||y||` is outside every listed cap. `verify_gap.py` checks these claims with standard-library integer and rational arithmetic. This proves incompleteness of those particular lists, not impossibility of a different cover using the available transfers. Both open sources have only T0/T1 descriptors, so omitting T3 is not the cause of their gaps.


**PROVED comparison of shape constraints.** The supplied ZT report's 627-leaf lower bound for seed 6 concerns its fixed dyadic traversal and transfer descriptors. That older noncontainment calculation is not replayed here. A cap cover uses a different region shape and a different exact coverage theorem. Therefore a smaller cap count is compatible with that lower bound. The computational gain comes from adapting region boundaries to the transfer geometry.

## 3. Implemented construction and verification

**NUMERICAL construction.** The search uses the existing T0/T1 descriptors and windings. Candidate cap axes come from source-box directions and constrained minimizers of the target predictor. Initial candidates are ordered by their supplied box coverage; thresholds are adjusted by bisection. A floating convex hull identifies uncovered polar directions, at which further caps are proposed. Redundant caps are greedily removed, followed by a complete independent replay. No new neighbour-ball catalogue or atlas search is required.

For a normalized affine target `d+F x`, write `G=F^T F`, `b=F^T d`, and diagonalize `G` numerically. At a fixed `lambda>lambda_max(G)`, the scalar-multiplier dual upper bound is

    s = ||d||² + lambda - mu*t
        + (b + mu*e/2)^T (lambda*I-G)^(-1) (b + mu*e/2),

with the minimizing nonnegative `mu` obtained from its one-dimensional quadratic. A bounded scalar search proposes `lambda`. The final certificate stores exact binary-rational `lambda`, `mu`, and `s`; the verifier never trusts the optimizer or its reported objective.

**CERTIFIED implementation.** `cap_verify.py` recomputes coefficients and errors, reconstructs the five-by-five matrix, and accepts only a strict interval LDL test. The target additionally requires `r_target*(1-sqrt(s)) > error`. The two orientation signs are checked using the exact linear-cap minimum and the quadratic signature remainder. The code also supports a nonzero four-vector affine multiplier, with its second-order-cone inequality checked independently. The achieved search primarily uses the scalar subfamily; losslessness of the stronger theorem is not substituted for a successful computational witness.

**CERTIFIED achieved variants.** Across the complete covers, 6,077 cap records use polynomial mode, 0 use the interior-anchor local mode, and 140 use sphere-anchor local mode. The `weighted_target` flag is set on 3,819 records; it activates the weighted bounds for nonlinear transfers. There are 0 records with a nonzero affine-multiplier vector. The exact coverage certificates contain 26,826 facets altogether and require 1,268,847 supporting dot-product checks. The cap-count reduction is therefore not asserted to equal a wall-clock or Lean-kernel speedup factor.

Polynomial caps use the interior cap-rim anchor and the global normal correction. Local caps use an enclosed true value and derivative from the original source contraction. The `local_sphere` mode fixes the anchor at `c=r*e` and uses `Delta²=2*r²*(1-t)`, allowing the numerical search to reuse its centre jet while varying the threshold. All Taylor segments remain in the original closed ball. Bisection is a proposal heuristic, because the chosen anchor and sufficient bounds vary with the threshold; maximal cap size is not asserted.

Caps marked `weighted_target: true` use the output-preserving normal bounds in `weighted.py`. They retain `C=AX` inside the projected residual tensors before taking norms and recompute equations (25)–(29) of the supplied `ZT_REPORT.md`. The polynomial target error is `hnorm*Delta²/2+T0_C`; the local target error is `(hnorm+T2_C)*Delta²/2`. The original source contraction remains unchanged, and no weighted contraction condition is assumed. `weighted_audit.md` and `weighted_test.json` provide the formulas, code audit, and two independently checked example outputs. Both orientation bounds remain independently checked with their original valid constants. The lossless quadratic orientation variant and direct quartic SOS variant below are proved alternatives; the achieved replay uses the explicitly described affine target and linear-orientation bounds.

**CERTIFIED input consistency.** Transfer and coverage use exactly the same stored integer normal `v` and hexadecimal threshold `h`. The combined checker sanitizes these fields before calling coverage, so additional standalone coverage aliases cannot substitute different cap geometry. The lightweight replay input preserves all seed headers, descriptor order, target indices, corners, group elements, and windings; it discards only unused original box arrays and the outgoing edge record. The full supplied input remains available in `context/` for reconstruction and provenance.

## 4. Replay and negative controls

From the extracted return directory, install `requirements.txt`, then run the following commands in its `ZC_work` subdirectory:

```bash
python -m pip install -r ../requirements.txt
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 python cap_verify.py \
  transfer_input.json.gz certificates/seed_6.json --output replay_seed_6.json
python coverage.py --self-test
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 python test_rejection.py \
  transfer_input.json.gz certificates/seed_6.json --output rejection_replay.json
```

`cap_verify.py` uses NumPy and python-flint; the independent coverage verifier uses Python integers only. SciPy is needed by proposal and hull construction, not by certificate coverage replay. `replay_all.py` rechecks all delivered complete certificates sequentially using the compact input, preventing the large original dyadic box lists from being duplicated across workers.

**CERTIFIED negative controls.** The real-data rejection suite reports **PASS** on 10 checks. It accepts the untampered real cap, rejects a negative multiplier, false zero target bound, changed winding, unsupported cap enlargement, zero normal, missing hull facet, changed dual vertex, and invalid affine-multiplier norm, and verifies that extra aliases cannot override the true cap geometry. The separate exact coverage fixture includes boundary equality and robust strict coverage cases. This tests mathematical failure modes rather than mirroring the construction code.

**CERTIFIED gap controls.** The exact uncovered-point verifier also passed one positive control and five invalid-witness controls, recorded in `gap_replay_tests.json`. Package assembly rechecks both gap witnesses against the frozen candidate lists and verifies the hashes of all 200 frozen proposals.

`results/` contains the finite replay records with input, certificate, and code SHA-256 values. `runtime_versions.json` records the measured dependency versions. A full archive manifest fixes the delivered bytes. Timing fields are measurements from this run, not a theorem about future Arb, Julia, or Lean execution time. No runtime claim is extrapolated to the entire atlas.

## 5. Proofs

The following sections give the cap-transfer certificate, its losslessness proof, explicit error accounting and alternatives, an exact example, qualitative completeness under shrinking caps, and the exact coverage criterion and its completeness proof.

## Cap-transfer theorem and a lossless quadratic certificate

**PROVED**, conditional on the same local matched-completion germ and successfully checked whole-ball normal form as `context/Z_THEOREM.md`. These arguments concern transfer geometry only. They use no MUB atlas and no Stage C result. Finite replay results are reported in Section 2 above.

### 1. Rational cap data and a useful anchor

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

### 2. A six-number, lossless certificate for any quadratic on a cap

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

#### Why the ordinary two-scalar S-lemma is insufficient

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

### 3. Target inclusion: valid quadratic surrogates

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

#### Mode A: affine target plus a norm remainder

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

#### Mode B: retain the quadratic curvature in squared distance

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

#### Mode C: a true cap-anchor jet

**PROVED.** Enclose `Qc=Q(c)` and `Dc=DQ(c)` with `patches.centre_jet`; the anchor (1) lies in the original ball, so its original contraction suffices. Let `T2,A>=||AXD^2z||` globally; the reference bound is `||AX|| Z2`. Then

\[
y(w)=A Q_c+b_l+A D_c v+\tfrac12H[v,v]+\eta_A,
\qquad \|\eta_A\|\le\tfrac12T_{2,A}\Delta^2.
\tag{9}
\]

Mode A uses `a=AQc+b_l`, `B=ADc` and `E=(alpha+T2,A)Delta^2/2`. Mode B uses the same `a,B,H` but substitutes `E0=T2,A Delta^2/2` in (7). Thus the whole-ball normal-error floor disappears. Only the value and first derivative are recentered; the fixed quadratic predictor Hessian remains inside `H`.

For T0 and the exact linear seed-corner T1 cases already recognized by `patches.Transfer`, use their exact `a0,B0` and zero remainder. Their target inequality is directly quadratic, and (2) is lossless for that target on a fixed cap.

### 4. The two orientation inequalities

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

### 5. Optional direct quartic SOS certificate

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

### 6. A one-scalar fallback using the enclosing ball

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

### 7. Exact/Arb replay contract

**PROVED.** A cap record needs rational `n,h`, a transfer descriptor, a model mode, and six rational numbers per checked quadratic. The checker must:

1. Rebuild and verify the original whole-ball normal form; preserve the local-germ dependency and continuous-lift/winding check.
2. Validate cap geometry, the transfer descriptor, the target frame inverse and the required target orientation.
3. Recompute the anchor, radius, all target and side coefficients, and outward remainder bounds. Candidate-supplied numerical bounds are not trusted.
4. Check `a0>=0` and `a0^2-sum(a_i^2)>=0` exactly for each multiplier; strict interval versions are sufficient.
5. Construct the symmetric five-by-five matrix (2) in Arb. A verified LDL factorization with positive pivots proves positive definiteness and hence strict positivity. Exact rational LDL or a rational factorization plus residual diagonal dominance can handle PSD witnesses when needed.
6. Verify the target and both orientation inequalities, except exact linear-corner cases whose orientation follows from the original whole-ball certificate as in `patches.Transfer`.
7. Verify the sphere cover by an independent exact cap-coverage theorem. Transfer acceptance alone does not prove coverage.

Only proposal generation uses floating optimization. For caps carrying a strict true quadratic margin the strengthened certificate has strict real witnesses; this is why rationalization plus interval checking can be made reliable rather than relying on an optimizer's status flag.

### 8. Edge-chart applicability

**PROVED conditionally; NOT CERTIFIED on the supplied edge data by this note.** All formulas are agnostic to the normal-space dimension and to the equations used to obtain `Q,U,H2,X,tau,Z2`. They therefore apply to the augmented 22-normal-coordinate X-ball model of ZT, provided its full model, output maps, global remainder bounds, actual-centre jet code when used, and the lift/winding conventions are supplied and replayed. Its fold causes no new division by `R` in these cap formulas. An edge sample count or full edge cap cover requires those concrete computations and cannot be inferred from the theorem alone.

## An exact full-rank example separating scalar and affine cap multipliers

**PROVED; CERTIFIED by exact rational arithmetic.** On the spherical cap
\(\|x\|=1,\ x_1\ge1/2\) in \(\mathbb R^4\), put

\[
 F=\operatorname{diag}(2,1,1,1),\qquad
 d=(-9/8,0,0,0),\qquad f(x)=\|d+Fx\|^2.
\]

The map is invertible: \(\det F=2\). On the sphere,
\[
 f(x)=3x_1^2-\frac92x_1+\frac{145}{64}.
\]
Its leading coefficient is positive, and its two endpoint values at
\(x_1=1/2,1\) are both \(49/64\). Therefore
\[
 \max_{\|x\|=1,\,x_1\ge1/2} f(x)=\frac{49}{64}<1.
\]

### Scalar cap multiplier: a strict duality gap

A scalar certificate requires the polynomial
\[
 s-f(x)-\lambda(1-\|x\|^2)-\mu(x_1-1/2)
\]
to be globally nonnegative, with \(\mu\ge0\). Evaluation at
\(x=\pm e_1\) yields
\[
 s\ge\frac{49}{64}+\frac\mu2,
 \qquad
 s\ge\frac{625}{64}-\frac{3\mu}{2}.
\]
Taking three quarters of the first inequality and one quarter of the
second eliminates \(\mu\) and gives
\[
 s\ge\frac{193}{64}>1.
\]
The bound is attained at \(\mu=9/2,\lambda=4\); the homogeneous
certificate matrix is \(\operatorname{diag}(0,3,3,3,0)\). Thus the scalar
certificate cannot verify this valid strict target \(f<1\) on the cap.

### Affine cap multiplier: a strictly positive definite certificate

The exact identity
\[
 \frac{49}{64}-f(x)
 =(1-\|x\|^2)+3(1-x_1)(x_1-1/2)
\]
uses a multiplier \(3(1-x_1)\) that is nonnegative throughout the unit
ball. Choose
\[
 s=\frac{25}{32},\qquad
 \lambda=\frac{129}{128},\qquad
 \mu=3,\qquad a=(-3,0,0,0).
\]
Then \(\mu^2=\|a\|^2=9\) and
\[
 s-f(x)-\lambda(1-\|x\|^2)
       -(\mu+a\cdot x)(x_1-1/2)
 =\frac{1+\|x\|^2}{128}.
\]
The homogeneous matrix is exactly \(I_5/128\), so it is strictly
positive definite, and \(s=25/32<1\). This certifies the target inequality with
the affine multiplier already supported by the general cap checker.

`affine_multiplier_example.py` checks the matrix, the multiplier cone,
the scalar lower bound and its attaining matrix, the true cap maximum,
and the strict target bound using only Python's `Fraction` arithmetic.
The checked values are recorded in `affine_multiplier_example.json`.

This is an exact example of the general target-certificate theorem, rather
than one of the supplied seed-ball transfers. The general quadratic
losslessness statement is proved separately by the moment-hull argument;
this finite example by itself does not prove that statement.

## Qualitative completeness of shrinking scalar-multiplier caps

**PROVED, with no useful cap-count estimate.** Although the two-scalar
S-procedure is not lossless for a fixed cap, its bound becomes arbitrarily
tight as a cap shrinks to a point. This explains why the simpler implemented
search has no intrinsic infinitesimal obstruction.

Let `||e||=1`, `a=d+Fe`, and `q(x)=||d+Fx||²`. Choose `eta>0`,
`k>(1+1/eta)||F||²`, and `epsilon>0`. In the scalar certificate take

\[
\lambda=k,\qquad \mu=2k,\qquad
s=(1+\eta)\|a\|^2+2k(1-t)+\epsilon.
\]

Then the global witness polynomial equals

\[
s-q(x)-\lambda(1-\|x\|^2)-\mu(e^Tx-t)
=(1+\eta)\|a\|^2+k\|x-e\|^2
 -\|a+F(x-e)\|^2+\epsilon.
\]

Young's inequality bounds the squared norm by
`(1+eta)||a||²+(1+1/eta)||F||²||x-e||²`. The strict choice of `k`
and positive `epsilon` make the associated homogeneous five-by-five matrix
positive definite: after the invertible change of homogeneous coordinates
`(x,z) -> (x-e z,z)`, it dominates a positive multiple of `||x-e z||²`
plus `epsilon*z²`.

For `t` tending to one, choose `eta=sqrt(1-t)`,
`k=(1+1/eta)||F||²+1`, and `epsilon=1-t`. The proposed `s` tends to
`||d+Fe||²`. A true-centre Taylor model has target and orientation errors
tending to zero at the same point. Consequently any strictly valid transfer
at that point is accepted on a sufficiently small cap by some scalar
witness. The model coefficients remain bounded on a fixed smooth source
ball; when anchors vary, the same estimates apply to their continuous limits.

If a finite family of strict transfers covers every point of a compact
source sphere and its required source model is certified, these locally
accepted caps have a finite subcover. Rational perturbations and small
shrinking can preserve strict transfer and robust coverage margins, and
generic perturbations can make the polar hull simplicial. This is a
qualitative existence statement. It does not supply a small uniform cap
count, a termination bound for the implemented greedy search, or certificates
for any of the source-model failures.

This assertion concerns the exact certificate family with arbitrarily
precise rational witnesses and interval arithmetic. The delivered search
uses binary64 proposals and the recorded replays use 224-bit Arb by
default. No universal termination claim for that fixed numerical search
or a fixed precision follows from the mathematical existence theorem.

## Exact cap coverage on S³

### Status and supported scope

**PROVED.** The criterion below is necessary and sufficient for caps with
positive thresholds. The short supplied certificate supports a full
dimensional simplicial polar hull. A nonsimplicial numerical hull is rejected;
Qhull is never part of the trusted computation. Rational perturbations of
cap normals usually remove degeneracy, but their transfer certificates must
then be recomputed for the perturbed caps.

**CERTIFIED.** `coverage.py --self-test` checks an exact eight-cap cover,
an exact robust eight-cap cover, and rejects small caps, a missing facet,
and a corrupted vertex witness. This generic fixture is separate from the
seed-ball transfer experiment.

### The polar-polytope criterion

Write a cap on the unit sphere as

    C_i = {x∈R⁴ : ‖x‖=1, v_i·x≥h_i},   h_i>0.

Normals need not be unit vectors. Define

    Q=conv{v_i/h_i},    P={x : v_i·x≤h_i for every i}=Q°.

**Theorem 1 (PROVED).** These closed caps cover S³ if and only if P⊆B⁴,
the closed unit ball. Equivalently, Q has the origin in its interior and
every vertex of P has squared norm at most one.

*Proof.* If P contains a point y with ‖y‖>1, x=y/‖y‖ obeys
v_i·x≤h_i/‖y‖<h_i, so x lies in no cap. Conversely, if an uncovered
unit vector x exists, every inequality is strict. There are finitely many
of them and each h_i is positive, so (1+ε)x∈P for some ε>0, contradicting
P⊆B⁴. If P is bounded, the maximum of its convex squared norm occurs at
a vertex, because every point is a convex combination of vertices and the
unit ball is convex. Boundedness is equivalent to 0∈int(Q). ∎

Equality in the norm bound is permitted: the caps themselves use ≥. To
obtain a robust cover one can require the stronger bound ‖y‖²≤1−δ with
δ>0. Transfer inequalities on each closed cap must separately remain strict.

### A short certificate of complete facet enumeration

The constructor runs a floating point hull algorithm on the points
q_i=v_i/h_i. This merely proposes candidate facets. The certificate provides
four indices F={i₁,i₂,i₃,i₄} and a rational vector y_F for every facet. The
exact verifier checks:

1. Each list has four distinct indices, there are no duplicate lists, and
   the 4×4 matrix with rows v_i for i∈F has nonzero determinant.
2. v_i·y_F=h_i for i∈F, and v_j·y_F<h_j for **every** j∉F.
3. Every triple of indices that is a face of a listed tetrahedron occurs
   in exactly two listed tetrahedra.
4. ‖y_F‖²≤1 for every listed facet.

At least five cap indices and at least one listed tetrahedron are required.
The strict inequalities in item 2 intentionally exclude additional coplanar
vertices, duplicate polar vertices on facets, and nonsimplicial hull faces.

**Theorem 2 (PROVED).** Items 1–3 establish that the supplied list is exactly
the full facet list of Q, that Q is four dimensional, and that 0∈int(Q).
Item 4 then proves full sphere coverage by Theorem 1.

*Proof.* The four linearly independent vectors in a listed facet lie in
the affine hyperplane y_F·q=1; they are affinely independent there. The
strict inequality for an index outside F gives a point off the hyperplane,
so Q has dimension four. Item 2 makes each listed tetrahedron an entire
facet of Q, with no unlisted vertices on that supporting hyperplane.

Every triangular face of a simplex facet is a ridge of Q. Every ridge of
a convex four-polytope belongs to exactly two facets. Consequently item 3
means that the nonempty set of listed facets is closed under facet
adjacency. The facet adjacency graph of a convex polytope is connected:
for example, a generic path on its boundary between relative interior
points of two facets crosses only ridges and yields a facet path. Hence
the list contains every facet. Every listed supporting plane has equation
y_F·q=1 with Q on its ≤ side, and the origin lies strictly on that side.
Since all facets were listed, 0∈int(Q). The polar vertices are precisely
the listed y_F. ∎

This proof is suitable for two reusable kernel lemmas: a closed nonempty
set of facets equals the facet set; and polarity converts hull facets
to vertices. After those lemmas, the data check is finite integer arithmetic.
No Euler-characteristic test is used as a substitute for completeness.

### Integer witness format and verifier cost

Clear denominators separately in each inequality to obtain integer
rows (V_i,H_i) with H_i>0. Store each dual vertex as n_F/d_F, where
n_F∈Z⁴ and d_F∈Z_{>0}. The substantive arithmetic checks become

    V_i·n_F = H_i d_F       (i∈F),
    V_j·n_F < H_j d_F       (j∉F),
    n_F·n_F ≤ d_F².

There is also a 4×4 integer determinant check per facet and a combinatorial
dictionary count of four ridges per facet. For m caps and f facets the
cost is O(mf) integer dot products, f constant-size determinants, and 4f
ridge insertions. A generic 4D hull can have O(m²) facets in the worst case;
the actual f is recorded in the result rather than assumed linear. This
does not require any interval trigonometry or repeated transfer tests.

The constructor computes n_F,d_F by Cramer's rule. The verifier only checks
the witness equations; it does not need to trust the constructor's solve.
`verify_coverage(..., require_cover=False)` is useful for construction:
it certifies the polar hull even if some vertices have norm greater than
one. Its separate `covers` field must be consulted; `passed` in that mode
alone is explicitly not a claim of coverage.

### Exact benchmark fixture

Take the eight normals ±e₁,…,±e₄ and h_i=1/2. These caps cover S³ because
some coordinate of a unit vector has absolute value at least 1/2. Their
polar polytope P is [−1/2,1/2]⁴ and all sixteen vertices have squared norm
one. The certificate contains sixteen tetrahedral facets and thirty-two
triangular ridges. Replacing h_i by 49/100 gives max vertex squared norm
2401/2500, so the same number of facets certifies a strict cover. Replacing
h_i by 51/100 gives max squared norm 2601/2500 and the verifier rejects it.

### Relation to the seed-ball coordinates

If w=r x, a cap described as ⟨w,e⟩≥r cos α becomes e·x≥cos α. In the
implementation one may use rational approximations v,h directly and
define the actual cap as v·w≥r h. Transfer certificates and coverage must
refer to those same exact coefficients. Normalizing v is unnecessary in
the coverage proof and would introduce avoidable square roots.

Caps with h≤0 are outside this short verifier's scope. Such a cap can be
shrunk to a positive-threshold subcap if desired, and its transfer remains
valid, but the resulting sphere coverage must be checked again.
