# Finite candidate-ray and companion algebras

## 1. What has actually been checked at the Diţă anchor

Let \(D=D_0\) be the raw matrix stored under H_Dita in
INPUT_EXACT_TRIPLE.json. Thus \(D^\dagger D=6I\), and its entries are
\(\pm1,\pm i\). The exact atlas D0_RAY_ATLAS.json contains 120 distinct
vectors \(z\), with \(z_0=1\), such that

\[
 |z_j|=1,\qquad |(D^\dagger z)_k|^2=6
 \quad(0\le j,k<6).
\]

The physical unit representative is \(z/\sqrt6\). All atlas coordinates lie
in \(\mathbb Q(i,\sqrt2,\sqrt3,\sqrt5)\). More explicitly, the alphabet is

\[
 \{\nu^k:0\le k<24\}\ \cup\
 \{i^k(1-2i)/\sqrt5,\ i^k(1+2i)/\sqrt5:0\le k<4\},
 \qquad \nu=e^{i\pi/12}.
\]

The standard-library verifier verify_dita_rays.py checks the coordinates
exactly, constructs all pair overlaps, and enumerates every sorted
orthogonal sextuple of this finite list. Its results are:

| Exact quantity within the supplied list | Value |
|---|---:|
| Distinct rays | 120 |
| Orthogonal pairs | 600 |
| Orthogonal sextuples | 10 |
| Rays appearing in at least one sextuple | 60 |
| Pairs of distinct sextuples | 45 |
| Mutually unbiased pairs of sextuples | 0 |

