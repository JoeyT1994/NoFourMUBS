# Handoff U — analytic completion across a regular edge, including F6

## Outcome and status

**PROVED.** The matched reconstruction extends real analytically across every regular seed edge with `g>0`. At the canonical regular corner of F6, it parametrizes the **entire nearby dephased Hadamard space**, which is a real-analytic four-manifold. One regular corner suffices.

**PROVED.** The original parametrization is not locally injective after taking Hadamard equivalence classes: the Fourier stabilizer identifies generically 72 points. Nevertheless the underlying class space is a topological four-manifold at `[F6]`. An explicit quotient model and homeomorphism are given below.

**CERTIFIED.** The construction is valid on the full parameter cube

\[
|\theta_1-\pi/3|,\quad |\theta_2-2\pi/3|,\quad
|\theta_3-2\pi/3|,\quad |y|\ \leq\ 1/20.
\]

Exact, rational certificates give a parameter-dependent contraction, a unique fourth seed phase, uniform augmented-Jacobian inverse bounds, and first- and second-derivative bounds. The verifiers use Python's standard library only.

**CERTIFIED counterexample to a proposed global implication.** A particular non-F6 member of the Fourier family has 256 critical corners, all with zero seed gradient, and 144 strict corners. Thus having a critical corner does not imply having a regular critical corner.

| Question | Answer | Status |
|---|---|---|
| Q1: Whitney fold at a regular seed edge | Yes. Exact criterion: the ambient Gram gradient of the discriminant is nonzero. | PROVED |
| Q2: analytic completion and side divisors | Yes. All the indicated moment divisors are automatically nonzero at regular seed edges. | PROVED |
| Q3: chart through F6 | One corner covers the entire framed germ. The class map has generic multiplicity 72; its quotient is locally R4. | PROVED; exact ranks and actions CERTIFIED |
| Q4: every critical class has a regular critical corner | False; explicit Fourier-family counterexample. All-class classification of the absence of regular corners remains open in this report. | CERTIFIED counterexample; classification NOT ESTABLISHED |
| Q4: four-dimensional atlas coverage | Follows from the supplied strict-corner coverage and converse, together with the new F6 chart, using finite quotient images of framed charts. | PROVED relative to the supplied global theorems |
| Q5: finite-radius estimates | A full radius-1/20 cube in the stated unscaled parameters is certified. | CERTIFIED |

### Dependencies and meaning of the labels

The analytic proof uses the following supplied identities/theorems:

1. `input_context/J_side_existence_RESULT.md`: the side Jacobian identity and the side signature identity.
2. `input_context/SIDE_FIBER.md`: strict-side existence and the two side orbits; these are needed for the general regular-edge existence/merging statement.
3. `input_context/STRICT_DOMAIN.md`: the moment-norm identities and equality of horizontal and vertical invariants.
4. `input_context/PROOF.md`, Section 2.2: matched flatness for actual sides. Theorems 2.4–2.5 are used only for the final global atlas implication.

These inputs are identified explicitly rather than replaced by the large atlas or a classification assumption. The new finite computations are replayed by the enclosed scripts. **PROVED** means a written derivation from the stated inputs; **CERTIFIED** means an exact finite computation whose verifier is included. The resulting statements are not claimed to have been formalized in Lean in this package.

## 1. Notation

Let

\[
X(\phi)=\begin{pmatrix}1&1&1\\x_0&x_1&x_2\\y_0&y_1&y_2\end{pmatrix},
\qquad x_j=e^{i\phi_j},\quad y_j=e^{i\phi_{3+j}},
\]

and define the six real Gram coordinates, in this order, by

\[
\gamma(\phi)=q=(\Re s,\Im s,\Re t,\Im t,\Re r,\Im r),
\quad s=\sum x_j,\quad t=\sum y_j,\quad r=\sum\bar x_jy_j.
\]

Write `S(phi)=Im Psi(X(phi))`. To distinguish two discriminants, write
`mathcal R(q)` for the polynomial in the six real Gram coordinates and
`R(theta)=mathcal R(Gamma_h(theta))=mathcal R(Gamma_v(theta))` for the four-seed discriminant. All derivatives below are real derivatives.

The two supplied side identities are

\[
\boxed{\det D\gamma=\frac S4,\qquad \mathcal R\circ\gamma=4S^2.}
\tag{1}
\]

They hold in a neighborhood of every invertible physical side. The signature itself is a Laurent polynomial in the six phases.

## 2. Q1 — an exact fold theorem

