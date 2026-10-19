# Two rays from one clock orbit force a classified Fourier-edge triple

**Status: PROVED**, subject to the written proof below and its independent
review. The finite arithmetic is replayed by `verify_clock_collision.py`.
No atlas or numerical ray census is used. Global A, C, F and F-prime remain
**NOT ESTABLISHED**.

## 0. Statement and input boundary

Use the transposed Fourier orientation already used in the first P return:

\[
 U(D)=\frac1{\sqrt6}\begin{pmatrix}F&DF\\F&-DF\end{pmatrix},\qquad
 D=\operatorname{diag}(1,z,w),\qquad
 Z=\operatorname{diag}(1,\omega,\omega^2,1,\omega,\omega^2),
\]

where \(F_{jk}=\omega^{jk}\). Exchanging the two anchor bases and conjugating
the configuration converts the brief's \(N(D)\) orientation to this one, as
explained in the first P return, Fourier report §0. The conclusion concerns
this specified diagonal clock in this specified orientation.

For a common ray \(v\), let

\[
 \mathcal O(v)=\{v,Zv,Z^2v\},\quad
 J_D(r,s)=(D\bar s,-D\bar r),\quad
 \mathcal E_D(v)=\mathcal O(v)\cup\mathcal O(J_Dv).
\]

The known canonical completion theorem says that \(\mathcal E_D(v)\) is an
orthonormal common-unbiased basis. The first P return, Fourier report §7,
places its triple in the specific companion orbit \(GM\).

**Theorem A4 (clock collision).** Let \(K\) be any orthonormal common-unbiased
basis for \(\{I,U(D)\}\). If \(K\) contains two different rays of one clock
orbit \(\mathcal O(v)\), then:

1. \(K\) is the union of two complete clock orbits;
2. if \(v\)'s kernel profile has rank two, \(K=\mathcal E_D(v)\), hence its
   triple belongs to \(GM\);
3. the only other case is one of the twelve parameter points
   \((z,w)=(\sigma_1\kappa,\sigma_2\kappa^2)\), where \(\kappa^3=1\) and
   \(\sigma_1,\sigma_2\in\{1,-1\}\). There the remaining possibilities are
   again canonical triples or members of the isolated product triple's orbit.

Thus every triple still unclassified in subproblem A must have a companion
basis whose six rays belong to **six distinct clock orbits**. This is a
necessary global condition, not a proof that such bases do not exist. Known
bases can themselves satisfy this condition in a chosen anchor presentation.

Inputs beyond elementary linear algebra are limited to the first P return's
complete kernel-profile reconstruction (including its twelve rank-one points),
its explicit canonical membership in \(GM\), and the permitted fact that a
pair containing Tao cannot extend to a triple. Four-ray completion uniqueness
is proved independently in `SUPPORT_AND_COMPLETION.md` without a finite-ray
hypothesis.

## 1. Classifying phase-Hadamard completions of two clock columns

This section is independent of the Fourier anchor \(U(D)\).
Let a phase-Hadamard basis contain a flat unit vector \(v\) and \(Zv\).
After multiplying rows by their phases, take

\[
 e_0=\frac1{\sqrt6}\binom{\mathbf1}{\mathbf1},\qquad
 e_1=\frac1{\sqrt6}\binom{q}{q},\qquad
 e=\frac1{\sqrt6}\binom{q^2}{q^2},\qquad q=(1,\omega,\omega^2)^T.
\]

If the supplied pair is \(v,Z^2v\), reverse the frequency labels; all arguments
below are unchanged. The four-dimensional complement of \(e_0,e_1\) is

\[
 \mathbb C e\ \oplus\ W,\qquad
 W=\left\{\frac1{\sqrt2}\binom b{-b}:b\in\mathbb C^3\right\}.
\]

Write a remaining unit column as

\[
 w=\alpha e+\frac1{\sqrt2}\binom b{-b}.
\]

The entrywise flatness equations, obtained by adding and subtracting the
two probabilities at each frequency, are exactly

\[
 |b_j|^2=\frac{1-|\alpha|^2}{3},\qquad
 \operatorname{Re}(\alpha\omega^{2j}\bar b_j)=0.       \tag{1}
\]

For \(\alpha\ne0\), multiply the column by a phase so that \(\alpha>0\).
If \(|\alpha|=1\), the column is \(e\), and all other remaining columns
have \(\alpha=0\). Otherwise (1) gives

