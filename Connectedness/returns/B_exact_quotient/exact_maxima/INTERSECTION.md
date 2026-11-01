# Classification of the double-zero intersection

## Theorem

Use the notation of `EXACT_MAXIMA.md`:

\[
Q=4XYZ-J^2,\qquad B=F(p,-J,W).
\]

**Every local maximum of R with \(R>0\) and \(Q=B=0\) belongs to the 18-point orbit of \(\theta_*\).**

This theorem is global on the intersection. It uses no regularity assumption on the Gram map or on the side reconstruction, and includes exceptional side fibers.

The only external lemma used here is the exact constrained-stationary classification in `../conditioning_audit/Q_BRANCH.md`, §5: at a strict point of \(Q=B=0\), the signed Gram derivatives described below cannot all vanish. Its verifier is `../conditioning_audit/verify_q_branch.py`.

## 1. A critical-point triangle lemma

At \(Q=0\), row phases can make the three off-diagonal entries of \(EE^*\) real. Write them as x,y,z, so

\[
X=x^2,\quad Y=y^2,\quad Z=z^2,\quad J=-2xyz.
\tag{1}
\]

If one of x,y,z vanished, then \(J=0\) and \(R=B\); this is incompatible with \(R>0,B=0\). Thus all three are nonzero here. Strictness also gives \(|x|,|y|,|z|<3\): a physical completion gives positive definiteness of \(6I-EE^*\), whose 2 by 2 principal minors are \(9-x^2\), etc.

Let subscripts denote derivatives of the polynomial R in \((X,Y,Z,J)\), and put

\[
k_x=xR_X-yzR_J,\quad
k_y=yR_Y-xzR_J,\quad
k_z=zR_Z-xyR_J.
\tag{2}
\]

The cited constrained-stationary lemma says that these three numbers cannot all vanish at a strict double-zero point.

Because R is invariant under all row and column phase multiplications, stationarity in the four dephased seed variables is equivalent to stationarity in all nine entry-phase variables of E. At a real Gram, the first variation of R is

\[
dR=2k_x\,d\operatorname{Re}(EE^*)_{21}
+2k_y\,d\operatorname{Re}(EE^*)_{31}
+2k_z\,d\operatorname{Re}(EE^*)_{32}.
\tag{3}
\]

Consequently each column of E is a stationary configuration of the **same** real weighted triangle energy

\[
k_x\cos(\phi_2-\phi_1)
+k_y\cos(\phi_3-\phi_1)
+k_z\cos(\phi_3-\phi_2).
\tag{4}
\]

### All three weights nonzero

There are real nonzero numbers \(\ell_1,\ell_2,\ell_3\) and \(\lambda\in\{1,-1\}\) such that \(k_{ij}=\lambda\ell_i\ell_j\). For example, choose

\[
\lambda=\operatorname{sign}(k_xk_yk_z),\quad
\ell_1=\sqrt{|k_xk_y/k_z|},\quad
\ell_2=k_x/(\lambda\ell_1),\quad
\ell_3=k_y/(\lambda\ell_1).
\]

Up to an additive constant, (4) equals

\[
\frac\lambda2\left|\ell_1e^{i\phi_1}
+\ell_2e^{i\phi_2}+\ell_3e^{i\phi_3}\right|^2.
\]

At a stationary point, either the sum is zero or every summand is collinear with it. The second alternative gives a real sign column after removing its overall phase. In the first alternative, a noncollinear triangle of three prescribed side lengths is unique up to a common rotation and reflection; after its first entry is normalized to 1, it gives a single conjugate pair of possible nonreal columns.

Since \(EE^*\) is real, the imaginary Gram contributions of the nonreal columns must cancel. Their contributions are a fixed nonzero matrix and its negative. With three columns, either all columns are real sign columns, or exactly one conjugate pair occurs and the third column is real. In the latter case, row sign changes turn the real column into \((1,1,1)^T\). Thus E is equivalent, through row and column phases and permutations, to

\[
V(\phi,\psi)=
\begin{pmatrix}
1&1&1\\
1&e^{i\phi}&e^{-i\phi}\\
1&e^{i\psi}&e^{-i\psi}
\end{pmatrix}.
\tag{5}
\]

### Zero weights

If exactly two weights are nonzero, their edges form a connected path. Stationarity forces phase differences 0 or \(\pi\) on both edges, so every column is a real sign column.

