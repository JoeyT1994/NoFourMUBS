# Phase-collision restrictions for a common-unbiased ray

## Header

**Statement.** Let H be an order-six phase Hadamard (H*H=6I).

- **Theorem A (mixed collisions).** If a phase vector k is unbiased to every
  column of H, then for every column h of H no value of the ratios k_r/h_r
  occurs four or more times. In particular, in every MUB triple
  I,H/√6,K/√6, no mixed column quotient K_rj/H_ri takes one value ≥4 times.
- **Three-row moment bound.** Any three rows X of H satisfy
  Σ_{j≠k}|(X*X)_jk|^4 ≥ 108.
- **Theorem B (two-valued diagonal orbits).** If D is diagonal unitary with at
  most two distinct entries, the flatness defect of H*DH/6 is at least 1/11.
  So I,H/√6,DH/√6 is never an MUB triple.
- **Theorem C.** Such a D sends at most two columns of H to rays unbiased to
  H/√6, and two is attained.

The companion [TwoValuedAnchor.md](TwoValuedAnchor.md) strengthens
Theorem A: every mixed column quotient in an MUB triple takes at least
three distinct values.

**Status.** Theorems A–C and the moment bound: elementary analytic proofs
(Sections 2–5). Sharpness (Section 6): exact certificate in
Q(i,√6) and Q(i,√5,√6). `collisions/verify.py` replays the exact
identities, the sharp control and a positive full-triple control.

**Dependencies.** None: no classification, reconstruction, genericity or
minor hypothesis.

**Provenance.** Archive
`03_algebraic/core/phase_reduction/supplied/phase_collision_results.md`
(Sections 1–6, copied; the source's opposite-corner coordinate framing and its
Sections 7–8 on the archive coordinate system are removed) and the review
`03_algebraic/core/phase_reduction/COLLISION_REVIEW.md`. Checker:
`03_algebraic/core/phase_reduction/verify_collisions.py`. The archive's
product-frame guard check of the sharp control was dropped, because it
belongs to archive reconstruction coordinates. The archive also contains
sharper constants (`phase_reduction/sharp_phase_bounds/`, 126 and 4/17);
they are not imported here.

---

## 1. Result and scope

Phase Hadamards have entries of modulus one and H*H=6I. The physical bases
are I,H/√6,K/√6.

**Theorem A — mixed four-coordinate collisions are impossible.** In every
physical order-six MUB triple, for every column pair \(h_i,k_j\), no value
of the six ratios \(K_{rj}/H_{ri}\) occurs four or more times. This is a global
restriction on the actual shared matrices, not a preferred-chart assumption.
It yields 540 strict sum-of-squares tests (Section 2.1).

**Theorem B — uniform diagonal-orbit exclusion.** For every order-six phase
Hadamard \(H\) and every diagonal unitary \(D\) with at most two distinct
entries, define

\[
\mathcal E_H(D)=
\sum_{i,j=1}^{6}
\left(
\left|\left(\frac{H^*DH}{6}\right)_{ij}\right|^2-\frac16
\right)^2.
\]

Then

\[
\boxed{\mathcal E_H(D)\ge \frac1{11}.}
\]

Thus \(I,H/\sqrt6,DH/\sqrt6\) is never an MUB triple. Independent column
phases and column permutations on either basis do not change this conclusion.
The bound \(1/11\) is not asserted to be optimal.

**Theorem C — sharp two-column bound.** A diagonal unitary with at most two
phase values can send at most two columns of \(H\) to vectors unbiased to
\(H/\sqrt6\). An exact example attains two. Its carrier has all 400 ordinary
three-minors nonzero.

These theorems are elementary consequences of the physical equations. They
require neither the classification nor a generic-rank assertion. The
supporting row-feature inequality is an intrinsic Hadamard fact; Theorems
A–C are the additional compatibility consequences.

**Open:** none of these results forces a general pair of carriers to be in
the same diagonal orbit. The theorem applies to K=DHPC (P a column
permutation, C column phases) only when D actually has at most two values.

## 2. Proof of Theorem A

It is enough to assume that \(H\) is a phase Hadamard and that a phase vector
\(k\) is unbiased to all its columns:

\[
|(H^*k)_j|^2=6\quad(j=1,\ldots,6).
\]

Choose a column of \(H\). A shared row gauge makes that column all ones,
and a column permutation places it first. Multiplying \(k\) by a scalar
phase, a hypothetical four-coordinate collision becomes

