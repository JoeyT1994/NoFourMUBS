# A uniform companion obstruction near the Diţă Hadamard

This bundle proves an explicit obstruction on a whole neighborhood of a
Fourier-free Hadamard matrix. For every raw order-six Hadamard within
entrywise distance \(10^{-4}\) of the Diţă matrix displayed below, **every
completing MUB triple has no additional common unbiased ray**. The proof also
gives a uniform quantitative separation: some squared-overlap probability
differs from \(1/6\) by more than \(1/8\), and the total squared-probability
energy between any two completing bases exceeds \(3/32\).

The full phase-torus containment run completed with exit zero after
5,066,657 processed boxes. Exact algebra, directed integer enclosures,
finite graph checks, source and input bindings, and independent mathematical
audits support the result. Numerical searches supplied candidate data;
they do not supply the exhaustion argument.

## 1. The completed regional theorem

Use the raw matrix

\[
D=D_0=
\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&i&-i&-i&i\\
1&i&-1&i&-i&-i\\
1&-i&i&-1&i&-i\\
1&-i&-i&i&-1&i\\
1&i&-i&-i&i&-1
\end{pmatrix}.
\]

A raw Hadamard has unit-modulus entries and satisfies
\(H^\dagger H=6I\); its unitary basis matrix is \(H/\sqrt6\). Define the
closed relative neighborhood

\[
\mathcal R=
\left\{H:\ H^\dagger H=6I,\ |H_{ij}|=1,\
          \max_{i,j}|H_{ij}-D_{ij}|\le10^{-4}\right\}.
\]

**Theorem.** Let \(H\in\mathcal R\). Suppose \(B/\sqrt6\) is any basis
mutually unbiased to \(I,H/\sqrt6\), and \(x/\sqrt6\) is any unit vector
unbiased to that pair, written with raw coordinates \(|x_i|=1\). Then

\[
\boxed{\quad
\max_j\left|
\frac{|(B^\dagger x)_j|^2}{36}-\frac16
\right|>\frac18.
\quad}
\tag{1}
\]

Consequently the triple \(I,H/\sqrt6,B/\sqrt6\) has no additional common
unbiased ray. In particular it cannot extend to four MUBs. For any two
completing bases \(B/\sqrt6,C/\sqrt6\), define

\[
\Delta(B,C)=\sum_{j,k=0}^5
\left(\frac{|(B^\dagger C)_{jk}|^2}{36}-\frac16\right)^2.
\]

Then

\[
\boxed{\Delta(B,C)>\frac3{32}.}
\tag{2}
\]

No dephasing or family assumption is imposed on \(H\). The statement
includes every Hadamard in the closed entrywise ball, including singular
parameter values. The proof may independently choose the phase of each
candidate ray so that its first raw coordinate equals one; this preserves
all relevant moduli.

Here Fourier-free means not monomially equivalent to a member of the
two-parameter Fourier family or its transpose. An edge of a collection of
bases is Fourier when its transition matrix has that equivalence type.

Every \(H\in\mathcal R\) is Fourier-free. Exact Gaussian-integer arithmetic
gives modulus at least two for each of the 400 middle minors of \(D\).
Each three-by-three determinant has six signed products. Telescoping a
product of three unit-modulus entries changes it by at most \(3\epsilon\),
where \(\epsilon=10^{-4}\). Therefore

\[
|\det H[R,C]|
\ge2-18\epsilon=\frac{9991}{5000}>0.
\]

The established [middle-minor/Fourier routing criterion](algebra/FOURIER_PREDICATE.md)
gives the claimed Fourier-free qualification.

## 2. What the finite algebra does—and does not—supply

There is a useful uniform algebraic reduction for an arbitrary Fourier-free
pair, even before the regional obstruction. Set \(U=H/\sqrt6\) and consider
the full projective scheme in \(\mathbb P^5\times\mathbb P^5\) represented
by \(X=xy^T\), with independent complex factors, satisfying

\[
\operatorname{diag}X=\frac{\operatorname{tr}X}{6}\mathbf1,\qquad
\operatorname{diag}(U^\dagger XU)
   =\frac{\operatorname{tr}X}{6}\mathbf1.
\tag{3}
\]

There are ten bilinear equations. The sixth diagonal equation in each
group follows from the other five by taking the trace. The scheme is kept
with its full multiplicities; no radical is taken.

When all 400 three-by-three minors are nonzero, the trace-zero boundary
has a rigid support description. One factor has support sizes two and four
in the two bases, and the other has sizes four and two. Each singular
two-by-two minor determines one boundary point in each orientation.
At such a point the two expressions for the shared diagonal differential
give \(4c=2c\), hence \(c=0\). The remaining tangent directions are only
the projective gauges. Every boundary point is consequently reduced and
isolated.

