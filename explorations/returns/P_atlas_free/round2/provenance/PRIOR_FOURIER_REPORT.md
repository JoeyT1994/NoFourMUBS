# An exact Fourier fibre with 48 rays and eight complete bases

## 0. Results and limits

This module addresses subproblem A of handoff P. It does not use the atlas,
Stage C, or any conclusion derived from their exclusion campaign.

Throughout, let `F=(omega^(jk))_(j,k=0)^2` be the **unnormalized** ternary
Fourier matrix, let `D=diag(1,z,w)`, and use the unitary anchor

\[
 U(D)=\frac1{\sqrt6}\begin{pmatrix}F&DF\\F&-DF\end{pmatrix}.
 \tag{0.1}
\]

This is `N(z,w)^T/sqrt(6)` in the brief. Transposition of an anchor pair is
handled by exchanging its two bases, applying the common adjoint unitary,
and conjugating the whole configuration, as in return L's
`algebra/FOURIER_DOMAIN.md` §4. Thus using this orientation loses no
Fourier-family triple classification question.

| Claim | Status |
|---|---|
| An explicit kernel reconstruction of every common unbiased ray for arbitrary `D`, with a complete description of where the reconstruction drops rank | **PROVED**, §§1–2; the rank-one argument overlaps the existing argument in Sun §8 |
| Exactly 48 common unbiased rays for `D0=diag(1,1,i)`, supplied as radicals followed by a cubic root | **PROVED**, §§3–4, with exact polynomial replay |
| Exactly eight unordered third bases over `{I,U(D0)}`; all are clock/skew-antiunitary completions | **CERTIFIED**, §5, using a rational interval certificate and exhaustive graph replay |
| All 48 original five-phase ray Jacobians at `D0` are nonsingular | **CERTIFIED**, §6; no reduced-Jacobian inference is used for this claim |
| Every canonical clock completion belongs to the supplied bicirculant companion orbit `GM` | **PROVED**, §7, by an explicit universal block calculation |
| On some open parameter neighborhood of `(z,w)=(1,i)`, there are exactly 48 common rays and exactly eight third bases, all in `GM` | **PROVED**, §8, using compactness, the certified Jacobians, and graph stability |
| A quantitative radius for this parameter neighborhood | **NOT ESTABLISHED** |
| A complete classification over the entire Fourier parameter torus | **NOT ESTABLISHED** |
| Global F, F-prime, or exclusion of compact Fourier-free triple components | **NOT ESTABLISHED** |

The two-parameter neighborhood in §8 is a local instance of A. It is not
an assertion that eight bases occur at every Fourier parameter. The ordinary
Fourier matrix has extra third bases; this module does not discard them.

Run the certificate with Python 3, standard library only:

```sh
python verify_fourier_fibre.py
```

The result is `FOURIER_FIBRE_RECEIPT.json`. Its inputs are eight rational
complex centers in `cubic_centres.json`, which are validated by Rouché's
theorem, not trusted as approximate roots. The proof uses no floating-point
comparison. The script rejects Python's optimization mode because that
mode disables assertions.

## 1. Common rays and a global zero-free coordinate chart

Write a common unbiased unit vector as

\[
 v=\frac1{\sqrt6}(r_0,r_1,r_2,s_0,s_1,s_2)^T,
 \qquad |r_j|=|s_j|=1,
 \qquad r_0=1.
 \tag{1.1}
\]

Indices below are cyclic modulo three. Put

\[
 p=r+s,\qquad q=\bar D(r-s).
\]

Since

\[
 U(D)^*v=\frac16\binom{F^*p}{F^*q},
\]

the exact common-unbiased conditions are

\[
 \sum_j|p_j|^2=\sum_j|q_j|^2=6,
 \qquad \sum_jp_j\bar p_{j+1}=0,
 \qquad \sum_jq_j\bar q_{j+1}=0.
 \tag{1.2}
\]

