# Analytic rank and explicit conditioning for order-six Hadamards

## Results and scope

**The main rank task is resolved analytically relative to the reconstruction
inputs explicitly permitted in the handoff.** Every non-Tao order-six complex
Hadamard has a four-dimensional horizontal Jacobian kernel. No atlas, density
argument, or numerical rank decision is used in this proof.

The main new identity is particularly small. If a normalized flat \(3\times3\)
side block has six phase variables and its off-diagonal Gram map has real
Jacobian \(A_B\), then

\[
\boxed{\det(A_B)^2=\frac{\mathscr R(BB^*)}{64}.}                 \tag{1}
\]

At a strict corner, both side differentials are therefore invertible. This
makes every infinitesimal deformation determined by its four seed phases.
Matched reconstruction supplies the converse four-dimensional family,
including across the presentation's square-root sign switches.

Additional results are:

- A proof that the **dephased** non-Tao Hadamard set is a real analytic
  four-manifold, including at the Fourier matrix. This uses the same
  reconstruction inputs and the exact Fourier spectrum.
- A fully explicit bound for any strict corner with discriminant \(R\) and
  complementary Gram determinant \(g\):

  \[
  \boxed{\sigma_{21}(J_H)\ge
  \left[\frac{10368}{R}
  +\frac{81}{4g}\left(1+\frac{144\sqrt6}{\sqrt R}\right)^2
  \right]^{-1/2}\ge\frac{R^{3/4}}{4700}.}                    \tag{2}
  \]

- The **optimal all-flat-base Hessian constant** in the stated normalization,
  for horizontal real phase directions:

  \[
  \boxed{\|\Phi''_Z[u,v]\|\le\frac6{\sqrt5}\|u\|_F\|v\|_F.} \tag{3}
  \]

- An explicit analytic global positive lower bound, under the rank theorem:

  \[
  \boxed{\sigma_{\min}^{+}(J_H)\ge 2^{-N},\qquad
  N=11050\cdot168^{50}+36.}                                  \tag{4}
  \]

  This follows from a stated effective polynomial-positivity theorem. It is
  computationally useless: \(N\approx2.03623\times10^{115}\). It meets the
  weaker positive-constant alternative but does not explain useful atlas
  radii.
- Exact equality throughout both the Fourier and transposed Fourier
  sectors. These sectors have an intrinsic characterization by antipodal
  row or column pairs and intersect only in the Fourier equivalence class.
- A constant exact spectrum on the **entire Diţă parameter circle**:

  \[
  \boxed{\operatorname{spec}(J^TJ)
  =0^{[4]},6^{[10]},10^{[6]},12^{[5]}.}                       \tag{5}
  \]

**Still open:** the sharp global inequality
\(\sigma_{\min}^{+}\ge\sqrt3\), and whether its equality cases are exhausted
by the Fourier and transposed Fourier sectors. No counterexample is claimed.

Here and below singular values are ordered decreasingly. Thus
\(\sigma_{21}=\sigma_{\min}^{+}\) at a rank-21 point. Superscript brackets
denote multiplicity, not exponentiation of an eigenvalue.

## 1. Imported hypotheses and normalization

All Hadamards are raw matrices:

\[
|H_{aj}|=1,\qquad HH^*=H^*H=6I.
\]

The Jacobian retains one complex off-diagonal constraint per unordered row
pair, with real and imaginary parts carrying the usual Euclidean norm:

\[
(L_Hu)_{ab}=i\sum_jH_{aj}\overline H_{bj}(u_{aj}-u_{bj}),\quad a<b.
\]

The symbol \(L_H\) denotes the full map on 36 real phases, and \(J_H\) its
restriction to the 25-dimensional horizontal subspace. The full row-Gram
derivative has squared Frobenius norm \(2\|L_Hu\|^2\); this factor is kept
throughout.

### 1.1 Exactly which reconstruction inputs are used

The global rank and manifold conclusions assume the following statements
from the handoff's `reference/reconstruction/ASSUMPTIONS.md` and
`RECONSTRUCTION.md`, copied into `inputs/`.

1. **MC1, strict-corner coverage:** every non-Fourier equivalence class has a
   positional \(3\times3\) corner with \(R>0\).
2. **MC2–MC3, side formulas and exhaustion:** on the open strict seed domain,
   the displayed side formulas have the stated nonzero divisors and root
   arguments, and recover the two normalized side orbits. Cube-root choices
   permute side columns. At \(d_F=0\), either square-root sign gives the same
   side orbit up to a permutation.
3. **MC4, matched flatness and exceptional converse:** both matched pairings
   are flat throughout that domain; every strict non-Tao completion is one
   of those matched pairings, up to the permitted side permutations.

We retain both matched sheets. **MC5, positive-sheet transport, is not
needed.** Nor are global connectedness, a dense-immersion theorem, or any
no-four-MUB statement needed.

The attachment reports these reconstruction inputs as completed elsewhere,
but does not include the referenced `Proofs/` dossier. Their proofs have not
been independently replayed here. The conditional theorem below is precisely
within the assumption allowance in Task A; it is not an independent proof
of MC1–MC4 or of the public classification paper's consequences.

### 1.2 Gauge and the standard defect

Let

