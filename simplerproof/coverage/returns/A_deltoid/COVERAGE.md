# Global maxima, connectedness, and certified atlas coverage

**Return for CoverageHandoff, 2026-10-08.**

## Main result

The global positive-maximum census in Claim A is proved. The proposed exact
seed is correct, and all positive local maxima are precisely its 18-point
symmetry orbit. The proof uses the geometry of normalized permutation
products and a small number of exact polynomial certificates. No
four-dimensional branch-and-bound cover is needed.

Claims B and C are also proved, relative to the classification and
reconstruction facts MC1–MC5 explicitly permitted by the prompt.
The argument gives the stronger conclusion that the non-Tao Hadamard
quotient is connected. Hence the finite-atlas criterion can be simplified:
**a nonempty finite Record union with completely certified boundary
containment covers every non-Tao class.**

The complete proofs follow below. The separately named companion notes
contain the same proof components in smaller files. STATUS.md distinguishes
the results proved here from the actual finite Record certificates that
still have to be supplied.

## Theorem A: exact global maximum census

Let R be exactly the structural invariant in PROMPT.md, defined on the
entire four-dimensional seed torus. Put

\[
q=\frac{1+i\sqrt{15}}4,\qquad
\alpha=\arccos(1/4),\qquad
\theta_*=(\alpha,2\alpha,-\alpha,-2\alpha).
\]

Then:

1. Every local maximum with R>0 is one of the 18 distinct points in the
   orbit of \(\theta_*\) under the 144 prescribed seed maps.
2. All 18 are strict nondegenerate local maxima, with
   \[
   R_*=\frac{1594323}{4096}=\frac{3^{13}}{2^{12}}.
   \]
3. At the displayed frame the exact Hessian is
   \[
   D^2R(\theta_*)=\frac{59049}{2048}
   \begin{pmatrix}
   -80&40&78&-39\\
   40&-46&-39&6\\
   78&-39&-80&40\\
   -39&6&40&-46
   \end{pmatrix}.
   \]
   Its eigenvalues are
   \[
   \frac{59049}{2048}(-21\pm\sqrt{362}),\qquad
   \frac{5\cdot59049}{2048}(-21\pm\sqrt{362}).
   \]
4. Throughout the angular cube of radius 1/200 around this frame, R>388
   and the Hessian is negative definite. Each mapped parallelepiped
   contains exactly one critical point; an angular cube of radius 1/800
   around every orbit point has the same uniqueness guarantee.

This theorem does not use the classification of Hadamard matrices, the
reconstruction theorem, or any assumed physical completion.

**Additional consequences.** The sharp inequality

\[
\boxed{R(\theta)\le \frac{3^{13}}{2^{12}}\quad(\theta\in\mathbb T^4)}
\]

holds globally, with equality exactly at those 18 points. Indeed, compactness
gives a global maximum, and the known positive candidate makes every global
maximizer a positive local maximum covered by the census.

Also, the open set \(S=\{R>0\}\) has at most 18 connected components. Every
component contains a positive local maximum, as proved in the topology
part below, and the components are disjoint. The proof does not claim an
exact component count.

## Theorem B: exact sheet action and the maximum class

For a prescribed seed map L with transpose bit \(\tau\) and conjugation bit
\(\kappa\), let \(\mathcal T,\mathcal C\) act on Hadamard classes by
transposition and conjugation. The precise action is

\[
\boxed{
[H_\sigma(L\theta)]
=\mathcal C^\kappa\mathcal T^\tau
[H_{(-1)^{\tau+\kappa}\sigma}(\theta)].}
\]

Row and column permutations of the corner, with re-dephasing, preserve the
sheet. Transposition and conjugation each reverse it.

At the exact maximum frame, write \(K_*=H_+(\theta_*)\). Two explicit
corner symmetries imply

\[
H_-(\theta_*)\cong\overline{K_*},\qquad
K_*\cong\overline{K_*}^{\,T},
\qquad
\boxed{H_+(L\theta_*)\cong K_*\text{ for every }L.}
\]

Thus all positive-sheet maximum completions have one equivalence class.
This repairs the circular sheet-swap step in the supplied draft and is
stronger than its proposed four-class conclusion.

## Theorem C: connectedness and finite Record coverage

Under MC1–MC5, the stated isolation of Tao, and the quotient topology in
the prompt,

\[
\boxed{X=(\mathcal H/\cong)\setminus\{[\mathrm{Tao}]\}
\ \text{is connected}.}
\]

Here is the resulting precise atlas theorem.

Let V be the 25-dimensional horizontal phase space. For a finite list of
exactly specified phase centers \(A_i\), choose an orthogonal splitting
\(V=T_i\oplus N_i\), with \(\dim T_i=4\), a positive definite tangent
quadratic form \(Q_i\), and \(\rho_i>0\). Put

\[
\Omega_i=\{v+n:Q_i(v)\le1,\ \|n\|_F\le\rho_i\},\qquad
E_i(u)=A_i\circ e^{iu}.
\]

Let q be the map to Hadamard equivalence classes and define

\[
\begin{aligned}
\mathcal R_i&=q(\mathcal H\cap E_i(\Omega_i)),\\
\mathcal U_i&=q(\mathcal H\cap E_i(\operatorname{int}_V\Omega_i)),\\
\mathcal B_i&=q(\mathcal H\cap E_i(\partial_V\Omega_i)).
\end{aligned}
\]

If a finite exact or validated interval certificate proves

\[
\boxed{\mathcal B_i\cap X\subseteq\bigcup_j\mathcal U_j
\quad\text{for every }i,}
\]

and \(W=(\bigcup_i\mathcal R_i)\cap X\) is nonempty, then

\[
\boxed{W=X.}
\]

The required boundary certificate must account for every actual Hadamard
on both the tangent and normal boundary faces. The topology proof below
specifies finite boundary cells, complete solution enclosures, equivalence
witnesses, valid logarithm branches, and strict target containment
inequalities. A projected fixed point or a successful cell-center test
alone is insufficient.

In particular, the prompt's original hypotheses imply coverage. The stronger
form above only needs nonemptiness: a Fourier Record suffices as a known
covered class. A separate Record at \(K_*\), and conjugation/transposition
closure of W, are unnecessary.

This theorem does not assert that such a finite Record family has already
been constructed. If every Record also has a certified quartet exclusion
over its whole region, the theorem transfers those local exclusions to
every non-Tao Hadamard class. The separately stipulated Tao exclusion must
then be added.

## Why the global maximum proof is short enough to replay exactly

Normalize the even and odd permutation products of the 3-by-3 corner:

\[
U=(ad+b+c)/t,\qquad V=(bc+d+a)/t,\qquad t^3=abcd.
\]

Each is the trace of a unit-product triple, so each lies in the same filled
deltoid. With \(A=U+V\), \(B=U-V\),

\[
u=|A|^2,\quad v=|B|^2,\quad w=2\operatorname{Re}(AB^2),
\]

the original large Fourier polynomial becomes

\[
g=2v-3u,\qquad \eta=v-2u,\qquad
\chi=\frac{(3u-v)(v-u+12)}2-w.
\]

The proof then has four exhaustive parts.

- In the interior of both deltoids, exact elimination reduces stationarity
  to a sextic with two real roots. Both surviving candidates have a
  strictly increasing phase direction.
- If just one trace is on a smooth boundary, the invariant action
  \((A,B)\mapsto(e^{-2i\tau}A,e^{i\tau}B)\) moves a purported maximum
  into the double interior without changing R. Its difficult tangent case
  has an explicit strictly inward second derivative.
- The one-cusp/one-interior case is excluded by a factored polynomial and
  an exact derivative sign.
- With both traces on the boundary, a two-variable factorization and
  exact resultants leave only the stated maximum orbit and one spurious
  positive surface maximum. The latter has positive transverse curvature
  \(330(23\sqrt5-51)\) and is not a maximum in the original seed torus.

Local openness of the finite permutation quotient is proved explicitly,
so none of these steps loses a local maximum at a fold or cusp.

## Imported hypotheses and their uses

| Allowed input | Where it enters |
|---|---|
| MC1: every non-Fourier class has a strict corner | Reduction of the entire nonexceptional quotient to the reconstructed sheets |
| MC2 and MC4: strict completion exhaustion with listed Tao exceptions | Exhaustion of non-Fourier, non-Tao classes |
| MC3: strict side-fiber uniqueness, valid root branches and complementary permutations | Exact sheet action and quotient continuity |
| MC5: sheet conjugation | Relating the two sheet images and covering all nonexceptional classes |
| Full strict-domain validity and nonvanishing of the prescribed formula denominators | Local analytic representatives of the quotient sheet |
| Tao is isolated; the quotient is Hausdorff and has the stipulated continuous metric | Excluding Tao from a nonconstant local provider image; compactness and topology |
| An actual finite family of Records with complete boundary certificates | Hypothesis of the final coverage theorem; no such family is constructed here |

