# Triple edges in dimension six: exact corrections and constructive results

9 October 2026

## Main conclusions

The Fourier-only conjectures T1 and T2 in the handoff are false. An entire
explicit one-parameter circle of triple edges is disjoint from the Fourier
family and its transpose. Every member has a specified strict corner with
R at least 32 that stays a positive distance from both omega equations.
At its fourth-root member, all 80 strict corners fail both omega equations;
the maximal corner has seed (-1,-1,1,-1), normalized traces (-1,3), and R=256.

There are also positive results. Every member of both Fourier families is a
triple edge. Every prescribed common unbiased ray for a Fourier member
extends by an explicit six-column formula. On the omega locus the stated
identity for R is correct, and the locus has an exact description as twelve
two-dimensional seed tori. Every strict Fourier corner belongs to it.
The converse reconstruction claim fails: the locus also has a non-Fourier
positive-sheet completion.

These conclusions are not an exhaustive classification of all triple edges.
In particular, the universal 48-ray count and the assertion that all third
bases are the eight canonical ones are not proved here.

| Handoff request | Result of this return |
|---|---|
| A: existence for every Fourier parameter | Proved, using the established common-ray existence theorem of Idel and Wolf and an explicit completion formula |
| A: closed-form enumeration of all rays and all bases, including degenerations | Not established; the formula completes an arbitrary common ray |
| B: omega identity and strict Fourier corners | Proved |
| B: omega image consists of the two Fourier families | Refuted by an exact positive-sheet completion |
| C: exclude every triple edge outside the two Fourier families | False; a whole circle of exact counterexamples is supplied |
| D: coordinate description or certified counterexample | Exact seed curves, exact omega-locus equations, and independently verified counterexamples supplied |

All calculations below use the handoff's unnormalized Hadamard convention.
The results are independent of its asserted global no-four-MUB theorem.

## 1. Conventions and invariance

A phase Hadamard matrix H has unit-modulus entries and H†H=6I.
A third basis for the edge H is a phase Hadamard K satisfying

\[
 |(H^\dagger K)_{rs}|^2=6\qquad(0\le r,s<6).
\tag{1.1}
\]

The corresponding orthonormal bases are I, H/sqrt(6), K/sqrt(6).
Write A=H/sqrt(6), B=K/sqrt(6) when using normalized matrices.

**Equivalence.** If H'=LHR for unitary monomial L,R, then K'=LK is a
companion: H'†K'=R†H†K has the same entry moduli. Conversely use the
inverse transformations. The left operation preserves the coordinate
basis as a set of rays, and the right operation changes only the
description of the H basis.

**Conjugation.** Replace A,B by their entrywise conjugates.

**Transposition.** Given I,A,B, define C=A^T conjugate(B).
It is flat because it is the conjugate of A†B, and it is unitary.
Furthermore

\[
 (A^T)^\dagger C=\overline A A^T\overline B=\overline B.
\]

Thus I,A^T,C is a triple. The reverse implication follows by applying the
same construction to A^T. This also gives a bijection on common unbiased
rays, g maps to A^T conjugate(g), and on their orthonormal bases. In phase
normalization the transported companion is H^T conjugate(K)/sqrt(6).

The existence question and the numbers of rays and third bases therefore
have all the invariances requested in the brief.

## 2. A small exact counterexample

Let omega=(-1+i sqrt(3))/2 and W=(omega^(-jk)) for 0<=j,k<3. Set

\[
 H_0=
 \begin{pmatrix}
 1&-1&1&-1&i&i\\
 1&1&-1&i&-1&i\\
 -1&1&1&i&i&-1\\
 1&i&i&1&1&-1\\
 i&1&i&-1&1&1\\
 i&i&1&1&-1&1
 \end{pmatrix}.
\tag{2.1}
\]

Define V=diag(v0,v1,v2), with

\[
\begin{aligned}
 v_0&=(2-i)/\sqrt5,\\
 v_1&=\frac{-(\sqrt3+1)+i(\sqrt3-1)}{2\sqrt2},\\
 v_2&=\frac{\sqrt3-1-i(\sqrt3+1)}{2\sqrt2},
\end{aligned}
\qquad
 K_0=\begin{pmatrix}W&W\\WV&-WV\end{pmatrix}.
\tag{2.2}
\]

