# Exclusion of the single side-discriminant branch

## Statement and dependencies

Let E be a dephased 3 by 3 phase matrix, and use the handoff's invariants,
which belong to G=6I-EE*. Write

\[
\begin{split}
p&=X+Y+Z,\qquad W=XY+XZ+YZ-XYZ,\\
F(p,J,W)&=4(27-3p+J)^2(9-p+J)\\
&\quad-[W-(p-9)(p-18)+(p-15)J]^2,\\
R&=F(p,J,W),\qquad T=\widehat R=F(p,-J,W),\qquad Q=4XYZ-J^2.
\end{split}
\]

**Theorem.** No positive local maximum of R satisfies Q>0 and T=0.

The algebra and root isolation in this file are checked by
verify_fold_branch.py. The geometric lifting statement is proved in
../conditioning_audit/FOLD_LIFT.md. The equal pole is treated in
../quotient_coverage/ALL_EQUAL_POLE.md. All pole types are included; there is no
assumption that the invariant map is an ordinary fold everywhere.

At a strict seed, the supplied strict-domain proof gives p<9,

\[
0\le X,Y,Z<9,\qquad E\text{ invertible},\qquad
g=27-3p+J>0,\quad\eta=9-p+J>0.
\]

The raw Gram K=EE* is positive definite, and
\(\widehat g=27-3p-J>0\).
The phase-side identities give \(T=4(\operatorname{Im}q(E))^2\ge0\), where

\[
q(E)=\frac{\operatorname{perm}(E)\det(E)^2}{\prod E_{ij}}.
\]

The sign change J to -J is essential: T is the discriminant for reconstructing
the seed itself from its raw Gram, whereas R is the complementary discriminant.

## 1. Exhaustive separation of the raw-side poles

Apply the side formulas to K=EE*, and denote its numerators by
\(\widehat P_0,\widehat P_1,\widehat P_2\).
Since Q>0, all three overlap moduli are nonzero. Row phases allow the first
two raw correlations to be \(\sqrt X,\sqrt Y\), and the third to be

\[
r_K=\frac{-J+i\varepsilon\sqrt Q}{2\sqrt{XY}},\qquad\varepsilon=\pm1.
\]

In this gauge,

\[
\widehat P_0=
\frac{-(X+Y)J+i\varepsilon(X-Y)\sqrt Q+2(3-Z)XY}
 {2\sqrt{XY}}.                                                    \tag{1}
\]

Thus \(\widehat P_0=0\) forces \(X=Y=u>0\) and \(J=u(3-Z)\).
At these values exact factorization gives

\[
T=-(u-1)^2(u-Z)^2(Z-9)^2.                                         \tag{2}
\]

Because T=0 and Z<9, either u=1 or u=Z. Permuting the overlaps gives the same
conclusion for either other numerator. All poles are therefore of two types:

\[
\begin{array}{lll}
\text{equal:}&X=Y=Z=q,&J=3q-q^2,\\
\text{two ones:}&(X,Y,Z)=(1,1,q),&J=3-q,
\end{array}                                                       \tag{3}
\]

up to permutation. The conditions Q>0 and R>0 give the ranges

\[
1<q<9/5\quad\text{for the equal pole};\qquad
1<q<5,\quad q\ne3\quad\text{for the two-one pole}.                  \tag{4}
\]

No additional denominator-zero stratum is omitted.

## 2. Actual local variations away from poles

Suppose \(\widehat P_0\widehat P_1\widehat P_2\ne0\).
The local lifting lemma supplies a continuous right inverse of
\(\Psi(\theta)=(X,Y,Z,J)\), through the particular seed in question, on a
full relative neighborhood in \(\{T\ge0\}\). Therefore a seed local maximum
must be a local maximum of the invariant function on that halfspace.

This is proved directly from the rational side formulas. Fix the square and
cube roots reconstructing the given E, use

\[
z=\frac{\widehat\chi+i\sqrt T}{2\widehat g},
\]

and continue those roots. Every displayed divisor stays nonzero and rho>0
persists. The universal side identities give an actual phase matrix with
the selected nearby Gram, including at T=0. This establishes local
surjectivity without inferring it from the Jacobian determinant.

At a smooth boundary point the necessary conditions include

\[
\nabla R=\lambda\nabla T,\qquad\lambda\le0.                        \tag{5}
\]

The sign follows by entering T>0. Positive lambda would increase R along
an inward curve. Tangential second derivatives must also be nonpositive.

## 3. Generic invariant stationary equations

