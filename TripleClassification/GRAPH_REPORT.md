<!-- The collaborator's report of 29 October 2026 (TC_hardballs_RESULT), verbatim. Its code is code/hardball/; its detailed proofs are graph_proofs/. -->

# Certified whole-cell exclusion for the supplied TC hard-ball snapshots

## 1. Result and exact scope

**PROVED — all 42 supplied pattern snapshots are excluded, uniformly over each snapshot's entire original H cell and original source column phase balls.** All 42 fixed-proposal replays succeeded against the code shipped in this package.

The method combines a two-dimensional exhaustive cover of each selected
column region, support inequalities retaining the common four-dimensional H
parameter, adaptive capture regions, and a finite incompatibility graph.
Every successful result retains the original `r`, `tau`, and source column
radii. There is no freezing of H, sampling-based acceptance, or assumption
that the centre root count stays constant.

The implementation and fresh receipts are supplied. Numerical searches only
propose constants and capture centres; every inequality used to discard a
possible zero or forbid an orthogonal pair is evaluated with Arb. The finite
choice argument uses exhaustive discrete logic. The detailed per-snapshot
table is in `RESULTS.md`; `manifest.json` records exact replay settings.

**NOT ESTABLISHED — closure of the 19 seed balls or classification of all
triples.** The attachment contains 42 single-pattern snapshots and 20
whole-ball models, one of which is the already-closed b666. It does not contain
the complete remaining cell/pattern manifest. A successful snapshot receipt
cannot stand in for that missing exhaustive accounting. Moreover, this
checker excludes phantom patterns; it does not certify the known-type labels
of surviving genuine triples.

Three upstream premises remain explicit:

1. The supplied normal-form enclosure contains every physical H assigned to
   its claimed ball or cell.
2. The supplied closed column phase balls contain every column assigned to
   the pattern, in the stated phase lift and mean-zero gauge.
3. To infer whole-ball closure, the upstream covering tree and pattern
   manifest must account for every remaining case.

The new code consumes the first two premises and proves the pattern
exclusions. It does not reconstruct the atlas, normal-form theorem, or
production manifest from the numerical data.

## 2. The precise column problem

Use the supplied model, with every coefficient retained as an interval:

\[
Q=Q_0+Uw+\tfrac12H_2(w\otimes w)+X\xi,
\qquad \|w\|_2\le r,\quad \|\xi\|_2\le\tau.
\]

Let E be the exact 6-by-5 Helmert frame, so that
\(E^TE=I\) and \(E^T\mathbf1=0\). A column in one source region has
phases \(v=v_0+Ex\), with \(\|x\|_2\le R\). Its six necessary
unbiasedness residuals are

\[
F_j(x,Q)=\frac13\sum_{a<b}
 \cos(v_a-v_b-Q_{aj}+Q_{bj}),\qquad j=0,\ldots,5.
\]

Indeed,

\[
F_j=\frac{\left|\sum_a e^{i(v_a-Q_{aj})}\right|^2-6}{6}.
\]

Thus every column unbiased to H satisfies all six equations. On physical
Hadamard matrices one equation is redundant, but the exclusion algorithm
does not need that redundancy. It uses necessary projections of all six
equations and remains valid on the larger, potentially nonphysical enclosing
model. Including such points can make an exclusion harder, but cannot make
an accepted exclusion false for a physical H inside the model.

## 3. The change that makes the exhaustive calculation practical

The centre candidates serve as proposed terminal capture regions, rather
than a supposedly complete list of moving roots. A cover is allowed to stop
as soon as every possible zero in a box lies in one of those regions. There
is no need to subdivide a moving root into thousands of tiny isolating boxes
when a much wider cap is already incompatible with the other columns.

Two further changes reduce the work. Three well-conditioned column
directions are eliminated by a uniform derivative inequality, leaving only
two coordinates to subdivide. In residual tests, all 36 H phases retain the
same four-dimensional w before norms are taken. This removes possible zeros
that can survive independent phase intervals but would require mutually
inconsistent parameter displacements.

