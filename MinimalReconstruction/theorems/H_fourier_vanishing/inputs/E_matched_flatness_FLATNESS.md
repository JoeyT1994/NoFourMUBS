# Matched flatness without the classification theorem

## Result and scope

**Both identities requested in G1 are certified exactly over
\(\mathbb Q(a,b,c,d)\).** There is also a smaller, independent G2 proof:
four weighted flatness defects reduce to eight exact rational identities
involving only third moments. These eight identities take about one CPU
second to verify in the initial run.

Together with the supplied strict side-existence theorem, either route proves
`MatchedExistence` on the entire strict seed domain. Neither route uses the
classification paper, the product-regular locus, a generic Hadamard family,
irreducibility of a completion variety, or a density/continuation argument.

This is a paper proof with exact computational algebra certificates. It is
not a newly compiled Lean proof of `MatchedExistence`. The separate
`MatchedDensityReach` obligation and the finite atlas certificate are outside
this result. In particular, this report does not assert an unconditional
no-four-MUB theorem.

All indices below are 0, 1, 2 unless specified otherwise. A star on a scalar
means conjugation; a dagger on a matrix means conjugate transpose. `adj` means
the classical adjugate.

## 1. Precise theorem

Let \(a,b,c,d\) be unit complex numbers and put

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},\qquad
G_h=6I-EE^\dagger,\qquad G_v=6I-E^{\mathsf T}\overline E.
\]

For either Gram matrix write

\[
G=\begin{pmatrix}3&S&T\\s&3&Q\\t&r&3\end{pmatrix},
\quad S=\bar s,\ T=\bar t,\ Q=\bar r,
\]

and define

\[
\begin{aligned}
X&=sS,&Y&=tT,&Z&=rQ,\\
p&=X+Y+Z,&J&=srT+SQt,\\
g&=27-3p+J,&\eta&=9-p+J,\\
\chi&=XY+XZ+YZ-XYZ-(p-9)(p-18)+(p-15)J,\\
R&=4g^2\eta-\chi^2.
\end{aligned}
\]

The horizontal and vertical \(g,\eta,\chi\) agree. Set

\[
\begin{aligned}
P_0&=rs^2+Qt^2+(3-Z)st,\\
P_1&=tS^2+r^2T+(3-Y)rS,\\
P_2&=sT^2+Q^2S+(3-X)QT,\\
(c_0,c_1,c_2)&=(9-Z,9-Y,9-X).
\end{aligned}
\]

For a normalized phase side \(A=(1;x;y)\), let

\[
\Theta(A)=-\frac{\operatorname{perm}(A)\det A}
 {\overline{\det A}\prod_jx_j\prod_jy_j}.
\]

**Theorem 1 (uniform matched flatness).** Suppose \(R>0\). Let \(B,V\)
be *any* normalized phase sides satisfying

\[
BB^\dagger=G_h,\qquad VV^\dagger=G_v,
\qquad \Theta(B)=z,\qquad\Theta(V)=\bar z,
\]

where either
\(z=(\chi+i\sqrt R)/(2g)\) or
\(z=(\chi-i\sqrt R)/(2g)\). Then, with

\[
C=V^{\mathsf T},\qquad
K=-E^\dagger G_h^{-1},\qquad D=CKB,
\]

every entry of \(D\) has modulus one. Consequently
\(H=\begin{pmatrix}E&B\\C&D\end{pmatrix}\) is a dephased Hadamard matrix.

The statement concerns every choice of sides with the stated data. It does
not require a particular square-root orientation, cube-root choice, or side
representative.

**Corollary 2 (L1).** The supplied side-existence theorem provides such
\(B,V\) at every strict seed with the positive horizontal choice. Therefore
`MatchedExistence` holds, as a mathematical theorem, using that side theorem
and Theorem 1.

To check the exact signature convention, on a normalized phase side

\[
g\Theta(A)=-\operatorname{perm}(A)\det(A)^2
  \prod_{i,j}\overline{A_{ij}}=T(A).
\]

Also \(T(V^{\mathsf T})=T(V)\). Thus the completed matrix satisfies precisely
\(2T(B)=\chi+i\sqrt R\) and \(2T(C)=\chi-i\sqrt R\), not merely an
equivalent relabeling of the two signatures.

## 2. All divisors are valid throughout the strict domain

Here is the elementary strict-domain argument, included to make the scope
explicit. Determinant expansion gives

\[
\det G=g,\qquad
\eta+\det(6I-G)=36-4p,\qquad g=\eta+2(9-p).
\]