\[
 b=i\beta f_\epsilon,\quad
 f_\epsilon=\frac1{\sqrt3}(\epsilon_j\omega^{2j})_{j=0}^2,
 \quad \alpha^2+\beta^2=1,
\]

where \(\beta\ne0\) is real. Absorb the overall sign of \(\epsilon\) into
\(\beta\), so only the following four sign vectors are needed:

\[
 (+++),\quad (+--),\quad (-+-),\quad (--+).             \tag{2}
\]

Their normalized vectors have diagonal inner products one and off-diagonal
inner products \(-1/3\). Any three are linearly independent; their sole
linear relation is that all four sum to zero. These facts are also checked
exactly by the replay.

Let \(q_0\) be the number of the four remaining columns with \(\alpha\ne0\).
Completeness on \(\mathbb C e\oplus W\) gives

\[
 \sum_{\alpha_\ell\ne0}\alpha_\ell\beta_\ell f_{\epsilon_\ell}=0,
 \qquad \sum_\ell\alpha_\ell^2=1.                    \tag{3}
\]

The columns with \(\alpha=0\) make no contribution to the first sum. This
retains all zero branches; they are not parametrized by (2).

If a pure \(e\) column is present then \(q_0=1\), with three columns in W.
Otherwise every coefficient \(\alpha_\ell\beta_\ell\) in (3) is nonzero.
If at most three distinct sign directions occur, their independence says
that the sum of these coefficients within each repeated direction is zero.
Every occurring direction therefore needs at least two columns.

* One direction confines all these columns to the same two-dimensional
  complex plane \(\mathbb C e+\mathbb C f_\epsilon\). Thus there can be at
  most two orthonormal columns. Equation (3) rules out one, so \(q_0=2\).
* Two directions would require four columns, two in each plane. The two
  orthonormal columns in the first plane span it. Every column in the second
  pair must then be orthogonal to \(e\), contrary to its nonzero \(\alpha\).
* Three directions would require at least six columns, which is impossible.

This exhausts repeated and antipodal sign choices, and rules out \(q_0=3\).
The only remaining case is \(q_0=4\) with all four directions in (2).
Equation (3) then gives a common nonzero value

\[
 \alpha_\ell\beta_\ell=c\quad(\ell=1,2,3,4).
\]

Orthogonality of two different columns gives

\[
 \alpha_\ell\alpha_k-\frac13\beta_\ell\beta_k=0,
 \qquad \alpha_\ell^2\alpha_k^2=c^2/3.
\]

All four positive \(\alpha_\ell\) are consequently equal. By (3),

\[
 \alpha_\ell=\frac12,\qquad
 \beta_\ell=\frac{\sqrt3}{2}\quad\hbox{for every }\ell,
\]

or all four \(\beta_\ell\) have the negative sign. Swapping the upper and
lower coordinate triples interchanges these two signs. Multiplying the last
four columns by -1,
its entries are powers of \(\omega\) with exponent matrix

\[
 T_0=\begin{pmatrix}
 0&0&2&2&1&1\\
 0&1&1&0&1&0\\
 0&2&0&2&2&0\\
 0&0&1&1&2&2\\
 0&1&0&1&0&1\\
 0&2&2&0&0&2
 \end{pmatrix}.                                      \tag{4}
\]

The exact replay exhibits its monomial equivalence, and that of the opposite
common beta sign, to the standard Tao matrix. No classification theorem for all
cubic Hadamards is needed here.

We have proved the following exhaustive dichotomy:

> Every phase-Hadamard completion of two clock-related columns is either
> Tao-equivalent, or contains **at least two** other columns in W, namely
> orthogonal to all three original clock columns.

For context, the two non-Tao forms are themselves Fourier type. In the
\(q_0=1\) branch the two rows in any paired frequency have ratios +1 on the
first three columns and -1 on the final three. In the \(q_0=2\) branch the
two columns with nonzero \(\alpha\) have coordinate ratios taking two
opposite phases, three occurrences each: an orthonormal real pair
\((\alpha_1,\beta_1),(\alpha_2,\beta_2)\) obeys
\((\alpha_2,\beta_2)=\pm(-\beta_1,\alpha_1)\), and the column ratio is
\(\pm i\epsilon\) on the paired coordinates. Either description exhibits
a singular positional 3 by 3 minor directly.

## 2. Common rays orthogonal to a full clock orbit

Return to \(U(D)\), and write raw representatives \(v=(r,s)\) with all
entries unimodular. Put \(t_j=s_j/r_j\). For another common ray \(w=(a,b)\),
the three conditions \(w\perp v,Zv,Z^2v\) are equivalent, by the invertible
three-point Fourier transform, to