The adaptive driver is allowed to add a cap centred on an unresolved
necessary enclosure. Such a centre need not be a root, at the centre H or at
any H. After any addition the graph is checked again. If the cap radius is
reduced, the required column covers are recomputed. Every final receipt in
this package was replayed with its fixed final proposals.

## 4. PROVED: reduction from five column coordinates to two

Let O be an exact orthogonal 5-by-5 matrix, obtained by an Arb enclosure of
Gram–Schmidt applied to a numerical proposal. Write

\[
x=O(t,y),\qquad t\in\mathbb R^2,\quad y\in\mathbb R^3,
\qquad V=O_{[:,2:]}.
\]

Let L be any fixed real 3-by-6 matrix. Its role is to make the three strong
directions close to an identity map. No floating-point inverse or rank
assertion is trusted.

For a weak rectangle T, choose any reference \(y_0\), and suppose an
interval calculation proves

\[
\|I_3-LD_xF_H(O(t,y))V\|_2\le q<1
\]

on a region containing the segment from every possible source root
\((t,y)\) to \((t,y_0)\), for every allowed H. Let

\[
a\ge\sup_{t\in T,H}\|LF_H(O(t,y_0))\|_2.
\]

Then every possible full zero in the source region with \(t\in T\)
satisfies

\[
\boxed{\quad\|y-y_0\|_2\le\rho:=\frac{a}{1-q}.\quad}
\]

**Proof.** Integrating the strong-coordinate Jacobian along the segment
gives a matrix \(\overline J\) with
\(\|I-\overline J\|_2\le q\). Since the root has zero residual,
\(\overline J(y-y_0)=-LF_H(O(t,y_0))\). The inequality
\(\|\overline Jz\|_2\ge(1-q)\|z\|_2\) proves the claim.
This is a necessary enclosure of every zero, not an assertion that a zero
exists or is unique.

The initial segment domain can be bounded globally by

\[
R_* = \max\left(R,
 \sqrt{\sup_{t\in T}\|t\|_2^2+\|y_0\|_2^2}\right).
\]

A sharper slab bound uses exact orthogonality:

\[
Y_0=\max\left(
 \sqrt{R^2-\inf_{t\in T}\|t\|_2^2},\ \|y_0\|_2\right).
\]

Every relevant segment is contained in \(t\in T,\ \|y\|\le Y_0\).
Boxes whose weak projection already misses the source ball are discarded
before this step.

The derivative implementation expands the grouped trigonometric Jacobian
through degree two and bounds the cubic remainder. Its global bound has
the form \(q(s)=a_0+a_1s+a_2s^2+a_3s^3\), with nonnegative certified
coefficients. The slab version keeps the weak rectangle inside the
trigonometric coefficient intervals and expands only in the three strong
coordinates. Matrix operator norms are bounded by outward Gram-matrix or
Frobenius bounds. See `proofs/FIBER_AUDIT.md` for the factors and remainder
derivation.

### A second necessary enclosure can tighten the derivative bound

After any valid initial bound \(\|y-y_0\|\le\rho_0\), every possible
root and its segment to the reference also satisfy
\(\|y\|\le\|y_0\|+\rho_0\). Recomputing the derivative bound on this
newly certified containing region gives \(q_1\). If \(q_1<q_0\), then
\(\rho_1=a/(1-q_1)\) is another valid necessary enclosure. Iteration is
inductive: each region used for refinement has already been proved to contain every
possible source root before it is used.

The optional `bootstrap` engine implements at most three refinements per
eligible node. The original source radius remains unchanged for initial
coverage and every radial test. The auxiliary radius is used only in the
strong-direction derivative estimate. In particular, a strong-coordinate
radius must not have the weak squared radius subtracted from it again.

