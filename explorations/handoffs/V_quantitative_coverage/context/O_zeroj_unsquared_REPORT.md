# Zero-J critical strips from two weighted mixed-corner signatures

**Return O · independently checked and reduced 18 October 2026 · input snapshot `73152c64`**

## Result and verification status

**PROVED / CERTIFIED: targets Z1 and Z2.** The zero-J step follows from two weighted sums of the **unsquared** signatures of the nine mixed corners. The proof covers zero correlations, three distinct positive correlation moduli, repeated moduli, and equal moduli. It uses no twenty-corner signature square sum, old square-sum reduction, nonzero-J classification, or classification theorem [CT].

The resulting statement is

\[
\boxed{K=(1-z)(z+3)^3.}
\]

Moreover, geometric progression follows directly from the permanent identity: after a single row relabelling and a common gauge on the two halves, three unit complex numbers sum to three, forcing each to be one. No coordinate-root pairing argument is required.

**PROVED** denotes the paper deductions in this report, using the explicitly identified upstream actual-side identities. **CERTIFIED** denotes exact polynomial equalities checked by the supplied verifier. **NUMERICAL:** no numerical evidence is used. **NOT ESTABLISHED in this return:** compilation of the replacement in Lean, a run of `lean/check_axioms.py --full`, or removal of modules from the complete project. The supplied archive omits the complete Lean project and that script, and the execution environment has no Lean installation. Integration guidance and an explicitly uncompiled candidate for the geometric lemma are included.

The exact checks use integer or rational polynomial arithmetic. Numerical sampling, approximate roots, and floating-point tolerances do not enter the proof.

**Relation to the previous return.** The newly attached brief and its two scripts are byte-for-byte identical to the earlier complete handoff. The earlier `O_zeroj_mixed_signatures_73152c64.zip` was recovered, its input hashes and full verifier were replayed, and the physical source expressions were independently reconstructed. This return simplifies the repeated-modulus proof: it removes the specialized real-part identity for `T_x` and uses the generic imaginary identity instead. The retained mixed certificate records are unchanged. The new six-record scalar proof reduces total certificate data from **49,893 to 43,138 bytes**, a saving of **6,755 bytes**. The mathematical conclusion is preserved, and all degeneration guards remain explicit.

## 1. Theorem and upstream inputs — PROVED

Let three orthogonal phase rows of length six be normalized to \((1;x;y)\). For a three-column half \(A\), write

\[
s=\sum_A x_j,\qquad t=\sum_A y_j,\qquad
r=\sum_A\bar x_jy_j,
\]
\[
X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,\quad
p=X+Y+Z,\quad J=2\operatorname{Re}(sr\bar t),
\]
\[
K=XYZ,\qquad W=XY+XZ+YZ-XYZ.
\]

The complement \(B=A^c\) has correlations \((-s,-t,-r)\). For a phase block \(E\), put

\[
\Psi(E)=\frac{\operatorname{perm}(E)\det(E)^2}
 {\prod_{i,j}E_{ij}},\qquad
D(E)=\Psi(E)-\overline{\Psi(E)}.
\]

The displayed positive sign of `Psi` fixes the convention in the certificates. The supplied Lean `TS` uses the opposite overall sign; zero criticality is unchanged. The scalar `z` retains the upstream convention `Theta=-perm(E) det(E)/(conj(det(E)) U V)`.

Assume every three-column corner of the strip is critical, so its \(D\) is zero. Assume the selected two halves are invertible, \(J=0\), and the real invariant \(z=\chi/(2g)\) is different from \(-3,-2\). Then

1. \(K=(1-z)(z+3)^3\).
2. After a row relabelling, column phasing, and row phasing, the complete strip is \((1;x;\bar x)\).

In particular, this proves the requested theorem under the brief's stronger assumption that all twenty blocks are invertible. The new mixed-corner sums never divide by a mixed-corner determinant; only the selected two halves need the actual-side identities.