Any positive-dimensional projective component would meet the Segre
hyperplane \(\operatorname{tr}X=0\), contradicting that isolation. Thus
the complete scheme is finite. Ten equations of the expected codimension
on the smooth ten-dimensional product form a complete intersection, so its
scheme length is

\[
[a^5b^5](a+b)^{10}=\binom{10}{5}=252.
\]

If \(Z_2(H)\) counts singular positional two-by-two minors, the affine chart
\(\operatorname{tr}X\ne0\) has length \(252-2Z_2(H)\). This counts complex
scheme multiplicities, not just physical rays.

The projective construction is also uniform in a precise sense. Over a
Noetherian coefficient base satisfying the inverse and Hadamard-flatness
relations, with 6 and all middle minors invertible, the projective scheme
is finite locally free of rank 252. Geometric fibers are the finite
complete intersections just described; the fiberwise regular-sequence
flatness criterion supplies flatness over the base. Properness and finite
fibers supply finiteness. This remains valid over nonreduced bases.
It does not make the open affine part finite over that whole base:
two-minor boundary points can enter the affine chart when those minors
cease to vanish.

The distinctions matter concretely at \(D\):

| Object or verified datum | Value and meaning |
|---|---|
| Full projective candidate scheme | Length 252, including multiplicities |
| Singular two-minors of \(D\) | 30, producing 60 reduced boundary points |
| Affine complex scheme at \(D\) | Length 192 |
| Exact atlas in this bundle | 120 verified distinct physical rays |
| Retained template neighborhoods | 120 boxes containing every regional physical candidate |
| Exact companions within the atlas | Ten actual orthogonal sextuples |

The 120 listed physical rays do not exhaust the affine scheme length 192.
Nor does containment in 120 boxes prove one ray per box. The remaining
complex length and possible multiplicities are not inferred from a
numerical count.

