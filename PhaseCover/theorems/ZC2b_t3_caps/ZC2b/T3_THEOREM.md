# T3 transfers on spherical caps

## Status and scope

**PROVED, conditional on the stated source and target theorem inputs.** This
note supplies a cap test for a transfer from a seed ball into the Fourier
X-ball. It uses the source's already verified whole-ball normal form and the
XS identification theorem, with its W/U dependencies. It does not prove or
replay those theorem inputs, an entire atlas, Stage C, or a global MUB
nonexistence statement.

**PROVED.** Two positive-definite matrices of size **5 by 5** suffice: one
for the target parameter ellipsoid, and one for a fixed aligned phase
distance to Fourier. The output dimensions are four and thirty-six, but the
matrices have size five because the cap variable has four coordinates.
There is no need for a fifth-coordinate parameter lift, a thirty-seven by
thirty-seven PSD witness, a side-orientation test, or a side-root selection.
The nonlinear fourth parameter is linearized with an explicit, separately
verified norm remainder.

**NOT ESTABLISHED by this note.** Sufficiency of these tests does not imply
that a particular cap passes, that a proposed cap collection covers a
sphere, or that all 82 spheres in the brief admit a cap-only replacement.
The accompanying replay report, rather than this mathematical note,
records finite acceptance and construction counts. No floating-point
optimizer result is a mathematical acceptance criterion.

## 1. The source and its continuous phase lift

**PROVED, subject to the source input.** Let the source have radius
\(r>0\), parameter \(w\in\overline B_r\subset\mathbb R^4\), and a genuine
Hadamard family with continuous phase lift

\[
 Q(w)=Q_0+Uw+\tfrac12 H_2[w,w]+Xz(w).                 \tag{1.1}
\]

Here phases are row-major vectors in \(\mathbb R^{36}\), \(H_2\) is a
symmetric bilinear vector-valued map, and \(X\) is the fixed normal-space
map. The source certificate supplies

\[
 \|z(w)\|\le\tau,\qquad
 \|Dz(w)\|\le Z_1,\qquad
 \|D^2z(w)\|\le Z_2.                                \tag{1.2}
\]

It must also identify this lift with the lift to which the stored transfer
windings refer. The implementation of that obligation is in
`cert/patches.py:normal_form`; it must not be replaced by independently
choosing principal phases at each point. The exact matched-centre and
local-germ requirements are those in `Z/THEOREM.md`.

All vector norms below are Euclidean, all phase norms are Frobenius norms,
and all multilinear norms are operator norms. A matrix flattening with the
ordered input-product indices gives a valid upper bound on any bilinear
norm used here. A scalar bilinear form may instead use the spectral norm of
its symmetric four-by-four coefficient matrix.

**PROVED.** For every fixed linear map \(C\) on normal coordinates, either
of the following can supply the normal bounds:

\[
 T_0(C)\ge\sup_{\|w\|\le r}\|Cz(w)\|,
 \qquad
 T_2(C)\ge\sup_{\|w\|\le r}\|CD^2z(w)\|.            \tag{1.3}
\]

The elementary choices are
\(T_0(C)=\|C\|\tau\) and \(T_2(C)=\|C\|Z_2\).
The output-weighted bounds of ZT, implemented in `cert/cap_weighted.py`,
are also valid after their inequalities have been replayed. The minimum of
two independently proved upper bounds is another upper bound. A proposed
numerical estimate for either quantity is insufficient.

## 2. Cap geometry and the two available anchors

**PROVED.** Store a nonzero integer vector \(n\in\mathbb Z^4\) and an
exact rational number \(h\) satisfying
\(0<h<\|n\|\). The cap is

\[
 C(n,h)=\{x\in\mathbb R^4:\|x\|=1,\ n^Tx\ge h\},
 \qquad w=rx.                                      \tag{2.1}
\]

Write \(e=n/\|n\|\), \(t=h/\|n\|\). Either anchor in the following
table is valid:

| Anchor | \(c\) | Verified bound \(\|w-c\|\le\Delta\) |
|---|---|---|
| Rim-ball centre | \(rhn/(n^Tn)=rte\) | \(\Delta^2=r^2(1-t^2)\) |
| Sphere point | \(re\) | \(\Delta^2=2r^2(1-t)\) |

Indeed \(\|rx-rte\|^2=r^2(1+t^2-2t e^Tx)\le r^2(1-t^2)\),
and \(\|rx-re\|^2=2r^2(1-e^Tx)\le2r^2(1-t)\).
Both anchors belong to the closed source ball, so every straight segment
from the anchor to a cap point stays in the source ball. The rim-ball
centre has the smaller radius; the sphere anchor can be reused while
varying the aperture of a cap with fixed axis.

**PROVED.** The formulas remain mathematical statements with exact
algebraic \(e\). The checker need not store \(e\) or \(t\) as floats:
it encloses the square root \(\sqrt{n^Tn}\) in Arb. Integer \(n\) and
finite hexadecimal binary rationals for \(h\) are exact certificate data.

