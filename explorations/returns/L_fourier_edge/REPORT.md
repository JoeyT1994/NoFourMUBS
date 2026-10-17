# Return L: a local Fourier-edge theorem and a rigorous Fourier-family exclusion

## 0. Verdict

**Global F and F′ are NOT ESTABLISHED by this return.** The main new structural
result is a proved, explicitly bounded neighborhood of the supplied Diţă
triple in which F holds. The second result is a completed separate replay of the
full two-parameter Fourier-family exclusion, with repaired source code and
rigorously enclosed arithmetic. These two statements have different scopes.

| Claim | Status | What is established |
|---|---|---|
| Every order-six MUB triple has a Fourier-type transition (F) | **NOT ESTABLISHED** | No argument excludes additional components of the triple space. |
| Every order-six MUB quartet has a Fourier-type edge (F′) | **NOT ESTABLISHED** | The local theorem does not supply this global implication. |
| F in an explicit neighborhood of the supplied exact triple | **PROVED + CERTIFIED** | If all 55 dephased phase increments have magnitude at most $1/40000$ radians, exactly the $K$ and $H^\dagger K/\sqrt6$ edges are Fourier type. |
| Exact supplied triple, Fourier witnesses, and minor counts | **CERTIFIED** | Independent arithmetic over $\mathbb Q(i,\sqrt2,\sqrt3,\sqrt5)$. |
| Singular-minor routing and a polynomial Fourier predicate | **PROVED** | A test matching the brief's definition, with no missing singular-block lemma. |
| Complete minor/block census throughout $N(z,w)$ | **PROVED + CERTIFIED** | Generic counts and all twelve exceptional parameter points. |
| Reduction of the full Fourier torus to a closed triangle | **PROVED + CERTIFIED** | Exact symmetries and a nearest-lattice argument, including boundaries. |
| Quartet exclusion on $N\cup N^T$ | **CERTIFIED** | All 270 closed parent cells passed through 297 leaf rectangles; full artifact, coverage and exact counter checks passed independently. |
| The supplied 379,944-triple survey | **NUMERICAL** | Its summary was audited; the search was not rerun or promoted to a completeness proof. |

The local result is a statement about **all exact triples** in a specified
55-dimensional ambient phase box. It is not merely a construction of some
Fourier-paired triples, or a numerical tangent-space observation.

The return does not justify deleting the existing four-dimensional atlas.
The remaining obstacle is the global structural implication F or F′.

## 1. Conventions, input, and provenance

Every matrix below is a raw phase Hadamard: each entry has modulus one, and

\[
H^\dagger H=6I.
\]

For a triple 
\(\{I,H/\sqrt6,K/\sqrt6\}\), its third raw transition is

\[
L=H^\dagger K/\sqrt6.
\]

Write \(\omega=e^{2\pi i/3}\), \(F_3=(\omega^{pq})_{p,q=0}^2\), and

\[
N(z,w)=
\begin{pmatrix}
F_3&F_3\\
F_3\operatorname{diag}(1,z,w)&-F_3\operatorname{diag}(1,z,w)
\end{pmatrix},\qquad |z|=|w|=1.
\]

“Fourier type” means the brief's singular-$3\times3$-minor condition,
equivalently monomial equivalence to a member of $N\cup N^T$.

The attached archive was read directly from its supplied local bytes. All
14 entries in its `SHA256SUMS` were verified. The original input was left
unchanged. `provenance/INPUT_AUDIT.json` records the archive digest, file
digests, sizes, and the snapshot identifier `368fbe04`. The exact triple JSON
is copied unchanged into each self-contained verification module; its digest
is

```
559cc995b596df9e425dd3e71fcea4d0ccc1b9e5915af5e11b531feb352fd77e
```

The survey summary reports 615,734 starts, 381,890 converged runs, 379,944
distinct triples, and 12,021 processed Records. These are **reported
numerical results**, not counts independently reproduced in this return.
The delivered input contains summaries and the search implementation, not
an exhaustive certified decomposition of the triple space.

## 2. Exact control: the supplied Diţă triple

The first edge is

\[
D=\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&i&-i&-i&i\\
1&i&-1&i&-i&-i\\
1&-i&i&-1&i&-i\\
1&-i&-i&i&-1&i\\
1&i&-i&-i&i&-1
\end{pmatrix}.
\]