The older low-M chart note is not used as a global coverage theorem. Its
branch algebra is used with the stronger, explicitly permitted strict-domain
inputs of the current prompt. The original source hashes are recorded in
INPUT_SHA256.json.

## Exact replay and proof organization

Run:

~~~sh
python3 verify_all.py
~~~

The suite uses Python integers, rational arithmetic, exact algebraic-number
representations, symbolic polynomial elimination and Sturm counts. Rational
intervals isolate the real roots needed for sign decisions. Floating-point
optimization and interval cell sampling play no role in acceptance.

| Proof component | Exact verifier |
|---|---|
| Global deltoid reduction | verify_deltoid_reduction.py |
| Exhaustive two-boundary classification | verify_two_boundary.py |
| Exact endpoint, Hessian, orbit and neighborhoods | exact_maxima.py |
| Sheet identities, auxiliary branches and Fourier degeneration | verify_sheet_branches.py |
| Optional affine Fourier and Tao conditioning | verify_conditioning.py |

The following parts contain the complete analytical argument and all
coefficients used in its finite certificates. The optional conditioning
result is in CONDITIONING.md; its global extension to every remaining
Hadamard is not claimed.

---


# Part I. Global reduction to the deltoid boundaries

### Theorem

For the seed polynomial in the handoff, every local maximum with \(R>0\) has the following property. Normalize the three even permutation products and the three odd permutation products to have product one. **Each normalized triple contains a repeated entry.**

Equivalently, for the normalized sums \(U,V\) defined below, there are unimodular \(z,w\) such that

\[
\boxed{U=2z+z^{-2},\qquad V=2w+w^{-2}.}
\tag{1}
\]

Thus the four-dimensional local-maxima problem reduces globally to the two-dimensional boundary problem treated in `TWO_BOUNDARY.md`. This theorem covers all seeds, including collisions and cusps. It uses no Hadamard classification, reconstruction formula, physicality assumption, or numerical optimization.

The algebraic acceptance decisions are replayed by `verify_deltoid_reduction.py`. They comprise exact Laurent identities from the original definition of \(R\), exact resultants and a Gröbner basis, Sturm counts, rational interval signs, and exact boundary identities. The verifier's assertions are checked with explicit exceptions and are not disabled by Python optimization.

### 1. Normalized permutation products

For the dephased corner

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\]

the even permutation products are \((ad,b,c)\); the odd products are \((bc,d,a)\). Both triples have product \(P=abcd\). Choose \(t\) with \(t^3=P\) and put

\[
U=(ad+b+c)/t,
\qquad V=(bc+d+a)/t.
\tag{2}
\]

Changing the choice of \(t\) rotates both \(U,V\) by a common cube root of unity. All formulas and conclusions below are invariant under that change.

Define

\[
A=U+V,\quad B=U-V,\quad
u=|A|^2,\quad v=|B|^2,\quad q=2\operatorname{Re}(AB^2).
\]

The compact structural identities are

\[
\boxed{
\begin{aligned}
g&=2v-3u,\\
\eta&=v-2u,\\
\chi&=\frac{(3u-v)(v-u+12)}2-q,\\
R&=4(2v-3u)^2(v-2u)-\chi^2.
\end{aligned}}
\tag{3}
\]

These are identities for every seed. In particular \(R>0\) implies

\[
v>2u\ge0,\qquad g>0.
\tag{4}
\]

#### Exact verification from the original definition

This compact form is not assumed from a fitted formula. The verifier regenerates the original Laurent polynomial from the handoff's \(s,t,r,X,Y,Z,p,J,W\) definitions using `exact_maxima.structural_polynomial`.

For an explicit independent phase parameterization, let \(\rho,\sigma,\mu,\nu\) be arbitrary angles and \(S=\rho+\sigma+\mu+\nu\). Set

\[
(\theta_1,\theta_2,\theta_3,\theta_4)
=(\nu-S,\rho-S,\sigma-S,\mu-S).
\tag{5}
\]

Then \(t=e^{-iS}\), and the normalized triples are

\[
(e^{-i(\rho+\sigma)},e^{i\rho},e^{i\sigma}),
\qquad
(e^{-i(\mu+\nu)},e^{i\mu},e^{i\nu}).
\tag{6}
\]

The integer matrix in (5) has determinant \(3\); hence (5) is a three-sheeted torus covering and a local diffeomorphism. In these independent phase variables the verifier compares the exact coefficient dictionaries for \(g,\eta,\chi,R\) in (3) with their original definitions. They agree identically. This also proves (3) on every seed, since (5) is surjective.

### 2. The trace domain and local openness

Let

\[
\mathcal D=\{z_1+z_2+z_3:|z_j|=1,\ z_1z_2z_3=1\}.
\]

It is the filled deltoid. Its exact defining inequality is

\[
\mathcal D=\{Z\in\mathbb C:\Delta(Z)\le0\},
\quad
\Delta(Z)=|Z|^4+18|Z|^2-8\operatorname{Re}(Z^3)-27.
\tag{7}
\]

Its interior is \(\Delta<0\), its boundary is

\[
\partial\mathcal D=\{2z+z^{-2}:|z|=1\},
\tag{8}
\]

and its three cusps are \(3z\) with \(z^3=1\).

Here is an elementary justification of these facts. A triple with trace \(Z\) and product one is the root multiset of

\[
p_Z(\lambda)=\lambda^3-Z\lambda^2+\overline Z\lambda-1.
\tag{9}
\]

Its discriminant is exactly \(\Delta(Z)\). If all three roots are unimodular, the squared Vandermonde product is nonpositive, and it is zero exactly when roots coincide. Conversely, the root multiset of (9) is invariant under reciprocal conjugation. If the roots are not all unimodular, they have the form

\[
r e^{i\beta},\quad r^{-1}e^{i\beta},\quad e^{-2i\beta},
\qquad r>0,\quad r\ne1.
\]

Their discriminant is

\[
(r-r^{-1})^2\bigl(2\cos(3\beta)-r-r^{-1}\bigr)^2>0.
\]

Thus \(\Delta\le0\) is equivalent to all roots being unimodular. A repeated root gives (8). At a boundary point \(U=2z+z^{-2}\), treating \(U,\overline U\) as independent for differentiation,

\[
\frac{\partial\Delta}{\partial U}
=4\frac{(z^3-1)^3}{z^4}.
\tag{10}
\]

Consequently every boundary point except the three cusps is regular. The compact trace image is exactly the indicated filled region.

**Local openness is essential.** The trace map from ordered unimodular product-one triples to \(\mathcal D\) is open, including at repeated roots. Indeed, two triples have the same trace exactly when they are permutations of one another, by (9). Thus the trace map factors as the quotient by the finite group \(S_3\), followed by a continuous bijection from a compact space to the Hausdorff space \(\mathcal D\). The latter is a homeomorphism, and a group quotient map is open because the saturation of an open set is the union of its translates.

The product trace map in (6) is therefore open onto \(\mathcal D^2\). Combining it with the local diffeomorphism (5) proves:

> A local maximum of the original seed polynomial induces a local maximum of the expression (3) relative to \(\mathcal D^2\), for each local choice of the normalized products.

This implication holds even at repeated roots and cusps. No differentiability of the inverse trace map is needed.

### 3. No positive local maximum in the double interior

Suppose \((U,V)\) lies in \(\mathcal D^\circ\times\mathcal D^\circ\). A relative local maximum is then an unconstrained local maximum in four real variables. The real linear change \((U,V)\leftrightarrow(A,B)\) is invertible.

Equation (3) is invariant under the circle action

\[
(A,B)\longmapsto(e^{-2i\tau}A,e^{i\tau}B).
\tag{11}
\]

If \(A,B\ne0\), write \(\phi=\arg(AB^2)\). Since
\(q=2v\sqrt u\cos\phi\),

\[
\frac{\partial R}{\partial\phi}
=-4\chi v\sqrt u\sin\phi.
\tag{12}
\]

A positive critical point cannot have \(\chi=0\): at fixed \(u,\phi\), its \(v\)-derivative would be

\[
4(2v-3u)(6v-11u)>0
\]

by (4). Also \(B=0\) is impossible by (4). The case \(A=0\) is nonstationary: rotate \(B\) to \(\sqrt v>0\) using (11), and vary \(A=x\) through zero; the derivative is

\[
\left.\partial_x R\right|_{x=0}=-2v^2(v+12)<0.
\tag{13}
\]

Consequently any positive critical point has \(\phi=0\) or \(\pi\). Using (11), its coordinates can be written \(A=x\in\mathbb R\setminus\{0\}\), \(B=\sqrt v>0\). This coordinate change preserves the unconstrained critical-point and Hessian conditions even if the rotated point is outside \(\mathcal D^2\).

Put