### 2.1 The augmented determinant identity — PROVED

For `j=1,...,6`, let `A_j` be obtained from `gamma` by replacing its j-th component by `S`, retaining its position. Differentiating (1) gives

\[
\sum_{k=1}^6\mathcal R_k(\gamma)\,d\gamma_k=8S\,dS.
\]

Insert this equation into row j of a determinant whose other five rows are those of `Dgamma`. All terms except k=j have two identical rows. Therefore

\[
\mathcal R_j(\gamma)\det D\gamma=8S\det DA_j.
\]

On `S!=0`, the first identity in (1) permits cancellation. Both sides of the resulting identity are real analytic, so it holds everywhere:

\[
\boxed{\det DA_j=\frac{\mathcal R_j(\gamma)}{32}.}
\tag{2}
\]

The cancellation is legitimate locally: `S` is a real-analytic function on the connected side torus and is not identically zero, as witnessed by the nonsingular side in the supplied Jacobian proof. Hence it cannot vanish on any nonempty open set. Its nonzero locus is dense in every side neighborhood.

Equivalently, writing `J=Dgamma`,

\[
\boxed{\nabla_q\mathcal R=32\operatorname{adj}(J)^T\nabla_\phi S.}
\tag{3}
\]

### 2.2 Criterion and normal form — PROVED

At an invertible side with `S=0`, the map `gamma` is a Whitney fold if and only if

\[
\boxed{\nabla_q\mathcal R(\gamma(\phi))\ne0.}
\tag{4}
\]

For sufficiency, choose j with `mathcal R_j!=0`. Equation (2) makes `A_j` a real-analytic coordinate system. The target coordinates obtained by replacing `q_j` by `mathcal R(q)` are also real-analytic coordinates. In these coordinates the Gram map is exactly

\[
(u,S)\longmapsto(u,4S^2).
\]

Using `y=-2S` gives the standard normal form

\[
\boxed{(u,y)\longmapsto(u,y^2).}
\tag{5}
\]

In particular its rank is five and its kernel is transverse to `{S=0}`.

For necessity, at a Whitney fold `J` has rank five and `dS` is nonzero on its one-dimensional kernel, because `S=4 det J`. Consequently the right side of (3) is nonzero. This proves the equivalence.

At a regular **seed** edge,

\[
\nabla_\theta R=D\Gamma_h^T\nabla_q\mathcal R\ne0.
\]

Thus the ambient gradient is nonzero for the horizontal side. Equality of horizontal and vertical discriminants gives the same conclusion for the vertical side. **Every physical side at a regular seed edge is therefore a fold.**

### 2.3 Explicit algebraic nonfold locus — PROVED

Put `X=|s|^2`, `Y=|t|^2`, `Z=|r|^2`, `p=X+Y+Z`, with `g,eta,chi` as in the brief. Define

\[
\begin{aligned}
A_X&=-24g\eta-4g^2-2\chi(Y+Z-YZ+27-2p+J),\\
A_Y&=-24g\eta-4g^2-2\chi(X+Z-XZ+27-2p+J),\\
A_Z&=-24g\eta-4g^2-2\chi(X+Y-XY+27-2p+J),\\
B&=8g\eta+4g^2-2\chi(p-15).
\end{aligned}
\]

Direct differentiation of `mathcal R=4g^2 eta-chi^2` gives the exact nonfold locus on the physical edge:

\[
\boxed{
A_Xs+B\bar r t=0,\qquad
A_Yt+Bsr=0,\qquad
A_Zr+B\bar s t=0.
}
\tag{6}
\]

These are three complex equations, or six real equations. Their simultaneous vanishing is equivalent to `nabla_q mathcal R=0`. Within the regular seed-edge locus the nonfold locus is empty. The converse implication from a side fold to seed regularity is not valid in general, because the seed map can be tangent to the ambient discriminant.

### 2.4 Existence and merging at a regular seed edge — PROVED

If a regular edge seed with `g>0` is given without a side, choose strict seeds approaching it. Strict sides exist by the supplied side theorem. Compactness of the side torus produces a limiting side, whose determinant has squared modulus g and hence is nonzero. This applies to both orientations.

There is exactly one boundary side orbit under column permutations. Indeed, two inequivalent boundary sides would have disjoint small permutation-saturated neighborhoods. Each is a fold and hence produces both strict labels over nearby strict seed Grams. This would give at least four strict side orbits, contradicting the supplied two-orbit theorem. Thus the two strict label orbits merge into the same boundary orbit.