\[
\mathcal G=\{u:u_{aj}=r_a+c_j\},\qquad
\mathcal D=\{u:u_{0j}=u_{a0}=0\},\qquad
\mathfrak h=\mathcal G^\perp.
\]

The dimensions are \(11,25,25\). Row orthogonality gives \(L_H\mathcal G=0\).
Explicit dephasing and horizontal projection are

\[
(Du)_{aj}=u_{aj}-u_{a0}-u_{0j}+u_{00},
\]

\[
(Pu)_{aj}=u_{aj}-\frac16\sum_k u_{ak}
-\frac16\sum_bu_{bj}+\frac1{36}\sum_{b,k}u_{bk}.
\]

They induce inverse maps between the dephased and horizontal kernels.
Consequently

\[
\dim\ker L_H=11+\dim\ker J_H,
\qquad \dim\ker(L_H|_{\mathcal D})=\dim\ker J_H.              \tag{6}
\]

This is exactly the usual Tadej–Życzkowski defect. Indeed, for

\(U=H/\sqrt6\), the kernel of the differential of
\(U\mapsto(|U_{aj}|^2)\) on (U(6)) consists of tangent vectors
\(iU\circ u\) with \(L_Hu=0\). Subtracting the 11 phase-gauge directions
therefore gives

\[
d(U)=\dim\ker J_H.                                         \tag{7}
\]

There are no extra linear directions in one definition compared with the
other. Integrability of those directions is a separate question, addressed
below. Reference [TZ] supplies the terminology; (6)–(7) give the explicit
identification.

## 2. Universal Gram identity and invariances

For cells \((a,j),(b,k)\), define

\[
K_{(a,j),(b,k)}=
H_{aj}\overline H_{bj}H_{bk}\overline H_{ak},\qquad T=\Re K.
\]

Put \(X=H\circ u\) and \(A=XH^*\). The derivative of the row Gram is

\(i(A-A^*)\), with zero diagonal, and hence

\[
\begin{aligned}
\|L_Hu\|^2
&=\tfrac12\|A-A^*\|_F^2\\
&=\|A\|_F^2-\Re\operatorname{tr}(A^2)\\
&=6\|u\|_F^2-u^TTu.
\end{aligned}
\]

Polarization proves

\[
\boxed{L_H^TL_H=6I_{36}-T.}                                \tag{8}
\]

The complex matrix \(K\) is symmetric and satisfies

\[
\boxed{KK^*=36I.}                                         \tag{9}
\]

To check (9), its entry indexed by \((a,j),(c,l)\) is

\[
H_{aj}\overline H_{cl}
\left(\sum_b\overline H_{bj}H_{bl}\right)
\left(\sum_k\overline H_{ak}H_{ck}\right)
=36\delta_{ac}\delta_{jl}.
\]

Writing \(K=T+iS\), real symmetry gives

\[
[T,S]=0,\qquad T^2+S^2=36I.
\]

Thus every squared singular value lies in \([0,12]\). The gauge is a
zero eigenspace of (8), and horizontal restriction removes exactly eleven
zeros without changing any positive eigenvalue.

Diagonal row phases rotate each complex output constraint; column phases
cancel. Row and column permutations act by orthogonal coordinate changes,
and conjugation preserves the real output norm. For transposition one can
either transpose the cross-ratio formula, whose real part is unchanged, or
use the following derivative identity. If \(Z=iH\circ u\), then

\[
Q=ZH^*+HZ^*,\qquad
Q_c=H^*Z+Z^*H=\frac16H^*QH.                               \tag{10}
\]

The two Frobenius norms agree, since \(H/\sqrt6\) is unitary, and both
diagonals vanish. This proves all requested singular-spectrum invariances.

The sharp bound in Task B is equivalently the assertion that \(T\) has no
eigenvalues in \((3,6)\). Equations (8)–(9) alone do not establish that
spectral exclusion.

## 3. The strict-side determinant identity

For a Hermitian matrix with diagonal three, use the convention

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix}.
\]

Define \(X=|s|^2,Y=|t|^2,Z=|r|^2,p=X+Y+Z\), and

\[
\begin{aligned}
J_0&=2\Re(sr\bar t), & W&=XY+XZ+YZ-XYZ,\\
g&=27-3p+J_0, & \eta&=9-p+J_0,\\
\chi&=W-(p-9)(p-18)+(p-15)J_0, &
\mathscr R(G)&=4g^2\eta-\chi^2.
\end{aligned}                                               \tag{11}
\]

The name \(J_0\) distinguishes this scalar invariant from the Jacobian.
For a corner \(E\), the handoff's (R(E)) is
\(\mathscr R(6I-EE^*)\).

### Lemma 1: an arbitrary flat side

Let

\[
B=\begin{pmatrix}1&1&1\\x_0&x_1&x_2\\y_0&y_1&y_2\end{pmatrix},
\qquad |x_j|=|y_j|=1,
\]

and define

\[
q(B)=\frac{\operatorname{perm}(B)\det(B)^2}
{x_0x_1x_2y_0y_1y_2}.
\]

Let \(A_B\) be the real derivative of

\[
\Gamma_B=(s,t,r)=
\left(\sum_jx_j,\sum_jy_j,\sum_jy_j\bar x_j\right)
\]

with respect to the six phases, in output order
\((\Re s,\Re t,\Re r,\Im s,\Im t,\Im r)\). Then

