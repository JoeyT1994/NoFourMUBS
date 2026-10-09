# Exact equality extension and the Diţă-family spectrum

## Scope and status

Three unconditional statements follow from explicit matrices, independently of the
atlas, reconstruction assumptions, or a global classification.

1. Every matrix in the transposed affine Fourier family has the equality
   spectrum. Except at a finite set of the displayed Fourier parameters, these
   transpose matrices are inequivalent to **every** matrix in the affine
   Fourier family as defined in the handoff. Thus equality is not confined to
   that stated family when equivalence means row/column phases and permutations
   and does not include transposition.
2. Every matrix in the one-parameter Diţă family has horizontal spectrum
   \(0^{[4]},6^{[10]},10^{[6]},12^{[5]}\) for \(J^TJ\). In particular its
   rank is 21 and its minimum positive singular value is \(\sqrt6\), uniformly
   throughout the parameter circle. This is a full positive-dimensional sector
   theorem, not a list of checked parameters.
3. At Björck's standard circulant matrix, the complete horizontal spectrum is
   obtained exactly and the minimum positive singular value is
   \(3(\sqrt3-1)>\sqrt3\). This is an additional check at a nonaffine
   matrix, not a theorem over a continuous sector.

The Diţă identity is certified by exact Laurent-polynomial arithmetic. The
transpose inequivalence argument is analytic; its explicit example also has an
independent exact spectral certificate. A classification of all equality cases and the sharp global assertion (S)
remain unresolved. The main report CONDITIONING.md separately proves (R)
under its explicitly permitted MC1–MC4 hypotheses.

## 1. Full-phase Gram matrix and transposition

Let \(\mathcal J_H\) denote the Jacobian on all 36 real phase coordinates,
and set

\[
G_H=\mathcal J_H^T\mathcal J_H,
\qquad
T_{H;(a,j),(b,k)}=
\operatorname{Re}\bigl(H_{aj}\overline{H_{bj}}H_{bk}\overline{H_{ak}}\bigr).
\]

For every order-six complex Hadamard,

\[
G_H=6I_{36}-T_H. \tag{1}
\]

For completeness, if \(X=H\circ u\), \(A=XH^*\), then the full derivative
of the row Gram is \(i(A-A^*)\). Its diagonal vanishes. Taking one complex
constraint per unordered row pair therefore gives

\[
\|\mathcal J_Hu\|^2
=\tfrac12\|A-A^*\|_F^2
=6\|u\|_F^2-\operatorname{Re}\operatorname{tr}(A^2),
\]

which proves (1). The 11-dimensional row-plus-column gauge is in the kernel;
its orthogonal complement is the 25-dimensional horizontal space. Hence
one obtains the horizontal spectrum by removing exactly 11 zeros from the
full-phase spectrum, with no change to positive eigenvalues.

Let \(P\) act on phase coordinates by matrix transposition, so
\((Pu)_{ja}=u_{aj}\). Directly from the four-entry product,

\[
T_{H^T}=PT_HP^T,\qquad G_{H^T}=PG_HP^T. \tag{2}
\]

Indeed, the product defining the left side at cells \((j,a),(k,b)\) is
the complex conjugate of the product defining the right side at
\((a,j),(b,k)\), and real parts agree. Transposition preserves the
horizontal space. Thus (2) proves full singular-spectrum invariance under
transposition, without relying on an identification of the row constraints
with column constraints by inspection.

## 2. Equality outside the stated Fourier family

Write \(\omega=e^{2\pi i/3}\) and

\[
F(z_1,z_2)_{(p,a),(q,j)}
=(-1)^{pq}\omega^{aj}z_j^p,
\quad p,q\in\{0,1\},\quad a,j\in\mathbb Z/3,
\quad z_0=1. \tag{3}
\]

The supplied Fourier-family proof establishes

\[
\operatorname{spec}(G_F)
=0^{[15]},3^{[4]},9^{[12]},12^{[5]}.
\]

Equation (2) gives exactly the same spectrum for \(F(z_1,z_2)^T\).
Conjugation and Hadamard equivalence preserve it as well.

### An invariant that distinguishes the two families

Call two columns an *ER pair* when their coordinatewise quotient is contained
in one antipodal pair \(\{\xi,-\xi\}\). Multiplication of rows by phases
cancels from the quotient. Multiplication of either column by a phase rotates
the two possible values together. Row permutations reorder the values and
column permutations relabel the pairs. Consequently the number of column ER
pairs is invariant under the equivalence relation in the handoff.

Every matrix (3) has at least three column ER pairs, pairing the columns
\((0,j)\) and \((1,j)\) for each \(j\). Their quotient is \((-1)^p\).

