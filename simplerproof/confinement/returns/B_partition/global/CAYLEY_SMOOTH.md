# The transverse intersection of the two Gram singular loci

## Statement

For a physical unimodular corner let

\[
\mathcal D=4XYZ-J^2,\qquad Q=R(X,Y,Z,-J)=4(\Im q(E))^2.
\]

**Theorem.** If

\[
0<R(E)<26,\qquad \mathcal D=Q=0,
\]

and the invariant differentials \(d\mathcal D,dQ\) are linearly
independent, then the gradient of \(R(E)\) with respect to the four
dephased seed phases is nonzero.

The companion `../critical/DOUBLE_ZERO.md` proves the same conclusion
when these two differentials are dependent. Together the two results
close the entire intersection \(\mathcal D=Q=0\) for single-corner
criticality below 26. Neither is an exclusion of arbitrary convex
balances of several active-corner gradients.

## 1. Work in the full Gram quotient

Since \(Q=0\), any zero among \(X,Y,Z\) would give \(J=0\) and
\(R=Q=0\). Thus all three off-diagonal Gram entries are nonzero.
After two local row-phase gauge choices, use real analytic coordinates

\[
s=x,\qquad t=y,\qquad r=z e^{i\phi},\qquad
(X,Y,Z,J)=(x^2,y^2,z^2,2xyz\cos\phi),
\]

with nonzero signed real magnitudes and \(\phi=0\) at the point of
interest. The letters \(s,t,r\) in this display denote the handoff's
Gram entries; below a new uppercase \(S\) and \(T\) denote symmetric
coordinates and do not denote row or column sets.

Let \(\Psi\) be the map from the four dephased seed phases to
\((x,y,z,\phi)\), let \(A=D\Psi\), and write
\(f=2\Im q(E)\). The exact six-phase Gram Jacobian identity in
`../critical/CHIRALITY_CRITICAL.md`, followed by the nonsingular gauge
and polar-coordinate changes, gives

\[
\det A=\gamma f,\qquad \gamma\ne0.
\tag{1}
\]

Here \(\gamma\) is real analytic and nonvanishing locally. Also
\(Q\circ\Psi=f^2\). Differentiation gives
\(A^{\mathsf T}\nabla Q=2f\nabla f\), hence, after multiplying by
the adjugate and cancelling \(f\),

\[
\gamma\nabla Q=2\operatorname{adj}(A^{\mathsf T})\nabla f.
\tag{2}
\]

The cancellation first holds off the zero set of \(f\) and extends
by continuity. The nonzero trigonometric polynomial \(f\) cannot
vanish on an open seed set. Its nonzero coefficient expansion is
certified in `verify_tube.py`.

At a smooth point of \(Q=0\), equation (2) forces
\(\operatorname{rank}A=3\); its image is exactly \(\ker dQ\).
Consequently seed stationarity of \(R\) implies stationarity along
every tangent to any smooth surface contained in \(Q=0\), including
the real-Gram surface used next. This is a statement about the actual
differential image. No uniqueness assumption for Gram factorizations
is made.

## 2. The smooth Cayley surface

On \(\phi=0\), direct polynomial expansion gives

\[
Q=-C_0C_1C_2C_3,
\tag{3}
\]

where

\[
C_0=x^2+y^2+z^2+xyz+xy+xz+yz+3(x+y+z)
\]

and the other three factors are its even sign flips. Row rephasings
realize these even sign flips, so choose the vanishing factor to be
\(C_0\). Because \(x,y,z\ne0\), the spatial real-Gram tangent
maps isomorphically to \(\ker d\mathcal D\) in invariant space.
The assumed independence of \(dQ,d\mathcal D\) therefore says that
the spatial derivative of \(Q\) is nonzero. Exactly one Cayley factor
vanishes and its derivative is nonzero. Thus \(C_0=0\) is a smooth
surface and its two-dimensional tangent lies in \(\ker dQ\).

Physicality gives \(|x|,|y|,|z|<3\): the complementary Gram matrix
is positive definite because \(R>0\), and its diagonal is three.
These strict bounds will exclude a denominator-free exceptional factor
in the two-equal case.

## 3. Three distinct signed magnitudes

Put

\[
S=x+y+z,\qquad T=xyz.
\]

The equation \(C_0=0\) implies
\(xy+xz+yz=S^2+3S+T\). Moreover,

\[
\det\frac{\partial(C_0,S,T)}{\partial(x,y,z)}
=(x-y)(x-z)(y-z).
\tag{4}
\]