Since \(6I-G\) is a Gram matrix, its determinant is nonnegative. From
\(R>0\), first \(g\ne0\), then \(\eta>0\), then \(p<9\), and hence
\(g>0\). Since \(X,Y,Z\ge0\), all are less than 9. The leading principal
minors \(3,9-X,g\) are positive, so \(G\) is positive definite.

For each side and each \(j\), direct expansion gives

\[
P_j\overline{P_j}=g^2+c_j\chi+c_j^2\eta
=\eta\left(c_j+\frac\chi{2\eta}\right)^2+\frac R{4\eta}>0.
\]

Therefore \(g\), all six horizontal/vertical \(P_j\), and their conjugates
are nonzero. The only other divisors in our rational targets are phase
monomials and nonzero rational constants. No exceptional subset is removed
from \(R>0\).

`verify_structural.py` checks the determinant identities, the three generic
\(P_j\)-norm identities, and horizontal/vertical invariant equality using
independent, standard-library integer Laurent-polynomial arithmetic. The
inequalities above are the paper part of the proof.

## 3. Actual-side formulas needed by both proofs

Let \(A=(1;x;y)\) be an actual invertible normalized phase side. Write
\(U=\prod_jx_j\), \(V_0=\prod_jy_j\), \(\pi=\operatorname{perm}A\),
and \(\delta=\det A\). We use \(V_0\) here to distinguish a scalar product
from the vertical side matrix \(V\).

The universal phase-side identities are

\[
g=|\delta|^2,\quad \eta=|\pi|^2,
\quad \chi=g(z+\bar z),\quad z\bar z=\eta,
\quad z=\Theta(A).
\]

Define

\[
\lambda_0=-U V_0\bar\delta/\delta,
\qquad\lambda_1=\lambda_0/U,
\qquad\lambda_2=\lambda_0/V_0.
\]

They are unit phases. The following three Laurent identities prove their
explicit formulas:

\[
\begin{aligned}
\delta^2&=U V_0 c_0\bar\pi-U V_0\overline{P_0},\\
\delta^2&=U V_0 c_1\bar\pi-V_0\overline{P_1},\\
\delta^2&=U V_0 c_2\bar\pi-U\overline{P_2}.
\end{aligned}
\]

Indeed they imply

\[
\lambda_j\overline{P_j}=g+c_j\bar z,
\qquad \pi=z\lambda_0,
\qquad U=\lambda_0\bar\lambda_1,
\qquad V_0=\lambda_0\bar\lambda_2.
\]

These phase-side identities are also checked by `verify_structural.py`;
they do not assume a completed Hadamard matrix.

Put \(h=\chi/g\), so \(z^2-hz+\eta=0\). In particular, for
\(j=1,2\), define

\[
u_j(z)=\frac{g^2+c_j\chi+c_0c_j\eta+g(c_0-c_j)z}
 {P_0\overline{P_j}},
\]

\[
\beta(z)=\frac{\chi+c_0\eta-gz}{P_0},
\qquad
\ell_j(z)=\frac{c_j\eta+gz}{\overline{P_j}}.
\]

For the actual side these are respectively

\[
u_1=\bar U,\qquad u_2=\overline{V_0},
\qquad \beta=\bar\pi,\qquad\ell_j=z\lambda_j.
\]

For example, expand
\((g+c_j\bar z)(g+c_0z)\), use \(z\bar z=\eta\) and
\(g\bar z=\chi-gz\), and divide by
\(\overline{P_j}P_0\) to obtain \(u_j\). Thus every displayed quantity
is affine in \(z\), with known nonzero divisors.

## 4. The smaller proof: four weighted third moments

### 4.1 Why four weighted defects suffice

The forced block construction already satisfies both
\(HH^\dagger=6I\) and \(H^\dagger H=6I\), without assuming flatness of
\(D\). For completeness, put \(F=6I-E^\dagger E=G_v^{\mathsf T}\).
Then \(C^\dagger C=F\) and

\[
I+E^\dagger G_h^{-1}E=6F^{-1}.
\]

The off-diagonal block of \(HH^\dagger\) is
\(EC^\dagger+BD^\dagger=0\), and its lower diagonal block is

\[
CC^\dagger+DD^\dagger
=C(I+E^\dagger G_h^{-1}E)C^\dagger
=6CF^{-1}C^\dagger=6I.
\]

The upper block is \(EE^\dagger+BB^\dagger=6I\). A square matrix with
\(HH^\dagger=6I\) is invertible, giving the other Gram equality too.

Define the real defect matrix

\[
\Delta_{ij}=|D_{ij}|^2-1.
\]

The first three entries of each lower row and each right column are already
unit phases. Therefore