\[
\begin{aligned}
C(x,v)&=\frac{(3x^2-v)(v-x^2+12)}2-2vx,\\
f(x,v)&=4(2v-3x^2)^2(v-2x^2)-C(x,v)^2.
\end{aligned}
\tag{14}
\]

The amplitude equations are \(f_x=f_v=0\). Their exact resultant is

\[
\begin{aligned}
\operatorname{Res}_v(f_x,f_v)
={}&1152x^5(x-3)(x-2)(x^2-8x+24)(x^2-6x+12)P(x),\\
P(x)={}&9x^6-135x^5+854x^4-2838x^3+5070x^2-4392x+1296.
\end{aligned}
\tag{15}
\]

The two quadratic factors are positive on the real line. The value \(x=0\) was excluded in (13). For \(x=2,3\), exact polynomial gcds force \(v=12,27\), respectively; in both cases \(f=0\).

On the remaining component, the exact Gröbner basis gives

\[
P(x)=0,\qquad
57v=-45x^5+567x^4-2875x^3+7062x^2-7512x+2700.
\tag{16}
\]

The sextic has exactly two real roots. Sturm counts and rational interval arithmetic certify the following enclosures; all decimal endpoints here are terminating decimals, hence exact rationals.

| Root interval for \(x\) | Enclosure for \(v\) | Enclosure for \(C=\chi\) |
|---|---|---|
| \((0.565807686,0.565807687)\) | \((4.301,4.303)\) | \((-31.6,-31.5)\) |
| \((1.917226736,1.917226737)\) | \((8.601,8.603)\) | \((-12.5,-12.4)\) |

At either candidate, vary \(A=x e^{i\psi}\) with \(B=\sqrt v\) fixed. The second derivative is

\[
\left.\frac{d^2R}{d\psi^2}\right|_{\psi=0}
=-4\chi xv>0.
\tag{17}
\]

Both candidates therefore fail the second-order necessary condition for a local maximum. This excludes **every** positive local maximum in the double interior.

### 4. A single smooth boundary can be moved into the double interior

Suppose a positive local maximum has

\[
U=2z+z^{-2}\in\partial\mathcal D,\quad z^3\ne1,
\qquad V\in\mathcal D^\circ.
\]

Follow the invariant circle action (11) and return to trace coordinates:

\[
U_\tau=\frac{e^{-2i\tau}(U+V)+e^{i\tau}(U-V)}2,
\quad
V_\tau=\frac{e^{-2i\tau}(U+V)-e^{i\tau}(U-V)}2.
\tag{18}
\]

The value of \(R\) is constant along this orbit. Since \(V\) is interior, \(V_\tau\) stays interior for sufficiently small \(\tau\).

If \(\frac{d}{d\tau}\Delta(U_\tau)|_0\ne0\), one sign of small \(\tau\) gives \(\Delta(U_\tau)<0\). It remains to consider tangency.

From (18),

\[
U'_0=-\frac i2(U+3V).
\]

The tangent vector to the regular boundary (8) is \(2i(z-z^{-2})\). Consequently tangency is equivalent to

\[
V=r z-(r+1)z^{-2}\quad\text{for some }r\in\mathbb R.
\tag{19}
\]

Substitution in the exact second derivative gives

\[
\boxed{
\left.\frac{d^2}{d\tau^2}\Delta(U_\tau)\right|_0
=-\frac92(r+2)^2\frac{(z^3-1)^4}{z^6}
=-\frac92(r+2)^2(2-z^3-z^{-3})^2.
}
\tag{20}
\]

For unit \(z\), the last square is real, nonnegative, and zero only at a cusp. The other possible zero is \(r=-2\), but then

\[
V=-2z+z^{-2}=2(-z)+(-z)^{-2}\in\partial\mathcal D,
\]

contrary to the assumed interior condition. Thus (20) is strictly negative. In the tangent case both signs of sufficiently small nonzero \(\tau\) enter the double interior.

This contradicts Section 3. More explicitly, choose a neighborhood of the original relative maximum on which no point has larger \(R\). A sufficiently nearby orbit point in the double interior has the same value of \(R\). It is itself a local maximum, because a small neighborhood around it is contained in the original neighborhood. Section 3 excludes that point.

This argument does not assume that the entire invariant orbit lies in \(\mathcal D^2\); only the proved small segment is used.

### 5. A single cusp is also impossible

Common cube-root rotation of \(U,V\) preserves (3) and \(\mathcal D^2\). Thus a cusp/interior pair can be reduced to \(U=3\), \(V=x+iy\in\mathcal D^\circ\). Formula (3) factors exactly as

\[
R=-4F G^2,
\quad F=2x^2+24x+y^2+18,
\quad G=5x^2+18x+y^2+9.
\tag{21}
\]

For a positive value, \(F<0\) and \(G\ne0\). Since \(V\) is interior, the two derivatives with respect to \(x,y\) must vanish. They are

\[
R_y=-8yG(G+2F),
\]

\[
R_x=-4G\bigl[(4x+24)(G+2F)+12(x-1)F\bigr].
\tag{22}
\]

If \(y\ne0\), (22) forces \(G+2F=0\) and then \(x=1\), contradicting \(F(1,y)=44+y^2>0\). Hence \(y=0\).

On the real axis,

\[
\Delta(x)=(x-3)^3(x+1),
\]

so interior membership gives \(-1<x<3\). On this interval, \(F(x,0)\) is increasing and \(F(-4/5,0)=2/25>0\). Thus \(F<0\) forces

\[
-1<x<-4/5.
\]

But on the real axis,

\[
R_x=-48(x+3)(5x+3)
\bigl(5x^3+62x^2+141x+72\bigr).
\tag{23}
\]

The cubic in (23) is strictly increasing for \(x\ge-1\), since its derivative is
\(15x^2+124(x+1)+17>0\).
Its value at \(-4/5\) is \(-92/25\). Therefore all factors in (23) are nonzero throughout the allowed interval, and in fact \(R_x<0\). This contradicts stationarity.

Thus a cusp in one trace and an interior point in the other cannot give a positive local maximum.

### 6. Conclusion and verification scope

The compact expression is invariant under exchanging \(U,V\): \(A\) stays fixed and \(B\) changes sign. Therefore Sections 4 and 5 apply to either ordering. Section 3 excludes the double interior; Sections 4 and 5 exclude every single-boundary case. Every positive local maximum must satisfy (1).

The exact computation in Section 3 is a finite algebraic certificate, not a sampling argument or a four-dimensional box cover. The global reduction itself uses the open trace quotient, the invariant circle action, and the inward curvature identity (20). The remaining classification of maxima on the two boundaries is separate and is supplied in `TWO_BOUNDARY.md`.


---


# Part II. Exact classification on both boundaries

This is the final part of the analytical proof of Claim A. The companion
`DELTOID_REDUCTION.md` proves that every positive local maximum must occur on
this stratum. All polynomial identities, resultant factors, root counts, and
curvature signs below are checked by `verify_two_boundary.py` using exact
rational arithmetic in SymPy. No floating-point classification is used.

### 1. Parametrization and the reduced polynomial

Use the normalized even and odd permutation-product traces \(U,V\), and put

\[
A=U+V,\quad B=U-V,\quad u=|A|^2,\quad v=|B|^2,
\quad w=2\operatorname{Re}(AB^2).
\]

The exact structural identities are

\[
g=2v-3u,\qquad \eta=v-2u,\qquad
\chi=\frac{(3u-v)(v-u+12)}2-w,
\qquad R=4g^2\eta-\chi^2.
\tag{1}
\]

The boundary of the closed deltoid consists of traces with a repeated unit
root. Thus both traces can be written

\[
U=2e^{it}+e^{-2it},\qquad V=2e^{is}+e^{-2is}.
\]

Set \(m=(t+s)/2\), \(n=(t-s)/2\), \(c=\cos n\), and \(h=\cos(3m)\).
Then \(-1\le c,h\le1\). Direct expansion gives

\[
\begin{aligned}
u&=16c^4+4+16c(2c^2-1)h,\\
v&=16(1-c^2)(1+c^2-2ch),\\
w&=-64(1-c^2)\left[(4c-2c^3)h-(2c^2+1)
 +(2c^4-c^2)(2h^2-1)\right].
\end{aligned}
\tag{2}
\]

Consequently, with

\[
\begin{aligned}
L&=2c^2+1,\\
M&=8c^4+4c^3h-4c^2+1,\\
N&=16c^4+16c^3h+4c^2h^2-4c^2-4ch-1,
\end{aligned}
\]

the reduced invariant has the short factorization

\[
\boxed{R(c,h)=-256L^2M^2N.}
\tag{3}
\]

This is an identity, not a new assumed constraint. At a positive point

\[
L>0,\quad M\ne0,\quad N<0.
\tag{4}
\]