To see sufficiency as well as necessity, the three numbers
`|(F^*p)_k|^2` have mean `sum |p_j|^2`; their two nonconstant discrete
Fourier coefficients are the displayed cyclic correlation and its
conjugate. They all equal six exactly under (1.2). The same argument applies
to `q`. The two norm equations have only one independent real condition,
because their sum is twelve.

**Zero-free lemma — PROVED.** Every entry of `p` and `q` is nonzero.

If `p_0=0`, its cyclic correlation in (1.2) reduces to
`p_1 conjugate(p_2)=0`. Thus a second entry of `p` vanishes. At each of
these two positions `s_j=-r_j`, so the corresponding entry of `q` has
modulus two. This contradicts `sum |q_j|^2=6`. The proof with `p,q`
interchanged is identical. This works for every unit diagonal `D`.

Consequently the ratios

\[
 t_j=\frac{s_j}{r_j}\in\mathbb T\setminus\{1,-1\},\qquad
 t_j=\frac{1+i h_j}{1-i h_j}
 \tag{1.3}
\]

have unique **finite nonzero real** coordinates `h_j`. No missing
infinite-slope chart or zero-slope exceptional case needs to be searched.
The norm equation in (1.2) is

\[
 \sum_j\operatorname{Re}t_j=0,
 \quad\text{or}\quad
 F(h)=3+\sum_jh_j^2-\sum_{j<k}h_j^2h_k^2
          -3h_0^2h_1^2h_2^2=0.
 \tag{1.4}
\]

## 2. Kernel reconstruction and its complete rank-drop locus

Define

\[
 a_j=r_j\bar r_{j+1},\quad
 \delta_j=\bar d_jd_{j+1},\quad
 A_j=(1+t_j)(1+\bar t_{j+1}),\quad
 B_j=\delta_j(1-t_j)(1-\bar t_{j+1}).
 \tag{2.1}
\]

Then `|a_j|=1`, `a_0a_1a_2=1`, and the remaining equations in (1.2) are

\[
 M(t,D)a=0,\qquad
 M=\begin{pmatrix}A_0&A_1&A_2\\B_0&B_1&B_2\end{pmatrix}.
 \tag{2.2}
\]

All `A_j,B_j` are nonzero by §1. In the slope coordinates,

\[
 A_j=\frac4{(1-i h_j)(1+i h_{j+1})},\qquad
 B_j=\delta_jh_jh_{j+1}A_j.
 \tag{2.3}
\]

Let `C=A cross B`, with the usual cyclic cross product. When `rank M=2`,
the kernel is the line through `C`. There are unit-modulus `a_j` in this
line with product one exactly when

\[
 |C_0|=|C_1|=|C_2|>0.
 \tag{2.4}
\]

When this holds, choose any one of the three roots

\[
 \eta^3=\frac{C_0^2}{C_1C_2},\qquad
 a_j=\eta\frac{C_j}{C_0}.
 \tag{2.5}
\]

The right side in the cubic has modulus one. Recover the original ray by

\[
 r=(1,\bar a_0,a_2),\qquad s_j=r_jt_j.
 \tag{2.6}
\]

These formulas give **exactly three different dephased rays for each
admissible slope profile**. Changing the cube root by `omega` sends all
`a_j` to `omega a_j`; on `(r,s)` it is a ternary clock action. Conversely,
every ray satisfies (2.2), so none is omitted.

For an entirely real polynomial system put

\[
 c_k=\operatorname{Re}(\delta_k\bar\delta_{k-1}),\quad
 L_k=h_{k+1}^2+h_{k+2}^2-2c_kh_{k+1}h_{k+2},\quad
 Q_k=\frac{h_k^2L_k}{1+h_k^2}.
 \tag{2.7}
\]

Direct substitution into the cross product gives the exact identity

\[
 |C_j|^2=\frac{256}{\prod_k(1+h_k^2)}Q_{j+2}.
 \tag{2.8}
\]

Thus (2.4) becomes `Q_0=Q_1=Q_2>0`. Clearing the strictly positive
denominators produces two sextics, in addition to the norm sextic (1.4).
This is a three-real-variable reconstruction, with an explicit cubic
recovering the ray. Merely clearing denominators without the positivity
and rank discussion would not give the stated completeness.

