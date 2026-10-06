# A centiradian uniform exclusion ball at the stationary F3 seeds

## Status and precise theorem

The claimed radius is the exact rational **r = 1/100 radian**. Successful completion of the
finite arithmetic obligations is recorded in `results/FINAL_VERIFICATION.json`.
Only a receipt with status `PASS_UNIFORM_BALL` proves that the accompanying
complete cover has been freshly replayed. A component-only receipt is not a
uniform-ball certificate. `verify.py` refuses whole-box acceptance until the
complete replay has succeeded.

**Theorem. The complete finite replay in Section 8 has passed; the retained receipt has status PASS_UNIFORM_BALL.**
For either seed

$$
\theta_*=(2,4,4,2)\pi/3\quad\hbox{or}\quad(4,2,2,4)\pi/3,
$$

no physical order-six complex Hadamard has a corner E(theta) satisfying

$$
0<R(E(\theta))=\max_{400\text{ positional corners }c}R(H_c)
$$

when

$$
0<\|\theta-\theta_*\|_{\infty,\mathrm{circ}}\le\frac1{100}.
$$

Physical means raw unit-modulus entries and HH*=6I. Maximality ties are allowed.
The outer boundary and every coupled radial/angular approach are included.
At the center itself R=0, so strictness is separately impossible.

This argument is not an extrapolation from the earlier 4,174 residual leaves.
It does not use the old effective-minimum cutoff, the radius-2^-148 rounding
argument, MC1, an all-critical classification theorem, MC2--MC4, the inherited
entry-defect-to-seed lemma, or a matrix/projector exclusion tube. The only
retained invariant convention is the complementary-corner square identity;
its finite Laurent identity is independently regenerated. The computation uses
an elementary nonsingular completion model and direct necessary inequalities
for physical maximal corners.

The model and an older phase cover were obtained from the separate
`MilliradianComplete` artifact. Its claimed larger-radius predecessor was not
accepted: that predecessor's status explicitly said NOT_CERTIFIED. No older
accepting receipt is substituted for this package's new whole-cover replay.

### Pinned inputs and provenance

| File or data | Role and verification boundary |
|---|---|
| `inputs/CornerBounds_PROOF.md`, Section 2 | Complementary-corner square convention. The finite identity and its normalization are regenerated here. |
| `inputs/physical_algebra.py::corner_algebra` | Exact Laurent generator for the signed determinant and R; the independent controls also use its physical family and 400-corner census. |
| `data/preconditioners.json` and `data/preconditioners.txt` | Arbitrary fixed exact dyadic matrices and residual selections. Their native encoding is checked; numerical inverse accuracy is not assumed. |
| `data/phase_cover.jsonl.gz` | Exact closed subdivision geometry, independently checked and freshly evaluated. Discovery labels are not accepting evidence. |

`INPUTS.json` pins the copied inputs and records both the original user archive
and the recovered parallel milliradian package. The present construction
extends that package's nonsingular completion model, not an unsupported
radius-1/100 claim. Its radius-1/1000 theorem is not an assumed inner region:
the new verifier proves the entire radius-1/100 ball afresh. The classification
and confinement dependencies of the older radius-2^-148 proof are not used.

## 1. Invariant and a sharp uniform bound in seed coordinates

Write

$$
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},\qquad
s=-1-a-b,\ t=-1-c-d,\ v=-1-c/a-d/b,
$$

$$
X=|s|^2,\ Y=|t|^2,\ Z=|v|^2,\quad p=X+Y+Z,
\quad J=2\operatorname{Re}(sv\bar t),\quad W=XY+XZ+YZ-XYZ.
$$

The radicand is R=4g² eta-chi², with

$$
g=27-3p+J,\quad\eta=9-p+J,\quad
\chi=W-(p-9)(p-18)+(p-15)J.
$$

Put theta=theta_*+u and rho=||u||infinity. At either seed, the quadratic
Gram forms obey

$$
X_2=u_1^2-u_1u_2+u_2^2,\qquad
Y_2=u_3^2-u_3u_4+u_4^2,
$$

$$
Z_2=(u_3-u_1)^2-(u_3-u_1)(u_4-u_2)+(u_4-u_2)^2.
$$

Thus p2<=18rho². The integral exponential remainder gives errors at most
rho², rho², and 4rho² for the three linear Gram parameters. Using sqrt(3)<7/4,

$$
|X-X_2|+|Y-Y_2|+|Z-Z_2|\le35\rho^3+18\rho^4.
$$

For rho<=1/100 this implies

$$
p\le19\rho^2,\qquad |J|\le22\rho^3,\qquad 0\le W\le121\rho^4.
$$