If exactly one weight is nonzero, permute rows so its edge is 12. Normalize the first row to 1. The second row consists of signs. Strictness excludes three equal signs; by an overall row sign and a column permutation, it is \((1,1,-1)\). Write the third row as \((u,v,w)\). Reality of its inner products with the first two rows gives

\[
w=\pm1,\qquad u+v\in\mathbb R.
\]

Two unit complex numbers with real sum satisfy either \(v=\overline u\), which again gives (5), or \(v=-u\). The second possibility gives

\[
(X,Y,Z,J)=(1,1,1,2).
\]

At this invariant point, (2) gives \(k_x=128x\), \(k_y=128y\), \(k_z=128z\), all nonzero. This contradicts the assumed one-edge case. The all-zero case was excluded by the cited lemma.

We have proved: **every critical seed on the positive double-zero intersection is equivalent to a real sign matrix or to (5).** This is a statement about critical seeds, so it does not incorrectly assert uniqueness for arbitrary singular Gram fibers.

## 2. Real matrices are saddles

There are only 16 dephased real sign corners. Exactly six have \(R>0\); all have \(R=256\), and all are equivalent under row and column permutations and dephasing. One representative has phase vector \((0,\pi,\pi,0)\), with Hessian

\[
\begin{pmatrix}
0&0&0&-256\\
0&-1024&1280&0\\
0&1280&-1024&0\\
-256&0&0&0
\end{pmatrix}.
\]

Its eigenvalues are \(-2304,-256,256,256\). In particular it is a saddle. The exact core verifier enumerates all 16 corners and checks a positive rational Hessian direction at every positive one.

## 3. Exact reduction of the symmetric-column family

For (5), set

\[
x=1+2\cos\phi,\quad y=1+2\cos\psi,\quad
z=1+2\cos(\phi-\psi).
\]

These correlations satisfy

\[
f(x,y,z):=x^2+y^2+z^2-xyz+xy+xz+yz-3(x+y+z)=0.
\tag{6}
\]

Equivalently, \(u=x-1,v=y-1,w=z-1\) satisfy the Fricke identity

\[
u^2+v^2+w^2-uvw=4.
\]

Put

\[
t=x+y+z,\qquad q=xyz.
\]

On (6),

\[
xy+xz+yz=t^2-3t-q.
\]

Direct exact polynomial reduction gives

\[
\boxed{
\mathcal R(t,q)=-16q(q+3t)
[4q^2-4qt^2+20qt-20q+t^4-10t^3+36t^2-54t+27].
}
\tag{7}
\]

The verifier divides the difference between the original structural R and (7) by f and obtains zero remainder.

A strict V is invertible. Indeed, (6) implies

\[
\det(VV^*)=(3-x)(3-y)(3-z)>0.
\]

Consequently \((\phi,\psi)\mapsto(x,y,z)\) has rank 2. Its rank could drop only when at least two of \(\sin\phi,\sin\psi,\sin(\phi-\psi)\) vanish, which would make two rows coincide up to phase. The determinant of the map \((x,y,z)\mapsto(f,t,q)\) is, up to sign,

\[
(x-y)(x-z)(y-z).
\tag{8}
\]

This separates the distinct and repeated correlation cases without any unproved coverage assumption.

## 4. Distinct correlations cannot give a positive local maximum

When x,y,z are distinct, (8) makes t,q local coordinates on the V family. A seed local maximum must therefore satisfy \(\mathcal R_t=\mathcal R_q=0\). Since \(R>0\), (7) gives \(q\ne0\). Define

\[
A=\mathcal R_t/(16q),\qquad C=-\mathcal R_q/16.
\]

An exact resultant computation gives

\[
\operatorname{Res}_q(A,C)=
-384(t-3)^2(t^2+3)(t^2+2t+9)h(t),
\tag{9}
\]

where

\[
h(t)=9t^6-27t^5+44t^4-120t^3+129t^2-81t+54.
\tag{10}
\]

At \(t=3\), the common-root equations force \(q=0\), hence \(R=0\). The two quadratics in (9) have no real roots. On \(h(t)=0\), exact polynomial elimination gives

\[
q=\frac{-45t^5+108t^4-121t^3+516t^2-780t+450}{228}.
\tag{11}
\]

Sturm's theorem proves that h has exactly two real roots, one in each rational interval

