# Exact maximum, invariant Jacobian, and regular-branch exclusion

## Scope

This contribution proves the exact value and nondegeneracy of the proposed 18 maxima, the global invariant-Jacobian identity, and the exclusion of positive local maxima wherever that Jacobian is nonsingular. `INTERSECTION.md` proves the classification on the double-zero intersection. The two single-zero branches are treated in the other contributions.

All calculations used for acceptance are integer or rational polynomial calculations. `verify_exact_maxima.py` constructs the Laurent polynomial directly from the structural definition of R; it does not assume the supplied Fourier coefficients. If `../inputs/rfourier.json` is present, the script checks all its coefficients against this independently generated polynomial. In the source handoff layout it also accepts `../../toolkit/rfourier.json` as the table location.

## 1. Exact invariant Jacobian

Write

\[
\begin{aligned}
\Psi(\theta)&=(X,Y,Z,J),\qquad p=X+Y+Z,\\
W&=XY+XZ+YZ-XYZ,\\
F(p,J,W)&=4(27-3p+J)^2(9-p+J)\\
&\quad-[W-(p-9)(p-18)+(p-15)J]^2,\\
R&=F(p,J,W),\qquad B=F(p,-J,W),\qquad Q=4XYZ-J^2.
\end{aligned}
\]

Then the following identity holds everywhere on the seed torus:

\[
\boxed{\bigl(\det D_\theta\Psi\bigr)^2=QB.}
\tag{1}
\]

**Exact proof certificate.** Set

\[
s=-(1+a+b),\quad t=-(1+c+d),\quad
r=-(1+c/a+d/b),\quad T=sr\overline t.
\]

Represent every expression as an integer Laurent polynomial in \(a,b,c,d\), with conjugation acting by reversing exponents. The verifier forms

\[
X=s\overline s,\quad Y=t\overline t,\quad
Z=r\overline r,\quad J=T+\overline T,
\]

builds all 16 entries of the Jacobian, computes its determinant by its 24-term permutation formula, and checks (1) coefficient by coefficient. For each angular derivative it initially omits the common factor \(i\); four such factors multiply to \(i^4=1\), so the computed determinant is the real angular determinant. This is a finite exact proof of the polynomial identity.

Also

\[
Q=-(T-\overline T)^2=4(\operatorname{Im}T)^2\ge0.
\]

The second factor \(B\) is nonnegative on the torus as well. On the dense open set where \(Q>0\), this follows from (1); continuity proves it everywhere. Density holds because \(\operatorname{Im}T\) is a nonzero real-analytic trigonometric polynomial: at \((a,b,c,d)=(1,-1,1,i)\), \(T=-3+4i\).

Thus the possible singular critical loci are precisely the two factors \(Q=0\) and \(B=0\).

## 2. No positive local maximum on the regular invariant branch

At a strict seed, the stipulated physical completion makes \(G=BB^*\) positive semidefinite. Since \(R>0\), its determinant

\[
g=27-3p+J
\]

is nonzero, hence positive; likewise \(\eta=9-p+J>0\). These facts also follow from the supplied strict-domain proof.

For completeness, invertibility of E and the often-used bound \(p<9\) have an elementary proof here. A singular dephased 3 by 3 phase matrix obeys

\[
(a-1)(d-1)=(b-1)(c-1).
\]

If all four factors are nonzero, conjugating this equality gives \(ad=bc\). The determinant equation then gives \(a+d=b+c\), so the multisets \(\{a,d\}\) and \(\{b,c\}\) coincide. Two rows or two columns of E are equal. If a factor vanishes, the equation immediately gives a row or column equal to the first, with the same conclusion. But both \(6I-EE^*\) and \(6I-E^*E\) are positive definite at a strict seed; their principal 2 by 2 minors exclude a row or column overlap of modulus 3. Therefore E is invertible. Consequently

\[
\widehat g=\det(EE^*)=27-3p-J>0,\qquad
6(9-p)=g+\widehat g>0,
\]

so \(p<9\). This uses only existence of the stipulated physical completion and the structural definition of R.

Suppose \(\det D\Psi\ne0\). Then a local maximum in seed coordinates must be a local maximum of the same function in the four invariant coordinates. Use subscripts \(X,Y,Z,J\) for derivatives of the composite polynomial. Let

\[
\chi=W-(p-9)(p-18)+(p-15)J.
\]

At a stationary point \(\chi\ne0\). If \(\chi=0\), the common \(X,Y,Z\) derivative is

\[
F_p=-4g(6\eta+g)<0,
\]

contrary to stationarity. Subtracting two derivative equations gives

\[
R_X-R_Y=-2\chi(Y-X)(1-Z)=0,
\tag{2}
\]

and cyclically. Consequently either \(X=Y=Z\), or two of \(X,Y,Z\) equal 1.

For \(X=Y=Z=u\), the exact factorization is

\[
R=-(-J+u^2-3u)^2(-4J+u^2+18u-27).
\]