Then I,H0/sqrt(6),K0/sqrt(6) is a MUB triple.
Section 3 proves this as part of a parameter-uniform construction.
The independent verifier also directly multiplies the matrices:

\[
 H_0^\dagger H_0=K_0^\dagger K_0=6I,\quad
 |H_{0,rs}|^2=|K_{0,rs}|^2=1,\quad
 |(H_0^\dagger K_0)_{rs}|^2=6.
\tag{2.3}
\]

Every equality is checked in the exact field Q(sqrt(2),sqrt(3),sqrt(5),i).
There is no floating point acceptance test.

### 2.1 Inequivalence to every Fourier member and transpose

For a phase matrix M define the Haagerup cross-ratio set

\[
 \Lambda(M)=
 \{M_{rc}M_{su}\overline{M_{ru}}\overline{M_{sc}}:
        r,s,c,u\in\{0,\ldots,5\}\}.
\tag{2.4}
\]

Row and column phases cancel. Row and column permutations merely reorder
the set. Transposition also preserves the set. The entries of H0 are
fourth roots, and direct exact enumeration gives

\[
 \Lambda(H_0)=\{1,-1,i,-i\}.
\tag{2.5}
\]

Every Fourier member in the handoff has the fixed F3 block, whose first
two rows and columns exhibit the cross-ratio omega. Its transpose has the
same cross-ratio. Since omega is not a fourth root, H0 is inequivalent to
every member of either family. This proves that T1 is false without using
any reconstruction or classification theorem.

### 2.2 Strict and maximal corner

The upper-left block of H0 dephases to

\[
 E_0=\begin{pmatrix}1&1&1\\1&-1&-1\\1&1&-1\end{pmatrix}.
\]

Hence (a,b,c,d)=(-1,-1,1,-1). Choose t=-1, which satisfies t^3=abcd.
Then

\[
 U=-1,\quad V=3,\quad A=2,\quad B=-4,\quad u=4,\quad v=16,
\]
\[
 g=20,\quad \eta=8,\quad\chi=-112,\qquad
 R=4(20)^2(8)-112^2=256.
\tag{2.6}
\]

The exact enumeration of all 400 positional corners is

| R | Number of corners |
|---:|---:|
| 0 | 320 |
| 256 | 80 |

All 80 strict corners are off both omega equations. Thus this is also a
maximal-corner counterexample; selecting maximal corners does not repair
T2.

There is a short reason that no strict fourth-root corner can satisfy
either equation. The unnormalized traces P=ad+b+c and Q=bc+d+a belong
to Q(i). If Q=omega P or Q=omega^2 P with P nonzero, then a primitive
cube root belongs to Q(i), which is impossible. If P=0, the equation
forces Q=0, and the compact formula gives R=0. Both the existential and
universal strict-corner formulations of T2 are therefore false.

## 3. A whole circle of exact non-Fourier triple edges

The matrix in (2.1) is the x=0 member of Zauner's one-parameter
construction, reproduced in Appendix B of Jaming, Matolcsi, Mora,
Szollosi and Weiner [JMM+]. We now give a global explicit companion and
a uniform corner argument.

Put z=exp(ix), x real, and

\[
 H(x)=
 \begin{pmatrix}
 1&-z^{-1}&z&-1&iz^{-1}&iz\\
 z&1&-z^{-1}&iz&-1&iz^{-1}\\
 -z^{-1}&z&1&iz^{-1}&iz&-1\\
 1&iz^{-1}&iz&1&z^{-1}&-z\\
 iz&1&iz^{-1}&-z&1&z^{-1}\\
 iz^{-1}&iz&1&z^{-1}&-z&1
 \end{pmatrix}.
\tag{3.1}
\]

For k=0,1,2 let

\[
 \tau_k=x+2\pi k/3,\quad s_k=\sin\tau_k,\quad c_k=\cos\tau_k,
\]
\[
 v_k(x)=
 \frac{2(c_k-s_k)-i(1+4s_kc_k)}
      {\sqrt{(1+4s_k^2)(1+4c_k^2)}}.
\tag{3.2}
\]

Use the positive real square root. Its radicand is

\[
 (1+4s_k^2)(1+4c_k^2)
     =5+16s_k^2c_k^2=5+4\sin^2(2\tau_k)\ge5.
\tag{3.3}
\]

