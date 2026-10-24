# A practical global margin on both complete Fourier families

## Status

**PROVED.** For every order-six phase Hadamard in either complete Fourier family (including its transpose and every monomially equivalent representative),

\[
\boxed{\max_C R_C(H)\ \ge\ \frac{864}{\pi^2}\,
 d([H],[F_6])^2.}
\tag{F1}
\]

The coefficient is approximately 87.54. There is no small-neighbourhood restriction. In particular, on these families,

\[
d([H],[F_6])\ge 0.1\quad\Longrightarrow\quad
\max_C R_C(H)\ge \frac{8.64}{\pi^2}>0.875.
\tag{F2}
\]

**PROVED.** A sum version is

\[
\sum_C R_C(H)\ge \frac{41472}{\pi^2}d([H],[F_6])^2.
\tag{F3}
\]

For the 200 corners whose row set contains any specified row, the corresponding sum is exactly half the full sum throughout either Fourier family, so the coefficient in (F3) can be replaced by \(20736/\pi^2\).

**NOT ESTABLISHED.** Neither (F1) nor its constant has been proved here for Hadamards outside the Fourier families. Numerical evidence or the qualitative strict-corner theorem does not justify that extension.

## 1. Exact Fourier census — CERTIFIED

Put \(\omega=e^{2\pi i/3}\), \(F=(\omega^{ij})_{0\le i,j\le2}\), and

\[
N(\alpha,\beta)=
\begin{pmatrix}F&F\\FD&-FD\end{pmatrix},
\qquad D=\operatorname{diag}(1,e^{i\alpha},e^{i\beta}).
\]

Define \(X=2\beta-\alpha\), \(Y=\alpha+\beta\), \(T=X-Y=\beta-2\alpha\). The 400 discriminants consist of 256 zeros and 36 copies of each of the four polynomials

\[
36(\sin X+s\sin Y+t\sin T)^2,\qquad s,t\in\{-1,1\}.
\tag{F4}
\]

Consequently, writing \(A=\sin^2X+\sin^2Y+\sin^2T\) and \(L=|\sin X|+|\sin Y|+|\sin T|\),

\[
\max_C R_C=36L^2,\qquad \sum_C R_C=5184A.
\tag{F5}
\]

The script `verify_fourier_coverage.py` independently regenerates the scalar discriminant from the Gram entries and the complementary signed signature \(D_B=\Psi(B)-\overline{\Psi(B)}\), and checks \(R_C=-D_B^2\) at all 400 corners in the exact Laurent ring \(\mathbb Z[\omega][z,z^{-1},w,w^{-1}]\). It then checks the multiset (F4) and the sum identity (F5) coefficient by coefficient. No numerical values, atlas data, or Stage C input enter this verification.

Four fixed corners suffice to attain the maximum in this displayed canonical family. With zero-based indices, they have row set \(\{0,1,3\}\) and column sets

\[
\{0,1,2\},\quad\{0,1,5\},\quad
\{0,2,4\},\quad\{0,4,5\}.
\]

For every specified row and every specified column, the 200 containing corners consist of 128 zeros and 18 copies of each of the four polynomials in (F4). The same exact script checks all twelve such censuses. This also proves the row-anchored assertion for the transposed family.

## 2. Choosing a Fourier representative — PROVED

For integers \(m,n\), put

\[
\alpha_0=\frac{(2n-m)\pi}{3},\qquad
\beta_0=\frac{(m+n)\pi}{3}.
\]

Then \(2\beta_0-\alpha_0=m\pi\) and \(\alpha_0+\beta_0=n\pi\). Every \(N(\alpha_0,\beta_0)\) is equivalent to \(F_6\). Modulo \(2\pi\) these are twelve parameter pairs; the verifier supplies and checks explicit row and column permutations for all twelve, with every matrix entry checked as an exponent modulo six.

Choose \(m,n\) minimizing

\[
Q(x,y)=x^2+y^2-xy,
\qquad x=X-m\pi,\quad y=Y-n\pi.
\]

A minimizer exists because this positive definite quadratic grows at infinity. Comparing with the three lattice moves \((\pi,0),(0,\pi),(\pi,\pi)\), and their negatives, gives

\[
|2x-y|\le\pi,\qquad |2y-x|\le\pi,\qquad |x+y|\le\pi.
\tag{F6}
\]

The absolute values of the three sines, and \(Q\), are preserved by the reflections permuting \(x,y,x-y\) up to sign. They send the hexagon (F6) into twelve congruent triangles. Thus it is enough to work in

\[
\Delta=\{(x,y):0\le y\le x/2,\ 2x-y\le\pi\},
\]

