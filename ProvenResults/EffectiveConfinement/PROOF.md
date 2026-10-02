# An explicit global small-M cutoff and quantitative seed confinement

**Date:** 30 September 2026.  
**Status:** proved conditional on the repository's accepted **strict-corner coverage** input.  
**Practical status:** the cutoff is extraordinarily small. This module supplies an explicit theorem, **not a production-scale closure of the branch layer**.

## 0. Results, constants, and dependencies

All Hadamards are raw matrices, `|H_ij|=1` and `HH*=6I`. The invariant `R` is exactly the repository invariant, with no rescaling. Let

\[
M(H)=\max_{400\text{ positional corners }c}R_c(H).
\]

Define the following explicit integers and rational numbers:

\[
\begin{aligned}
K&=181\cdot26\cdot76^{26}
  =37480495363891384344122334580448617578688715115462656,\\
N&=2K
  =74960990727782768688244669160897235157377430230925312,\\
m&=2^{-N},\qquad \rho_1=\frac1{3072},\\
c&=2^{-N-4},\qquad
\eta=2^{1-K},\qquad
\tau=2^{-N-26}.
\end{aligned}
\]

`m` is a rational number specified by an exact integer exponent, **not** a numerical approximation. Expanding its denominator is neither necessary nor feasible. The code uses exact scaled rationals. Its exponent is approximately `7.50e52`; this comparison is descriptive only and is not used by verification.

### Theorem A: explicit global confinement

Assume accepted strict-corner coverage. Every physical order-six complex Hadamard satisfying

\[
0<M(H)<m
\]

is equivalent to a fully dephased matrix

\[
\widehat H_{ij}=\zeta_6^{ij}e^{iu_{ij}},\qquad
u_{0j}=u_{i0}=0,
\]

with the **full-matrix phase radius**

\[
\rho=\max_{1\le i,j\le5}|u_{ij}|<\rho_1=1/3072<1/40.
\]

Row and column permutations and dephasing suffice; transpose is unnecessary.

Equivalently, with the repository's full-matrix orbit distance `delta`,

\[
\delta(H)\ge1/3072\quad\Longrightarrow\quad M(H)\ge m.
\]

In particular this gives the explicit lower bound `mu=m` on `delta>=1/40` requested in Target A.

### Corollary A1: projector-distance exclusion

Using the retained, proved F6 quartet-exclusion tube of projector radius `1/30`, every H in Theorem A is quartet-free. Indeed, in the aligned frame,

\[
\max_j\left\|
\frac{\widehat H_{:,j}\widehat H_{:,j}^*}{6}
-\frac{F_{6,:,j}F_{6,:,j}^*}{6}
\right\|_{\rm op}
\le\rho<1/3072<1/30.
\]

Section 7 proves the normalization and phase-to-projector conversion explicitly.

### Corollary A2: an explicit global quadratic constant

Using ChartConditioning Theorem 2 in addition,

\[
\boxed{\quad
2^{-N-4}\,\delta(H)^2\le M(H)\le432^2\delta(H)^2
\quad}
\]

for every physical H. This makes the previously uncomputed positive constant in ChartConditioning Corollary 2.1 explicit.

### Corollary B1: two-class seed confinement

Using ChartConditioning's local inverse and inactive-class theorem, let theta be the seed of **any strict physical maximal corner**. If `R(theta)<m`, then

\[
\operatorname{dist}_\infty(\theta,S_{\rm act})
\le2\sqrt{R(\theta)}<\eta=2^{1-K},
\]

where `S_act` is the union of the full 72-frame orbits of `(4,5,0,3)` and `(1,2,2,4)`, with the integers interpreted in units of `pi/3`. Distance here is the circular **four-seed phase distance in radians**, not a matrix radius.

This proves the confinement portion of Target B with explicit constants. It does **not** add production-width exclusion cubes for the second class.

### Corollary B2: explicit exclusion of the stationary seed classes

Let `S_stat` be the union of the other four F6 seed classes, including all their 72-frame images. Every strict physical maximal seed obeys

\[
\boxed{\quad \operatorname{dist}_\infty(\theta,S_{\rm stat})>\tau=2^{-N-26}.\quad}
\]

