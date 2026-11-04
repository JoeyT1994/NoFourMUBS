# All-triples classification on a four-coordinate seed ball

The object certified here is an entire **H seed ball, with every possible K**.
There is no hypothesis that K is near one selected triple.

**PROVED (sufficient criterion):** the whole-ball classification theorem in
§5. Its hypotheses are checked by `replay_ball.py`. All acceptance
inequalities are Arb inequalities, and finite graph searches are exact.
Root locations and matrix preconditioners may be numerical proposals.

**Later extension:** [TRANSFER_R0153.md](TRANSFER_R0153.md) certifies the
entire original ball 1879 of radius 0.063, with every K. The other
original balls and the X-ball remain **NOT ESTABLISHED**. The result below is
for a smaller, explicitly contained ball in the **same four w coordinates**.
**CERTIFIED:** `results/ball1879_inner_receipt.json` completes every gate
for radius 1/160. The complete torus cover has 25,474 final bins, all
assigned to 120 column branches. Their graph has 600 edges and ten
six-cliques; every clique passes, with normal q below 0.231.

## 1. Domain and gauge

Write the atlas seed coordinates as theta=theta0+Mth*w. For ball 1879 put

\[
 \theta_*=(0,-\pi,-\pi,-\pi),\qquad
 w_*=M_{\rm th}^{-1}(\theta_*-\theta_0),\qquad
 D=\{w_*+u:\|u\|_2\leq 1/160\}.
\]

Here Mth and theta0 are the exact binary64 rationals in the pinned
certificate, and pi is the mathematical constant. Numerically,

\[
 w_*\simeq(0.0431859331,0.0031079857,0.0328364832,-0.0153156741),
 \quad \|w_*\|<0.056457851.
\]

The checker verifies `norm(w_*)+1/160 < 0.063` in Arb. This is a translated
Euclidean ball, with the original Mth; there is no rescaling of its four
coordinates. Below, u denotes the translated coordinate.

H and K have unit-modulus entries. A triple is
`(I,H/sqrt(6),K/sqrt(6))`. Columns of K have first entry 1. For computations
H uses the atlas's horizontal phase lift Q; the same row gauge is applied
to K. A fixed row gauge at the centre is used for the torus cover. It is
not an independent dephasing of H and K at each parameter.

The exact centre H_* is the conjugated two-circulant anchor, with rows
`[0,1,2,4,3,5]` and columns `[3,5,4,2,1,0]`, then dephased. Its entries
are fourth roots of unity. `anchor_model.py` checks its flatness and
Hadamard identity **exactly**. It identifies this anchor with the native
ball's branch: its normal coordinate in the original whole-ball model
has norm less than `1.120787e-5`, inside that model's normal radius
`4.385773e-5`. This uses equality of the four seed phases and the exact
horizontal kernel decomposition; matching orientation signs alone would
not distinguish permutations of complementary rows and columns.

The existing Z whole-ball proof is then replayed at H_* in the same Mth
frame. It supplies the analytic, exactly Hadamard branch

\[
 Q(u)=Q_0+Uu+\tfrac12H_2[u,u]+Xz_H(u),\quad
 \|z_H\|_2\leq\tau,\quad\|Dz_H\|_2\leq Z_1.
\]

The contraction, both strict orientation signs, phase lift and native
inclusion are checked. At radius 1/160, `tau < 4.043e-8`,
`Z1 < 1.781e-5`, and the H contraction constant is below 0.006082.
The analytic justification is the existing Z theorem; no atlas checker
is modified.

## 2. Certify individual columns, then prove completeness

For v=(0,v1,...,v5), define all **six** unbiasedness equations

\[
 F_c(v,u)=\left|\sum_a e^{i(v_a-Q_{ac}(u))}\right|^2-6
 =2\Re\sum_{a<b}e^{i(v_a-v_b-Q_{ac}+Q_{bc})}.
\]

