# A barycentric four-parameter form for complex Hadamard matrices of order six

## Scope and inputs

This note takes the results of **Mateo Cárdenes Wuttig and Joseph Tindall, A Complete Classification of Complex Hadamard Matrices of Order Six**, supplied as `HadamardClassification(4).pdf`, as true. In particular, the global inputs are its product-regular coverage theorem (Theorem 22), matched-sheet flatness identity (Supplemental Proposition S.11), and the descriptions of the two product-exceptional classes.

The new steps below are a compact replacement of the product coefficients, a barycentric replacement of the companion quotient, and extension through its removable singularities. The resulting four-phase construction includes the paper's exceptional Karlsson class H_cross. Only Tao's isolated class needs to be supplied separately.

All Hadamards here are unnormalized: entries have modulus one and HH^dagger = 6I.

## 1. The four parameters

Choose four phases

\[
(a,b,c,d)=(e^{i\alpha},e^{i\beta},e^{i\gamma},e^{i\delta_0}),
\qquad E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}.
\]

Define the horizontal and vertical trace triples:

\[
(s_h,t_h,r_h)=(-(1+a+b),-(1+c+d),-(1+c/a+d/b)),
\]
\[
(s_v,t_v,r_v)=(-(1+a+c),-(1+b+d),-(1+b/a+d/c)).
\]

The second triple is obtained by transposing the seed, i.e. interchanging b and c. In either direction the desired side matrix has rows (1,1,1), (x_1,x_2,x_3), (y_1,y_2,y_3), with

\[
\sum_j x_j=s,\quad \sum_j y_j=t,\quad \sum_jy_j/x_j=r.
\]

## 2. Compact scalar data: no sextic construction

For either triple (s,t,r), put

\[
\Delta=|r|^2-|t|^2,
\qquad
\eta=9-|s|^2-|t|^2-|r|^2+2\operatorname{Re}(sr\bar t),
\]
\[
P=rs^2+\bar r t^2+(3-|r|^2)st,
\qquad
Q=t\bar s^{\,2}+r^2\bar t+(3-|t|^2)r\bar s,
\]
\[
f=\bar P Q,
\qquad
\rho=|P|^2+|Q|^2-\Delta^2\eta,
\qquad
\mathcal D=\frac{4|f|^2-\rho^2}{\Delta^2}.
\]

Subscripts h and v mean evaluation at the corresponding trace triples. Direct reduction against the paper's coefficients gives

\[
c_6=f,\qquad c_3=-(1+|s|^2)\rho,\qquad c_0=\bar f.
\]

Thus the paper's product equation is simply

\[
fu^2-\rho u+\bar f=0.
\]

Its shared-discriminant identity becomes

\[
\mathcal D_h=\mathcal D_v=-\Omega.
\]

Here Omega is the paper's residual product discriminant. No sextic coefficients or companion polynomials need be formed in an implementation.

## 3. One shared real square root

On \(\mathcal D\geq0\), let \(w=\sqrt{\mathcal D}\). For a discrete sheet choice \(\varepsilon\in\{-1,+1\}\), set

\[
u_\varepsilon=\frac{\rho_h+i\varepsilon\Delta_h w}{2f_h},
\qquad
m_\varepsilon=\frac{\rho_v-i\varepsilon\Delta_v w}{2f_v}.
\]

The opposite signs are required by the paper's flat sheet matching. The factors Delta are signed real numbers, not absolute values. These formulas have unit modulus because

\[
\rho_\nu^2+\Delta_\nu^2\mathcal D=4|f_\nu|^2.
\]

At w=0 the two product sheets coincide. The coordinate cubics may still be simple there.

## 4. The new barycentric side formula

For a triple (s,t,r) and its selected phase product u, define

\[
q_{s,u}(z)=z^3-sz^2+u\bar s z-u,
\qquad
k=\frac{P-Qu}{\Delta}.
\]

Let x_1,x_2,x_3 be its three distinct roots. Set