## 3. One generic affine model with an output-dependent error

**PROVED.** Fix an anchor \(c\) from Section 2, set \(v=w-c\), and
choose one of the following two models.

### 3.1 Polynomial-anchor model

Define

\[
 \overline Q=Q_0+Uc+\tfrac12H_2[c,c],\qquad
 \overline D=U+H_2[c,\cdot].                         \tag{3.1}
\]

Then, identically,

\[
 Q(w)=\overline Q+\overline Dv+\xi(w),\qquad
 \xi(w)=\tfrac12H_2[v,v]+Xz(w).                     \tag{3.2}
\]

For any fixed linear phase output \(B\), put

\[
 E_B^{\rm poly}
  =\tfrac12\|BH_2\|\Delta^2+T_0(BX).                \tag{3.3}
\]

It follows directly from (1.3) that
\(\|B\xi(w)\|\le E_B^{\rm poly}\) throughout the cap. The anchor
\(\overline Q\) need not itself be a Hadamard phase array for this
Taylor identity or any later use of the globally defined function
\(\psi\).

### 3.2 True-anchor model

Let

\[
 \overline Q=Q(c),\qquad \overline D=DQ(c).          \tag{3.4}
\]

An interval enclosure of this exact pair is obtained by
`patches.centre_jet`, using the original whole-ball contraction. Now

\[
 \xi(w)=\tfrac12H_2[v,v]
       +X\{z(c+v)-z(c)-Dz(c)v\}.                   \tag{3.5}
\]

Taylor's integral formula gives

\[
 E_B^{\rm local}
 =\tfrac12\bigl(\|BH_2\|+T_2(BX)\bigr)\Delta^2,
 \qquad \|B\xi(w)\|\le E_B^{\rm local}.             \tag{3.6}
\]

The absence of a nonzero \(T_0\) term makes the error tend to zero
quadratically as a true-anchor cap shrinks. The same formula applies at
the sphere anchor, using its larger \(\Delta\).

**PROVED.** In the rest of this note, \(E_B\) means the applicable one
of (3.3) and (3.6). All occurrences of \(\overline Q\),
\(\overline D\), and \(E_B\) must use the same model. Interval
uncertainty in the anchor value and derivative is carried through the
affine coefficients themselves; it is not silently dropped or counted as
a numerical residual.

## 4. Ordered-corner extraction and the signed fourth parameter

**PROVED.** Let \(G\) be the exact signed permutation on phases for the
group's allowed symmetry \(g\), so that the target candidate matrix is
\(K(w)=g\cdot H_{\rm source}(w)\). Fix the ordered row and column
triples \(I=(i_0,i_1,i_2)\), \(J=(j_0,j_1,j_2)\) of that T3 group.
Let \(L\in\mathbb Z^{3\times36}\) take its first three dephased
corner phases, including \(G\). Its rows are the rectangle functionals
for positions \((1,1),(1,2),(2,1)\). For example the first row applied
to \(Q\) gives

\[
 (GQ)_{i_1j_1}-(GQ)_{i_1j_0}-(GQ)_{i_0j_1}
 +(GQ)_{i_0j_0}.                                   \tag{4.1}
\]

Let \(S\in\mathbb Z^{9\times36}\) select the block
\(K[I,J^c]\), in any fixed complementary-column order, again including
\(G\). Define

\[
 P_3=I_3-\tfrac13\mathbf1\mathbf1^T,\qquad
 R=(P_3\otimes P_3)S.                              \tag{4.2}
\]

For nine real block phases \(a\), let

\[
 \psi(a)=\operatorname{Im}
 \frac{\operatorname{perm}(e^{ia})\det(e^{ia})^2}
      {\prod_{k=1}^9 e^{ia_k}}.                    \tag{4.3}
\]

The target's signed parameter is

\[
 p'(w)=\begin{pmatrix}
       LQ(w)+2\pi N_3-\theta_F\\
       -2\psi(SQ(w))
       \end{pmatrix},
 \qquad \theta_F=(\pi/3,2\pi/3,2\pi/3)^T.          \tag{4.4}
\]

Here \(N_3\in\mathbb Z^3\) is the group's existing corner winding.
Its sign and association with the exact continuous source lift are
unchanged. If the legacy group stores a fourth winding entry, it has no
effect on (4.4), exactly as in `edgecert.check_T3`.

### 4.1 Global scalar Taylor bound

**PROVED; the finite frequency identity is exactly checkable.** Expanding
the permanent and the two determinants and pairing opposite frequencies
gives

\[
 \psi(a)=\sum_{k=1}^{24}\sigma_k\sin(\nu_k^Ta),
 \quad \sigma_k\in\{-1,1\},\quad
 \sum_{k=1}^{24}\nu_k\nu_k^T=72(P_3\otimes P_3).
                                                               \tag{4.5}
\]

Each frequency is horizontal: its row sums and column sums vanish.
Consequently \(\psi(SQ)=\psi(RQ)\), and the row gradient
\(g=D\psi(S\overline Q)\) satisfies
\(g(P_3\otimes P_3)=g\). Cauchy--Schwarz applied to (4.5) yields