These counts agree with the primary report by Brierley and Weigert,
[arXiv:0901.4051v2](https://arxiv.org/abs/0901.4051v2), Section 4.1.
The numerical search was used only to propose atlas entries. The exact
verifier accepts those entries only after checking every defining equality.
It does not infer exhaustion from a numerical search or from the published
count.

The stronger checker verify_dita_gaps.py gives the following exact
quantitative statements. Write
\(q(z,w)=|\sum_j\overline{z_j}w_j|^2\), in raw normalization, and let
\(\mathcal B\) be the ten listed sextuples.

\[
 \min_{\substack{z\ne w\\q(z,w)\ne0}}q(z,w)>\frac1{50},
 \tag{1}
\]
\[
 \min_{\substack{B\in\mathcal B\\z\text{ in the atlas}}}
       \max_{w\in B}|q(w,z)-6|=6,
 \tag{2}
\]
\[
 \min_{\substack{B\in\mathcal B\\z\text{ in the atlas}}}
       \sum_{w\in B}(q(w,z)-6)^2=\frac{1752}{25}.
 \tag{3}
\]

In particular, no listed ray extends any one of the ten listed triples
even by a single unbiased vector. The completed sibling interval cover
now supplies containment in 120 small neighborhoods, uniformly for the
region below. The quantitative transfer argument in Section 1.1 turns
that containment into an exclusion for all physical candidates; it does
not require exactly one root in each neighborhood or exhaustion by the
exact list itself.

All comparisons in (1)–(3) use rational enclosures of the exact
multiquadratic numbers. Every square-root enclosure is checked by integer
squaring. The receipt D0_GAP_RECEIPT.json records the statements and all
1200 witnesses for (2).

### 1.1. Transfer to the whole closed anchor region

The completed fresh run in ../cover/full_tube_r1e4, recorded in
RUN_RECEIPT.json and tube_coverage.json, exited zero after processing
5,066,657 boxes. Its frozen-source arithmetic and containment argument
is independently reviewed in INDEPENDENT_TUBE_AUDIT.md. Its conclusion
is a containment statement over the entire phase torus, not a point
count.

For every raw Hadamard \(H\) with
\[
 \max_{r,j}|H_{rj}-D_{0,rj}|\le10^{-4},
 \tag{R}
\]
every dephased raw common unbiased ray belongs to one of the 120 phase
template boxes. The exact association gate identifies each phase-box
label with the corresponding exact atlas label. Combining the actual
rounded phase halfwidth with the certified association error puts every
coordinate within
\[
 \rho=\frac{10001}{10^6}
\]
of that exact atlas ray.

Here is an independent short transfer argument using only (1)–(2).
Let \(x,y\) be two actual raw candidates and \(z,w\) their exact atlas
templates. Both actual and exact vectors have unit-modulus coordinates,
and their first coordinates all equal one. Telescoping the five remaining
terms gives
\[
 |\langle x,y\rangle-\langle z,w\rangle|\le10\rho,
 \qquad
 \big||\langle x,y\rangle|^2-|\langle z,w\rangle|^2\big|
      \le120\rho.
 \tag{T}
\]
The second bound uses the bound six on each raw inner-product modulus.

If \(x,y\) are orthogonal, repeated template labels are impossible:
the corresponding exact inner product would be six. A nonorthogonal
pair of distinct templates is also impossible, because
\[
 (10\rho)^2<\frac1{50}
\]
contradicts (1) and the first inequality in (T). Thus the six labels of
every actual completing basis form one of the ten exact sextuples.

For any additional physical common ray, equation (2) supplies a basis
column whose exact raw squared-overlap deviation is at least six.
The actual deviation therefore satisfies
\[
 \max_j\big||\langle b_j,x\rangle|^2-6\big|
 \ge 6-120\rho=\frac{119997}{25000}>\frac92.
\]
In unit-vector normalization this becomes
\[
 \max_j\left|
 \left|\left\langle \frac{b_j}{\sqrt6},
                        \frac{x}{\sqrt6}\right\rangle\right|^2
 -\frac16\right|>\frac18.
 \tag{U}
\]
Consequently every triple containing the pair \(I,H/\sqrt6\), for
\(H\) in (R), has no additional common unbiased ray. In particular,
there cannot be two mutually unbiased completing bases.

More quantitatively, if \(B/\sqrt6,C/\sqrt6\) are any two completing
bases for that pair, apply (U) to each of the six columns of \(C\):
\[
 \sum_{j,k=0}^5
 \left(\frac{|(B^\dagger C)_{jk}|^2}{36}-\frac16\right)^2
 >\frac3{32}.
 \tag{E}
\]
All inequalities apply uniformly on the closed region (R), including
any singular, colliding, or varying-degree algebraic fibers. The proof
does not assume that a completing basis exists at every anchor.
It imposes no dephasing or family ansatz on \(H\).

## 2. The projective scheme and its exact degree

This section gives the finite algebra underlying a general Fourier-free
anchor. It retains multiplicities. Let \(H\) be a raw order-six complex
Hadamard matrix, set \(U=H/\sqrt6\), and suppose every positional
\(3\times3\) minor of \(H\) is nonzero. Let \(Z_H\) be the closed subscheme
of \(\mathbb P^5\times\mathbb P^5\) whose Segre representative is
\(X=xy^T\), subject to

\[
 \operatorname{diag}X=\frac{\operatorname{tr}X}{6}{\bf1},
 \qquad
 \operatorname{diag}(U^\dagger XU)
      =\frac{\operatorname{tr}X}{6}{\bf1}.
 \tag{4}
\]

There are five independent equations in each displayed diagonal
condition: the sixth follows by taking the trace. Each equation has
bidegree \((1,1)\). The transpose in \(xy^T\) is deliberate: this is a
complex algebraic scheme with independent factors, not a restriction
to positive rank-one matrices.

Let \(Z_2(H)\) denote the number of singular positional \(2\times2\)
minors. Then

\[
 \operatorname{length}_{\mathbb C} Z_H=252,\qquad
 \#\{p\in Z_H:\operatorname{tr}X=0\}=2Z_2(H),
 \tag{5}
\]

and each point in the second count is reduced. Consequently the affine
chart \(\operatorname{tr}X\ne0\) has scheme length

\[
 252-2Z_2(H).
 \tag{6}
\]

The boundary isolation result also appears in Sun,
[arXiv:2610.12180v1](https://arxiv.org/abs/2610.12180v1), Theorem 3.1.
Here are the support, tangent, and degree arguments needed for (5)–(6).

### 2.1. Classification of the boundary supports

Write \(x'=U^\dagger x\) and \(y'=U^Ty\). At trace zero, the supports of
\(x\) and \(y\) are disjoint, and the supports of \(x'\) and \(y'\) are
disjoint.

The middle-minor hypothesis implies that no nonzero vector has at most
three nonzero coordinates in each of the two bases. Indeed, if its
supports were \(S,T\), with \(|S|,|T|\le3\), then the matrix
\(U_{S^c,T}\) would have full column rank. This follows by extending its
column set to three columns and choosing three rows from \(S^c\).
It would force that vector to be zero. The same observation applies
to the dual change of coordinates.

Therefore one factor has support sizes at most two and at least four,
in the two bases respectively, and the other has the opposite support
sizes. A support of size one is impossible: flatness makes its transform
nonzero in all six coordinates, leaving no support for the other factor.
After possibly interchanging the two orientations, the supports are
exactly

\[
 (|\operatorname{supp}x|,|\operatorname{supp}x'|)=(2,4),
 \qquad
 (|\operatorname{supp}y|,|\operatorname{supp}y'|)=(4,2).
 \tag{7}
\]

Choose the two-element support \(S\) of \(x\) and the two-element support
\(T\) of \(y'\). The conditions on both factors are the right- and
left-kernel conditions for the same \(2\times2\) matrix
\((U^\dagger)_{T,S}\). This matrix must be singular, and has rank exactly
one because its entries are nonzero. Its two kernels give a unique
projective pair. The middle-minor hypothesis prevents additional support
zeros. Hence every singular two-minor gives exactly one point of each
orientation, and different support labels give different points.

### 2.2. Every boundary point is reduced and isolated

A tangent vector to the Segre cone at \(X=xy^T\) has the form
\(\delta X=\delta x\,y^T+x\,\delta y^T\).
Let \(c\) be the common value of its six diagonal entries in either
basis. In the orientation (7), the four coordinates outside the support
of \(x\) give

\[
 y^T\delta x=4c.
\]

In the other basis, the two coordinates outside the support of \(x'\)
give

\[
 (y')^T\delta x'=2c.
\]

The two left sides agree, so \(c=0\). The tangent equations now preserve
all four supports. The relevant kernel intersections are
one-dimensional, by the rank-one two-minor calculation. Thus
\(\delta x\) and \(\delta y\) are scalar multiples of \(x\) and \(y\).
There is no nonzero projective tangent vector.

A finite-type local scheme over \(\mathbb C\) with zero tangent space at
a closed point has maximal ideal \(\mathfrak m=\mathfrak m^2\), hence
\(\mathfrak m=0\) by Nakayama's lemma. The point is therefore reduced
and isolated.

### 2.3. Finiteness and the degree computation

Every positive-dimensional projective component of the Segre
intersection would meet the hyperplane \(\operatorname{tr}X=0\).
That would contradict the preceding isolation of all its boundary
points. Thus \(Z_H\) is zero-dimensional.

It is the intersection of ten \((1,1)\) divisors on the smooth
ten-dimensional variety \(\mathbb P^5\times\mathbb P^5\). The resulting
zero-dimensional intersection has the expected codimension, so locally
the ten equations form a complete intersection. Its length, including
every nonreduced contribution, is the intersection number

\[
 [a^5b^5](a+b)^{10}=\binom{10}{5}=252.
\]

Removing the \(2Z_2(H)\) reduced boundary points proves (6).

### 2.4. The exact Diţă census

The checker enumerates all 225 two-minors and all 400 three-minors with
Gaussian-rational arithmetic. It obtains:

| Minor size | Squared determinant magnitude : multiplicity |
|---|---|
| 2 | \(0:30,\ 2:120,\ 4:75\) |
| 3 | \(4:120,\ 8:120,\ 16:80,\ 20:80\) |

Thus \(Z_{D_0}\) has projective length 252, sixty reduced boundary
points, and affine complex scheme length 192. The 120 physical points
alone do not exhaust this degree. The remaining 72 length units may
represent nonphysical points or local multiplicity until a further
algebraic calculation is supplied.

The exact census also proves that a closed entrywise neighborhood of
radius \(r=10^{-4}\), restricted to raw Hadamards, contains no singular
middle minor. Every middle determinant of \(D_0\) has modulus at least
two. Telescoping each of the six products in a \(3\times3\) determinant
gives

\[
 |\det H[R,C]-\det D_0[R,C]|\le18r,
 \qquad
 |\det H[R,C]|\ge 2-18r=\frac{9991}{5000}>0.
\]

The factor products have unit-modulus factors at both endpoints, which
is why the bound needs no additional powers of \(1+r\).

Nor is affine length 192 uniform on a neighborhood of \(D_0\).
Singular two-minors can cease to vanish under a deformation; their
boundary points then enter the affine chart, and the affine length can
increase, up to 252. The compact physical phase torus does not acquire
points by escape from that affine boundary. A uniform torus cover
handles these exceptional algebraic loci without assuming a fixed
affine basis or a reduced fiber.

## 3. A five-variable algebra that retains nilpotents

On the chart \(\operatorname{tr}X\ne0\), scale \(X\) so that its diagonal
entries equal one. All factor coordinates are nonzero. The projective
factor gauge can then be fixed uniquely by

\[
 x=(1,z_1,\ldots,z_5)^T,\qquad
 y=(1,z_1^{-1},\ldots,z_5^{-1})^T.
\]

Set \(z_0=1\), and define

\[
 f_k(z)=
 \left(\sum_{j=0}^5\overline{H_{jk}}z_j\right)
 \left(\sum_{j=0}^5H_{jk}z_j^{-1}\right)-6.
 \tag{8}
\]

The sum of the six \(f_k\)'s is identically zero, by
\(HH^\dagger=6I\). The full affine coordinate algebra is consequently

\[
 A_H=
 \mathbb C[z_1^{\pm1},\ldots,z_5^{\pm1}]
 /(f_0,\ldots,f_4).
 \tag{9}
\]

This is an isomorphism of schemes on the indicated chart. No radical is
taken. In particular,

\[
 \dim_{\mathbb C}A_H=252-2Z_2(H)
 \tag{10}
\]

under the middle-minor hypothesis.

There is an antilinear involution on this algebra:

\[
 z_j^*=z_j^{-1},\qquad c^*=\overline c.
 \tag{11}
\]

Every generator \(f_k\) is fixed by this involution. A character
\(\chi:A_H\to\mathbb C\) represents a physical common unbiased ray
precisely when
\(\chi(a^*)=\overline{\chi(a)}\) for all \(a\), equivalently
\(|\chi(z_j)|=1\) for \(1\le j\le5\).
This distinguishes the real physical locus from the full complex
zero scheme.

For computation over a real coefficient field, the same physical
problem can be written with

\[
 z_j=x_j+i y_j,\qquad z_j^{-1}=x_j-i y_j,\qquad
 x_j^2+y_j^2=1.
\]

Five circle equations and five equations (8) give a ten-variable
real system. Its complexification is isomorphic to (9), and retains
the same algebraic multiplicities.

## 4. Complete companions and two-companion compatibility

For \(m\) ordered candidate rays, take \(m\) tensor copies of \(A_H\).
Write \(z_j^{(r)}\) for coordinate \(j\) in copy \(r\), and define

\[
 P_{rs}=\sum_{j=0}^5
           (z_j^{(r)})^{-1}z_j^{(s)}.
 \tag{12}
\]

On physical characters, \(P_{rs}\) is the raw inner product. Also
\(P_{rs}^*=P_{sr}\). An ordered complete companion is exactly a
physical character of

\[
 C_H=A_H^{\otimes6}/(P_{rs}:r\ne s).
 \tag{13}
\]

Both directions of the off-diagonal equations are included. This makes
the ideal invariant under the involution and gives the full complex
reciprocal-orthogonality equations, rather than relying on conjugacy
only at physical points. The diagonal entries already equal six.
Repeated ray labels cannot satisfy these equations.

For two ordered complete companions, use twelve copies and impose
internal reciprocal orthogonality in each group of six, together with

\[
 P_{rs}P_{sr}-6=0
 \qquad(1\le r\le6,\ 7\le s\le12).
 \tag{14}
\]

Call the resulting quotient \(Q_H\). Its physical characters correspond
exactly to ordered MUB quartets containing \(I\) and \(H/\sqrt6\).
Column permutations give the expected finite relabeling redundancy;
they introduce no false physical solutions. Each construction uses the
whole algebra, including nilpotents.

The smaller obstruction suggested by (2) uses seven copies: the first
six form a companion and the seventh obeys (14) with each of those six.
Absence of its physical characters excludes even a single extra
unbiased ray for every companion, hence excludes two complete
companions. This is a stronger certificate target than quartet
exclusion and requires substantially fewer ray copies.

## 5. Useful exact certificate targets and their limitations

The formulation above is finite for each fixed Fourier-free anchor, but
the tensor presentations alone are not efficient computations:
\(\dim A_H^{\otimes12}\) can be enormous. Nor does finiteness turn the
uncountable anchor domain into finitely many anchors.

Three genuine certificate forms avoid the unsupported inference from
a numerical ray list:

1. A compact physical cover can prove that every common ray lies in
   one of finitely many certified template neighborhoods. Quantitative
   overlap bounds then test complete companions without needing
   algebraic branch continuation. This is the completed route in
   Section 1.1 for the whole closed Diţă region.
2. A finite coordinate-algebra presentation, together with verified
   multiplication matrices and a real trace-form signature, can count
   distinct real characters even when the algebra has nilpotents.
   The real trace form is degenerate on nilpotent directions; a
   reduced-fiber assumption is not needed for its distinct-real-point
   count. To see this, split a finite real algebra into local factors.
   A real residue-field factor contributes a positive rank-one form,
   weighted by its local length. A complex residue-field factor
   contributes a positive multiple of \(\operatorname{Re}(ab)\) on
   \(\mathbb C\), which has one positive and one negative direction.
   Nilpotent directions are in the kernel. The total signature is
   therefore the number of distinct real points. Such a matrix
   certificate has not been generated here.
3. A polynomial identity \(1\in Q_H\) would exclude all complex
   solutions and therefore all physical solutions. When nonphysical
   complex solutions exist, a real positivity certificate for the
   seven- or twelve-ray equations is the appropriate stronger tool.
   No such identity is asserted in this note.

A uniform coefficient identity or positivity inequality on a specified
closed anchor region is a new theorem about that whole region.
An unchecked assertion that each finite fiber has no compatible
selection would merely restate the desired exclusion.

## 6. Replaying the owned gates

Run from this directory:

    python3 verify_dita_rays.py
    python3 verify_dita_gaps.py
    python3 verify_template_association.py

The first two commands need only exact_core.py, INPUT_EXACT_TRIPLE.json,
and D0_RAY_ATLAS.json. The first creates the graph that the second uses.
The third additionally reads the sibling cover/D0_COVER_INPUT.json,
cover/D0_TUBE_INPUT.json, and region/D0_TEMPLATE_CENTERS.json. It checks
that the local control and main tube inputs have identical phase centers,
and proves the same-label coordinate association with error below
\(10^{-9}\).

The association check uses exact rational Taylor bounds, not the
numerical generation log. All owned verifier entry points refuse
optimized Python. The numerical scripts and NUMERIC_RAYS.json are
exploratory provenance; they are not dependencies of the exact gates.