First suppose \((X,Y,Z,J)\mapsto(p,J,W)\) has rank three. Then (5) implies

\[
\nabla_{p,J,W}F=\lambda\nabla_{p,J,W}T,\qquad\lambda\le0.            \tag{6}
\]

The classification of (6) below is also usable when that projection is
singular: whenever (6) holds, its positive candidates fail the inward test.

On T=0 define the signed real number

\[
t=\frac{\widehat\chi}{2\widehat g},\qquad
\widehat\chi=W-(p-9)(p-18)-(p-15)J.
\]

The quadratic side identity gives \(t^2=9-p-J\), hence

\[
\begin{split}
J&=9-p-t^2,\\
\widehat g&=18-2p+t^2,\\
W&=-(t+3)(pt+p-2t^2-9t-9).
\end{split}                                                       \tag{7}
\]

These are smooth coordinates on the invariant boundary: their inverse is
the displayed rational formula for t, with \(\widehat g>0\).
The case t=0 is included. Substitution gives

\[
\begin{split}
f(p,t)={}&-4(p+t^2-9)(p+t^2+6t+9)\\
&\quad\cdot(p^2-2pt-16p+2t^2+18t+63).
\end{split}                                                       \tag{8}
\]

Tangential stationarity forces \(f_p=f_t=0\).
An exact rational Groebner basis, recomputed by the verifier, contains one
linear equation for p and the univariate polynomial

\[
t^5(t+2)(t+3)(t^2+6t+12)(t^2+8t+24)h(t),                         \tag{9}
\]

where

\[
h(t)=9t^6+135t^5+854t^4+2838t^3+5070t^2+4392t+1296.               \tag{10}
\]

The two quadratics in (9) are positive on the real line. The roots
\((t,p)=(0,9),(-2,5),(-3,0)\) all give R=0.
On the remaining factor, the linear equation reduces to

\[
p=-\frac{45t^5+567t^4+2875t^3+7005t^2+7512t+1674}{114}.           \tag{11}
\]

Exact Sturm counts show that (10) has precisely two real roots, one in each
of these rational intervals:

\[
\begin{split}
I_1&=[-1917226736061/10^{12},-1917226736059/10^{12}],\\
I_2&=[-565807686229/10^{12},-565807686226/10^{12}].
\end{split}                                                       \tag{12}
\]

Rational interval evaluation, after reduction modulo h, proves:

| Interval | Exact sign conclusions |
|---|---|
| \(I_1\) | \(R>0\) and \(\lambda=\chi/\widehat\chi>0\) |
| \(I_2\) | \(R<0\) |

Here \(\widehat\chi\ne0\) on \(I_1\), so the ratio follows from the W component
of (6). The verifier checks the signs of its reduced numerator and
denominator separately. No approximate root enters an acceptance decision.

The first candidate violates (5), and the second is outside the strict
domain. This excludes every positive solution of (6) with its necessary
inward sign.

## 4. The exceptional projection ranks, away from poles

Rank less than three is characterized by

\[
(X-Y)(1-Z)=(X-Z)(1-Y)=(Y-Z)(1-X)=0.
\]

This follows by subtracting components of
\(\nabla W=(Y+Z-YZ,X+Z-XZ,X+Y-XY)\).
Either all three moduli are equal, or two are 1.

### 4.1. All three equal, nonpole root

At X=Y=Z=q,

\[
T=-(J+q^2-3q)^2(4J+q^2+18q-27).                                 \tag{13}
\]

The squared factor is the pole already set aside. At the nonpole root,

\[
J=(27-q^2-18q)/4,
\]

and

\[
\begin{split}
Q&=-(q-9)^3(q-1)/16,\\
R&=-\frac{(q+3)^2(5q-9)^2(q^2+18q-27)}8 .
\end{split}                                                       \tag{14}
\]

Strictness and Q>0 imply \(1<q<-9+6\sqrt3<7/5\).
Differentiating,

\[
R'(q)=-\frac34(q+3)(5q-9)(5q^3+79q^2-45q-135)<0.                 \tag{15}
\]

The cubic is increasing on [1,7/5], where its value at 7/5 is -736/25.
It is therefore negative throughout the required range, giving the sign in
(15). Decreasing q slightly follows an actual boundary curve by the lifting
lemma and increases R. There is no maximum.

### 4.2. Two moduli equal to 1, nonpole root

At (X,Y,Z)=(1,1,q),

\[
T=-(J+q-3)^2(4J+q^2-6q-3).                                       \tag{16}
\]

