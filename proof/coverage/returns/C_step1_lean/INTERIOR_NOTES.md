# A root-free proof of the deltoid interior reduction

## 1. Result and verification status

The double-interior part of the reference proof can be replaced by a short
polynomial argument. **No sextic, resultant, Gröbner basis, real-root count,
or algebraic-number evaluation is needed for this part of Step 1.**

The result proved here is slightly stronger than the required interior
exclusion:

> **Ambient saddle theorem.** Let
> \[
> u=|A|^2,\quad v=|B|^2,\quad
> C=\frac{(3u-v)(v-u+12)}2-2\operatorname{Re}(AB^2),
> \]
> \[
> \mathcal R(A,B)=4(2v-3u)^2(v-2u)-C^2,
> \qquad A,B\in\mathbb C.
> \]
> Every critical point of \(\mathcal R\) with positive value has a real
> direction of strictly positive second derivative. In particular,
> \(\mathcal R\) has no positive local maximum on \(\mathbb C^2\).

Combining this theorem with the invariant-circle curvature computation and
the cusp argument proves:

> Every positive local maximum relative to the product of the two filled
> deltoids has both traces on the deltoid boundary.

The algebraic certificates below were accepted by the independent checker
`verify_certificates.py`, using Python integers and `fractions.Fraction`.
The paper argument in Sections 2–5 explains every sign and every geometric
implication. These notes do not claim that the analytic or geometric
argument has been compiled in Lean. See the package-wide `STATUS.md` for
the actual Lean build status.

| Certificate | Exact claims | Largest expanded definition degree | Largest expanded definition term count |
|---|---:|---:|---:|
| `certificates/interior_core.json` | 40 | 8 | 40 |
| `certificates/interior_boundary.json` | 26 | 10 | 62 |
| `certificates/interior_cusp.json` | 14 | 6 | 16 |
| `certificates/interior_geometry.json` | 16 | 8 | 93 |
| **Total** | **96** | | |

The JSON encodes numbers as strings. The generator is
`generation/generate_interior.py`; it may use SymPy to construct the data,
but the acceptance checker imports neither this generator nor SymPy.
The largest denominator in an expanded definition is 4. These are small
`ring`/`linear_combination` goals, not large elimination certificates.

## 2. Ambient saddle theorem

### 2.1. Positivity and normalization

Write
\[
g=2v-3u,\qquad d=v-2u.
\]
If \(\mathcal R>0\), then
\[
4g^2d>C^2\ge0,
\qquad d>0,\qquad g=u+2d>0,\qquad v>0.
\tag{2.1}
\]
In particular \(B\ne0\).

For any unit complex number \(\zeta\), the action
\[
(A,B)\longmapsto(\bar\zeta^{2}A,\zeta B)
\tag{2.2}
\]
preserves \(u,v,AB^2\), and hence \(\mathcal R\). It is an invertible real
linear map. Choosing \(\zeta=\bar B/|B|\) puts \(B=b>0\). There is no
assumption that this action preserves the whole deltoid domain: at an
interior point we are considering an unconstrained ambient local maximum.

Write \(A=x+iy\) and \(v=b^2\). The resulting real polynomial is
\[
u=x^2+y^2,\quad g=2v-3u,\quad d=v-2u,
\]
\[
C(x,y,v)=\frac{(3u-v)(v-u+12)}2-2vx,
\qquad H(x,y,v)=4g^2d-C^2.
\tag{2.3}
\]
At an ambient critical point, \(H_x=H_y=H_v=0\). The first two
equalities are direct coordinate derivatives. For the third, the
derivative along real \(B=b\) is \(2bH_v\), and \(b>0\).
At an ambient local maximum one also has \(H_{yy}\le0\), because varying
the imaginary part of \(A\) with \(B\) fixed is an admissible straight
line in the ambient space.

### 2.2. Two elementary derivative identities force \(y=0\)