The following are the permitted upstream inputs, with source hashes in `PROVENANCE.json`:

* `CRITICAL_CORNER_REDUCTION.md` and the elementary zero-J part of `CRITICAL_STRIP_CLASSIFICATION.md` give
  \[
  g=3z^2>0,\quad p=9-z^2,\quad W=z^2(z+3)^2,
  \quad z\ne0,\quad -3<z\le3.
  \tag{1}
  \]
* The pole argument in that same zero-J section, also supplied as Lean theorem `zero_pole_free`, gives
  \[
  e_U:=3(z+3)-U\ne0\qquad(U=X,Y,Z).
  \tag{2}
  \]
  Thus each actual lambda denominator \(L_j=ze_U\) is nonzero. This elementary pole argument precedes the old square-sum calculation and is retained.
* `SIDE_FIBER.md` §1 gives the actual-side lambda, row-product, and permanent identities. They are used on the existing halves, including critical sides.
* Elementary Newton identities express the finitely many half moments used below. The supplied verifier checks the required formulas independently on six Laurent variables.

No conclusion from the old zero-J square-sum calculation is among the inputs.

## 2. Gauge and exact algebra — PROVED

Set

\[
\tau=z+3>0,\qquad
\Delta=K+(z-1)\tau^3.
\tag{3}
\]

At most one of \(X,Y,Z\) is zero: if two vanished, \(W=0\), contradicting \(z\tau\ne0\). Relabel the three rows when necessary so that \(X,Y>0\).

First apply unit row phases to make \(s,t\) positive real. Then use reciprocal Laurent scaling to set the correlation sums to one. Under this algebraic scaling,

\[
s=t=1,\quad s^*=X,\quad t^*=Y,
\quad r=\frac{h}{Y},\quad r^*=-\frac{h}{X},
\quad h= s_{\rm physical}r_{\rm physical}\bar t_{\rm physical}.
\tag{4}
\]

Here the star is the reciprocal Laurent involution, not ordinary conjugation of the scaled row entries. The variables \(z,X,Y,Z\) are real, while the actual number \(h\) is purely imaginary, with

\[
h^2=-XYZ=-K.
\tag{5}
\]

This distinction makes taking real and imaginary parts below legitimate: the final formulas are polynomials or rational functions in real scalar variables and the actual purely imaginary number \(h\). When \(K>0\), \(h\ne0\).

The signature \(D\) has Laurent row weight zero. A sum weighted by one \(x\) coordinate has row weight \((1,0)\), and a sum weighted by an \(x\) and a \(y\) coordinate has weight \((1,1)\). Consequently their vanishing is preserved by the nonzero reciprocal row scalings. No claim that the scaled rows remain unit phases is needed.

All new generic polynomial calculations take place with

\[
Z=9-z^2-X-Y,\qquad
G_W=XY+XZ+YZ-XYZ-z^2\tau^2=0,
\qquad h^2+XYZ=0.
\tag{6}
\]

The final certificates clear the original denominators and exhibit polynomial consequences of these displayed relations. Discovery computations using intermediate rational inverses do not authorize divisions in the proof.

One useful elementary identity is

\[
\boxed{(\tau-X)(\tau-Y)(\tau-Z)=(z+2)\Delta.}
\tag{7}
\]

It follows by evaluating the modulus cubic at \(\tau\), using (1). Thus if any correlation modulus equals \(\tau\), the desired conclusion already follows. In a proof by contradiction with \(\Delta\ne0\), none equals \(\tau\).

## 3. The two mixed-corner sums — PROVED / CERTIFIED

For \(j,k\in A\) and \(c\in B\), let \(D(j,k,c)\) be the signature of those three columns. It is symmetric in its column arguments, because the determinant is squared. It vanishes when \(j=k\).

Define, in the gauge (4),

\[
T_x=\frac12\sum_{j,k\in A}\sum_{c\in B}x_cD(j,k,c),
\tag{8}
\]
\[
T_{x\mid y}=\frac12\sum_{j,k\in A}\sum_{c\in B}x_jy_cD(j,k,c).
\tag{9}
\]