With V(x)=diag(v0(x),v1(x),v2(x)), set

\[
 K(x)=\begin{pmatrix}W&W\\WV(x)&-WV(x)\end{pmatrix}.
\tag{3.4}
\]

**Theorem 3.1.** For every real x, I,H(x)/sqrt(6),K(x)/sqrt(6) is a MUB
triple. The formula is global, with no singular denominators or missing
parameter cases.

**Proof.** Let Q=W/sqrt(3) and P=diag(Q,Q). All four blocks of H(x)
are circulant. After Fourier transformation their normalized two-by-two
mode matrices are

\[
 S_k=\frac1{\sqrt6}
   \begin{pmatrix}1+2is_k&-1+2ic_k\\
                   1+2ic_k&1-2is_k\end{pmatrix}.
\tag{3.5}
\]

Each is unitary: both column norms squared are
(2+4s_k^2+4c_k^2)/6=1, and their inner product is zero by direct
multiplication. Therefore H(x)/sqrt(6)=P S P† is unitary, where S
collects the diagonal mode blocks. Its entries already have modulus
1/sqrt(6).

Write the first column of S_k as (alpha_k,gamma_k). Formula (3.2)
is precisely

\[
 v_k=-i\,\frac{\gamma_k\overline{\alpha_k}}
                   {|\alpha_k\gamma_k|}.
\]

It has modulus one and satisfies
Re(alpha_k conjugate(gamma_k) v_k)=0. Thus

\[
 B_k=\frac1{\sqrt2}\begin{pmatrix}1&1\\v_k&-v_k\end{pmatrix}
\]

is flat unitary, and every entry of S_k† B_k has modulus 1/sqrt(2).
For the second row of S_k† B_k use row orthogonality of S_k, which
gives the opposite interference term.

Let B=(1/sqrt(2))[[I,I],[V,-V]]. Then K(x)/sqrt(6)=P B, and
(H(x)/sqrt(6))†(K(x)/sqrt(6))=P S†B. Each of its entries is one
Fourier entry of modulus 1/sqrt(3) times one mode entry of modulus
1/sqrt(2). It is flat. This proves all three MUB conditions. QED.

### 3.1 Two explicit seed curves and a uniform strictness bound

Keep the first three rows. Dephase either the first three columns or the
last three columns. With q=z^3, the two seeds are

\[
\begin{aligned}
 \theta_{\mathrm L}:&(a,b,c,d)=(-1,-q^{-1},q,-1),\\
 \theta_{\mathrm R}:&(a,b,c,d)=(-1,iq^{-1},iq,-1).
\end{aligned}
\tag{3.6}
\]

For both choose t=-1. Their traces and invariants are

\[
\begin{array}{c|c|c|c}
 &U&V&R\\ \hline
 {\mathrm L}&-1-2i\sin(3x)&3&256\cos^6(3x)\\
 {\mathrm R}&-1-2i\cos(3x)&3&256\sin^6(3x).
\end{array}
\tag{3.7}
\]

For completeness, substituting U=-1-2ir, V=3 into the compact invariant
gives

\[
\begin{aligned}
u&=4(1+r^2),&v&=4(4+r^2),\\
g&=4(5-r^2),&\eta&=4(2-r^2),&
\chi&=16(3r^2-7),\\
R&=256(1-r^2)^3.
\end{aligned}
\]

Apply this once with r=sin(3x) and once with r=cos(3x).
At every parameter,

\[
 \boxed{\max(R_{\mathrm L},R_{\mathrm R})\ge32.}
\tag{3.8}
\]

Both corners satisfy |U|<=sqrt(5) and |V|=3. For either primitive
cube root zeta,

\[
 \boxed{|V-\zeta U|\ge3-\sqrt5>0.}
\tag{3.9}
\]

Section 4 proves that every strict corner of a Fourier member or its
transpose satisfies an omega equation. Equations (3.8)-(3.9) therefore
prove that **every H(x) is outside both Fourier families**, for all real
x. This is a global family counterexample, with no exceptional parameter.

In the four-angle torus, the displayed curves are, modulo 2pi,

\[
 \theta_{\mathrm L}(x)=(\pi,\pi-3x,3x,\pi),\qquad
 \theta_{\mathrm R}(x)=(\pi,\pi/2-3x,\pi/2+3x,\pi).
\tag{3.10}
\]