\[
\boxed{\det A_B=-\tfrac14\Im q(B),\qquad
\mathscr R(BB^*)=4(\Im q(B))^2.}                           \tag{12}
\]

In particular (1) holds for every flat side, including all degenerate cases.

**Proof.** Set \(w_j=y_j/x_j\), treating unit-phase conjugation as inversion.
The six complex derivative equations, after removing their factors \(i\)
and (-i), form the Laurent matrix

\[
M=\begin{pmatrix}
x^T&0\\0&y^T\\-w^T&w^T\\
\bar x^T&0\\0&\bar y^T\\-\bar w^T&\bar w^T
\end{pmatrix}.
\]

Passing from real and imaginary coordinates to a complex vector and its
conjugate has determinant (8i), while the removed diagonal factors have
product one. Thus \(\det M=8i\det A_B\).

For an explicit small expansion, put \(a=x\times\bar x\) and

\(b=y\times\bar y\). A two-block Laplace expansion gives

\[
\det M=(w\cdot a)(\bar w\cdot b)
-(\bar w\cdot a)(w\cdot b)=\bar q-q.                       \tag{13}
\]

The last equality is an identity in the six independent Laurent variables

\(x_0,x_1,x_2,y_0,y_1,y_2\): expand the \(3\times3\) permanent and
determinant in \(q\) and collect terms. Both sides have the same 48 nonzero
Laurent coefficients. The supplied verifier independently expands the
six-by-six determinant, the cross-product expression, and \(\bar q-q\).
Consequently \(\det A_B=-\Im q/4\).

The remaining identities needed for the discriminant are

\[
g=|\det B|^2,\qquad \eta=|\operatorname{perm}B|^2,
\qquad \chi=-(q+\bar q).                                  \tag{14}
\]

The first is the Gram determinant identity; the last two follow by expanding
the same six permutation monomials in (11). They are checked independently
as Laurent identities, including the minus sign in \(\chi\). Since

\(|q|^2=g^2|\operatorname{perm}B|^2\), equations (11) and (14) give

\[
\mathscr R(BB^*)=4|q|^2-(q+\bar q)^2
=-(q-\bar q)^2=4(\Im q)^2.
\]

All these identities have been expanded with exact integer coefficients;
none is inferred from sample sides or requires a nonzero denominator other
than the unit phases. This proves the lemma. ∎

### Lemma 2: both physical sides have the same discriminant

For any flat corner \(E=\bigl(\begin{smallmatrix}1&1&1\\1&a&b\\1&c&d\end{smallmatrix}\bigr)\),

\[
\mathscr R(6I-EE^*)=\mathscr R(6I-E^T\bar E).               \tag{15}
\]

Their \(g,\eta,\chi\) invariants also agree. This follows by substitution
in (11), with transposition interchanging \(b,c\). The four-variable
Laurent identities are included in `verify_side_identity.py`.

For a Hadamard \(H=\bigl(\begin{smallmatrix}E&B\\C&D\end{smallmatrix}\bigr)\),
these two Grams are \(BB^*\) and \(C^T\bar C\). Therefore

\[
\det A_B^2=\det A_{C^T}^2=R(E)/64.                         \tag{16}
\]

Also \(R(E)>0\) forces \(B\) to be invertible: \(BB^*\succeq0\), and if
its determinant \(g\) were zero, (11) would give \(R=-\chi^2\le0\).

## 4. The rank theorem

### Theorem 1: strict-corner upper bound, without classification

Every physical order-six Hadamard possessing a strict corner satisfies

\[
\dim\ker J_H\le4.                                         \tag{17}
\]

**Proof.** Move the corner to the upper left and dephase \(H\). Suppose

\(u\in\mathcal D\cap\ker L_H\), and that its four seed coordinates

\(u_{11},u_{12},u_{21},u_{22}\) vanish. Then the complete corner velocity

\(\dot E=iE\circ u_E\) vanishes.

The first three row-Gram equations give

\[
\frac d{dt}(BB^*)=-\frac d{dt}(EE^*)=0.
\]

The first row of \(B\) has zero phase velocity. Lemma 1 therefore gives

\(A_Bu_B=0\); by (16), \(u_B=0\), so \(\dot B=0\).

Equation (10) shows that a vanishing full row-Gram derivative also makes
the full column-Gram derivative vanish. The first three column equations,
applied to \(C^T\), give \(A_{C^T}u_{C^T}=0\). Thus \(\dot C=0\).

Finally differentiate the cross-block identity

\[
EC^*+BD^*=0.
\]

All terms except \(B\dot D^*\) vanish. Since \(B\) is invertible,

\(\dot D=0\). Consequently \(u=0\).

The linear map from the dephased kernel to its four seed coordinates is
injective. Its dimension is at most four, and (6) transfers the result to
the horizontal kernel. ∎

This proof includes strict Tao completions. They merely have a smaller
kernel. Its only physical input is the Hadamard equations and \(R>0\).

### Theorem 2: exact rank under MC1–MC4

Assume the reconstruction inputs in Section 1. Then

\[
\boxed{\dim\ker J_H=4\quad\text{for every }H\not\cong S_6.} \tag{18}
\]

At Tao, the dimension is zero.

**Proof of the lower bound at strict non-Tao points.** Choose the matched
sheet that reconstructs the actual matrix, as provided by MC4. Since