Both sums are zero on an all-critical strip, term by term. In swap notation, where \(e\) is the deleted column,

\[
T_x=\sum_{e\in A,c\in B}x_cD((A\setminus\{e\})\cup\{c\}),
\]
\[
T_{x\mid y}=\frac12\sum_{e\in A,c\in B}
 (s_A-x_e)y_cD((A\setminus\{e\})\cup\{c\}).
\tag{10}
\]

The second sum retains the factor \(1/2\). These definitions fix the normalization in every certificate.

The two column roles distinguish these sums from the negative survey in the brief. They are supported on the nine corners with two columns in \(A\) and one in \(B\), and their weights distinguish the inserted column from the retained columns. The cancellation of the surveyed whole-strip column-sum weights therefore does not apply.

To expand (8) and (9), regenerate \(D\) from its determinant/permanent definition, dephase one column, and group each Laurent monomial by its three column exponents. Summation over the two selected halves gives products of two \(A\)-moments and one \(B\)-moment. Repeated retained indices contribute zero. This is an exact finite Laurent-polynomial calculation.

The source checks separately verify the required Newton moment formulas by substitution into independent phase variables. Thus the certificates bind the original signatures to the factored expressions below; they do not merely verify equations among unmotivated reduced polynomials.

## 4. The generic weighted identity — CERTIFIED

Define

\[
\begin{aligned}
P_X={}&z^4+3z^3X+3z^3+19z^2X-9z^2\\
 &+3zX^2+24zX-27z+10X^2-18X,\\
Q_X={}&(\tau^2-X)\bigl(z\tau-(z+2)X\bigr).
\end{aligned}
\tag{11}
\]

The new identity is

\[
\boxed{
\begin{aligned}
X(X-1)e_Xe_Y^2e_Z^2T_x
={}&18z(z+2)\tau(\tau-X)(Y-Z)\\
 &\mathrel{}\cdot\bigl[X\tau P_X-hQ_X\bigr].
\end{aligned}}
\tag{12}
\]

This equality follows from the original lambda/Newton expressions after clearing denominators and using (6). Its certificate retains the original weighted-moment expression and explicit polynomial cofactors.

In particular, **(12) holds at \(X=1\)**. The factor \(X-1\) multiplies the left side; it is never canceled in the physical argument. This guards a genuine exceptional specialization introduced during symbolic discovery.

Because \(T_x=0\), taking imaginary parts when \(K>0\) gives

\[
\boxed{(\tau-X)(Y-Z)(\tau^2-X)
 \bigl(z\tau-(z+2)X\bigr)=0.}
\tag{13}
\]

All canceled scalar factors are nonzero by \(z\ne0,-2\), \(\tau>0\), and \(h\ne0\).

## 5. Zero correlations — PROVED / CERTIFIED

Suppose \(K=0\). Exactly one modulus is zero, so arrange \(Z=0\) and \(X,Y>0\). Then \(h=0\), and

\[
X+Y=p=9-z^2,\qquad XY=W=z^2\tau^2.
\tag{14}
\]

We show directly that \(\Delta\ne0\) is impossible.

### 5.1 Choosing a useful positive correlation

The case \(X=Y=1\) would imply \(z^2=7\) and \(W=1\). It is ruled out by the exact identity

\[
9=(14z-37)(W-1)
 -(14z^3+47z^2+2z-4)(z^2-7),
\tag{15}
\]

where \(W=z^2(z+3)^2\). Therefore exchange \(X,Y\), if necessary, so that \(X\ne1\).

Since \(\Delta\ne0\), equation (7) gives \(X\ne\tau\). Equation (12), now entirely real, has \(Y-Z=Y>0\). Its nonzero remaining factors give \(P_X=0\).

### 5.2 A quadratic norm excludes the remaining possibility

Set