Their strict portions together provide a corner for every member of the
circle. These are exact subsets of the set of seeds admitting a physical
triple-edge completion.

An independent Laurent calculation also gives the full cross-ratio set

\[
 \Lambda(H(x))=\{i^p z^{3q}:0\le p<4,\ q=-1,0,1\}.
\tag{3.11}
\]

Away from the finite condition z^36=1 and z^12!=1 it does not contain
omega. This provides a second, reconstruction-independent Fourier
inequivalence proof for those parameters. The two-corner proof covers
the remaining parameters too.

## 4. Exactly what the omega locus says

### 4.1 The invariant identity is correct

Let zeta be omega or omega^2 and V=zeta U. Put rho=|U|^2.
Then u=rho, v=3rho, g=3rho, eta=rho. Moreover

\[
 (1+\zeta)(1-\zeta)^2=3,\qquad \chi=-6\operatorname{Re}(U^3).
\]

Consequently

\[
 R=36|U|^6-36(\operatorname{Re}U^3)^2
   =\boxed{36(\operatorname{Im}U^3)^2}.
\tag{4.1}
\]

This is an identity at every seed on the locus, including its boundary.
Strictness there is exactly Im(U^3)!=0.

### 4.2 The full seed locus consists of twelve explicit tori

For the normalized even-product triple
(ad,b,c)/t, the entries have modulus one, product one and sum U. Its
root polynomial is

\[
 p_U(\lambda)=\lambda^3-U\lambda^2+\overline U\lambda-1.
\tag{4.2}
\]

Thus its unordered entries are determined by U, even at collisions.
Multiplying all three entries by zeta multiplies their sum by zeta and
keeps their product one. It follows that

\[
 V=\zeta U
 \quad\Longleftrightarrow\quad
 \{bc,d,a\}=\{\zeta ad,\zeta b,\zeta c\}
 \quad\text{as multisets}.
\tag{4.3}
\]

Solving the six possible bijections gives the following table. The
unlisted two entries are arbitrary unit phases.

| Component for a fixed primitive zeta | Seed equations | Orthogonal pair in E |
|---|---|---|
| 1 | a=zeta c, d=zeta b | rows 2 and 3 |
| 2 | a=zeta b, d=zeta c | columns 2 and 3 |
| 3 | a=zeta^2, c=zeta | columns 1 and 2 |
| 4 | c=zeta, d=zeta^2 | rows 1 and 3 |
| 5 | a=zeta^2, b=zeta | rows 1 and 2 |
| 6 | b=zeta, d=zeta^2 | columns 1 and 3 |

Take both choices of zeta. Intersections of components are allowed;
none were divided out or discarded.

Equivalently, the union of the two omega loci consists exactly of
corners containing an orthogonal pair of rows or columns. Indeed, three
unit phases sum to zero precisely when they are a rotated permutation
of 1,omega,omega^2. Normalizing their first entry gives exactly the
twelve equations above.

For an explicit angle description put delta=+2pi/3 or -2pi/3.
The six rows of the table become, respectively,

\[
\begin{array}{ll}
 \theta_a=\theta_c+\delta,&\theta_d=\theta_b+\delta,\\
 \theta_a=\theta_b+\delta,&\theta_d=\theta_c+\delta,\\
 \theta_a=-\delta,&\theta_c=\delta,\\
 \theta_c=\delta,&\theta_d=-\delta,\\
 \theta_a=-\delta,&\theta_b=\delta,\\
 \theta_b=\delta,&\theta_d=-\delta.
\end{array}
\tag{4.4}
\]

All congruences are modulo 2pi. This is an exact description of the
omega locus in the seed torus, not a description of all triple edges.

### 4.3 Every strict Fourier corner is on the locus

Label rows of the handoff's Fourier family by (s,r), with s=0,1 and
r=0,1,2, and columns by (q,j). With d=(1,a,b), its entries are

\[
 F_{(s,r),(q,j)}=(-1)^{sq}d_j^s\omega^{rj}.
\tag{4.5}
\]

Consider any three selected rows and three selected columns.

If the rows use both s labels and the columns have three distinct j
labels, two selected rows share s. Their corner inner product is a
nontrivial complete sum of three Fourier characters and is zero.
The corner is on the omega locus by Section 4.2.

