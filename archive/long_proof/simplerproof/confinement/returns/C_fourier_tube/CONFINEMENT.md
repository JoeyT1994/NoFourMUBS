# Confinement: exact sector results, a uniform tube, and the remaining global gap

**Status: the unrestricted theorem is not proved.** The requested statement

\[
M(H)<26\quad\Longrightarrow\quad\nu(H)\le0.55
\tag{G}
\]

for every order-six Hadamard remains open in this output. No global
maximal-corner cover, classification of all low local minima, or proof of
no four MUBs is claimed.

The strongest proved confinement result here is a **uniform theorem in
the full Hadamard set within distance 0.042 of either complete affine
Fourier family**, including non-affine perturbations, both reconstruction
sheets, and parameter boundaries. The supporting full-family theorem is
global on its entire parameter torus and works at the larger threshold
M < 144. The proofs also give a sharper projector gauge, global chart
denominator bounds, exact moment identities, and a rigorous version of the
proposed minimum reduction.

All proof inequalities are analytic, exact rational/polynomial comparisons,
or outward-rounded Arb comparisons. Floating-point exploration is labeled
separately and is not used to accept any theorem.

## 1. Main theorem: a full neighborhood of both Fourier families

Let

\[
H(x,y)=F_6\circ\exp(i(xt_1+yt_2)),\qquad x,y\in\mathbb R,
\]

and let A be the union of these matrices, their transposes, and all their
Hadamard equivalents. Define the phase distance to this whole compact set by

\[
\delta_{\mathcal A}(H)=
\min\{\|V\|_F: V\text{ horizontal},\ K\in\mathcal A,
\ H\cong K\circ e^{iV}\}.
\]

The minimum is attained. The phase metric and its triangle inequality are
proved in `GEOMETRY_AND_GAUGE.md`; the definition does not assume that H
belongs to A or that an interpolating phase segment remains Hadamard.

**Theorem 1.** For every order-six complex Hadamard H,

\[
\boxed{M(H)<26,\qquad\delta_{\mathcal A}(H)\le\frac{21}{500}
\quad\Longrightarrow\quad\nu(H)<\frac{11}{20}.}
\tag{1}
\]

Assuming the supplied local lemma F4, the conclusion strengthens to

\[
\boxed{\nu(H)\le\frac{451}{1000}.}
\tag{2}
\]

This is a statement about all Hadamards in an exactly specified
neighborhood. It is not a numerical patch around a selected matrix.

### Proof of Theorem 1

For any unimodular 3-by-3 matrix B set

\[
d_B=2\operatorname{Im}q(B),\qquad
q(B)=\frac{\operatorname{perm}(B)\det(B)^2}{\prod_{ij}B_{ij}}.
\]

Two derivative estimates are established below and in
`fourier_sector/AMBIENT_GRADIENT.md`:

\[
\|\nabla d_B(K)\|_2^2\le1767\quad(K\in\mathcal A),
\qquad
\|\nabla^2d_B\|_{\rm op}\le144
\quad\text{at every ambient phase point}.
\tag{3}
\]

The first gradient is with respect to all nine independent entry phases,
not only the two Fourier parameters. Every restriction of a 36-entry
phase perturbation V to a corner has norm at most ||V||. Taylor's theorem
therefore gives, for all 400 corners simultaneously,

\[
|d_B(H)-d_B(K)|\le\sqrt{1767}\,\epsilon+72\epsilon^2,
\qquad\epsilon=\delta_{\mathcal A}(H).
\]

F2 is used only at the Hadamard endpoints, where

\[
\sqrt{M(H)}=\max_B|d_B(H)|.
\]

Thus

\[
\sqrt{M(K)}\le\sqrt{M(H)}+\sqrt{1767}\,\epsilon+72\epsilon^2.
\tag{4}
\]

The full-family theorem proved in Section 2 gives

\[
\nu(K)\le\sqrt{\frac23}\arcsin\frac{\sqrt{M(K)}}{12}
\quad\text{if }M(K)<144.
\]

For epsilon <= 21/500 and M(H)<26, (4) ensures M(K)<144. The phase
triangle inequality now yields

\[
\nu(H)<\epsilon+\sqrt{\frac23}\arcsin\left(
\frac{\sqrt{26}+\sqrt{1767}\,\epsilon+72\epsilon^2}{12}\right).
\tag{5}
\]