\[
\boxed{\quad
 y_j=\frac{t x_j^2+kx_j+ur}{q'_{s,u}(x_j)}
 =\frac{t x_j^2+kx_j+ur}{3x_j^2-2sx_j+u\bar s}.
\quad}
\]

Write

\[
\mathcal X(s,t,r;u)=
\begin{pmatrix}
1&1&1\\x_1&x_2&x_3\\y_1&y_2&y_3
\end{pmatrix}.
\]

This formula does not use the paper's rational companion denominator. Its only coordinate-dependent denominator is q'(x_j), nonzero whenever the coordinate roots are distinct. In particular, an old companion numerator and denominator may both vanish while this formula remains regular.

## 5. The complete 6-by-6 matrix

Set

\[
B_\varepsilon=\mathcal X(s_h,t_h,r_h;u_\varepsilon),
\qquad
C_\varepsilon=\mathcal X(s_v,t_v,r_v;m_\varepsilon)^T,
\]
\[
G=6I_3-EE^\dagger.
\]

The normal form is

\[
\boxed{
H_\varepsilon(a,b,c,d)=
\begin{pmatrix}
E&B_\varepsilon\\
C_\varepsilon&-C_\varepsilon E^\dagger G^{-1}B_\varepsilon
\end{pmatrix}.
}
\]

The inverse is seed-only: it does not depend on the sheet or the ordering of the cubic roots. This follows from

\[
(B^{-1})^\dagger=(BB^\dagger)^{-1}B=G^{-1}B.
\]

Permuting the horizontal roots permutes the last three full columns. Permuting the vertical roots permutes the last three full rows. These operations do not change the equivalence class.

## 6. An explicit admissible domain

The following conditions suffice and define the chart used here:

1. The four seeds are phases, det(E) is nonzero, and G is positive definite.
2. Delta_h f_h Delta_v f_v is nonzero.
3. The common real discriminant D is nonnegative.
4. Both selected coordinate cubics have distinct roots.

These are scalar/matrix checks on four continuous parameters and a discrete sheet choice. There is **no old companion-resultant condition**, and there is **no final entrywise-flatness acceptance test** in the mathematical definition.

On this domain, every entry of H has modulus one and HH^dagger=6I. The inequalities defining the physical region must not be dropped: arbitrary choices of four phases need not be admissible.

The domain remains an atlas domain rather than a one-to-one fundamental domain for standard equivalence. This note does not claim that all remaining chart singularities are removable, or that the full class space has one globally injective coordinate chart.

## 7. Circle/triangle interpretation of the product equation

For |u|=1 the product equation is equivalent to

\[
|P-Qu|^2=\Delta^2\eta,
\qquad |k|^2=\eta.
\]

Thus the branch choice is the intersection of two circles. When eta is nonnegative, existence is exactly the triangle inequality

\[
\big||P|-|Q|\big|\leq |\Delta|\sqrt\eta\leq |P|+|Q|.
\]

Equivalently,

\[
4|f|^2-\rho^2=
\big((|P|+|Q|)^2-\Delta^2\eta\big)
\big(\Delta^2\eta-(|P|-|Q|)^2\big).
\]

Strict inequality gives two circle intersections, and equality a collision. The other chart conditions, especially Gram positivity and simple coordinate cubics, remain in force.

## 8. The H_cross class is now inside the same formula

Take

\[
(a,b,c,d)=(-1,-1,-1,i).
\]

Both directions have

\[
(s,t,r)=(1,-i,-2+i),\quad
\Delta=4,\quad \eta=0,\quad P=Q=4i,
\]
\[
f=16,\quad\rho=32,\quad\mathcal D=0,\quad u=m=1,\quad k=0.
\]

The cubic and one ordering of its roots are

\[
q(z)=z^3-z^2+z-1=(z-1)(z^2+1),
\qquad (x_1,x_2,x_3)=(1,i,-i).
\]

The new companion gives (y_1,y_2,y_3)=(-1,-i,1), including y_1=-1 at the old common-zero location x_1=1. Here q'(1)=2, so there is no singularity in the barycentric formula.

Using the same ordering vertically produces

\[
H_*=
\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&-1&1&i&-i\\
1&-1&i&-1&-i&1\\
1&1&-1&i&-i&-1\\
1&i&-i&-i&-1&i\\
1&-i&1&-1&i&-1
\end{pmatrix}.
\]

Exactly,

\[
\det E=-2-2i,\qquad\det G=4,\qquad H_*H_*^\dagger=6I.
\]

H_* is the paper's displayed H_cross after putting its rows in order (1,2,3,5,4,6) and columns in order (1,2,5,3,4,6), with one-based indices. No phase corrections are required.

Consequently, by the paper's Theorem 22, this enlarged chart covers every equivalence class except Tao. Its Supplemental Proposition S.13 also shows that Tao cannot satisfy the surviving simultaneous leading-coefficient, imbalance, and simple-coordinate guards. Therefore

\[
\mathcal H_6=
\{[H_\varepsilon(a,b,c,d)]:\text{the displayed admissibility conditions hold}\}
\;\dot\cup\;\{[S_6^{(0)}]\}.
\]

The separate Tao matrix is the paper's Eq. (10), and is also provided by `tao()` in the implementation.

## 9. Derivation of the barycentric formula

Let q have distinct, nonzero roots x_j. The elementary Lagrange identities are

\[
\sum_j\frac1{q'(x_j)}=0,\qquad
\sum_j\frac{x_j}{q'(x_j)}=0,\qquad
\sum_j\frac{x_j^2}{q'(x_j)}=1,
\]
\[
\sum_j\frac1{x_jq'(x_j)}=\frac1u.
\]

Every triple (y_1,y_2,y_3) can be written uniquely as

\[
y_j=\frac{A x_j^2+B x_j+C}{q'(x_j)}.
\]

The constraints sum(y)=t and sum(y/x)=r therefore force A=t and C=ur, leaving only the complex scalar k=B.

Write capital S,T,R for formal conjugates of s,t,r and use u^#=1/u. Put

\[
N(z)=tz^2+kz+ur,\qquad
M(z)=Rz^2+u\bar k z+uT.
\]

For a phase root x,

\[
\overline{q'(x)}=\frac{q'(x)}{ux},
\]

so unit modulus of y is equivalent to

\[
N(x)M(x)=xq'(x)^2.
\]

Reduction modulo q produces two linear equations,

\[
Rk+ut\bar k=s^2-Rst-u(3S+Tr),
\]
\[
Tk+ur\bar k=-(Rt+3s)+u(S^2-STr),
\]

and the single real equation |k|^2=eta. The determinant of the linear system for (k,u bar(k)) is Delta. Solving it gives exactly

\[
k=(P-Qu)/\Delta.
\]

A useful division-free remainder identity is

\[
N(z)M(z)-zq'(z)^2
\equiv u(|k|^2-\eta)z^2\pmod q.
\]

Moreover,

\[
\Delta^2u(|k|^2-\eta)
=-\big(fu^2-\rho u+\bar f\big).
\]

These identities prove the compact product equation and the companion norm relation directly. They are verified symbolically over independent formal conjugate variables in the accompanying exact-check script.

## 10. Why the extended domain is physical

### 10.1 The side matrices

For a phase product u, q is an odd-degree self-inversive cubic. Its roots are invariant under x -> 1/bar(x), so at least one root x is a phase. The remainder identity makes its barycentric companion y a phase as well.

The Lagrange trace identities and their sharp transforms show algebraically that

\[
BB^\star=G,
\]

where star means transpose plus formal inversion of phase variables. G is invertible, so B is invertible. For the phase column v=(1,x,y)^T, this identity gives

\[
v^\dagger G^{-1}v=1.
\]

Because G is positive definite, G-vv^dagger is positive semidefinite of rank two. Its leading two-by-two principal block yields |s-x|<=2.

The other two roots have sum s-x and product u/x. Their self-inversive symmetry makes their sum real after division by a square root of u/x. The preceding bound then forces both remaining roots to lie on the unit circle. The norm identity gives unit modulus of all three companions. Thus BB^dagger=G in the ordinary Hermitian sense. The transposed argument proves the vertical statement.

### 10.2 Orthogonality of the full matrix

The side identities give

\[
BB^\dagger=6I-EE^\dagger,
\qquad C^\dagger C=6I-E^\dagger E.
\]

The forced-block formula then gives H^dagger H=6I by ordinary block multiplication, as in the paper's dilation calculation. This by itself is not enough to infer flatness of D; the next step is essential.

### 10.3 Lower-block flatness after removing the old denominators

On the original product-regular open set, the barycentric companion equals the paper's companion: both satisfy the same trace constraints, and the two linear equations above determine k uniquely. The compact product coefficients and opposite-sign matching are exactly the original ones.

The paper's Proposition S.11 is an identity in the generic product function field: the cubic norm representing each row product of the lower block has sharp-norm one. Rewrite that same norm using the barycentric side formulas and D=-CE^dagger G^{-1}B.

The rewritten expression has denominators only from Delta_h, Delta_v, f_h, f_v, det(G), and the two cubic discriminants. In particular it has no old companion denominator. This is not merely a numerical continuity assertion: the monic quadratic/cubic quotient algebras are free over the localized seed ring. Their map to the generic algebra is injective. Consequently an identity whose rewritten remainder vanishes generically has identically zero coefficients in this localization and specializes at every point of the new domain, including a double product root.

At a physical point the identity says

\[
\prod_j|D_{ij}|^2=1.
\]

Orthogonality and the three unit-modulus entries in the corresponding row of C give

\[
\sum_j|D_{ij}|^2=3.
\]

Equality in the arithmetic-geometric mean inequality forces all three |D_ij|^2 to equal one. This proves lower-block flatness throughout the displayed extended domain, including the H_cross seed.

Thus global flatness is inherited from the accepted paper's exact identity, while the elimination of the companion denominator and its enlarged specialization domain are the new steps.

## 11. Optional: use real cubics instead of complex cubics

Let u=xi^3 with |xi|=1, and write s/xi=A+iB with A,B real. Substituting

\[
x=\xi\frac{1+iz}{1-iz}
\]

into q_{s,u}(x)=0 gives the real projective cubic

\[
(A+1)z^3+Bz^2+(A-3)z+B=0.
\]

Its three projective real roots give the three phase coordinates. The point at infinity represents x=-xi. If A+1=0, retain that point and solve the residual quadratic. The direct monic complex cubic avoids this extra coordinate convention.

When A+1 is nonzero, divide by it, write the resulting cubic as z^3+az^2+bz+c=0, and put

\[
p=b-a^2/3,\qquad q=2a^3/27-ab/3+c.
\]

For three distinct real roots, p<0 and

\[
z_j=2\sqrt{-p/3}\cos\left(\frac13\arccos\left(\frac{3q}{2p}\sqrt{-3/p}\right)-\frac{2\pi j}{3}\right)-\frac a3,
\qquad j=0,1,2.
\]

This supplies an explicit elementary/trigonometric evaluation rather than leaving the cubic as an implicit equation.

## 12. Additional symmetric discriminant identity

For one trace triple set

\[
X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,\quad J=2\operatorname{Re}(sr\bar t),
\]
\[
p=X+Y+Z,\quad W=XY+XZ+YZ-XYZ,\quad g=27-3p+J=\det G,
\]
\[
L=2p^2+W-45p+243.
\]

Then the same real discriminant is

\[
\mathcal D=4g^2(9-p+J)-\big(L+(p-15)g\big)^2.
\]

This identity is separately checked symbolically. It is optional for implementing the normal form.

## 13. Verification and files

The accompanying `verify_hadamard6_barycentric.py` checks, exactly in SymPy:

- the polynomial remainder and circle/product identities;
- the coefficient reduction c6=f and c3=-(1+|s|^2)rho;
- the symmetric discriminant identity;
- the explicit H_cross matrix and its exact equivalence permutation.

A reproducible 80-decimal-digit test evaluated both sheets at 100 randomly generated admissible seeds (200 matrices). The largest observed entry-modulus residual was approximately 3.59e-76, and the largest HH^dagger-6I entry residual was approximately 1.33e-75. These are high-precision numerical checks, not interval certificates and not a substitute for the accepted global flatness theorem.

Run:

```sh
python verify_hadamard6_barycentric.py --numerical --count 100
python hadamard6_barycentric.py --hcross
```

The constructor rejects inadmissible or unresolved numerical cases. It never treats an arbitrary four-phase seed as automatically physical.
