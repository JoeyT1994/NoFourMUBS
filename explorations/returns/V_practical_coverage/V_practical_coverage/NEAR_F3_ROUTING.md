# Quantitative routing near a three-by-three Hadamard block

## Result and limitation

**PROVED, with a small exact finite orbit check.** Suppose an order-six complex Hadamard H has a positional three-by-three corner E with

\[
p=\sum_{1\le i<j\le3}|(EE^*)_{ij}|^2\le\frac1{160000}.
\]

Then H is within Frobenius distance

\[
\boxed{12\sqrt p+60\sqrt2\,p^{1/4}}
\tag{1}
\]

of a matrix K equivalent either to a member of one of the two Fourier families or to Tao's matrix. Distance permits the usual monomial equivalences.

The bound is explicit, but is not by itself a practical global corner margin. For example, forcing the right side below 1/2 requires p roughly of order \(10^{-9}\). No implication from \(\max_C R_C\le10^{-3}\) to such a small p is proved here. Nor does this lemma alone route a nearby Fourier-family point to F6. These are separate remaining steps.

The finite verification script `verify_near_f3_routing.py` uses only exact integer/rational arithmetic and checks the 18 mixed chirp matrices against an explicit Tao matrix. It also replays the displayed arithmetic constants.

## 1. Three nearly orthogonal phase rows are near F3

**PROVED.** Let A be a three-by-three phase matrix with the analogous p at most 1/100. Dephase its first row and column, obtaining rows

\[
(1,1,1),\quad (1,a,b),\quad(1,c,d).
\]

Write \(\delta_2=|1+a+b|\), \(\delta_3=|1+c+d|\). Each is at most \(\sqrt p\le1/10\), and \(\delta_2^2+\delta_3^2\le p\).

For a unit pair a,b with \(|1+a+b|=\delta\le1/10\),

\[
|1+2\Re a|=\bigl||1+a|^2-1\bigr|\le2\delta+\delta^2.
\]

Thus \(|\Re a|\le121/200\), so \(|\Im a|>3/4\). Let \(\omega^s\), \(s\in\{1,2\}\), have the same sign of imaginary part as a. The other cube root is at distance at least 3/2 from a. Since

\[
|(a-\omega)(a-\omega^2)|=|1+2\Re a|,
\]

we obtain

\[
|a-\omega^s|\le\tfrac75\delta,
\qquad |b-\omega^{-s}|\le\tfrac{12}5\delta.
\]

Hence each nonconstant row is within \(3\delta_i\) of one of the two nonconstant Fourier rows. They must be different Fourier rows: if both approximated the same row, their mutual inner product would have magnitude at least

\[
3-3\sqrt3(\delta_2+\delta_3)
\ge3-3\sqrt6\sqrt p>2,
\]

whereas its actual magnitude is at most \(\sqrt p\le1/10\).

Therefore some exact three-by-three Hadamard A0 satisfies

\[
\boxed{\|A-A_0\|_F\le3\sqrt p.}
\tag{2}
\]

Phases and permutations used in this argument do not change the distance assertion.

## 2. Approximate by a canonical exactly unitary block matrix

Write \(H=\begin{pmatrix}E&B\\C&D\end{pmatrix}\). The identities

\[
EE^*+BB^*=6I,\quad E^*E+C^*C=6I,\quad CC^*+DD^*=6I
\]

show that all four three-by-three blocks have the same p. Here row-Gram and column-Gram off-diagonal squared sums agree for every square phase block, since their diagonal entries are all three and their squared Frobenius norms agree.

Choose exact three-by-three Hadamards \(E_0,B_0,C_0\), each within \(3\sqrt p\) of its block, and set

\[
\widehat D=-C_0E_0^*B_0/3,
\qquad
\widehat H=\begin{pmatrix}E_0&B_0\\C_0&\widehat D\end{pmatrix}.
\]

Then \(\widehat H\widehat H^*=6I\), although its bottom-right block need not be flat.

Using \(C^*D+E^*B=0\),

\[
D-\widehat D=\frac13C_0\bigl[(C_0^*-C^*)D+(E_0^*-E^*)B+E_0^*(B_0-B)\bigr].
\]

For p at most 1/100, each block has operator norm at most \((21/20)\sqrt3\), by the Frobenius Gram bound \(\|AA^*-3I\|_F=\sqrt{2p}\). Therefore

\[
\|D-\widehat D\|_F\le\tfrac{31}{10}\,3\sqrt p<10\sqrt p.
\]

This yields

\[
\boxed{\|H-\widehat H\|_F\le\sqrt{127p}<12\sqrt p.}
\tag{3}
\]

Every three-by-three Hadamard is equivalent to F3, as already proved by (2) with p=0. All permutations of three Fourier row indices are affine modulo three, so their effects can be transferred to column phases/permutations. Consequently external monomial transformations put the three exact blocks into the simultaneous form

\[
E_0=F,\quad B_0=D_xF,\quad C_0=FD_y,
\quad
\widehat D=-FD_yF^*D_xF/3,
\tag{4}
\]

where F is the unnormalized F3 and x,y are unit triples. Global phases may be chosen so \(x_0=y_0=1\).

As \(\widehat D\) has operator norm \(\sqrt3\),

\[
\Delta_{ij}=|\widehat D_{ij}|^2-1
\quad\Longrightarrow\quad
\|\Delta\|_F\le(\sqrt3+1)\|\widehat D-D\|_F<28\sqrt p.
\tag{5}
\]

## 3. Flatness factors into two products

**PROVED by Fourier expansion.** Set indices modulo three and define