This is global in the strict physical maximal domain, not merely a statement about carriers already assumed close to F6. It makes ChartConditioning Corollary 3.2 quantitative. Its constant is much too small to supersede the useful local tubes already in the repository.

### Dependency boundary

The **only accepted reconstruction input used** is:

> **[SC] Strict-corner coverage:** every physical order-six Hadamard not equivalent to F6 has a positional corner with `R>0`.

Every use of [SC] is identified below. We do **not** assume side/completion exhaustion, positive-sheet coverage, nonvanishing reconstruction divisors, MUB completion, balance, shared symmetry, or smoothness of the Hadamard variety.

Proved ingredients used:

* The complementary-corner square identity from `CornerBounds/PROOF.md`. Its finite Laurent identity and normalization are independently regenerated here.
* Theorem 1 of Gabriela Jeronimo, Daniel Perrucci and Elias Tsigaridas, *On the minimum of a polynomial function on a basic closed semialgebraic set and applications*, arXiv:1112.0544v1, printed page 2; published in **SIAM Journal on Optimization 23(1), 241–255 (2013)**, DOI `10.1137/110857751`. This is an additional **published, proved theorem**, not an unproved classification assumption. The exact formulation used is in Section 5.
* For A1 only: `FourierNeighbourhood/ClusterTube/EXPANDED.md`, projector radius `1/30`.
* For A2, B1 and B2: `ChartConditioning/RESULTS.md`, local inverse and four-inactive-class theorem.

This module does not formally reprove the published effective-minimum theorem or replay the retained large cluster-tube and local-inverse proof packets. It proves all applications and coefficient estimates below. `verify.py` checks the finite algebra, constants, exact predicate logic, and optionally the hashes of the repository inputs. This distinction is also recorded in the receipt.

## 1. Signed polynomial invariants

For a dephased three-by-three phase corner write

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}.
\]

For its columns `(1,x_j,y_j)^T`, with `x=(1,a,b)`, `y=(1,c,d)`, put `z_j=y_j/x_j` and form the columns

\[
 A_j=(x_j,-x_j^{-1},0,0,-z_j,z_j^{-1})^T,\qquad
 B_j=(0,0,y_j,-y_j^{-1},z_j,-z_j^{-1})^T.
\]

Let

\[
D(E)=\det[A_0\ B_0\ A_1\ B_1\ A_2\ B_2],\qquad f(E)=-iD(E).
\]

The determinant has exactly 48 Laurent monomials, each with coefficient `+1` or `-1`. Formal conjugation inverts the phase variables and gives `conj(D)=-D`, so f is real on the phase torus. The square identity is

\[
R(p,-J,W)=-D(E)^2=f(E)^2.
\]

For a physical H, complementary column triples in a fixed row triple interchange the two Gram matrices. Consequently