whose vertices are \((0,0)\), \((\pi/2,0)\), and \((2\pi/3,\pi/3)\).

## 3. A useful trigonometric inequality — PROVED

On \(\Delta\), all three arguments \(x,y,x-y\) belong to \([0,\pi]\). Hence

\[
f(x,y)=\sin x+\sin y+\sin(x-y)-\frac4\pi\sqrt{Q(x,y)}
\]

is concave: each sine is concave on that interval, and the negative of a norm is concave. Its values at the first two vertices are zero. At the third vertex its value is

\[
\frac{3\sqrt3}{2}-\frac4{\sqrt3}
=\frac1{2\sqrt3}>0.
\]

Concavity therefore gives \(f\ge0\) throughout the triangle. Reflection back to the hexagon proves

\[
\boxed{(|\sin x|+|\sin y|+|\sin(x-y)|)^2
\ge \frac{16}{\pi^2}Q(x,y).}
\tag{F7}
\]

The absolute sine values are unchanged by the chosen integer multiples of \(\pi\), so (F7) applies to the (L) in (F5).

## 4. Distance after row and column phasing — PROVED

Write \(a=\alpha-\alpha_0=(2y-x)/3\), \(b=\beta-\beta_0=(x+y)/3\). The relative entry phases between \(N(\alpha,\beta)\) and \(N(\alpha_0,\beta_0)\) are \(r_iq_j\), where

\[
r=(0,0,0,1,1,1),\qquad q=(0,a,b,0,a,b).
\]

Let \(\bar q=(a+b)/3\). Row and column phasing changes these relative phases to

\[
P_{ij}=(r_i-1/2)(q_j-\bar q).
\]

Since \(|e^{iu}-1|\le |u|\),

\[
\begin{aligned}
d([N],[F_6])^2
&\le\sum_{i,j}P_{ij}^2\\
&=2(a^2+b^2-ab)
=\frac23Q(x,y).
\end{aligned}
\tag{F8}
\]

This is an upper bound using one explicit equivalent representative; it does not assume it is the optimally phased or permuted representative.

Combining (F5), (F7), and (F8) yields

\[
\max_C R_C\ge\frac{576}{\pi^2}Q
\ge\frac{864}{\pi^2}d([N],[F_6])^2,
\]

which proves (F1). Both the distance and the corner multiset are unchanged by monomial equivalence, conjugation, or transposition, so the stated full scope follows.

Finally, Cauchy–Schwarz gives \(L^2\le3A\), hence

\[
\sum_C R_C=5184A\ge1728L^2=48\max_C R_C,
\]

proving (F3). The exact anchored census proves its 200-corner version.

## 5. A smaller qualitative zero-locus system — PROVED from the supplied upstream results

Fix any row \(r\) of a phase Hadamard \(H\). Then

\[
\boxed{\bigl[R_C(H)=0\text{ for all }C\text{ whose row set contains }r\bigr]
\quad\Longleftrightarrow\quad H\simeq F_6.}
\tag{F9}

For the forward direction, choose one of the all-critical three-row strips containing \(r\). If it has a singular corner or can be phased to \((1;x;\bar x)\), the supplied routing theorem puts \(H\) in one of the Fourier families. If neither occurs, the supplied critical-strip classification applies at every corner of that strip, and its anchored ten-corner count is contradictory. Thus \(H\) is in a Fourier family in every case. Under the monomial equivalence used in routing, the specified row becomes some specified row. In the transposed case it becomes a specified column of the untransposed family. The twelve exact anchored censuses above then force \(L=0\), hence the Fourier representative is one of the twelve verified \(F_6\) points. The reverse direction follows from the same census.

This deduction invokes the existing qualitative strip classification and routing as upstream inputs. It does not quantify them.

After phasing the specified row to all ones, a selected signature depends on six unit phase variables. Its exact Laurent expansion has 48 terms with coefficients \(\pm1\), and maximum total absolute exponent eight. Thus its square has real polynomial degree at most sixteen after replacing reciprocal phases by their complex conjugates. This gives a smaller algebraic zero-locus system than all 400 corners, but a degree reduction alone does not provide a practical global margin.

## 6. Audit boundary

The supplied archive includes explanatory proofs for the zero-J and nonzero-J strip steps, endpoint counting, and the Fourier census. It references but does not include the current routing proof `PRM.md` §7.1, the actual-side identity development, the full Lean project, or the upstream exact verifiers. The present script replays the complete Fourier census and its equivalence witnesses independently. It does not replay the complete qualitative non-Fourier proof chain.

No inconsistency in the supplied qualitative theorem was identified during this audit. Its complete verification should not be described as having been replayed from this archive alone.