Since H is exactly Hadamard, `sum_c F_c=0`. Choose a constant 5-by-6
preconditioner A with row sums exactly zero. In the implementation its
first five columns are exact dyadics and its sixth is their **exact
negative sum**, enclosed by Arb. A bound `||I-A DvF||<1` proves rank(A)=5;
therefore `A F=0` is equivalent to all six equations, not just five
arbitrarily projected equations.

Each proposed root gives exact dyadic matrices T,V and a predictor

\[
 p(u)=v_0+Tu+\tfrac12 V[u,u],\qquad v(u)=p(u)+z_v(u).
\]

The first coordinate is identically zero. Constants, linear terms and
quadratic terms are bounded rather than assumed to vanish after rounding.
For each exponential frequency, write its predictor phase as

\[
 \alpha\cdot u+\tfrac12 u^T B u-h,\qquad
 |h|\leq h_0\tau,
\]

where `h0=||X[a,c,:]-X[b,c,:]||`,
`alpha=ell*T-(U[a,c,:]-U[b,c,:])`,
`B=ell*V-(H2[a,c,:,:]-H2[b,c,:,:])`, and
`ell_k=1[a=k]-1[b=k]`, k=1,...,5.
Put `a=||alpha||r`, `b=||B||r^2`, `h=h0*tau`.

The remainder after the quadratic Taylor polynomial of each `2 Re exp`
is at most

\[
 ab+b^2/4+(a+b/2)^3/3+2h.
\]

The Jacobian is expanded through its linear term in u **before** taking
norms. On `||z_v||<=epsilon`, put
`delta=a+b/2+sqrt(2)*epsilon+h`. The remaining derivative in v-coordinate k
is bounded by

\[
 2|\ell_k|\{b/2+\sqrt2\,\epsilon+h+\delta^2/2\}.
\]

Multiplication by the entrywise absolute value of A gives rigorous
Euclidean residual E and contraction q. Acceptance requires
`q<1` and `E+q*epsilon<epsilon`. Banach's theorem gives **one analytic
column branch for every u in the entire ball**. This does not yet give
completeness.

The cubic and quartic coefficient tensors of `A F(p(u),Q_poly(u))` are
also formed before taking norms. If their operator norms are d3,d4 and
the fifth derivative bound is L5, then the predictor derivative is bounded
by

\[
 f_1+rf_2+r^2d_3/2+r^3d_4/6+r^4L_5/24.
\]

For a frequency with `a0=||alpha||`, `b0=||B||`, the fifth derivative
bound of `2 Re exp(i phase)` is
`2[(a0+r*b0)^5+10*b0*(a0+r*b0)^3+15*b0^2*(a0+r*b0)]`.
These positive bounds are multiplied by |A| and combined in Euclidean
norm. The missing derivative from the true H remainder is bounded per
frequency by `2*h0*(tau*(a0+r*b0)+Z1)`. The change when z_v is nonzero is
bounded by `2*||ell||*(a0+r*b0+h0*Z1)*epsilon`. Thus

\[
 \|Dz_v\|_2\leq\zeta=(B_1+M_1\epsilon)/(1-q).
\]

These are the explicit constants in `normal_derivative_bound`.

### Uniform uniqueness cubes

For completeness, a larger fixed cube `v0+[-R,R]^5` is certified for each
branch. Taylor-expand `A DvF` through first order in the independent v
increments and in the **same four u variables**, collecting coefficients
before taking absolute values. Its second derivatives are

\[
 D_{v_l}D_{v_k}F_c=-2\sum_{a<b}\Re(q_{abc})\ell_k\ell_l,\qquad
 D_{u_l}D_{v_k}F_c=2\sum_{a<b}\Re(q_{abc})\ell_k(U_{ac,l}-U_{bc,l}).
\]

For a term put
`h=||H2_ac-H2_bc||*r^2/2+h0*tau` and
`delta=||ell||_1*R+||U_ac-U_bc||*r+h`.
The remainder in Jacobian entry (c,k) is at most
`2*abs(ell_k)*(h+delta^2/2)`. The resulting infinity-norm bound must be
strictly below one. The entire quadratic branch enclosure must lie
strictly inside this cube. Hence any unbiased column in the cube is that
branch at the same u.