For J, one may use
2(7/4+rho)²(7/2+4rho)<22. Nonnegativity of W follows from Z<1.
Let L=81[4(XY+XZ+YZ)-p²]. Its partial derivatives have absolute values at
most 162p on the nonnegative Gram octant. Consequently

$$
L\le243(u_1u_4-u_2u_3)^2+107730\rho^5+55404\rho^6.
$$

The exact expanded radicand is

$$
\begin{aligned}
R={}&4J^3+J^2(-p^2+2p+27)\\
&+J(2p^3-24p^2-2pW+54p+30W)\\
&-p^4+18p^3+2p^2W-81p^2-54pW-W^2+324W.
\end{aligned}
$$

Extracting L, dropping only nonpositive terms, and applying the preceding
bounds proves the direction-uniform majorant

$$
R\le972\rho^4+130302\rho^5+191934\rho^6+
270468\rho^7+105754\rho^8+445544\rho^9. \tag{1}
$$

At rho=1/100, its coefficient after dividing by rho^4 is exactly

$$
\frac{1434053106309}{625000000}=2294.4849700944<2304=48^2.
$$

All coefficients of the majorant are nonnegative. Hence, at any hypothetical
strict maximal corner in the target ball,

$$
\boxed{q=\sqrt{R(E)}=\sqrt{M(H)}\le48\rho^2.} \tag{2}
$$

The exact generator independently verifies the radicand expansion and the
quartic identity. Nothing in (1)--(2) divides by kappa=u1*u4-u2*u3, R, or a
reconstruction denominator. The cone kappa=0 needs no exceptional chart here.

The accepting native widths are the exact dyadic numbers represented by
`RHO=0x1.47ae147ae147cp-7` and `DELTA=0x1.999999999999bp-6`.
They strictly exceed 1/100 and 1/40, respectively. All seed enclosures are enlarged,
never narrowed. The source bound in native predicates is an outward upper bound
QMAX for 48 RHO². The theorem itself asserts the rational radius 1/100.

## 2. An elementary nonsingular completion model

Place the proposed corner in the upper-left block and fully dephase H:

$$H=\begin{pmatrix}E&B\\C&T\end{pmatrix}.$$

The first row and first column are one. For a row of three unit phases whose
sum is S and whose first entry is z, divide by z and put

$$a_0=S\bar z-1,\qquad k=\sqrt{|a_0|^{-2}-1/4}.$$

Its remaining two normalized entries are necessarily, in one order,

$$a_0(1/2-ik),\qquad a_0(1/2+ik). \tag{3}$$

This follows by solving the sum and the two unit-modulus equations; it is an
exhaustive two-point formula, not an assumption about a global side fiber.
In our domain |S|<=2rho, so 1-2rho<=|a0|<=1+2rho. In particular |a0|>97/100
and k>4/5 throughout the enlarged native seed box. The square root and inverse
are nonsingular.

The two nontrivial rows of B must use opposite orders in (3). One elementary
estimate is that |1+p+q|<=delta<=1/8 for unit p,q places them within 3delta and
4delta of omega and omega² in one order. If both B rows used the same order,
their inner product would have modulus at least 3-32rho, while physicality
requires at most 4rho. The inequality 3-32rho>4rho holds throughout our domain.
Permuting the last two B columns fixes a common choice of order; the analogous
operation is available for C rows.

Let K(E;z,w) be the matrix with first row/column one and the two remaining rows
supplied by (3) in opposite orders. Let L=K(E^T;x,y). Then every hypothetical
physical completion is represented by unit anchor phases z,w,x,y and

$$
B=Z_0K,\qquad C=L^T W_0,\qquad
T=-CE^* Z_0(K^*)^{-1}, \tag{4}
$$

where Z0=diag(1,z,w), W0=diag(1,x,y). The last identity is exact row
orthogonality against the upper block.

The derivative bound |dk/d|a0||<3/2 and (3) give entry error <8rho relative to
the appropriate F3 rows. There are only four differing entries in K, so
||K-F3||op<=16rho. Consequently

$$\sigma_{\min}(K)\ge\sqrt3-16\rho>1.$$

Thus (4) is a nonsingular model on the entire seed cube and every unit anchor
phase. It makes no use of a positive lower bound on R or Delta. It is a model
for necessary constraints: auxiliary matrices need not be flat in their lower
block, and are not assumed physical.

An anchor in each side can be selected with nonnegative real part. Indeed, a
triple within 8rho of a rotated cube-root triple has a member with real part
at least 1/2-8rho>0. Therefore it suffices globally to cover