Define \(K=2v-3u+18\). Direct differentiation gives
\[
\begin{aligned}
C_x&=2xK-2v,& C_y&=2yK,& C_v&=-v+2u-2x-6,\\
H_x&=-16xg(5v-9u)-2CC_x,\\
H_y&=-16yg(5v-9u)-2CC_y,\\
H_v&=4g(6v-11u)-2CC_v.
\end{aligned}
\tag{2.4}
\]
Every derivative in (2.4) is checked by a derivative certificate.
The identity
\[
6v-11u=u+6d>0
\tag{2.5}
\]
shows that \(C=0\) would imply \(H_v=4g(u+6d)>0\). Thus \(C\ne0\)
at a positive critical point.

The exact polynomial identity
\[
\boxed{yH_x-xH_y=4vyC}
\tag{2.6}
\]
then gives \(y=0\), since the two derivatives vanish and \(vC\ne0\).
This Cartesian step replaces the phase-stationarity case split in the
reference proof.

Set
\[
c=C(x,0,v),\qquad f=H(x,0,v).
\]
Then \(f_x=f_v=0\), \(d=v-2x^2>0\), and \(g=x^2+2d>0\).

### 2.3. A positive-coefficient identity rules out \(x\le0\)

Suppose \(x=-h\) with \(h\ge0\), and write \(v=2h^2+d\). Define
\[
\begin{aligned}
W(h,d)={}&(2h+6)d^2+(6h^3+33h^2+48h)d\\
&+h^5+6h^4+6h^3.
\end{aligned}
\tag{2.7}
\]
All terms are nonnegative when \(h\ge0,d>0\), and the term \(6d^2\)
is strictly positive. Therefore \(W(h,d)>0\). An orthant certificate
checks that the expanded coefficients of \(W-6d^2\) are nonnegative and
that no variables other than \(h,d\) occur.

The crucial identity, valid for all real \(h,d\), is
\[
\boxed{
\left.(c_xf_v-c_vf_x)\right|_{x=-h,\ v=2h^2+d}
=-8(h^2+2d)W(h,d).
}
\tag{2.8}
\]
At a critical point the left side is zero. Under the hypotheses the right
side is strictly negative. This contradiction proves \(x>0\).

For auditing the constants in (2.8), the individual substituted formulas
are
\[
\begin{aligned}
g_-&=h^2+2d,\\
c_-&=\frac{(h^2-d)(h^2+d+12)}2+2h(2h^2+d),\\
(c_x)_-&=-2\bigl[h^3+2h^2+18h+(2h+1)d\bigr],\\
(c_v)_-&=-d+2h-6,\\
(f_x)_-&=16hg_-(h^2+5d)-2c_-(c_x)_-,\\
(f_v)_-&=4g_-(h^2+6d)-2c_-(c_v)_-.
\end{aligned}
\tag{2.9}
\]
Each specialization is checked as a polynomial substitution, followed by
the identity (2.8). Thus the certificate does not merely assert that two
independently supplied expressions have suitable signs; it checks their
connection to the differentiated original polynomial.

Equivalently, before substituting \(x=-h\), the combination is
\[
\left.(c_xf_v-c_vf_x)\right|_{v=2x^2+d}
=8(x^2+2d)T(x,d),
\tag{2.10}
\]
where
\[
T=(2x-6)d^2+(6x^3-33x^2+48x)d+x^5-6x^4+6x^3,
\qquad T(-h,d)=-W(h,d).
\]
The proof includes \(x=0\) automatically. For direct comparison with the
reference proof, the additional identity
\[
f_x(0,v)=-2v^2(v+12)<0\qquad(v>0)
\tag{2.11}
\]
is also certified.

### 2.4. Positive \(x\) forces positive transverse curvature

Now \(x>0,d>0\). The remaining amplitude equation has the form
\[
0=f_v
=4(x^2+2d)(x^2+6d)+2c(d+2x+6).
\tag{2.12}
\]
The first term and the coefficient \(d+2x+6\) are strictly positive.
Consequently \(c<0\).