At epsilon=21/500 the right side lies between
0.5498261986601 and 0.5498261986603, with an outward-rounded interval
check. More importantly, its strict comparison with 11/20 has a separate
entirely rational proof in `verify_ambient_gradient.py`. It bounds the
square roots above by positive rationals and uses the alternating sine
series through degree seven. The positive rational margin is

\[
\frac{13278955123282452720908972031249061243}
{149536132812500000000000000000000000000000}>0.
\]

Monotonicity handles every smaller epsilon. This proves (1). F4 gives
(2), since its other alternative M >= 26.28 contradicts M<26. QED.

### Exact finite certificate behind the ambient estimate

The squared ambient gradient norms for all 400 corners of H(x,y) have
the following exact classification:

| Type | Number of corners | Uniform upper bound |
|---|---:|---:|
| Identically zero ambient gradient | 40 | 0 |
| Nine cosine polynomial types | 216 | 1728 |
| Twelve translations of one polynomial P | 144 | 1767 |

Writing p=cos((x+y)/2), q=cos((x-y)/2), the last polynomial has degrees
(4,6). Its full coefficients are printed in
`fourier_sector/AMBIENT_GRADIENT.md` and regenerated from the generic
nine-phase derivatives by the verifier. The bound P<=1767 on the entire
square [-1,1]^2 is certified by **88 rational Bernstein rectangles**, with
maximum binary subdivision depth 14. The largest terminal Bernstein
coefficient is 74112791499/41943040 < 1767. This covers the entire square,
including all its boundaries.

The Hessian bound is an exact frequency identity. The Laurent expansion
of q-conjugate(q) has 48 terms with coefficients +/-1, and its frequency
matrices satisfy

\[
\sum_\ell\ell\ell^T=144P_{\rm hor,3},
\]

where P_hor,3 is the orthogonal projector onto horizontal 3-by-3 phase
matrices. Cauchy–Schwarz gives the Hessian norm 144. This also gives the
useful universal bound, valid for arbitrary Hadamard endpoints,

\[
|\sqrt{M(H)}-\sqrt{M(K)}|
\le48\sqrt3\,d_{\rm ph}([H],[K]).
\tag{6}
\]

The generic frequency calculation is independently replayed in
`verification/verify_signed_bounds.py`.

## 2. Exact global theorem on the complete Fourier families

**Theorem 2.** For all real x,y, put

\[
A=2x-y,\qquad B=x+y,\qquad C=x-2y=A-B.
\]

Then

\[
\boxed{M(H(x,y))=
36\bigl(|\sin A|+|\sin B|+|\sin C|\bigr)^2.}
\tag{7}
\]

All 400 corner polynomials are accounted for: 256 are identically zero;
the other 144 are the four polynomials

\[
36(\sin A\pm\sin B\pm\sin C)^2,
\]

each occurring 36 times. These identities are verified directly from
the original R definition by integer Laurent arithmetic over the cubic
roots of unity; the sector identity does not depend on a numerical
evaluation of F2.

For every K in A, if M(K)<144, then

\[
\boxed{\nu(K)\le\sqrt{\frac23}\arcsin\frac{\sqrt{M(K)}}{12},}
\tag{8}
\]

\[
\boxed{d_F(K)\le
\sin\left(\frac16\arcsin\frac{\sqrt{M(K)}}{12}\right).}
\tag{9}
\]

In particular M<26 gives

\[
\nu<0.358337180<9/25,
\qquad d_F<0.073080064.
\tag{10}
\]

The displayed decimal upper bounds are outward-interval verified; the
proof of nu<9/25 is also a short rational sine comparison.

### Why the bound is global in the parameters

Choose integers m,n so that a=A-m pi and b=B-n pi both lie in
[-pi/2,pi/2]. The associated point

\[
x_0=(m+n)\pi/3,\qquad y_0=(2n-m)\pi/3
\]

is explicitly Fourier-equivalent, by column swaps and cyclic permutations
of the three odd rows. Thus every relevant periodic base point is handled,
not just the origin of a chosen phase chart.

Let S=|sin a|+|sin b|+|sin(a-b)|. If S<2, the three real points 0,a,b
span an interval of length t<pi/2. Their two consecutive gaps u,v satisfy