The symmetry \(R(-c,-h)=R(c,h)\) will identify the two horizontal edges.
If \(|c|=1\), equation (2) gives \(v=0\), so \(\eta=-2u\le0\) and
\(R\le0\). Therefore no positive local maximum occurs on these edges.

### 2. Critical points with \(|c|<1\), \(|h|<1\)

Away from these edges, \((m,n)\mapsto(c,h)\) is a local diffeomorphism.
A local maximum of the original invariant is therefore a critical point of
(3). Differentiation gives

\[
R_c=-1024LMP,\qquad R_h=-1024cL^2MQ,
\tag{5}
\]

where

\[
\begin{aligned}
P={}&1024c^9+1408c^8h+640c^7h^2-224c^7
 +96c^6h^3-144c^6h\\
&+56c^5h^2-112c^5+32c^4h^3-108c^4h
 -40c^3h^2+28c^3+16c^2h+2ch^2-h,\\
Q={}&64c^6+64c^5h+16c^4h^2-32c^4-20c^3h
 +6c^2+2ch-1.
\end{aligned}
\]

#### The case \(c=0\)

Here \(R=256\) and \(R_c=1024h\). The only critical point is

\[
(c,h)=(0,0),\qquad
\det D^2R(0,0)=-1024^2<0.
\]

It is a saddle even within the double-boundary surface, and hence is not a
local maximum in the full seed torus.

#### The case \(c\ne0\)

By (4)–(5), \(P=Q=0\). Their exact resultant is

\[
\begin{aligned}
\operatorname{Res}_h(P,Q)
={}&256c^8(2c-1)(2c+1)(2c^2-1)(2c^2+1)^2\\
&\times(6c^2-4c+1)(6c^2+4c+1)(16c^4-4c^2-1).
\end{aligned}
\tag{6}
\]

The two quadratics \(6c^2\pm4c+1\) are strictly positive, as their
discriminants are negative. The remaining real branches have the following
exact consequences. Each row follows by Gröbner reduction of the displayed
relation and \(R\) against the ideal generated by \(P,Q\) and the indicated
factor; the verifier performs these reductions.

| Necessary factor | Consequence for \(h\) | Value or consequence for \(R\) |
|---|---|---|
| \(4c^2-1=0\) | \(h=-2c\) | \(R=0\) |
| \(2c^2-1=0\) | \(h=-c\) | \(R=0\) |
| \(16c^4-4c^2-1=0\) | \(h=4c^3-3c\) | \(R=450-1100c^2\) |

Only the final row can be positive. It forces

\[
c^2=\frac{1+\sqrt5}{8},\qquad
R=\frac{25}{2}(25-11\sqrt5)>0.
\tag{7}
\]

It would be an error to discard this stationary branch merely because its
value is smaller than \(R_*\): it is a local maximum on the two-dimensional
surface. A transverse calculation is necessary.

### 3. The extra positive branch is transversely unstable

The identity \(h=4c^3-3c\) is exactly

\[
\cos(3m)=\cos(3n).
\]

Therefore \(m=n+2\pi k/3\) or \(m=-n+2\pi k/3\). One trace is a cusp

\[
3e^{2\pi ik/3}.
\]

Swapping \(U,V\), which preserves \(R\), and changing the common cube-root
normalization, which leaves the seed unchanged, reduce this to

\[
V=3,\qquad U=2e^{it}+e^{-2it},\qquad
y=\cos t=\frac{\sqrt5-3}{4}.
\tag{8}
\]

Split the repeated roots on the *other* trace by opposite angles:

\[
U(\varepsilon)=e^{i(t+\varepsilon)}+e^{i(t-\varepsilon)}+e^{-2it}
=2e^{it}\cos\varepsilon+e^{-2it},\qquad V(\varepsilon)=3.
\tag{9}
\]