The second derivative in the Cartesian transverse direction satisfies
\[
\boxed{xH_{yy}(x,0,v)=f_x-4vc.}
\tag{2.13}
\]
At a critical point, its right side is \(-4vc>0\). Since \(x>0\),
one obtains \(H_{yy}(x,0,v)>0\), contradicting the second-order necessary
condition for a local maximum. This proves the ambient saddle theorem.

The phase-direction formula in the reference is recovered without any
additional computation:
\[
x^2H_{yy}(x,0,v)-xf_x=-4vcx.
\tag{2.14}
\]
Indeed, the left side is the second derivative along
\(A=x e^{i\psi}\) at \(\psi=0\). Both (2.13) and (2.14) are certified.
The Cartesian version is preferable in Lean because it avoids an argument
function, a phase chart, and trigonometric differentiation.

One also gets the useful coordinate-free statement that every positive
ambient critical point satisfies
\[
\operatorname{Im}(AB^2)=0,
\qquad \operatorname{Re}(AB^2)>0,
\qquad C<0.
\]
The first two conditions follow from \(AB^2=xv\) in the normalized
coordinates; the circle action preserves this product.

## 3. Deltoid geometry certificates

Let
\[
\Delta(X,Y)=(X^2+Y^2)^2+18(X^2+Y^2)-8(X^3-3XY^2)-27.
\tag{3.1}
\]
The polynomial \(\lambda^3-Z\lambda^2+\bar Z\lambda-1\), where
\(Z=X+iY\), has discriminant \(\Delta(X,Y)\).
The general cubic Vieta identity and the symmetric-polynomial formula
for the squared Vandermonde are certified in `interior_geometry.json`.

For completeness, the sign argument that identifies the filled deltoid
needs no real-root isolation. The root multiset is invariant under
reciprocal conjugation. If not all roots are unimodular, they have the
form
\[
rz,\quad r^{-1}z,\quad z^{-2},
\qquad |z|=1,\quad r>0,\quad r\ne1.
\]
Write \(z=a+ib\), \(n=a^2+b^2\), and
\(z_3=a^3-3ab^2=\operatorname{Re}(z^3)\). For an abstract real \(k\),
the exact polynomial identity is
\[
\Delta(ka+a^2-b^2,\ kb-2ab)
=(k^2-4)(2z_3-k)^2+(n-1)J(n,k,z_3),
\tag{3.2}
\]
where the explicit cofactor is
\[
\begin{aligned}
J={}&n^3+(2k^2+9)n^2+(k^4-22k^2+4kz_3+27)n\\
&+k^4+4k^3z_3-4k^2-20kz_3+27.
\end{aligned}
\tag{3.3}
\]
When \(k=r+s\), the identity
\[
(r+s)^2-4=(r-s)^2+4(rs-1)
\]
gives the explicit ideal certificate for
\[
\Delta=(r-s)^2(2z_3-r-s)^2
\quad\text{under}\quad n=1,\ rs=1.
\tag{3.4}
\]
If \(r>0,r\ne1,s=r^{-1}\), then \(r+s>2\) and
\(2z_3\le2\), so both squared factors in (3.4) are nonzero.
The inequalities follow from the certified identities
\[
r(r+s-2)=(r-1)^2+(rs-1)
\]
and
\[
2-2z_3=(z_3-1)^2+(3a^2b-b^3)^2
\quad\text{when }a^2+b^2=1.
\]
Thus a nonunimodular root pair implies \(\Delta>0\).

When all three roots are unimodular and have product one, conjugating
their Vandermonde changes its sign. Its square is therefore nonpositive;
the square vanishes exactly at a repeated root. This gives
\(\mathcal D=\{\Delta\le0\}\), with boundary parameterization
\(U=2z+z^{-2}\). The only nonalgebraic ingredients are the existence of
the cubic's complex roots and the elementary reciprocal-conjugation
argument.