\[
S=\sin u+\sin v+\sin(u+v)\ge2\sin t,
\qquad
a^2-ab+b^2=u^2+uv+v^2\le t^2.
\]

The horizontally projected phase difference from (x_0,y_0) has squared
norm (2/3)(a^2-ab+b^2). Since S=sqrt(M)/6, this proves (8). Centering the
three residual phase values in each column gives (9); the transposed case
has an equally explicit row rephasing. Every step and the global wrapping
are given in `fourier_sector/CONFINEMENT_FOURIER.md`.

### All local minima in the two families

The same exact formula classifies all local minima in A, at every M.
On each closed phase triangle,

\[
S(u,v)=\sin u+\sin v+\sin(u+v),\quad
u,v\ge0,\quad u+v\le\pi.
\]

Its Hessian is negative definite in the interior. The unique interior
critical point u=v=pi/3 is a maximum. Each open edge is 2 sin(t), which
has no local minimum. Only the vertices, all explicitly Fourier-equivalent,
are minima. Therefore every non-Fourier point in these families admits an
arbitrarily small actual Hadamard perturbation that decreases M. Such a
point cannot be a local minimum on the full Hadamard set either.

This does not classify minima outside these families or outside the
neighborhood in Theorem 1.

## 3. Global determinant, permanent, and chart control

These conclusions hold for **every** order-six Hadamard, not just the
Fourier sector. For two same-row complementary blocks A,B, write
D=|det A|^2 and g=|det B|^2. Exact expansion gives

\[
\boxed{3|\operatorname{perm}A|^2=2D-g,
\qquad3|\operatorname{perm}B|^2=2g-D.}
\tag{11}
\]

Thus g/2<=D<=2g. Since eta=|perm B|^2<=g/2, the R definition implies

\[
\boxed{0<R(A)\le2g^3,
\qquad g\ge(R(A)/2)^{1/3}>0.}
\tag{12}
\]

The upper bound g<=27 follows from positive semidefiniteness and diagonal
entries 3. There is also a sharp universal bound |perm B|<=3, with equality
exactly when B itself is a 3-by-3 Hadamard. Its proof and equality cases
are in `mc1/GLOBAL_BLOCK_MOMENTS.md`.

For the side polynomials P_j of the supplied chart, with c_j=9-Z,9-Y,9-X
and z=(chi +/- i sqrt(R))/(2g), exact algebra gives

\[
\boxed{|P_j|^2=|g+c_jz|^2,
\qquad c_j\ge g/3,
\qquad |P_j|^2\ge R/36.}
\tag{13}
\]

In particular lambda_j simplifies to P_j/(g+c_j z), of modulus one. The
remaining side identities imply n>=g/27 and rho>=g/54. On R>=epsilon>0,
putting a_epsilon=(epsilon/2)^(1/3), one obtains explicit bounds:

| Chart quantity | Certified lower bound |
|---|---:|
| g | a_epsilon |
| c_j | a_epsilon/3 |
| \(|P_j|^2\) | epsilon/36 |
| n | a_epsilon/27 |
| rho | a_epsilon/54 |
| \(|\det M_s|^2\) for either side matrix | a_epsilon/27 |
| \(|\xi|\) | 1 |

The full proof, including every side identity, both sheets, and necessary
local branch handling, is in `descent/CHART_DENOMINATORS.md`.

These bounds make chart division well controlled once a positive lower
bound on the selected R is available. They do not provide such a bound
globally outside the Fourier neighborhood, nor do they remove the limit
R->0 from a future proof.

### 3.1. Complete classification of the exact Hadamard-corner stratum

**Theorem 3.** If any corner E satisfies EE*=3I, then H belongs, up to
equivalence, to A or to Tao's class. Equivalently, this hypothesis is that
some corner has |det E|^2=27, or |perm E|=3.

This resolves every physical completion of an exact order-three Fourier
corner. No positive-R or maximality condition is required.

The proof normalizes all four 3+3 blocks into

\[
H(L,M)=\begin{pmatrix}
F_3&LF_3\\
F_3M&-F_3MF_3^*LF_3/3
\end{pmatrix},
\]

where L,M are normalized diagonal unitaries. The remaining flatness
conditions are a 3-by-3 circulant kernel equation Cz=0, with
z_j=l_j conjugate(l_(j+1)). The three rank possibilities are exhausted:

- Rank two forces L to be a Fourier character and gives the affine family.
- Rank zero forces M to be a Fourier character and gives the transpose family.
- Rank one, after removing those two possibilities, forces both diagonal
  vectors to be one of six explicitly specified nongeometric cubic-phase
  vectors. All 36 ordered pairs are enumerated exactly. Eighteen are flat,
  and every one has an explicit verified monomial equivalence to Tao.

`mc1/HADAMARD_CORNER_CLASSIFICATION.md` gives the full continuous-to-finite
argument. `mc1/verify_hadamard_corner.py` regenerates all cases and checks
every Tao equivalence entry by entry. It also proves M(Tao)=243 in exact
Eisenstein arithmetic. Therefore on this entire intrinsically specified
stratum, M<144 implies the stronger Fourier bound (8), and M<26 gives
nu<0.358337180.

### 3.2. An explicit collar of the singular stratum

**Theorem 4.** For any order-six Hadamard H,

\[
\boxed{M(H)<26,\qquad
\max_E|\det E|^2\ge27-10^{-16}
\quad\Longrightarrow\quad\nu(H)<0.55.}
\]

With F4, nu<=0.451. The maximum here is over all 400 corners. Thus the
condition can be certified from one sufficiently large determinant,
without reconstructing all completions of its seed.

Here is the quantitative mechanism; the complete proof and exact scalar
checks are in `fourier_sector/ROBUST_HADAMARD_CORNER.md` and
`verify_robust_corner.py`.

Write epsilon=sqrt(delta), where |det E|^2>=27-delta. Three-phase stability
and the physical block equations place H, after explicit monomial
normalizations, within 27 epsilon in Frobenius norm of the block matrix
H(L,M) above. This intermediate matrix is exactly orthogonal but need not
have flat entries in its last block. Its flatness residual gives

\[
\|Cz\|\le\eta,\qquad\eta=120\epsilon.
\]

Writing the two nonconstant normalized Fourier coefficients of
z_j=l_j conjugate(l_(j+1)) as a_1,a_2, and the analogous coefficients of
the M diagonal as b_1,b_2, the circulant equation implies

\[
|a_1b_1|\le\eta,\qquad |a_2b_2|\le\eta.
\]

One coefficient in the first product is at most sqrt(eta). An explicit
stable version of the three-unit-phase zero-sum lemma rounds that
diagonal to either a Fourier character or a cubic chirp. The character
case is close to A. In the chirp case the other Fourier coefficient is
bounded away from zero; the second product then rounds the other
diagonal. The exact finite classification identifies the resulting flat
matrix as belonging to A or to Tao's class.

The resulting total Frobenius error is at most

\[
27\sqrt\delta+32\sqrt{120\sqrt\delta}
+64(120\sqrt\delta).
\]

For delta=10^-16 this is less than 0.03527707, hence less than 0.04.
The conversion from entrywise chord lengths to phases costs at most
101/100, so H is at phase distance below 0.0404 from A or from Tao.
The Tao alternative contradicts M<26 by (6) and M(Tao)=243. The A
alternative is inside the 0.042 tube of Theorem 1. This proves the collar.

The explicit collar is narrow. Its role is a rigorously specified
terminal condition at a singular stratum; it is not a claim to cover the
rest of the low-R maximal-corner domain.

The same conclusion follows if some corner obeys
|perm E|^2 >= 9-10^-16/13. The quantitative permanent near-equality
inequality 27-|det E|^2 <= 13(9-|perm E|^2) supplies that conversion;
the simpler sufficient permanent threshold 9-10^-18 also works.

## 4. Exact global moment reductions

For every row triple S, Cauchy–Binet and (11) give the permanent sum rule

\[
\boxed{\sum_{|T|=3}|\operatorname{perm}H[S,T]|^2=72.}
\tag{14}
\]

For distinct rows a,b,c define

\[
K_a=\sum_j\frac{H_{aj}^2}{H_{bj}H_{cj}},
\]

and define K_b,K_c cyclically. Exact Laurent expansion followed by the
three row orthogonalities gives

\[
\boxed{\sum_{|T|=3}q(H[\{a,b,c\},T])=432+K_aK_bK_c.}
\tag{15}
\]

Consequently

\[
M(H)\ge\frac{(\operatorname{Im}(K_aK_bK_c))^2}{100}.
\]

