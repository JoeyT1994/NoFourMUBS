# Return P, round 2: a global Fourier restriction and four-ray algebra

## Executive result

**Global A, C, F and F′ remain NOT ESTABLISHED. This return does not remove
the atlas from the proof of record.** It establishes a global subclass
classification for A, and gives explicit smaller algebras for the remaining
triple and quartet questions. No atlas output, Stage C result, or global
no-four theorem is used in the arguments or the new verifiers.

The main result for A is uniform over the full Fourier parameter torus:

> **PROVED — clock collision.** If a companion basis contains two distinct
> rays from the same ternary-clock orbit, its triple belongs to one of the
> two known classes. The theorem includes all twelve exceptional Fourier
> parameter points. Every still-unclassified companion must therefore use
> six distinct clock-orbit labels.

The main algebraic result replaces six unknown companion columns by four:

> **PROVED — four-ray completion algebra.** Every ordered completion of four
> common reciprocal-orthogonal rays is described, on an explicitly covered
> pivot chart, by twelve equations linear in one squared parameter. The
> presentation is an isomorphism of the full quotient algebras, including
> nilpotents. For physical inputs, a single nonnegative polynomial decides
> completion and the completing pair is unique.

For two companions, their cross-basis equations reduce to sixteen retained
tests, eight linear tests and one explicit bilinear test. Both completed
Fourier-edge predicates can also be evaluated without choosing a square root.
These are exact reductions, not completed global eliminations.

## Status table

| Claim | Status | Scope and limitation |
|---|---|---|
| Two rays in one clock orbit force a known Fourier-edge triple | **PROVED / CERTIFIED** | All Fourier parameters; the twelve exceptional points are treated explicitly |
| An unclassified companion must use six distinct clock-orbit labels | **PROVED** | Necessary condition; not a sufficient test for being unclassified |
| Cubic row/column saturation characterizes Fourier or Tao | **PROVED** | On actual triple edges, the permitted Tao exclusion makes this a Fourier predicate |
| A flat three-supported vector cannot have a flat three-supported Hadamard transform | **PROVED / CERTIFIED** | Every order-six Hadamard |
| Four physical common orthogonal rays have zero or one unordered completion | **PROVED** | Recovers the earlier Result B conclusion; no priority claim and no finiteness hypothesis |
| Explicit quadratic completion algebra and polynomial rank test | **PROVED / CERTIFIED** | Includes all pivots, native and transformed flatness, and nonreduced structure |
| Ordered companion-algebra length at most \(2(n)_4\) | **PROVED** | Fixed-H common-ray algebra finite of length n; uses the first return's finiteness input |
| Unordered physical companion count at most \(\lfloor\binom{N}{4}/15\rfloor\) | **PROVED / CERTIFIED** | Uniform bound, not a practical enumeration proposal |
| Quartet mixed ideal reduced to 16+8+1 tests | **PROVED / CERTIFIED** | Equality of ideals after the specified unit localizations |
| All-400-minor predicate pulled back to 280 factors in the squared parameter | **PROVED / CERTIFIED** | All row and column choices retained; no minimal-factor claim |
| Numerical exclusions or approximate sign decisions | **NUMERICAL: none used** | Exact arithmetic only in the new gates |
| Classification of six distinct clock-orbit cliques; compact-component exclusion; F or F′ | **NOT ESTABLISHED** | These remain the global gaps |

Here **PROVED** denotes a written mathematical proof with the stated inputs.
**CERTIFIED** denotes the accompanying exact finite arithmetic replay, not a
claim that Python formalizes the entire analytic argument. No new Lean proof
or kernel replay is claimed.

## 1. Global progress on A

### 1.1 The clock-collision theorem

Use the same transposed orientation as the first return:

\[
U(D)=\frac1{\sqrt6}
\begin{pmatrix}F_3&DF_3\\F_3&-DF_3\end{pmatrix},\qquad
D=\operatorname{diag}(1,z,w),
\]