\[
f(T)=T^2-(9-z^2)T+z^2\tau^2,
\]
\[
q(T)=z\tau(z^2+3z+1)-(3z+8)T,
\qquad u=z^2+2z-2.
\tag{16}
\]

The following polynomial identity is exact:

\[
P_X+3\tau q(X)=(3z+10)f(X).
\tag{17}
\]

Since \(f(X)=0\), we obtain \(q(X)=0\). The norm identity, using (14), is

\[
\boxed{q(X)q(Y)=z(z+2)^2\tau^3u.}
\tag{18}
\]

The prefactor on the right is nonzero, so \(u=0\). But

\[
q(1)=(z+2)^2u,
\qquad
9u=(3z+8)(3z-2)-2.
\tag{19}
\]

Thus \(q(1)=0\) and \(3z+8\ne0\). Subtracting \(q(X)=q(1)\) forces \(X=1\), contradicting the choice in §5.1. This proves the target on the zero-product boundary.

All these are low-degree polynomial identities. Their certificates include cofactors for both relations in (14), and do not infer a zero from a sampled resultant.

## 6. Positive product and distinct moduli — PROVED

Suppose \(K>0\) and \(\Delta\ne0\). If \(X,Y,Z\) were pairwise distinct, apply (13) after each row relabelling. The first two factors cannot vanish, by (7) and distinctness. Hence all three numbers would be roots of the same quadratic

\[
Q(T)=(\tau^2-T)\bigl(z\tau-(z+2)T\bigr).
\tag{20}
\]

Its leading coefficient is \(z+2\ne0\), so it cannot have three distinct roots. Explicitly, subtracting \(Q(X)=Q(Y)\) and \(Q(X)=Q(Z)\), and then dividing by the nonzero differences, forces \((z+2)(Y-Z)=0\).

Consequently, under \(\Delta\ne0\), a positive-product corner must have a repeated modulus. This deduction uses no nonzero-J classification of another corner.

## 7. Repeated moduli with one specialized identity — PROVED / CERTIFIED

Relabel so that

\[
X=Y=v>0,\qquad Z=9-z^2-2v>0.
\tag{21}
\]

Assume for contradiction that \(\Delta\ne0\). Equation (7) gives \(v\ne\tau\). The W relation factors as

\[
G_W=(v-\tau)C_2,\qquad
C_2=2v^2+mv+z^2\tau,\qquad m=z^2+2z-6.
\tag{22}
\]

Thus \(C_2=0\). The final proof uses the generic identity (12) and only one specialized mixed-source identity. The real part of \(T_x\) on this branch is unnecessary.

### 7.1 The generic imaginary part supplies a scalar polynomial

Equation (13) with distinguished modulus \(X=v\) gives

\[
N=(3v+z^2-9)(\tau^2-v)
       \bigl(z\tau-(z+2)v\bigr)=0.
\tag{23}
\]

Here \(3v+z^2-9=v-Z\). This factor is **not divided out**. The equation and all subsequent deductions therefore include \(v=Z\), the all-equal case. Likewise, no division by \(v-1\) is made.

Define

\[
\begin{aligned}
a&=\tau(11z^4+86z^3+156z^2-108z-324),\\
b&=3z^4+46z^3+256z^2+588z+468,\\
E&=6(z+2)v-7z^3-62z^2-156z-108,\\
F_*&=(z^2-6z-18)(z^2+2z-2)(z^2+6z+6).
\end{aligned}
\tag{24}
\]

The two exact integer-polynomial identities are

\[
4N=z(a+bv)+EC_2,
\tag{25a}
\]
\[
(a+bv)(2a-bm-2bv)
 =-24(z+2)\tau^4F_*-b^2C_2.
\tag{25b}
\]

Equations (22)–(23) and \(z\ne0\) give \(a+bv=0\). Equation (25b), with \(z+2\ne0\) and \(\tau>0\), then gives

\[
F_*(z)=0.
\]