`code/fiber_bootstrap.py` is isolated from the default engine. Its actual
refinement helper was independently checked on 40 exact roots, including
all intermediate bounds and an assertion that the source radius was not
mutated. See `proofs/FIBER_BOOTSTRAP_NOTE.md`.


### Averaging the derivative along the segment

The final b588 proof uses the averaged derivative directly. If the certified
slab majorant is \(q(Y)=c_0+c_1Y+c_2Y^2+c_3Y^3\), set
\(a\ge\|y_0\|\) and \(b\ge\max(a,\|y_*\|)\) for every possible
source root. Along the segment to such a root,

\[
\|(1-s)y_0+s y_*\|\le(1-s)a+s b.
\]

Consequently the defect of the averaged Jacobian satisfies

\[
\|I-\overline J\|\le\bar q
=c_0+c_1\frac{a+b}{2}
 +c_2\frac{a^2+ab+b^2}{3}
 +c_3\frac{a^3+a^2b+ab^2+b^3}{4}.
\]

Whenever \(\bar q<1\), the necessary strong radius is
\(\rho\le a_F/(1-\bar q)\), where
\(a_F\ge\sup_{t,H}\|LF_H(O(t,y_0))\|\). This can initialize an
enclosure even when the pointwise endpoint bound exceeds one. A proved
radius can then supply a new endpoint bound for another refinement.

`code/fiber_secant.py` evaluates the cubic average by the exact two-point
Gauss–Legendre identity: nodes \(1/2\pm\sqrt3/6\), weights \(1/2\).
This is exact integration of a degree-three majorant, with Arb enclosures
and upward-rounded radii; it is not an uncertified quadrature approximation.
The coefficients are independent of the auxiliary radius and nonnegative.
The original source radius is preserved in the exhaustive tree and every
source-membership test.

## 5. PROVED: keeping the common parameter in exclusion inequalities

For a column box, or a weak rectangle times its necessary strong ball,
form a joint linear expansion of necessary residuals:

\[
F=F_0+J_t\,\delta t+J_y\,\delta y+Ww+e,
\]

where \(|\delta t_i|\le h_i\), \(\|\delta y\|\le\rho\),
\(\|w\|\le r\), and the remainder is enclosed. For any fixed real row
multiplier \(\lambda\), a zero must satisfy

\[
|\lambda F_0|
\le\sum_i |(\lambda J_t)_i|h_i
 +\rho\|\lambda J_y\|_2
 +r\|\lambda W\|_2
 +E_\lambda.
\]

A strict reverse inequality excludes the entire necessary enclosure,
uniformly over the original H parameter ball. The term
\(r\|\lambda W\|\) is computed after summing with the common w.
Replacing it by a sum of separate phase widths would lose cancellations.

Numerical nullspace or least-norm calculations only propose
\(\lambda\). Its coefficients are interpreted as exact binary numbers;
\(\lambda J_y\) and \(\lambda W\) are recomputed with Arb and are never
assumed to vanish. An inaccurate proposal can weaken the inequality but
cannot justify a false exclusion.

The code first uses a simple second-order absolute remainder. At smaller
boxes it also assembles the signed quadratic and normal terms before taking
their support bounds. For one scalar weighted cosine term with argument
\(\theta+d\cdot z-\tfrac12h[w,w]-n\xi\), the retained quadratic term
contains both

\[
-\frac{\kappa\cos\theta}{6}(d\cdot z)^2
\quad\text{and}\quad
\frac{\kappa\sin\theta}{6}h[w,w],
\]

and the retained normal term is
\(\kappa\sin\theta\,n\xi/3\). Here z collects the weak, strong,
and shared parameter displacements. With \(\alpha\) bounding the linear
phase and \(\beta\) bounding its quadratic/normal remainder, a valid
remaining error bound per term is

\[
|\kappa|\left[
 \frac{|\cos\theta|}{3}
       \left(\alpha\beta+\frac{\beta^2}{2}\right)
 +\frac{(\alpha+\beta)^3}{18}\right].
\]