\[
Z=\operatorname{diag}(1,\omega,\omega^2,1,\omega,\omega^2),
\qquad \omega^3=1,\quad\omega\ne1.
\]

For a common ray v write

\[
\mathcal O(v)=\{v,Zv,Z^2v\},\qquad
J_D(r,s)=(D\bar s,-D\bar r).
\]

The supplied canonical construction is

\[
\mathcal E_D(v)=\mathcal O(v)\cup\mathcal O(J_Dv).
\]

If a companion K contains two members of one orbit, then K is the union of
two complete clock orbits. For a rank-two kernel profile it is exactly
\(\mathcal E_D(v)\), whose membership in GM is proved by the first return's
universal block calculation. A profile can have rank one only at

\[
(z,w)=(\sigma_1\kappa,\sigma_2\kappa^2),\qquad
\kappa^3=1,\quad\sigma_1,\sigma_2\in\{1,-1\}.
\]

These are twelve distinct points. Their rank-one orbit pairings are fully
handled: two give canonical completions and two are equivalent to the
isolated product triple. Rank-two profiles at those same parameter points
remain covered by the canonical conclusion.

The proof is in `algebra/CLOCK_COLLISION.md`. Its mechanism is finite and
structural. After fixing the two clock-related columns, their four-dimensional
orthogonal complement is a missing clock direction plus an antisymmetric
three-dimensional space. Flat columns with a nonzero component in the
missing direction use one of four tetrahedral sign directions. Completeness
and orthogonality leave only the following branches:

| Number of remaining columns with a nonzero missing-clock component | Outcome |
|---:|---|
| 1 | The missing clock ray and three antisymmetric columns |
| 2 | Two antisymmetric columns remain |
| 3 | Impossible |
| 4 | One rigid matrix, explicitly Tao-equivalent, with both signs checked |

The permitted Tao-not-triple theorem removes the rigid branch. The other
branches supply two common orthogonal rays in the opposite profile. The
global kernel reconstruction, including its rank-one cases, puts those two
rays in one clock orbit. The resulting two-orbit basis shares four rays with
K. Four-ray completion uniqueness then makes the two bases identical.

This proves a global restriction beyond the first return's open neighborhood
of \(D=\operatorname{diag}(1,1,i)\). It does not classify the remaining
six-cliques. In particular, six distinct **orbit labels** must be retained;
at the twelve exceptional parameters one profile can carry two orbit labels.
Known triples can also have presentations with six distinct orbit labels,
so this condition alone does not certify a new component.

### 1.2 A cubic Fourier predicate

The two-clock-column classification has another consequence. If two columns
have proportional entrywise cubes, their ratios, after a common phase is
removed, belong to \(\{1,\omega,\omega^2\}\). Column orthogonality forces each
value to occur twice. Thus the same classification applies. Transposition
gives the row version.

Consequently, for a phase Hadamard H,

\[
H\text{ is Fourier type or Tao-equivalent}
\quad\Longleftrightarrow\quad
\text{some row or column pair has saturated cubic ratio sum}.
\]

Define

\[
P_3(H)=
\prod_{r<s}\left(36-
 \left|\sum_j(H_{rj}\overline{H_{sj}})^3\right|^2\right)
\prod_{a<b}\left(36-
 \left|\sum_i(H_{ia}\overline{H_{ib}})^3\right|^2\right).
\]

All thirty factors are nonnegative. \(P_3=0\) detects Fourier **or Tao**;
the Tao exclusion is essential when interpreting it as a Fourier predicate
on actual triple transitions. This does not establish that any factor must
vanish on an unknown triple. See `review/CUBIC_PREDICATE_AUDIT.md` for the
scope check and the additional rank consequence for \(H^{\circ3}\).

## 2. Four retained rays determine the completion problem

### 2.1 A support obstruction valid for every H

The elementary support theorem is useful independently of finiteness:

> If x has exactly three nonzero entries of modulus one, and
> \(H^*x/\sqrt6\) has at most three nonzero entries, then it has exactly two,
> both of modulus \(\sqrt{3/2}\).