\[
\sum_j\Delta_{ij}=0,\qquad\sum_i\Delta_{ij}=0.
\tag{4.1}
\]

Now form the invertible change of coordinates

\[
W=\overline V\,\Delta\,\overline B^{\mathsf T},
\qquad
W_{pq}=\sum_{i,j}\overline{V_{pi}}\,
 \overline{B_{qj}}\,(|D_{ij}|^2-1).
\tag{4.2}
\]

The first row of each side consists of ones. Equation (4.1) therefore kills
the entire first row and first column of \(W\). It remains to show only
\(W_{11}=W_{12}=W_{21}=W_{22}=0\). Then \(W=0\); since
\(\det(B)\overline{\det(B)}=\det(V)\overline{\det(V)}=g>0\),
equation (4.2) implies \(\Delta=0\).

### 4.2 Universal third-moment matrices

For a normalized phase side \(A\), define

\[
Q^{(p)}_{ac}=\sum_j A_{aj}\overline{A_{cj}A_{pj}},\qquad p=1,2.
\]

In the Gram notation above, their exact formulas are

\[
Q^{(1)}(G,z)=
\begin{pmatrix}
S&S^2-2s u_1&ST-\beta\\
3&S&T\\
r&Sr-\ell_1&S
\end{pmatrix},
\tag{4.3}
\]

\[
Q^{(2)}(G,z)=
\begin{pmatrix}
T&ST-\beta&T^2-2t u_2\\
Q&T&TQ-\ell_2\\
3&S&T
\end{pmatrix}.
\tag{4.4}
\]

For example, \(\sum_jx_j^{-2}=S^2-2s\bar U\). Also
\(\sum_j y_j/x_j^2=Sr-\bar U\pi=Sr-z\lambda_1\).
The other entries follow by direct summation or interchanging the two
nonconstant rows. The included universal third-moment verifier checks all
18 entries over six independent Laurent variables.

Write
\(Q_h^{(q)}(z)=Q_{h,0}^{(q)}+zQ_{h,1}^{(q)}\) and similarly for
\(Q_v^{(p)}\). Expanding (4.2), using \(D_{ij}=\sum_{a,b}V_{ai}K_{ab}B_{bj}\),
gives

\[
W_{pq}=\sum_{a,c}Q_v^{(p)}(\bar z)_{ac}
 \bigl(KQ_h^{(q)}(z)K^\dagger\bigr)_{ac}
 -(G_v)_{0p}(G_h)_{0q}.
\tag{4.5}
\]

The contraction is entrywise with the same ordered indices \((a,c)\).
Equivalently it is \(\operatorname{tr}((Q_v^{(p)})^{\mathsf T}
KQ_h^{(q)}K^\dagger)\); it does not use the Hermitian inner product of
these two matrices. This index convention is essential.

### 4.3 The eight exact certificates

Let \(M_i^{(q)}=KQ_{h,i}^{(q)}K^\dagger\) for \(i=0,1\). Substitute
\(\bar z=h-z\) in (4.5) and reduce \(z^2=hz-\eta\). The coefficients are

\[
\begin{aligned}
F^{pq}_1&=\sum_{a,c}\left(
 Q_{v,0}^{(p)}{}_{ac}M_1^{(q)}{}_{ac}
 -Q_{v,1}^{(p)}{}_{ac}M_0^{(q)}{}_{ac}\right),\\
F^{pq}_0&=\sum_{a,c}\left[
 (Q_{v,0}^{(p)}+hQ_{v,1}^{(p)})_{ac}M_0^{(q)}{}_{ac}
 +\eta Q_{v,1}^{(p)}{}_{ac}M_1^{(q)}{}_{ac}\right]
 -(G_v)_{0p}(G_h)_{0q}.
\end{aligned}
\tag{4.6}
\]

**Exact algebra lemma.** For all four \((p,q)\in\{1,2\}^2\),
\(F^{pq}_0=F^{pq}_1=0\) in \(\mathbb Q(a,b,c,d)\), where formal
conjugation sends each seed variable to its reciprocal.

`direct/verify_third_moments.py` constructs (4.3)--(4.6) from these definitions,
uses classical cofactors for \(G_h^{-1}\), and evaluates all eight numerators
to exact zero. It does not substitute sample seeds or call a flatness theorem.
The corresponding polynomial and coefficient-slice certificates make the
finite cancellations independently replayable; their detailed format is
documented in the direct-proof directory.

Concretely, the certificate contains 255 distinct rational polynomials as
integer-coefficient slices in \(a\). It gives 110 coefficient identities in
\(b,c,d\), plus 136 distinct cofactor/product identities. Every stored
polynomial slice has at most 1,730 monomials. For each residual
\(\sum_k n_k/d_k\), explicit cofactors \(C_k\) and a positive integer
\(L\) satisfy