\[
k=\mathbf1+c e_r+d e_s,\qquad
c=\beta-1,\quad d=\gamma-1,
\quad |\beta|=|\gamma|=1.
\]

This covers five- and six-coordinate collisions too, by allowing a zero
coefficient. For every \(j\ne1\), the sum of the entries of column \(j\)
of \(H\) is zero. Hence

\[
(H^*k)_j=c\overline{H_{rj}}+d\overline{H_{sj}}.
\tag{2.1}
\]

If either coefficient is zero, the right side has modulus at most two,
contradicting \(\sqrt6\). Suppose both are nonzero and put

\[
q_j=\frac{\overline{H_{sj}}}{\overline{H_{rj}}}.
\]

Then \(|q_j|=1\), \(q_1=1\), and row orthogonality gives
\(\sum_{j=1}^{6}q_j=0\). Equation (2.1) says

\[
|c+dq_j|^2=6\quad(j=2,\ldots,6).
\]

Since \(\overline c d\ne0\), these five phases lie on the intersection of
a fixed line with the unit circle. They therefore take at most two values.

Here the order-six multiplicities matter. If those values are both different
from 1, the zero sum has three distinct values with multiplicities
\((1,m,5-m)\). The triangle inequality permits only \((1,2,3)\) or
\((1,3,2)\). In either case it is an equality in the triangle inequality,
so the two shorter summands have the same phase. This contradicts distinctness.
If there is only one value among the last five, the zero sum is impossible.
Thus all six \(q_j\) take only two values, one of them 1. A zero sum of two
unit values forces the values to be \(1,-1\), each occurring three times.

Choose a \(j\ne1\) with \(q_j=-1\). Equation (2.1) now has modulus

\[
|c-d|=|\beta-\gamma|\le2<\sqrt6,
\]

again a contradiction. This proves the theorem. No assertion about H2 blocks
or ordinary minors was used.

### 2.1. Direct sum-of-squares form

For a four-element row set \(T\), define

\[
\mathcal C_{ijT}(H,K)=
\sum_{\substack{r<s\\r,s\in T}}
|H_{ri}K_{sj}-H_{si}K_{rj}|^2.
\]

Because every entry is nonzero, this vanishes exactly when the four ratios
\(K_{rj}/H_{ri}\), \(r\in T\), coincide. Thus every physical triple satisfies

\[
\boxed{\mathcal C_{ijT}(H,K)>0}
\quad\text{for all }i,j,T.
\tag{2.2}
\]

There are \(6\cdot6\binom64=540\) such tests. These are strict necessary
conditions, not an independence claim or a sufficiency test.

For an anchor column \(K_{:j}=v\) against a column \(H_{:i}=\mathbf1\),
(2.2) simplifies to

\[
\sum_{\substack{r<s\\r,s\in T}}|v_r-v_s|^2>0
\quad (|T|=4).
\tag{2.3}
\]

### 2.2. The complete two-valued anchor candidate list

If \(v\) takes exactly two values, Theorem A forces multiplicities \(3,3\).
Write the values as \(\alpha,\beta\). Unbiasedness to the first column of
\(H\) gives

\[
|3\alpha+3\beta|^2=6,
\qquad
\frac\beta\alpha=\frac{-2\pm i\sqrt5}{3}.
\tag{2.4}
\]

In a fixed normalization \(v_{r_0}=1\), there are therefore exactly 20
*necessary candidate vectors*: choose the other two positions carrying 1
in \(\binom52=10\) ways, and choose one of the two phases in (2.4) for the
remaining three positions. This does not assert that all 20 candidates
occur for an arbitrary carrier. (They are all excluded from full triples in
[TwoValuedAnchor.md](TwoValuedAnchor.md).)

Both signs must be retained. Fixing H's oriented sheet by conjugating the
whole configuration does not authorize separately conjugating this anchor.

## 3. A three-row fourth-moment bound

The following intrinsic inequality supplies the quantitative exclusion.
Let \(X\) be any three rows of an order-six phase Hadamard and let

\[
G=X^*X,\qquad w_{jk}=|G_{jk}|^2.
\]

Then

\[
\boxed{\sum_{j\ne k}w_{jk}^{\,2}\ge108.}
\tag{3.1}
\]

In particular the 30 off-diagonal squared Gram moduli cannot all equal
\(9/5\), whose fourth-moment total would be only \(486/5<108\).

### Proof

Form the six-by-six row-feature matrix, with ordered distinct row indices,

\[
M_{(r,s),j}=X_{rj}\overline{X_{sj}},\qquad r\ne s.
\]