For a compact specification of its companion, put
\(\nu=e^{i\pi/12}\) and \(\beta=(-1+2i)/\sqrt5\). The supplied matrix is

\[
K_*=\begin{pmatrix}
1&1&1&1&1&1\\
-i&-i&\nu^2&\nu^{10}&\nu^{10}&\nu^2\\
-i\beta&i\beta&\nu^9&\nu^{21}&\nu^9&\nu^{21}\\
-i&-i&\nu^{10}&\nu^2&\nu^2&\nu^{10}\\
i\beta&-i\beta&\nu^{13}&\nu^{17}&\nu^5&\nu\\
i\beta&-i\beta&\nu^5&\nu&\nu^{13}&\nu^{17}
\end{pmatrix}.
\]

The executable input uses expanded radicals, so no numerical roots of unity
are needed. `algebra/verify_exact.py` verifies the entries, both Gram
equations, all 36 cross-unbiasedness equations, and the equations for
\(L_*=D^\dagger K_*/\sqrt6\). It then enumerates all 400 positional
$3\times3$ minors and all 400 candidate Hadamard blocks for each control.

| Raw matrix | Singular $3\times3$ minors | Hadamard $3\times3$ blocks | Rank of its entrywise square |
|---|---:|---:|---:|
| $D$ | 0 | 0 | 6 |
| $K_*$ | 24 | 16 | 3 |
| $L_*$ | 24 | 16 | 3 |
| Tao control | 0 | 40 | 6 |

For $D$, the squared minor magnitudes are $4,8,16,20$, occurring
respectively $120,120,80,80$ times. Thus

\[
\min_{|S|=|T|=3}|\det D_{S,T}|=2.
\]

Both companion edges have short exact Fourier witnesses. Reorder rows by
\((0,1,3,2,5,4)\), columns by \((0,2,3,1,5,4)\), and dephase. The results are

\[
K_*\sim N(z,-z),\qquad L_*\sim N(\bar z,-\bar z),
\qquad z=\frac{-1+3i}{\sqrt{10}}.
\]

All entries of both equivalences are checked in the number field. These are
equivalences to the untransposed $N$, although allowing transposes is
necessary for the general routing theorem.

Full receipts, including every minor position, are in
`algebra/EXACT_RECEIPT.json`. The exact controls establish the equations
used here; they do not certify unrelated corner metadata in the input JSON.

## 3. PROVED + CERTIFIED: an explicit region where F holds

### 3.1 The theorem

Fix the first row and first column of $H$, and the first row of $K$.
The remaining phases form a 55-coordinate real chart:

\[
H_{rs}=D_{rs}e^{ix^H_{rs}}\quad(1\le r,s\le5),
\qquad
K_{rs}=(K_*)_{rs}e^{ix^K_{rs}}\quad(1\le r\le5,\ 0\le s\le5).
\]

The $H$ coordinates come first, in row-major order; the $K$ coordinates
follow. All fixed entries have zero phase increment.

**Local Fourier-edge theorem.** If $(H,K)$ is an exact MUB triple in this
chart and

\[
\boxed{\|x\|_\infty\le\frac1{40000}\text{ radians},}
\]

then **both $K$ and $H^\dagger K/\sqrt6$ are Fourier type, and $H$ is
not Fourier type**. Every such triple belongs to the local bicirculant
construction below.

This is a 25-microradian radius for every coordinate simultaneously.
It constrains the specified pair $(H,K)$, not just $H$. In particular,
it does not classify every possible third basis paired with a nearby $H$.
Any triple that can be put into this chart within the stated radius is
covered, because the relevant basis equivalences preserve MUB relations and
Fourier type.

**Corollary.** Every triple in this explicit phase box is unextendible to
four MUBs: it already contains a Fourier edge, and the independently
certified exclusion in §6 forbids a quartet containing such an edge.

The full proof is `local/LOCAL_FOURIER_THEOREM.md`. Its main ideas and
constants are given here so the conclusion can be assessed independently
of a numerical Jacobian rank.

### 3.2 A two-parameter family supplies the candidate solutions

Fixed, exactly verified monomial transformations take the supplied pair to