The three zero-output columns restrict to zero-sum unit triples on the
support of x. Such triples occupy the two nonconstant ternary Fourier lines.
The strip Gram bound forces their multiplicities to be 2+1, and the
complementary block then has two constant-line columns and one remaining
chirp column. This gives the stated support and amplitudes exactly.

For four orthogonal common rays, the complement is a two-dimensional plane.
Its twelve compressed measurement directions cannot span only one Bloch
direction: that would produce a three-supported flat vector in both anchor
coordinates, contradicting the support theorem. Their span therefore has
dimension two or three. The first case gives one antipodal pair of common
rays; the second gives none.

This recovers the earlier Result B conclusion with a self-contained proof
usable in the current P package. The new contribution below is the explicit
completion algebra, its full scheme structure, and its integration with A
and the quartet equations. See `algebra/SUPPORT_AND_COMPLETION.md`.

### 2.2 Explicit formulas

Let \(X=[x_1,x_2,x_3,x_4]\) be raw physical common rays with first entries one,
and \(X^*X=6I_4\). Define

\[
E=I-XX^*/6,\qquad s=6Ee_0,\qquad
\Delta=12E-ss^*.
\]

Then E is a rank-two orthogonal projection with diagonal \(1/3\) in both
anchors. The matrix \(\Delta\) is positive of rank one, has trace 12, and has
zero zeroth row and column. Choose \(c=\Delta_{jj}>0\), \(1\le j\le5\), and
put \(p=\Delta_{:j}\). Some such pivot always exists; choosing the largest
gives \(c\ge12/5\). This bound controls this pivot only, not every later
coefficient denominator.

With \(C=H/\sqrt6\), form the twelve complex numbers

\[
a_i=s_i\overline{p_i}\quad(0\le i<6),\qquad
a'_k=(C^*s)_k\overline{(C^*p)_k}\quad(0\le k<6).
\]

Concatenate them as \(a=(a_0,\ldots,a_5,a'_0,\ldots,a'_5)\). The coefficient
vector is never zero for a physical four-ray input, including at Fourier
parameters. Define the nonnegative polynomial

\[
\mathcal D_4=
\left(\sum_\ell|a_\ell|^2\right)^2
-\left|\sum_\ell a_\ell^2\right|^2
=4\sum_{\ell<m}\left[\operatorname{Im}
 (a_\ell\overline{a_m})\right]^2.
\]

**Completion exists if and only if \(\mathcal D_4=0\).** Equivalently the
real matrix with rows \(\Re a,\Im a\) has rank one. If \(a_k\ne0\), put

\[
U=-c\frac{\overline{a_k}}{a_k},\qquad u^2=U,
\qquad x_\pm=\frac{s\pm p/u}{2}.
\]

The rank test makes this U consistent with all twelve equations. Its modulus
is c, so either square root gives a physical completion automatically.
Changing the sign of u exchanges the two columns.

The algebraic version replaces conjugates of retained coordinates by
independent reciprocal coordinates. It has the exact presentation

\[
A_4[c^{-1}][u,u^{-1}]/(a_\ell u^2+b_\ell)_\ell,
\]

where \(A_4\) is the four-ray reciprocal-orthogonality algebra. Both quotient
maps are explicit in `algebra/FOUR_RAY_COMPLETION.md`. They preserve
nilpotents; no reduction to a set of simple roots is used.

### 2.3 Quantitative algebraic improvement

For a fixed Fourier-free H, the first return supplies

\[
n=\dim_\mathbb C A_H=252-2Z_2(H),\qquad 162\le n\le252.
\]

At any complex four-ray point, all twelve coefficient pairs cannot vanish:
otherwise u would generate infinitely many common rays, contradicting this
finite algebra. On each Artin local factor, the nonempty completion algebra
is free of rank two over a quotient of the four-ray algebra. Hence

\[
\dim_\mathbb C P_H\le2(n)_4
=2n(n-1)(n-2)(n-3).
\]