\[
 \bar r_j a_j+\bar s_j b_j=0\quad(j=0,1,2),
 \quad\hbox{equivalently}\quad b_j/a_j=-t_j.           \tag{5}
\]

Thus every such ray has exactly the opposite profile. The first P return's
kernel reconstruction proves:

* a rank-two profile supplies exactly three common rays, one full clock orbit;
* a rank-one profile can occur only at the twelve points in Theorem A4 and
  supplies exactly six common rays;
* a profile has rank one if and only if its opposite does.

Consequently, at every rank-two profile, the only common rays orthogonal to
the full orbit are \(\mathcal O(J_Dv)\). This statement remains valid at the
twelve parameter points whenever the particular profile has rank two.

## 3. Rank-one profiles and all their orthogonal pairs

The exceptional parameters can be reduced to \(D=I\) while preserving the
clock: write \(d_j=\sigma_j\kappa^j\), with \(\sigma_0=1\). A cyclic
permutation of the last three anchor columns removes \(\kappa^j\), and
swapping the two native coordinates of frequency j whenever \(\sigma_j=-1\)
removes the signs. These row swaps commute with Z.

At \(D=I\), the two rank-one profiles are \(t_j=i\) for all j and
\(t_j=-i\) for all j. Their common rays are

\[
 \frac1{\sqrt2}(1,\pm i)\ \otimes\ \frac1{\sqrt3}r,
\]

where the six possible qutrit rays r form the two clock orbits

\[
 Q_+=\{Z_3^k(1,\omega,\omega):k=0,1,2\},\qquad
 Q_-=\{Z_3^k(1,\omega^2,\omega^2):k=0,1,2\}.          \tag{6}
\]

Each orbit is an orthogonal qutrit basis. Every cross-orbit normalized overlap
has squared modulus 1/3. The exact replay verifies these identities and the
complete six-ray list using the six ordered equilateral triples in the
rank-one kernel equation. Therefore two orthogonal rays of an opposite
rank-one profile necessarily lie in the same one of its two clock orbits.

Pairing one clock orbit from the +i profile with one from the -i profile gives
exactly four clock-invariant common bases. Opposite qutrit choices give the
two canonical completions, because complex conjugation interchanges Q_+
and Q_- and \(J_I\) changes the qubit sign. Equal qutrit choices give the
two product bases

\[
 Y_2\otimes Q_+,\qquad Y_2\otimes Q_-.
\]

The first is exactly the isolated product representative in the first P
return, up to column order:

\[
 \operatorname{diag}(1,\omega,\omega,i,i\omega,i\omega)
 (F_2\otimes F_3).
\]

The second is equivalent to it: applying the product Fourier unitary exchanges
the I and \(F_2\otimes F_3\) anchors, preserves the qubit Y basis as a ray
set, and exchanges the two qutrit bases Q_+,Q_-. The exact replay checks the
qutrit exchange; the qubit identity is
\(F_2(1,i)^T=(1+i)(1,-i)^T\), and its conjugate.

## 4. Finishing the clock-collision theorem

Start with the two rays of \(\mathcal O(v)\) present in K. The Tao branch
in §1 is impossible because K occurs in an actual MUB triple. Hence at least
two other columns of K are orthogonal to the complete orbit \(\mathcal O(v)\).
By §§2-3 these two orthogonal rays lie in a common clock orbit \(\mathcal O'\),
and \(\mathcal O(v)\cup\mathcal O'\) is a common-unbiased orthonormal basis.

This basis and K share four rays. The unconditional four-ray uniqueness
theorem in `SUPPORT_AND_COMPLETION.md` therefore makes them equal. This proves
clock invariance, canonical membership on rank-two profiles, and the explicit
canonical/product classification on the rank-one profiles. QED.

## 5. Exact remaining obstruction for A

The theorem gives a uniform restriction on an unclassified companion basis:
it must be a six-clique with at most one ray from every clock orbit, including
at all twelve exceptional parameters. No crossing between already known
components is inferred from this restriction.

The three-sextic kernel reconstruction in the previous P return can now be
used with six **distinct clock-orbit labels**, hence six distinct profiles
whenever all six profiles have rank two. Each rank-two profile has one clock
orbit; each rank-one profile has two clock orbits and must retain that
distinction. Orthogonality between the
chosen six rays is still a genuine unresolved condition. The theorem does
not bound the number of real profiles globally or prove their finiteness.