## 3. Q2 — smooth completion and the divisor locus

### 3.1 No extra moment-divisor guard at a regular edge — PROVED

The side moment factors satisfy

\[
|P_j|^2=g^2+c_j\chi+c_j^2\eta,
\quad c_0=9-Z,\ c_1=9-Y,\ c_2=9-X.
\]

Rearranging, with no denominator, gives

\[
\boxed{\mathcal R=4\eta|P_j|^2-(\chi+2c_j\eta)^2.}
\tag{7}
\]

If `mathcal R=0` and `P_j=0`, the square on the right vanishes. Differentiating (7) then gives `d mathcal R=0` in every ambient Gram direction. Thus

\[
R=0,\quad\nabla_\theta R\ne0
\quad\Longrightarrow\quad P_0P_1P_2\ne0
\]

on each side. In particular the factors `d_G=P_0 conjugate(P_1)` in the supplied flatness identity satisfy

\[
\boxed{d_h d_v\ne0\quad\text{at every regular seed edge}.}
\tag{8}
\]

For an actual invertible side, every `c_j>0`, by the strict Cauchy–Schwarz inequality between distinct phase rows. On the edge, `z=chi/(2g)` is real and `z^2=eta`, so

\[
\boxed{P_j=0\iff g+c_jz=0
\iff z=-\sqrt\eta,\quad c_j=g/\sqrt\eta.}
\tag{9}
\]

Equivalently `chi=-2g^2/c_j`. If `eta=0`, no `P_j` vanishes. Equation (9), for j=0 or 1 in either orientation, is exactly the physical edge locus on which the displayed `d_h d_v` vanishes. It is contained in the degenerate edge locus; the reverse inclusion is not asserted.

### 3.2 Explicit local chart construction — PROVED

At a regular seed edge choose the normal seed coordinate, say `theta4`, so `R_4!=0`. The scalar analytic implicit-function theorem gives

\[
\theta_4=h(\theta_1,\theta_2,\theta_3,y),\qquad
R(\theta_1,\theta_2,\theta_3,h)=y^2.
\tag{10}
\]

For each side choose a Gram component j for which `mathcal R_j!=0`. Let

\[
\mathcal A_j(\phi)=(\gamma_{\widehat j}(\phi),S(\phi))
\]

with any fixed order for the five retained components. Its analytic inverse exists by (2). Define