It remains to show every other pattern has R=0. If all three rows have
the same s, all r labels occur. With three distinct j labels, the block
is a phase-permuted F3: X=Y=Z=0 and J=0, giving R=0. With a repeated
j label, its normalized shape has X=Y=Z=3 and J=0, again R=0.

Finally, suppose both s labels occur and a j label repeats. That
repeated label occurs once with q=0 and once with q=1. Reordering rows
and columns and dephasing gives

\[
 E=\begin{pmatrix}1&1&1\\1&1&\zeta\\1&-1&t\end{pmatrix},
 \qquad \zeta\in\{\omega,\omega^2\},\quad |t|=1.
\]

Its defining Gram quantities are X=3,Y=Z=1,J=0. Hence
g=12, eta=4, chi=-48, and R=0.
This exhausts all patterns, proving the assertion without genericity
assumptions. The same holds for transposes, because transposition leaves
the two trace sums and R unchanged. Row and column phases and
permutations do not affect the property of having an orthogonal
corner row or column pair.

There are at most 144 potentially strict corners: 18 mixed row
selections and 8 selections having all three j labels. Some parameters
have fewer strict corners; ordinary F6 has none. Therefore a bare
existential strict-corner criterion would require a separate F6 clause
even if the other counterexamples did not exist.

For the exact phases a=(3+4i)/5 and b=(5+12i)/13, the verifier finds
all 144 potential values strictly positive. Each is a Laurent polynomial
in the two phase parameters. This one simultaneous witness proves that
none is identically zero, so 144 is the exact generic strict-corner
count, outside the zero sets of finitely many nonzero Laurent
polynomials. This statement concerns corners, not common unbiased rays.

### 4.4 The positive omega image is larger than the Fourier families

The separate file OMEGA_COMPLETION.md gives a complete exact
construction and verifier for the seed

\[
 (a,b,c,d)=(\omega^2,\omega,i,i).
\tag{4.6}
\]

It has R=144 and satisfies an omega equation. The constructed
positive-sheet completion has, up to a cycle of its last three columns,
the upper-right block

\[
 B=\begin{pmatrix}
 1&1&1\\
 \alpha\omega&\alpha\omega^2&\alpha\\
 \alpha&\alpha&\beta
 \end{pmatrix},
 \qquad
 \alpha=(-4-3i)/5,\quad\beta=(3-4i)/5.
\tag{4.7}
\]

Another corner, using its first three rows and columns 1,2,4
(one-based indices), has

\[
 R=\frac{104256+29952\sqrt3}{625}>0.
\tag{4.8}
\]

If P and Q denote that corner's unnormalized even and odd trace sums,
then

\[
 |Q-\omega P|^2=\frac{36-18\sqrt3}{5}>0,\qquad
 |Q-\omega^2 P|^2=\frac{12+6\sqrt3}{5}>0.
\tag{4.9}
\]

It therefore cannot be a Fourier member or transpose by Section 4.3.
The same physical matrix has a strict omega corner and a strict
non-omega corner. In particular, “some” and “every” are not
interchangeable properties of a Hadamard matrix.

No triple-edge claim for this particular completion is needed for this
conclusion. Its role is to refute the proposed image of the omega locus.
A numerical common-ray probe is not a certificate that this matrix has
no third basis.

## 5. Every Fourier parameter admits a triple

There is an explicit completion for any prescribed common ray.
The clock/skew-antiunitary formulation appears as Theorem 6.1 of Sun
[Sun]. Here is a direct formulation for the precise Fourier orientation
used in the handoff.

Let m>=1, omega_m=exp(2pi i/m), Q=(omega_m^(jk))/sqrt(m), and
D=diag(d0,...,d(m-1)), with every d_j a unit phase. Define

\[
 \mathcal F_D=\frac1{\sqrt2}
 \begin{pmatrix}Q&Q\\QD&-QD\end{pmatrix}.
\]

For m=3 and d=(1,a,b), this is F(a,b)/sqrt(6).
Let g=x/sqrt(2m), x=(u,v), be common unbiased to I and this matrix.
Let P shift both m-entry blocks by one, R reverse their cyclic indices,
and define the antiunitary

\[
 J(u,v)=(-R\overline v,R\overline u).
\]

Then an explicit companion is