\(R,g>0\), the functions \(z_\pm=(\chi\pm i\sqrt R)/(2g)\) are real
analytic locally. All prescribed divisors and complex root arguments are
nonzero. A nonzero complex real analytic function has a local analytic
square or cube root after fixing its value at the center.

There is one presentation issue: the canonical side formula changes its
square-root sign to enforce \(d_F\ge0\). Fix analytic square roots instead.
At a point with \(d_F\ne0\), choose its canonical sign and shrink the
neighborhood. At a point with \(d_F=0\), either sign is permitted at the
center and \(\rho=(n+d_F)/2=n/2>0\), so either continued choice remains
defined nearby. This applies separately to both sides.

Choose one connected neighborhood on which all finitely many candidate
expressions are defined. Each \(d_F\) is real analytic; unless it is
identically zero, its zero set has empty interior. There is therefore a
nonempty open subset on which the two nonidentically-zero sign functions
have fixed signs. At the sides whose center values were zero, select the
root sign matching the canonical constructor on that subset. Fix analytic
cube roots as well.

The resulting matched formula is one real analytic matrix on the full
neighborhood. On the chosen open subset it is, up to allowed side
permutations, the canonical matched Hadamard. Every entry-modulus and Gram
identity is real analytic and vanishes there, so the real analytic identity
theorem makes it vanish throughout the connected neighborhood. At the
center, all choices were allowed; a fixed pair of side permutations makes
the center exactly the original \(H\).

This produces a real analytic family \(H(\theta)\) through the actual
matrix, with leading corner exactly \(E(\theta)\). Its differential has
rank four because the four seed coordinates differentiate to the identity.
Differentiating the Hadamard equations embeds those four directions in
the kernel. Thus the kernel dimension is at least four. Together with
Theorem 1 it equals four.

MC1 now covers every non-Fourier, non-Tao class. At \(F_6\), Section 8
proves directly that the horizontal spectrum has exactly four zeros. At
Tao that section proves injectivity. This completes (18). ∎

No assumption that a generic family is dense has been used. The proof
constructs a local family through every strict non-Tao point, and handles
the remaining Fourier point exactly.

## 5. Analytic smoothness, including Fourier

At a strict non-Tao point, use 25 dephased local phase coordinates and
select 21 real Hadamard equations with independent differentials. Their
common zero set is locally a connected real analytic four-manifold \(M\).
Every nearby physical point lies in \(M\). The family constructed in
Theorem 2 lies in \(M\), and its derivative is an isomorphism onto the
tangent space of \(M\). Its image is therefore open near the center.
After shrinking, \(M\) is precisely the physical solution set. This is a
genuine manifold conclusion, not an inference from kernel dimension alone.

The same conclusion at Fourier needs an additional step. Work at

\[
F_0=\begin{pmatrix}F_3&F_3\\F_3&-F_3\end{pmatrix}\cong F_6.
\]

Its exact rank 21 again gives a connected analytic four-manifold \(M\)
defined by 21 independent equations near \(F_0\). Consider

\[
F(t)=\begin{pmatrix}F_3&F_3\\F_3D(t)&-F_3D(t)\end{pmatrix},
\qquad D(t)=\operatorname{diag}(1,e^{it},1).
\]

For \(0<t<\pi/3\), its cross-ratio multiset contains \(e^{it}\), which is
neither a sixth root nor a third root. Thus it is equivalent to neither

\(F_6\) nor Tao. For sufficiently small \(t>0\), it lies inside the
chosen neighborhood. MC1 and Theorem 2 give a four-dimensional physical
family near (F(t)). Transport its frame back to the original dephased
coordinates and shrink it to lie in \(M\). Its image contains an open
subset of \(M\). The remaining Hadamard equations vanish on that subset
and are real analytic on connected \(M\), so they vanish everywhere on

\(M\), including at \(F_0\).

Therefore, under MC1–MC4, the dephased non-Tao Hadamard set is a real
analytic four-manifold everywhere. Restoring the eleven phase-gauge
directions gives a raw manifold of dimension fifteen.

The quotient by **all** monomial equivalences also divides by a finite
permutation action, which can have stabilizers. The conclusions above give
local finite quotients of a manifold; they do not constitute an isotropy
analysis proving that the full equivalence-class space is a smooth
manifold.

## 6. Explicit conditioning on a strict corner

Each of the six columns of \(A_B\) has squared norm two. Thus

\(\|A_B\|_F^2=12\). By (16) and arithmetic–geometric mean on its five
largest squared singular values,

\[
\|A_B^{-1}\|\le
\frac{8(12/5)^{5/2}}{\sqrt R}<\frac{72}{\sqrt R}=:\alpha.
\]

The same estimate holds for \(C^T\). Since \(\operatorname{tr}(BB^*)=9\),
its two largest eigenvalues have product at most \(81/4\), giving

\[
\|B^{-1}\|\le\frac9{2\sqrt g}=: \beta.                     \tag{19}
\]

Let \(V\subset\mathcal D\) be the 21-dimensional plane whose seed phases
vanish. For \(u\in V\), put \(h=\|L_Hu\|\). The top row constraints and
the left column constraints, with (10), imply

\[
\|u_B\|\le\alpha h,\qquad\|u_C\|\le\alpha h.
\]

The cross-block derivative is