The exact row-triple sum of squared signed invariants is reduced to a
66-term moment polynomial in `mc1/row_energy_moments.json`; its complete
coefficient table is regenerated by `verify_global_moments.py`. The same
report supplies exact full-matrix second and third moment identities.

These reductions retain all the specified flatness and orthogonality
conditions. Their mixed-sign energy terms have not been turned into a
global lower bound in terms of nu. They are algebraic reductions for the
quantitative MC1 route, not a claimed solution of that route.

## 5. The minimum reduction is valid, with a compact proof

The phase metric shows that nu is continuous and its defining infimum is
attained. Assuming F4, the compact set {nu>=11/20} has M>=26.28 on its
boundary {nu=11/20}. If it contained any point with M<26, a minimizer of M
on that compact set would lie strictly inside {nu>11/20}. That minimizer
would be a local minimum on the full Hadamard set.

This proves the exact equivalence proposed in the handoff, without relying
on smoothness or on topological assertions about connected components.
The complete argument is in `GEOMETRY_AND_GAUGE.md`.

On a verified differentiable physical chart, strict descent is equivalent
to the origin lying outside the convex hull of the active corner gradients.
A local minimum therefore requires a convex combination of at most five
active gradients to vanish in four coordinates. This is a necessary
condition, not its exclusion. `descent/NONSMOOTH_DESCENT.md` gives the
criterion and determinant-safe analytic derivative formulas.

An exact caution is material here: there is a strict seed with

\[
R=\frac{625-275\sqrt5}{2}\in(0,26),\qquad\nabla R=0
\]

in all four seed directions. Its completed maximum is numerically much
larger than 26; it is not a counterexample to (G). The example proves that
one cannot discard the requirement that the selected corner be maximal.

## 6. The projector cutoff 0.0914 is valid after refining F3

The supplied F3 formula gives rho(0.09138)>0.55; its rounded decimal
implication is not used here. A sharper columnwise estimate proves

\[
\boxed{d_F(H)\le0.0914\quad\Longrightarrow\quad\nu(H)<0.55.}
\tag{16}
\]

The improvement uses the imaginary-part cancellation after aligning each
column overlap. If x is one entry's squared chordal error and kappa is
the column's total chordal error bound, then

\[
x(1-x/4)\le5(\kappa-x).
\]

It follows that x<=12-sqrt(144-20 kappa), which improves the entrywise
arcsine factor in the original gauge estimate. The theorem, full proof,
and exact rational certificate are in `GEOMETRY_AND_GAUGE.md`.

## 7. Precise remaining obligation

Theorem 1 proves the conditional implication with the extra hypothesis
delta_A<=21/500. It does **not** prove

\[
M(H)<26\quad\Longrightarrow\quad\delta_{\mathcal A}(H)\le21/500.
\]

That latter statement need not be the correct next theorem: low-M
Hadamards already within the target Fourier ball could be farther from
the two affine slices. What must still be excluded is the set

\[
\boxed{\{H:\ M(H)<26,\ \nu(H)>11/20,
\ \delta_{\mathcal A}(H)>21/500,\quad
\max_E|\det E|^2<27-10^{-16}\}.}
\tag{17}
\]

Equivalently, after the compact reduction, it is enough to exclude local
minima of M in this set. The present work provides neither a global
inequality doing so nor a complete exact/interval cover of that set.
The denominator estimates and moment identities do not silently fill
that gap. In particular, all R->0 limits outside the proved neighborhood
remain an explicit part of the unfinished global task.

## 8. Inputs, scripts, and evidence

`INPUTS.md` lists every supplied fact used and records original hashes.
F2 is used in the full-neighborhood proof; F4 is used for the minimum
reduction and the improved final radius 0.451. The full-family R identities
are independently verified directly from the definition. No local tangent
ansatz, assumed completion or symmetry of a general Hadamard, or numerical
sample decides a proof inequality.

Run from this output directory:

```sh
python3 VERIFY_ALL.py
```

The Fourier and moment certificates use only the Python standard library.
The chart polynomial replay uses SymPy, and the decimal interval audit
uses python-flint. `requirements.txt` records these dependencies.
`VERIFICATION_LOG.txt` records the completed replay.

The archived floating-point searches have separate status and replay
files. They are useful for proposing candidates only. See `STATUS.md`
for the distinction between fully proved results, finite certificate
work, numerical evidence, and the unproved global assertion.