The detailed proofs are in
[Finite common-ray algebra](review/FINITE_COMMON_RAY_ALGEBRA.md) and
[Finite candidate-ray and companion algebras](algebra/FINITE_COMPANION_ALGEBRA.md).
The support and boundary analysis is consistent with
[Sun, arXiv:2610.12180v1, Theorem 3.1](https://arxiv.org/html/2610.12180v1).
The degree and relative finite-flat conclusions are justified in the
included proofs; the flatness step uses the
[fiberwise regular-sequence criterion](https://stacks.math.columbia.edu/tag/00MG).

## 3. A seven-ray obstruction target

The affine algebra can be written without discarding nilpotents. Fix
\(z_0=1\) and set

\[
f_k(z)=
\left(\sum_j\overline{H_{jk}}z_j\right)
\left(\sum_j H_{jk}z_j^{-1}\right)-6.
\]

The six \(f_k\) sum identically to zero, giving

\[
A_H=\mathbb C[z_1^{\pm1},\ldots,z_5^{\pm1}]
           /(f_0,\ldots,f_4).
\]

Its antilinear involution is \(z_j^*=z_j^{-1}\). A character is physical
exactly when it preserves that involution, equivalently when all coordinate
values have modulus one.

For several candidate copies define the reciprocal pairing

\[
P_{rs}=\sum_{j=0}^5 (z_j^{(r)})^{-1}z_j^{(s)}.
\]

Six copies form an ordered companion when \(P_{rs}=0\) for all ordered
distinct pairs among them. To ask whether that companion has even one
additional unbiased ray, use seven copies and add

\[
P_{r7}P_{7r}=6,\qquad 1\le r\le6.
\]

The physical characters of this quotient are exactly the forbidden
basis-plus-extra-ray configurations. This is a smaller and stronger target
than searching for two full completing bases, which uses twelve copies.
All ordered orthogonality equations and repeated-label possibilities are
handled explicitly.

These finite algebras formulate the obstruction; they do not by themselves
prove that it vanishes uniformly. The completed regional proof instead
establishes a compact physical containment certificate and a strictly
separated finite compatibility test.

## 4. Covering every candidate throughout the neighborhood

For \(x=(1,e^{i\theta_1},\ldots,e^{i\theta_5})^T\), define fixed-anchor
residuals

\[
F_{D,j}(x)=|(D^\dagger x)_j|^2-6.
\]

If \(x/\sqrt6\) is unbiased to \(H/\sqrt6\) with \(H\in\mathcal R\), then

\[
|(D^\dagger x)_j-(H^\dagger x)_j|\le6\epsilon,
\qquad |(H^\dagger x)_j|=\sqrt6.
\]

It follows that

\[
|F_{D,j}(x)|
\le12\sqrt6\epsilon+36\epsilon^2
<\eta:=30\epsilon+36\epsilon^2
=\frac{75009}{25000000}.
\tag{4}
\]

The search therefore covers a fixed residual **sublevel set**, including
nonzero residuals. It uses the first five columns; dropping the sixth
condition only enlarges the set that must be covered.

All enclosures use an integer grid \(Q=2^{44}\). The residual allowance is
rounded outward to \(\widehat\eta=\lceil Q\eta\rceil/Q\). Each retained
phase box has actual halfwidth

\[
h=\frac{\lceil Q/100\rceil}{Q}
  =\frac{175921860445}{17592186044416}.
\]

The root cube is
\([-\pi_++1/8,\pi_++1/8]^5\), with certified \(\pi_+>\pi\), so it
covers the entire phase torus. Range exclusions and an enlarged-residual
Krawczyk enclosure remove boxes or contract them. The essential identity is

\[
x=m-C(F(m)-y)+(I-CA_x)(x-m),
\quad
y=F(x),\quad
A_x=\int_0^1 DF(m+t(x-m))\,dt.
\]

It holds for any finite rational matrix \(C\). An interval Jacobian
contains \(A_x\), and enlarging the midpoint residual by
\([-\widehat\eta,\widehat\eta]^5\) encloses \(F(m)-y\).
No inverse, simple-root, or contraction assumption is required.
Floating point only proposes \(C\) or selects an efficiency option.
All accepted enclosures and endpoints are directed integer calculations.

Every split uses closed children with a shared exact endpoint. A box is
accepted only when all its possible sublevel points are inside a retained
template. Unresolved small boxes or failed arithmetic guards cause a
nonzero exit. The fresh run completed with the following exact accounting:

| Quantity | Completed run |
|---|---:|
| Processed nodes | 5,066,657 |
| Range-exclusion leaves | 1,600,288 |
| Krawczyk-exclusion leaves | 931,293 |
| Template-covered leaves | 1,748 |
| Splits | 2,533,328 |
| Contractions | 467,744 |
| Maximum depth | 41 |
| Maximum pending boxes | 28 |
| Observed exit code | 0 |
| Wall time | 723.216619 seconds |

The identities \(N=2S+1\) and
\(L_{\rm range}+L_{\rm Krawczyk}+L_{\rm template}=S+1\) hold.
The final marker, coverage file, runner receipt, all 120 output boxes, and
source/header/input/executable hashes were independently checked.

See [Arithmetic and cover soundness](cover/ARITHMETIC_AND_COVER_SOUNDNESS.md),
the [independent tube audit](algebra/INDEPENDENT_TUBE_AUDIT.md), and
the [completed execution receipt](cover/full_tube_r1e4/RUN_RECEIPT.json).

## 5. From containment to the strict companion obstruction

The exact atlas consists of unit-modulus vectors in
\(\mathbb Q(i,\sqrt2,\sqrt3,\sqrt5)\). Its verifiers check every defining
equality, all pair overlaps, and every orthogonal sextuple in the supplied
list. They establish:

* Every nonzero squared raw overlap between distinct atlas rays exceeds
  \(1/50\).
* The atlas has exactly ten orthogonal sextuples, using 60 of its rays.
* For each such sextuple and every one of the 120 atlas rays, some basis
  column has squared raw overlap differing from six by at least six.

The exact association check puts each dyadic phase center within
\(10^{-9}\) of its same-label atlas ray. Since
\(h+10^{-9}<\rho=10001/10^6\), every actual regional candidate is
coordinatewise within \(\rho\) of at least one exact atlas ray.

Let actual raw candidates \(x,y\) receive exact atlas labels \(z,w\).
Their first coordinates all equal one. Telescoping the other five terms
gives

\[
|\langle x,y\rangle-\langle z,w\rangle|<10\rho,
\qquad
\bigl||\langle x,y\rangle|^2-|\langle z,w\rangle|^2\bigr|<120\rho.
\tag{5}
\]

The second inequality uses the bound six on both raw inner-product moduli.
If \(x,y\) are orthogonal, their labels cannot coincide. They also cannot
be a nonorthogonal pair of distinct atlas rays, because
\((10\rho)^2<1/50\). Thus every actual completing basis maps injectively
to one of the ten exact atlas sextuples.

For any additional actual common ray, the exact sextuple–ray gap and (5)
produce a basis column with

\[
\bigl||\langle b_j,x\rangle|^2-6\bigr|
>6-120\rho=\frac{119997}{25000}.
\]

Dividing by 36 gives a probability deviation larger than
\(13333/100000>1/8\), proving (1). Apply (1) to each column of a second
completing basis. The six selected entries occupy different columns, so
their squared deviations sum to more than \(6(1/8)^2=3/32\), proving (2).

A separately authored Gaussian-rational template calculation gives an
independent robust check. Its conservative graphs have 600 possible
orthogonality edges, 240 possible unbiasedness edges, and ten six-cliques.
It verifies all 1,200 clique–ray incidences with strict rational margins,
without assuming that the rational centers are exact roots. An independent
overlap and set-intersection calculation reproduced these results.
See the [rational-template theorem](region/UNIFORM_REGION_THEOREM.md) and
the [regional chain audit](review/REGIONAL_CHAIN_AUDIT.md).

## 6. Exceptional configurations and the precise scope

| Potential issue | Why the proof includes it |
|---|---|
| Singular or colliding candidate roots | The cover encloses the full sublevel set and uses no root inverse or uniqueness premise. |
| Changing complex multiplicities | The graph uses physical containment; the algebra separately retains nilpotents. |
| Two-minor boundary changes | Compact physical phases cannot escape through the nonphysical projective boundary. No constant affine degree is assumed. |
| Overlapping neighborhoods or repeated labels | Any admissible labels satisfy the overlap bound; orthogonal candidates must receive distinct labels. |
| Torus cuts and equality cases | The initial cube covers the full torus, all children are closed, and exclusions use strict separation. |
| A basis and extra ray sharing labels | Every sextuple–label incidence is checked, including labels inside that sextuple. |
| Hadamards outside a chosen construction | The only anchor assumptions are the Hadamard equations and the stated entrywise bound. |

The result is nonvacuous: the exact atlas supplies ten actual companions
for \(I,D/\sqrt6\). It does not assert that every nearby anchor has a
companion. It also does not assert exactly 120 physical candidates at each
anchor, exactly one root per box, or exactly ten total completing bases
throughout the region.

The region contains an explicit nonconstant closed affine Diţă arc. Set
\(D(t)_{ij}=D_{ij}e^{itE_{ij}}\), where

\[
E=\begin{pmatrix}
0&0&0&0&0&0\\
0&0&0&0&0&0\\
0&0&0&1&1&0\\
0&0&-1&0&0&-1\\
0&0&-1&0&0&-1\\
0&0&0&1&1&0
\end{pmatrix}.
\]

All 72 row and column Gram identities hold as exact Laurent identities,
so this is a Hadamard for every real \(t\). The bound
\(|e^{itE_{ij}}-1|\le|t|\) puts the entire closed interval
\(|t|\le10^{-4}\) inside \(\mathcal R\). Its phase-invariant cross-ratio
\(D(t)_{00}D(t)_{23}/(D(t)_{03}D(t)_{20})=ie^{it}\) is nonconstant.
The regional obstruction therefore holds throughout this explicitly
verified interval, with no sampled-parameter assumption.

The theorem excludes a specified Fourier-free neighborhood. Global F,
which asserts that every MUB triple has a Fourier edge, and Global F′,
which asserts that every MUB quartet has a Fourier edge, remain unproved.
The obstruction is invariant under row and column monomial equivalence:
a quartet is excluded whenever one of its pair-transition matrices is
monomially equivalent to some member of \(\mathcal R\). Thus its remaining
search domain must avoid this entire equivalence saturation. No step
converts this regional certificate into a classification of every
disconnected component or every Fourier-free pair.

## 7. Sources, attribution, and verification

The historical Diţă counts are reported in
[Brierley–Weigert, arXiv:0901.4051v2, Section 4.1](https://arxiv.org/abs/0901.4051v2)
and discussed in
[Bengtsson et al., Section 7](https://arxiv.org/abs/quant-ph/0610161v3).
The retained source archives contain no complete exact 120-ray certificate.
The new atlas is checked directly, and completeness for the present
obstruction comes from the new physical cover.

The enclosure engine is explicitly adapted from the ancillary neighborhood
code accompanying
[Hao-Yu Sun, arXiv:2610.12180v1](https://arxiv.org/html/2610.12180v1),
whose article is distributed under CC BY 4.0. This run replaces the anchor,
candidate data, residual allowance, and acceptance problem. It is a fresh
Diţă proof, rather than a replay of Sun's different neighborhood theorem.
Pinned acquisition URLs, source hashes, attribution, and limitations of
other numerical prototypes are recorded in [Source attribution](review/SOURCE_ATTRIBUTION.md).
Full third-party articles are unnecessary for replay.

The bundle separates exact finite checks, mathematical source audits,
execution-evidence integrity, and full fresh search. Those have different
scopes. The recorded cover is a completed execution; independently
reproducing the cover requires running the search again. The
[reproduction guide](REPRODUCE.md) identifies the commands and their
respective gates, including the default exact checks and the separate full
fresh-cover option.