The transfer of local maxima from seed coordinates to \(\mathcal D^2\)
uses an open quotient. An ordered product-one unit triple is determined
by its trace up to permutation, so the trace map is the quotient by the
finite group \(S_3\), followed by a homeomorphism from a compact space to
a Hausdorff space. Such a quotient map is open. Each seed has a lift to
independent normalized phases. The continuous phase-to-seed map \(\Psi\)
transfers a local maximum at the seed to a local maximum at that lift;
the open product trace map then transfers it to a local maximum on
\(\mathcal D^2\). Continuity of \(\Psi\) is sufficient here: no local
diffeomorphism or inverse function theorem for \(\Psi\) is needed.
These are analytic/topological lemmas rather than computational
acceptance decisions.

## 4. Smooth single-boundary exclusion

Let \(z=a+ib\), with \(a^2+b^2=1\), and define
\[
Q=2-2(a^3-3ab^2)=|z^3-1|^2.
\]
At
\[
U=2z+\bar z^{2},
\]
write
\[
N=(a-a^2+b^2,\ b+2ab),\qquad T=2(-N_2,N_1).
\]
The certificates give
\[
\Delta(U)=0,\quad |N|^2=Q,\quad |T|^2=4Q,
\quad \nabla\Delta(U)=8QN.
\tag{4.1}
\]
The assertions are supplied as identities with explicit cofactors of
\(a^2+b^2-1\); the checker does not assume that the displayed expressions
vanish on the circle. If \(z^3\ne1\), then \(Q>0\), hence the boundary
is regular and its tangent line is the real span of \(T\).

The invariant action on the traces is
\[
U_\tau=\frac{e^{-2i\tau}(U+V)+e^{i\tau}(U-V)}2,
\quad
V_\tau=\frac{e^{-2i\tau}(U+V)-e^{i\tau}(U-V)}2.
\tag{4.2}
\]
Its initial derivatives are
\[
U'_0=-\frac i2(U+3V),\qquad U''_0=-\frac12(5U+3V).
\tag{4.3}
\]
If the first derivative of \(\Delta(U_\tau)\) is nonzero, one sign of
small \(\tau\) enters \(\Delta<0\).