\[
 |D^2\psi(a)[u,v]|
 \le\left(\sum_k(\nu_k^Tu)^2\right)^{1/2}
      \left(\sum_k(\nu_k^Tv)^2\right)^{1/2}
 \le72\|u\|\|v\|.                                 \tag{4.6}
\]

Put

\[
 \psi_0=\psi(S\overline Q),\qquad
 D_R=\|R\overline D\|\Delta+E_R.                    \tag{4.7}
\]

Since \(\|R(Q(w)-\overline Q)\|\le D_R\), Taylor's theorem gives

\[
 \psi(SQ(w))=\psi_0+gR\{Q(w)-\overline Q\}
              +\rho_\psi(w),\qquad
 |\rho_\psi(w)|\le36D_R^2.                          \tag{4.8}
\]

This includes the full nonlinear phase increment, including its quadratic
predictor part and normal correction. Replacing \(D_R\) by
\(\|R\overline D\|\Delta\) while omitting \(E_R\) is not valid.

## 5. The ellipsoid affine output and its complete error

**PROVED.** Let the target X-ball have its prescribed invertible parameter
frame \(M_e\) and radius \(r_e>0\), centred at Fourier. Its open
parameter ellipsoid is

\[
 \mathcal E_e^\circ
 =\{p:\|M_e^{-1}p\|<r_e\}.                         \tag{5.1}
\]

At the chosen anchor define the fixed, gradient-dependent maps

\[
 J_c=\begin{pmatrix}L\\-2gR\end{pmatrix},\qquad
 A=M_e^{-1}J_c,\qquad
 p_c=\begin{pmatrix}
 L\overline Q+2\pi N_3-\theta_F\\-2\psi_0
 \end{pmatrix}.                                    \tag{5.2}
\]

Let \(e_4=(0,0,0,1)^T\), and set

\[
 a_p=M_e^{-1}p_c,\qquad B_p=A\overline D.            \tag{5.3}
\]

Equations (3.2)/(3.5), (4.4), and (4.8) imply the exact decomposition

\[
 M_e^{-1}p'(w)
   =a_p+B_pv+A\xi(w)-2M_e^{-1}e_4\rho_\psi(w).
                                                               \tag{5.4}
\]

Therefore a complete bound for the ellipsoid error is

\[
 \boxed{\varepsilon_p
    =E_A+72\|M_e^{-1}e_4\|D_R^2.}                   \tag{5.5}
\]

In elementary, unweighted polynomial form this reads

\[
 \begin{aligned}
 E_A&=\tfrac12\|AH_2\|\Delta^2+\|AX\|\tau,\\
 E_R&=\tfrac12\|RH_2\|\Delta^2+\|RX\|\tau,\\
 D_R&=\|R(U+H_2[c,\cdot])\|\Delta+E_R.
 \end{aligned}                                                    \tag{5.6}
\]

In elementary true-anchor form it reads

\[
 \begin{aligned}
 E_A&=\tfrac12(\|AH_2\|+\|AX\|Z_2)\Delta^2,\\
 E_R&=\tfrac12(\|RH_2\|+\|RX\|Z_2)\Delta^2,\\
 D_R&=\|RDQ(c)\|\Delta+E_R.
 \end{aligned}                                                    \tag{5.7}
\]

Replacing \(\|AX\|\tau\), \(\|RX\|\tau\) or the corresponding
second-derivative bounds by the verified quantities (1.3) gives the
output-weighted versions. Keeping the entire matrix \(A\) before taking
a norm preserves cancellation between the three corner coordinates and
the linearized fourth coordinate. Bounding their errors separately is
also sound, but may be weaker.

**PROVED.** No derivative of \(g\) is omitted from (5.5): \(g\) is
held fixed at the anchor, and its variation is exactly the scalar Taylor
remainder (4.8). The factor 72 in (5.5) is twice the scalar factor 36,
because the fourth parameter is **minus twice** the imaginary signature.
The norm \(\|M_e^{-1}e_4\|\) accounts for the complete fourth column
of the target inverse frame; using only its diagonal entry would require
additional structure not assumed here.

## 6. A fixed phase-distance output and its complete error

**PROVED.** Set
\(P_6=I_6-\mathbf1\mathbf1^T/6\), and let
\(\mathfrak h=P_6\otimes P_6\) be horizontal projection on row-major
six-by-six phases. Fix any full row and column permutations, represented
by \(\Pi\), and any integer winding vector
\(N_F\in\mathbb Z^{36}\). Let

\[
 (P_F)_{ij}=2\pi\frac{ij\bmod6}{6},\qquad
 B=\mathfrak h\Pi G,\qquad
 b_F=\mathfrak h(2\pi N_F-P_F).                     \tag{6.1}
\]

Define

\[
 q_F(w)=BQ(w)+b_F.                                 \tag{6.2}
\]