Cross-block quadratic supports include their factor two. The weak variables
use box support and the strong and H parameters use Euclidean-ball support.
`code/scalar_second_order.py` and the fiber audit give the implementation.

## 6. PROVED: exhaustive capture without a root-count assumption

The two-dimensional tree begins with a closed rectangle covering the full
weak projection of the source ball. Every split has closed children whose
union covers the parent. A leaf is removed only for one of these reasons:

1. Its weak projection or necessary strong enclosure misses the original
   source ball.
2. A necessary residual interval excludes zero.
3. A common-parameter scalar inequality excludes a zero.
4. The complete necessary enclosure lies in one proposed capture cap.

Only an empty pending stack establishes complete coverage. A depth, node,
time, or precision failure leaves the result `NOT_ESTABLISHED`. A large
number of successful leaves cannot compensate for even one unresolved
region.

For a cap centre \(c=O(t_c,y_c)\) and radius \(\gamma\), a sufficient
capture inequality is

\[
\sum_{i=1}^2(|t_i-t_{c,i}|+h_i)^2
 +\bigl(\|y_0-y_c\|_2+\rho\bigr)^2<\gamma^2.
\]

The exact same source phase centre and Helmert cap coordinates are used
later in the overlap bound. The cap need not contain a zero, distinct caps
may overlap, and one cap may cover several possibilities. A change in the
number or topology of real roots does not invalidate this implication.

The five-dimensional fallback applies the same principle to a rotated
Krawczyk exclusion/contraction tree, with all-six residual tests and the
common-parameter separator. It also stops at coarse caps and fails
conservatively if any boxes remain.

## 7. PROVED: overlap bounds and the finite choice argument

For two phase tubes sharing the same w, write

\[
v_a=c_a+T_aw+e_a,\qquad
v_b=c_b+T_bw+e_b,\qquad
\|e_a\|\le\varepsilon_a,\quad\|e_b\|\le\varepsilon_b.
\]

Let \(P_0\) be the mean-zero projection and put

\[
D=P_0(T_b-T_a),\quad \eta=\varepsilon_a+\varepsilon_b,
\quad z_i=\frac{e^{i(c_b-c_a)_i}}6,
\quad g_i=\operatorname{Re}(i\lambda z_i),
\]

for any fixed nonzero complex multiplier \(\lambda\). Then

\[
\frac{|\langle k_a,k_b\rangle|}{6}\ge
\frac{
 \operatorname{Re}(\lambda\sum_i z_i)
 -r\|D^Tg\|_2-\eta\|P_0g\|_2
 -|\lambda|(r\|D\|_{\rm op}+\eta)^2/12
}{|\lambda|}.
\]

This follows by removing the mean phase, expanding
\(e^{i\delta_i}=1+i\delta_i+R_i\), and using
\(|R_i|\le\delta_i^2/2\). A floating complex direction can propose
\(\lambda\), but its modulus is checked and need not equal one.

The final static-cap receipts take \(T_a=T_b=0\). Their simpler numerator
is the centre's real projected overlap minus
\(\eta\|P_0g\|\) and \(|\lambda|\eta^2/12\). A positive lower
bound proves that the two entire caps cannot contain orthogonal columns.
The optional affine predictor theorem in `proofs/PREDICTOR_THEOREM.md`
can sharpen this stage after the same completeness obligation is met.

Make a coloured graph with one colour for each selected column and one
vertex for each cap. Mark a pair forbidden only after the Arb overlap
inequality succeeds. If every choice of one cap from each selected colour
contains a forbidden pair, an orthogonal basis is impossible. Covering any
subset of two through six distinct columns is sufficient: a full orthogonal
basis would supply an orthogonal selection on that subset.