$$
\arg z,\arg x\in[-\pi/2,\pi/2],\qquad
\arg w,\arg y\in\mathbb R/(2\pi\mathbb Z). \tag{5}
$$

These are auxiliary completion angles. No seed radius is identified with a
matrix or projector radius, and no such tube theorem is invoked.

## 3. Necessary residual inequalities

The model supplies 94 real residuals: nine lower-block flatness defects;
four real components of the two remaining row/column orthogonality conditions;
and 81 signed corner invariants from two upper and one lower row, and two left
and one right column.

At a physical completion, residuals 0--12 vanish. At a maximal corner,
residuals 13--93 have absolute value at most q. To see the latter, the pinned
complementary-square identity gives, on every physical H,

$$M(H)=\max_c f_c(H)^2.$$

The signed polynomial has 48 Laurent words. A negative raw-entry power is
replaced by a conjugate power, giving a polynomial extension on nonflat model
matrices. It agrees with the signed invariant whenever H is physical.
The independently regenerated Laurent identity binds this normalization.

### A faster identical polynomial, not an extra approximation

After normalizing a mixed corner to free entries a,b,c,d, the first three of
these entries are identically unit phases in the model; d may be nonflat.
The polynomial extension has an equivalent expression of degree two in d and
its conjugate, generated from its six determinant coefficients. The exact
coefficient identity is independently checked. The native engine uses this
expression for both values and derivatives. This is valid because the two
composed functions agree for every real model input. Consequently their
Taylor coefficients also agree; flatness is not being imposed on independent
interval endpoints.

### Elementary three-phase estimate

For unit phases p,q with |1+p+q|<=epsilon<=1/8,
||1+p|-1|<=epsilon gives |Re(p)+1/2|<=3epsilon/2 and
Re(p) in [-3/4,-1/4]. Choose the Fourier root with the sign of Im(p).
Writing a=Re(p), b=|Im(p)|, b0=sqrt(3)/2 gives
|b-b0|=|a+1/2||a-1/2|/(b+b0)<=|a+1/2|, because
|a-1/2|<=5/4<b+b0. Hence the first phase is within 3epsilon of
its root; the sum relation puts the second within 4epsilon of the
opposite root. Taking epsilon=2rho proves the side estimates above.

## 4. Radially factored Taylor arithmetic

For m=2 (global tests) or m=4 (local contractions), represent a real function as

$$f(\xi)=P(\xi)+e(\xi),\quad
|e(\xi)|\le\tau h^{m+1},\quad
h=\max_j|\xi_j|\le1,$$

where P has total degree at most m in eight common variables and every
coefficient is outward enclosed. The scalar tail tau is nonnegative and rounded
outward. There are 45 or 495 monomials.

Addition adds coefficients and tails. Multiplication retains all products
through degree m. The absolute coefficient sums of the discarded degrees,
plus products involving either tail, bound a new tail, because each discarded
monomial has absolute value at most h^(m+1). Degree-grouped coefficient norms
suffice; no high-degree term is ignored.

For an exponential input e^(i(c+w xi)), coefficients are enclosed explicitly
and each real/imaginary tail is bounded by |w|^(m+1)/(m+1)!. This follows from
the integral Taylor remainder for the complex exponential.

For inversion, let c=f(0), with its certified nonzero enclosure, and write
f=c(1+x). The exact function x has zero constant term. Its polynomial-plus-tail
norm gives |x|<=alpha h with alpha<1. The finite geometric series through m
has remaining tail at most

$$\frac{\alpha^{m+1}}{(1-\alpha)\inf|c|}.$$

Setting the constant coefficient of x to zero is exact cancellation of the
same f(0), not an independence assumption about interval endpoints.

For a positive square root use the binomial series of sqrt(1+x). The absolute
binomial coefficients decrease beyond the first one, so the remaining tail is
bounded by

$$
\sup\sqrt c\,\left|\binom{1/2}{m+1}\right|
\frac{\alpha^{m+1}}{1-\alpha}.
$$

Cases without the required denominator or alpha bounds are nonaccepting.
The finite series themselves are multiplied with the same radial rules, so
all intermediate truncation errors are retained.

A global range of a model is its coefficientwise polynomial range, plus/minus
tau: even monomials range over [0,1], other nonconstant monomials over [-1,1].
Local contractions instead retain the factor h. This distinction is what
allows the proof to reach the seed without a finite sequence of shrinking shells.