Orthogonality of the three rows gives \(M\mathbf1=0\), hence
\(\operatorname{rank}M\le5\). Put \(Y=MM^*\).

Group its six rows into three pairs according to their first index:
\((1,2),(1,3)\), then \((2,1),(2,3)\), then \((3,1),(3,2)\).
Within each pair, the two feature rows have squared norm 6 and are orthogonal.
Thus each corresponding two-by-two principal block of \(Y\) is \(6I_2\).

Choose a nonzero vector in \(\ker Y\). An independent unitary rotation
inside each two-dimensional pair moves that pair's part of the vector into
its first coordinate; a zero part causes no difficulty. These operations
leave the three principal blocks equal to \(6I_2\). Reorder the coordinates
so that the three first coordinates come first. The transformed matrix is

\[
\begin{pmatrix}A&B\\B^*&C\end{pmatrix},
\]

where \(A,C\) are positive semidefinite three-by-three matrices of trace 18.
The transformed kernel vector is \((u,0)\), with \(u\ne0\), so \(Au=0\)
and \(\operatorname{rank}A\le2\). Therefore

\[
\begin{aligned}
\operatorname{tr}(Y^2)
&=\operatorname{tr}(A^2)+\operatorname{tr}(C^2)+2\|B\|_F^2\\
&\ge\frac{18^2}{2}+\frac{18^2}{3}=270.
\end{aligned}
\tag{3.2}
\]

On the other hand,

\[
(M^*M)_{jk}=|G_{jk}|^2-3=w_{jk}-3.
\]

Here \(G^2=6G\), \(G_{jj}=3\), and consequently
\(\sum_{k\ne j}w_{jk}=9\). Expanding the Frobenius norm gives

\[
\operatorname{tr}(Y^2)
=\sum_{j,k}(w_{jk}-3)^2
=162+\sum_{j\ne k}w_{jk}^2.
\tag{3.3}
\]

Combining (3.2) and (3.3) proves (3.1). This proof uses a null vector already
forced by row orthogonality, not a new assertion of physical feature-rank
drop to four. It remains valid at every lower-rank boundary.

## 4. Proof of the uniform diagonal-orbit gap

Let the two phase values of \(D\) be \(\alpha,\beta\), and let the rows
carrying \(\beta\) form a set \(R\) of size \(p\). Swapping the names of
the two phases lets us take \(p=1,2,3\). The scalar case has defect 5.
Set

\[
t=|\alpha-\beta|^2\in[0,4],\qquad c=p(6-p),
\qquad G=H_R^*H_R,
\qquad S_p=\sum_{i\ne j}|G_{ij}|^4.
\]

Write \(U=H/\sqrt6\). Since

\[
U^*DU=\alpha I+(\beta-\alpha)\frac G6,
\]

its diagonal squared moduli are all \((36-ct)/36\), and its off-diagonal
squared moduli are \(t|G_{ij}|^2/36\). Also
\(\sum_{i\ne j}|G_{ij}|^2=6c\). Direct expansion gives the exact identity

\[
\boxed{1296\mathcal E_H(D)
=6480-432ct+(6c^2+S_p)t^2.}
\tag{4.1}
\]

There are three cases, with no unowned multiplicity pattern.

**One versus five.** Every \(|G_{ij}|=1\), so \(S_1=30\), giving

\[
\mathcal E_H(D)=\frac5{36}(t-6)^2\ge\frac59
\quad(0\le t\le4).
\tag{4.2}
\]

**Two versus four.** By column phasing the two-row restriction can be
written as \((\mathbf1;z)\), where \(\sum_jz_j=0\). Expanding
\(|1+\overline z_i z_j|^4\) and summing gives

\[
S_2=120+2\left|\sum_jz_j^2\right|^2\ge120.
\]

Thus

\[
\mathcal E_H(D)
\ge\frac7{18}\left(t-\frac{24}{7}\right)^2+\frac37
\ge\frac37.
\tag{4.3}
\]

**Three versus three.** By (3.1), \(S_3\ge108\). Consequently

\[
\mathcal E_H(D)
\ge\frac{11}{24}\left(t-\frac{36}{11}\right)^2+\frac1{11}
\ge\frac1{11}.
\tag{4.4}
\]

The smallest of the three lower bounds is \(1/11\), proving Theorem B.
This is a uniform positive defect on the entire stated physical sector,
not a determinant whose physical zero set has been left unsolved.

If even the diagonal overlaps are required to be unbiased, then
\(t=30/c\). For the balanced case this is \(t=10/3\), and (4.4) improves
to \(\mathcal E_H(D)\ge5/54\). Equivalently the unnormalized defect obeys

