# Positive-weight rigidity at sharp three-row equality

**Statement.** Let X be a 3-by-6 matrix with unit-modulus entries and
XX*=6I_3, with S(X)=126, and let t_i=|zeta_i|^2 be its feature-kernel
weights ([SharpBound.md](SharpBound.md)). If all three t_i are positive, then
t_1=t_2=t_3=1/3. Together with [EqualityBranches.md](EqualityBranches.md),
the weight triple at equality is (1,0,0) or (1/3,1/3,1/3) up to order, so
p(1-27p)=0 with p=t_1t_2t_3.

**Status.** Proved. **This is a supplied proof. The author's verifier was
never provided or run. It was independently re-read by Claude (this
import, 2026-09-26). Verdict: correct; no gap found.** Details of the
re-reading are below. The algebraic identities are re-checked by a new,
independent script [PositiveWeight.py](PositiveWeight.py).

**Dependencies.** [SharpBound.md](SharpBound.md), Section 1 (the equality
case of the SOS (3) gives the moments (1) below). No completion,
classification, minor hypothesis or genericity is used.

**Provenance.** Archive `03_algebraic/core/phase_reduction/positive_weight_equality/supplied/PROOF.md`.
Its Sections 1-6 and 8 are copied without mathematical change; links and
dependency labels are edited. Section 7 ("Connection to the actual product
reconstruction") is omitted: it is an optional bridge to archive
reconstruction coordinates and is not used by Sections 1-6. Section 9
(author replay and provenance) is replaced by the verification section
below. The archive reviewer's `check.py` and the author's front matter
(owner, date, owned scope) are not copied.

## Independent re-reading (import review)

Each step was checked by hand, and the steps marked (V) also by
PositiveWeight.py:

- **Moments (1).** At S=126 the SOS (3) of SharpBound.md forces
  A_ij=-6 zeta_i conj(zeta_j) and b_i=-6 zeta_i^2. Here A_ij=6E(f_i conj f_j)
  and b_i=6E(f_i^2), because Y=MM* has rows f, conj f. The pointwise kernel
  relation (2) is M*w=0 with w=(zeta,conj zeta). Then a_i=conj(zeta_i) f_i
  gives (4) and (5) directly. In particular alpha=conj(zeta_1 zeta_2 zeta_3)
  is column-independent, because f_1f_2f_3=1.
- **Basis claim (Section 2).** C=diag(1,G)=WW^T/6 is a bilinear (not
  Hermitian) Gram matrix of the 6-by-6 evaluation matrix W, so det G != 0
  makes W invertible (V: det G=-p^2 d). The trace identities (8) then hold
  because M_w is similar to diag(w(1),...,w(6)). The block form (9) is the
  expansion of v_i v_j in the basis, with coefficients from the bilinear
  moments.
- **Cubic table (Section 3).** Every entry was re-derived by hand from (4),
  (5) and the kernel relation. (V) The script re-derives it independently of
  the table's own case logic. It uses the Laurent coordinates a1=U, a2=V,
  a3=alpha/(UV), b_i=t_i/a_i (which satisfy (4) identically). Of the 56 cubic
  monomials, 44 reduce by pointwise products to degree <=2 and match
  alpha*E via (5). The remaining 12 are the h-dependent entries. The kernel
  relation times each of the 21 quadratic monomials has zero expectation
  identically in the h's.
- **First traces (Section 4).** Sections 4-6 hold as identities in
  Q(t1,t2,lambda,kappa) and the h's (V): the six first-trace identities (13)
  with (14), including the omitted feature b3; the particular solution (15);
  and the fact that (16) makes all six traces vanish. The equations (10) are
  six row/column-sum constraints on a zero-diagonal 3-by-3 table with one
  dependency, so their solution set is exactly the one-parameter
  circulation family. Only w_i=t_i(2-t_i)>0 is inverted.
- **Square traces and elimination (Sections 5-6).** (V) Identities (19) for
  all six features after substituting (16), and (21), (23), (24). Since
  1+t_jt_k>0, (21) gives lambda^2=p^2. A complex lambda with lambda^2=p^2 is
  +p or -p, so 2 lambda+p is 3p or -p, never zero, and (23) forces t_i=t_j.
  The division-free identity (24) gives the same conclusion without
  branching.
- **Control (V).** At the actual H8 equality block (weights 1/3, where
  lambda=p=1/27), the actual six-column cubic moments match the table in
  all 56 entries. The actual h_ij satisfy (16) with a single kappa
  (= -5 sqrt2/729), and F_i=F~_i=0 exactly.

No division by zero, no generic-rank step and no discarded branch was found.

---

## Supplied proof

### Result and dependency boundary

Let \(X\in\mathbb C^{3\times6}\) have unit-modulus entries and satisfy
\(XX^*=6I_3\). Put

\[
 S(X)=\sum_{j\ne k}|(X^*X)_{jk}|^4.
\]

Assume \(S(X)=126\), and normalize the real-structure feature-kernel vector
as \((\zeta,\bar\zeta)\), with \(\sum_i|\zeta_i|^2=1\). Write
\(t_i=|\zeta_i|^2\).

> **Theorem.** If all three \(t_i\) are positive, then
> \[
>                   t_1=t_2=t_3=\frac13.
> \]
> In particular, no physical three-row equality block has three positive
> unequal weights. The theorem does not assume a full Hadamard completion.

The proof uses the sharp-equality feature moments from
[SharpBound.md](SharpBound.md), Section 1.
It does not use a classification of full Hadamards, an ordinary-minor
exclusion, a generic-rank assumption, or any mate equations. It reduces
actual six-column multiplication traces to one cubic-moment parameter and
then eliminates that parameter.

Together with the existing support-one and support-two results in
[EqualityBranches.md](EqualityBranches.md),
this proves, on the complete physical equality locus,

\[
 \boxed{\quad p(1-27p)=0,\qquad p=t_1t_2t_3.\quad}
\]

This identity is a conclusion, not an input. The earlier equal-weight
completion and all-mates classifications are accepted dependencies of the
completion/quartet corollaries only. They are not repeated here.

## 1. Physical equality moments

For the three actual rows \(r_1,r_2,r_3\), define entrywise cyclic features

\[
 f_1=r_1\bar r_2,\qquad f_2=r_2\bar r_3,\qquad f_3=r_3\bar r_1.
\]

Every feature has zero sum; every entry has modulus one; and
\(f_1f_2f_3=1\) on every column. Write
\(\mathbb E v=\frac16\sum_{\ell=1}^6v(\ell)\).

At sharp equality, the SOS gives

\[
 \mathbb E(f_i\bar f_j)=-\zeta_i\bar\zeta_j\quad(i\ne j),
 \qquad \mathbb E(f_i^2)=-\zeta_i^2.
 \tag{1}
\]

Also \(\mathbb E(f_if_j)=0\) for distinct indices, because
\(f_if_j=\bar f_k\). The kernel equation is pointwise:

\[
 \sum_i\bigl(\bar\zeta_i f_i+\zeta_i\bar f_i\bigr)=0.
 \tag{2}
\]

On the positive-weight branch, put

\[
 g_i=e^{-i\arg\zeta_i}f_i,\qquad
 a_i=\sqrt{t_i}\,g_i,\qquad b_i=\bar a_i.
\]

These are proof coordinates on the actual features, not independent row
gauges or independently dephased quartet edges. Define

\[
 \alpha=a_1a_2a_3,\qquad p=t_1t_2t_3,\qquad
 \lambda=\alpha^2,\qquad d=1-2p.
 \tag{3}
\]

The product \(\alpha\) is column-independent, with
\(|\alpha|^2=p>0\), and \(b_1b_2b_3=p/\alpha\). The pointwise relations are

\[
 \sum_i(a_i+b_i)=0,\qquad a_ib_i=t_i,
 \qquad a_ia_j=\frac{\alpha}{t_k}b_k,
 \qquad b_ib_j=\frac{p}{\alpha t_k}a_k
 \tag{4}
\]

for pairwise distinct \(i,j,k\). Equations (1) give the complete moments
of degree at most two:

\[
\begin{aligned}
 &\mathbb Ea_i=\mathbb Eb_i=0,\\
 &\mathbb Ea_i^2=\mathbb Eb_i^2=-t_i^2,\\
 &\mathbb Ea_ia_j=\mathbb Eb_ib_j=0 &&(i\ne j),\\
 &\mathbb Ea_ib_i=t_i,\qquad
 \mathbb Ea_ib_j=-t_it_j &&(i\ne j).
\end{aligned}
\tag{5}
\]

All subsequent divisions are valid on the entire positive-weight branch:

\[
 0<t_i<1,\qquad 0<p\le\frac1{27},\qquad
 d\ge\frac{25}{27}>0,\qquad t_i(2-t_i)>0,\qquad\alpha\ne0.
 \tag{6}
\]

In particular, no difference \(t_i-t_j\) is ever inverted.

## 2. Equality determines a basis of the actual six-column algebra

Use the ordered five-feature vector

\[
 v=(a_1,a_2,a_3,b_1,b_2)^T
\]

and the six functions \(\mathcal B=(1,v_1,\ldots,v_5)\). The omitted
feature is \(b_3=-a_1-a_2-a_3-b_1-b_2\).

The bilinear moment matrix is \(C=\mathbb E[\mathcal B\mathcal B^T]
=\operatorname{diag}(1,G)\). This is a **bilinear** Gram matrix; its
transpose does not denote conjugate transpose. With
\((x,y,z)=(t_1,t_2,t_3)\),

\[
 G=\begin{pmatrix}
 -x^2&0&0&x&-xy\\
 0&-y^2&0&-xy&y\\
 0&0&-z^2&-xz&-yz\\
 x&-xy&-xz&-x^2&0\\
 -xy&y&-yz&0&-y^2
 \end{pmatrix},
 \qquad
 \det G=-p^2d\ne0.
 \tag{7}
\]

The determinant identity uses \(x+y+z=1\).

Let \(W\) be the matrix evaluating these six functions on the actual six
columns, with basis functions as rows. Then \(C=WW^T/6\), so \(W\) is
invertible. Consequently \(\mathcal B\) is a basis of the entire algebra
of functions on those six labelled columns. This is not a generic-point
claim. It also rules out repeated evaluation columns automatically.

For any column function \(w\), let \(M_w\) represent multiplication by
\(w\) in this basis. It is similar to the diagonal matrix of the six
values of \(w\), hence

\[
 \operatorname{tr}M_w=6\mathbb Ew,
 \qquad \operatorname{tr}M_w^2=6\mathbb Ew^2.
 \tag{8}
\]

The number six and the equal column weights are essential here. These
identities would not follow merely from an arbitrary abstract moment
matrix or a measure with an unspecified number of atoms.

For \(w=v_i\), define the scaled cubic-moment matrix

\[
 (T_i)_{jk}=\alpha\,\mathbb E(v_i v_j v_k),\qquad N_i=G^{-1}T_i.
\]

The multiplication matrix has the block form

\[
 M_{v_i}=\begin{pmatrix}
 0&G_{i,:}\\
 e_i&\alpha^{-1}N_i
 \end{pmatrix}.
 \tag{9}
\]

For \(b_3\), use the negative sum of the five corresponding matrices.
Thus all six features satisfy

\[
 \operatorname{tr}N_{a_i}=\operatorname{tr}N_{b_i}=0,
 \tag{10}
\]

and, by (5), (8), and (9),

\[
 \operatorname{tr}N_{a_i}^2+4\lambda t_i^2=0,
 \qquad
 \operatorname{tr}N_{b_i}^2+4\lambda t_i^2=0.
 \tag{11}
\]

For example,
\(\operatorname{tr}M_{a_i}^2=-2t_i^2+
\lambda^{-1}\operatorname{tr}N_{a_i}^2=-6t_i^2\), which explains the
factor four in (11).

## 3. Six cubic moments contain all remaining information

For \(i\ne j\), set

\[
 h_{ij}=\alpha\,\mathbb E(a_i^2b_j).
 \tag{12}
\]

All scaled cubic moments are determined by these six quantities. In the
following table, different letters \(i,j,k\) denote pairwise distinct
indices, and the moment is symmetric under reordering its factors.

| Monomial | \(\alpha\) times its expectation |
|---|---|
| \(a_1a_2a_3\) | \(\lambda\) |
| \(b_1b_2b_3\) | \(p\) |
| \(a_i^2a_j\) | \(-\lambda t_i\) |
| \(b_i^2b_j\) | \(-p t_i\) |
| \(a_i^2b_i\), \(a_ib_i^2\) | \(0\) |
| \(a_i^2b_j\) | \(h_{ij}\) |
| \(a_ib_j^2\) | \(\lambda t_j+p t_i-h_{ij}\) |
| \(a_ia_jb_k\) | \(-\lambda t_k\) |
| \(b_ib_ja_k\) | \(-p t_k\) |
| \(a_ia_jb_i\), \(a_ia_jb_j\), and their barred versions | \(0\) |
| \(a_i^3\) | \(2\lambda t_i-\sum_{j\ne i}h_{ij}\) |
| \(b_i^3\) | \(p(3t_i-1)-2\lambda t_i+\sum_{j\ne i}h_{ji}\) |

Here “barred versions” means interchanging every \(a\) with \(b\), not
conjugating a formal free parameter without justification.

**Derivation.** The product relations (4) and the moments (5) immediately
give the distinct-index and repeated-index product reductions. Multiplying
\(\sum_k(a_k+b_k)=0\) by \(a_ib_j\), for \(i\ne j\), gives

\[
 h_{ij}-\lambda t_j+
 \alpha\mathbb E(a_ib_j^2)-p t_i=0.
\]

Multiplying the same kernel relation by \(a_i^2\) and by \(b_i^2\) gives
the final two rows of the table. These cases exhaust all cubic monomials.
No root selection or elimination over an unspecified component is involved.

## 4. First traces leave exactly one circulation parameter

Put

\[
 w_i=t_i(2-t_i),\qquad H_{ij}=w_k h_{ij}\quad(\{i,j,k\}=\{1,2,3\}).
\]

Substituting the cubic table into \(N=G^{-1}T\) gives

\[
\begin{aligned}
 d\operatorname{tr}N_{a_i}
  &=\sum_{j\ne i}H_{ij}-R_i,\\
 d\operatorname{tr}N_{b_i}
  &=C_i-\sum_{j\ne i}H_{ji},
\end{aligned}
\tag{13}
\]

where

\[
\begin{aligned}
 R_i&=\lambda(1-t_i+2p)-p t_i(1+t_i^2),\\
 C_i&=2\lambda(t_i+p)+p\bigl[t_jt_k(3-t_i)-1+t_i\bigr].
\end{aligned}
\tag{14}
\]

These are explicit rational identities from the displayed matrix (7) and
the cubic table. They hold before imposing the trace equations.

Thus the off-diagonal \(3\times3\) table \(H\) has fixed row sums \(R_i\)
and column sums \(C_i\). A particular solution is

\[
 H^0_{ij}=\lambda(t_j+p)+p t_i\bigl[t_k(1+t_i)-1\bigr].
 \tag{15}
\]

Indeed, summing (15) over either index gives (14). A zero-diagonal
\(3\times3\) table with zero row and column sums is exactly

\[
 \kappa\begin{pmatrix}0&1&-1\\-1&0&1\\1&-1&0\end{pmatrix}
\]

for one scalar \(\kappa\). Consequently the complete solution of (10) is

\[
 \boxed{
 h_{ij}=
 \frac{\lambda(t_j+p)+p t_i[t_k(1+t_i)-1]
       +\varepsilon_{ijk}\kappa}{t_k(2-t_k)}.
 }
 \tag{16}
\]

Here \(\varepsilon_{123}=\varepsilon_{231}=\varepsilon_{312}=1\), and it
is minus one on the other three permutations. This \(\kappa\) is a cubic
moment circulation; it is not a reconstruction matching coefficient.

Only the strictly positive factors \(w_i\) are inverted in (16). In
particular, the reduction is valid when two or all three weights coincide.
We do not need to impose any additional conjugation relation on
\(h_{ij}\) or \(\kappa\): the necessary system already suffices.

As an additional exact rank certificate, take the five independent first
traces for \((a_1,a_2,a_3,b_1,b_2)\) and the normalization
\(w_3h_{12}-H^0_{12}=\kappa\). The determinant of their coefficient
matrix in the six ordered variables
\((h_{12},h_{13},h_{21},h_{23},h_{31},h_{32})\) is

\[
 -\frac{p^2\prod_{i=1}^3(2-t_i)^2}{d^5}\ne0.
 \tag{17}
\]

The elementary circulation argument establishes completeness directly;
(17) is an independently checkable certificate, not a generic-rank premise.

## 5. The six square traces

For pairwise distinct \(i,j,k\), define

\[
\begin{aligned}
 F_i={}&-\frac{\kappa^2}{d}
       +(t_i^2-1-t_jt_k)\lambda^2\\
     &+2t_i p(1+t_i+t_jt_k)\lambda+t_i^2p^2,\\[2mm]
 \widetilde F_i={}&-\frac{\kappa^2}{d}
       +t_i^2\lambda^2\\
     &+2t_i p(1+t_i+t_jt_k)\lambda
       +(t_i^2-1-t_jt_k)p^2.
\end{aligned}
\tag{18}
\]

Substitution of (16) into the same matrices gives the exact identities

\[
\begin{aligned}
 \operatorname{tr}N_{a_i}^2+4\lambda t_i^2
   &=\frac{2F_i}{t_j(2-t_j)t_k(2-t_k)},\\
 \operatorname{tr}N_{b_i}^2+4\lambda t_i^2
   &=\frac{2\widetilde F_i}{t_j(2-t_j)t_k(2-t_k)}.
\end{aligned}
\tag{19}
\]

All six identities include the omitted feature \(b_3\) through its
pointwise linear relation. They are polynomial identities after the
positive denominators are cleared, with \(t_3=1-t_1-t_2\).

**Certified computation.** (Supplied text; the author's verifier was never provided. The checks listed here are carried out by [PositiveWeight.py](PositiveWeight.py); see the review note above.) The attached verifier constructs every entry
of \(G\) and \(T_i\), verifies (13) without first substituting (16), and
checks all six identities (19) over
\(\mathbb Q(t_1,t_2,\lambda,\kappa)\). It separately reconstructs the
cubic moments using the two Laurent coordinates

\[
 a_1=U,\quad a_2=V,\quad a_3=\frac{\alpha}{UV},\quad
 b_1=\frac{t_1}{U},\quad b_2=\frac{t_2}{V},\quad
 b_3=\frac{t_3UV}{\alpha}.
\]

The eighteen initially unknown cubic Laurent moments reduce to the table
in Section 3. The table also has the direct derivation given there, so a
rational-function pivot in this independent replay is not used to remove
any physical locus.

By (11), (19), and positivity, every actual equality block satisfies

\[
 F_i=\widetilde F_i=0\qquad(i=1,2,3).
 \tag{20}
\]

## 6. Elimination: the weights must be equal

The circulation parameter cancels immediately:

\[
 F_i-\widetilde F_i
   =-(1+t_jt_k)(\lambda^2-p^2).
 \tag{21}
\]

Because \(1+t_jt_k>0\), equations (20) imply

\[
 D:=\lambda^2-p^2=0.
 \tag{22}
\]

Next, for distinct \(i,j,k\),

\[
\begin{aligned}
 F_i-F_j
  &=(t_i-t_j)\left[\lambda^2+
       2p(2-t_k)\lambda+(1-t_k)p^2\right]\\
  &=(t_i-t_j)D+
       (t_i-t_j)p(2-t_k)(2\lambda+p).
\end{aligned}
\tag{23}
\]

The second line follows using \(t_i+t_j=1-t_k\). Equations (20) and
(22) now give

\[
 (t_i-t_j)p(2-t_k)(2\lambda+p)=0.
\]

Since \(\lambda^2=p^2\), the final phase factor is either \(3p\) or
\(-p\), never zero. Thus \(t_i=t_j\). This holds for every pair, proving
\(t_1=t_2=t_3=1/3\).

There is also a division-free elimination certificate. Set
\(E_{ij}=F_i-F_j\). Direct expansion of (23) gives

\[
\boxed{\begin{aligned}
 &(2\lambda-p)\bigl[E_{ij}-(t_i-t_j)D\bigr]
       -4(t_i-t_j)p(2-t_k)D\\
 &\hspace{30mm}=3(t_i-t_j)p^3(2-t_k).
\end{aligned}}
\tag{24}
\]

The left side vanishes on (20) and (22), while
\(3p^3(2-t_k)>0\). This proves the same conclusion without splitting
phase branches or dividing by \(2\lambda+p\). [PositiveWeight.py](PositiveWeight.py) checks (21),
(23), and (24) for all three cyclic pairs. This completes the theorem.

## 8. What this closes, and what it does not

**Theorem, using the support-one and support-two results of [EqualityBranches.md](EqualityBranches.md).** At \(S=126\), the weight
triple is, up to permutation, either \((1,0,0)\) or
\((1/3,1/3,1/3)\). Hence \(p(1-27p)=0\) on the whole physical equality
locus. There is no unequal-positive partial block to complete or to equip
with a mate.

**Corollary, using the equal-weight completion theorem ([EqualityBranches.md](EqualityBranches.md)).** A full Hadamard with
no ordinary zero3 and an equality three-row block belongs to the existing
H8 completion class. This invokes the supplied equal-weight completion
theorem; it is not a new proof of that theorem or of the all-mates census.

**Corollary, using [H8Mates.md](H8Mates.md) and the quartet-edge no-zero3 theorem ([../../EdgeRigidity/QuartetEdgeCorollary.md](../../EdgeRigidity/QuartetEdgeCorollary.md)); see [StrictBound.md](StrictBound.md).** No actual
transition Hadamard of a putative MUB quartet can contain an equality
three-row block. The support-one branch has a zero3; the positive branch
is the quartet-excluded H8 class. Therefore every actual quartet edge,
for every selection of three rows, must satisfy \(S>126\).

**Open.** This does not prove a quartet must have an equality block. It
supplies neither a uniform positive gap above 126 nor the missing
shared-sixth-edge forcing implication. It does not prove no four MUBs.
Auxiliary matching-phase rows have not been identified with
actual transition rows and are not used as such.


## Verification

    python3 PositiveWeight.py

runs in about 6 s and exits nonzero on failure. It carries out, in exact
rational-function arithmetic, the checks A (cubic table), B (identities
(7), (13)-(16), (19), (21), (23), (24)) and C (H8 control) described in the
review above. It is an independent implementation: it does not import the
author's (unavailable) verifier or the archive reviewer's checker.