Interval operations widen elementary IEEE-754 binary64 results to neighboring
representable values. Exact zero and unit shortcuts are algebraic identities;
they avoid unnecessary subnormal widening and do not narrow nonexact inputs.
The compiler disables fast-math and contraction and additionally uses
`-fno-tree-vrp`. Runtime guards require binary64, round-to-nearest, and gradual
underflow. Native endpoint values are reconstructed as exact dyadic rationals
for the independent arithmetic controls. There is no tolerance-based acceptance.

## 5. Uniform contraction near the 63 exact references

In integer units of pi/3, put

$$
C_3=\{(0,0),(2,4),(4,2)\},
$$

$$B_6=\{(a,b)\in(\mathbb Z/6)^2:
 b=2a\text{ or }a=2b\text{ or }a+b=0\}.$$

The reference set is (C3 x B6) union (B6 x C3), with 63 distinct elements.
At u=0 they give exact sixth-root physical matrices. An independent integer
Eisenstein computation checks all 36 Gram entries and all 400 signed corner
values at each reference. All signed values are zero. In particular every
residual used in the local proof vanishes exactly at its reference center.

For each selected reference, let F be eight of the residuals and let P be the
fixed dyadic 8-by-8 matrix in the retained data. P need not be trusted as an
inverse. Its only role is multiplication in the certified inequalities below.

Write v=W xi, where the first four diagonal entries of W are RHO and the last
four are DELTA. Define

$$G_i(\xi)=\xi_i-\frac{(PF(W\xi))_i}{W_{ii}}.$$

The actual constant term is zero, proved exactly above. From the order-four
Taylor model compute the sum of the absolute linear defect coefficients,
the absolute higher-degree coefficients, and the tail divided by Wii; call
its outward upper bound e_i. Then |G_i(xi)|<=e_i h uniformly, including h=0.

Let C_i be the sum of |P_ik| over selected signed residuals (indices at least
13). Physicality and (2) give

$$
\frac{|(PF(W\xi))_i|}{W_{ii}}
\le\frac{48\,\mathrm{RHO}^2 C_i}{W_{ii}}h^2
\le b_i h.
$$

The finite local accepting test is

$$\boxed{e_i+b_i<1\quad\text{for every row }i.} \tag{6}$$

It implies h<=max_i(e_i+b_i)h, hence h=0. Therefore no nonzero seed perturbation
has a physical maximal completion anywhere in that entire reference box.
No minimum radial distance is required.

### Symmetry makes 13 contractions sufficient

Three physical symmetries preserve the seed cube and send completion roots as

$$
(a,b,c,d)\mapsto(c,d,a,b),\quad
(-b,-a,-c,-d),\quad(-a,-b,-d,-c)\pmod6.
$$

They are transpose, S times complex conjugation, and complex conjugation times
S, where S interchanges indices 1 and 2 inside both three-row/column blocks.
Their seed perturbations are corresponding signed permutations. Completion
perturbations are also signed permutations, so common widths are preserved.

These maps partition the 63 references into 13 orbits. The selected successful
representatives are listed in `data/local_representatives.json`; the verifier
checks exact orbit equality and replays all eight rows for each one. There are
104 certified row inequalities. An unselected reference is covered by its exact
symmetry image; no failing contraction is silently declared successful.

## 6. The global completion-phase cover

Cover (5) with 324 closed initial cells of halfwidth pi/6. The first and third
coordinates have centers -pi/3, 0, pi/3; the others have six root centers.
The same three symmetries reduce these cells to 102 representative roots.
The exact orbit enumeration proves coverage of all 324 cells, including faces.

Each binary path subdivides the coordinate at depth modulo four. Children are
closed halves. Midpoint offsets and radii are rational multiples of pi/6.
The native pi interval is checked against independent exact Machin bounds.

For each representative root, the verifier requires distinct prefix-free
terminal paths and the exact integer Kraft equality

$$\sum_{p\text{ terminal}}2^{-|p|}=1.$$

This proves the whole closed initial cell is covered. Source root-set equality
is checked: accepting a selected subset is not sufficient.

Every terminal uses one of the following outward tests, valid throughout the
entire seed cube as well as that phase cell:

* A certified containment in a local reference box from Section 5.
* A side-factor inequality. At the exact F3 corner the signed determinant with
  a column (1,z,w) factors as 3(z²-w)(z-w²)(zw-1)/(z²w²). Its discrepancy for the
  actual selected corner is at most 64 RHO. Therefore a lower bound exceeding
  QMAX+64 RHO excludes the cell. The transpose gives the second side test.
* A physical residual enclosure missing zero, or a signed residual enclosure
  disjoint from [-QMAX,QMAX].