The falling factorial is justified with local multiplicities: repeated
underlying ray labels are killed by an orthogonality equation with residue
six, and the surviving tensor factors have their actual local lengths.

For N distinct physical common rays and b unordered companion bases,

\[
15b\le\binom N4.
\]

| One-ray algebra bound n | Ordered companion-algebra length bound | Unordered physical companion bound |
|---:|---:|---:|
| 162 | 1,327,052,160 | 1,843,128 |
| 192 | 2,633,783,040 | 3,658,032 |
| 252 | 7,874,874,000 | 10,937,325 |

At the uniform maximum, the last number improves the first return's
1,356,228,300 bound by a factor of 124. These remain coarse worst-case bounds.
No runtime gain, practical universal matrix size, or global dimension
improvement below four is claimed.

## 3. Twenty-five structured mixed tests for a quartet

For two completed companions write

\[
x_\sigma=(s+\sigma p/u)/2,\qquad
w_\sigma=(t+\sigma qu/c)/2,
\]

\[
y_\tau=(S+\tau r/v)/2,\qquad
z_\tau=(T+\tau hv/d)/2,
\qquad U=u^2,\quad V=v^2.
\]

Here w and z denote reciprocal columns in the algebraic calculation; on
physical inputs they are the corresponding conjugates. Retain the sixteen
mixed equations for the four original columns on each side. The next eight
equations are

\[
(w_a^TS)(h^Tx_a)V+d(w_a^Tr)(T^Tx_a)=0
\quad(a=1,\ldots,4),
\]

\[
(q^Ty_b)(z_b^Ts)U+c(t^Ty_b)(z_b^Tp)=0
\quad(b=1,\ldots,4).
\]

The final condition is the single bilinear equation

\[
\begin{aligned}
N(U,V)={}&(q^TS)(h^Ts)UV
+d(q^Tr)(T^Ts)U\\
&+c(t^TS)(h^Tp)V
+cd(t^Tr)(T^Tp)=0.
\end{aligned}
\]

After the earlier 24 tests, completeness forces the remaining mixed error
matrix to be

\[
\begin{pmatrix}\delta&-\delta\\-\delta&\delta\end{pmatrix},
\qquad \delta=\frac{N(U,V)}{16cduv}.
\]

Thus the full 36-generator mixed ideal equals the 16+8+1 ideal on the
specified completion charts. The equivalence preserves nilpotents. Since
the reduced equations depend only on U,V, the signs of the two square roots
never need to be selected. On physical inputs, after the first 24 tests,
the raw squared mixed defect is exactly

\[
\sum_{a,b}(q_{ab}-6)^2=\frac{|N(U,V)|^2}{64c^3d^3}.
\]

See `algebra/FOUR_BY_FOUR_CROSS.md`. The universal five-column elimination
and the simpler 25-test presentation over arbitrary commutative rings are
also included in `algebra/FIVE_COLUMN_ISOMORPHISM.md`.

These identities do not show that N must be nonzero. That would be a
substantive extra exclusion, not a consequence of the reduction.

## 4. Fourier predicates and a complete finite family of charts

For the completed matrix \(K=[X,(s+p/u)/2,(s-p/u)/2]\), determinants using
one missing column pair as

\[
\det[x_a,x_b,x_+]_A\det[x_a,x_b,x_-]_A
=\frac{U\det[x_a,x_b,s]_A^2-\det[x_a,x_b,p]_A^2}{4U}.
\]

Minors using both missing columns are proportional to
\(\det[x_a,s,p]_A\). Pairing the signs gives an explicit 280-factor
polynomial \(\Phi(X,s,p;U)\) satisfying

\[
\Phi=2^{320}U^{160}
\prod_{|A|=|B|=3}\det K[A,B].
\]

All twenty row sets and all twenty column sets are represented. Applying

\[
\Phi_H=\Phi(H^*X,H^*s,H^*p;U)
\]

tests the other edge \(H^*K/\sqrt6\). Both edges are Fourier-free exactly when
\(\Phi\Phi_H\ne0\).