At \(R>0\) the squared factor is nonzero. The derivative equations imply

\[
J=\frac{u^2+4u-9}{2},\qquad
(u-1)(u-5)(u-9)=0.
\]

The corresponding R values are \(0,-1024,0\); none is positive.

For \(X=Y=1,Z=u\), the same reasoning gives

\[
J=\frac{u^2-4u-9}{6},\qquad
(u-1)(u-5)(u-9)=0.
\]

The only positive candidate is

\[
(X,Y,Z,J)=(1,1,5,-2/3),\qquad R=1024/27,
\]

up to permutation of \(X,Y,Z\). At this point the invariant Hessian satisfies

\[
(1,-1,0,0)\,D^2R\,(1,-1,0,0)^T=512/3>0.
\]

It is a saddle. The invertible coordinate map lifts this direction to seed space. This proves that every positive local maximum lies on \(QB=0\).

Run `verify_regular_branch.py` for the complete exact algebra of this reduction.

## 3. Exact identification of the proposed maximum

Let

\[
\alpha=\arccos(1/4),\qquad
\theta_*=\alpha(1,2,-1,-2).
\]

The verifier evaluates every Laurent monomial in the quadratic field

\[
\mathbb Q[z]/(z^2-z/2+1),\qquad
z=e^{i\alpha}=\frac{1+i\sqrt{15}}4.
\]

It proves exactly

\[
\nabla R(\theta_*)=0,\qquad
\boxed{R(\theta_*)=\frac{3^{13}}{2^{12}}
=\frac{1594323}{4096}.}
\tag{3}
\]

The invariant coordinates are

\[
X=Y=\frac94,\quad Z=\frac9{16},\quad
p=\frac{81}{16},\quad J=\frac{27}{8},\quad
W=\frac{1215}{256},
\]

and

\[
g=\frac{243}{16},\quad \eta=\frac{117}{16},\quad
\chi=-\frac{5103}{64}.
\]

The exact angular Hessian is

\[
D^2R(\theta_*)=-\frac{3^9}{2^{11}}
\begin{pmatrix}
240&-120&-234&117\\
-120&138&117&-18\\
-234&117&240&-120\\
117&-18&-120&138
\end{pmatrix}.
\tag{4}
\]

Its eigenvalues are

\[
-\frac{3^9}{2^{11}}(63\pm3\sqrt{362}),\qquad
-5\frac{3^9}{2^{11}}(63\pm3\sqrt{362}).
\]

All four are negative because \(63^2>9\cdot362\). The verifier also checks the four signed leading principal minors directly, independently of this eigenvalue expression.

## 4. The exact 18-point orbit

Every seed map is represented by an integral unimodular 4 by 4 matrix L. The verifier constructs all 144 maps by row permutation, column permutation, optional transpose and optional conjugation of the phase-exponent matrix, followed by dephasing. It checks

\[
\det L\in\{1,-1\},\qquad R(L\theta)=R(\theta)
\]

as an exact Laurent-polynomial identity for each map.

The orbit consists of \(\alpha\) times the following nine vectors and their negatives, reduced modulo \(2\pi\):

\[
\begin{gathered}
(1,-1,-1,1),\quad(1,-1,2,-2),\quad(1,2,-1,-2),\\
(1,2,2,4),\quad(2,-2,1,-1),\quad(2,1,-2,-1),\\
(2,1,4,2),\quad(2,4,1,2),\quad(4,2,2,1).
\end{gathered}
\tag{5}
\]

Each is obtained by exactly eight of the 144 maps. They are distinct on the torus: if \(\alpha/\pi\) were rational, \(e^{i\alpha}\) would be a root of unity and \(2\cos\alpha=1/2\) would be a rational algebraic integer, which is impossible. Hence a nonzero integer multiple of \(\alpha\) cannot be an integer multiple of \(2\pi\).

Invariance and invertibility transport the stationary-point property and negative definiteness of the Hessian to all 18 points. Therefore all are nondegenerate strict local maxima with the value (3).

## 5. An exact obstruction to the suggested unmodified interval cover

At the Fourier-3 corner

\[
(a,b,c,d)=(\omega,\omega^2,\omega^2,\omega),\qquad
\omega=e^{2\pi i/3},
\]

vary only \(a\), replacing it by \(\omega e^{i\varepsilon}\). Then

\[
Y=J=0,\qquad X=Z=x=4\sin^2(\varepsilon/2),
\]

and exact substitution gives

\[
\boxed{R=9x^3(4-x).}
\tag{6}
\]

Thus strict seeds accumulate at this zero of R, although R and its first two angular derivatives vanish there. A neighborhood of this zero cannot be rejected by a rule requiring \(\sup R\le0\). A box containing the zero also cannot have a strictly fixed-sign gradient component or a strictly positive diagonal Hessian component, and cannot be certified as containing a unique nondegenerate critical point. The interval-cover recipe in the prompt would therefore need an additional treatment of this zero stratum. The algebraic branch classification bypasses that issue.