\[
D_0=d_kC_k,\qquad I_k=L n_kC_k,\qquad\sum_k I_k=0.
\]

The standard-library checker independently verifies these products and
every coefficient sum. The rational verifier separately reconstructs the
target expressions and compares the full coefficient data, so the
certificate is tied to (4.6), not merely to an unrelated polynomial zero.

No irreducibility assertion about the sheet quadratic is needed: both
coefficients vanish separately.

The rational functions are in the localization at the divisors listed in
Section 2. Thus the algebra lemma specializes at every strict seed. It gives
\(W_{pq}=0\), and Section 4.1 gives \(\Delta=0\). This proves Theorem 1.

The matching enters precisely at the substitution \(\bar z=h-z\) in (4.5).
Using the same side root vertically does not give the identities (4.6).

## 5. Exact certification of the requested L-id identities

This section supplies the preferred G1 route as a second proof. It was
computed independently of the third-moment cancellation.

### 5.1 The fourth-moment formula

For a side column \(b=(1,x,y)^{\mathsf T}\), set

\[
\phi(b)=(1,x,y,x^2,xy,y^2)^{\mathsf T},\qquad
T_h=\sum_j\phi(b_j)\phi(b_j)^\dagger,
\]

and define \(T_v\) similarly from columns of \(V\). For unordered pairs
\((0,0),(0,1),(0,2),(1,1),(1,2),(2,2)\), set

\[
L_{(a,b),(c,d)}=
\sum_{(a',b')\in\operatorname{Ord}(a,b)}
\sum_{(c',d')\in\operatorname{Ord}(c,d)}K_{a'c'}K_{b'd'},
\]

where `Ord` contains distinct orderings. Expansion gives
\((v^{\mathsf T}Kb)^2=\phi(v)^{\mathsf T}L\phi(b)\), and hence

\[
\sum_{i,j}|D_{ij}|^4=
 \operatorname{tr}(T_v^{\mathsf T}LT_hL^\dagger).
\tag{5.1}
\]

To reproduce the moment matrices, index by
\(e=(0,0),(1,0),(0,1),(2,0),(1,1),(0,2)\) and set
\(T_{ij}=m_{e_i-e_j}\), where

\[
\begin{aligned}
m_{00}&=3,&m_{10}&=s,&m_{01}&=t,&m_{1,-1}&=Q,\\
m_{20}&=s^2-2US,&m_{02}&=t^2-2V_0T,&m_{11}&=st-\pi,\\
m_{2,-1}&=sQ-U\bar\pi,&m_{-1,2}&=tr-V_0\bar\pi,&
m_{2,-2}&=Q^2-2(U/V_0)r.
\end{aligned}
\]

Use \(m_{-i,-j}=\overline{m_{ij}}\). Products and permanent follow from
Section 3. Explicitly,

\[
\frac{\lambda_i}{\lambda_j}=
\frac{g^2+c_i\chi+c_ic_j\eta+g(c_j-c_i)z}
 {\overline{P_i}P_j},\qquad
\pi=\frac{gz+c_0\eta}{\overline{P_0}}.
\tag{5.2}
\]

Thus use \((i,j)=(0,1),(0,2),(2,1)\) for \(U,V_0,U/V_0\).
All entries reduce to degree at most one in \(z\).

The 36 universal moment entries and the symmetric-square multiplicities
are checked independently by `verify_structural.py`. This check is over
independent symbolic phase variables, not the anchor alone.

### 5.2 The two certified zero identities

Write \(T_h=T_{h,0}+zT_{h,1}\), \(T_v=T_{v,0}+zT_{v,1}\), and

\[
A_{ij}=\operatorname{tr}(T_{v,i}^{\mathsf T}LT_{h,j}L^\dagger).
\]

The successful exact calculation establishes

\[
\boxed{A_{01}-A_{10}=0},\qquad
\boxed{A_{00}+\frac\chi g A_{10}+\eta A_{11}-9=0}.
\tag{L-id}
\]

Indeed, after substituting the matched vertical sheet,

\[
\operatorname{tr}(T_v(\bar z)^{\mathsf T}LT_h(z)L^\dagger)-9
=A_{00}+hA_{10}+\eta A_{11}-9+z(A_{01}-A_{10}).
\]

Equation (L-id) therefore sets (5.1) equal to 9. From the already proved
block Gram equations, \(\sum_{i,j}|D_{ij}|^2=9\). Consequently

\[
\sum_{i,j}(|D_{ij}|^2-1)^2
=\sum_{i,j}|D_{ij}|^4-2\sum_{i,j}|D_{ij}|^2+9=0.
\]