\[
\sum_{i,j}(|(H^*DH)_{ij}|^2-6)^2\ge120.
\]

## 5. Proof of the sharp two-column bound

Suppose at least one column of \(DH\) is unbiased to every column of \(H\).
Its diagonal overlap already forces \(t=30/[p(6-p)]\). The one-versus-five
case would require \(t=6\) and is impossible. The two-versus-four case
is impossible by Theorem A, applied to that column and its corresponding
column of \(H\).

Thus only \(p=3\), \(t=10/3\), remains. A column indexed by \(j\) is
unbiased precisely when

\[
w_{ij}=\frac95\quad\text{for all }i\ne j.
\tag{5.1}
\]

Suppose three such columns existed. Each of the other three vertices in
the symmetric matrix \(w\) would have three incident off-diagonal weights
\(9/5\). Since every off-diagonal row sum is 9, its two weights within the
remaining triangle sum to \(18/5\). Writing those three unknown weights
as \(x,y,z\), the equations are

\[
x+y=x+z=y+z=\frac{18}{5},
\]

so \(x=y=z=9/5\). All 30 off-diagonal weights would therefore equal
\(9/5\), contradicting (3.1). At most two fully unbiased columns are possible.

## 6. Exact sharpness and boundary control

Put

\[
\begin{aligned}
a&=\frac{-4-3i}{5},\\
b&=\frac{-2-3\sqrt6+i(6-\sqrt6)}{10},\\
c&=\frac{-2+3\sqrt6+i(6+\sqrt6)}{10}.
\end{aligned}
\]

Define

\[
H=\begin{pmatrix}
1&1&1&1&1&1\\
1&a&b&c&1&a\\
1&a&c&b&a&1\\
1&-a&-ia&-i&ic&ib\\
1&-a&-i&-ia&ib&ic\\
1&-1&-i&-i&i&i
\end{pmatrix},
\qquad
D=\operatorname{diag}(1,1,1,\beta,\beta,\beta),
\quad\beta=\frac{-2+i\sqrt5}{3}.
\]

**Certified computation:** all entries of \(H\) have modulus one and
\(H^*H=6I\). Put \(\ell=(42-12\sqrt6)/5\),
\(h=(42+12\sqrt6)/5\). The full intensity table is

\[
\bigl(|(H^*DH)_{ij}|^2\bigr)=
\begin{pmatrix}
6&6&6&6&6&6\\
6&6&6&6&6&6\\
6&6&6&6/5&\ell&h\\
6&6&6/5&6&h&\ell\\
6&6&\ell&h&6&6/5\\
6&6&h&\ell&6/5&6
\end{pmatrix}.
\tag{6.1}
\]

Exactly its first two columns are flat at the required value, and
\(\mathcal E_H(D)=8/25\). This proves sharpness of the *two-column count*,
not sharpness of the \(1/11\) defect bound.

All 400 ordinary three-minors of this \(H\) are nonzero. Rows \((1,2,3)\)
and columns \((1,5,6)\) give the dephased corner with seed \((1,a,a,1)\).

The control **is Karlsson**: rows 1 and 6, columns 1 and 2 display an H2 block.
It is not a non-Karlsson example, and the absence of ordinary zero3 does not
change that. It is also not a full triple, since the remaining four columns
in (6.1) fail unbiasedness. Nevertheless \(D\mathbf1\) is a genuine common
unbiased ray. One must not exclude every two-valued anchor merely because a
full two-valued diagonal orbit is excluded.

As a full positive control outside the excluded sector, the verifier uses
\(H_{rj}=\zeta^{2rj}\), \(D_{rr}=\zeta^{r^2}\), with
\(\zeta=(\sqrt3+i)/2\) and zero-based indices. These form a full MUB triple;
this diagonal has four, not two, distinct phases. All 540 mixed-collision
tests are checked exactly on that triple.

## 7. Verification

`collisions/verify.py` (shared with TwoValuedAnchor.md) checks, in exact
Q(i,√2,√3)-type arithmetic and independently in SymPy: the defect expansion
(4.1) and the three completed squares; the admissible triangle multiplicities
of Theorem A; the moment arithmetic of Sections 3 and 5; the row-feature
identities of Section 3 on all 20 three-row sets of the sharp H; the full
intensity table (6.1) and defect 8/25; all 400 three-minors; the H2
witness; and all 540 strict tests (2.2) on the Fourier/chirp triple. The
global inequalities are proved above, not inferred from those controls.