When \(x,y,z\) are pairwise distinct, \((S,T)\) are valid local
coordinates on this surface. Its restricted invariant is

\[
\begin{aligned}
F(S,T)=-16T(3S+T)\bigl(&S^4+10S^3+4S^2T+36S^2\\
&+20ST+54S+4T^2+20T+27\bigr).
\end{aligned}
\tag{5}
\]

Since \(T=xyz\ne0\), stationarity requires the two polynomial
equations

\[
A=\frac{-F_S}{16T}=0,\qquad B=\frac{-F_T}{16}=0.
\]

Their exact resultant with respect to \(T\) is

\[
\operatorname{Res}_T(A,B)
=384(S+3)^2(S^2+3)(S^2-2S+9)P_6(S),
\tag{6}
\]

where

\[
P_6(S)=9S^6+27S^5+44S^4+120S^3+129S^2+81S+54.
\]

The quadratic factors are strictly positive on the real line. At
\(S=-3\), the greatest common divisor of \(A,B\), as polynomials
in \(T\), is \(8T\), which is excluded. Therefore \(P_6(S)=0\).
Exact polynomial reduction of the stationary equations then gives

\[
228T=-(45S^5+108S^4+121S^3+516S^2+780S+450),
\tag{7}
\]

and the stationary value reduces to

\[
F=\frac{1605S^5+2047S^4-3810S^3-19767S^2-58725S-39582}{171}.
\tag{8}
\]

Sturm root counting proves that \(P_6\) has exactly two real roots.
One lies in

\[
\left(-\frac{243419232}{10^8},-\frac{243419231}{10^8}\right),
\]

and the other in

\[
\left(-\frac{108277327}{10^8},-\frac{108277326}{10^8}\right).
\]

Rational interval evaluation of (8) on these intervals gives,
respectively,

\[
-141<F<-140,\qquad 35<F<36.
\tag{9}
\]

Thus no such stationary point has \(0<F<26\). Resultants are used
only to derive necessary equations, so extra roots would not invalidate
the exclusion. The exceptional factors in (6) were explicitly checked.

## 4. At least two signed magnitudes equal

By symmetry suppose \(x=y\). Then

\[
C_0(x,x,z)=(z+3)(x^2+2x+z).
\]

Since \(|z|<3\), the smooth surface contains the curve
\((x,x,-x^2-2x)\) through the point. Its tangent is nonzero for
every \(x\). Stationarity on the surface therefore implies
stationarity of the following one-variable restriction:

\[
F_2(x)=-16x^5(x+2)(x^2+2x+3)^2(x^3+3x^2+x-3)^2.
\tag{10}
\]

Its derivative factors exactly as

\[
F_2'(x)=-32x^4(2x+3)(x^2+2x+3)
(x^3+3x^2+x-3)P_5(x),
\tag{11}
\]

where

\[
P_5(x)=4x^5+19x^4+34x^3+24x^2-6x-15.
\]

The quadratic factor is \((x+1)^2+2>0\). The factor \(x\) and
the cubic factor in (11) give value zero. The factor \(2x+3\)
gives

\[
F_2(-3/2)=\frac{1594323}{4096}>26.
\]

Finally, an exact Sturm count proves that \(P_5\) has just one
real root. Since \(P_5(0)<0<P_5(1)\), that root is positive.
Formula (10) is nonpositive for positive \(x\). Thus this final
factor cannot produce a positive stationary value. This completes
the two-equal case, including the all-equal possibility.

## 5. Conclusion and inputs

Sections 3–4 exclude every stationary point of the smooth Cayley
surface with \(0<R<26\). Section 1 shows that seed stationarity
would imply precisely this surface stationarity, proving the theorem.

Inputs are the definitions, physical Gram positivity, the universal
identity \(Q=4(\Im q(E))^2\) proved in
`REGULAR_CRITICAL_POINTS.md`, and the six-phase Gram Jacobian identity
proved in `../critical/CHIRALITY_CRITICAL.md`. No global F7 coverage
is needed to prove the seed-gradient statement itself. Using that
gradient to move a full Hadamard requires the analytic provider and
restricted coverage input described in `../critical/CHART_REGULARITY.md`.

Run `python3 verify_cayley_smooth.py`. The verifier regenerates the
polynomial identities, resultants and reductions, uses exact Sturm
counts, and bounds the two algebraic readouts using rational intervals.
All comparisons that decide the exclusion are exact.