\[
Q_{\rm cross}=E\dot C^*+\dot B D^*+B\dot D^*.
\]

Its nine entries are distinct output constraints, so

\(\|Q_{\rm cross}\|_F\le h\). Every submatrix of \(H\) has operator
norm at most \(\sqrt6\). Therefore

\[
\|u_D\|=\|\dot D\|_F
\le\beta(1+2\sqrt6\alpha)h.
\]

It follows that

\[
\|u\|^2\le
\left[2\alpha^2+\beta^2(1+2\sqrt6\alpha)^2\right]\|L_Hu\|^2.
\]

Horizontal projection is injective on \(V\), contracts its norm, and
leaves \(L_Hu\) unchanged. Hence the same lower bound holds on the
21-dimensional horizontal plane \(PV\). Courant–Fischer gives the first
inequality in (2). There is no dephasing metric penalty in this direction
of the estimate.

For the simpler discriminant-only bound, the physical side Gram satisfies

\(0\preceq G\preceq6I\), \(\operatorname{tr}G=9\). Set \(S_0=G-3I\).
Then

\[
\operatorname{tr}S_0=0,\quad p=\tfrac12\operatorname{tr}S_0^2,
\quad J_0=\det S_0,\quad\operatorname{spec}S_0\subset[-3,3].
\]

One has \(J_0\le p\). If \(J_0\le0\), this is immediate. Otherwise the
eigenvalues are \(x+y,-x,-y\), with \(x,y>0\) and \(x+y\le3\), and

\[
J_0=xy(x+y)\le3xy\le x^2+xy+y^2=p.
\]

Thus \(\eta\le9\), \(R\le36g^2\), and \(g\ge\sqrt R/6\). Also

\(\det(A_B)^2\le(12/6)^6=64\), so \(R\le4096\). Substituting into
the first bound and using \(\sqrt6<49/20\) gives

\[
\frac{10368}{R}+\frac{81}{4g}
\left(1+\frac{144\sqrt6}{\sqrt R}\right)^2
<\frac{4700^2}{R^{3/2}}.
\]

The exact scalar comparison is

\[
10368\cdot64+\frac{243}{2}
\left(64+144\frac{49}{20}\right)^2<4700^2.
\]

This proves the second inequality in (2). The estimate is analytic and
applies to every strict physical corner; it does not require a reconstruction
formula. Its deterioration as \(R\to0\) is explicit.

## 7. A sharp global Hessian estimate

This section is unconditional and holds at **every flat base** \(Z\),
without requiring \(ZZ^*=6I\). Let \(Q=\Phi_Z''\). Then

\[
Q[u,v]_{ab}=-\sum_j Z_{aj}\overline Z_{bj}
(u_{aj}-u_{bj})(v_{aj}-v_{bj}).
\]

### 7.1 Reduction to a scalar extremal problem

For horizontal \(u\) with \(\|u\|_F=1\), denote its rows by \(r_a\).
The componentwise triangle inequality gives

\[
\|Q[u,u]\|^2\le\sum_{a<b}\|r_a-r_b\|^4.                  \tag{20}
\]

Let \(G=uu^T\). It is positive semidefinite, \(G\mathbf1=0\), and

\(\operatorname{tr}G=1\). Direct expansion of the right side yields

\[
6\sum_aG_{aa}^2+1+2\operatorname{tr}(G^2).                 \tag{21}
\]

The sum of squared pair-distance forms is convex in \(G\). Its spectral
decomposition writes \(G\) as a convex combination of \(xx^T\), with

\(\sum_i x_i=0\) and \(\sum_i x_i^2=1\). It is enough to maximize
(21) at those rank-one matrices, where the expression is

\(6\sum_i x_i^4+3\).

The sharp scalar inequality is

\[
\sum_i x_i^4\le\frac7{10}.                                \tag{22}
\]

Here is a complete extremal proof. The constrained sphere is compact and
its two constraint gradients are independent. At a maximum, all coordinates
are roots of one cubic \(4t^3-2\lambda t-\mu=0\). If all three distinct
roots \(a<b<c\) occur, neither outer root can have multiplicity at least
two: varying two equal coordinates oppositely gives a tangent direction
with constrained Hessian coefficient \(4(a-b)(a-c)>0\), or

\(4(c-a)(c-b)>0\), contradicting a maximum. The multiplicities must be

\(1,4,1\). The cubic has zero quadratic coefficient, so \(a+b+c=0\),
while the zero-sum constraint gives \(a+4b+c=0\). Hence \(b=0,c=-a\),
which yields fourth moment \(1/2\), below the explicit competitor \(7/10\).

It remains to consider two distinct coordinate values, with multiplicities

\(k,6-k\). Solving the sum and norm constraints gives fourth moment

\[
\frac6{k(6-k)}-\frac12\le\frac7{10},\qquad1\le k\le5.
\]

The all-equal case is incompatible with both constraints. This proves (22).
Equations (20)–(22) give \(\|Q[u,u]\|\le6/\sqrt5\). Polarization for
unit \(u,v\), followed by bilinearity, gives (3).

### 7.2 Sharpness and implications

At the all-ones flat base, take \(u=xy^T\), with

\[
x=\frac{(5,-1,-1,-1,-1,-1)}{\sqrt{30}},\qquad
y=\frac{(1,-1,0,0,0,0)}{\sqrt2}.
\]