Now inspect row ER pairs of (3). Two distinct rows with the same \(p\)
have quotient \(\omega^{(a-b)j}\), which takes three distinct values and
cannot form an antipodal pair. Between rows with different \(p\), the
quotient, up to conjugation, is

\[
(-1)^q\omega^{dj}z_j,
\qquad d\in\mathbb Z/3.
\]

Since the \(j=0\) values include \(1,-1\), this is an ER pair precisely
when

\[
z_1\in\{\omega^{-d},-\omega^{-d}\},\qquad
z_2\in\{\omega^{-2d},-\omega^{-2d}\}. \tag{4}
\]

Thus a matrix (3) has a row ER pair if and only if its parameters lie in the
12-element set (4), allowing the three values of \(d\) and the two
independent signs. Everywhere else its transpose has no column ER pair.
Since every member of the stated affine Fourier family has a column ER pair,
we conclude:

> If \((z_1,z_2)\) does not lie in the finite set (4), then
> \(F(z_1,z_2)^T\) attains \(\sigma_{\min}^{+}=\sqrt3\) and is
> inequivalent to every matrix \(F(a,b)\) under the specified equivalence.

For an explicit example take \(z_1=z_2=i\). Then (4) fails for every
\(d\), since \(i\) is not a sixth root of unity. Its transpose is a
Butson matrix with entries among the twelfth roots of unity. The script
`verify_transpose_equality.py` builds its 6-by-6 exponent matrix directly,
verifies the Hadamard equations, verifies its zero count of column ER pairs,
and certifies the spectrum independently of the supplied Fourier proof.

For that spectral certificate, put \(B=2G\). The script checks exactly

\[
B(B-6I)(B-18I)(B-24I)=0,
\]

\[
\operatorname{tr}B=360,\quad
\operatorname{tr}B^2=6912,\quad
\operatorname{tr}B^3=139968.
\]

All entries belong to \(\mathbb Q(\sqrt3)\). The distinct roots and
the first three traces, together with dimension 36, uniquely determine
multiplicities \((15,4,12,5)\). This independently gives the asserted
horizontal equality spectrum after division by two and removal of the 11
gauge zeros.

If one chooses to enlarge equivalence by explicitly including transposition,
these two equality families belong to the same enlarged class. This result
does not establish equality outside their union under that enlarged relation.

### Intrinsic description of this equality sector

There is an elementary converse to the structural observation about ER
pairs:

> An order-six Hadamard has a row ER pair if and only if it is equivalent
> to a member of the transposed stated Fourier family. It has a column ER
> pair if and only if it is equivalent to a member of the stated Fourier
> family.

Here is a direct proof for rows. Normalize the two ER rows, and reorder
columns, to make them
\((1,1,1,1,1,1)\) and \((1,1,1,-1,-1,-1)\). Orthogonality of
each of the other four rows to these two makes each of its two triples
sum to zero. Three unit complex numbers sum to zero exactly when they
are a common phase times the three distinct cube roots of unity.
Multiplying each remaining row by a phase makes its first entry 1, so
its first triple is either \(v=(1,\omega,\omega^2)\) or
\(\bar v\), after choosing the order of columns 2 and 3.

If two rows have the same first triple, the inner product of their
second triples must be \(-3\). Equality in Cauchy--Schwarz forces those
second triples to be negatives. There can be at most two rows of each
first-triple type: three such rows would require their second triples
to be pairwise negatives, which is impossible. Since there are four
rows, there are exactly two of each type.

Permute the last three columns so the second triple of one row of
first-triple type \(v\) is \(a v\). Its partner has second triple
\(-a v\). Rows of the other type are orthogonal to these, and their
first-triple inner product is already zero, so their second triples
are orthogonal to \(v\). They also sum to zero. In \(\mathbb C^3\),
the subspace orthogonal to both \((1,1,1)\) and \(v\) is the line
spanned by \(\bar v\). Thus the four rows take the form

\[
(v,av),\quad(v,-av),\quad(\bar v,b\bar v),\quad
(\bar v,-b\bar v),\qquad |a|=|b|=1.
\]

Together with the first two rows, this is \(F(a,b)^T\) after the row
order \((q,j)=(0,0),(1,0),(0,1),(1,1),(0,2),(1,2)\).
Transposing proves the column assertion. The reverse assertions follow
from the displayed column pairs of (3).

Therefore the entire set of Hadamards with **any ER row or column pair**
is an exact equality sector. The still-open part of Task C can be
stated sharply: does spectral equality force an ER row or column pair?