\[
\mathcal H=\begin{pmatrix}A&B\\B^\dagger&-A^\dagger\end{pmatrix},
\quad
A=\operatorname{circ}(1,e^{ia},e^{ib}),\quad
B=\operatorname{circ}(1,e^{ic},e^{id}),
\]

at $(a,b,c,d)=(\pi/2,\pi/2,\pi,\pi)$. Here the circulant convention is
rows $(1,u,v),(v,1,u),(u,v,1)$. Commutativity of circulants gives the exact
Hadamard condition

\[
r(a,b)+r(c,d)=0,
\qquad r(a,b)=e^{-ia}+e^{i(a-b)}+e^{ib}.
\tag{1}
\]

Let

\[
\lambda_j=1+e^{ia}\omega^j+e^{ib}\omega^{2j},\qquad
\mu_j=1+e^{ic}\omega^j+e^{id}\omega^{2j}.
\]

At the base point these are $(1+2i,1-i,1-i)$ and $(-1,2,2)$, so none
vanishes. Define

\[
t_j=s_j i\frac{\overline{\lambda_j\mu_j}}{|\lambda_j\mu_j|},
\qquad(s_0,s_1,s_2)=(-1,1,-1),
\]

\[
\mathcal K=
\begin{pmatrix}F_3&F_3\\F_3\operatorname{diag}(t)&-F_3\operatorname{diag}(t)\end{pmatrix}.
\tag{2}
\]

Equation (1) implies $|\lambda_j|^2+|\mu_j|^2=6$, while the choice of $t_j$
gives $\operatorname{Re}(\lambda_j\mu_jt_j)=0$. Applying
\(\mathcal H^\dagger\) to the columns of (2) therefore produces entries of
modulus \(\sqrt6\). This constructs an exact triple.

Both companion edges have the Fourier form. For the second one, the two
columns of each Fourier frequency have unit coefficients $(p_+,q_+)$ and
$(p_-,q_-)$. Their orthogonality gives $q_-/p_-=-q_+/p_+$; column phasing
therefore restores exactly the form (2). No classification conjecture is
used in this construction.

### 3.3 Two coordinates and a quantitative existence argument

Put

\[
u=a-\pi/2,\quad v=b-\pi/2,\quad s=c-\pi,\quad t=d-\pi,
\qquad q_1=s+t,\quad q_2=u-2v.
\]

The two $q$'s are phase increments of cross-ratios. Under the fixed
permutations and dephasing they become

\[
q_1=x^H_{1,2}-x^H_{1,5}=x_1-x_4,
\qquad q_2=x^H_{1,3}=x_2.
\tag{3}
\]

The verifier checks these identities using integer exponent vectors for
general parameters, including cancellation of every row and column phase.
The scalar indices \(x_1,x_4,x_2\), like the matrix indices, are zero-based.

The four equations comprising the real and imaginary parts of (1), and the
two coordinates $(q_1,q_2)$, have derivative

\[
M=\begin{pmatrix}
-1&-1&0&0\\1&-1&2&-2\\0&0&1&1\\1&-2&0&0
\end{pmatrix}
\]

at the base. Its exact inverse has infinity norm 1. On a parameter box of
radius $R$, the derivative changes by at most $12R$.

Set $\epsilon=1/40000$ and $R=2\epsilon$. For every coordinate pair
arising from an unknown triple in the theorem, a contraction maps this
closed parameter box into itself: its norm is at most

\[
\frac43\epsilon+48\epsilon^2<2\epsilon,
\]

and its Lipschitz constant is at most $12R<1$. Banach's theorem therefore
supplies a constructed triple with the same $(q_1,q_2)$.

Tracking eigenvalue phases, undoing the fixed monomial operations, and
dephasing gives the explicit ambient bound

\[
\|x_{\rm constructed}\|_\infty\le14\epsilon
=\frac7{20000}<\frac1{2500}.
\tag{4}
\]

### 3.4 A finite inverse certificate proves uniqueness among all nearby triples

Use the 96 real residuals for $H^\dagger H=6I$, $K^\dagger K=6I$, and
\(|H^\dagger K|^2=6\). Select the 53 residual rows listed in the certificate
and append (3), obtaining a square map $G:\mathbb R^{55}\to\mathbb R^{55}$.

The supplied dyadic $55\times55$ matrix $B$, with denominator $2^{30}$,
satisfies the exactly verified bounds

