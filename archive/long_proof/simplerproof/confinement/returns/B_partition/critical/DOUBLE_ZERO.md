# Closure of the nontransverse double-zero branch

## Result

Let \(E\) be a physical three-by-three corner with

\[
0<R(E)<26,\qquad
\mathcal D=4XYZ-J^2=0,\qquad
Q=R(X,Y,Z,-J)=0.
\]

Suppose the gradients of \(\mathcal D\) and \(Q\), as functions of the
four invariant coordinates, are linearly dependent. Then

\[
\boxed{\nabla_{\rm seed}R(E)\ne0.}
\tag{1}
\]

This closes the nontransverse branch where two Cayley factors vanish.
It does **not** assume that the actual seed image is tangent to one
particular Cayley branch. Instead, a Lorentzian Hessian forces the image
to contain the tangent to their intersection, and that one tangent
already gives a contradiction to stationarity.

The transverse part of \(\mathcal D=Q=0\) is a separate companion
calculation. This note supplies precisely the formerly missing
nontransverse case.

## 1. Smooth full Gram quotient coordinates

Because \(Q=0\), a zero off-diagonal Gram entry would force \(J=0\)
and thus \(R=Q=0\), contrary to the hypothesis. All three off-diagonal
entries are therefore nonzero. Locally quotient out the two row-phase
gauges and write the Gram entries in the form

\[
s=x,\quad t=y,\quad r=z e^{i\phi},\qquad
J=2xyz\cos\phi,
\]

where \(x,y,z\) are nonzero signed real magnitudes. At the point under
consideration \(\phi=0\). These are regular real analytic coordinates
on the full four-dimensional Gram quotient, even though the invariant
projection to \((X,Y,Z,J)\) loses rank there.

Let \(\Psi\) map the four seed phases to \((x,y,z,\phi)\), and put
\(q=2\Im q(E)\). The six-phase Jacobian identity proved in
`CHIRALITY_CRITICAL.md`, together with the nonsingular polar-coordinate
and row-gauge transformations, gives

\[
\det D\Psi=\gamma q,
\qquad \gamma\ne0
\tag{2}
\]

locally, for a nonvanishing real analytic factor \(\gamma\). The exact
normalization of \(\gamma\) is unnecessary. The universal square
identity gives

\[
Q\circ\Psi=q^2.
\tag{3}
\]

## 2. A rank lower bound independent of chirality

For a pair of rows with nonzero inner product, the gradient of the
squared inner-product modulus vanishes exactly when every entrywise
row ratio is a common phase times a real sign. Indeed, stationarity
requires every ratio to be collinear with their nonzero sum.

If two of the three pair-norm gradients vanished, the two sign-ratio
relations would make the entire corner equivalent by row and column
phases to a real sign matrix. Exact enumeration of its sixteen dephased
possibilities gives only the invariant values

\[
-5038848,\quad -6912,\quad256.
\]

Thus every real-equivalent corner with positive \(R\) has \(R=256\),
and none occurs here. At least two pair-norm gradients are nonzero.
They are independent: choose their shared row as the first row and
dephase it; the two norms then depend on disjoint pairs of phase
variables. Consequently

\[
\operatorname{rank}D\Psi\ge2.
\tag{4}
\]

Because \(q=0\), equation (2) also gives rank at most three.

## 3. The Cayley meeting and its complete physical parametrization

At \(\phi=0\) there is an exact factorization

\[
Q=-C_0C_1C_2C_3,
\]

where

\[
C_0=x^2+y^2+z^2+xyz+xy+xz+yz+3(x+y+z)
\]

and \(C_1,C_2,C_3\) are its three even sign flips. Physicality and
\(R>0\) give \(|x|,|y|,|z|<3\).

The gradient of a single vanishing Cayley factor cannot vanish in this
open physical domain. To see this, set \(u=x+1,v=y+1,w=z+1\); then
\(C_0=u^2+v^2+w^2+uvw-4\). The simultaneous equations
\(C_0=0\) and \(\nabla C_0=0\) force
\(|u|=|v|=|w|=2\), with \(uvw=-8\). At least one original coordinate
is then \(-3\), outside the domain.

The real-Gram three-dimensional tangent is the kernel of
\(d\mathcal D\). Hence dependence of \(dQ,d\mathcal D\) means that
\(Q\)'s derivatives in \(x,y,z\) vanish. The factorization and the
previous paragraph imply that at least two Cayley factors vanish.
An even sign flip and coordinate permutation let us assume
\(C_0=C_1=0\), with \(C_1=C_0(-x,-y,z)\). Their difference is

\[
C_0-C_1=2(x+y)(z+3).
\]

Since \(|z|<3\), it follows that

\[
y=-x,\qquad x^2=\frac{z(z+3)}{z-1}.
\tag{5}
\]