These are explicit quotient and norm identities before any specialization. They do not invoke another physical root of \(C_2\), root isolation, or a modulus discriminant.

### 7.2 The retained real part supplies an incompatible polynomial

Put

\[
\begin{aligned}
C={}&6z^8+111z^7+798z^6+2942z^5+5568z^4\\
 &+3096z^3-7344z^2-14256z-7776,\\
D={}&6z^6+63z^5+358z^4+1266z^3+2592z^2+2808z+1296,\\
G={}&6z^5+43z^4+128z^3+216z^2+216z+108.
\end{aligned}
\tag{26}
\]

On \(C_2=0\), the source-bound exact identity is

\[
\operatorname{Re}T_{x\mid y}
  =\frac{3(C+2vD)}{16\tau^5}.
\tag{27a}
\]

The calculation starts from the actual lambda/Newton expressions and clears their original denominators. More explicitly, the error before imposing \(C_2=0\) is \(C_2q/d\), with polynomial \(q\) and

\[
d=\frac{z^4\tau^5 e_v^4e_Z^3}{81},
\qquad e_v=3\tau-v,\qquad e_Z=z^2+3z+2v.
\]

Every factor is nonzero under the established pole guards. In particular no denominator is evaluated or inverted at a second quadratic root. In the reciprocal gauge, \(h\) remains the physical purely imaginary invariant, so the real part is the coefficient of one in the pair representation \(h^2=-v^2Z\).

All-criticality gives \(T_{x\mid y}=0\), hence \(C+2vD=0\). The exact norm identity is

\[
(C+2vD)(C-Dm-2vD)
 =48z^3(z+2)\tau^6G-2D^2C_2.
\tag{27b}
\]

Its prefactor is nonzero, so \(G(z)=0\).

Finally, set

\[
\begin{aligned}
U={}&-28284z^4-126868z^3-269543z^2-317298z-201258,\\
V={}&4714z^5-3211z^4-226040z^3-527112z^2-50088z+409428.
\end{aligned}
\]

The exact Bézout identity

\[
\boxed{UF_*+VG=746496}
\tag{28}
\]

contradicts \(F_*=G=0\).

This excludes the repeated-modulus case under \(\Delta\ne0\), including all equal moduli and \(v=1\). Together with §§5–6, all cases \(K\ge0\) are exhausted. We have proved **Z1**:

\[
\boxed{XYZ=(1-z)(z+3)^3.}
\]

## 8. Geometric rows from the permanent — PROVED / CERTIFIED

The modulus cubic now factors as

\[
T^3-pT^2+(W+K)T-K
 =(T-\tau)^2\bigl(T-(1-z)\tau\bigr).
\tag{29}
\]

Thus two moduli equal \(\tau\). Relabel the rows to arrange

\[
X=Y=\tau,\qquad Z=(1-z)\tau.
\tag{30}
\]

Return to genuine unit row phases and make the first-half sums

\[
s=t=\sigma=\sqrt\tau>0.
\]

The condition \(J=0\) gives \(r+\bar r=0\). The actual-side identities yield

\[
\begin{aligned}
P_0&=rs^2+\bar r\,t^2+(3-Z)st
     =z(z+2)\tau,\\
L_0&=3z^2+(9-Z)z=z(z+2)\tau\ne0.
\end{aligned}
\tag{31}
\]

Therefore \(\lambda_0=1\), and the actual permanent is \(\pi=z\lambda_0=z\).

For every normalized three-column phase block, expansion of the permanent gives

\[
\sum_jx_jy_j=st-\pi.
\tag{32}
\]

Here the right side equals \(\tau-z=3\). Each summand is a unit complex number. Its real part is at most one; since the three real parts sum to three, all summands equal one. Therefore \(y_j=\bar x_j\) in each original column of the first half.

