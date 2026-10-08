# Exact exclusion on the zero-chirality stratum

## Result

Let a physical order-six Hadamard have a maximal corner \(E\), with
\(0<M=R(E)<26\). Use its four dephased phases as seed coordinates. Put

\[
\mathcal D=4XYZ-J^2
=4\bigl(\Im(s r\bar t)\bigr)^2.
\]

If \(\mathcal D=0\) and \(\Im q(E)\ne0\), then

\[
\boxed{\nabla_{\rm seed}R(E)\ne0.}
\tag{1}
\]

Thus a low-valued maximal seed cannot be stationary on this entire
chirality-zero stratum, except possibly where \(\Im q(E)=0\) as well.
The latter intersection belongs to the complementary-invariant-zero
stratum. This result does not dispose of a minimum of a maximum formed
by several different, nonzero active gradients balancing one another.

The proof has two parts: an exact full Gram Jacobian makes the necessary
rank-three statement automatic, and a two-variable polynomial
classification excludes every possible constrained critical point.

## 1. A full Gram Jacobian

For a first-row-dephased flat matrix

\[
E=\begin{pmatrix}1&1&1\\a&b&c\\d&e&f\end{pmatrix},
\qquad |a|=\cdots=|f|=1,
\]

write its off-diagonal row-Gram entries as

\[
s=a+b+c,\quad t=d+e+f,\quad
r=d/a+e/b+f/c.
\]

The determinant of the real Jacobian from the six phases to
\((\Re s,\Im s,\Re t,\Im t,\Re r,\Im r)\) is

\[
\boxed{\det D\mathcal G=\frac14\Im q(E).}
\tag{2}
\]

For verification without trigonometric arithmetic, form the matrix
\(L_{ij}=z_j\partial_{z_j}h_i\), where
\(z=(a,b,c,d,e,f)\) and
\(h=(s,\bar s,t,\bar t,r,\bar r)\), with conjugates replaced by
reciprocals. The exact Laurent identity is

\[
\det L=-\bigl(q(E)-\overline{q(E)}\bigr).
\]

Multiplying each phase derivative by \(i\), and converting the three
complex/conjugate output pairs to real/imaginary pairs, gives (2).
Changing the sign of all off-diagonal Gram entries, as required for
\(6I-EE^*\), does not change the six-dimensional real determinant.

Consequently \(\Im q(E)\ne0\) makes the six-phase Gram map a local
diffeomorphism.

## 2. Rank three at zero chirality, with no hidden exceptional rank drops

The invariant projection from the six real Gram coordinates to
\((X,Y,Z,J)\) has rank exactly three at \(\mathcal D=0\), provided
\(R(E)>0\).

If \(s,t,r\) are all nonzero, use their three magnitudes and their
Bargmann phase \(\phi=\arg(s r\bar t)\). Then

\[
J=2\sqrt{XYZ}\cos\phi,
\]

and \(\mathcal D=0\) means \(\sin\phi=0\). The derivatives of
\(X,Y,Z\) are independent, while the phase derivative of \(J\) vanishes,
giving rank three. If exactly one off-diagonal entry vanishes, the two
nonzero magnitudes give two independent derivatives and \(J\) supplies
a third independent, linear derivative in the vanishing complex entry.
Two vanishing off-diagonal entries are impossible when \(R>0\): after
permutation, \(X=Y=J=0\) gives

\[
R=-Z^2(9-Z)^2\le0.
\tag{3}
\]

By (2), the composition with the full six-phase Gram map also has rank
three. The two row-rephasing directions are killed by the invariant map.
The four dephased seed directions, together with these two gauge
directions, span all six input directions. Hence the four-seed invariant
map itself has rank exactly three.

The hypersurface \(\mathcal D=0\) is regular at every \(R>0\) point.
Indeed, its gradient can vanish only if \(J=0\) and at least two of
\(X,Y,Z\) are zero, which (3) excludes. Therefore the image of the
four-seed differential is exactly the three-dimensional tangent space
of this hypersurface.