### Exhaustive torus cover

`seed_cover.bins` starts with all 6^5 closed bins of the five-phase torus.
Retained bins split into all 32 children. Every exclusion is a strict Arb
inequality. At level M the half-width in radians is t=pi/M; after removing
common phase, its Euclidean radius is `sqrt(29/6)*t`.

For each H column, the bound on its projected phase variation is
`rho_H=||U_c||r+||H2_c||r^2/2+||X_c||tau`. At a bin midpoint let
`S=sum z_a`, `g_a=-2 Im(conj(S) z_a)`,
`rho=rho_H+sqrt(29/6)*t`, and
`eta=||H2_c||r^2/2+||X_c||tau`. Necessary conditions include

\[
 \big||S|-\sqrt6\big|\leq\sqrt6\rho,
\]
\[
 \big||S|^2-6\big|\leq
 t\sum_{a>0}|g_a|+r\|U_c^Tg\|+\eta\|g\|
 +(6+|S|+\sqrt6\rho)\rho^2.
\]

The last remainder follows from the Hessian bound
`||D^2 |sum exp(i x)|^2|| <= 2*(6+|S|+sqrt(6)*rho)` on the segment.
The joint support test is also used: equation (C2b) of the existing
`proof/atlas/STAGEC.md`, converted from cycles to radians. Its normal
error is `nN=||H2||r^2/2+||X||tau`, its full phase bound is
`rF=||U||r+nN`, and its centre operator norm is **exactly 1** because the
centre is exactly Hadamard. A floating linear solve only proposes a real
direction y; the entire support inequality is then evaluated in Arb.

Finally, **every** retained bin must fit one of the certified uniqueness
cubes, after the fixed common row-gauge conversion. The test in coordinate
j is `abs(arg(exp(i*(bin_mid-root_phase))))+pi/M < R`. Numerical nearest
neighbours merely order the attempts. An unassigned bin prevents success.
This proves that the column list is complete over the entire H ball.

## 3. A complete graph of possible bases

Let a,b be column branches. Their phase difference has a quadratic
predictor with constant phases d_j, linear rows a_j, quadratic matrices
B_j, and a normal remainder of norm at most `epsilon_a+epsilon_b`.
Define

\[
 S_0=1+\sum_{j=1}^5e^{id_j},\qquad
 S_1=\sum_{j=1}^5ie^{id_j}a_j.
\]

A necessary condition for their inner product to vanish anywhere in the
ball is

\[
 |S_0|\leq r\|S_1\|+
 \sum_j\left[\tfrac12\|B_j\|r^2+
 \tfrac12(\|a_j\|r+\tfrac12\|B_j\|r^2)^2\right]
 +\sqrt5(\epsilon_a+\epsilon_b).
\]

The norm of the complex linear map is bounded as a real 2-by-4 matrix.
Only a strict violation removes an edge. One branch supplies only one
vector at each u, so orthogonal columns require six distinct vertices.
Consequently every third basis supplies a six-clique. The search enumerates
**all** six-cliques, with explicit failure on any resource cap.

## 4. Identify the known seed planes and the corresponding K

The construction is

\[
 H=\begin{pmatrix}A&B\\B^*&-A^*\end{pmatrix},\quad
 A=\operatorname{circ}(1,b,c),\quad B=\operatorname{circ}(1,e,f),
\]
\[
 b+c/b+1/c+e+f/e+1/f=0.
\]

For omega=e^(2*pi*i/3), put
`lambda_j=1+b*omega^j+c*omega^(2j)`,
`mu_j=1+e*omega^j+f*omega^(2j)`, and
`z_j=sign_j*i*conj(lambda_j*mu_j)/abs(lambda_j*mu_j)`.
Then `K=[F3 F3; F3 diag(z) -F3 diag(z)]`. Any of the three signs may be
chosen: either sign still gives `Re(lambda_j*mu_j*z_j)=0`. The exact
construction proof is in the parent `PROOF.md`, §4;
permutations and conjugation are applied to the **entire triple**.