The graph checker uses exhaustive prefix search. A forbidden edge closes
all assignments extending that prefix. Reaching a full assignment without
an edge, or exceeding the graph budget, prevents a proof verdict. The
independent `validation/audit_graph_prefix.py` checks that the recorded
prefixes are disjoint and that their exact integer cylinder cardinalities
sum to the complete product of choices.

## 8. Measured constants and cost

| Snapshot | Columns | Cap radius | Cap counts | Final cover nodes | Certified overlap > | Replay seconds |
|---|---|---:|---|---:|---:|---:|
| `b1217_l6_s4759_p0` | 0,5 | .06 | 2,2 | 1020 | 0.011003738487 | 6.52 |
| `b1016_l4_s2665_p0` | 1,3,5 | .04 | 9,12,10 | 2523 | 0.000170681743 | 20.07 |
| `b588_l5_s2618_p0` | 1,3,5 | .06 | 2,2,8 | 1307 | 0.009165152648 | 16.41 |
| `b815_l5_s8143_p0` | 1,2,3,4 | .07 | 4,2,2,5 | 2532 | 0.001698427886 | 16.94 |
| `b825_l4_s295_p125` | 1,4,5 | .07 | 2,5,2 | 1333 | 0.014639852134 | 9.79 |
| `b830_l6_s1416_p3` | 2,4 | .07 | 2,4 | 1574 | 0.006609735447 | 13.96 |

Column indices are zero based, and cap counts are not root counts. The original b1217 level-6 benchmark uses r approximately 0.002812500000000401 and tau approximately 1.094367668764e-8. Its selected source radii are approximately 0.495325751831 and 0.379609807247. The pointwise source derivative bounds for columns 0 and 5 are below 0.891652 and 0.567173 respectively. Its complete covers require 647 and 373 nodes.

The difficult b1016 pattern uses its unchanged r approximately 0.010000000000000321 and tau approximately 5.011628594e-7. The three complete covers use 1,073, 861, and 589 nodes. Its 167 forbidden prefixes cover all 1,080 choices from 9 x 12 x 10 caps. The b588 proof uses the averaged derivative, with 377, 423, and 507 nodes for columns 1, 3, and 5.

Across all 42 fixed-proposal replays, the median recorded wall time is 3.38 seconds; the range is 0.69–20.37 seconds. The final complete covers visit 30,544 nodes in total.

These are measurements in this execution environment, often with other
checker processes running. They are not hardware-independent complexity
bounds or a controlled speed comparison against the earlier collaborator's
machine. Proposal generation and adaptive exploration are separate from
the recorded fixed-proposal replay times. All receipt inequalities, node
counts, radii, and dependency hashes are retained exactly in JSON.

For production, compute each distinct column region once per identical H
model. If P patterns contain C distinct regions, the expensive work is a
sum over those C covers, rather than up to 6P repeated covers. Subsequent
patterns require only reusable pair bounds and finite graph checks. The
actual C and total covering-tree size are absent from the handoff, so a
defensible cost for an entire seed ball cannot be inferred from 42 samples.

## 9. PROVED: an obstruction to the old two-cap proposal

For column 1 of `b1016_l4_s2665_p0`, an independent interval certificate
proves an exact zero of all six unbiasedness equations in the **relaxed H
enclosure**, outside both old radius-0.1 caps. The certified numbers include

\[
\|w_*\|<0.007500000001<r\approx0.010000000000000321,
\]

\[
\|\xi\|<7.178745\times10^{-9}
 <\tau\approx5.011628594\times10^{-7},
\]

and a column norm below 0.221347094 inside the original radius-0.454536382
source ball. Its distances from the two old centres exceed 0.2213470935
and 0.2695129956. The square six-variable Krawczyk calculation has a
contraction upper bound below \(5.002354\times10^{-8}\).

Consequently, exhausting this entire relaxed phase-ball problem into those
two old caps is impossible. This is a proved completeness obstruction,
independent of a subdivision budget. It concerns the two specified cap
locations, not a theorem that no differently placed pair of caps could work.