The nonpole root is \(J=(-q^2+6q+3)/4\). It has q>1 when Q>0.
The boundary is smooth there: the first factor is nonzero, so its
J derivative in (16) is nonzero.

Assume it is a maximum. Let lambda be its constrained multiplier, and put

\[
A=F_p-\lambda T_p,\quad B=F_W-\lambda T_W,\quad C=F_J-\lambda T_J.
\]

Since \(\nabla_{X,Y,Z}W=(1,1,1)\), first-order stationarity gives A+B=0
and C=0. Consider the invariant tangent vectors

\[
a=(1,-1,0,0),\qquad b=(1,1,-2,0).
\]

Both annihilate the first derivatives of p,J,W, hence are tangent to T=0.
Their constrained second derivatives are

\[
a^T D^2(R-\lambda T)a=2(q-1)B,\qquad
b^T D^2(R-\lambda T)b=-2(q-1)B.                                  \tag{17}
\]

Nonpositivity in both directions forces B=0, hence A=C=0.
This is precisely (6), already excluded. The lifting lemma makes these
valid tests on actual nearby seeds.

## 5. The two-one pole, including its exceptional fibers

Let (X,Y,Z)=(1,1,q), J=3-q, Q>0, R>0.
Row-gauge the seed so that the first two raw row sums are 1.
A triple of unit numbers whose sum has modulus 1 contains an antipodal
pair: four unit numbers summing to zero form two antipodal pairs, and one
applies this to the three entries and the negative of their sum.
Thus each of the last two rows consists of its sum and an antipodal pair.

After a column permutation the second row is (1,A,-A).
If the third row's singleton is in the same column, it is (1,B,-B).
Otherwise, interchanging the last two columns if needed, it is (B,1,-B).
The raw third correlation then is

\[
r_K=B+(1+B)\overline A.
\]

The pole relation is \(2\operatorname{Re}r_K=|r_K|^2-3\), or
\(|r_K-1|^2=4\). Direct expansion gives

\[
|r_K-1|^2=4-4\operatorname{Im}A\operatorname{Im}B.
\]

Therefore A=±1 or B=±1. The value -1 in either slot makes r_K=-1,
contradicting Q>0. The value +1 permits a common singleton column,
because that row has two entries equal to its sum.
Every seed on this pole is therefore equivalent by corner operations to

\[
E(A,U)=\begin{pmatrix}
1&1&1\\
1&A&-A\\
1&AU&-AU
\end{pmatrix},\qquad |A|=|U|=1.                                  \tag{18}
\]

It is necessary to test all four seed derivatives, not merely derivatives
within this two-parameter family. Exact substitution gives

\[
R(E(A,U))=-64\frac{(U^2+1)(U^2+U+1)^2(U^2+4U+1)}{U^4}.             \tag{19}
\]

Let \(D_k=(1/i)\partial_{\theta_k}R\) after the same substitution.
On R>0, A,U and \(U^2+U+1\) are nonzero. Define

\[
N_k=\frac{AU^4D_k}{64(U^2+U+1)}.
\]

These are polynomials, and their exact reduced Groebner basis is

\[
\langle N_1,N_2,N_3,N_4\rangle
=\langle A^2-1,U^2-1\rangle.                                      \tag{20}
\]

The verifier regenerates each derivative from the independently checked
Fourier polynomial and recomputes the ideal over the rationals.
Stationarity therefore forces U=±1, making Q=0, a contradiction.

## 6. The equal pole and conclusion

The remaining pole has X=Y=Z=q, J=3q-q², and 1<q<9/5.
The proof in ../quotient_coverage/ALL_EQUAL_POLE.md excludes every critical seed
there. It uses the full phase stationarity equations and a finite
classification of stationary columns for a circulant three-spin quadratic
form. It does not infer a circulant phase matrix from invariant feasibility
alone, or assume uniqueness of a singular side fiber.

Sections 1 and 3–6 exhaust Q>0,T=0,R>0. Each excludes a local maximum,
proving the theorem.

## Verification

From the returned output directory, run:

~~~text
python3 fold_branch/verify_fold_branch.py
python3 conditioning_audit/verify_fold_lift.py
python3 quotient_coverage/verify_all_equal_pole.py
~~~

The first checks exact elimination, rational root isolation and signs, the
projection-rank exceptions, and the full four-derivative pole ideal.
The other scripts check the raw-Gram and equal-pole algebra.
The geometric proofs and specialization of the supplied universal side
identities are part of the written argument.

