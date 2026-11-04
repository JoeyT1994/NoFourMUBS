# Global reduction of positive local maxima to two deltoid boundaries

## Theorem

For the seed polynomial in the handoff, every local maximum with \(R>0\) has the following property. Normalize the three even permutation products and the three odd permutation products to have product one. **Each normalized triple contains a repeated entry.**

Equivalently, for the normalized sums \(U,V\) defined below, there are unimodular \(z,w\) such that

\[
\boxed{U=2z+z^{-2},\qquad V=2w+w^{-2}.}
\tag{1}
\]

Thus the four-dimensional local-maxima problem reduces globally to the two-dimensional boundary problem treated in `TWO_BOUNDARY.md`. This theorem covers all seeds, including collisions and cusps. It uses no Hadamard classification, reconstruction formula, physicality assumption, or numerical optimization.

The algebraic acceptance decisions are replayed by `verify_deltoid_reduction.py`. They comprise exact Laurent identities from the original definition of \(R\), exact resultants and a Gröbner basis, Sturm counts, rational interval signs, and exact boundary identities. The verifier's assertions are checked with explicit exceptions and are not disabled by Python optimization.

## 1. Normalized permutation products

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

### Exact verification from the original definition

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

## 2. The trace domain and local openness

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

## 3. No positive local maximum in the double interior

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

## 4. A single smooth boundary can be moved into the double interior

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

## 5. A single cusp is also impossible

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

## 6. Conclusion and verification scope

The compact expression is invariant under exchanging \(U,V\): \(A\) stays fixed and \(B\) changes sign. Therefore Sections 4 and 5 apply to either ordering. Section 3 excludes the double interior; Sections 4 and 5 exclude every single-boundary case. Every positive local maximum must satisfy (1).

The exact computation in Section 3 is a finite algebraic certificate, not a sampling argument or a four-dimensional box cover. The global reduction itself uses the open trace quotient, the invariant circle action, and the inward curvature identity (20). The remaining classification of maxima on the two boundaries is separate and is supplied in `TWO_BOUNDARY.md`.