Ten proposed templates are retained. Every template's centre H is checked
to equal H_* exactly. Each of its six exact K columns is matched to a
column-uniqueness cube at u=0, in Arb. Uniqueness proves equality with the
corresponding branch. This is a simultaneous triple identification, not
an invariant tolerance test.

In each template, the four dephased seed phases have the form
`theta_*+S p`, where S is an exact integer 4-by-4 matrix of rank two and
p contains the four construction parameter increments. Its image is a
linear seed plane. Compute an exact rational left annihilator Ltheta and

\[
 L=L_\theta M_{\rm th},\qquad
 N=L^T(LL^T)^{-1},\qquad P=I-NL.
\]

The checker verifies the rational orthogonal-projection identities.
Thus P maps the u ball into itself and `ker L` is the known seed plane.

To prove existence of the known family over the **whole plane slice**,
choose two independent seed phases. At p=0 the construction constraint has
Jacobian rows `[-1,-1,0,0]` and `[-1,1,2,0]`. Append the two chosen rows of
S and invert this exact rational 4-by-4 matrix. Its first two columns form
Nf and its last two Tf. Then `p=Tf*s+Nf*z` has exactly the desired free
coordinates. For every s in their full projected ball ranges, certify
the two-dimensional map `z -> z-G(Tf*s+Nf*z)`.

Here G is the real and imaginary constraint, `DG(0)Nf=I`,
`DG(0)Tf=0`, and G(0)=0 exactly. For its six unit-modulus exponential
terms, `|exp(i x)-1-i x|<=x^2/2` bounds the predictor error. An interval
Jacobian supplies q; `E+q*epsilon<epsilon`, `q<1` proves existence and
uniqueness for every free s. All lambda and mu phase charts are separated
from zero. Since S has rank two, matching the chosen two phases matches
all four seed phases on its image.

For this comparison, horizontally project the dephased known H phase
lift and apply the resulting **same row phases** to K, then rephase K's
columns to first entry 1. Equivalently the row-phase increment for K is
`Q_known[r,0]-Q_known[0,0]`. These gauge changes are analytic and preserve
the four dephased seed phases and all triple equations. At u=0 this is
exactly the shift checked by `match_template`.

**Continuation lemma (PROVED).** The known H and K in this common gauge equal the certified
branches on the whole connected disk `ker L intersect B_r`.
At its centre they agree exactly. The agreement set is closed by
continuity. It is relatively open because, at a point of agreement, the
strict H and column contractions give local uniqueness; nearby known
solutions have the same seed coordinates and remain in those uniqueness
neighbourhoods. The known family exists continuously on the full disk by
the preceding uniform two-dimensional contraction. A nonempty open and
closed subset of a connected disk is the disk. This argument does **not**
assume that a numerical census has found the entire solution set.

## 5. The 2-by-2 whole-ball classification theorem

For one six-clique choose two real components g of its pairwise inner
products. By §4, `g(Pu)=0` for every u in the ball. Suppose a constant
2-by-2 matrix B satisfies

\[
 \sup_{\|u\|\leq r}\|I-BDg(u)N\|_\infty\leq q<1.       \tag{*}
\]

**PROVED.** Any zero of g in the ball lies on the known seed plane.
Indeed the segment from Pu to u stays in the ball, and

\[
 B(g(u)-g(Pu))=
 \left(\int_0^1 BDg(Pu+tNLu)N\,dt\right)Lu.
\]

The matrix in parentheses differs from I in norm by at most q, and is
therefore invertible. Thus g(u)=0 implies Lu=0. The continuation lemma
then identifies **all six columns**, not just H, with the known triple.
Applying this argument to every clique proves the all-triples statement.

**PROVED / CERTIFIED local corollary.** Inside D, the triple-edge locus is
exactly the union of the following ten distinct planes. Put
`d=theta-theta_*=Mth*(w-w_*)`; each row imposes its two displayed equations.
The row order is the clique order in the receipt.