Adding \(2\pi N_F\) does not change the matrix entries. Subtracting
the nonhorizontal part is a row/column phase operation. Hence the
quotient distance used in XS satisfies

\[
 d_{\rm ph}([K(w)],[F_6])\le\|q_F(w)\|.            \tag{6.3}
\]

No optimality of the alignment or winding is asserted or required. The
alignment is a witness that remains fixed on the entire cap. One can use
a different fixed witness on another cap, or reuse one for a group or
source.

The affine distance output is

\[
 a_F=B\overline Q+b_F,\qquad B_F=B\overline D,
 \qquad q_F(w)=a_F+B_Fv+B\xi(w).                    \tag{6.4}
\]

Its complete error is simply

\[
 \boxed{\varepsilon_F=E_B.}                        \tag{6.5}
\]

Thus polynomial mode uses
\(\|BH_2\|\Delta^2/2+T_0(BX)\), and true-anchor mode uses
\((\|BH_2\|+T_2(BX))\Delta^2/2\). Since a permutation, the allowed
signed symmetry, and horizontal projection have operator norm at most
one, ordinary whole-phase bounds are also sufficient; the composed map
usually gives a sharper bound.

**PROVED.** Explicit dephasing before horizontal projection changes
nothing, provided the stored winding refers to that same expression.
The existing box checker uses the convention
\(\mathfrak h(Q_{\rm aligned,dephased}-P_F-2\pi N)\).
Equation (6.1) instead uses a plus winding; it agrees on setting
\(N_F=-N\). A new record must declare one convention and the checker
must use it consistently. The corner winding \(N_3\) and the distance
winding \(N_F\) are distinct data.

## 7. The five-by-five cap certificate

**PROVED.** Consider any affine output \(d+Fx\) with four input
coordinates and any output dimension. Supply exact scalars
\(s\ge0\), \(\lambda\in\mathbb R\),
\(\mu\ge0\), and an exact vector \(a\in\mathbb R^4\) satisfying
\(\mu^2\ge a^Ta\). Form

\[
 \mathcal S=\begin{pmatrix}
 \lambda I_4-F^TF-\operatorname{sym}(ea^T)
  &-F^Td-\tfrac12(\mu e-ta)\\
 -d^TF-\tfrac12(\mu e-ta)^T
  &s-d^Td+t\mu-\lambda
 \end{pmatrix}.                                    \tag{7.1}
\]

Here \(\operatorname{sym}(ea^T)=(ea^T+ae^T)/2\). The exact identity

\[
 s-\|d+Fx\|^2
 =\begin{pmatrix}x\\1\end{pmatrix}^{\!T}
     \mathcal S\begin{pmatrix}x\\1\end{pmatrix}
 +(e^Tx-t)(\mu+a^Tx)+\lambda(1-\|x\|^2)             \tag{7.2}
\]

shows that \(\mathcal S\succeq0\) implies
\(\|d+Fx\|\le\sqrt{s}\) on the cap. A positive-definite
\(\mathcal S\) gives a strict quadratic inequality. A verified LDL
factorization with positive interval pivots suffices for that stronger
condition. Neither an approximate eigenvalue nor a floating SDP status
is a proof of positive definiteness.

For the ellipsoid condition use

\[
 d_p=\frac{a_p-B_pc}{r_e},\qquad F_p=\frac{rB_p}{r_e},
                                                               \tag{7.3}
\]

and a witness \((s_p,\lambda_p,\mu_p,a_p^{\rm mult})\) in (7.1).
The symbol \(a_p^{\rm mult}\) is the multiplier vector, distinct from
the affine anchor value \(a_p\) in (5.3). Require

\[
 r_e(1-\sqrt{s_p})-\varepsilon_p>0.                 \tag{7.4}
\]

For the phase-distance condition use \(\rho=3/20\),

\[
 d_F=\frac{a_F-B_Fc}{\rho},\qquad
 F_F=\frac{rB_F}{\rho},                             \tag{7.5}
\]

and an independent witness in (7.1), requiring

\[
 \rho(1-\sqrt{s_F})-\varepsilon_F>0.                \tag{7.6}
\]

All quantities in (7.4) and (7.6), including \(r_e\), \(\rho\),
the square roots, and the errors, are compared in exact or outward
interval arithmetic. These inequalities imply respectively

\[
 \|M_e^{-1}p'(w)\|<r_e,
 \qquad d_{\rm ph}([K(w)],[F_6])<3/20               \tag{7.7}
\]

at every point of the entire closed cap.

### 7.1 What “one witness per condition” means

**PROVED.** The construction of the Gram matrices \(F^TF\) and
\(F^Td\) removes the output dimension, so exactly one five-by-five
witness suffices for each norm condition. No subdivision inside the cap
or additional point samples are used in (7.7). The two conditions need
not have the same multipliers, scalar bound, or amount of slack.