The matrix \(u\) is horizontal and has norm one. Exactly five of the
Hessian outputs equal \(-6/5\), and the other ten vanish. Their squared
norm is \(36/5\). Therefore the constant in (3) cannot be reduced for
all flat bases. A possibly smaller optimum restricted only to Hadamard
bases is a different question and is not asserted here.

Integration along horizontal phase segments now gives

\[
\|J_{P+v}-J_P\|\le\frac6{\sqrt5}\|v\|_F.                  \tag{23}
\]

Thus any certified normal lower bound \(\sigma\) at a center propagates
to \(\sigma-(6/\sqrt5)r\) at radius \(r\). In particular:

- About an exact Fourier-family base at radius \(2/25=0.08\),
  \(\sigma_{21}\ge\sqrt3-12/(25\sqrt5)>1.517\).
- From an actual certified 21-dimensional normal bound \(17/10=1.70\)
  at radius at most \(2/25\),
  \(\sigma_{21}\ge17/10-12/(25\sqrt5)>1.485\).

These are full horizontal matrix-phase radii. The second implication
does not verify any atlas record or establish coverage.

There is also an explicit Tao isolation radius. If a distinct Hadamard
has a horizontal phase representative \(S_6\circ e^{iv}\), Taylor's theorem
gives

\[
0=J_{S_6}v+\mathcal E(v),\qquad
\|\mathcal E(v)\|\le\frac3{\sqrt5}\|v\|^2.
\]

Combining this with the exact Tao singular value yields

\[
\frac3{\sqrt2}\|v\|\le\frac3{\sqrt5}\|v\|^2,
\qquad\text{so }\|v\|\ge\sqrt{5/2}.                        \tag{24}
\]

Thus no distinct representative lies at a smaller horizontal phase
distance from Tao. This is independent of MC1–MC4.

## 8. Exact Fourier and Tao spectra

These spectra are unconditional. Their normalization is independently
verified in this package.

### 8.1 The entire affine Fourier family

Write \(z=(1,a,b)\), \(\omega=e^{2\pi i/3}\), and

\[
F(z)_{(p,r),(q,j)}=(-1)^{pq}\omega^{rj}z_j^p.
\]

Row orthogonality follows by separately summing the binary and ternary
characters. For the real cross-ratio matrix \(T\), normalized sum and
difference across the two column-block values \(q\) give

\[
T_+=\operatorname{diag}(2A,2A),\qquad
T_-=\begin{pmatrix}0&2B\\2B^T&0\end{pmatrix},
\]

where

\[
A_{(r,j),(s,k)}=\Re\omega^{(r-s)(j-k)},\qquad
B_{(r,j),(s,k)}=\Re\left(\omega^{(r-s)(j-k)}z_k/z_j\right).
\]

The ternary Fourier transform in \(r,s\) gives three \(3\times3\) blocks:

\[
B_0=3I,\quad B_1=\tfrac32 DCD,\quad
B_2=\tfrac32D^{-1}CD^{-1},
\]

\[
C=\mathbf1\mathbf1^T-I_3,\qquad
D=\operatorname{diag}(z_2/z_1,z_0/z_2,z_1/z_0).
\]

Since \(D\) is unitary and \(C\) has eigenvalues \(2,-1,-1\),

\(B\) has singular values \(3^{[5]},(3/2)^{[4]}\). Setting \(z=1\)
also gives the eigenvalues \(3^{[5]},(-3/2)^{[4]}\) of \(A\). Combining
the two real blocks and using (8) gives

\[
\operatorname{spec}(L_F^TL_F)=0^{[15]},3^{[4]},9^{[12]},12^{[5]}.
\]

After removing eleven gauge zeros,

\[
\boxed{\operatorname{spec}(J_F^TJ_F)
=0^{[4]},3^{[4]},9^{[12]},12^{[5]}.}                        \tag{25}
\]

The supplied exact Fourier-family block verifier has been retained as
`verify_fourier_family.py`. It checks a transposed presentation of the
same family by complete symbolic character sums; Section 2 proves the
equivalence of the spectral conclusions.

### 8.2 Tao

For the exponent table in `verify_tao.py`, every difference of distinct
rows contains each residue modulo three twice. This proves orthogonality.
Set \(B=2L_{S_6}^TL_{S_6}\). All its entries are integers, since twice
the real part of a third root is (2) or \(-1\). Exact multiplication gives

\[
B(B-9I)(B-24I)=0,\quad
\operatorname{tr}B=360,\quad\operatorname{tr}B^2=6480.
\]

Real symmetry and the distinct annihilator roots put the complete spectrum
in \(\{0,9,24\}\). Dimension 36 and the two traces uniquely give
multiplicities \(11,16,9\). Therefore

\[
\boxed{\operatorname{spec}(J_{S_6}^TJ_{S_6})
=(9/2)^{[16]},12^{[9]}.}                                  \tag{26}
\]

In particular, Tao has rank 25 and least singular value \(3/\sqrt2\).

## 9. An explicit positive global constant

This section uses Theorem 2 and the external effective-positivity theorem
[JPT, Theorem 1]. It uses no atlas. It is included to give an actual number
for the weaker alternative in Task B; its severe loss is explicit.