\[
I_1=\left[\frac{1082773263}{10^9},\frac{1082773265}{10^9}\right],\qquad
I_2=\left[\frac{2434192313}{10^9},\frac{2434192315}{10^9}\right].
\tag{12}
\]

Modulo (10) and (11), (7) reduces to

\[
R=-\frac{1605t^5-2047t^4-3810t^3+19767t^2-58725t+39582}{171}.
\tag{13}
\]

Exact rational interval evaluation proves \(R<-140\) throughout \(I_2\).

For the root in \(I_1\), use an actual normal seed variation:

\[
V(u,v)=
\begin{pmatrix}
1&1&1\\
1&e^{i(\phi+u)}&e^{i(-\phi+u)}\\
1&e^{i(\psi+v)}&e^{i(-\psi+v)}
\end{pmatrix}.
\]

Its second-order change in R is

\[
A_0u^2+B_0v^2+C_0(v-u)^2+O(\|(u,v)\|^4),
\tag{14}
\]

where

\[
\begin{aligned}
A_0&=-(x-1)R_X+[x-1+(y-1)(z-1)]R_J,\\
B_0&=-(y-1)R_Y+[y-1+(x-1)(z-1)]R_J,\\
C_0&=-(z-1)R_Z+[z-1+(x-1)(y-1)]R_J.
\end{aligned}
\]

These formulas follow by expanding

\[
\begin{aligned}
X(u)&=x^2-(x-1)u^2+O(u^4),\\
Y(v)&=y^2-(y-1)v^2+O(v^4),\\
Z(u,v)&=z^2-(z-1)(v-u)^2+O(\|(u,v)\|^4),\\
J(u,v)&=-2xyz+[x-1+(y-1)(z-1)]u^2\\
&\quad+[y-1+(x-1)(z-1)]v^2\\
&\quad+[z-1+(x-1)(y-1)](v-u)^2+O(\|(u,v)\|^4).
\end{aligned}
\]

The symmetric sum \(N=A_0+B_0+C_0\), after the same exact reductions, is

\[
N=\frac{5622t^5-9917t^4+3342t^3-30315t^2-6102t+54702}{57}.
\tag{15}
\]

Exact rational interval evaluation proves \(N>200\) throughout \(I_1\). The values of the quadratic form (14) on \((1,0),(0,1),(1,1)\) sum to \(2N>0\). At least one is positive. This is an actual seed direction with positive second derivative, and excludes a local maximum.

## 5. Repeated correlations give precisely the claimed orbit

After a row permutation, suppose \(x=y=r\). Equation (6) factors as

\[
(z-3)(z-r^2+2r)=0.
\]

Strictness excludes \(z=3\), leaving \(z=r^2-2r\). Equivalently \(\psi=-\phi\), since the alternative \(\psi=\phi\) makes two rows equal.

Substitution into (7) gives

\[
R_r=-16r^5(r-2)(r^2-2r+3)^2(r^3-3r^2+r+3)^2.
\tag{16}
\]

Positivity forces \(0<r<2\). Differentiating exactly,

\[
\begin{aligned}
\frac{dR_r}{dr}={}&-32r^4(2r-3)(r^2-2r+3)(r^3-3r^2+r+3)P_5(r),\\
P_5(r)={}&4r^5-19r^4+34r^3-24r^2-6r+15.
\end{aligned}
\tag{17}
\]

The factors r and the cubic are nonzero wherever (16) is positive, and \(r^2-2r+3>0\). Sturm's theorem gives no roots of \(P_5\) in \((0,2)\). Thus the only possible stationary point is

\[
r=\frac32,\qquad z=-\frac34,\qquad
\cos\phi=\frac14,\qquad \psi=-\phi.
\]

This gives the dephased seed

\[
(\phi,-\phi,-\phi,\phi),\qquad \phi=\pm\arccos(1/4),
\]

which lies in the exact 18-point orbit in `EXACT_MAXIMA.md`. All allowed row and column phase changes disappear on dephasing; the remaining row/column permutations and conjugation are among the prescribed seed maps. The core exact Hessian calculation proves that these orbit points really are nondegenerate local maxima.

This completes the double-zero classification.

## Verification

`verify_intersection.py` checks all displayed polynomial reductions, the resultants and common-root eliminations, the complete real-root counts in (12), the rational interval signs in (13) and (15), the repeated-root derivative factorization, the absence of roots of \(P_5\) in \((0,2)\), and the exceptional one-edge coupling calculation. It exits nonzero on any failed assertion.