The same row phases give \(s'=t'=-\sigma\), \(r'=-r\) on the complementary half. The scalar data and \(z\) agree. Equations (31)–(32) depend only on \(\sigma^2\), so the same argument proves \(y_j=\bar x_j\) there as well.

This proves **Z2** with one gauge on all six columns. Repeated coordinate values cause no exception. The special values omitted at the outset give \(z=-3\Rightarrow p=0\) and \(z=-2\Rightarrow p=5\), as required by the classification statement.

## 9. Integration into the supplied Lean development

The natural new scalar interface is a proposition `ZeroJProduct` which takes the all-criticality hypotheses and concludes the product equation directly. `zero_moduli` already accepts exactly that equation. In `zeroJ_classification`, replace the current extraction of `hK` from `stripSq_eq_zero` and `ZeroJSquareSum` by the new theorem; retain the exceptional-value tests, scalar lemmas, and row relabelling.

The geometric argument in §8 allows `half_geometric` and `strip_geometric` to retain their existing statements with a shorter proof. The included `CoverageStripGeom.candidate.lean` is a source-level candidate for that change, explicitly uncompiled. `review/GEOMETRIC_STEP.md` gives the proof and identifies the existing lemma names used by the candidate.

The current `CoverageSignedNonzero.topStripClassification_signed` takes `ZeroJAlgebra` and converts it through `zeroJSquareSum_of_algebra`. That boundary, `CoverageStripParts`, and the final application must be updated to the new direct product theorem.

### A necessary correction to the deletion plan

The supplied K integration still uses some shared machinery named in the brief's proposed deletion list:

* `CoverageSignedGauge.lean` directly imports `CoverageStripIdHalf`, uses `QF`, `halfQ`, half-moment evaluation and row-scaling lemmas, and cites `CoverageStripIdFormal`.
* `CoverageSignedBoundary.lean` imports `CoverageStripReduce`. Alongside the obsolete square-sum reduction, that module supplies shared half-reduction and row-permutation lemmas.

Consequently the entire shared `CoverageStripId{Formal,QF,Half,Fast,Stage}` group cannot simply be deleted after replacing the zero-J theorem. Extract the still-used algebraic/gauge infrastructure and shared physical lemmas, update K's imports, and then check the complete import graph. The zero-J square-sum certificate itself is no longer mathematically needed by this proof.

The provided excerpt is insufficient to carry out or certify the complete refactor. No existing input file has been silently edited or deleted. `python3 lean/check_axioms.py --full` remains an integration gate for the complete repository.

## 10. Verification and deliverables

`verify.py` is the entry point. It checks the shipped hashes, regenerates the relevant signature and moment expressions, verifies the denominator-cleared source identities, replays the integer-polynomial DAG certificates, and checks the scalar and geometric deductions' finite algebra. Its self-test deliberately changes a target and requires rejection. The acceptance path also runs an independent source reconstruction that imports none of the main mixed-source implementation, and a separate standard-library boundary verifier. The latter supplies 27 exact checks of an alternative zero-product proof under the brief's full all-corner invertibility hypothesis; the main theorem retains its stronger two-half scope.

The data format is `integer_polynomial_dag_v1`, using only integer constants, variables, addition, multiplication and nonnegative integer powers. It is the format requested by the brief and used in return K. No numerical evaluation nodes or implicit radical/root-isolation claims occur.

`CERTIFICATE_STATISTICS.json` records **43,138 uncompressed certificate bytes** across **17 integer-DAG identities**, plus 21 moment identities, two regroupings, and nine geometric polynomial checks. The 50 KB target is assessed from the sum of the certificate files' uncompressed bytes, not from ZIP compression. `VERIFY_TRANSCRIPT.txt` records the actual final run. `PROVENANCE.json` records the source archive, supplied snapshot, and hashes of the relied-on upstream files. `SHA256SUMS` covers the return.

The complete proof is the paper argument above together with the explicitly checked polynomial identities and the identified upstream inputs. Python replay is not presented as Lean kernel replay, and this result does not by itself assert the project's final no-four-MUBs theorem.