\[
\|I-BDG(0)\|_\infty\le
\frac{40573419759619012730970797}
{649037107316853453566312041152512}<\frac1{100},
\]

\[
\|B\|_\infty=\frac{20757010121}{268435456}<78.
\]

Each residual is a short sum of phase monomials. Bounding the change of its
derivative by the squared one-norm of each exponent vector gives row weights
$5,20,90,360$, with zero for the two linear coordinate rows. Keeping those
weights through multiplication by $B$ gives

\[
\Lambda=\max_i\sum_j |B_{ij}|w_j
=\frac{70104575445}{33554432}.
\]

Consequently, on the convex phase box of radius $1/2500$,

\[
\|I-BDG(x)\|_\infty
<\frac1{100}+\frac\Lambda{2500}<\frac{17}{20}<1.
\tag{5}
\]

Integrating along a straight segment proves that $G$ is injective on the
entire box. The unknown exact triple and the constructed exact triple have
the same $G$-value and both lie in this box by (4). They are identical.
This proves the Fourier conclusion for **every** exact triple in the
smaller box.

Finally, a $3\times3$ determinant of unit entries changes by at most
$18\epsilon$ under coordinate phase changes bounded by $\epsilon$.
Every minor of the $H$ edge therefore obeys

\[
|\det H_{S,T}|\ge2-18\epsilon
=\frac{39991}{20000}>0.
\]

Thus exactly two edges are Fourier type.

All acceptance arithmetic in the inverse verifier uses integers and
`Fraction`. The original inverse proposal used floating linear algebra;
the delivered verification does not trust that proposal. A separate modular
check proves a $53\times53$ Jacobian minor is nonzero: its determinant is
75 modulo 241 under $\sqrt2\mapsto22,\sqrt3\mapsto56,\sqrt5\mapsto103$.
The explicit smooth family supplies two independent tangent directions,
so the exact Jacobian rank at this pair is 53. Rank alone would not prove
the neighborhood theorem; (1)–(5) are the additional essential arguments.

## 4. PROVED: a Fourier predicate that matches F

### 4.1 The omitted singular-block lemma is elementary

A singular flat $3\times3$ matrix has two proportional rows or two
proportional columns. To prove this, consider rank two with no proportional
rows. Write the third row as $\lambda a+\mu b$, where $\lambda\mu\ne0$.
The three unit ratios $b_j/a_j$ satisfy $|\lambda+\mu t|=1$. On the unit
circle this equation is the line
\(2\operatorname{Re}(\bar\lambda\mu t)=1-|\lambda|^2-|\mu|^2\).
There are at most two
intersection points, so two ratios coincide; the corresponding columns
are proportional.

Inside a phase Hadamard, proportionality of two rows on three columns
forces their three remaining ratios to be the opposite phase, by equality
in the triangle inequality and row orthogonality. The resulting $3+3$
split, together with the elementary classification of zero-sum triples of
unit complex numbers, routes the matrix to $N^T$. Transposition handles
the proportional-column case. `algebra/REPORT.md` gives the complete row
orientation argument. This supplies the missing lemma without importing
an unavailable `STRICT_DOMAIN.md`.

### 4.2 Quadratic-overlap saturation

For distinct rows define

\[
S_{rs}(H)=\sum_{j=0}^5(h_{rj}\bar h_{sj})^2.
\]

Apply the same formula to $H^T$ for column pairs. Then

\[
\boxed{H\text{ is Fourier type}\iff |S|^2=36
\text{ for at least one of the 30 row or column pairs}.}
\tag{6}
\]

Indeed, equality in the modulus bound for a sum of six unit numbers means
all squared ratios agree. The original ratios are then $\rho$ or
$-\rho$, and their zero sum forces three of each. The routing argument
applies. Conversely $N$ has three paired columns with matching entrywise
squares, and its transpose has the corresponding rows.

There is also a manifestly nonnegative identity. With
$x_j=h_{rj}\bar h_{sj}$,

\[
36-\left|\sum_jx_j^2\right|^2
=\sum_{j<k}|x_j^2-x_k^2|^2.
\tag{7}
\]

Thus the product of the 30 factors in (7), denoted $P_F(H)$, is a
division-free real polynomial whose zero set among phase Hadamards is
exactly the Fourier locus. F can be restated as the exact identity