The two displayed equality families meet, modulo the specified equivalence,
only in the Fourier class. Indeed, a member of the stated Fourier family
that is also equivalent to a member of its transpose family must have a
row ER pair, so (4) applies. Write
\(z_j=\epsilon_j\omega^{-dj}\), with \(\epsilon_0=1\) and
\(\epsilon_1,\epsilon_2\in\{\pm1\}\). A cyclic permutation of the
three lower-block rows removes the factor \(\omega^{-dj}\). Swapping
the two columns \((0,j),(1,j)\) whenever \(\epsilon_j=-1\) then
removes each sign. The resulting matrix is \(F(1,1)\), equivalent to
the order-six Fourier matrix. The converse holds because the Fourier
matrix is symmetric and belongs to both families.

## 3. Exact spectrum on the full Diţă family

The matrix convention used here is

\[
D(c)=\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&i&-i&-ic&ic\\
1&i&-1&i&-i&-i\\
1&-i&i&-1&ic&-ic\\
1&-i/c&-i&i/c&-1&i\\
1&i/c&-i&-i/c&i&-1
\end{pmatrix},\qquad |c|=1. \tag{5}
\]

This is the Diţă family displayed in Example 2, equation (10), of Ákos K.
Matszangosz and Ferenc Szöllősi, *A characterization of complex Hadamard matrices appearing in
families of MUB triplets*, Designs, Codes and Cryptography (2024),
<https://doi.org/10.1007/s10623-024-01503-w>.
The present proof uses (5) explicitly and verifies its orthogonality itself;
it does not assume any classification theorem from that source.

### Theorem

For every \(|c|=1\), the horizontal phase Jacobian of (5) has

\[
\boxed{\operatorname{spec}(J_{D(c)}^TJ_{D(c)})
=0^{[4]},6^{[10]},10^{[6]},12^{[5]}.} \tag{6}
\]

In particular \(\dim\ker J=4\), and every nonzero singular value is at
least \(\sqrt6\). Hence this entire family has a strict margin above
the conjectured equality value \(\sqrt3\).

### Exact polynomial proof

Each entry of (5) has the form \(i^{P_{aj}}c^{E_{aj}}\), where the
integer tables \(P,E\) are explicitly included in
`verify_dita_family.py`. Orthogonality is checked as a Laurent identity:
for each row pair, group the six terms by exponent of \(c\) and verify
that their Gaussian-integer coefficients are zero (or 6 for equal rows).
All entries have modulus one when \(|c|=1\), so this proves that (5) is
a Hadamard for the entire circle.

Form \(B(c)=2G_{D(c)}\). Put

\[
r=P_{aj}-P_{bj}+P_{bk}-P_{ak},\qquad
e=E_{aj}-E_{bj}+E_{bk}-E_{ak}.
\]

Then each entry of \(B\) is explicitly

\[
B_{(a,j),(b,k)}
=12\delta_{ab}\delta_{jk}
-i^r c^e-i^{-r}c^{-e}. \tag{7}
\]

In the finite Laurent matrix ring
\(\mathrm{Mat}_{36}(\mathbb Z[i][c,c^{-1}])\), the following identities
hold:

\[
\boxed{B(B-12I)(B-20I)(B-24I)=0,} \tag{8}
\]

\[
\boxed{\operatorname{tr}B=360,\quad
\operatorname{tr}B^2=6720,\quad
\operatorname{tr}B^3=134400.} \tag{9}
\]

These identities are supplied with a coefficientwise certificate. The
verifier constructs (7) from the tables, multiplies the four Laurent matrix
factors of (8) by exact coefficient convolution, and checks that **every**
Gaussian-integer entry in every coefficient matrix vanishes. It likewise
checks every Laurent coefficient in (9). Coefficients are stored as pairs of
NumPy object arrays whose elements are Python unbounded integers. There are
no finite precision complex operations, parameter grids, numerical rank
thresholds, or unverified truncations in the certificate. The script exits
nonzero at any failed identity.

For \(|c|=1\), (7) is real symmetric. Thus (8) places its complete real
spectrum in \(\{0,12,20,24\}\). Let the four multiplicities be
\(m_0,m_{12},m_{20},m_{24}\). Dimension and (9) give

\[
\begin{pmatrix}
1&1&1&1\\
0&12&20&24\\
0&12^2&20^2&24^2\\
0&12^3&20^3&24^3
\end{pmatrix}
\begin{pmatrix}m_0\\m_{12}\\m_{20}\\m_{24}\end{pmatrix}
=\begin{pmatrix}36\\360\\6720\\134400\end{pmatrix}.
\]