**The witness does not prove H is a Hadamard matrix.** A second certificate
proves that every *physical* Hadamard H in the model with
\(\|w-w_*\|\le10^{-5}\), allowing the full original normal remainder,
has an unbiased column outside the two caps. Its contraction bound is below
0.431086469. This is conditional on such a physical H existing; existence
does not follow merely from an enclosing chart model.

The original source phase ball may itself enclose a smaller union of fine
bins. The witness proves membership in that phase ball, not membership in
every original finer pattern. Neither statement produces a third basis or
a counterexample to the triple classification conjecture.

**NUMERICAL:** a full normal correction of H satisfies all 30 real
off-diagonal Gram equations to approximately \(2.14\times10^{-16}\)
near this parameter point, and the extra column has a small six-equation
residual. This supports physical relevance but is not the physical
existence proof. Numerical branch searches suggest a change in the real
solutions along a parameter direction; they do not prove a bifurcation or
the exact root count. Full scope and a standalone checker are in
`extra_root/REPORT.md`.

## 10. Correction to the supplied census interpretation

The supplied `census.py` calls `triples.solve_triple(H,K0)`. That function
optimizes 25 H phases and 30 K phases together. It does not keep the centre
H fixed. The stored `nearest_triple_dist` values are nonzero; their displayed
range is 0.0080–0.6060, including 0.0118 for b1016 and 0.0810 for b1217.

Therefore the repeated value 64 in the TSV does not establish “64 third
bases at each centre.” It describes outputs of a moving-H numerical search
with a bounded set of starts. The unbiased-vector search is at fixed H;
the later triple search is different. The warranted statement is that
nearby numerical triples were found and assigned numerical continuous-type
markers. A fixed-H basis count, complete root census, or rigorous known-type
classification does not follow from those data.

The new exclusion certificates do not depend on that census. The original
sources and TSV are included so this distinction can be checked directly.

## 11. Validation, trust boundary, and next production obligation

The complete successful configurations were replayed from the packaged
sources. Receipts bind the snapshot, proposal, and dependency bytes by
SHA-256. Input Arb intervals are retained, outward radii are used where an
enclosing radius is needed, numerical rotations are re-orthogonalized with
Arb, and proposed multipliers are validated through sufficient inequalities.

The following checks target substantive failure modes:

- Forty analytically exact Fourier6 chirp roots under a shared gauge model
  with nonzero U, H2, and X survive residual pruning, common-parameter
  separation, and interval contraction.
- Forty exact roots survive the fiber enclosure and projected tests; their
  known omitted scalar residuals lie within the signed second-order error
  bounds.
- Removing every cap from an exact known-root model correctly leaves an
  incomplete cover, rather than falsely excluding the root.
- The optional pointwise bootstrap and averaged-derivative helper are
  separately checked on 40 exact roots each, including intermediate refined
  enclosures and preservation of the original source radius.
- The forbidden-prefix records pass an independent integer cover audit.
- The additional-root certificate replays independently using only
  `python-flint`, and its physical-existence limitation remains explicit.

This is a computer-assisted proof with a mathematical and code audit, not
a proof-assistant formalization or a proof of the arithmetic library itself.
The complete leaf traversal is recomputed by replay; receipts are concise
records of that computation rather than a stored leaf-by-leaf proof object.

To promote these results to ball closure, the next required input is the
complete remaining covering tree and open-pattern manifest. For each cell,
bind the complete H-model contents, every original column region, and each
exclusion or existing classification receipt. Cache covers only under an
identical model and phase convention, or after a separately proved domain
containment. Exact region deduplication and larger-to-smaller proved-region
reuse are described in `proofs/INTEGRATION.md`.

**CONJECTURED:** the same cover, adaptive-cap, and compatibility method,
possibly with further H-cell refinement, will close the outstanding
production phantom patterns. The supplied sample results make that a
concrete computational route. They do not prove its success on every
unseen cell or replace the missing production manifest.