If the first derivative is zero, regularity makes \(U'_0\) tangent.
Solving the real-line equation \(U'_0=\lambda T\) gives exactly
\[
V=rz-(r+1)\bar z^{2},\qquad
r=\frac{-4\lambda-2}{3}\in\mathbb R.
\tag{4.4}
\]
Conversely this expression gives \(U'_0=-(3r+2)T/4\); both real
coordinate identities are certified.

Substituting (4.3)–(4.4) into the ordinary real chain rule yields
\[
\boxed{\left.\frac{d^2}{d\tau^2}\Delta(U_\tau)\right|_0
=-\frac92(r+2)^2Q^2.}
\tag{4.5}
\]
The JSON supplies the full gradient/Hessian chain-rule expression and an
explicit polynomial cofactor of \(a^2+b^2-1\) proving (4.5). There is no
Laurent denominator to clear in Lean.

If \(V\) is interior, \(r=-2\) is impossible: it would give
\[
V=-2z+\bar z^{2}=2(-z)+\overline{(-z)}^{2},
\]
another boundary point. This exceptional substitution and its
\(\Delta=0\) identity are certified. Therefore (4.5) is strictly
negative. In the tangent case both signs of sufficiently small nonzero
\(\tau\) enter the double interior, while \(V_\tau\) remains interior
by continuity.

Since \(\mathcal R\) is constant along (4.2), an interior orbit point
sufficiently near a relative local maximum has the same value and is
itself a local maximum: take a small neighborhood of the new point inside
the original maximum's neighborhood. The ambient saddle theorem gives
the contradiction.

## 5. Cusp/interior exclusion

Common cube-root rotation reduces the cusp to \(U=3\); it preserves the
deltoid and \(\mathcal R\). Write \(V=x+iy\) and define
\[
F=2x^2+24x+y^2+18,\qquad
G=5x^2+18x+y^2+9.
\]
The exact identities are
\[
R=-4FG^2,
\tag{5.1}
\]
\[
R_y=-8yG(G+2F),
\quad
R_x=-4G\bigl[(4x+24)(G+2F)+12(x-1)F\bigr].
\tag{5.2}
\]
Positive value implies \(F<0\) and \(G\ne0\). At an interior critical
point, \(R_x=R_y=0\). If \(y\ne0\), the first equation forces
\(G+2F=0\), and the second then forces \(x=1\). But
\(F(1,y)=44+y^2>0\), a contradiction. Hence \(y=0\).

Since
\[
\Delta(x,0)=(x-3)^3(x+1),
\]
interior membership gives \(-1<x<3\). Moreover
\[
F(-4/5+t,0)=2t^2+\frac{104}{5}t+\frac2{25}>0\quad(t\ge0).
\tag{5.3}
\]
Thus \(F<0\) forces \(-1<x<-4/5\).

On the real axis the exact factorization is
\[
R_x=-48(x+3)(5x+3)P_3(x),
\qquad P_3=5x^3+62x^2+141x+72.
\tag{5.4}
\]
The certificate proves \(-P_3\ge92/25>0\) on \([-1,-4/5]\). It uses
the degree-three Bernstein coefficients
\[
\boxed{12,\quad\frac{148}{15},\quad\frac{533}{75},\quad\frac{92}{25}.}
\tag{5.5}
\]
Explicitly, with \(s=5(x+1)\in[0,1]\),
\[
-P_3(x)
=12(1-s)^3+\frac{148}{5}s(1-s)^2
+\frac{533}{25}s^2(1-s)+\frac{92}{25}s^3.
\]
The weights are nonnegative and the normalized Bernstein weights sum to
one. This gives the stated bound using exact rational coefficients.
The reference proof's alternative derivative and endpoint identities
\(P_3'=15x^2+124(x+1)+17\) and
\(P_3(-4/5)=-92/25\) are also certified.

Throughout the allowed interval, \(x+3>0\), \(5x+3<0\), and
\(P_3(x)<0\). Thus (5.4) is strictly negative, contradicting stationarity.

Exchanging \(U,V\) preserves \(R\), so the smooth-boundary and cusp
arguments apply to either ordering. Together with the ambient saddle
theorem they cover every case except the double boundary.

## 6. Certificate and Lean audit

The checker verifies the following kinds of records:

- polynomial coefficient equality in the stated rational polynomial ring;
- differentiation of a supplied source polynomial;
- simultaneous substitution into a supplied source polynomial;
- Bernstein expansion and exact rational lower bounds on its coefficients.
- nonnegative coefficients on a stated nonnegative orthant, with a check
  that no other variables occur.

In particular, the negative-chart expressions in (2.9), the boundary
gradient/Hessian evaluations, the cusp factors, and the real-axis
specializations are connected to their sources by checked records.

The sign proof of (2.8) is a finite sum of nonnegative products, with one
strictly positive term. In Lean, keep the polynomial identity separate
from the sign argument: first prove the identity by `ring`, then prove
\(W\ge6d^2>0\) from \(h\ge0,d>0\) by `positivity` and basic ordered-ring
lemmas. The derivative combination has modest degree and coefficients;
it does not require automated elimination.

The smooth-boundary certificate's largest definition has degree 10 and
62 terms. A practical split is to verify the five derivatives of
\(\Delta\), then their boundary substitutions, then the two gradient
cofactor identities, and finally the curvature cofactor identity. The
other bundles similarly contain small independent goals. No actual Lean
timing is claimed here; the cost estimate is based on these explicit
degrees and term counts.

No mathematical error was found in the reference compact derivative,
smooth-boundary curvature, or cusp identities audited for this reduction.
The earlier sextic/resultant/Groebner computations are **unused** by this
replacement proof and are not acceptance dependencies.

The outstanding work outside this submodule is the double-boundary
classification, the seed symmetry/orbit bookkeeping, the transfer to the
stated torus theorem, and the compactness argument for (W). Those are
handled elsewhere in the deliverable. This file claims only the reduction
and certificates explicitly proved above.