Every summand is a nonnegative real square, so every one vanishes. This
is the second proof of Theorem 1 and closes G1 exactly as requested.

### 5.3 What changed computationally

The original attempts repeatedly computed GCDs and least common
denominators after those denominators had become large. The successful
verifier factors only the small source denominators. There are 17 recorded
factors: four phase variables, a 31-term factor from \(g\), and twelve
51-term factors from the horizontal/vertical \(P_j\) and their conjugates.

Every later denominator is decomposed by exact division into these factors.
For a term \(n_k/d_k\), write \(d_k=\prod_j f_j^{e_{kj}}\) and set
\(E_j=\max_k e_{kj}\). The residual numerator is computed as

\[
\sum_k n_k\prod_j f_j^{E_j-e_{kj}}.
\tag{5.3}
\]

This is ordinary integer/rational polynomial arithmetic. Factorization is
not trusted as an oracle: the source factorizations are multiplied back,
and every denominator decomposition is verified by exact division with
final quotient one. Irreducibility of the factors is not needed.

There are 48 nonzero rational terms in the linear identity and 85 in the
constant identity. Both cleared residuals are the zero polynomial. The
first complete run took 140.60 CPU seconds with peak RSS 755,636 KiB.
See `certificate_agent/factored_rational.log` and the certificate format
documentation. The final combined replay measurements are in `STATUS.md`.

## 6. Exact anchor check and why matching is substantive

An independent verifier uses a 16-dimensional rational basis of
\(\mathbb Q(i,\sqrt3,\sqrt5,\sqrt7)\) to replay the supplied anchor.
It verifies its 36 unit entries, complete row Gram matrix, dephasing,
side Grams, signatures, forced \(D\), and actual moment matrices.

The exact values are

\[
g=\frac{243}{16},\quad \eta=\frac{117}{16},\quad
\chi=-\frac{5103}{64},\quad R=\frac{1594323}{4096},
\]

\[
z_+=-\frac{21}{8}+\frac{3i\sqrt3}{8},\qquad z_-=\bar z_+,
\]

and

\[
(A_{ij})=
\begin{pmatrix}
-1215/49&-96/7\\
-96/7&-256/49
\end{pmatrix}.
\]

These obey both L-id equalities. At the same seed, either equal-root
pairing \((z_+,z_+)\) or \((z_-,z_-)\) has exact fourth-moment defect

\[
\sum_{i,j}(|D_{ij}|^2-1)^2=\frac{216}{49}>0.
\]

The conjugate-root pairings have zero defect. This demonstrates directly
that the proof uses matching. It is an exact diagnostic, not the evidence
for universality; the universal certificates in Sections 4 and 5 provide
that evidence.

## 7. Formal integration and remaining scope

For Lean integration, the third-moment route avoids the six-by-six
symmetric square and the large final L-id polynomials. Its proof consists
of: the actual-side formulas; the two third-moment matrices; the eight
coefficient identities (4.6); the row/column norm equations; and invertibility
of the two sides. The coefficient-slice certificate gives explicit
integer-coefficient polynomial equalities and denominator cofactors for a
`field_simp` / `ring` or `linear_combination` port.

No executable Lean proof has been compiled here. The supplied side theorem
is used at its stated paper level; its separate formalization is not
silently assumed complete. Once that theorem and this certificate are
ported, they provide the `hE : MatchedExistence` input of the existing main
theorem. They do not supply `hD : MatchedDensityReach` or the atlas input.

No assertion is made for a seed with \(R=0\) where the displayed divisors
vanish. Algebraically the identities hold wherever their original divisors
are nonzero, so Theorem 1 also applies to any actual matched sides there;
the promised strict-domain theorem needs no such extension.

## 8. Reproduction and provenance

Run `python verify_all.py` from this output directory after installing the
dependencies in `requirements.txt`. The wrapper runs the small structural
identities, universal third moments, the direct certificates, the independent
anchor, and the full L-id calculation, and exits nonzero if any required
stage fails. It records wall time, CPU time and peak memory.

The task and exact target come from the supplied `PROMPT.md`,
`reference/Step2Audit/work/geometry_obligations.md` Section 1, and
`reference/lean/NoFourMUBs/Step2/Statements.lean`. The side-existence input is
`reference/MinimalConstruction/Proofs/SIDE_FIBER.md`. The original fourth
moment identities and failed rational scripts supplied the starting formulas;
the successful factor treatment, third-moment reduction, independent Laurent
checks, certificate data and proof assembly are in this output. Input hashes
are recorded in `PROVENANCE.json`.