The choice \(a=0\) reduces (7.1) to the ordinary two-scalar cap
certificate used by some proposal generators. It is sufficient, but is
not generally lossless. For example, on
\(\{\|x\|=1,x_1\ge0\}\), the exact maximum of
\((x_1-1/2)^2\) is \(1/4\); a certificate with \(a=0\) for
\(M-(x_1-1/2)^2\) forces \(\lambda\ge1\) and
\(M\ge\lambda+1/4\), so cannot prove a bound below \(5/4\).
The generalized multiplier handles the exact identity
\(1/4-(x_1-1/2)^2=x_1(1-x_1)\).

**PROVED, using the cap-quadratic theorem in `ZC/cap_theory.md`.** The
generalized certificate admits strict real, then rationally approximable,
witnesses for any quadratic with a strict margin on a nondegenerate cap.
This statement concerns the affine-output quadratic only. It does not
remove the overestimation in \(E_A\), \(D_R\), or
\(\varepsilon_F\), and does not establish that every mathematically
valid nonlinear T3 transfer will pass these particular remainder bounds.

## 8. Target-domain containment and the transfer conclusion

**PROVED.** The target must independently be a certified Fourier chart
ball, and its entire closed parameter ellipsoid must lie in W's
\(E_{1/5}\). With

\[
 D_{24}=\operatorname{diag}(1,1,1,1/24),\quad
 W=\begin{pmatrix}
 1&-1/2&-1/2&0\\
 -1/2&7/4&1/4&0\\
 -1/2&1/4&7/4&0\\
 0&0&0&1
 \end{pmatrix},
 \quad S_e=D_{24}M_e,
\]

the sufficient strict test used by `edgecert.edge_in_W` is

\[
 \frac1{25r_e^2}I_4-S_e^TWS_e\succ0.                \tag{8.1}
\]

Indeed \(p=M_ew\), \(\|w\|\le r_e\), then
\((D_{24}p)^TW(D_{24}p)<1/25\). Invertibility of \(M_e\), the
Fourier centre \(p=0\), and chart certification remain necessary input
checks. An arbitrary shifted or independently selected branch is not
covered by this theorem.