### Rank one

If `rank M=1`, (2.3) implies

\[
 \delta_0h_0h_1=\delta_1h_1h_2=\delta_2h_2h_0=\kappa\ne0.
\]

Taking moduli gives `|h_0|=|h_1|=|h_2|`. The norm equation then forces
`h_j=epsilon_j` with `epsilon_j` in `{1,-1}`. The product of the three
equations gives `kappa^3=1`, and solving the recurrence for the diagonal
phases gives

\[
 z=\kappa\epsilon_0\epsilon_1,\qquad
 w=\kappa^2\epsilon_0\epsilon_2.
 \tag{2.9}
\]

These are exactly the twelve Fourier-equivalent parameter points:
`(z,w)=(sigma_1 kappa,sigma_2 kappa^2)`, with independent signs and
`kappa^3=1`. Conversely, each such point has exactly two rank-one slope
profiles, obtained by the two choices of `epsilon_0`. In particular,
`D0=diag(1,1,i)` has rank two for every norm-admissible profile.

For completeness, each rank-one profile has exactly six rays. Indeed
`|A_j|=2` and `A_0A_1A_2=8`. The numbers `b_j=A_ja_j/2` have modulus one,
product one, and sum zero. Three unit complex numbers sum to zero exactly
when they form a rotated equilateral triple; the product-one condition
makes their ordered values a permutation of `(1,omega,omega^2)`. This
gives six possibilities. It does not classify the additional rank-two
profiles at those twelve parameters.