\[
\begin{aligned}
\phi_h&=\mathcal A_{j_h}^{-1}
       \bigl((\Gamma_h(\theta))_{\widehat {j_h}},-y/2\bigr),\\
\phi_v&=\mathcal A_{j_v}^{-1}
       \bigl((\Gamma_v(\theta))_{\widehat {j_v}},+y/2\bigr),\\
B&=X(\phi_h),\qquad C=X(\phi_v)^T,\\
D&=-CE^*(B^*)^{-1},\qquad
\mathscr F(\theta',y)=\begin{pmatrix}E&B\\C&D\end{pmatrix}.
\end{aligned}
\tag{11}
\]

There is no missing Gram equation in (11). The constructed and prescribed Grams share five coordinates and the value `mathcal R=y^2`. Since `mathcal R_j!=0`, the remaining Gram coordinate is locally uniquely determined by those data. Thus the two sides have their full prescribed Grams.

Their labels are

\[
z=(\chi+iy)/(2g),\qquad w=(\chi-iy)/(2g),
\]

so `z+w=chi/g` and `zw=eta`. The supplied matched-flatness identity applies, including at y=0 by (8). Consequently (11) is phase Hadamard throughout the local double. Equivalently one can apply strict flatness for y nonzero and pass to y=0 by continuity. All operations in (10)–(11) are real analytic.

The inverse on the image extracts the three selected seed angles and `-2 Im Psi(B)`. Thus `mathscr F` is a local analytic embedding of rank four. This conclusion is a statement in the framed/dephased matrix space before the residual finite permutation quotient.

## 4. Q3 — the canonical F6 corner

### 4.1 Exact side and edge data — CERTIFIED

Let `q=exp(pi i/3)`, `F6_ij=q^(ij)`, with indices 0 through 5. Use rows and columns 0,1,2 for the distinguished corner. Then

\[
\theta^0=(1,2,2,4)\pi/3,\qquad
B_0=\begin{pmatrix}
1&1&1\\-1&-q&1-q\\1&q-1&-q
\end{pmatrix},\qquad C_0=B_0^T.
\]

The side angles can be taken as `phi0=(3,4,5,0,2,4) pi/3`. Exact arithmetic gives

\[
(s,t,r)=(-1-i\sqrt3,0,-1-i\sqrt3),\quad
(g,\eta,\chi,R)=(3,1,6,0),\quad \Psi(B_0)=-3.
\]

Moreover

\[
\begin{aligned}
\nabla_\theta R&=(0,0,0,1152\sqrt3),\\
\nabla_q\mathcal R&=(576,576\sqrt3,-576,576\sqrt3,576,576\sqrt3),\\
\ker D\gamma&=\mathbb R(-1,1,-1,0,0,0),\\
dS&=(-6,12,-6,3,-6,3).
\end{aligned}
\tag{12}
\]

In particular `dS(-1,1,-1,0,0,0)=24`, and replacing the last Gram row by `dS` gives determinant `18 sqrt3`. Here `P0=P2=8`, `P1=12`, so `d_h=d_v=96`.

The verifier also exhausts all 400 Fourier corner frames. Every one has R=0, and precisely 36 have nonzero seed gradient, all with g=3. Their squared gradient norms and counts are

| Squared seed-gradient norm | Corners |
|---:|---:|
| 3,981,312 | 25 |
| 7,962,624 | 10 |
| 15,925,248 | 1 |

Replay: `scripts/verify_fold_f6.py`.

### 4.2 Full orthogonality rank and chart derivative — CERTIFIED

There are 25 dephased phase variables and 30 real row-orthogonality equations. At F6 their Jacobian has rank **21**. The verifier records a 21-by-21 minor with determinant **28,311,552**, after multiplying real-part rows by `2/sqrt3` and imaginary-part rows by 2. These scalings produce an integer matrix and do not alter its rank.

The full four-dimensional tangent kernel is

\[
V_{ij}=\mathbf1_{i\text{ odd}}f(j\bmod3)
       +\mathbf1_{j\text{ odd}}g(i\bmod3),
\quad f=(0,\alpha,\beta),\quad g=(0,\gamma,\delta).
\tag{13}
\]

The two summands are the tangent planes of the Fourier family and its transpose. The four distinguished seed entries restrict to

\[
(V_{11},V_{12},V_{21},V_{22})=(\alpha+\gamma,\beta,\delta,0).
\]

Direct signature differentiation gives

\[
dy=-24\,d\alpha+12\,d\beta+24\,d\gamma-12\,d\delta.
\]

For `u=(delta theta1,delta theta2,delta theta3,y)`, the inverse tangent map is

\[
\boxed{\begin{aligned}
\alpha&=u_1/2+u_2/4-u_3/4-y/48,&\beta&=u_2,\\
\gamma&=u_1/2-u_2/4+u_3/4+y/48,&\delta&=u_3.
\end{aligned}}
\tag{14}
\]

Hence the derivative of the four-coordinate completion has rank four, including the signed-root direction.

Replay: `scripts/verify_f6_chart.py`. Its receipt includes the actual minor indices, tangent matrices, and all 72 symmetry actions.

### 4.3 The entire framed germ is covered — PROVED

Select the 21 independent orthogonality equations certified above. Their common zero set is, near F6, an analytic four-manifold `M21` by the implicit-function theorem. The independently constructed map (11) takes values in the full Hadamard zero set, hence in `M21`, and has derivative of rank four. Applying the inverse-function theorem to this map into `M21` shows that its image contains a neighborhood of F6 in `M21`.

Every nearby dephased Hadamard satisfies the selected 21 equations, so lies in that image after shrinking the neighborhood. Conversely every point of the image is Hadamard by matched flatness. Therefore

\[
\boxed{\text{The dephased Hadamard germ at F6 is exactly the analytic four-manifold (11).}}
\tag{15}
\]

This supplies existence and integrability as well as the dimension bound. Defect four alone would not have implied (15). In particular both two-parameter Fourier families lie inside this single chart, and no additional nearby component is omitted.

### 4.4 The finite quotient and local topology of X — PROVED

The equivalence relation in the brief includes row/column permutations and phases, but not transposition or conjugation. After dephasing, the stabilizer of standard F6 consists exactly of

\[
r_i=ui+b_0,\qquad c_j=uj+d_0\pmod6,
\quad u\in\{1,-1\},\quad b_0,d_0\in\mathbb Z/6.
\tag{16}
\]

There are 72 elements. To prove exhaustion, a stabilizing permutation pair must satisfy
`(r_i-r_0)(c_j-c_0)=ij mod6`. The case i=j=1 forces the two differences to be inverse units; the cases i=1 and j=1 then force the affine forms (16). The only units modulo 6 are 1 and -1.

Its tangent action on (13) is

\[
\begin{aligned}
f'(j)&=(-1)^{b_0}\bigl[f(uj+d_0)-f(d_0)\bigr],\\
g'(i)&=(-1)^{d_0}\bigl[g(ui+b_0)-g(b_0)\bigr].
\end{aligned}
\tag{17}
\]

All 72 actions are distinct, as checked exactly. Let `omega=exp(2pi i/3)` and use real-linear complex coordinates

\[
Z_1=\alpha\omega+\beta\omega^2,\qquad
Z_2=\gamma\omega+\delta\omega^2.
\]

The group is

\[
G=(C_6\times C_6)\rtimes C_2,
\]

acting by independent sixth-root rotations of the two complex coordinates and simultaneous conjugation. The parity and residue modulo 3 of each offset in (16) can be chosen independently, which proves the independent-rotation assertion.

A finite analytic action near a fixed point can be linearized here by averaging a local tangent chart. If its linear action is `L_g`, set

\[
\kappa(p)=\frac1{72}\sum_{g\in G}L_g^{-1}q(gp),\qquad Dq(0)=I.
\]

Then `D kappa(0)=I` and `kappa(gp)=L_g kappa(p)`. The inverse-function theorem gives a local equivariant analytic chart. Shrink the neighborhood to exclude its translates by the finitely many nonstabilizing permutation pairs. The class-space germ is therefore `C^2/G`.

First quotient by independent rotations using `(Z1,Z2)->(Z1^6,Z2^6)`. The remaining involution is simultaneous conjugation. It fixes the two real parts and negates both imaginary parts. Since `R^2/{v~-v}` is homeomorphic to R2 through complex squaring, this quotient is homeomorphic to R4. Explicitly,

\[
\boxed{Q(Z_1,Z_2)=\left(
\Re Z_1^6,\ \Re Z_2^6,
(\Im Z_1^6)^2-(\Im Z_2^6)^2,
2\Im Z_1^6\Im Z_2^6
\right).}
\tag{18}
\]

The map is onto and proper. Its last two components determine the two imaginary parts up to simultaneous sign; the first two determine the real parts. Taking sixth roots then introduces precisely the independent rotation orbits. Thus its fibers are exactly the G-orbits, and it induces a homeomorphism `C^2/G -> R4`.

Consequently `[F6]` is a topological four-manifold point of X. The raw completion map into X is nevertheless **not locally injective**: on a small invariant neighborhood it is generically 72-to-one. A nonidentity finite-order action cannot disappear on an open sub-neighborhood because its tangent action is faithful. This is finite isotropy, rather than a missing family of Hadamards. One regular corner suffices for local coverage; a class-space homeomorphism uses the quotient (18).

For interval enclosures the smooth framed chart is the appropriate object. The quotient map (18) has a degenerate derivative at the origin, so it should not be used as a conditioning improvement for the numerical solver.

## 5. Q4 — global implications and an exact counterexample

### 5.1 A critical corner need not have a regular replacement — CERTIFIED

Let `F3=(omega^(ij))`, and set

\[
D=\operatorname{diag}\left(1,i,\frac{3+4i}{5}\right),\qquad
N=\begin{pmatrix}F_3&F_3\\F_3D&-F_3D\end{pmatrix}.
\tag{19}
\]

The exact verifier checks the Hadamard equations and all 400 positional corner discriminants and their four independent seed derivatives. It obtains

| R | Number of corners |
|---:|---:|
| 0 | 256 |
| 144/625 | 36 |
| 5,184/625 | 36 |
| 28,224/625 | 36 |
| 63,504/625 | 36 |

Every one of the 256 critical corners has `nabla_theta R=(0,0,0,0)` exactly. Their g values are 0 at 24 corners, 12 at 216 corners, and 27 at 16 corners. Thus 232 invertible critical corners still provide no regular edge corner. The matrix is not equivalent to F6 because it has strict corners, whereas F6 has none.

Changing corner order/dephasing is an invertible map of its seed torus, and phases cancel from cross ratios. Gradient vanishing therefore persists under equivalence; the positional census covers all relevant corner choices.

Replay: `scripts/verify_fourier_no_regular_edge.py`. It uses exact arithmetic in `Q(sqrt3,i)` and imports no handoff assertions.

### 5.2 Coverage and the limit of the global statement

**PROVED relative to the supplied global inputs.** The counterexample has 144 strict corners, so it already has strict parametrizations. More generally, the supplied strict-corner coverage theorem and nonmatched converse provide strict matched parametrizations for every non-Tao class other than F6. Together with (15), this gives a cover by four-dimensional framed parametrizations and their finite quotient images.

At a strict framed point, the side Gram Jacobians are invertible. Nearby actual sides remain on the same labels and in the same local side neighborhoods, so the forced-block construction captures the whole framed Hadamard neighborhood. Thus the strict parametrizations have the required local meaning, not merely image containment.

**NOT ESTABLISHED:** a classification of all classes with no regular edge corner, or a claim that the natural quotient at every other symmetric class is a smooth manifold. The literal raw maps cannot be ordinary injective class-space charts everywhere, already by the F6 stabilizer. The assertion that the entire algebraic double is globally a smooth manifold also does not follow: degenerate seed-edge points still require different frames or other treatment.

The sentence in Q4 asking whether F6 is the only class whose every critical corner is degenerate conflicts with the brief's own 36 regular F6 corners. For the substantive universality question, (19) is a decisive negative answer.

## 6. Q5 — a certified radius-0.05 parameter cube

### 6.1 A coupled augmented system

Write the parameter as

\[
p=(u_1,u_2,u_3,y),\quad \|p\|_\infty\le1/20,
\]

and the seven unknowns as

\[
x=(t,\varphi_1,\ldots,\varphi_6),\quad
\theta=\theta^0+(u_1,u_2,u_3,t),\quad
\phi=\phi^0+\varphi.
\]

Use the seven equations

\[
\boxed{\mathcal H(p,x)=
\begin{pmatrix}
\gamma(\phi)-\Gamma_h(\theta)\\
S(\phi)/24+y/48
\end{pmatrix}=0.}
\tag{20}
\]

These retain all six Gram equations and add the signed label, solving simultaneously for the normal seed phase. This avoids the singular six-by-six Gram inverse.

Let `A0=H_x(0,0)` and `M=A0^{-1}`. All their entries lie in `Q(sqrt3)` and are constructed exactly by the verifier. An explicit block description is

\[
A_0=\begin{pmatrix}b&D\gamma(\phi^0)\\0&dS(\phi^0)/24\end{pmatrix},
\quad
b=(0,0,\sqrt3/2,-1/2,-\sqrt3/2,-1/2)^T,
\]

with `Dgamma` obtained directly by differentiating the three displayed sums in Section 1 and `dS` given in (12).

The exact first-order predictor `L=-M H_p(0,0)` is

\[
\boxed{L=\begin{pmatrix}
0&0&0&0\\
1/2&-1/4&1/4&1/48\\
1/2&1/4&-1/4&-1/48\\
1/2&3/4&1/4&1/48\\
0&0&1&0\\
0&0&0&0\\
0&0&1&0
\end{pmatrix}.}
\tag{21}
\]

### 6.2 Exact contraction certificate — CERTIFIED

For each parameter p in the cube, write `x=Lp+v`, `||v||inf<=1/100`. In normalized variables `p=tau/20`, `v=u/100`, define

\[
\widehat H(\tau,u)=100M\mathcal H\left(\tau/20,L\tau/20+u/100\right).
\]

The exact certificate proves, uniformly on both unit cubes,

\[
\begin{aligned}
\|\widehat H(\tau,0)\|_\infty&<2/5,\\
\|D_u\widehat H-I\|_\infty&<2/5,\\
\|D_\tau\widehat H\|_\infty&<11/10,\\
\|M\|_\infty&\le40597/16000.
\end{aligned}
\tag{22}
\]

Therefore `u -> u-hat H(tau,u)` maps the unit cube strictly into the radius-4/5 cube and is a contraction with constant below 2/5. Banach's theorem gives a unique solution in the stated predictor tube for every parameter. The strict interior margin and uniform invertibility imply real-analytic dependence, also on an open neighborhood of each boundary parameter value.

A constructive formula is the convergent iteration

\[
v_0=0,\qquad
v_{n+1}=v_n-M\mathcal H(p,Lp+v_n).
\tag{23}
\]

Its exact-arithmetic error bound is

\[
\|v_n-v_*\|_\infty\le\frac1{100}(2/5)^n.
\]

Floating-point implementations must separately account for arithmetic error; the certificate itself uses no floating-point evaluations.

The verifier constructs the 55-term Laurent polynomial for `Psi`, preconditions and collects coefficients exactly, then uses multivariate Taylor coefficients and

\[
\left|e^{it}-\sum_{k=0}^{m-1}(it)^k/k!\right|\le |t|^m/m!.
\]

All coefficients are bounded with rational inequalities for `sqrt3`. In the transformed variables the frequencies are integers divided by 4800; they are computed directly from (21). The explicit linear y term is included in `H_p` and `L`. Its higher derivatives vanish, and the full constant/linear residual terms cancel exactly.

### 6.3 The horizontal and vertical seed phases agree — CERTIFIED and PROVED

The predictor for the fourth seed coordinate is zero (the first row of L), so the horizontal solution has `|t|<=1/100`. The transpose problem is the same certified system with

\[
(u_1,u_2,u_3,y)\longmapsto(u_1,u_3,u_2,-y),
\]

which preserves the parameter cube. Its solution also has normal phase within 1/100. Both satisfy `R(theta)=y^2`, by the side identity (1).

The independent exact scalar certificate proves on the complete intervening seed box

\[
\boxed{\partial_{\theta_4}R\ge
\frac{289742993}{250000}>1158.}
\tag{24}
\]

It constructs the 2,083-term integer Laurent polynomial R, computes its degree-three Taylor data for `partial_4 R`, and bounds the fourth-order remainder. Strict monotonicity implies that the horizontal and vertical normal seed phases coincide. Thus the two coupled solutions genuinely complete the same corner.

### 6.4 Uniform inverse and derivative bounds — CERTIFIED

All norms in the following display are induced infinity norms; second derivatives use the bilinear infinity/infinity-to-infinity norm. Throughout the parameter cube and the predictor tube,

\[
\boxed{\|\mathcal H_x\|_\infty\le\frac{3533}{400}<9,
\qquad \|\mathcal H_x^{-1}\|_\infty<\frac{17}{4}.}
\tag{25}
\]

The first bound is an exact Laurent-coefficient bound. The second follows from (22):
`||H_x^{-1}|| <= ||M||/(1-2/5) <17/4`.

Differentiating the normalized implicit equation gives a correction derivative below `(11/10)/(3/5)=11/6`. Rescaling to p and v multiplies by 1/5. Since `||L||inf=73/48`,

\[
\boxed{\|D_px\|_\infty<\frac{73}{48}+\frac{11}{30}
=\frac{151}{80}<2.}
\tag{26}
\]

The raw joint Hessian of (20), in all parameter and unknown variables, is bounded by `46063/1000`. The implicit second-derivative formula therefore gives

\[
\boxed{\|D_p^2x\|_{\infty,\infty\to\infty}
\le \frac{783071}{1000}<784.}
\tag{27}
\]

Indeed `x''=-H_x^{-1} H''[(I,x'),(I,x')]`, and the stacked derivative has norm below 2. Equations (25)–(27) apply to both side solves, including at y=0. The original six-by-six Gram Jacobian is singular at y=0, so it is specifically the augmented system that has the uniform inverse bound.

The direct tube enclosure `||x-Lp||inf<=1/100` is considerably sharper for the whole cube than applying the conservative Hessian bound over its full radius. The latter is useful for smaller Taylor subboxes.

### 6.5 Uniform side invertibility and completion — PROVED with CERTIFIED constants

From (21), throughout the tube

\[
\|\phi-\phi^0\|_\infty
\le \frac{73}{48}\frac1{20}+\frac1{100}
=\frac{413}{4800}.
\]

The smallest singular value of `B0` is `sqrt2-1`: its Gram eigenvalues are `3,3-2sqrt2,3+2sqrt2`. Only six entries vary, and `|exp(it)-1|<=|t|`, so

\[
\sigma_{\min}(B)
\ge\sqrt2-1-\sqrt6\,\frac{413}{4800}
>\frac{19507}{96000}>\frac15.
\tag{28}
\]

The rational check uses `sqrt2>707/500` and `sqrt6<49/20`. Hence

\[
\boxed{\|B^{-1}\|_2<5,\qquad\|C^{-1}\|_2<5,\qquad g>0.}
\]

The labels are opposite for every y, and (24) makes all y=0 seeds regular edges. Thus matched flatness applies everywhere in the parameter cube. Formula (11) provides the analytic Hadamard completion on the entire cube.

For certified derivatives of the forced block, put `W=(B*)^{-1}` and use

\[
DW[h]=-W\,DB^*[h]\,W,
\]

\[
\begin{aligned}
D^2W[h,k]={}&WDB^*[h]WDB^*[k]W
+WDB^*[k]WDB^*[h]W\\
&-WD^2B^*[h,k]W,
\end{aligned}
\]

then differentiate `D=-CE*W`. Equations (26)–(28) bound every factor; direct interval evaluation of these short products can preserve much more cancellation than a single global scalar estimate.

Replay: `scripts/verify_parameter_cube.py` and `scripts/verify_R_monotone_box.py`.

### 6.6 Conditioning and coordinate scaling — CERTIFIED

Let horizontal projection subtract each phase matrix's row and column means and add its grand mean. On the tangent (13),

\[
\|V_{\mathrm{horizontal}}\|_F^2
=2(\alpha^2-\alpha\beta+\beta^2+\gamma^2-\gamma\delta+\delta^2).
\]

In `(u1,u2,u3,y)` coordinates its metric matrix is

\[
\begin{pmatrix}
1&-1/2&-1/2&0\\
-1/2&7/4&1/4&0\\
-1/2&1/4&7/4&0\\
0&0&0&1/576
\end{pmatrix}.
\]

With the scaled coordinate `tau=y/24`, its eigenvalues are exactly

\[
\frac{3-\sqrt3}{2},\quad1,\quad\frac32,\quad\frac{3+\sqrt3}{2}.
\]

The derivative's pointwise condition number is therefore

\[
\boxed{\kappa=\sqrt{2+\sqrt3}\simeq1.932.}
\tag{29}
\]

The radius-1/20 certificate above uses the **unscaled** y coordinate. In the scaled coordinate its fourth half-width is `1/480`. It does not assert a radius-1/20 cube simultaneously in `(u1,u2,u3,tau)`, nor a Frobenius ball of radius 1/20 in the image. These distinctions matter when designing atlas balls.

### 6.7 Additional augmented-side-only certificate — CERTIFIED

For reuse with general Gram targets, let

\[
A(\phi)=(\Re s,\Im s,\Re t,\Im t,\Re r,S/24),\quad M_A=DA(\phi^0)^{-1}.
\]

On the independent six-angle cube `||phi-phi0||inf<=1/20`, the additional verifier proves

\[
\|M_A DA-I\|_\infty\le\frac{5487521}{9600000}<3/5,
\quad\|M_A\|_\infty\le\frac{55529}{24000}<7/3,
\]

\[
\|D^2A\|\le\frac{63353}{3750}<17.
\]

Consequently `||DA^{-1}||inf<=35/6` and
`||D^2(A^{-1})||<=728875/216`. Every target satisfying
`||M_A(a-A(phi0))||inf<=1/50` has a unique preimage in that side-angle cube.

This is a separate Gram-target estimate. The coupled certificate above is what establishes the requested original seed/signed-root parameter cube.

Replay: `scripts/verify_fold_bounds.py`.

## 7. Replay, deliverables, and atlas consequence

From the package root, run with an ordinary Python 3 interpreter:

```sh
python3 scripts/verify_all.py
```

When invoked inside this package, the runner executes all six certificates, writes complete receipts to `receipts/`, and fails on the first nonzero exit. It checks the exact Fourier fold census, full rank and symmetry action, side-only bounds, parameter-cube contraction, scalar monotonicity, and the global counterexample. No numerical solver, external algebra package, or network access is required.

**PROVED operational consequence.** A four-dimensional smooth framed chart through F6, with a certified finite parameter domain, is now available. It supplies the geometric and side-enclosure replacement for the exceptional 25-dimensional F6 chart. The finite stabilizer affects multiplicity, not coverage. The atlas can use (20) and the predictor (21) for its local enclosures; individual Stage C and atlas-boundary checks still have to be applied to the chosen records.

The main remaining global geometry question from this brief is the classification requested in Q4. It is unnecessary for the stated F6 replacement because strict charts cover the non-F6 classes under the supplied coverage theorem.

## References and provenance

- The six input documents reproduced in `input_context/` are the supplied dependencies listed at the start. Their broad atlas claims are not substituted for the local proofs above.
- W. Tadej and K. Zyczkowski, *Defect of a unitary matrix*, [arXiv:math/0702510](https://arxiv.org/abs/math/0702510): background on defect as a tangent-dimension upper bound. The rank needed here is independently certified.
- N. Barros e Sa and I. Bengtsson, *Families of complex Hadamard matrices*, [arXiv:1202.1181](https://arxiv.org/abs/1202.1181), p. 3: historical distinction between a four-dimensional family and proving smooth inclusion of F6. No current classification or open-status assertion is inferred from that historical discussion.