This is an actual curve of unit-product triples and hence of valid corner
seeds. It has \(U'(0)=0\) and \(U''(0)=-2e^{it}\).

For an explicit independent calculation, write \(U=x+ib\), \(V=z\) real,
and use \(b^2\) as a variable. Then

\[
\begin{aligned}
u&=(x+z)^2+b^2,\qquad v=(x-z)^2+b^2,\\
w&=2\big[(x+z)(x-z)^2-b^2(3x-z)\big].
\end{aligned}
\]

Insert these into (1), differentiate, and substitute

\[
z=3,\quad x=2y+2y^2-1,\quad b^2=4(1-y^2)(1-y)^2.
\]

Reducing the resulting curvature modulo \(4y^2+6y+1=0\) gives

\[
\boxed{
\frac{d^2}{d\varepsilon^2}R(U(\varepsilon),3)\Big|_{\varepsilon=0}
=660(46y+9)=330(23\sqrt5-51)>0.}
\tag{10}
\]

The last strict inequality is exact because \(23^2\cdot5>51^2\).
Thus (7) is not a local maximum on the seed torus. This disposes of every
positive critical point with \(|c|,|h|<1\).

### 4. The edges \(h=\pm1\)

It suffices to consider \(h=1\). Equation (3) reduces to

\[
R(c,1)=-256(2c-1)(2c+1)^5(2c^2+1)^2(4c^3-2c+1)^2.
\tag{11}
\]

Positivity requires \(-1/2<c<1/2\). On this interval

\[
\begin{aligned}
R_c(c,1)={}&-1024(2c+1)^4(4c-1)(2c^2+1)
             (4c^3-2c+1)F(c),\\
F(c)={}&32c^5+4c^4-4c^3+4c^2-4c+1.
\end{aligned}
\tag{12}
\]

Exact Sturm counts show that neither \(4c^3-2c+1\) nor \(F(c)\) has a
root in \([-1/2,1/2]\). Therefore the sole possible positive local maximum
on this edge is

\[
c=1/4,\quad h=1,\quad R=1594323/4096.
\tag{13}
\]

The opposite edge gives \(c=-1/4,h=-1\). These are the same trace pairs
under the parametrization change \((m,n)\mapsto(m+\pi,n+\pi)\), which
does not change \(e^{it},e^{is}\).

### 5. Recovering every seed, without omitting a lift

Let \(\alpha=\arccos(1/4)\). Equation (13) means

\[
m=2\pi k/3,\qquad n=\pm\alpha\pmod{2\pi}.
\]

The common cubic rotation can be absorbed in the normalization, so the
unordered even-root exponents are \(\{-2,1,1\}\alpha\), and the odd-root
exponents are \(\{2,-1,-1\}\alpha\), or vice versa.

For clarity, the convention throughout this calculation is

\[
(e_1,e_2,e_3)=\frac{(ad,b,c)}{\rho},\qquad
(o_1,o_2,o_3)=\frac{(bc,d,a)}{\rho},\qquad \rho^3=abcd.
\tag{14}
\]

Writing \(e_2=e^{ir},e_3=e^{is},o_2=e^{iu},o_3=e^{iv}\), put

\[
S=r+s+u+v,\qquad
(\theta_1,\theta_2,\theta_3,\theta_4)
=(v-S,r-S,s-S,u-S).
\tag{15}
\]

This is a finite torus covering of degree three. It shows explicitly how to
recover every seed. The three assignments of each repeated-root triple give
nine distinct seeds, and swapping the two trace pairs gives nine more. The
verifier enumerates all these assignments with integer exponent vectors and
checks that their union is exactly the 18-element seed-map orbit in
`EXACT_MAXIMA.md`.

Every one of those 18 seeds is already proved to be a strict nondegenerate
local maximum by its exact Hessian and symmetry. Combining this note with
the reduction to the double boundary proves Claim A completely.


---


# Part III. Exact maximum, symmetry orbit and local certificates

### Scope

The calculations below prove that the proposed algebraic seed is correct, that
its orbit has exactly 18 points, that all 18 points are strict nondegenerate
local maxima of the stated structural invariant, and that explicit neighborhoods
contain no further stationary points. **They do not by themselves prove that
these exhaust the positive local maxima.** Global exclusion of other stationary
maxima is supplied by the companion proofs DELTOID_REDUCTION.md and
TWO_BOUNDARY.md; the present module supplies their exact endpoint data.

The self-contained acceptance verifier is `exact_maxima.py`. It uses Python
integers and `fractions.Fraction` only, and reconstructs the complete Laurent
polynomial from the defining structural circuit. The supplied Fourier file is
an optional comparison, never an assumption needed for acceptance.

Run:

```sh
python3 exact_maxima.py
```

Or, from the handoff root, compare the supplied file as well:

```sh
python3 output/exact_maxima.py --fourier toolkit/rfourier.json
```

The verifier explicitly rejects optimized Python execution (`python -O`), so
its acceptance assertions cannot be silently disabled.

### 1. Exact seed and invariant value

Let

\[
 q=\frac{1+i\sqrt{15}}4=e^{i\alpha},\qquad
 \alpha=\arccos(1/4),\qquad
 \theta_*=(\alpha,2\alpha,-\alpha,-2\alpha).
\]

Thus \(q\bar q=1\). In the field \(\mathbb Q[t]/(t^2+15)\), with
\(t=i\sqrt{15}\), all evaluations are exact rational pairs. At this point the
structural quantities are

| Quantity | Exact value |
|---|---:|
| \(X,Y\) | \(9/4\) |
| \(Z\) | \(9/16\) |
| \(p\) | \(81/16\) |
| \(J\) | \(27/8\) |
| \(W\) | \(1215/256\) |
| \(g\) | \(243/16\) |
| \(\eta\) | \(117/16\) |
| \(\chi\) | \(-5103/64\) |
| \(R\) | \(1594323/4096=3^{13}/2^{12}\) |

For the regenerated Laurent polynomial
\(R(\theta)=\sum_k c_k e^{ik\cdot\theta}\), differentiation gives

\[
 \partial_j R(\theta_*)
 =i\sum_k c_k k_j q^{k\cdot(1,2,-1,-2)}=0
 \quad (j=1,2,3,4).
\]

The verifier computes each complete field sum and checks exact equality to zero.
The coefficient dictionary contains 2,083 nonzero terms; it is regenerated
directly from \(s,t,r,X,Y,Z,p,J,W,g,\eta,\chi\), using Laurent convolution.
This avoids relying on floating-point values or on the supplied expansion.

### 2. Exact Hessian and eigenvalues

In the coordinate order \((\theta_1,\theta_2,\theta_3,\theta_4)\),

\[
 D^2R(\theta_*)=\frac{59049}{2048}
 \begin{pmatrix}
 -80&40&78&-39\\
 40&-46&-39&6\\
 78&-39&-80&40\\
 -39&6&40&-46
 \end{pmatrix}.
\]

Write the integer matrix as \(\begin{pmatrix}A&B\\B&A\end{pmatrix}\).
On the symmetric and antisymmetric subspaces it acts as, respectively,

\[
 A+B=\begin{pmatrix}-2&1\\1&-40\end{pmatrix},\qquad
 A-B=\begin{pmatrix}-158&79\\79&-52\end{pmatrix}.
\]

Consequently its four eigenvalues are

\[
 \frac{59049}{2048}(-21\pm\sqrt{362}),\qquad
 \frac{5\cdot59049}{2048}(-21\pm\sqrt{362}).
\]

Since \(362<21^2\), all four are negative. In particular, \(\theta_*\) is
a strict nondegenerate local maximum. The verifier also independently checks
Sylvester's criterion using exact determinants of all four leading principal
submatrices.

### 3. The 144 exact maps and their orbit

Associate the seed with the exponent-vector array

\[
 Q=\begin{pmatrix}
 0&0&0\\0&e_1&e_2\\0&e_3&e_4
 \end{pmatrix}.
\]

For every row permutation, column permutation, optional transpose and optional
conjugation, apply those operations to this array and dephase it by

\[
 Q'_{ij}=Q_{ij}+Q_{00}-Q_{i0}-Q_{0j}.
\]

Reading \(Q'_{11},Q'_{12},Q'_{21},Q'_{22}\) gives the four rows of an
integer matrix \(L\). Thus each map in the prompt is exactly
\(\theta\mapsto L\theta\pmod{2\pi}\). The verifier checks that all 144
matrices are distinct and that each has determinant \(\pm1\).

For every one of these matrices it verifies the coefficient identity

\[
 \sum_k c_k z^{L^Tk}=\sum_k c_k z^k.
\]

It follows that \(R(L\theta)=R(\theta)\) on the entire torus. This is a
polynomial identity, not a test at selected points. Each map is a local
diffeomorphism, so it carries strict nondegenerate maxima to strict
nondegenerate maxima.

The 18 orbit points are \(\alpha v\pmod{2\pi}\), where

| | \(v\) | | \(v\) |
|---:|---|---:|---|
| 1 | \((-4,-2,-2,-1)\) | 10 | \((1,-1,-1,1)\) |
| 2 | \((-2,-4,-1,-2)\) | 11 | \((1,-1,2,-2)\) |
| 3 | \((-2,-1,-4,-2)\) | 12 | \((1,2,-1,-2)\) |
| 4 | \((-2,-1,2,1)\) | 13 | \((1,2,2,4)\) |
| 5 | \((-2,2,-1,1)\) | 14 | \((2,-2,1,-1)\) |
| 6 | \((-1,-2,-2,-4)\) | 15 | \((2,1,-2,-1)\) |
| 7 | \((-1,-2,1,2)\) | 16 | \((2,1,4,2)\) |
| 8 | \((-1,1,-2,2)\) | 17 | \((2,4,1,2)\) |
| 9 | \((-1,1,1,-1)\) | 18 | \((4,2,2,1)\) |

Each integer vector occurs exactly eight times among the 144 maps. To make
distinctness modulo \(2\pi\) rigorous without any irrationality assumption,
the verifier computes every complex coordinate \(q^{v_j}\) in
\(\mathbb Q(i\sqrt{15})\) and checks that the 18 four-tuples are pairwise
distinct. It also checks their values and gradients directly.

#### All lifts of the candidate trace pairs

This additionally closes the finite-lift step if a separate global argument
classifies the possible maxima in terms of normalized even and odd permutation
products. Choose a cube root \(\rho^3=abcd\) and set

\[
 (e_1,e_2,e_3)=(ad,b,c)/\rho,\qquad
 (o_1,o_2,o_3)=(bc,d,a)/\rho.
\]

Both triples have product one. Conversely any two product-one triples give
the unique seed

\[
 (a,b,c,d)=\left(\frac{e_1}{o_2},\frac{o_1}{e_3},
                         \frac{o_1}{e_2},\frac{e_1}{o_3}\right),
 \qquad \rho=e_1o_1.
\]

Multiplying both triples by a common cube root of unity leaves this seed
unchanged. For the candidate trace pair, the multisets of powers of \(q\)
are \(\{q^2,q^{-1},q^{-1}\}\) and
\(\{q^{-2},q,q\}\). There are three orderings of each. The nine resulting
seeds, and the nine obtained after exchanging the two multisets, are exactly
the 18 orbit vectors above. The verifier checks this equality of finite sets
using integer exponent arithmetic.

### 4. Explicit neighborhoods with unique stationary points

#### Base cube

Let \(C_*\) be the angular cube

\[
 C_*=\{\theta_*+h:\|h\|_\infty\le1/200\}.
\]

**Theorem.** Throughout \(C_*\), \(D^2R\) is negative definite and
\(R>388\). The only stationary point in \(C_*\) is \(\theta_*\).

To prove this, expand each Hessian entry in its centered Taylor polynomial
through degree four. For a multi-index \(\beta\), its coefficient is the
exact algebraic number

\[
 -\frac{i^{|\beta|}}{\beta!}
 \sum_k c_k k_i k_j k^\beta q^{k\cdot(1,2,-1,-2)}.
\]

The verifier performs the cancellations in these field sums before taking
absolute values. Even-degree coefficients are rational, and odd-degree
coefficients are rational multiples of \(\sqrt{15}\); the upper bound
\(\sqrt{15}<4\) makes every coefficient bound rational.

The maximum over rows of the sum of absolute coefficients at each homogeneous
degree is bounded by

\[
 \begin{split}
 B_1&=4113747/512,\\
 B_2&=1371531123/4096,\\
 B_3&=470301957/1024,\\
 B_4&=57479177961/16384.
 \end{split}
\]

For real \(x\), the integral Taylor remainder of \(e^{ix}\) through degree
four has modulus at most \(|x|^5/5!\). Since \(|q|=1\), the maximum row-sum
remainder of the Hessian is therefore bounded by \(B_5r^5\), where

\[
 B_5=\frac1{5!}\max_i\sum_k |c_k k_i|\|k\|_1^6
 =21471757176/5.
\]

At \(r=1/200\),

\[
 \|D^2R(\theta_*+h)-D^2R(\theta_*)\|_2
 \le\|D^2R(\theta_*+h)-D^2R(\theta_*)\|_\infty
 \le\sum_{m=1}^5 B_mr^m
 =\frac{159309806298741573}{3276800000000000}<49.
\]

The first norm inequality holds because the Hessian difference is real
symmetric. On the other hand, using \(\sqrt{362}<191/10\),

\[
 -\lambda_{\max}(D^2R(\theta_*))
 >\frac{59049}{2048}\frac{19}{10}>54.
\]

Hence the Hessian remains negative definite. For two distinct critical points
in this convex cube, integrating the negative quadratic form along their
joining segment would give
\((x-y)\cdot(\nabla R(x)-\nabla R(y))<0\), a contradiction. Existence is
already supplied by the exact point \(\theta_*\).

Finally, \(\nabla R(\theta_*)=0\) and Taylor's theorem imply

\[
 |R(\theta_*+h)-R(\theta_*)|
 \le2r^2\left(5\frac{59049}{2048}\frac{401}{10}
                    +\sum_{m=1}^5B_mr^m\right)<\frac13.
\]

In particular \(R>388\) throughout the cube. All inequalities here are
checked by exact rational comparisons in the verifier.

#### Every orbit point

For each map \(L\), the image \(L C_*\) is a parallelepiped containing
exactly one stationary point, namely \(L\theta_*\). Indeed, the Hessians
are related by congruence, using the exact invariance \(R\circ L=R\).

The verifier checks that \(L^{-1}\) belongs to the same list of maps and that
\(\|L^{-1}\|_\infty\le4\). Consequently every angular cube

\[
 \{L\theta_*+h:\|h\|_\infty\le1/800\}
\]

lies in \(L C_*\), has \(R>388\), and contains exactly one stationary
point. Angular lifts are taken locally, or equivalently modulo \(2\pi\).

### 5. How global exhaustion is supplied

The present module establishes the exact candidates, their full finite orbit,
and the local neighborhoods. Global exhaustion is supplied separately by
`DELTOID_REDUCTION.md` and `TWO_BOUNDARY.md`: the first forces every positive
local maximum to have both normalized traces on the deltoid boundary, and the
second classifies that entire boundary stratum and excludes its extra positive
stationary branch by an explicit increasing direction. Together with the
exact candidate Hessians and complete lift enumeration above, those notes
prove Claim A.

The neighborhoods also allow any independent global interval cover to
terminate when a box lies in one of the 18 cubes or larger mapped
parallelepipeds. Such a cover is not required by the analytical proof in the
companion notes. Numerical ascent alone, or the local results of this module
alone, would not prove global exhaustion.


---


# Part IV. Sheets, continuity and finite Record boundaries

### Status and scope

This note proves Tasks B and C relative to the allowed strict reconstruction inputs MC1–MC5 in `PROMPT.md`. The global critical-point census in Claim A is supplied by the companion analytical proofs `DELTOID_REDUCTION.md` and `TWO_BOUNDARY.md`, together with the exact identification and Hessian checks in `EXACT_MAXIMA.md`. This note supplies the sheet and topological steps used to assemble those results. It does **not** construct an atlas or certify any supplied floating-point Record; the finite Record family and its boundary and exclusion certificates remain outstanding.

There is a real logical gap in the supplied `reference/atlas/COVERAGE_DRAFT.md`: its general assertion that a possible sheet swap is harmless because of MC5 does not follow. MC5 moves the positive sheet to the *conjugated seed*, whose membership in the covered set is precisely what that argument is trying to establish. The gap can be repaired exactly at the proposed maximum frame. In fact, every positive-sheet completion at its entire 144-map orbit is equivalent to the same matrix K*, a stronger conclusion than requested.

`verify_sheet_branches.py` independently replays the rational branch identities and the two exact symmetries of that maximum frame. All acceptance calculations in that script are exact. Its success does not certify Claim A or the atlas.

### 1. Intrinsic sheet labels and the exact action of seed symmetries

For an invertible 3-by-3 phase matrix X, define

\[
\Theta(X)=-\frac{\operatorname{perm}(X)\det(X)^2}
 {|\det(X)|^2\prod_{i,j}X_{ij}}.
\]

The side-fiber theorem in `reference/reconstruction/Proofs_SIDE_FIBER.md` identifies this invariant on the constructed sides:

\[
\Theta(B_\sigma)=z_\sigma,
\qquad \Theta(C_\sigma)=\overline{z_\sigma},
\qquad
z_\sigma=\frac{\chi+\sigma i\sqrt R}{2g},\quad \sigma\in\{+1,-1\}.
\tag{1}
\]

Here Hσ is partitioned as [[E,Bσ],[Cσ,Dσ]]. The second identity uses invariance of Θ under transposition, since the vertical side constructor constructs Cσᵀ. Strictness gives g>0 and R>0, so the sign of Im Θ(Bσ) unambiguously labels the sheet.

#### 1.1 Invariance facts

Θ is invariant under row phases, column phases, row permutations, column permutations, and transposition. To check the phase statement, if the product of all row and column multipliers is t, the permanent, determinant, and product of all nine entries multiply by t, t, and t³, respectively; the factors cancel. Permutation signs disappear in det². Also

\[
\Theta(\overline X)=\overline{\Theta(X)}.
\tag{2}
\]

The scalar invariants g,η,χ,R of the seed are unchanged by row/column permutations and re-dephasing. Indeed, column monomials cancel from EE*, row phases cancel around the cycle sr t̄, and row permutations only permute X,Y,Z and possibly conjugate sr t̄. They are unchanged by conjugation as well. For transposition, the equality of the horizontal and vertical invariants is the exact identity proved in `reference/reconstruction/Proofs_STRICT_DOMAIN.md`. Thus all 144 maps preserve S={R>0}.

#### 1.2 Row and column seed permutations do not swap the sheet

Extend a permutation of the three corner rows and columns to the full matrix, then re-dephase the full matrix. The transformed upper-right and lower-left blocks are monomially equivalent to the original Bσ and Cσ. By (1)–(2), they still have Θ-values zσ and z̄σ. The fixed-(Gram,Θ) side uniqueness in MC2–MC3 identifies them with the corresponding constructed sides at the transformed corner, up to complementary permutations. Orthogonality then uniquely forces the lower-right block. Consequently

\[
[H_\sigma(L_{P,Q}\theta)]=[H_\sigma(\theta)].
\tag{3}
\]

This is stronger than an unspecified two-sheet alternative. It uses the sheet-label identity and side uniqueness; two-sheet exhaustion by itself does not determine the sign.

#### 1.3 Transposition and conjugation each reverse the sheet

The horizontal side of Hσᵀ is Cσᵀ, so its Θ-value is z̄σ. The horizontal side of H̄σ is B̄σ, whose Θ-value is also z̄σ. The same side-uniqueness argument gives

\[
\begin{aligned}
[H_\sigma(\theta^T)]&=[H_{-\sigma}(\theta)^T],\\
[H_\sigma(-\theta)]&=[\overline{H_{-\sigma}(\theta)}],\\
[H_\sigma((-\theta)^T)]&=[\overline{H_\sigma(\theta)}^{\,T}].
\end{aligned}
\tag{4}
\]

The middle identity is MC5. Here θᵀ=(θ₁,θ₃,θ₂,θ₄), and minus denotes componentwise angle negation on the torus.

Let L first permute the corner rows/columns, then transpose with bit τ and conjugate with bit κ. For either sheet,

\[
\boxed{
[H_\sigma(L\theta)]
=\mathcal C^\kappa\mathcal T^\tau
 [H_{(-1)^{\tau+\kappa}\sigma}(\theta)].}
\tag{5}
\]

Here 𝒞 and 𝒯 mean conjugation and transposition of classes. Equation (5) proves Claim B, including the exact sheet parity. No unlisted Tao possibility enters this argument: the transformed sides already have one of the two conjugately matched pairs of Θ-values, and uniqueness reconstructs that matched completion directly.

### 2. The maximum-frame gap has an exact repair

Let x be any unit complex number for which the following seed is strict:

\[
E(x)=\begin{pmatrix}
1&1&1\\
1&x&x^2\\
1&x^{-1}&x^{-2}
\end{pmatrix},\qquad K=H_+(E(x)).
\tag{6}
\]

The proposed θ*=(α,2α,−α,−2α) has precisely this form, with x=e^{iα}. The following statements do not require a specific equation for α.

First, Ē(x) is exactly E(x) with its last two rows swapped. By (3) and MC5,

\[
H_+(\overline{E(x)})\cong K,
\qquad H_-(E(x))\cong\overline K.
\tag{7}
\]

Second, take E(x), reorder its rows as (2,0,1), reorder its columns as (1,2,0), using zero-based indices, and re-dephase. The result is exactly E(x)ᵀ. For example, the four nontrivial re-dephased entries are x,x⁻¹,x²,x⁻². Therefore (3)–(4) and (7) imply

\[
K\cong H_+(E(x)^T)
\cong H_-(E(x))^T
\cong\overline K^{\,T}.
\tag{8}
\]

Both seed identities are checked symbolically for an indeterminate nonzero x by `verify_sheet_branches.py`.

Substituting (7)–(8) into (5) proves

\[
\boxed{H_+(L\theta_*)\cong K_*
\quad\text{for every one of the 144 seed maps }L.}
\tag{9}
\]

Thus Claim A, as established by the companion proofs, identifies all positive local maxima with this orbit, and all their positive-sheet classes equal [K*]. The four-operation closure stipulated in the handoff is more than is required for this particular orbit. For a generic seed lacking these frame symmetries, MC5 alone would not justify that reduction.

If Claim A is proved only through isolated neighborhoods, the exact frame identification must still be justified: for example, by identifying an exact critical point of form (6) and proving it is the unique critical point in its neighborhood. Merely observing that a numerical critical point is close to this form is insufficient for (7)–(9).

### 3. Continuity of the positive quotient sheet on all of S

#### 3.1 The auxiliary sign does not change the reconstruction sheet

Keep G and z fixed. In the side notation of the supplied reconstruction, put

\[
\mu=s/3,\quad n=1-|\mu|^2,\quad
\alpha=\mu^2-u\bar\mu,\quad
\rho=(n+d_F)/2,\quad q=\alpha/\rho,\quad \sigma=u+\mu q.
\]

The accepted side identities give

\[
|u|=1,\quad n>0,\quad
\rho^2-n\rho+|\alpha|^2=0,\quad
|\sigma|^2=\rho,\quad
\rho(1+|q|^2)=n.
\tag{10}
\]

The prescribed sign has dF≥0 and ρ≥n/2. Reversing the nonzero square root δ changes dF to −dF. Whenever the reversed formula is defined,

\[
\rho'=n-\rho=\rho|q|^2,
\quad q'=1/\bar q,
\quad \sigma'=q^2\bar\sigma/\bar q.
\tag{11}
\]

Writing t=q/q̄ and letting J exchange Fourier indices 1 and 2,

\[
M'=MJ\operatorname{diag}(1,t,\bar t),
\qquad \xi'=t^3\bar\xi.
\tag{12}
\]

If w³=ξ, choose w'=ωᵇt w̄. The new side column j is exactly the old column b−j, with indices modulo three. Changing only w to ωᵇw sends column j to j−b. These identities hold separately at fixed z+ and at fixed z−; auxiliary root changes do not exchange those sheets. The lower-right formula D=−CE*G⁻¹B propagates complementary column and row permutations to the whole matrix.

The domain qualification matters. When s=0, one has μ=q=0, n=ρ=dF=1; the reversed-sign formula has ρ'=0 and is undefined. For example,

\[
(a,b,c,d)=(\omega,\omega^2,i,(3+4i)/5)
\]

has s=0 and R=5184/625>0. The exact replay checks this example. We must not claim that both raw auxiliary-sign formulas are regular everywhere on S.

There is no problem at an actual sign switch dF=0: then ρ=n/2>0 and |q|=1, so both formulas are regular and (11)–(12) apply. Conversely, q=0 forces μ=0 because α=0 and |μ|<1 imply |μ|²=|μ|; thus dF=n>0 and no sign switch occurs near such a point after sufficiently shrinking the neighborhood.

#### 3.2 Local analytic representatives

Fix θ₀∈S. All quantities preceding the two auxiliary square roots are real analytic near θ₀, since R>0 and every prescribed denominator is nonzero. The radicand for each δ is nonzero. Choose a local analytic square root agreeing at θ₀ with a permitted prescribed root, and keep this branch instead of reapplying a principal-root/sign rule pointwise.

At θ₀ the signed denominator satisfies ρ≥n/2>0. Shrink the neighborhood so both signed side denominators remain positive. If the signed dF disagrees with the canonical sign, (11)–(12) identify the resulting side with the canonical side by a permutation; if q vanishes, the preceding paragraph supplies a neighborhood with no sign change. The same reasoning is applied independently to the vertical side.

Since |ξ|=1, each ξ is nonzero and has a local analytic cube root. These local choices construct a real analytic matrix-valued map Hloc on a neighborhood of θ₀, every value of which is Hadamard and is equivalent to the specified H+(θ). This argument uses full strict-domain validity in the current MC inputs. It does not inherit the restricted low-M coverage assumption of the older `CHART_REGULARITY.md`, and it does not assert that the entire Hadamard variety is a manifold.

For completeness, quotient continuity follows directly from the displayed metric. For θ close to θ₀ choose the small continuous real entrywise phases φ satisfying

\[
H_{\rm loc}(\theta)=H_{\rm loc}(\theta_0)\circ e^{i\phi(\theta)}.
\]

Let P be orthogonal projection onto the horizontal space V of real matrices with all row and column sums zero. The difference φ−Pφ is a row-plus-column phase, so

\[
\delta(H_+(\theta),H_+(\theta_0))
\le\|P\phi(\theta)\|_F
\le\|\phi(\theta)\|_F\longrightarrow0.
\tag{13}
\]

This proves the required continuity on all of S, including artificial cube-root cuts and auxiliary sign switches.

#### 3.3 The continuous image does not contain the isolated Tao class

This can be obtained from the Tao pairing census, but it also follows from the stated isolation assumption without additional classification detail. If [H+(θ₀)] were isolated, continuity would make the class constant on a nonempty open neighborhood U of θ₀. A fixed equivalence class has only finitely many dephased ordered 3-by-3 corner seeds: row/column phase factors cancel from the four cross ratios, and there are at most (6·5·4)² ordered corner choices. But H+(θ) has E(θ) as its literal corner, and θ ranges over the open set U. This contradiction proves that the positive-sheet image contains no isolated class, in particular no Tao class.

Consequently the map in (13) takes values in X=(𝓗/≅)\{[Tao]}, as required for the open-and-closed argument.

### 4. Every strict component contains a positive local maximum

The torus is locally connected. Therefore every connected component C of its open subset S is open. If x∈∂C and R(x)>0, a sufficiently small connected neighborhood of x lies in S and intersects C; it must lie in the same component, contradicting x∈∂C. Thus R=0 on ∂C.

The closure C̄ is compact. Choose y∈C. A maximum x of R on C̄ satisfies R(x)≥R(y)>0, so x is not on ∂C and belongs to C. Since C is open, x is a local maximum of R on the whole torus. This proves the component assertion; no gradient-flow convergence statement is needed.

### 5. A precise finite Record boundary condition

#### 5.1 Record regions and their quotient interiors

Let 𝓟 be the compact torus of all 6-by-6 unit-entry matrices, and let V be its 25-dimensional horizontal real phase space. For each record i choose a phase matrix Aᵢ, a direct orthogonal splitting V=Tᵢ⊕Nᵢ with dim Tᵢ=4, a positive definite quadratic form Qᵢ on Tᵢ, and ρᵢ>0. Define

\[
\Omega_i=\{v+n:\ v\in T_i,\ Q_i(v)\le1,
                 \ n\in N_i,\ \|n\|_F\le\rho_i\},
\quad E_i(u)=A_i\circ e^{iu}.
\tag{14}
\]

The center Aᵢ need not be an exact Hadamard for this topological lemma; it must be an exactly specified phase matrix. The analytic enclosure and exclusion certificates have their own requirements.

Let q denote passage to equivalence classes, and put

\[
\begin{aligned}
\mathcal R_i&=q(\mathcal H\cap E_i(\Omega_i)),\\
\mathcal U_i&=q(\mathcal H\cap E_i(\operatorname{int}\Omega_i)),\\
\mathcal B_i&=q(\mathcal H\cap E_i(\partial\Omega_i)).
\end{aligned}
\tag{15}
\]

Here interior and boundary are taken in the full horizontal space V, not in an assumed four-dimensional solution manifold. Each Rᵢ is compact and hence closed in the Hausdorff quotient. Each Uᵢ is open in the Hadamard quotient. To see the latter, if u is interior, any sufficiently small entrywise phase perturbation w decomposes as Pw+(I−P)w. The first term changes u within the interior of Ωᵢ; the second is absorbed by row/column phases. Thus the phase-gauge saturation of Eᵢ(int Ωᵢ) is open in 𝓟. Permutation saturation is a union of open sets, and intersecting with 𝓗 proves the assertion.

No uniqueness of a phase lift, absence of stabilizers, or injectivity radius is needed for this argument. A class may have many representatives in one or several records.

#### 5.2 The boundary condition and proof

Assume the finite family satisfies

\[
\boxed{\mathcal B_i\cap X\ \subseteq\ \bigcup_j\mathcal U_j
\quad\text{for every record }i.}
\tag{16}
\]

Allowing j=i is harmless and can exploit a second interior representative of the same class. Requiring a different record is a stronger sufficient condition.

Then

\[
W=\left(\bigcup_i\mathcal R_i\right)\cap X
  =\left(\bigcup_i\mathcal U_i\right)\cap X.
\tag{17}
\]

Indeed, choose a source lift u∈Ωᵢ of any class in W. If it is interior, that class belongs to Uᵢ. If it is a boundary lift, (16) puts the class into another Uⱼ. The reverse inclusion is immediate. The left side of (17) is closed in X because the family is finite; the right side is open in X. Thus W is open and closed in X.

#### 5.3 What a finite checker must actually verify

A finite certificate for (16) can consist of the following data and acceptance checks.

1. A finite, exactly checked cover of each parameter boundary ∂Ωᵢ by rational interval cells. Both the tangent ellipsoid boundary Qᵢ(v)=1 and the normal boundary ||n||=ρᵢ must be covered. A strict normal-slack estimate can instead certify that the latter contains no actual Hadamards.
2. On each cell, either a certified proof that there is no Hadamard, or a validated enclosure of **every actual Hadamard in that cell**. Contraction/interval Newton enclosures may be used, but they must cover every actual zero in the stipulated normal region, not merely a selected fixed-point branch.
3. For each surviving enclosure, a target record j, a fixed permitted monomial change of frame g, and verified local branches of the entrywise logarithm of g·H divided entrywise by Aⱼ. Let ψ be that real phase lift and w=Pψ. Then H is equivalent to Aⱼ∘e^{iw}. The target acceptance inequalities are the strict bounds

\[
\sup Q_j(P_{T_j}w)<1,
\qquad \sup\|P_{N_j}w\|_F^2<\rho_j^2.
\tag{18}
\]

These supremum upper bounds are computed by exact or outward-rounded interval arithmetic on the entire enclosure. Branch validity must also be certified; a numerical phase match at the cell center is insufficient. Certified positive rational slack makes the acceptance decision finite and checkable. Cells can be subdivided and assigned different target records or equivalences.

All boundary-domain covering decisions and every no-solution/containment acceptance must have exact or interval witnesses. Timeouts, unvalidated point samples, and overlapping floating-point estimates are unresolved cells, not accepted coverage.

The Record's local no-quartet certificate must independently apply to every actual Hadamard in Rᵢ. It is irrelevant to the proof of (17), but necessary for using the final cover as an exclusion theorem. Conversely, a fixed point for a projected normal equation need not solve all Hadamard equations. For boundary coverage it is sufficient that every full solution is enclosed by that fixed-point calculation; the argument does not require a Hadamard to exist at every tangent parameter.

### 6. Assembly theorem

Assume:

1. MC1–MC5, the stated isolation of Tao, and full strict-domain formula validity.
2. Claim A: every positive local maximum lies in the seed-map orbit of a strict θ* of the exact form (6).
3. A finite family of Records satisfying (16), with W defined by (17).
4. [F] and [K*] lie in W, and W is invariant under conjugation. The handoff's additional transposition invariance is permitted but is not needed after (9).

Then W=X.

**Proof.** Let C be a connected component of S. Section 4 gives a maximum θC∈C. Claim A and (9) give [H+(θC)]=[K*]∈W. Section 3 makes H+(C) a connected subset of X. A connected set meeting a subset that is both open and closed cannot also meet its complement, so H+(C)⊂W. This holds for every component; hence H+(S)⊂W.

For any Hadamard H outside the Fourier and Tao classes, MC1 supplies a strict corner and MC2–MC5 give

\[
[H]=[H_+(\theta)]
\quad\text{or}\quad
[H]=[\overline{H_+(-\theta)}].
\]

Because −θ∈S, the first conclusion and conjugation invariance put H in W in either case. The Fourier class belongs to W by assumption. This proves W=X. If every Record also certifies the quartet exclusion on its entire region, every non-Tao class is excluded. Tao still requires the separately stipulated exclusion. ∎

The companion analytical proofs and their exact verifiers discharge the global critical-point census used in this theorem. The remaining computational obligation is an actual finite Record family with complete boundary and exclusion certificates. Its existence and successful verification are not supplied by the topology alone.


---


# Part V. Connectedness and the stronger coverage theorem

### Theorem and proof dependencies

Assume the permitted classification-relative reconstruction facts MC1–MC5 in
`PROMPT.md`. With the global maximum census proved in `DELTOID_REDUCTION.md`
and `TWO_BOUNDARY.md`, and the exact orbit identification in `EXACT_MAXIMA.md`,
the space

\[
X=(\mathcal H/\cong)\setminus\{[\mathrm{Tao}]\}
\]

is connected.

Consequently, a **nonempty** finite Record union satisfying the complete
boundary condition of `SHEETS_TOPOLOGY.md` covers X. It is enough to include
the Fourier class. A separately certified Record around K* and closure under
conjugation or transposition are not necessary for this stronger coverage
statement.

This is a statement about connectedness, not a claim of a smooth global
manifold or a claim that every pair of classes has an explicitly constructed
path. It does not supply the finite Record family, its boundary certificate,
or the quartet-exclusion certificates.

### 1. The positive-sheet image is connected

Write

\[
A=\{[H_+(\theta)]:\theta\in S\},\qquad
B=\{[\overline{H_+(\theta)}]:\theta\in S\}.
\]

The results in `SHEETS_TOPOLOGY.md` show that the positive quotient sheet is
continuous throughout S, including all auxiliary root cuts. Every component
C of S contains a positive local maximum. The global census puts that
maximum in the seed-map orbit of θ*, and the exact maximum-frame identities
show

\[
[H_+(L\theta_*)]=[K_*]
\quad\text{for all 144 seed maps }L.
\]

Thus every image H+(C) is connected and contains the same point [K*]. Their
union A is connected. Conjugation is continuous, so B is connected too.

Neither image contains the isolated Tao class. One direct reason, already
proved in the sheet note, is that a fixed equivalence class has only finitely
many dephased ordered corner seeds; it cannot be the image of a nonempty
open seed neighborhood under the literal-corner construction. Isolation and
continuity would force exactly such a neighborhood if Tao occurred.

MC1–MC5 and conjugation invariance of S imply

\[
X=A\cup B\cup\{[F_6]\}.
\tag{1}
\]

It remains to show that adjoining [F₆] connects these two sets.

### 2. An explicit nonexceptional Fourier degeneration

Put ω=e^{2πi/3}, F₃=(ω^{ab}), and

\[
D(t)=\operatorname{diag}(1,e^{it},1),\qquad
H(t)=\begin{pmatrix}
F_3&F_3\\ F_3D(t)&-F_3D(t)
\end{pmatrix}.
\tag{2}
\]

All entries have modulus one, and block multiplication gives H(t)H(t)*=6I.
The family is continuous. At t=0 it is F₂⊗F₃, which is equivalent to F₆
by explicit row and column permutations. For indices p,q∈{0,1} and
a,b∈{0,1,2}, choose Fourier row and column indices

\[
j=3p+2a\pmod6,\qquad k=3q+4b\pmod6.
\]

Then

\[
e^{2\pi i jk/6}=(-1)^{pq}\omega^{ab},
\]

which is the corresponding entry of H(0). Both index maps are bijections.

For a phase matrix, the set of four-entry cross ratios

\[
\frac{H_{ij}H_{k\ell}}{H_{i\ell}H_{kj}}
\]

is invariant under Hadamard equivalence: row and column phases cancel, and
permutations rearrange the set. Every ratio for F₆ is a sixth root of unity;
every ratio for the displayed Tao matrix is a third root of unity. In H(t),
the first and fourth rows and the first and second columns give exactly
e^{it}. Hence

\[
0<t<\pi/3
\quad\Longrightarrow\quad
H(t)\not\cong F_6,\qquad H(t)\not\cong\mathrm{Tao}.
\tag{3}
\]

The exact verifier `verify_sheet_branches.py` treats z=e^{it} as an
indeterminate unit phase and checks flatness, all orthogonality equations,
the displayed cross ratio, and the CRT permutations as identities in
Q(z,ω), with ω²+ω+1=0. It also checks the row permutation identifying
conjugate F₆ with F₆. These are full-family identities, not numerical
evaluations at sample t-values.

### 3. The Fourier class lies in the closure of both images

Take any sequence tₙ→0 with 0<tₙ<π/3. By (1)–(3), each [H(tₙ)] lies
in A or B, and [H(tₙ)]→[F₆]. At least one of A,B contains a subsequence,
so [F₆] belongs to the closure of one of them.

Conjugation exchanges A and B. It fixes [F₆], since conjugation of the
Fourier matrix replaces row j by row −j modulo six. Applying conjugation
to the convergent subsequence proves that [F₆] belongs to the closure of
the other set as well.

A connected set together with one of its closure points is connected.
Therefore A∪{[F₆]} and B∪{[F₆]} are connected sets with the common
point [F₆]. Their union is X by (1), proving the theorem.

### 4. Consequence for the finite atlas

For the finite Record regions Rᵢ and certified quotient interiors Uᵢ of
`SHEETS_TOPOLOGY.md`, the complete boundary condition proves

\[
W=\left(\bigcup_i R_i\right)\cap X
=\left(\bigcup_i U_i\right)\cap X.
\]

The left side is closed in X and the right side is open. Connectedness of
X therefore gives W=X whenever W is nonempty.

The boundary condition still must be certified over **every actual Hadamard
on every Record boundary**, accounting for all phase representatives,
possible stabilizers, tangent boundaries and normal boundaries. A finite
set of checked centers or individual passing local exclusion cells does not
establish it. The connectedness theorem removes the need to find a Record
representative in every component; it does not replace those boundary and
exclusion certificates.


---
