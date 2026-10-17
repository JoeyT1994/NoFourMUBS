# Finite common-ray algebra, degree 252, and uniform scope

## Result and audit status

The fixed-pair finiteness argument of Hao-Yu Sun,
[arXiv:2610.12180v1](https://arxiv.org/html/2610.12180v1),
Theorem 3.1 and Sections 3.1–3.4, passes this independent analytic review.
The proof below spells out its incidence cases. It also derives two
additional consequences: the exact projective length 252, and a finite
locally free projective algebra of that rank over a suitable coefficient
base. The paper does not state the number 252. No worldwide priority claim
is made for these consequences.

This is a mathematical proof using standard local algebra and projective
geometry, not a formal-kernel verification. Its scope is the stated
equations; it assumes no Hadamard classification, common-ray enumeration,
quartet exclusion, or global maximum theorem.

## 1. Equations and physical normalization

Let \(H\) be a phase Hadamard of order six:
\(|H_{ij}|=1\) and \(H^\dagger H=6I\). Put \(C=H/\sqrt6\).
Assume every one of the 400 positional \(3\times3\) minors is nonzero.
For independent projective coordinates
\(([z],[w])\in\mathbb P^5\times\mathbb P^5\), write

\[
v=C^\dagger z,\qquad u=C^T w,\qquad t=z_0w_0.
\]

Let \(Z_C\) be the zero scheme of the ten bilinear equations

\[
z_iw_i=t\quad(1\le i\le5),\qquad
v_ju_j=t\quad(1\le j\le5).
\tag{1}
\]

The projective scheme retains its full ideal sheaf; in particular it is
not saturated by \(t\). The two omitted equations are consequences:

\[
\sum_jv_ju_j=\sum_i z_iw_i,\qquad
v_0u_0-t=
\sum_{i=1}^5(z_iw_i-t)-\sum_{j=1}^5(v_ju_j-t).
\tag{2}
\]

On \(t\ne0\), independent projective rescaling uniquely sets
\(z_0=w_0=1\), after which \(w_i=z_i^{-1}\). The affine coordinate algebra is

\[
\mathcal A_C=
\mathbb C[z_1^{\pm1},\ldots,z_5^{\pm1}]
\Big/
\left(
(C^\dagger z)_j(C^Tz^{-1})_j-1:1\le j\le5
\right).
\tag{3}
\]

For \(w=\bar z\), these equations say \(|z_i|=1\) and
\(|(C^\dagger z)_j|=1\). Thus \(z/\sqrt6\), with \(z_0=1\), is exactly
a physical common-unbiased ray. Conversely every physical ray has this
unique phase representative. Nilpotents in (3) do not represent additional
physical rays.

## 2. All projective boundary incidences

The middle-minor hypothesis implies that no nonzero vector and its image
under \(C,C^\dagger,C^T,\bar C\) can both have support at most three.
Indeed, three zero image coordinates and at most three source coordinates
would produce an invertible \(3\times3\) block annihilating a nonzero vector
(pad the source coordinates by zeros if necessary). A vector supported at
one coordinate has image support six because all matrix entries are nonzero.

At a point of \(Z_C\) with \(t=0\), set

\[
A=\operatorname{supp}z,\quad B=\operatorname{supp}w,\quad
D=\operatorname{supp}v,\quad E=\operatorname{supp}u.
\]

All four supports are nonempty, and (2) gives
\(A\cap B=D\cap E=\varnothing\). None can have size one: its image would
have size six, forcing the complementary projective vector to vanish.
Hence all sizes lie between two and four.

If \(|A|=3\), then \(|B|\le3\), so \(|E|\ge4\), then \(|D|\le2\), and
the inverse support bound forces \(|A|\ge4\), a contradiction.
If \(|A|=2\), the same inequalities force the first pattern below.
If \(|A|=4\), they force the second:

| \(|A|\) | \(|B|\) | \(|D|\) | \(|E|\) |
|---:|---:|---:|---:|
| 2 | 4 | 4 | 2 |
| 4 | 2 | 2 | 4 |

In each case \(B=A^c\) and \(E=D^c\). This exhausts the support incidences;
no support of size three or overlapping native/transformed supports remains.

For the second pattern, the block \(M=C[B,D]\) satisfies

\[
Mv_D=0,\qquad M^T w_B=0.
\tag{4}
\]

Its entries are nonzero, so a singular such block has rank exactly one.
Conversely any singular positional \(2\times2\) block gives nonzero
right and left kernel vectors, each with both coordinates nonzero.
Extend them by zero and set \(z=Cv,\ u=C^Tw\).
An extra zero of \(z\) would make a \(3\times2\) block rank deficient;
an extra zero of \(u\) would make a \(2\times3\) block rank deficient.
Either would force a zero \(3\times3\) minor. Thus the resulting supports
are exactly those prescribed. Kernel rescalings are precisely the two
projective rescalings, so each singular block gives one point and the
point's supports recover the block.

The involution
\[
([z],[w])\longmapsto([\bar w],[\bar z])
\]
preserves (1) and exchanges the two patterns. Consequently the boundary
has exactly \(2Z_2(C)\) points, where \(Z_2(C)\) counts singular positional
two-minors. This count allows any incidence among the singular two-minors;
the supports, rather than an assumed generic configuration, distinguish
the points.

## 3. Full tangent isolation

Consider the second support pattern and a tangent vector in projective
affine charts. Set \(q=\delta t\), \(\delta v=C^\dagger\delta z\), and
\(\delta u=C^T\delta w\). Linearizing all twelve consequences (2) yields

\[
\delta w_i=q/z_i\ (i\in A),\quad
\delta z_i=q/w_i\ (i\in B),\quad
\delta u_j=q/v_j\ (j\in D),\quad
\delta v_j=q/u_j\ (j\in E).
\]

But \(w^T\delta z=u^T\delta v\), so the support counts give \(2q=4q\).
Hence \(q=0\). The remaining tangent equations reduce to (4), with
\(\delta v_D,\delta w_B\) in its same one-dimensional kernels.
Thus \(\delta z\) and \(\delta w\) are their respective projective rescaling
directions, and the projective tangent vector is zero.
The other pattern follows by the involution.

At each boundary point, the local maximal ideal therefore satisfies
\(\mathfrak m/\mathfrak m^2=0\). Nakayama's lemma gives \(\mathfrak m=0\).
Every boundary point has local ring \(\mathbb C\): it is reduced and
isolated in the **full** scheme, not merely in the boundary subscheme.
Counting boundary points without this tangent calculation would be insufficient.

## 4. Finiteness and exact scheme length

The Segre embedding makes \(t=z_0w_0\) a hyperplane coordinate.
Every positive-dimensional projective irreducible component meets that
hyperplane. A positive-dimensional component of \(Z_C\) would therefore
meet one of the boundary points just proved to have zero-dimensional
local ring, a contradiction. Thus \(Z_C\) is zero-dimensional.

The ambient product is smooth of dimension ten. At a point of \(Z_C\),
the ten local equations (1) generate a maximal-ideal-primary ideal
in a ten-dimensional regular local ring. They are a system of parameters
and hence a regular sequence. The associated regular section of
\(\mathcal O(1,1)^{\oplus10}\) therefore has zero-cycle degree

\[
\operatorname{length}Z_C
=[h_1^5h_2^5](h_1+h_2)^{10}
=\binom{10}{5}=252.
\tag{5}
\]

There is an equivalent integer check using the Koszul resolution and
\(\chi(\mathbb P^5,\mathcal O(-k))=\binom{5-k}{5}\):

\[
\begin{aligned}
\operatorname{length}Z_C
&=\sum_{k=0}^{10}(-1)^k\binom{10}{k}\binom{5-k}{5}^2\\
&=1+210-4320+19845-31360+15876=252.
\end{aligned}
\tag{6}
\]

Generalized binomial coefficients are intended in the first line;
for \(1\le k\le5\) the term is zero. This proof counts all scheme
multiplicities and requires no simple interior roots.

Because a finite scheme splits into its local Artinian components and
the boundary components each have length one,

\[
\boxed{\dim_{\mathbb C}\mathcal A_C=252-2Z_2(C),\qquad
\#\mathcal R_C\le252-2Z_2(C)\le252.}
\tag{7}
\]

Here \(\mathcal R_C\) is the physical common-ray set. A fixed point of the
involution cannot be at the boundary: \(w=\lambda\bar z\) would make
all \(z_iw_i=\lambda|z_i|^2\) equal, nonzero, and hence \(t\ne0\).
Thus (7) omits no physical ray. It is a bound on distinct rays, not an
assertion that every algebraic root is real or simple.

For a phase Hadamard, the elementary Fourier predicate proved in the
preceding bundle says that a zero positional three-minor is equivalent
to membership of \(N\) or \(N^T\) up to monomial equivalence. Therefore
this theorem applies to every Fourier-free edge, with no additional
genericity or two-minor hypothesis.

## 5. A uniform projective algebra over parameters

The same proof gives the following derived proposition.

**Proposition U.** Let \(R\) be Noetherian, with \(6\) invertible, and let
\(C\in GL_6(R)\), \(T=C^{-1}\), satisfy
\[
6C_{ij}T_{ji}=1
\]
for all entries. Suppose all positional three-minors of \(C\) are units.
Use (1) over \(R\), with \(v=Tz\) and \(u=C^Tw\).
The resulting projective scheme \(Z_R\to\operatorname{Spec}R\) is finite
locally free of rank 252.

**Proof.** In every algebraically closed residue field, all matrix entries
are nonzero, and Jacobi's complementary-minor identity makes the three-minors
of \(T\) nonzero. The support and tangent arguments above work in
characteristic different from two and three. For the first boundary pattern
use the right and left kernels of \(T[E,A]\) instead of conjugation;
the other uses \(C[B,D]\) as before. Thus every geometric fiber is finite
and has length 252 by (5). The morphism is projective and quasi-finite,
therefore finite.

At a point \(x\) of \(Z_R\), over \(s\in\operatorname{Spec}R\), the local
map from \(\mathcal O_{R,s}\) to the local ring of
\(\mathbb P^5_R\times_R\mathbb P^5_R\) is flat. The ten equations are
a regular sequence on the fiber, by the zero-dimensional complete-intersection
argument. The fiberwise regular-sequence flatness criterion
[Stacks, Tag 00MG](https://stacks.math.columbia.edu/tag/00MG)
therefore makes the quotient local ring flat over \(\mathcal O_{R,s}\).
Hence \(Z_R\to\operatorname{Spec}R\) is flat. A finite flat morphism over
a Noetherian base is finite locally free
([Stacks, Tag 02KB](https://stacks.math.columbia.edu/tag/02KB)).
Its fiber length makes the rank exactly 252. \(\square\)

This statement includes singular or nonreduced parameter bases. It does
not infer flatness merely from a constant fiber count; the regular-sequence
criterion is essential. One may apply it to the universal type-II
coefficient ring localized at the product of its 400 three-minors.

The affine locus \(t\ne0\) is an open subscheme of this finite projective
family. It need not remain finite over the entire coefficient base:
algebraic roots can specialize to \(t=0\) as two-minors vanish. The
projective rank 252 is therefore not a universal affine rank or a
physical ray count. No finiteness or flatness of a universal complete-
companion algebra is claimed here. Sun's Theorem 5.1 is a separate
statement over a DVR about complete companions and full algebraic
special-fiber emptiness.

## 6. Regional obstruction and remaining proof obligations

For a fixed complete finite physical pool, form the exact orthogonality
and unbiasedness relations. Six orthogonal distinct labels give a
companion basis; two such sextuples give a quartet precisely when all
36 cross relations are unbiased. The raw phase-vector targets are
\(\langle z,z'\rangle=0\) and \(|\langle z,z'\rangle|^2=6\);
the corresponding unit-vector squared-overlap target is \(1/6\).

If no fixed-pool quartet exists, sufficiently small neighborhoods of
the rays preserve every excluded pair relation. They also exclude both
orthogonality and unbiasedness between two points assigned the same label.
The dephased physical phase torus is compact. Its complement outside
these neighborhoods contains no zero of the source's common-ray equations,
so a uniform positive residual gap there keeps all common rays of
nearby exact Hadamards inside the neighborhoods. Any nearby quartet
would then map injectively to a forbidden fixed-pool configuration.

This existence argument tolerates multiple interior roots and splitting
inside a candidate neighborhood. An explicit rational source radius
still requires certified containment and conservative pair bounds.
The companion team's regional-template proof and checker supply that
quantitative gate; the finiteness theorem alone does not supply it.

No incidence exception was discarded: the proof includes all two-minor
patterns, nonphysical roots, nilpotents, physical phase gauges, empty
physical pools, repeated proposed labels, and parameter degeneracy within
the nonvanishing-three-minor locus. At a vanishing three-minor the
finiteness/rank-252 theorem is not invoked.

## Sources and attribution

The boundary mechanism and physical dictionary are audited from Sun,
Theorem 3.1, Propositions 3.5–3.6, and Appendix B.1–B.4 of the
[version-pinned primary article](https://arxiv.org/html/2610.12180v1).
That version is marked CC BY 4.0. The degree computation and Proposition U
are deductions given here; they are not attributed as statements of the
paper. Standard flatness references are
[Tag 00MG](https://stacks.math.columbia.edu/tag/00MG), or
[Tag 0470](https://stacks.math.columbia.edu/tag/0470), and
[Tag 02KB](https://stacks.math.columbia.edu/tag/02KB).
Acquisition hashes and the limited computational controls are recorded
separately in the review provenance note.