Five possible diagonal pivots and twelve possible nonzero coefficients give
at most sixty specified charts. The support theorem proves coverage of every
physical four-ray configuration; no vanishing-pivot boundary is discarded.
Substitution of \(U=-c\bar a_k/a_k\) and clearing only its declared nonzero
denominator makes the remaining test polynomial in the retained data.

This is a concrete smaller target for F:

\[
\text{four common orthogonal rays and }\mathcal D_4=0
\quad\Longrightarrow\quad \Phi\Phi_H=0
\]

for every Fourier-free H and every chart. **This implication has not been
proved.** The finite-algebra trace form from the first return may now be
formed on the smaller algebra and localized by this predicate. Its uniformly
zero signature has not been computed either.

All statements here hold directly for H, so they do not remove either
reconstruction sheet or require older product-regularity guards. Using the
permitted reconstruction still leaves the original four seed parameters.
The arguments are in `algebra/FOURIER_FREE_TEST.md`.

## 5. What remains before the atlas can be removed

For **A**, six-cliques with six distinct clock-orbit labels remain. The new
theorem neither enumerates them nor proves that every one belongs to GM or
the isolated product class.

For **C**, no additional compact Fourier-free component has been excluded.
The smaller algebra, its length bound and its explicit pivots do not supply
an ascent direction, a tangent-rank lower bound, or a global vanishing
certificate. The earlier maximum-principle and abnormal-multiplier gaps
therefore remain relevant.

For **F′**, the final bilinear quartet condition is explicit, but its
incompatibility with all the other physical equations is not proved.

The local-B conclusion remains conditional in its global scope: the known
component theorem and isolated rigidity cover the known classes. A is still
needed to know that this covers every point of the Fourier-edge locus.
The useful boundary statement is

\[
\overline{V\setminus V_F}\cap V_F=\varnothing.
\]

The reversed sentence, saying that a Fourier-free point cannot be a limit
of Fourier-edge points, already follows from the closedness of \(V_F\).

## 6. Exact replay, sources and review boundary

Run from the unpacked package:

```bash
python3 -S verify_all.py
```

The runner checks `SHA256SUMS`, makes a temporary copy, runs all six exact
gates, and requires the regenerated receipts to agree byte for byte. It
does not modify the delivered proof files. All scripts use Python's
standard library and reject optimization that would disable assertions.

The gates verify the ternary support arithmetic; the exhaustive finite
tetrahedral/Tao and exceptional-profile arithmetic; the five-column block
and ideal identities with nonreduced-ring examples; the general 4+4 mixed
coefficient identities; four-ray reconstruction on every four-subset of a
declared exact triple; and the symbolic/all-400-minor pullback identities.
The exact triple fixture has a Fourier-free Diţă anchor and known Fourier
companions. It checks formulas, not a new excluded seed or a global census.

The imported inputs are distinguished from new results in `provenance/`.
The first return's global kernel reconstruction and canonical-to-GM proof
are supplied as `PRIOR_FOURIER_REPORT.md`; its finite-algebra length theorem
is supplied as `PRIOR_DEGREE_AND_REDUCTION.md`. Their declared boundary
input is [Sun, arXiv:2610.12180v1, Theorem 3.1](https://arxiv.org/html/2610.12180v1#S3.SS1).
The common-ray completion construction and the MMVW classification context
are also discussed in [Sun, Sections 6–8](https://arxiv.org/html/2610.12180v1#S6)
and [Matolcsi et al., Conjecture 1](https://arxiv.org/html/2503.14752v2).
The permitted Tao exclusion is an input explicitly identified in the brief.

Independent reviews of the clock-collision proof, cubic predicate, four-ray
algebra and completed-edge minor calculation are included. The full analytic
arguments were reviewed; the finite Python gates certify their specified
arithmetic rather than the complete external literature or upstream proof.

This return supplies the arguments and exact checks needed to integrate the
stated partial results. It supplies no new global A/C/F/F′ certificate.