\[
 \boxed{\mathcal K(x)=\frac1{\sqrt{2m}}
 [x,Px,\ldots,P^{m-1}x,Jx,PJx,\ldots,P^{m-1}Jx].}
\tag{5.1}
\]

To check this, write p=Q†u and q=Q†v. Common unbiasedness is exactly

\[
 |p_j|^2+|q_j|^2=2,\qquad
 \operatorname{Re}(d_jp_j\overline{q_j})=0.
\tag{5.2}
\]

P multiplies each mode pair by omega_m^(-j); J maps it to
(-conjugate(q_j),conjugate(p_j)). Both preserve (5.2) and native
entry moduli. Within either orbit, inner products are
2 sum_j omega_m^(-(s-r)j)=2m delta_rs. Mixed inner products vanish
modewise, since conjugate(p_j)(-conjugate(q_j))+
conjugate(q_j)conjugate(p_j)=0. This proves (5.1).

Idel and Wolf's Theorem 2 [IW] supplies a starting ray for every
unitary: diagonal unitary L,R make LUR have row sums one.
Apply this to U=F_D†. Then x=R 1 has unit-modulus entries and
F_D†x=L†1 does too. Formula (5.1) proves existence for every D.
Transposition invariance proves existence for the other Fourier
orientation as well.

The starting ray need not be unique. This argument proves existence and
gives a closed formula for its completion. It does not give closed
expressions for every starting ray as a function of a,b.

### 5.1 The exact counting consequence

Projectively, P^m=I, J^2=-I and JP=P^(-1)J generate a group with
2m elements. Every orbit on common rays has exactly 2m elements,
because its displayed vectors are orthogonal. Thus, if the set of
common rays is finite of size N, then

\[
 2m\mid N,\qquad
 \text{number of canonical orbit bases}=N/(2m).
\tag{5.3}
\]

For dimension six, 48 rays therefore imply exactly eight canonical
orbit bases. To conclude that there are exactly eight third bases in
total, one must also exclude bases that combine rays from different
orbits. This is a separate assertion. At ordinary F6 there are 48 rays
but 16 third bases, so such additional bases really occur [JMM+].
The generic 48/8 figures in that paper are explicitly presented as
numerical evidence.

The three columns in each half of (5.1) form circulant blocks.
Consequently these canonical companions themselves lie in the
two-circulant construction discussed next. This explains directly why
Fourier triples naturally produce non-Fourier transition edges.

## 6. A larger rigorously known subset of the triple-edge locus

Let B23 denote the classes admitting a representative composed of four
circulant 3-by-3 blocks. Every such Hadamard is a triple edge.
This is the general Zauner construction; Szollosi developed its
two-parameter order-six family, recalled in [MMVW].

Here is a direct proof including degenerate Fourier modes. For a
normalized bicirculant Hadamard, conjugation by block Fourier matrices
gives unitary two-by-two modes

\[
 S_k=\begin{pmatrix}\alpha_k&\beta_k\\
                     \gamma_k&\delta_k\end{pmatrix}.
\]

If alpha_k gamma_k is nonzero, choose

\[
 v_k=-i\,\gamma_k\overline{\alpha_k}/|\alpha_k\gamma_k|.
\]

If it is zero, choose any unit v_k. In either case,
Re(alpha_k conjugate(gamma_k) v_k)=0. The proof with B_k in
Section 3 shows that both B_k and S_k†B_k are flat unitaries.
Multiplying by the block Fourier matrix produces a common
unbiased basis. Thus there is no omitted zero-mode case.

In particular the rigorous inclusion is

\[
 \mathcal F\ \cup\ \mathcal F^T\ \cup\ B_{23}
 \ \subseteq\ \mathcal T.
\tag{6.1}
\]

The transpose and conjugate of a bicirculant representative remain
bicirculant, so B23 is already closed under those operations. This
formulation avoids dependence on the naming of individual parameter
sheets of the Szollosi family.

The broader conjecture in [MMVW, Conjecture 1] classifies entire
triples through this construction and an exceptional Fourier triple.
It is an exhaustion conjecture, not a theorem used in this return.
No equality replacing (6.1) is claimed here.

## 7. What a corrected global exclusion program would require

The requested exclusion outside the two Fourier families cannot be
certified: the whole family in Section 3 lies there. The candidate
allowed set must first contain the established bicirculant triple
edges and every required symmetry image.