If \(\nabla_{\rm seed}R=0\), it follows that \(R\) satisfies the
ordinary Lagrange multiplier equations on \(\mathcal D=0\).

## 3. Exact classification of those Lagrange critical points

Physicality gives \(X,Y,Z\ge0\), \(g>0\), and \(R>0\) gives \(\eta>0\).
Write \(\nabla R+\lambda\nabla\mathcal D=0\). Subtracting the \(X\) and
\(Y\) equations gives

\[
(Y-X)\bigl[-2\chi+(2\chi+4\lambda)Z\bigr]=0,
\tag{4}
\]

with its two cyclic versions. If \(X,Y,Z\) are all distinct and
positive, these equations force \(\chi=\lambda=0\). But then the
\(X\) equation is

\[
\partial_XR=-4g(6\eta+g)<0,
\]

a contradiction. If exactly one invariant vanishes and the other two
are unequal, their stationary equations again force \(\chi=0\), with
the same contradiction. Thus at least two invariants are equal.

After permutation write

\[
X=Y=x>0,\qquad Z=t^2,\qquad J=2xt.
\]

Both signs of \(J\) are included. A direct factorization gives

\[
R=- (t-3)^2 A^2(t^2-2tx+x^2-4x),
\qquad A=-t^2+tx-3t-x.
\tag{5}
\]

The two necessary derivative equations, after removing factors that are
nonzero when \(R>0\), are \(B=C=0\), where

\[
\begin{aligned}
B={}&t^3-2t^2x+2t^2+tx^2-3tx+3t-x^2+3x,\\
C={}&-2t^4+5t^3x-4t^2x^2+2t^2x+9t^2+tx^3
       +2tx^2-12tx-2x^3+11x^2-18x.
\end{aligned}
\]

The exact resultant is

\[
\operatorname{Res}_x(B,C)
=-2t(t-3)^2(t+1)(t^2-t-1)(9t^2-14t+9).
\tag{6}
\]

The last quadratic is strictly positive over the reals. At \(t=0\),
the two polynomials have gcd \(x\), giving \(R=0\). At \(t=3\),
equation (5) gives \(R=0\). At \(t=-1\),
\(R=-64(x-1)^4\le0\). The remaining case is

\[
t^2-t-1=0,\qquad x=t+1=t^2.
\tag{7}
\]

The equality for \(x\) is checked by the exact Groebner basis
\(\{x-t-1,t^2-t-1\}\) of \(\{B,C,t^2-t-1\}\). Reducing (5) gives

\[
R=175+275t=\frac{625\pm275\sqrt5}{2}.
\tag{8}
\]

The larger value exceeds 26. The smaller value is approximately
5.040653, but it cannot be maximal in a matrix with \(M<26\). For the
same-row complementary corner, the exact identity

\[
R_{\rm comp}=R(X,Y,Z,-J)
\]

follows from F2 and the universal complementary-sign identity proved in
`../mc1/verify_minor_identities.py`. At (7) it becomes

\[
R_{\rm comp}=-905-1541t
=\frac{-3351+1541\sqrt5}{2}>26
\tag{9}
\]

for the smaller value in (8). The last comparison is exact, since
\(5\cdot1541^2>3403^2\). This excludes every candidate and proves (1).

## Verification and scope

Run `python3 verify_chirality.py` with SymPy available. It checks the
six-phase Jacobian identity, all factorizations, the resultant, the
exceptional gcd, the Groebner basis, both critical values and the final
integer comparisons. It performs no floating-point acceptance.

The result uses physical Gram positivity, the definitions of the corner
invariants, and the complementary-square identity F2, together with the
exact polynomial identity relating the complementary corner to \(J\to-J\).
It does not require the global F7 coverage claim to prove nonstationarity
of a given seed corner. Using that nonstationarity as a feasible
Hadamard deformation uses the local provider assumptions described in
`CHART_REGULARITY.md`.

The remaining issues are explicitly the \(\Im q(E)=0\) stratum and
convex combinations of several distinct active corner gradients. This
classification alone does not establish global confinement.