| Plane | First equation | Second equation |
|---|---|---|
| 1 | d2=0 | d1=d3 |
| 2 | d3=0 | d4=d2-d1 |
| 3 | d1=d2+d3 | d4=0 |
| 4 | d1=d2 | d1=d3 |
| 5 | d2=d3 | d4=d2-d1 |
| 6 | d1=d2 | d3=0 |
| 7 | d2=0 | d3=0 |
| 8 | d1=d2 | d4=0 |
| 9 | d2=0 | d4=d3-d1 |
| 10 | d1=d3 | d4=0 |

Necessity is the preceding normal test and exhaustive clique cover.
Sufficiency is the known-family existence and continuation proof on
each plane slice. The matching K for each plane is specified by the
receipt's template and anchor assignment. At intersections more than
one of these third bases may occur. This table makes no assertion
outside D.

### Explicit bound used for (*)

For a pair of columns use d_j,a_j,B_j from §3 and put
`eps=epsilon_a+epsilon_b`, `zeta=zeta_a+zeta_b`. The inner product gradient
has the expansion

\[
 DO(u)=S_1+S_2[u,\cdot]+E(u),\qquad
 S_2=\sum_j e^{id_j}(iB_j-a_j^Ta_j).
\]

For `a=||a_j||`, `b=||B_j||`, `delta=a*r+b*r^2/2+eps`, the contribution
to `||E||` is bounded by

\[
 a(b r^2/2+\mathrm{eps}+\delta^2/2)+br\delta+\mathrm{zeta}.
\]

Sum over j=1,...,5. The first term is the remainder in
`exp(i phase)-1-i(a_j.u)`; the second multiplies the quadratic derivative;
the third is the derivative of the normal column remainder. This accounts
for both the phase error and its parameter derivative.

For the selected two components let A0 be `S1*N`, let A1_k be
`S2[e_k,.]*N`, and let E_l be the two gradient-error bounds. B is a
dyadic midpoint inverse proposal. Each entry of `I-BDgN` is bounded by

\[
 |(I-BA_0)_{ij}|+
 r\left(\sum_{k=1}^4|(BA_{1,k})_{ij}|^2\right)^{1/2}
 +\sum_l|B_{il}|E_l\,\|N_{:,j}\|_2.
\]

The maximum row sum is the certified q in (*). In particular, all first
order terms retain their common four-coordinate u dependence; replacing
them by independent phase intervals would give much worse bounds.

## 6. Scope and enlargement

`replay_ball.py` only emits CERTIFIED after all of these gates pass:
native containment and branch identity; H model; all column branches;
their uniqueness cubes; complete torus-to-cube assignment; exhaustive
six-clique search; exact known-template matching; known-family existence
on each seed plane; and every 2-by-2 normal test.

The original ball 1879 also has a separate complete Arb outer cover in
`results/seed1879_native_cover.json.gz`: 28,213 final bins, 515 labels,
and 31,579 enumerated six-cliques. **Those cliques are not classified by
the smaller-ball receipt.** The later transfer theorem covers the entire
original image by a larger certified neighbourhood, resolving this
obligation for ball 1879.

The radius 1/160 is 0.00625, compared with the original 0.063. These are
both radii in the same w metric. The smaller ball is centred on the exact
construction point, not at the original seed centre.

For a ball whose centre is off a known affine plane, its orthogonal
projection need not remain in the ball. The proof of (*) must then use a
certified domain containing the comparison segments, or a covering by
balls centred on the known locus together with exclusion cells. For a
curved known surface the corresponding certified fiber comparison is
needed. These are explicit extension obligations; the through-centre
projection argument must not be applied silently to an arbitrary ball.

An unresolved bin, an unmatched clique, a failed bound, or a search cap
is **NOT ESTABLISHED**, never a counterexample and never success. The
isolated Fourier triple and the X-ball require their own charts.