\[
R_c(H)=f_{c'}(H)^2,\qquad
M(H)=\max_c f_c(H)^2,\qquad \sqrt{M(H)}=\max_c|f_c(H)|.
\tag{1.1}
\]

This includes singular corners and `R=0` and uses no reconstruction assumptions.

### 1.1 Undephasing the Laurent monomials

If `(A,B,C,D)` is the exponent tuple of a seed monomial, its exponent array in the nine raw corner entries is

\[
\begin{pmatrix}
 A+B+C+D&-A-C&-B-D\\
 -A-B&A&B\\
 -C-D&C&D
\end{pmatrix}.
\tag{1.2}
\]

Every row sum and column sum is zero. This expresses gauge invariance and the exact corner dephasing operation.

Regeneration of the 48 terms gives:

\[
|e_v|\le2,\qquad
\#\{e:\|e\|_1=8\}=36,\qquad
\#\{e:\|e\|_1=12\}=12.
\tag{1.3}
\]

In particular

\[
\sum_e|d_e|\|e\|_1=432,
\qquad
\sum_e|d_e|2^{\|e\|_1}
=36\cdot2^8+12\cdot2^{12}=58368.
\tag{1.4}
\]

The complete coefficients are in `certificates/arithmetic.json` and are independently rebuilt by `exact_algebra.py`.

It follows immediately that `|f_c(H)|<=48` for every phase matrix. Also, for two matrices aligned with entry phase discrepancies bounded by alpha,

\[
|f_c(H)-f_c(K)|\le432\alpha.
\tag{1.5}
\]

Indeed each monomial changes by at most `||e||_1 alpha`, since `|exp(ix)-exp(iy)|<=|x-y|`. This comparison does not require either matrix to be physical.

## 2. A compact rational cover of the full dephased matrix torus

There are 25 free entries after full dephasing. For each free position v choose a fixed sign `sigma_v` in `{+1,-1}` and set

\[
h_v(t_v)=\sigma_v\frac{(1+it_v)^2}{1+t_v^2},
\qquad -1\le t_v\le1.
\tag{2.1}
\]

The first row and column are identically one. These `2^25` closed charts cover the whole dephased phase torus, including their overlaps and endpoints. To see this, for any unit phase z choose sigma so that `Re(sigma z)>=0` and put

\[
t=\frac{\operatorname{Im}(\sigma z)}{1+\operatorname{Re}(\sigma z)}.
\]

Then `|t|<=1`, its denominator is at least one, and (2.1) equals z. Conversely (2.1) has modulus one because

\[
(1-t^2)^2+4t^2=(1+t^2)^2.
\]

**The signs are labels, not real variables.** Each individual application of the effective-minimum theorem below has 25 matrix variables plus one epigraph variable, hence 26 variables. The estimates are uniform in all sign labels, so enumerating `2^25` charts is not a computational step in this proof.

These are auxiliary full-matrix coordinates. They do not replace the campaign's four-seed reconstruction or assert that a seed cube lifts to a matrix cube.

### 2.1 Physicality constraints

For each row pair `a<b`, the equation

\[
\sum_{j=0}^5h_{aj}\overline{h_{bj}}=0
\]

gives one real and one imaginary polynomial equation after clearing denominators. Use the common denominator consisting of one factor `(1+t_v^2)` for each free entry in the two rows. There are at most ten such entries. The denominator is positive everywhere, so clearing it changes no solutions.

The resulting 30 integer polynomials have degree at most 20. A coefficient-norm bound is

\[
\|P_{ab}\|_1\le6\cdot2^{12}=24576.
\tag{2.2}
\]

For each of the six summands, at most two numerator factors `(1+it)^2` or `(1-it)^2` replace denominator factors. The unused factors have coefficient norm two and the used factors norm four, giving at most `2^(10+2)` per summand. Taking real or imaginary parts cannot increase this bound.

Flatness is built into the parametrization. The 30 off-diagonal equations therefore imply the full physical equation `HH*=6I`.

## 3. Clearing signed-invariant denominators with controlled height

For a corner c, let `V_c` be its free entries and `k=|V_c|<=9`. Define

\[
Q_c(t)=\prod_{v\in V_c}(1+t_v^2)^2>0.
\tag{3.1}
\]

By (1.3), this clears every Laurent monomial in `f_c`. Write

\[
f_c(H(t))=\frac{P_c(t)}{Q_c(t)}.
\tag{3.2}
\]

An explicit formula is obtained by replacing a raw monomial exponent e at a free entry by

\[
\sigma_v^e(1+i\operatorname{sgn}(e)t_v)^{2|e|}
(1+t_v^2)^{2-|e|}.
\tag{3.3}
\]

For `e=0` the first factor involving t is one. Multiply (3.3) over the corner entries, sum with the 48 determinant coefficients, and take the imaginary part. This is exactly `P_c`, since `f=-iD` and D is imaginary. Thus P has **integer** coefficients. No algebraic coefficients or numerical phase constants enter these charts.

The degree of each factor in (3.3) is four. Therefore

\[
\deg Q_c\le36,\qquad\deg P_c\le36.
\]

For a polynomial with complex coefficients use the sum of absolute values of its real and imaginary coefficient parts as a submultiplicative norm. A factor in (3.3) has norm at most `2^(2+|e|)`. Fixed first-row/column entries only decrease the bound. Equations (1.3)–(1.4) imply

\[
\begin{aligned}
\|Q_c\|_1&\le2^{18},\\
\|P_c\|_1&\le2^{18}(36\cdot2^8+12\cdot2^{12})\\
&=15300820992.
\end{aligned}
\tag{3.4}
\]

Introduce a real variable w and impose the 800 epigraph inequalities

\[
wQ_c-P_c\ge0,\qquad wQ_c+P_c\ge0
\quad(c=1,\ldots,400).
\tag{3.5}
\]

They are exactly `w>=max_c |f_c|`, because every Q is positive. Their degree is at most 37 and their coefficient norms satisfy

\[
\|wQ_c\pm P_c\|_1
\le15301083136<2^{34}.
\tag{3.6}
\]

Keeping this signed epigraph, rather than squaring every invariant, limits the degree to 37. The variable w represents `sqrt(M)` at a physical minimizer, not M.

## 4. A sixth-root defect condition

For any unit phase z let

\[
b(z)=|z^6-1|.
\]

Consider the bad-entry condition

\[
b(h_{11})\ge1/1024.
\tag{4.1}
\]

Since `sigma^6=1`, its denominator-cleared integer polynomial in the chart variable `t=t_11` is

\[
B(t)=2^{20}\left[2(1+t^2)^6-2\operatorname{Re}(1+it)^{12}\right]
-(1+t^2)^6\ge0.
\tag{4.2}
\]

Indeed `b(h)^2=2-2 Re(h^6)`, and the denominator is `(1+t^2)^6>0`.

The degree is at most 12. One uniform coefficient-norm bound is

\[
\|B\|_1\le2^{20}(2\cdot2^6+2\cdot2^{12})+2^6<2^{34}.
\tag{4.3}
\]

The actual coefficient norm, independently computed by the verifier, is `4294967296`; the larger bound is retained for the proof.

### 4.1 The compact basic closed sets

For each fixed sign chart sigma, let T_sigma be the subset of `R^26` defined by:

1. the 30 real physicality equations;
2. the 50 inequalities `1+t_v>=0`, `1-t_v>=0`;
3. the 800 inequalities (3.5);
4. `w>=0` and `48-w>=0`;
5. the bad-entry inequality (4.2).

There are **883 constraint polynomials**, all with integer coefficients, degrees at most **38** (an even upper bound), and coefficient absolute values at most **2^34**. The objective is the polynomial `g(t,w)=w`. Each T_sigma is closed and bounded and hence compact. Singularities, multiple components, zero polynomials, and redundant physicality equations cause no difficulty.

### 4.2 Where accepted strict-corner coverage enters

**First use of [SC].** If a point of T_sigma had w=0, all signed invariants would vanish. Its matrix is physical, so (1.1) gives M=0. Accepted strict-corner coverage then forces H to be equivalent to F6.

Every fully dephased matrix equivalent to F6 has only sixth-root entries. More explicitly, if

\[
H_{ij}=\alpha_i\beta_j\zeta_6^{r_i c_j}
\]

is fully dephased, its first-row and first-column identities give

\[
H_{ij}=\zeta_6^{(r_i-r_0)(c_j-c_0)}.
\tag{4.4}
\]

Thus (4.1) is impossible. Consequently w is strictly positive on every nonempty T_sigma. Compactness alone proves positivity of its minimum; Section 5 supplies an explicit lower bound for that positive minimum.

## 5. Applying the proved effective-minimum theorem

The ingredient from Jeronimo–Perrucci–Tsigaridas is the following formulation of their Theorem 1.

Let a basic closed set in `R^n` be defined by s integer polynomials of degree at most an even integer d, whose coefficients have absolute value at most H. Let g be an integer polynomial of degree at most d and coefficient bound at most H. On a compact connected component, a **nonzero** minimum of g has absolute value at least

\[
\left(2^{4-n/2}\widetilde H d^n\right)^{-n2^n d^n},
\qquad \widetilde H=\max\{H,2n+2s\}.
\tag{5.1}
\]

No regularity or independence assumption on the constraints is needed. This is why the result can be used on the physical Hadamard variety without asserting a global smooth parametrization or a nonsingular KKT system.

For each nonempty T_sigma, choose a global minimizing point of w and its connected component. That component is closed in the compact set and hence compact. Its minimum is the same positive global minimum. Apply (5.1) with

\[
n=26,\quad d=38,\quad s=883,\quad H=2^{34},\quad g=w.
\]

Since `2n+2s=1818<2^34`, the base and exponent in (5.1) become

\[
2^{4-13}2^{34}38^{26}=2^{25}38^{26}<2^{181},
\qquad
26\cdot2^{26}\cdot38^{26}=26\cdot76^{26}.
\]

It follows that, on every T_sigma,

\[
w\ge(2^{25}38^{26})^{-26\cdot76^{26}}>2^{-K}.
\tag{5.2}
\]

This is a uniform analytic application to all charts, not an unexecuted finite-cover computation.

Now let H be an arbitrary fully dephased physical Hadamard with a free entry satisfying `b(h_ij)>=1/1024`. Permutations of rows and columns fixing index zero place that entry at `(1,1)`. Such permutations preserve the multiset of R values and M. The matrix lies in some chart sigma. By (1.1) and `|f_c|<=48`, the point with `w=sqrt(M(H))` satisfies all constraints of T_sigma. Therefore

\[
\boxed{\quad
\text{some free entry has }|h_{ij}^6-1|\ge1/1024
\quad\Longrightarrow\quad M(H)>m.
\quad}
\tag{5.3}
\]

In particular, `M(H)<m` forces **every matrix entry**, not just its four seeds, to lie close to a sixth root. No H+ reconstruction has been made.

## 6. Exact root rounding: from entry defects to the F6 orbit

Assume `0<M(H)<m`. By (5.3), each entry has sixth-root defect less than `1/1024`. Round it to its nearest sixth root to obtain H0, retaining the already exact first row and column of ones.

### 6.1 Phase error

Let u in `[-pi/6,pi/6]` be the entry's angle relative to its nearest sixth root. Then

\[
|z^6-1|=2|\sin(3u)|\ge\frac{12}{\pi}|u|.
\]

The inequality is the concavity bound `sin x>=2x/pi` on `[0,pi/2]`. Therefore, using `pi<4`,

\[
|u|<\frac{\pi}{12\cdot1024}<\frac1{3072}=\rho_1.
\tag{6.1}
\]

The nearest root is unique because this is less than `pi/6`. The entry chord error is at most the phase error.

### 6.2 Rounding preserves physical orthogonality exactly

For any two distinct rows, comparing their inner products gives

\[
\left|\sum_j(H_0)_{aj}\overline{(H_0)_{bj}}\right|
\le12\rho_1=1/256<1.
\tag{6.2}
\]

The original H inner product is zero; each of the six summands changes by at most `2 rho1`.

The rounded inner product belongs to the Eisenstein integer ring `Z[zeta_6]`. If `a+b zeta_6` is nonzero, its squared modulus is the positive integer

\[
a^2+ab+b^2,
\]

and hence its modulus is at least one. Equation (6.2) forces every rounded off-diagonal inner product to vanish. H0 is therefore an **exact physical Hadamard**, not merely an approximately orthogonal root matrix.

### 6.3 Its signed invariants vanish exactly

For a sixth-root phase matrix the Laurent determinant D belongs to `Z[zeta_6]`. It is purely imaginary. Writing `D=a+b zeta_6`, this implies `2a+b=0`, so b is even and

\[
f(H_0)=-iD(H_0)\in\sqrt3\,\mathbb Z.
\tag{6.3}
\]

The code independently checks the corresponding statement on all `6^4` dephased sixth-root corners; the ring argument proves it without relying on enumeration.

Since `m<1/4`, (1.5) and (6.1) give for every corner

\[
|f_c(H_0)|\le|f_c(H)|+432\rho_1
<\frac12+\frac{432}{3072}
=\frac{41}{64}<1<\sqrt3.
\]

By (6.3), all these signed invariants are zero. Thus `M(H0)=0`.

**Second use of [SC].** H0 is physical and has M=0; accepted strict-corner coverage makes it equivalent to F6.

### 6.4 No hidden dephasing amplification

Formula (4.4) applies to the already dephased H0. The sequences `(r_i-r_0) mod 6` and `(c_j-c_0) mod 6` are permutations of `0,...,5`, with zero at index zero. Reordering them increasingly therefore uses row and column permutations **fixing index zero** and sends H0 exactly to standard F6.

Apply the same permutations to H. It remains fully dephased, and the entry phase bound (6.1) is unchanged. In particular there is no unmentioned fourfold dephasing loss in this step. This proves Theorem A.

The argument establishes a global result over every physical component and boundary stratum. It uses the accepted global zero-set characterization twice, but it does not assume connectedness of the Hadamard variety, uniqueness of boundary completions, or a particular sheet.

## 7. Correct conversion to the projector tube

In the aligned frame put `x_j=H_{:,j}/sqrt(6)` and `y_j=F6_{:,j}/sqrt(6)`. These are unit vectors. If the full-matrix phase radius is rho, then

\[
\|x_j-y_j\|_2^2
=\frac16\sum_i|e^{iu_{ij}}-1|^2\le\rho^2.
\]

For any two unit vectors x,y,

\[
\|xx^*-yy^*\|_{\rm op}^2=1-|x^*y|^2
\le2-2\operatorname{Re}(x^*y)=\|x-y\|_2^2.
\]

The difference between the last two expressions is `|1-x*y|^2>=0`. Hence maximum column-projector distance is at most rho, with no missing factor of `sqrt(6)` or two.

Theorem A puts this distance below `1/3072`, hence inside the retained `1/30` F6 tube. Monomial equivalence preserves quartet extendibility. No transpose-invariance assertion about the maximum-column metric is needed. This proves A1.

## 8. Explicit quadratic and seed consequences

### 8.1 The global quadratic constant

For `delta<=1/40`, ChartConditioning Theorem 2 gives `M>=4 delta^2`. For `delta>=1/40`, Theorem A gives `M>=m`, because `1/40>1/3072`. Since `delta<=pi<4`,

\[
M\ge m>\frac{m}{16}\delta^2.
\]

Combining the two ranges and the retained upper bound proves A2 with `c=m/16`.

### 8.2 Seed radius is not matrix radius

In the chart supplied by Theorem A, the retained local inverse sharpens the full-matrix bound to

\[
\rho\le\frac{\sqrt{M(H)}}2.
\tag{8.1}
\]

A dephased seed entry of any positional corner is a cross ratio of four raw matrix entries. The error in its phase is therefore at most `4 rho`, including when the corner is not the first three rows and columns in the F6 frame. Consequently its four-seed circular distance from the corresponding F6 corner is bounded by

\[
4\rho\le2\sqrt M.
\tag{8.2}
\]

This is the explicit conversion used in B1; a matrix radius is never substituted for a seed radius.

If the corner is strict and maximal, `0<rho<1/3072<1/1250`. The retained four-inactive-class theorem therefore excludes the other four reference classes as maximizers. The reference corner belongs to one of the two active classes, with its original internal row/column ordering included in the 72-frame orbit. Equations (8.1)–(8.2) prove B1.

### 8.3 A uniform seed Lipschitz bound for R

Independently expand the original seed polynomial R in Laurent monomials:

\[
R(\theta)=\sum_\nu r_\nu e^{i\nu\cdot\theta}.
\]

The verifier rebuilds it from the Gram formulas and obtains 2083 nonzero terms and

\[
L_R:=\sum_\nu|r_\nu|\|\nu\|_1=19537920<2^{25}.
\tag{8.3}
\]

Hence for any two seed points at circular max-coordinate distance at most h,

\[
|R(\theta)-R(\theta')|\le L_R h.
\tag{8.4}
\]

This is a bound for the four-seed polynomial itself. It does not require physicality between the endpoints.

### 8.4 The stationary seed gap

Suppose a strict physical maximal seed theta were within tau of some stationary F6 seed s. Every such s has `R(s)=0`. By (8.3)–(8.4) and the chosen `tau=m/2^26`,

\[
0<M(H)=R(\theta)\le L_R\tau<m/2<m.
\]

Corollary B1 gives an active-class F6 seed s' with

\[
\operatorname{dist}_\infty(\theta,s')\le2\sqrt M<2\sqrt m.
\]

Therefore

\[
\operatorname{dist}_\infty(s,s')<\tau+2\sqrt m<1<\pi/3.
\]

The penultimate inequality follows already from `K>=10`. Every coordinate of every F6 seed is an integer multiple of `pi/3`. Distinct such seed vectors differ in at least one circular coordinate by at least `pi/3`. Thus s=s', contradicting the disjointness of the active and stationary classes. This proves B2, including the closed tau-neighborhood.

The six full frame orbits are independently enumerated in the certificate. Their distinct seed counts are `72,18,36,36,2,12`, respectively; their positional-corner counts are `144,36,72,72,28,48`. A 72-frame orbit may contain repeated seeds. No multiplicity is silently omitted.

## 9. Campaign predicate and exact representation

`predicate.certify_box(box, R_enclosure)` takes four closed **rational turn intervals**, together with an outward enclosure for the seed polynomial R. It returns a certificate or `None`.

For `sup R<=0`, it certifies that the box misses strict physical D0. For `0<sup R<m`, it certifies no quartet-edge completion on strict physical D0, using A1 and maximality `M=R`. It does not claim that the whole box lies in D0 or in the fundamental region F, and it does not remove the maximality premise.

The correctness of the supplied outward R enclosure remains a caller premise. The predicate does not silently treat sampled or rounded R values as certified enclosures. `verify_certificate` checks the predicate logic and certificate contents, not the enclosure's origin.

Ordinary rational inputs and exact scaled rationals are accepted for R. The latter are objects of the form

```
{"mantissa": "1", "exponent2": "-123"}
```

meaning exactly `2^-123`. The actual cutoff exponent is the N above. Comparison cross-multiplies finite mantissas and compares integer bit lengths before any bit shift. An enormous power of two is never allocated unless an already supplied integer is at least that large. Binary floats, Boolean values, reversed intervals, and malformed objects are rejected.

For the stationary gap, a conservative exact turns radius is

\[
\tau_{\rm turns}=2^{-N-29},
\]

since `2pi<8`. This constant is recorded, but no new production-width stationary-cube performance is claimed.

## 10. Verification, cost, and limitations

Run, from this module directory:

```
python3 -B verify.py --output replay.json
```

To check the repository input hashes as well:

```
python3 -B verify.py --repository /path/to/NoFourMUBS --output replay.json
```

Python 3.10+ and the standard library suffice. The replay regenerates the determinant, its complementary square identity, coefficient/frequency bounds, detector polynomial, all rational constants, the six frame orbits, the R Lipschitz constant, and exact predicate controls. The retained receipt records the actual run. Runtime metadata use the clock only; **no floating-point quantity participates in an acceptance**.

The proof is not a hidden request to run a gigantic resultant or all sign charts. The published effective-minimum theorem gives the bound directly from the rigorously established integers `(n,d,s,H)`. No global cover, optimization run, or new campaign-cell certification was performed.

### What is not proved

* No practical cutoff such as `m=1/100`, `1/1000`, or even a conventional tiny machine-representable threshold is established.
* No production-width closure of `(1,2,2,4)` is established. Target C remains untouched.
* No all-class production-width seed cover is established; B1 is confinement, not that cover.
* No unconditional proof of strict-corner coverage is supplied.
* No new proof of no four MUBs is claimed. The existing computational campaign and its remaining practical confinement work are still needed.

The theorem is consistent with the supplied small-R obstruction: its m is much smaller than `1/500`, whereas that obstruction's displayed carrier has maximal R above `1/500`. The comparison is checked by exact arithmetic. No distance claim is made about that carrier by this theorem.

The principal quantitative loss is explicitly visible: the general effective-minimum exponent `26*76^26`. Thus this result removes the **logical absence of any explicit constant**, not the campaign's **need for a useful constant**. Merely subdividing to this m would require an unrealistic amount of precision and depth. The offered cluster budget should not be committed to such a direct use.

## 11. Provenance and additive installation

The ZIP contains only the new directory `ProvenResults/EffectiveConfinement/`. Existing repository source files are not replaced or patched. `SOURCE_SHA256.json` records the supplied archive hash and the hashes and roles of every cited repository input. The published external ingredient is bibliographically identified there and above; no publisher PDF is redistributed.

The finite arithmetic certificate, exact predicate, and receipts accompany this proof. The module is additive and does not register itself by modifying the root verifier, campaign driver, source databases, or original result files.