For precision, suppose A is a proposed closed allowed set of classes
in the compact Hadamard quotient, equipped with an invariant metric.
A sufficient local theorem is:

> There is r>0 such that every triple edge H satisfying
> dist([H],A)<r belongs to A.

This statement must be uniform along all of A, including its
intersections and special parameter strata. A useful stronger
quantitative form would be constants c>0, nu>0 such that

\[
 \sum_{j,k}\bigl(|(H^\dagger K)_{jk}|^2-6\bigr)^2
 \ge c\,\operatorname{dist}([H],A)^\nu
\tag{7.1}
\]

for every pair of phase Hadamards H,K with dist([H],A)<r.
It implies the stated local theorem immediately.

An exact finite cover excluding a single six-clique on the compact
region dist([H],A)>=r/2 would then combine with the local theorem to
prove T subset A. The overlap r/2<r prevents a gap between the two
regions. Both the local theorem and the outer certificate remain to
be established for an appropriate enlarged A; they do not follow
from a no-four-MUB result.

This also diagnoses the supplied numerical evidence. Randomly sampled
points of a four-dimensional Hadamard parameter space can miss a
two-dimensional triple family completely. Least-squares searches for
common rays do not establish exhaustion, and an observed near-zero
omega residual does not establish an exact equation. The exact
omega-image example in Section 4.4 shows additionally that the locus
is not a faithful test for Fourier-family membership.

## 8. Computation, proof scope and reproduction

The supplied exploration scripts were treated as numerical data.
They are not used to accept any theorem in this report.

The verification scripts supplied with this return use exact rational
arithmetic, exact algebraic fields, and symbolic polynomial identities.
The fourth-root example needs only the Python standard library.
The parameter-uniform symbolic verifiers additionally need SymPy.

Run from this directory:

~~~bash
python3 -m pip install -r requirements.txt
python3 verify_all.py
~~~

Every acceptance check is an explicit conditional raising an exception
on failure; running Python with optimization does not disable checks.
Each verifier also runs separately. The receipt lists precisely what
was replayed. Idel-Wolf's existence theorem is an explicitly cited
external mathematical input, not something certified by these scripts.

The exact counterexamples and the entire circle require no external
existence theorem, numerical search, or global Hadamard classification.
The positive-sheet identification in OMEGA_COMPLETION.md is matched
to both sides of the handoff's stated convention, with exact square-root
orientation and cube-root checks. Its physical matrix identities are
separately certified. Thus the specified cubic matrix is the actual
positive-sheet reconstruction up to a permutation of its lower rows,
without needing an external reconstruction-existence theorem.

See STATUS.md for the distinction between proved results, exact
computational checks, exploratory numerics, and remaining open claims.

## References

[JMM+] P. Jaming, M. Matolcsi, P. Mora, F. Szollosi and M. Weiner,
“A generalized Pauli problem and an infinite family of MUB-triplets in
dimension 6,” arXiv:0902.0882v2 (2009). Appendix B gives Zauner's
one-parameter matrix and circulant-block factorization; Numerical
Evidence 1.3 distinguishes the generic counts from proved results.
https://arxiv.org/html/0902.0882v2

[IW] M. Idel and M. M. Wolf, “Sinkhorn normal form for unitary matrices,”
Linear Algebra and its Applications 471 (2015), 76-84, Theorem 2.
https://arxiv.org/html/1408.5728v3
https://doi.org/10.1016/j.laa.2014.12.031

[Sun] H.-Y. Sun, “Mutually unbiased bases: common states, completion,
and extension obstructions,” arXiv:2610.12180v1 (8 October 2026),
Theorem 6.1 and Corollary 6.2.
https://arxiv.org/html/2610.12180v1

[MMVW] M. Matolcsi, A. E. Matszangosz, D. Varga and M. Weiner,
“Triplets of Mutually Unbiased Bases,” arXiv:2503.14752v2,
Section 4 and Conjecture 1.
https://arxiv.org/html/2503.14752v2

[Handoff] TriplesHandoff.zip, supplied with this task. Definitions and
reconstruction conventions: PROMPT.md, reference/DELTOID_REDUCTION.md
and reference/RECONSTRUCTION.md. Its content hashes are recorded in
INPUT_SHA256.json.