**PROVED, relative to XS and its W/U theorem inputs.** Suppose the source
obligations in Section 1, target obligations above, cap geometry, and both
certificates in Section 7 are accepted. XS applies to the actual Hadamard
\(K(w)\), the prescribed ordered corner, and the exact signed parameter
\(p'(w)\). Hence

\[
 K(w)\simeq H_e(p'(w)),\qquad p'(w)\in\mathcal E_e^\circ
                                                               \tag{8.2}
\]

for every point of the cap. This is precisely a boundary transfer into
the interior of the target X-ball, subject to the surrounding atlas's
specified action of \(g\).

The proof uses no sign assumption on \(\psi\), no division by its
value, and no complementary-side angle comparison. In particular it
allows both signs of the signed fourth parameter and its zero value.
Row/column permutation invariance of \(\Psi\) makes the order chosen
for the complementary columns irrelevant. This does not assert that
transposition of an arbitrary Hadamard is ordinary row/column
equivalence: the permitted atlas symmetry \(g\) is kept explicit.

## 9. Mixed T0, T1, and T3 sphere coverage

**PROVED.** Suppose a single collection of caps \(C_i=C(n_i,h_i)\)
has individually certified T0, T1, or T3 transfers, with any combination
of those kinds. The kind of the target does not enter the covering
problem. Let

\[
 a_i=n_i/h_i,\qquad P=\operatorname{conv}\{a_i\}.
\]

The caps cover the unit three-sphere exactly when the Euclidean unit ball
is contained in \(P\). To see this, a unit vector \(x\) lies in some
cap exactly when \(\max_i a_i^Tx\ge1\). This is the comparison of
the support function of \(P\) with the support function of the unit
ball in every direction.

The existing exact polar-facet coverage checker may therefore be applied
unchanged to the union of all three kinds. Every cap in that coverage
certificate must be the identical cap whose transfer was checked. A
separate T3-only cover is neither needed nor implied.

**PROVED.** Exact completeness of the facet enumeration is a separate
obligation from checking the norms of a list of alleged facets. A
floating convex hull is only a proposal. The complete integer/rational
replay contract of `cert/cap_coverage.py` is inherited unchanged.

## 10. Optional sharper scalar curvature bounds

**PROVED; optional and not required by the basic verifier.** The constant
36 in (4.8) can be sharpened at a chosen anchor without changing either
five-by-five matrix.

### 10.1 Anchor Hessian plus a cubic remainder

The frequencies in (4.5) have squared lengths 18 (six frequencies) or 10
(eighteen frequencies), so \(\max_k\|\nu_k\|=\sqrt{18}\).
Applying Cauchy--Schwarz to two factors and the maximum bound to the
third proves

\[
 \|D^3\psi\|\le72\sqrt{18}.                       \tag{10.1}
\]

Let

\[
 H_\psi=-\sum_k\sigma_k\sin(\nu_k^TS\overline Q)
                    \nu_k\nu_k^T,
 \qquad \kappa_c\ge\|H_\psi\|.
\]

Then Taylor expansion about the anchor gives

\[
 |\rho_\psi|
 \le E_\psi:=\min\{36D_R^2,
            \tfrac12\kappa_cD_R^2+12\sqrt{18}\,D_R^3\}.
                                                               \tag{10.2}
\]

Replace the second term in (5.5) by
\(2\|M_e^{-1}e_4\|E_\psi\). The anchor Hessian norm must be
rigorously bounded; numerical diagonalization may only propose a bound.

### 10.2 Frequency-wise scalar increments

For each frequency, a valid bound on its scalar increment is

\[
 D_k=\|\nu_k^TR\overline D\|\Delta+E_{\nu_k^TR}.
                                                               \tag{10.3}
\]

Set \(m_k=\min\{1,|\sin(\nu_k^TS\overline Q)|+D_k\}\), using
outward upper bounds. The Lipschitz bound for sine and scalar Taylor's
theorem show

\[
 |\rho_\psi|\le\tfrac12\sum_km_kD_k^2.             \tag{10.4}
\]

The minimum of (10.4) and the other proved bounds is valid. These are
additional sufficient estimates, not a claim that the implemented
construction uses them or that they suffice to close any outstanding
sphere. Those are finite replay questions.

### 10.3 Pullback of the anchor Hessian

**PROVED; optional.** Write \(B_R=R\overline D\) and
\(E=E_R\). Since the actual phase increment is
\(B_Rv+R\xi\), with \(\|v\|\le\Delta\),
\(\|R\xi\|\le E\), retaining this split in the quadratic term
of Taylor's theorem gives

\[
 |\rho_\psi|\le
 \tfrac12\|B_R^TH_\psi B_R\|\Delta^2
 +\|H_\psi B_R\|\Delta E
 +\tfrac12\|H_\psi\|E^2
 +12\sqrt{18}\,D_R^3.                              \tag{10.5}
\]

This may be smaller than (10.2), because it preserves cancellation in
the four-dimensional pullback Hessian. It still uses the same two cap
witnesses. Its proof is expansion of
\((B_Rv+R\xi)^TH_\psi(B_Rv+R\xi)/2\), followed by the cubic
remainder (10.1). The minimum of (10.5) and the previous bounds is
valid after each candidate bound has independently been verified.

### 10.4 A second-order parameter surrogate

**PROVED as an optional sufficient test; NOT ESTABLISHED as necessary,
and not asserted to be used by the baseline implementation.** A large
bound on \(AH_2\) in (5.5) can be reduced by retaining its signed
contribution to the squared norm. At a true anchor define the
vector-valued bilinear map

\[
 H_p[u,v]=AH_2[u,v]
 -2M_e^{-1}e_4\,(B_Ru)^TH_\psi(B_Rv).               \tag{10.6}
\]

Then the exact inverse parameter output has the form

\[
 M_e^{-1}p'(c+v)=a_p+B_pv+\tfrac12H_p[v,v]+\eta_p(v),
                                                               \tag{10.7}
\]

where the following is a valid uniform remainder bound:

\[
 \begin{split}
 \|\eta_p(v)\|\le E_p^{(2)}
 ={}&\tfrac12T_2(AX)\Delta^2\\
 &+2\|M_e^{-1}e_4\|\left(
    \|H_\psi B_R\|\Delta E_R
   +\tfrac12\|H_\psi\|E_R^2
   +12\sqrt{18}\,D_R^3\right).
 \end{split}                                                   \tag{10.8}
\]

The first term accounts for the true-anchor normal correction in
(3.5). The remaining terms account respectively for the Hessian cross
term with \(R\xi\), its square, and the cubic signature remainder.
Thus no variation of the implicit normal map or of the signature
gradient is omitted.

For \(\alpha_p\ge\|H_p\|\), put

\[
 \begin{split}
 q_2(v)&=\|a_p+B_pv\|^2+a_p^TH_p[v,v],\\
 K_p&=\|a_p\|+\|B_p\|\Delta+\tfrac12\alpha_p\Delta^2,\\
 D_2&=\|B_p\|\alpha_p\Delta^3
       +\tfrac14\alpha_p^2\Delta^4
       +2K_pE_p^{(2)}+(E_p^{(2)})^2.
 \end{split}                                                   \tag{10.9}
\]

Expansion of the square proves
\(\|M_e^{-1}p'(c+v)\|^2\le q_2(v)+D_2\). Unlike the full squared
norm of the quadratic predictor, \(q_2\) is a genuine quadratic.
Therefore one generalized five-by-five witness for

\[
 f(x)=r_e^2-D_2-q_2(rx-c)>0                          \tag{10.10}
\]

proves ellipsoid inclusion. To construct it for a general quadratic
\(f(x)=x^TQx+2b^Tx+d\), replace the blocks in (7.1) by
\(Q+\lambda I-\operatorname{sym}(ea^T)\),
\(b-(\mu e-ta)/2\), and \(d+t\mu-\lambda\).
The algebraic identity (7.2) is unchanged with \(s-\|d+Fx\|^2\)
replaced by \(f\). The phase-distance condition still uses its own
witness. This optional surrogate trades additional verified tensor
arithmetic for a smaller leading predictor error, without increasing
matrix size. It does not imply that a numerical constructor will find
or certify larger caps on a specified data set.

## 11. Trusted checker obligations and rejection semantics

**PROVED.** A sound one-cap replay performs the following checks:

1. Obtain the source whole-ball model from the actual source record and
   verify its contraction, branch, orientation, and continuous lift.
2. Resolve the cap's `group_index` in that source's original transfer
   list; require kind T3; resolve the exact target X-ball. Validate the
   existing symmetry, ordered triples, target index, and corner winding.
3. Require the target chart certificate and (8.1), and verify its inverse
   frame with interval arithmetic.
4. Validate the exact cap geometry and the declared anchor/model mode.
5. Recompute the anchor, jet, signature, gradient, affine coefficients,
   all normal bounds, and both complete errors. A JSON error estimate is
   not trusted in place of recomputation.
6. Validate any full distance alignment and integer distance winding;
   compute (6.1) with the declared sign convention.
7. Check the multiplier cone conditions and positive-definite matrices
   (7.1), then the strict margins (7.4) and (7.6).
8. For a full sphere, replay all selected T0/T1/T3 cap transfers and one
   exact coverage certificate over exactly those cap records.

**PROVED.** A valid but incorrect winding need not produce a parsing
error; it must make the actual arithmetic conditions fail when it moves
the image outside the certified target. Similarly, changing
`group_index` to a genuinely equivalent descriptor need not be rejected:
mathematical verifiers reject false claims, not every byte modification.
Negative tests must choose changes that invalidate the asserted proof or
its binding, and should report the failed obligation. An enlarged cap
can remain a valid cap if ample slack existed; tests must enlarge it far
enough that the retained witness or transfer statement is invalid.

**PROVED.** If the purpose is also to detect modification of the selected
transfer descriptor itself, a digest binding to the immutable input
projection can be checked in addition to the mathematical checks.
Cryptographic identity binding and mathematical validity are distinct
obligations. Neither is a substitute for the other.

## 12. Exact frequency receipt and limitations of this return

**CERTIFIED by a direct integer expansion during preparation of this
note.** The permanent-times-determinant-squared Laurent expansion has 55
nonzero frequency coefficients. Pairing opposite frequencies in the
imaginary part gives 24 sine terms with coefficients in \(\{-1,1\}\).
The sum of their outer products agrees entrywise with
\(72(P_3\otimes P_3)\); equivalently its \((i,j)\) entry is

\[
 8(3\,\mathbf1_{\lfloor i/3\rfloor=\lfloor j/3\rfloor}-1)
  (3\,\mathbf1_{i\bmod3=j\bmod3}-1).
\]

The squared-frequency counts are six at 18 and eighteen at 10. These are
finite integer identities, not numerical evidence. The included
`verify_signature_identity.py` reproduces this receipt using the Python
standard library only.

**NOT ESTABLISHED by this note.** No Lean source or kernel replay is
supplied by the mathematical argument alone. No claim is made that the
cap count is minimal, that the largest cap aperture has been found, or
that successful checking of these 82 transfer spheres proves every
other premise of the supplied `PROOF.md`. The theorem establishes the
new T3 transfer rule and its precise numerical proof obligations.

## Appendix A. Audit of the generalized cap-quadratic exactness

**PROVED.** This appendix makes explicit the moment argument inherited
from `ZC/cap_theory.md`. It is not needed for the soundness of any
accepted five-by-five witness; identity (7.2) already proves that. It
justifies the stronger assertion that failure of the restricted scalar
multiplier search is not intrinsic to quadratics on a cap.

For \(-\|n\|<h<\|n\|\), consider the compact convex moment set

\[
 \mathcal F=\left\{(m,X):
 Y=\begin{pmatrix}1&m^T\\m&X\end{pmatrix}\succeq0,
 \ \operatorname{tr}X=1,
 \ \|Xn-hm\|\le n^Tm-h\right\}.                   \tag{A.1}
\]

Compactness follows from \(X\succeq0\), \(\operatorname{tr}X=1\),
and \(X-mm^T\succeq0\). Every rank-one feasible matrix is
\((1,x)(1,x)^T\) with \(\|x\|=1\). Its cone inequality reads
\(|n^Tx-h|\le n^Tx-h\), hence precisely \(n^Tx\ge h\).

Let \(u=n^Tm-h\) and \(v=Xn-hm\). Suppose a feasible \(Y\) has
rank \(r\ge2\).

* If the cone inequality is strict, sufficiently small two-sided
  perturbations within the PSD face preserve it. The space of symmetric
  perturbations supported on the range of \(Y\) has dimension
  \(r(r+1)/2\ge3\). Imposing \(Y_{00}=1\) and
  \(\operatorname{tr}X=1\) gives only two homogeneous linear
  constraints on the perturbation, so a nonzero one exists. Both signs
  remain positive semidefinite when small enough. Thus \(Y\) is not
  extreme.
* If \(u=0\), feasibility gives \(v=0\), equivalently
  \(Y(-h,n)^T=0\). Every perturbation supported on the range of
  \(Y\) automatically preserves this kernel vector. The same
  dimension argument therefore supplies a nontrivial two-sided feasible
  perturbation while keeping both cone coordinates zero.
* In the remaining case, \(u>0\) and \(\|v\|=u\). Set
  \(z=v/u\), so \(\|z\|=1\). If \(s=n^Tm\), covariance
  positivity gives \(n^TXn\ge s^2\), and hence
  \[
    n^Tz=\frac{n^TXn-hs}{s-h}\ge s>h.
  \]
  Moreover \((1,z)^T=Y(-h,n)^T/u\) belongs to the range of
  \(Y\). Consequently a sufficiently small \(\epsilon>0\) can be
  chosen so that \(Y-\epsilon(1,z)(1,z)^T\succeq0\), and also
  \(u-\epsilon(n^Tz-h)>0\). Normalize this matrix by
  \(1-\epsilon\). Its upper-left entry and lower-block trace are
  again one. Its cone coordinates are
  \[
    u'=\frac{u-\epsilon(n^Tz-h)}{1-\epsilon},\qquad
    v'=u'z,
  \]
  so it remains feasible. This gives a nontrivial convex decomposition
  unless \(Y=(1,z)(1,z)^T\), contradicting rank at least two.

Thus all extreme points have rank one, proving that \(\mathcal F\)
is exactly the convex hull of the cap moments. There is a strict feasible
moment: write \(e=n/\|n\|\), \(t=h/\|n\|\), choose
\(\max(t,0)<s<1\), and choose

\[
 0<\epsilon<\min\{1-s^2,(1-s)(s-t)\}.
\]

Then
\(m=se\) and
\(X=(s^2+\epsilon)ee^T+(1-s^2-\epsilon)(I-ee^T)/3\)
give \(Y\succ0\) and a strict SOC inequality. Finite-dimensional
conic duality therefore yields the certificate (7.1) for the quadratic
optimization problem, with no gap.

If a quadratic has minimum \(\rho>0\) on the cap, first take a dual
certificate for the quadratic minus \(\rho\). To restore the positive
constant, increase the sphere multiplier \(\lambda\) by
\(\rho/2\) and add \((\rho/2)I_5\) to its PSD matrix. This makes
the matrix positive definite. A sufficiently small increase in the SOC
scalar \(\mu\) gives \(\mu>\|a\|\) while preserving positive
definiteness. Rational approximation of the finite witness then retains
both strict conditions. This proves the exactness assertion used in
Section 7, without asserting exactness of any nonlinear remainder model.

## Appendix B. Audit of strict-facet coverage completeness

**PROVED.** This appendix explains why the combinatorial completeness
test in `cert/cap_coverage.py` suffices under its strict facet tests. Let
\(P=\operatorname{conv}\{a_i=n_i/h_i\}\subset\mathbb R^4\).
Each listed quadruple has a verified vector \(y\) with

\[
 a_i^Ty=1\quad(i\text{ in the quadruple}),\qquad
 a_j^Ty<1\quad(j\text{ outside it}).                \tag{B.1}
\]

The four original normal rows have nonzero determinant. Their scaled
points \(a_i\) are therefore linearly independent, and in particular
affinely independent in the hyperplane \(a^Ty=1\). Since at least five
points exist and every point outside the quadruple has strict slack,
there is a point outside this hyperplane. Thus \(P\) is
four-dimensional, and the quadruple is a genuine simplicial facet of
\(P\). Each of its triangular faces is a ridge of \(P\).

Every ridge of a full-dimensional convex polytope belongs to exactly two
facets. Duplicate listed facets are rejected. Requiring every listed
triangle to occur twice therefore says that the nonempty set of listed
facets is closed under adjacency across all its ridges. The facet
adjacency graph of a convex polytope is connected: for example, a generic
path across the boundary between two facet-interior points crosses only
facet interiors and ridge interiors, giving such an adjacency path.
Consequently the selected set contains **every** facet. An omitted
nonsimplicial facet cannot evade this argument, because adjacency to it
would leave one of the listed ridges with no second listed facet.

All facet supports have the form (B.1), so the origin satisfies every
facet inequality strictly and lies in the interior of \(P\). Its polar
\(P^\circ=\{y:a_i^Ty\le1\}\) is therefore bounded. The listed
vectors \(y\), obtained by the four incident equations, are exactly all
its vertices. If their norms are at most one, convexity puts the entire
polar inside the closed unit ball. Polarity, or the support-function
argument of Section 9, proves the cap cover.

The code uses integer cross-multiplied equations and strict slacks for
(B.1), exact determinant tests, and exact squared rational norms. The
floating convex hull supplies only the candidate quadruples. The
strictness condition deliberately rejects degeneracies; rejection of a
degenerate proposed hull does not show that its caps fail to cover.