\[
P_F(H)P_F(K)P_F(H^\dagger K/\sqrt6)=0
\]

on the triple variety. This is a precise possible target for further
elimination; no global polynomial identity of this form is claimed here.

### 4.3 The numerical diagnostic needs this distinction

The input's `triples.py` uses a minimum $3\times3$ Gram defect, so its
`d3` vanishes when a submatrix is a Hadamard block. Such a block has nonzero
determinant. Existence of one block is a different matrix property from
existence of a singular block elsewhere.

The exact Tao control has 40 Hadamard blocks and **no singular $3\times3$
minor**. Its squared minor magnitudes are 9, occurring 360 times, and 27,
occurring 40 times. It therefore demonstrates that `d3=0` is not a valid
Fourier-membership predicate for arbitrary Hadamards.

This does not show that any particular sampled triple is a counterexample
or was misclassified: a theorem restricted to actual triple transitions
could add information. The supplied statistic and finite search do not
provide that theorem. Formula (6), or direct singular-minor checks, matches
the requested definition; a small floating value would still be numerical
evidence rather than an exact zero certificate.

## 5. PROVED + CERTIFIED: the entire Fourier locus and its parameter domain

### 5.1 Universal minor and block census

Expanding all 400 $3\times3$ determinants of $N(z,w)$ as Laurent
polynomials, and removing nonzero coefficients and Laurent monomials,
gives 24 identically zero minors, 232 nonzero monomials, and six copies of
each of 24 trinomials

\[
1+s\omega^k u+t\omega^{-k}v,
\qquad s,t\in\{\pm1\},\quad k=0,1,2,
\]

where $(u,v)=(w,z)$ or $(z/w,z)$. A zero sum of three unit terms requires
the two nonconstant terms to be $\omega,\omega^2$ in either order.
Consequently the only additional zeros occur at the twelve points

\[
z=\zeta_6^a,\quad w=\zeta_6^b,
\qquad 0\le a,b<6,\quad a+b\equiv0\pmod3.
\]

| Parameter class | Singular minors | Hadamard blocks | Saturated row / column pairs |
|---|---:|---:|---:|
| Outside those twelve points | 24 | 16 | 0 / 3 |
| At each of those twelve points | 48 | 28 | 3 / 3 |

Every exceptional point has an exact permutation witness identifying it
with $F_6$. The entrywise-square rank is exactly three throughout the
family. The converse “entrywise-square rank three implies Fourier type”
is **not** asserted.

The finite Laurent expansion, the analytic classification of possible
zeros, and the exact checks at all exceptions together establish a
full-torus result. A sampled parameter grid would not suffice.

### 5.2 A closed triangle covers the torus

In phase coordinates, exact monomial symmetries generate the translation
lattice

\[
\Lambda_{\rm par}=\{(m/6,n/6):m,n\in\mathbb Z,\ m+n\equiv0\pmod3\}.
\]

It has basis $(1/3,1/6),(1/6,1/3)$ and covolume $1/12$. Permutations of
the three diagonal phases and complex conjugation give twelve linear
symmetries preserving both the lattice and $q(x,y)=x^2-xy+y^2$.

Translate any point to its nearest lattice point, then use these
symmetries to arrange $0\le y\le x/2$. Comparing its squared distance
to zero with its distance to $(1/3,1/6)$ gives

\[
0\le q((x,y)-(1/3,1/6))-q(x,y)=1/12-x/2,
\]

so $x\le1/6$. This proves universal coverage by the closed triangle

\[
\boxed{0\le b\le a/2,\qquad 0\le a\le1/6.}
\tag{8}
\]

The exact conversion from Jaming's normalized $F(a,b)$ is

\[
\sqrt6F(a,b)=N(\zeta_6e^{2\pi ia},\omega e^{2\pi ib})^T[:,\pi],
\qquad\pi=(0,3,1,4,2,5).
\]

The parameter shift $(1/6,1/3)$ belongs to the translation lattice, so
the same triangle applies in Jaming's coordinates. All matrix symmetries,
the 144 affine torus maps, and rational lattice constants are verified in
`algebra/verify_domain.py`. Nearest-point ties cause no loss of boundary
points.

## 6. CERTIFIED: the separate two-dimensional exclusion

### 6.1 Published statement and normalization