* A common-variable preconditioned residual enclosure. Choose any finite dyadic
  8-by-8 P and any eight residual indices. Form their linear combination as a
  degree-two Taylor model before ranging it. If one resulting interval misses
  [-C_i QMAX,C_i QMAX], physicality is impossible.

Row selection and inverse proposals in the last test are noncertifying numerical
choices. Every resulting coefficient of P is a fixed exact binary64 dyadic;
all accepting calculations with it are outward. Any choice is valid provided
the final separation is certified. Failure to select rows, inversion failure,
resource exhaustion, or an enclosure touching a threshold is nonacceptance.

The side-factor bound can be checked directly from its six coefficient formulas:
(12+24sqrt(3))rho+112rho²<64rho on the present domain. These are much sharper
than treating 48 raw words independently. The finite coefficient identity,
including conjugation on a possibly nonflat lower entry, is regenerated.

The phase list may contain terminal cells obtained by different searches. The
final proof does not trust their stored accepting labels. It recomputes every
terminal with one freshly compiled accepting engine, checks equality of the
input/output cell sets, and counts zero unresolved records.

## 7. Logical conclusion and the conjugate seed

Suppose a physical strict maximal corner existed in the target seed ball.
Permuting only the other rows/columns and applying the elementary side ordering
puts it in (4), with completion angles in (5). One of the initial phase cells
contains those angles. Apply its exact physical symmetry to a representative
cell; the seed radius and maximality are preserved. Its complete closed binary
cover places the point in a terminal cell.

If that terminal is excluded by a residual test, its necessary physical or
maximality inequality is contradicted. If it is in a local box, (6) forces the
seed perturbation to vanish, contradicting strict R>0. Every possible physical
completion is thus excluded, The prescribed finite replay has passed.

Complex conjugation sends theta+ to theta-, reverses perturbations, and preserves
physicality, every R value, maximality, and circular sup distance. It proves the
same uniform radius at the conjugate seed. No second unverified coverage claim
is needed. The seed algebra and box membership checks also treat both labels.

## 8. Verification, controls, and trust boundary

Run from this directory:

```bash
sha256sum -c MANIFEST.sha256
python -B verify.py --output work/replay.json --workers 4
```

The default invocation checks the manifest, regenerates exact invariant/model
identities, checks the finite symmetries and rational constants, compiles all
accepting binaries afresh, verifies interval/Taylor arithmetic controls, replays
all 13 local contractions, validates the exact complete phase cover, and freshly
recomputes every terminal. Failure of any part returns nonzero and writes a
NOT_CERTIFIED error receipt. A successful receipt records PASS_UNIFORM_BALL,
all counts, source hashes, and actual compilation/replay wall and CPU metadata.

Exact arithmetic controls check interval operations at rational dyadic endpoints,
trigonometric enclosures against rational Taylor bounds, all low-degree
multiplication indices, exact formal coefficients for polynomial/inverse/square
root test models, and radially scaled remainder tests. The grid tests are
regression controls, not the analytic justification for the remainder rules.

The six supplied physical strict-D0 controls are independently reconstructed
with their complete corner census. Each has a zero seed coordinate whose circular
distance from either corresponding stationary coordinate is 2pi/3>1; hence all
lie outside the new balls. Their exact enclosing boxes are nonaccepting.

The finite numerical proof trusts the stated IEEE-754/compiler execution model
and the elementary analytic remainder arguments in this document. It is not a
Lean formalization. It does not silently adopt an unverified global classification
or a previously claimed centiradian certificate.

## 9. Whole-box interface

```bash
python -B verify.py --boxes LIST.jsonl.gz --output work/results.jsonl.gz --workers 4
```

Every invocation first performs the whole uniform proof. It then certifies exact
whole-box membership in one of the two punctured circular balls. Inputs use four
exact rational-string centers/radii in absolute radians, or the explicitly
labeled `seed_radius_units` format, whose scale in this package is exactly 1/100.

Binary floating inputs, negative radii, unresolved membership, outside boxes,
and seed-touching boxes are nonaccepting. The outer ball boundary is included.
The center is rejected by the puncture interface, although R=0 handles it
mathematically. Any nonaccepting record causes a nonzero exit status. Input and
pinned package files are protected against output overwrite.

`--algebra-and-local-only` deliberately reports COMPONENTS_ONLY and cannot be
combined with `--boxes`. Its success must never be represented as proof of the
global phase cover. The verified result is determined only by the complete
receipt, not by filenames, sample boxes, or optimistic search progress.

The final clean-extraction replay checks the final manifest. Output-protection
and documentation amendments between the first replay and the final manifest
do not change any native accepting expression.