The coefficient matrix is a Vandermonde matrix with distinct nodes, hence
invertible. Its unique solution is \((15,10,6,5)\). Dividing the
eigenvalues by two and removing 11 gauge zeros proves (6). This argument
includes every point of the parameter circle, including roots of unity and
any points at which chosen dephased coordinates might be inconvenient.

### Polynomial tangent projector

Writing \(G=G_{D(c)}\), its full-phase kernel projector is

\[
P_0=-\frac{(G-6I)(G-10I)(G-12I)}{720}
=I-\frac7{20}G+\frac7{180}G^2-\frac1{720}G^3. \tag{10}
\]

Let \(P_{\mathrm{gauge}}\) be the fixed orthogonal projector onto row-plus-
column phases. Then \(P_0-P_{\mathrm{gauge}}\) is a smooth, explicitly
polynomial projector onto the rank-four horizontal kernel. On the
orthogonal normal space, \(G\ge6I\). This gives a useful uniform local
linear certificate throughout (5), while making no claim that all four
kernel directions integrate into actual Hadamard deformations.

## 4. Björck's circulant matrix: exact nonaffine check

Let

\[
d=\frac{1-\sqrt3}{2}+\frac{i\sqrt{2\sqrt3}}2,
\qquad v=(1,id,-d,-i,-\bar d,i\bar d),
\]

and let \(C_{aj}=v_{j-a\pmod6}\). This is the standard Björck
circulant matrix, as displayed for example in Example 2.2.7 of Ferenc
Szöllősi's thesis, *Complex Hadamard Matrices* (2012),
<https://arxiv.org/html/1110.5590v1>.
The verifier checks its Hadamard equations directly.

Put \(r=\sqrt3\) and

\[
\lambda_\pm=6r-3\pm3\sqrt{49-28r}.
\]

The exact horizontal spectrum is

\[
\boxed{
0^{[4]},\quad12^{[5]},\quad(6r)^{[2]},\quad
(36-18r)^{[2]},\quad(18-6r)^{[4]},\quad
\lambda_-^{[4]},\quad\lambda_+^{[4]}.
} \tag{11}
\]

This follows by the same annihilator-and-moments method as the Diţă
calculation. With the full-phase Gram matrix \(G\), verify

\[
\begin{aligned}
0={}&G(G-12I)(G-6rI)(G-(36-18r)I)(G-(18-6r)I)\\
&\quad\cdot\bigl(G^2-(12r-6)G+(216r-324)I\bigr).
\end{aligned} \tag{12}
\]

The script `verify_bjorck.py` establishes (12) exactly, then checks
the first seven moments (degrees 0 through 6) against the multiplicities
in (11), with 15 full-phase zeros. The seven roots of (12) are distinct:
its five displayed linear roots are distinct, substitution of each in the
quadratic gives a nonzero element of \(\mathbb Q(r)\), and the
quadratic's discriminant \(36(49-28r)\) is positive. Thus the moments
uniquely determine the seven multiplicities by a Vandermonde system.

For the exact arithmetic take \(t=\sqrt{2\sqrt3}>0\), so
\(t^4=12\) and \(r=t^2/2\). All matrix entries belong to
\(\mathbb Q(t,i)\) and Gram entries belong to \(\mathbb Q(t)\).
The polynomial \(t^4-12\) is irreducible by Eisenstein at 3, so the
four coefficient coordinates are a basis. The script stores exact
rational coefficients when building \(C\), then verifies that
\(4G\in\operatorname{Mat}_{36}(\mathbb Z[t])\) and uses integer
matrix arithmetic reduced modulo \(t^4=12\) for (12) and all the
moments. The script has no floating point acceptance step.

The smallest positive squared singular value is \(36-18r\). To
verify the only less immediate comparison, note that

\[
\lambda_->36-18r
\iff 8r-13>\sqrt{49-28r}.
\]

The right side follows from \(13/8<r<26/15\): the left member is
positive, and its square minus the radicand is
\(312-180r>0\). The other comparisons follow immediately from
\(r>3/2\). These rational bounds on \(r\) follow by squaring.
Therefore

\[
\sigma_{\min}^{+}(J_C)=\sqrt{36-18\sqrt3}
=3(\sqrt3-1)>\sqrt3.
\]

## 5. Reproduction

Run, from a directory containing these scripts,

```sh
python3 verify_dita_family.py
python3 verify_transpose_equality.py
python3 verify_bjorck.py
```

Only Python and NumPy are required. All three scripts completed successfully
in the supplied workspace, in under two seconds altogether. Explorations
with additional random Hadamards were floating point only and support no
additional theorem claimed in this note.