Jaming, Matolcsi, Móra, Szöllősi and Weiner's 2009 paper states in Theorem
1.4 that a pair comprising the identity and any member $F(a,b)$ cannot be
extended to four MUBs. Its Section 3 supplies a finite covering method.
The source is [arXiv:0902.0882v2](https://arxiv.org/html/0902.0882v2).

This is an all-parameter theorem, not merely a check of finitely many
Fourier matrices. The map in §5 identifies its normalization with the
handoff's family.

Transpose requires no further parameter search. If a quartet contains
$I,U$, multiply the entire quartet by $U^\dagger$, reorder the first
two bases, and conjugate all entries. The resulting quartet has the edge
$U^T$. Thus exclusion for a family also excludes its transpose.

### 6.2 Source audit and repairs

The public supplemental sources linked by the author's
[documentation page](https://math.bme.hu/~matolcsi/docu.htm) were retrieved
and hash-pinned. The downloaded `fab_ubv.cpp` contains a consequential typo:
inside `ubv_with_matrix`, the imaginary contribution is accumulated into
the real accumulator, leaving the imaginary accumulator zero.

The original executable is therefore not accepted here as a sound replay.
Correcting only that accumulator allows an approximate survivor in cell
$(A,B)=(10,0)$. Such a survivor is not an exact MUB quartet: retained
boxes are necessary-condition outer covers.

A further sound filter resolves that case. At every refinement of a
candidate fourth-basis column, the **same descendant phase box** is checked
against both the Fourier basis and the third-basis candidate. A true
quartet satisfies both constraints on that same column, so intersecting
these tests cannot discard a true solution.

Some later cells still retained candidates under that directed test.
The final strengthened procedure also tests the reverse direction:
every third-basis column is refined against all six fourth-basis mother
boxes before a candidate quartet can survive. It reuses the same rigorous
predicate with the two roles exchanged. A rejected reverse test skips only
that candidate fourth-basis tuple. The independently audited implementation
copies all reference bins before refinement and restores every mutated bin.

An exactly keyed cache avoids recomputing identical Fourier scalar tests
within a parameter cell. Its key contains the level and all five variable
phase indices, and it is cleared on every parameter change. The cache
preserves the Boolean predicates and search outcomes. Independent
memoization and reciprocal-filter audits are included in the bundle.

The arithmetic was separately hardened. Finite sine and cosine tables are
certified by rational Machin/Taylor enclosures. The search evaluates
midpoint expressions in binary64 with a proved coordinate error allowance
of $2^{-40}$, then applies outward interval norms and conservative
comparisons. The proof distinguishes rejection tests from endpoint tests,
where possible survival must be retained. IEEE binary64 assumptions,
rounding mode, compilation flags, and checked square-root proposals are
documented in `fourier_exclusion/ARITHMETIC_PROOF.md`.

This is rigorous validated arithmetic, not an all-integer implementation
of the large search. The finite table acceptance checks themselves use
exact integers and rationals. Nothing depends on an unproved assumption
that a small numerical residual is zero.

The two signed diagnostic counters also have an independent exact bound.
For each accepted leaf, the verifier reconstructs the compatibility graph
of the saved mother-vector pool from the exact orthogonality database.
If $S_i$ is the forward-neighbor set of vertex $i$, every candidate
six-clique is counted by both upper bounds

\[
B_1=\sum_i\binom{|S_i|}{5},\qquad
B_2=\sum_{i\to j}\binom{|S_i\cap S_j|}{4}.
\]

Both counters increment at most once per such clique, so verifying
$\min(B_1,B_2)\le2^{31}-1$ proves that every intermediate increment is
safe. This reasoning does not infer safety from a small final printed
counter. The compiler's integer model is recorded, and the fresh driver
checks that its signed `int` maximum is at least $2^{31}-1$.
`fourier_exclusion/SIGNED_COUNTER_PROOF.md` gives the complete argument.

### 6.3 What the finite search covers

The parameter denominator is 180; the dephased-vector denominator is 19;
seven bisection levels reach denominator 2432. All $19^5=2,476,099$
ordered coarse phase boxes are considered where required. The rigorous
orthogonality run retains 82,630 distinct bins, and adding all 32 binary
endpoint shifts gives an orthogonality-difference cover of 322,040 bins.

For each parameter cell, the search conservatively retains candidate
common-unbiased vectors, enumerates every possible six-clique for a third
basis, and exhausts fourth-basis possibilities. Closed intervals and
their subdivisions include endpoints. Repeated vector bins cannot form
orthogonal columns, since their inner product has positive real part.

The 270 parent rectangles have lower indices

\[
A=0,\ldots,29,\qquad B=0,\ldots,\lfloor A/2\rfloor+1,
\]

and widths $1/180$ in each parameter. Their union contains the entire
closed triangle (8), including its sloping edge and all vertices.
Some rectangles extend outside the triangle; excluding the larger
rectangles is conservative. A parent $(A,B)$ may instead be covered at
denominator $d=180m$ by all $m^2$ closed children

\[
\left[\frac{mA+i}{d},\frac{mA+i+1}{d}\right]
\times
\left[\frac{mB+j}{d},\frac{mB+j+1}{d}\right],
\qquad 0\le i,j<m.
\]

The supported refinements have $m=2$ and $m=4$, giving denominators 360
and 720. The child union is exactly the parent, including its entire
boundary. Each refinement has its own genuine parameter trigonometric
table, whose entries are regenerated and certified using exact rational
arithmetic. The vector grid, recursive predicates and enumeration are
unchanged. Separate source audits verify the narrow grid changes and
all child-coordinate maps.

The selected cover has the following composition:

| Parent index | Lower parent indices $(A,B)$ | Parameter denominator | Leaf rectangles |
|---:|---|---:|---:|
| 182 | $(24,2)$ | 360 | 4 |
| 238 | $(28,0)$ | 360 | 4 |
| 239 | $(28,1)$ | 360 | 4 |
| 254 | $(29,0)$ | 720 | 16 |
| 255 | $(29,1)$ | 360 | 4 |
| Other 265 parents | As above | 180 | 265 |

Thus the full cover has **297 leaf rectangles**, with four subdivisions
into four children and one subdivision into sixteen children. The figure
`fourier_exclusion/parameter_cover.png` depicts this exact selection; the
certificate uses rational endpoint identities, not the picture.

`fourier_exclusion/FOURIER_REPLAY_AUDIT.md` independently checks the ordered
box coverage, endpoint patterns, difference shifts, clique loops, alias
restoration, array indices, normalization, and parameter-cell coverage.
`fourier_exclusion/ENDPOINT_LEMMA.md` supplies the analytic proof that the
endpoint bound used in these tests covers each entire closed phase box.

### 6.4 Completion receipt

**PASS.** The completed search and independent strict aggregate check
establish the full required cover:

| Recorded quantity | Certified result |
|---|---:|
| Required parent cells | 270 |
| Accepted leaf rectangles | 297 |
| Candidate third-basis tuples processed | 1,588,532 |
| Cases requiring a fourth-basis clique search | 55,329 |
| Largest mother-vector pool | 158 |
| Maximum exact bound on either signed counter | 3,375,966 |

These diagnostic totals count the accepted leaf searches; they do not
assert that candidates in different leaves are distinct exact matrices.

The 265 ordinary parents are supplied by 18 accepted logs: ten completed
prefixes of deliberately interrupted processes with observed exit 130,
and eight finished processes with exit zero. The 32 subdivision leaves
each have an observed zero exit. Only completely processed cells from a
prefix are credited, and every unfinished final cell is discarded. The
manifest verifies that these selections have no missing or duplicate
parent. Failed intermediate attempts and superseded subdivisions supply
no exclusion coverage.

One saved candidate-pool file from a successful ordinary worker was found
truncated. Its complete search log was preserved. A separately labelled
replay reconstructed that worker's 38 mother pools using the identical
setup, scalar tests and vector enumeration, with only the subsequent
C/D search removed. It completed with exit zero. All 38 original vector
counts, all five intact original pools, and all 717 surviving mother tuples
across six cell prefixes match. The exact source relation and immutable
inputs are checked. The reconstructed pools are used solely for the counter
bounds; all historical C/D statistics and exclusion completion remain
bound to the original successful log. The original truncated file is
retained alongside the explicit reconstruction receipt.

The independent graph computation gives maximum bounds
$B_1=18,173,366$ and $B_2=3,375,966$, both below $2^{31}-1$.
The aggregate checker requires these bounds to pass before issuing its
receipt. The root verification reran this strict check with all source
and binary artifacts present and obtained the same result.

The main search finished at **2026-10-17 15:04:09.927354 UTC**. Its
recorded 6,665.137011-second elapsed time includes the development run's
interruptions, audit pauses and continuations, and excludes earlier table
generation and ORT computation. The separate completed pool reconstruction
took 122.596382 seconds. These are historical timings, not a forecast for
a fresh replay on another machine.

| Frozen artifact | SHA-256 |
|---|---|
| `fourier_exclusion/rigorous/run_manifest.json` | `51016ad6dfae9d401987386bc7f96279c13569a21c23b5f56152a9c785d7e216` |
| `fourier_exclusion/rigorous/certificate_receipt.json` | `88199504fc005b2016f3a80fa92a6cbefc34ffd7541cce8ea7674da418991323` |

The standalone theorem and proof chain are in
`fourier_exclusion/CERTIFICATE.md`. The complete per-parent and per-leaf
records are `cell_receipts.csv` and `leaf_receipts.csv` within `rigorous/`.
The distributed quick check records its explicitly limited evidence mode
separately, preserving the full strict receipt. A fresh execution of every
large search is available through the replay driver.

## 7. What remains to replace the atlas

The local theorem removes no obligation to find all global components.
It gives a verified patch on the two-dimensional family through the
specified triple. It does not prove that every component meets that patch,
that all relevant Jacobians retain rank 53, or that all singular strata
are limits of covered regular points.

An analytic-continuation route has a precise missing step. The polynomial
$P_F(H)P_F(K)P_F(L)$ vanishes on the proved open patch. On a connected
real-analytic regular component containing that patch, the identity theorem
extends this vanishing. To obtain F globally, one must still prove that
every regular component is reached by proved patches and control the
remaining singular points. Dense numerical sampling establishes neither
condition.

The triplet-classification statement discussed in Matolcsi, Matszangosz,
Varga and Weiner, *Triplets of Mutually Unbiased Bases*, is explicitly a
conjecture in the examined version; it cannot be substituted for the
missing step. The paper is available as
[arXiv:2503.14752v2](https://arxiv.org/html/2503.14752v2) and as
[DOI:10.1007/s10801-026-01506-x](https://doi.org/10.1007/s10801-026-01506-x).
The bicirculant construction has literature antecedents; the contribution
of this return is its quantitative completeness in the stated phase box
and the exact certificates supporting that argument.

With the certified Fourier-edge exclusion $E$, F′ is logically
equivalent to the desired no-quartet statement: $F^\prime+E$ rules out a
quartet, while no quartet makes F′ vacuously true. Therefore proving F′
from an existing atlas-based no-quartet result and then claiming to remove
that atlas would be circular as a replacement proof.

Also, F′ routes directly to $N\cup N^T$. Tao is not an additional branch
of that implication: the exact Tao control has no singular $3\times3$
minor. Any separate Tao exclusion may be useful elsewhere, but it is not
needed once an actual Fourier-type edge has been supplied.

## 8. Reproduction and verification scope

The complete commands and file inventory are in `README.md`. The algebra
and local verifiers use Python's standard library and can be run with site
packages disabled:

```bash
python3 -S algebra/verify_exact.py
python3 -S algebra/verify_domain.py
python3 -S local/verify_dita_jacobian.py
python3 -S local/verify_augmented_inverse.py
```

The delivered dyadic inverse is a candidate certificate. The verifier
reconstructs the analytic Jacobian and checks the claimed rational
enclosures independently; it does not trust a receipt saying “PASS.”
The algebra verifier reconstructs every enumerated determinant from the
matrix entries and checks the Laurent identities.

The large Fourier search has a separate fresh-replay driver. It fetches
the two hash-pinned original sources, applies the guarded corrections,
generates certified tables, compiles with the required flags, regenerates
the orthogonality cover, and processes the full parameter cover. A check
of saved logs and hashes is an integrity and completion check, not a
substitute for rerunning those predicates or reading the associated proof.

`SHA256SUMS` covers the returned files. The checksum manifest detects
changed bytes; mathematical validity rests on the proofs and verifiers
described above. No four-dimensional atlas Record, prior root-count
certificate, global triple-classification conjecture, or numerical LM
solution is used as an unstated premise of the local theorem.