\[
c_d=\frac13\sum_k y_k\omega^{kd},\qquad
\alpha_d=c_d\overline{c_{d-1}},\qquad
\beta_l=x_l\overline{x_{l+1}}.
\]

The row i of \(\widehat D\) is the negative Fourier transform of \(c_{i-l}x_l\). Since \(\sum_d|c_d|^2=1\), its flatness defect is determined by the autocorrelation

\[
r_i=\sum_l\alpha_{i-l}\beta_l,
\qquad \sum_{i,j}\Delta_{ij}^2=6\sum_i|r_i|^2.
\]

Let hats denote the unnormalized three-point Fourier transform with negative exponent. Then \(\widehat r_k=\widehat\alpha_k\widehat\beta_k\), and Parseval gives

\[
\sum_k|\widehat\alpha_k\widehat\beta_k|^2
=\tfrac12\|\Delta\|_F^2.
\tag{6}
\]

The constant component \(\widehat\alpha_0\) vanishes because the circulant matrix with coefficients c is unitary.

For a unit triple z define

\[
\beta(z)_l=z_l\overline{z_{l+1}},
\qquad Z_k=\sum_l\beta(z)_l\omega^{-kl}.
\]

Write X for z=x and Y for z=y. Direct Fourier expansion gives

\[
\widehat\alpha_1=\overline{Y_1}/3,
\qquad\widehat\alpha_2=\omega Y_2/3.
\]

Thus (5)-(6) imply the two small-product inequalities

\[
\boxed{|X_1Y_1|\le60\sqrt p,\qquad |X_2Y_2|\le60\sqrt p.}
\tag{7}
\]

In the exactly flat case these products vanish. This factorization is the short algebraic reason that Fourier families and a finite chirp set are the only exact possibilities in this block chart.

## 4. Quantitative rounding of a small three-phase Fourier coefficient

**PROVED.** Suppose \(|Z_k|\le\sigma<\sqrt3/4\), for k=1 or 2. Set

\[
w_l=\beta(z)_l\omega^{-kl}.
\]

These numbers are unit and have product one. Their trace s is Zk, and their pairwise-product sum is \(\overline s\). Each w therefore satisfies

\[
w^3-sw^2+\overline s\,w-1=0,
\quad\text{so}\quad |w^3-1|\le2\sigma.
\]

If \(\xi\) is the closest cube root to w, writing \(w/\xi=e^{it}\) with \(|t|\le\pi/3\) gives

\[
\frac{|w^3-1|}{|w-\xi|}=1+2\cos t\ge2.
\]

Thus \(|w-\xi|\le\sigma\). The three chosen cube roots are distinct: otherwise their sum has magnitude at least \(\sqrt3\), but its distance from s is at most \(3\sigma\), contradicting \(4\sigma<\sqrt3\).

Every permutation of the three cube roots has the form \(\xi_l=\lambda\omega^{al}\), with \(a\in\{1,2\}\) and \(\lambda^3=1\). Consequently

\[
|\beta(z)_l-\lambda\omega^{ml}|\le\sigma,
\qquad m=a+k\not\equiv k\pmod3.
\tag{8}
\]

Solving the first two successive-ratio equations, with \(z'_0=z_0\), produces an exact triple z' whose ratios are \(\lambda\omega^{ml}\), and

\[
\boxed{\|z-z'\|_2\le\sqrt5\sigma.}
\tag{9}
\]

If both \(|Z_1|,|Z_2|\le\sigma\), the rounded m must be zero: a nonzero m would give \(|Z_m|\ge3-3\sigma>\sigma\). Thus z' is a geometric sequence in this case.

## 5. Compatible branch choices and exact destinations

Set

\[
\sigma=\sqrt{60}\,p^{1/4}.
\]

Our p hypothesis ensures \(\sigma^2\le3/20<3/16\), so \(\sigma<\sqrt3/4\). Equation (7) means that for each k, either \(|X_k|\le\sigma\) or \(|Y_k|\le\sigma\).

If both small coefficients belong to X, round x to a geometric sequence and leave y arbitrary. The matrix (4) is then exactly flat and equivalent to a Fourier-family matrix. The same holds with x and y exchanged, giving the transposed family.

If the choices are split, round each variable using its small coefficient. The allowed exponents in (8) are compatible: either one rounded ratio sequence is constant, giving a Fourier family, or the two nonconstant exponents are opposite, 1 and 2. In the latter case, after removing global phases,

\[
x=(1,\omega^{-a},\omega^{-2a-m}),\qquad
y=(1,\omega^{-b},\omega^{-2b-n}),
\]

with \((m,n)=(1,2)\) or \((2,1)\), and \(a,b\in\{0,1,2\}\).

**CERTIFIED.** These 18 canonical matrices are exactly flat Hadamards and all equivalent to Tao's matrix. The verifier constructs their entries in \(\mathbb Z[\omega]\), checks cubic-root orthogonality by integer counts, and finds explicit row/column permutations and dephasing transformations to the stated Tao matrix. No floating comparison is used.

Changing x alone in (4) changes the full matrix by exactly \(\sqrt6\|x-x'\|_2\); the same holds for y. The triangle inequality and (9) give

\[
\|\widehat H-K\|_F\le2\sqrt{30}\sigma
=60\sqrt2\,p^{1/4}.
\]

Adding (3) proves (1).

## Remaining gap for the practical target

The theorem is a quantitative replacement for exact routing at p=0. It does not supply a useful global margin until the all-small-R equations force a sufficiently small p (or until the constants are improved and a larger routing neighborhood is certified). That implication remains open in this return.