The corner Gram determinant on this curve is

\[
\det(EE^*)=-\frac{(z-3)^2(z+3)}{z-1}.
\]

Nonnegativity of this determinant, together with \(x^2>0\) and
\(|z|<3\), leaves exactly

\[
-3<z<0.
\tag{6}
\]

All reductions here preserve \(R\) and physicality.

## 4. The Hessian is Lorentzian with a one-dimensional radical

At (5), \(\nabla Q=0\) in the full coordinates \((x,y,z,\phi)\).
The spatial Hessian is

\[
-C_2C_3\bigl(dC_0\otimes dC_1+dC_1\otimes dC_0\bigr).
\]

Exact reduction on (5) gives

\[
C_2C_3=-\frac{4z(z-3)^3(z+1)}{(z-1)^2}.
\tag{7}
\]

The gradients \(dC_0,dC_1\) are independent: the third component of
their cross product is \(4x(z-1)(z+3)\ne0\). The mixed spatial/phase
Hessian entries vanish, and the phase entry is

\[
Q_{\phi\phi}=
\frac{8z^3(z-3)^2(z+1)^2(z+3)^3}{(z-1)^3}.
\tag{8}
\]

Throughout (6), expressions (7)–(8) are nonzero except at \(z=-1\).
At that point \(R=256\), so it is excluded by the target bound.
Otherwise the spatial block has one positive and one negative
eigenvalue, and (8) is positive. Therefore \(\operatorname{Hess}Q\)
has signature \((2,1,0)\). Its one-dimensional radical is the tangent
to the double-Cayley curve (5), with \(\phi=0\).

## 5. The actual seed image must contain that radical

Let \(A=D\Psi\), and let \(H_Q\) be the Hessian just described.
Differentiating (3) twice at the present point, where \(q=0\) and
\(\nabla Q=0\), gives

\[
A^T H_Q A=2\,dq\otimes dq.
\tag{9}
\]

If \(\operatorname{rank}A=3\), its image must contain the radical.
Otherwise its projection to the three-dimensional quotient by the
radical would be an isomorphism, and the restricted Hessian would have
rank three, contradicting the rank-at-most-one right side of (9).

If \(\operatorname{rank}A=2\), all three-by-three cofactors of \(A\)
vanish. Differentiating (2) therefore gives \(dq=0\). Equation (9)
says that the two-dimensional image is totally isotropic for \(H_Q\).
The nondegenerate Lorentzian quotient has maximal totally isotropic
dimension one, so this image again must contain the radical.

These are all cases by (4). Thus the tangent to the curve (5) belongs
to the actual differential image for **every** seed representation in
this branch, whether or not that image is tangent to either individual
Cayley surface.

## 6. No small positive stationary value along the double curve

If \(\nabla_{\rm seed}R=0\), the preceding section forces stationarity
along (5). Exact substitution gives

\[
R(z)=-\frac{16z^3(z+3)^2(z^2+3)^2(z^3+z^2-z+3)}{(z-1)^4}.
\]

Its derivative is

\[
R'(z)=-\frac{16z^2(z+3)(z^2+3)}{(z-1)^5}A_7(z),
\]

where

\[
A_7=8z^7+13z^6-20z^5-11z^4-48z^3-81z^2-36z-81.
\]

All prefactors are nonzero in (6). Elimination of \(z\) between
\(A_7(z)=0\) and the rational expression for \(R(z)=r\) gives the
necessary equation

\[
\begin{aligned}
P_7(r)={}&1048576r^7+2123428027369r^6-571227234818652r^5\\
&+1090728701574637568r^4-155428628037599232000r^3\\
&+83970667439092358184960r^2-23381556415604892622651392r\\
&-5734952242782117615064055808=0.
\end{aligned}
\]

The exact resultant is \(2^{36}P_7(r)\). On \([0,26]\), drop all
negative nonconstant terms and bound every positive term at 26. This
gives the uniform upper bound

\[
P_7(r)\le-5677688978785321591122765760<0.
\]

Thus no stationary value lies in \(0<r\le26\), proving (1).

## Verification and status

`verify_double_zero.py` checks the real-corner enumeration, Cayley
factorization, complete branch reductions, Hessian coefficients,
physical determinant, curve formula, derivative, resultant and final
uniform sign. It uses exact SymPy arithmetic only.

The Jacobian identity used in (2) is independently verified by
`verify_chirality.py`. The rank and Lorentzian arguments above are
elementary linear algebra. No uniqueness theorem for Gram factorizations,
no branch-tangency assumption, and no numerical root matching is used.

This settles the nontransverse double-zero obstruction to single-active
stationarity. It does not settle arbitrary convex balances of several
distinct active corners in the full 400-corner maximum.