Dephase \(H\), writing its 25 free entries as \(x_{aj}+iy_{aj}\). The
Hadamard set is a compact real algebraic set in 50 variables, cut out by
25 circle equations and 30 real row-orthogonality equations. All 55
polynomials have degree at most two and coefficient height at most one.

Define a real symmetric polynomial matrix \(M\) on the 25 free cells by

\[
M_{(a,j),(b,k)}=
\begin{cases}
5,&(a,j)=(b,k),\\
-1,&(a,j)\ne(b,k),\ a=b\text{ or }j=k,\\
-\Re(H_{aj}\bar H_{bj}H_{bk}\bar H_{ak}),&\text{otherwise}.
\end{cases}                                                \tag{27}
\]

On Hadamards, \(M=(L_H|_{\mathcal D})^T(L_H|_{\mathcal D})\). Every
entry of this reduced polynomial matrix has degree at most four and
coefficient \(\ell^1\) norm at most eight. Using the reduced constant
diagonal and same-row/column entries is essential for that height bound.

Let \(p=e_{21}(M)\), the sum of the 21-by-21 principal minors. The rank
theorem and the exact Tao spectrum imply \(p>0\) everywhere on the compact
Hadamard set. As an integer polynomial,

\[
\deg p\le84,\qquad
\|p\|_{\ell^1}\le {25\choose21}21!\,8^{21}<2^{143}.         \tag{28}
\]

The last estimate is the determinant expansion and triangle inequality;
it requires no huge symbolic expansion of \(p\).

The JPT theorem bounds a nonzero polynomial minimum on a compact connected
component, for \(n\) variables, \(m\) constraints, even degree bound \(d\)
and coefficient bound \(h\), below by

\[
\left(2^{4-n/2}\max\{h,2n+2m\}\,d^n\right)^{-n2^nd^n}.
\]

Use \(n=50,m=55,d=84,h=2^{143}\). Each connected component has a positive
minimum and the same bound applies to all components. The base is

\(2^{122}84^{50}<2^{442}\), and the exponent is \(50\cdot168^{50}\).
Thus

\[
p\ge2^{-22100\cdot168^{50}}.
\]

At a non-Tao matrix \(M\) has exactly 21 positive eigenvalues, all at most
12 by (8) and restriction to a coordinate subspace. Hence

\[
p\le12^{20}\lambda_{21}(M).
\]

Restriction cannot increase an ordered singular value. Taking square roots
and using \(12^{10}<2^{36}\) proves (4). The Tao case follows directly
from (26).

The loss comes from applying a general degree-84 positivity theorem in 50
real variables, then bounding twenty eigenvalues by twelve. This is a
rigorous explicit uniform constant, but it gives no evidence for the
specific number \(\sqrt3\) and no usable atlas size.

## 10. Equality sectors and the Diţă family

### 10.1 An intrinsic equality sector

Call a row or column pair **antipodal**, also called an ER pair, if its
coordinatewise quotients lie in a set \(\{\xi,-\xi\}\). This property
is invariant under the stated monomial equivalence.

For order six,

\[
\begin{aligned}
H\text{ has a column ER pair}&\iff H\cong F(a,b),\\
H\text{ has a row ER pair}&\iff H\cong F(a,b)^T.
\end{aligned}                                              \tag{29}
\]

Here is the nontrivial implication for rows. Normalize the two ER rows
and reorder columns to make them

\((1,1,1,1,1,1)\) and \((1,1,1,-1,-1,-1)\). Their orthogonality
forces three occurrences of each sign. Each of the other four rows then
has two triples summing to zero. A zero-sum triple of unit complex numbers
is a phase times the three distinct cube roots. After a row phase, its
first triple is either \(v=(1,\omega,\omega^2)\) or \(\bar v\).

Two rows with the same first triple must have second triples with inner
product \(-3\), hence those triples are negatives. There can be at most
two such rows of each type, and therefore exactly two of each. Permute
the last three columns so one second triple of the first type is \(av\).
Its partner is (-av). The other type's second triples are orthogonal
to both \((1,1,1)\) and \(v\), so are \(b\bar v,-b\bar v\). These rows,
together with the first two, are exactly \(F(a,b)^T\) in a different row
order. Transposition proves the column assertion. The reverse implications
are visible from the Fourier family itself.

Every matrix in either sector therefore has (25), so attains

\(\sigma_{\min}^{+}=\sqrt3\).

The two sectors are generally inequivalent under the question's equivalence,
which does not include transposition. Indeed, \(F(a,b)\) has three column
ER pairs. A row ER pair exists precisely when, for some \(d\in\{0,1,2\}\),

\[
a\in\{\omega^{-d},-\omega^{-d}\},\qquad
b\in\{\omega^{-2d},-\omega^{-2d}\}.                        \tag{30}
\]

Outside those twelve parameter choices, \(F(a,b)^T\) has no column ER
pair and cannot be equivalent to any member of the stated Fourier family.
In particular, **\(F(i,i)^T\) is an exact additional equality example**
under that equivalence. Its spectrum and ER count are checked independently
using twelfth-root arithmetic.

All twelve points (30) are equivalent to \(F(1,1)\cong F_6\): cyclically
permute the lower block's rows to remove the powers of \(\omega\), then
swap the two columns in each affected ER pair to remove the signs. The
explicit permutations for all twelve are verified. Thus the two sectors
intersect only at the Fourier class.

The remaining equality question is precise:

\[
\sigma_{\min}^{+}(J_H)=\sqrt3
\quad\stackrel{?}{\Longrightarrow}\quad
H\text{ has an ER row or column pair}.                     \tag{31}
\]

No necessity proof for (31) is supplied.

### 10.2 The complete Diţă circle

For every \(|c|=1\), consider

\[
D(c)=\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&i&-i&-ic&ic\\
1&i&-1&i&-i&-i\\
1&-i&i&-1&ic&-ic\\
1&-i/c&-i&i/c&-1&i\\
1&i/c&-i&-i/c&i&-1
\end{pmatrix}.                                             \tag{32}
\]

This convention is [MS, equation (10)]. Orthogonality is independently
verified here by collecting Laurent coefficients in \(c\).

Set \(B(c)=2L_{D(c)}^TL_{D(c)}\). Every coefficient is a Gaussian integer.
Exact matrix multiplication in the Laurent ring gives

\[
B(B-12I)(B-20I)(B-24I)=0,
\]

\[
\operatorname{tr}B=360,\quad
\operatorname{tr}B^2=6720,\quad
\operatorname{tr}B^3=134400.                               \tag{33}
\]

These identities are checked coefficientwise for arbitrary \(c\), not on
a grid. For unit \(c\), \(B\) is real symmetric. Its eigenvalues belong
to the four distinct annihilator roots. Dimension and the three traces
form a nonsingular Vandermonde system, whose multiplicities are

\(15,10,6,5\). Dividing by two and removing eleven zeros proves (5).

In particular, this entire non-Fourier sector has minimum positive
singular value \(\sqrt6\), strictly above the proposed equality value.
Writing \(G=L^TL\), an explicit full-kernel projector is

\[
P_0=I-\frac7{20}G+\frac7{180}G^2-\frac1{720}G^3.
\]

Subtracting the fixed gauge projector gives the four-dimensional horizontal
kernel projector. The polynomial is one at zero and zero at \(6,10,12\),
which proves the projector formula directly.

### 10.3 Optional nonaffine check

`proofs/EQUALITY_AND_DITA.md` also supplies a complete exact spectrum for
the Björck circulant, verified in the real field \(\mathbb Q(t)\),

\(t^4=12\). Its least positive singular value is

\(3(\sqrt3-1)>\sqrt3\). This is a supplementary exact example, not
coverage of a continuous sector and not evidence claimed as a global proof.

## 11. Reproduction and trust boundary

Run from this directory:

```text
python3 verify_all.py
```

Python 3.10+ and NumPy suffice. NumPy is used only as a container and matrix
multiplier for Python arbitrary-precision integers or `Fraction` objects
in the exact sector certificates. No binary64 eigensolver, parameter
sampling, or tolerance enters any acceptance decision. All check programs
exit nonzero on a failed identity. The runner refuses optimized Python
execution, captures each result, and writes a receipt.

The finite checks verify the side Laurent identities, both corner
orientations, gauge maps, exact Fourier/Tao/Diţă spectra, the transpose
equality witness and intersection permutations, the sharp Hessian's
algebra and constants, and the explicit global bound's degree/height
arithmetic. They support the written proofs. They do **not** replay the
imported MC dossier or establish an unproved analytic implication merely
by testing examples.

`exploration/` contains the supplied floating-point toolkit and centers,
with the rerun survey recorded separately. It is excluded from the exact
runner. The survey reproduces the handoff's ranks and numerical minima;
it supplies no coverage certificate.

The archive's `MINIMAL_PROOF.md` explicitly says its atlas re-certification
is in progress after the 9 October Stage C correction, and the atlas
certificate itself is absent. No no-four-MUB certification or completed
atlas replay is asserted by this return.

## References

- **[Handoff]** `ConditioningHandoff.zip`, supplied 9 October 2026. Exact
  imported reconstruction statements are preserved in `inputs/`. The
  input archive and selected source files are hashed in `SOURCE_MANIFEST.json`.
- **[TZ]** W. Tadej and K. Życzkowski, *Defect of a unitary matrix*,
  Linear Algebra and its Applications **429** (2008), 447–481.
  <https://arxiv.org/html/math/0702510v2>.
- **[CT]** M. Cárdenes Wuttig and J. Tindall, *A Complete Classification of
  Complex Hadamard Matrices of Order Six*, arXiv:2608.18053.
  <https://arxiv.org/html/2608.18053v1>. This is background provenance;
  the later MC1–MC4 statements used here are specified separately.
- **[JPT]** G. Jeronimo, D. Perrucci and E. Tsigaridas, *On the minimum of a
  polynomial function on a basic closed semialgebraic set and applications*,
  SIAM Journal on Optimization **23** (2013), 241–255, Theorem 1.
  <https://doi.org/10.1137/110857751>;
  author-hosted primary text:
  <https://mate.dm.uba.ar/~perrucci/On_the_minimum_pol_funct.pdf>.
- **[MS]** Á. K. Matszangosz and F. Szöllősi, *A characterization of complex
  Hadamard matrices appearing in families of MUB triplets*, Designs, Codes
  and Cryptography (2024), equation (10).
  <https://doi.org/10.1007/s10623-024-01503-w>.

Further details and the supplementary Björck convention are in the proof
supplements. All new global conclusions retain the dependency labels in
this document and `STATUS.md`.