The rank-one geometry is also present, in different coordinates, in
[Sun, arXiv:2610.12180v1](https://arxiv.org/html/2610.12180v1), §8. The
prescribed-ray clock completion itself is already an input in the supplied
paper supplement, §III. No novelty priority claim is made for these facts.

## 3. Complete solution of the slope equations at `D0`

At `D0=diag(1,1,i)`, `delta=(1,i,-i)` and `c=(0,0,-1)`. To simplify the
equations, write

\[
 x=h_2,\qquad y=h_0,\qquad z=h_1.
\]

The norm polynomial is

\[
 F=3+x^2+y^2+z^2-x^2y^2-y^2z^2-z^2x^2-3x^2y^2z^2.
\]

Clearing denominators from `Q_2=Q_0` and `Q_2=Q_1` gives

\[
 \begin{aligned}
 G&=x^2(y+z)^2(1+y^2)-y^2(x^2+z^2)(1+x^2),\\
 H&=x^2(y+z)^2(1+z^2)-z^2(x^2+y^2)(1+x^2).
 \end{aligned}
 \tag{3.1}
\]

The key factorization is

\[
 G-H=-x^2(y-z)(y+z)\bigl(x^2-(y+z)^2+1\bigr).
 \tag{3.2}
\]

The following cases exhaust the real nonzero solutions.

### Case I: `y=z`

Put `X=x^2>0`, `T=y^2>0`. Then

\[
 (3X-1)T=X(X-3),\qquad
 3+X+2T-2XT-T^2-3XT^2=0.
 \tag{3.3}
\]

The value `X=1/3` is impossible in the first equation. Substituting for
`T` into the second equation gives

\[
 -(X-1)(X+1)^2(3X^2-14X+3)=0.
 \tag{3.4}
\]

The factor `X+1` is incompatible with `X>0`. The value `X=1` gives
`T=-1`, also inadmissible. The remaining roots and their corresponding
positive `T` values are

\[
 X_e=\frac{7+2e\sqrt{10}}3,\qquad
 T_e=\frac{11-2e\sqrt{10}}9,\qquad e\in\{1,-1\}.
 \tag{3.5}
\]

Thus this case has the eight profiles

\[
 (x,y,z)=(a\sqrt{X_e},b\sqrt{T_e},b\sqrt{T_e}),
 \qquad a,b,e\in\{1,-1\}.
 \tag{3.6}
\]

### Case II: `y=-z`

Here

\[
 G=-z^2(x^2+1)(x^2+z^2)<0,
\]

because `x,z` are real and nonzero. This case supplies no profiles.

### Case III: `x^2=(y+z)^2-1`

Let `p=y+z` and `q=yz`. Since `x` is nonzero and real, `p^2>1`. Equation
`G=0` becomes

\[
 G=-p^2(q^2-p^2+1)=0,\qquad p^2=q^2+1.
\]

After this substitution the norm equation is exactly

\[
 -2(q^2-1)(2q^2-q+2)=0.
 \tag{3.7}
\]

The quadratic is strictly positive on the reals, since its discriminant
is `-15`. If `q=1`, the quadratic with roots `y,z` has discriminant
`p^2-4q=-2`, so it has no real roots. Therefore `q=-1`, `p^2=2`, and
`x^2=1`. The eight profiles are

\[
 (x,y,z)=\left(a,\frac{b\sqrt2+c\sqrt6}2,
                    \frac{b\sqrt2-c\sqrt6}2\right),
 \qquad a,b,c\in\{1,-1\}.
 \tag{3.8}
\]

Every displayed profile satisfies all three equations and is nonzero.
The two lists are disjoint: (3.6) has `y=z`, while (3.8) has `y!=z`.
They give exactly sixteen profiles.

The kernel has rank two at `D0`. Hence each profile has exactly three
rays, by (2.5)–(2.6), proving the complete count

\[
 \boxed{48\text{ common unbiased rays for }\{I,U(D_0)\}.}
 \tag{3.9}
\]

The replay checks (3.2), both branch substitutions, the cleared
denominator identity giving (3.4), and (3.7) as integer polynomial
identities. The inequalities and exclusion of the extraneous factors are
the elementary real arguments just given.

## 4. Eight canonical bases enumerate all 48 rays

Define the unitary clock and skew antiunitary

\[
 Z=\operatorname{diag}(1,\omega,\omega^2,1,\omega,\omega^2),
 \qquad J_D(r,s)=(D\bar s,-D\bar r).
 \tag{4.1}
\]

Both preserve the common unbiased rays of the two anchors. The clock
permutes Fourier frequency columns. The antiunitary sends a first-block
anchor column to a second-block column with reversed frequency, and sends
a second-block column to minus a first-block column with reversed
frequency. It is also monomial on the coordinate basis.

For any common ray `v`, the six rays

\[
 \mathcal E_D(v)=
 (v,Zv,Z^2v,J_Dv,ZJ_Dv,Z^2J_Dv)
 \tag{4.2}
\]

form an orthonormal basis. Within a clock orbit the overlap is
`(1/3) sum_j omega^(mj)`, because each two-coordinate block has squared
norm two before normalization. Cross-orbit overlaps vanish term by term:
`conjugate(r_j)d_j conjugate(s_j)-conjugate(s_j)d_j conjugate(r_j)=0`.

On slope profiles, `J_D` acts by

\[
 t_j\longmapsto-t_j,\qquad h_j\longmapsto-1/h_j.
 \tag{4.3}
\]

Exactly eight profiles in §3 have `h_2=x>0`. Pick one ray from each using
the cubic reconstruction. Its three clock translates supply all three
rays of that profile. Their three `J_D` partners have `h_2<0`. Since
`J_D` is an involution on rays and reverses this sign, it pairs the eight
positive profiles bijectively with the eight negative profiles. Thus the
eight bases in (4.2) partition all 48 rays.

The choice of a cubic root only cyclically relabels the rays of the
resulting basis. The stored certificate chooses one root by a small
rational disk, solely to fix labels for the overlap graph.

## 5. Exact certificate: these are all third bases

Number the rays so that basis `b` has labels `6b,...,6b+5`, for
`b=0,...,7`. There are 1,128 unordered ray pairs:

* 120 pairs lie in one of the eight canonical bases and are exactly
  orthogonal by §4.
* 1,008 pairs lie in different bases. For **960** of them the verifier
  proves that the normalized inner-product modulus is greater than
  **4/25**.
* The remaining **48** cross pairs are retained as possible orthogonal
  pairs. Their exact orthogonality is not needed or asserted by this
  certificate.

All exclusions use rational interval arithmetic. The possible
orthogonality graph therefore has 168 edges. Exhaustive six-clique
enumeration gives exactly

\[
 \{0,1,2,3,4,5\},\{6,7,8,9,10,11\},\ldots,
 \{42,43,44,45,46,47\}.
\]

An actual orthonormal third basis must be a six-clique of this conservative
graph. Conversely, all eight listed cliques are actual bases by §4. Hence

\[
 \boxed{\text{Exactly eight unordered third bases over }\{I,U(D_0)\}.}
 \tag{5.1}
\]

The count is with the fixed anchor pair and rays modulo their independent
phases. Reordering the six columns does not count as another basis.

### Why the root enclosures are certificates

Every radical is enclosed between dyadic rationals whose squares prove
the enclosure. The sign of the radical is specified analytically by the
positive square root. Every arithmetic operation rounds outward to a
dyadic grid with 100 fractional bits. Complex division is performed only
after proving a strictly positive lower bound for the denominator's
squared modulus.

For the cubic `eta^3=S`, the file proposes a rational complex center `mu`
and radius `r=2^-40`. The verifier proves, uniformly for the exact `S`
in its computed enclosure,

\[
 |\mu^3-S|+3|\mu|r^2+r^3 < 3|\mu|^2r.
 \tag{5.2}
\]

For the left side, componentwise absolute bounds are used to upper-bound
the complex modulus; for `|mu|` an `l1` upper bound suffices. The right
side uses the exact rational value `|mu|^2`. Rouché's theorem on the
circle `|eta-mu|=r` then compares the cubic with its linear term and
proves that exactly one cubic root lies in the disk. The Cartesian box
used in subsequent computations contains the entire disk.

Thus neither a numerical cube-root routine nor a tolerance-based equality
test is part of the replay. The rational centers could have been chosen
by any method; failing centers would fail (5.2).

## 6. All 48 original ray systems are simple

For a dephased raw ray `(r,s)` use the five phase angles of entries
`r_1,r_2,s_0,s_1,s_2`. An equivalent five-real-equation common-ray system is

\[
 \begin{split}
 E_0&=\operatorname{Re}\sum_jr_j\bar s_j,\\
 E_+&=\sum_j(r_j+s_j)\overline{(r_{j+1}+s_{j+1})},\\
 E_-&=\sum_j\bar d_j(r_j-s_j)
               \overline{\bar d_{j+1}(r_{j+1}-s_{j+1})}.
 \end{split}
 \tag{6.1}
\]

The ordered real residual vector is
`(E0, Re E+, Im E+, Re E-, Im E-)`. This is the original torus ray
problem, with its global phase removed, rather than just the reduced
slope equations.

The verifier differentiates each entry by `d v_k/d theta_k=i v_k` and
uses the product rule, conjugating the differentiated second factor
where required. It computes each 5-by-5 determinant by its complete
Leibniz expansion with outward rational interval arithmetic. For all
**48** rays, the determinant interval excludes zero. The full intervals
are recorded in the receipt.

This certifies that every one of the 48 common rays is a simple solution
of the full five-phase equations. It removes any dependence on an
unproved assertion that the reduced slope elimination preserves
Jacobian rank.

## 7. Universal placement of canonical triples in `GM`

This section proves membership in the **specific** companion surface
from return L-progress, not just that a transition has some bicirculant
matrix form.

Let `R=diag(r)` and `S=diag(s)`. Use the columns in (4.2), grouped by their
two clock orbits, so that their unitary matrix is

\[
 V=\frac1{\sqrt6}
 \begin{pmatrix}RF&D\bar SF\\SF&-D\bar RF\end{pmatrix}.
 \tag{7.1}
\]

All the following calculations hold for every common ray and every `D`.

First, `V` itself is of transposed Fourier type. Multiplying its first
three rows by `bar r_j` and its last three rows by `bar s_j` gives

\[
 \frac1{\sqrt6}\begin{pmatrix}F&EF\\F&-EF\end{pmatrix},
 \qquad E=\operatorname{diag}\left(\frac{d_j}{r_js_j}\right).
 \tag{7.2}
\]

The first phase of `E` can be set to one by a common phase on the last
three columns. This directly exhibits the second Fourier edge of every
canonical triple.

For the stronger companion membership, define raw circulant blocks

\[
 A=\frac1{\sqrt6}F^*\operatorname{diag}(r+s)F,
 \quad
 B=\frac1{\sqrt6}F^*\operatorname{diag}\bigl(d(\bar s-\bar r)\bigr)F.
 \tag{7.3}
\]

Block multiplication gives

\[
 \sqrt6\,U^*V=\begin{pmatrix}A&B\\-B^*&A^*\end{pmatrix}.
 \tag{7.4}
\]

Rebase by `U*`, order the three bases as `(I,U*V,U*)`, and multiply the
last three coordinates by `-1`. The resulting raw Hadamard and companion
are

\[
 \mathcal H=\begin{pmatrix}A&B\\B^*&-A^*\end{pmatrix},\qquad
 \mathcal K=\begin{pmatrix}F^*&F^*\\-F^*\bar D&F^*\bar D\end{pmatrix}.
 \tag{7.5}
\]

The blocks `A,B` have unit-modulus entries, since (7.4) is a Hadamard
transition. In the eigenbasis given by the columns of `F*`, their
eigenvalues and the companion's frequency phases are

\[
 \lambda_j=\sqrt{3/2}(r_j+s_j),\quad
 \mu_j=\sqrt{3/2}\,d_j(\bar s_j-\bar r_j),\quad
 \tau_j=-\bar d_j.
\]

Replacing the frequency labels `j` by `-j` changes `F*` to the `F`
convention used in the supplied companion formula. The key scalar
identity, valid before or after that relabeling, is

\[
 \lambda_j\mu_j\tau_j
   =-3i\operatorname{Im}(r_j\bar s_j)\ne0.
 \tag{7.6}
\]

Nonvanishing follows from the zero-free lemma: `t_j` is not `1` or `-1`.
Therefore `tau_j` is one of the two phases satisfying the global
companion condition

\[
 \tau_j=\pm i\frac{\overline{\lambda_j\mu_j}}
                         {|\lambda_j\mu_j|}.
 \tag{7.7}
\]

The independent signs correspond exactly to swapping the two companion
columns at each frequency, as in the supplied geometry §6.

To match the normalization in the supplied geometry §5, let `a=A_00`
and `b=B_00`. Apply row phases `diag(I_3,ab I_3)` and column phases
`diag(bar a I_3,bar b I_3)` to `H`. This replaces the blocks by
`A'=bar a A`, `B'=bar b B`, preserving the displayed adjoint block
structure. Apply the same row phases to `K`; its phases become
`tau'_j=ab tau_j`. Thus `lambda'_j mu'_j tau'_j=lambda_j mu_j tau_j`,
and (7.7) is preserved. The first entries of `A',B'` are now one.

If the first rows of `A,B` are `(a_0,a_1,a_2)` and `(b_0,b_1,b_2)`, the
actual ratio coordinates of the supplied surface are

\[
 x=a_0/a_1,\quad y=a_1/a_2,\qquad
 u=b_0/b_1,\quad v=b_1/b_2.
 \tag{7.8}
\]

They give
`A'=circ(1,x^-1,(xy)^-1)` and
`B'=circ(1,u^-1,(uv)^-1)`, with the circulant convention of the supplied
geometry. Its exact Hadamard equivalence then puts these parameters in
`phi(x,y)+phi(u,v)=0`. Formula (7.7), with column-pair swaps if needed,
is precisely its prescribed companion. Canonical dephasing finishes the
allowed equivalence.

Hence every triple `(I,U(D),E_D(v))` belongs to `GM`. This is an explicit
membership calculation, independent of any global assertion about all
triples with a Fourier edge.

## 8. A local complete family, with no unobserved ray branches

**Local fibre theorem — PROVED.** There is an open neighborhood `W` of
`(z,w)=(1,i)` in the Fourier parameter torus such that every pair
`{I,U(D)}`, `D in W`, has exactly 48 common unbiased rays and exactly
eight unordered third bases. All eight are canonical clock completions
and belong to `GM`.

Here is the full locality argument.

1. The common-ray problem is a real analytic family of five equations
   on the compact dephased five-torus. At `D0` the solution set is exactly
   the 48 rays classified in §3. Every solution has an invertible
   five-phase Jacobian by §6.

2. The real analytic implicit-function theorem supplies a unique local
   branch through each of those rays. Choose pairwise disjoint phase
   neighborhoods around them. Compactness rules out additional branches
   arriving from elsewhere: otherwise parameters `D_n -> D0` and extra
   rays would have a convergent subsequence, whose limit would be a
   common ray at `D0` outside those neighborhoods. This contradicts the
   exhaustive 48-ray list. After shrinking the parameter neighborhood,
   all common rays are precisely the 48 analytic branches.

3. Choose one seed branch from each of the eight canonical bases at
   `D0`. The analytic operations `Z,J_D` generate eight canonical
   six-element bases for nearby parameters. Their 48 ray branches remain
   distinct and, by local uniqueness, coincide with the 48 branches from
   the previous step.

4. Each of the 960 excluded overlaps is nonzero with a strict margin at
   `D0`. There are finitely many, so continuity gives a common smaller
   parameter neighborhood on which all remain nonzero. Thus every
   possible orthogonality graph nearby is contained in the conservative
   graph certified in §5. That graph has exactly the eight canonical
   six-cliques. Since these cliques persist as actual bases, there are
   exactly eight third bases nearby.

5. Section 7 places each canonical triple in the supplied orbit `GM`.
   This proves the membership assertion for every triple over every
   anchor in this neighborhood.

This proof establishes existence of `W`. It does not assign an explicit
radius. The rational overlap margin and the full Jacobian enclosures
are inputs for a quantitative continuation, should one be desired.

## 9. What remains in A

For arbitrary Fourier parameters away from the twelve points (2.9),
equations (1.4), (2.7), and cubic reconstruction (2.5) are complete.
They provide a concrete algebraic elimination route. What is missing is
global control of the real solutions of those three sextics, together
with all orthogonality cliques across their clock orbits. The exactly
solved fibre above and its local continuation do not supply that global
control.

No argument here rules out other Fourier-edge triple components at
parameters outside `W`. No argument here proves that every common ray
system is finite globally, that its cardinality is always 48, or that
the clock completion is always the only way to assemble a third basis.

## 10. Inputs and trust boundary

Relevant supplied inputs are:

* `P_atlas_free/BRIEF.md`, definitions and subproblem A;
* `P_atlas_free/inputs/paper/supp_body.tex`, §III, the canonical clock
  construction and its Fourier/bicirculant forms;
* `L_fourier_edge_return/algebra/FOURIER_DOMAIN.md`, the transpose
  reduction;
* `L_global_F_progress/globalization/GLOBAL_BICIRCULANT_GEOMETRY.md`,
  §§5–6, the exact normalized surface and companion definition;
* `L_global_F_progress/root/COMPONENT_THEOREM.md`, the definition of `GM`.

The overlapping recent primary reference for prescribed-ray completion
and its rank-one geometry is Hao-Yu Sun,
[arXiv:2610.12180v1](https://arxiv.org/html/2610.12180v1), §§6–8. Its
strong-unextendibility theorem is not needed by this module.

The replay checks exact finite calculations and interval certificates.
The finite Fourier transform identity, linear-kernel reconstruction,
real case splits, Rouché theorem, implicit-function theorem, and
compactness argument are mathematical proofs written above, not claims
of Lean formalization. The module does not certify the correctness of
unrelated claims in its supplied or literature inputs.
