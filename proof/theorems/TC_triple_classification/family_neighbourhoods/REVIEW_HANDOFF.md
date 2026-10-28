# Review handoff: all-K classification on whole original seed balls

27 October 2026. This is a review of implementation commit
`bd87c694752357dcd31571aa3377461d4dd03cca`, on branch
`codex/tc-triple-classification`. Later documentation commits do not change
the acceptance-source binding below. Start with the [review request](REVIEW_REQUEST.md)
for a concise assignment; this document supplies the results and proof chain.

## 1. Result and scope

**CERTIFIED, subject to the analytic and arithmetic dependencies identified
below:** on each of original seed balls **1500, 1700, 1864, 1879, 1881, and
1900**, every completing third basis is of Conjecture 1 type. Original
balls **100, 500, 1100, 2200, 2500, and 2700** are certified empty.

The domain in every case is the **entire original four-coordinate ball**,
with its original mathematical centre and original radius. No H-domain
subdivision or radius reduction was used in these runs. Numerical changes
of expansion point for K do not alter that domain.

**NOT ESTABLISHED:** ball **2300** still has two unresolved cover patterns.
Universal success on the approximately 200 surviving balls is not proved
or tested: their exact indices remain on inaccessible Rusty storage. The
13 cases here are a regression set, not that survivor list. The separate
X-ball, combination with Rusty's emptiness certificates, and the global
classification conjecture are outside the certified result of this driver.

`CERTIFIED` is a universal classification statement about any completing
basis that exists; it does not establish existence. `CERTIFIED EMPTY`
asserts nonexistence of a completing third basis throughout the ball.
Pattern counts count covering alternatives, not inequivalent triples.
`NOT ESTABLISHED` is neither a counterexample nor evidence of existence.

The construction target is the continuous complementary-circulant family
or the isolated Fourier/product-equivalent triple. The proof first forces
an **actual balanced common order-three symmetry** of the triple and then
uses the analytic recognition argument cited in Section 8 below. A small
numerical distance to a known family is never an acceptance condition.

This handoff makes the claimed proofs reviewable; it does not record an
independent mathematical audit or formal verification of them. In
particular, the reviewer must examine the inherited Stage C error proof.

## 2. Frozen evidence and provenance

All paths in this document are relative to this directory unless stated
otherwise. The implementation and evidence are in
`proof/theorems/TC_triple_classification/family_neighbourhoods/` from a
repository or extracted archive root.

| Item | Identity |
|---|---|
| Implementation commit | `bd87c694752357dcd31571aa3377461d4dd03cca` |
| Acceptance source/atlas binding | `aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7` |
| Original atlas SHA-256 | `33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf` |
| Original deployment archive SHA-256 | `c4cbe0367244b392be187e6ef4e723c847ed64ff9fdf815eef8447cab87f937f` |
| Arb precision | 160 bits |
| Recorded runtime | Python 3.13.16; NumPy 2.2.6; SciPy 1.17.0; python-flint 0.9.0 |
| Recorded platform | `macOS-26.6-arm64-arm-64bit-Mach-O` |

The original atlas is
`proof/seed_atlas/results/seed_atlas_certificate.json.gz` from the root.
Its 2,775 seed indices are **zero-based**, 0 through 2774.

Primary evidence:

- [All 13 ball receipts](results/native_coupled_fine_original_balls.jsonl).
- [Requested set, source hashes, and runtime manifest](results/native_coupled_fine_original_balls.jsonl.manifest.json).
- [Complete replay console log](results/native_coupled_fine_original_balls.log).
- [Eleven-test console log](results/native_coupled_fine_unit_tests.log).
- [Deployment verification sidecar](results/deployment_coupled_fine_verification.json).
- [Acceptance theorem and analytic bounds](PROOF.md).

The binding covers 27 source/proof/dependency files and the atlas. It
includes the recognition reference and Stage C arithmetic documentation.
It does not hash installed Python/BLAS/FLINT binaries; their package
versions are recorded separately. Hash equality establishes identity,
not mathematical correctness.

The existing deployment archive is named
`TC_native_allK_certifier_coupled_fine_2026-10-27.tar.gz`. It contains 38
manifested files plus `DEPLOYMENT_MANIFEST.json`. The accompanying review
archive preserves those original files and adds this handoff, the review
request, the verification sidecar, and a separate review manifest. Do not
overwrite or silently update the original deployment manifest.

Earlier evidence is retained under `native_original_balls.*` and
`native_unit_tests.log`; it has a different binding. Relevant history is:

| Commit | Role |
|---|---|
| `ce4eb53d0` | Transfer of the supplied special-anchor radius-0.153 theorem to original ball 1879. |
| `3a2128c8b` | Transfer audit across the original atlas; only 1879 passed that sufficient containment test. Failure of containment was not failure of classification. |
| `dc429a08f` | Generic native-coordinate all-K method; six of twelve selected balls closed. |
| `bd87c6947` | Sharper whole-ball phase enclosure, coupled K contraction, and complete fine-bin fallback; twelve of thirteen selected balls closed. |

The current method does not execute the supplied R=0.153 handoff or assume
its special-anchor 120-ray/60-symmetry census. It uses the general
recognition argument from its checkpoint. Earlier local patches and Tao
results remain historical results of the wider project; they are not new
claims of this native-ball replay.

## 3. Whole-ball results

These measurements include fresh C1 and whole-ball model checks, with four
independent workers. They are not runtime guarantees for untested inputs.
The decimal radii are readable summaries; the receipt's `radius_hex` and
the original atlas record specify the exact stored inputs.

| Index | Original radius | Result | Classified / excluded / unresolved patterns | Seconds |
|---:|---:|---|---:|---:|
| 100 | 0.125 | CERTIFIED EMPTY | 0 / 0 / 0 | 4.23 |
| 500 | 0.1 | CERTIFIED EMPTY | 0 / 3 / 0 | 22.15 |
| 1100 | 0.1 | CERTIFIED EMPTY | 0 / 4 / 0 | 34.93 |
| 1500 | 0.0925 | CERTIFIED | 8 / 0 / 0 | 18.63 |
| 1700 | 0.08 | CERTIFIED | 6 / 4 / 0 | 32.64 |
| 1864 | 0.08 | CERTIFIED | 7 / 18 / 0 | 61.19 |
| 1879 | 0.063 | CERTIFIED | 10 / 0 / 0 | 38.93 |
| 1881 | 0.063 | CERTIFIED | 10 / 1 / 0 | 36.81 |
| 1900 | 0.052 | CERTIFIED | 8 / 0 / 0 | 18.10 |
| 2200 | 0.125 | CERTIFIED EMPTY | 0 / 2 / 0 | 7.26 |
| 2300 | 0.1 | NOT ESTABLISHED | 0 / 2 / 2 | 59.28 |
| 2500 | 0.125 | CERTIFIED EMPTY | 0 / 1 / 0 | 5.31 |
| 2700 | 0.02 | CERTIFIED EMPTY | 0 / 2 / 0 | 1.75 |

### Ball 1864: all completing bases classified

Original radius: `0x1.47ae147ae147bp-4` (displayed as 0.08).
The complete cover has 49,187 fine bins, 1,915 labels, 116 colors, and 841
valid labels after cover pruning. It leaves 25 color patterns. Seven pass
the symmetry test at the K anchor; thirteen are excluded by bin
orthogonality; five are excluded after the new coupled contraction.

The quadratic-model normal bound is approximately
0.00202150372749040144 radians. Centre and frame conversion allowances are
approximately 4.32e-16 and 8.02e-17; they are retained, not dropped.
The enclosed normal allowance is `0x1.08f668cbf004cp-9` before the further
Stage C units conversion enclosure.

The seven accepted symmetry bounds are:

| Pattern | Colors | Final q bound, approximately |
|---:|---|---:|
| 6 | 5, 15, 34, 70, 76, 90 | 0.379039916 |
| 8 | 6, 16, 38, 60, 81, 87 | 0.709853461 |
| 12 | 8, 13, 46, 54, 72, 82 | 0.666321963 |
| 14 | 14, 42, 48, 52, 103, 105 | 0.699094559 |
| 16 | 17, 22, 65, 66, 98, 108 | 0.718000580 |
| 22 | 24, 29, 44, 53, 101, 104 | 0.476215670 |
| 24 | 27, 55, 58, 93, 109, 113 | 0.598428197 |

Each exact interval upper endpoint is strictly below 1. The following
five scalar exclusions have the opposite strict comparison: the lower
bound for the left side exceeds the upper bound for the right side.
Values here are rounded summaries; the JSONL contains interval strings,
the functional's hexadecimal coefficients, and contraction diagnostics.

| Pattern | Colors | Iterations | LHS approximately | RHS approximately | Largest final column error, approximately |
|---:|---|---:|---:|---:|---:|
| 1 | 3, 10, 45, 62, 73, 106 | 28 | 0.0175830935060 | 0.0134642445780 | 0.00187191335 |
| 4 | 3, 23, 45, 62, 73, 106 | 28 | 0.0175830930088 | 0.0134642437725 | 0.00187191315 |
| 9 | 7, 12, 25, 50, 75, 80 | 27 | 0.0188451740217 | 0.0137148828456 | 0.00186527875 |
| 10 | 7, 12, 41, 50, 75, 80 | 27 | 0.0188451740616 | 0.0137148819290 | 0.00186527797 |
| 17 | 18, 20, 63, 64, 79, 110 | 29 | 0.0169928229477 | 0.0149710615362 | 0.00183064818 |

The initial affine errors in the coupled carrier were roughly 0.045–0.233
radians. All final column errors in these five patterns are below
0.001873. Inverse defects are about 3.33e-15–7.14e-15 and are explicitly
included. The contraction is conditional on a covered zero, so it can
legitimately end in a contradiction proving that no such zero exists.

Earlier exploratory symmetry scores for these patterns are not the
committed acceptance route. Pattern numbering also changed from the
previous release's 26-pattern cover. Compare color sets and bindings,
not pattern numbers across versions.

### Ball 2200: the full radius-0.125 ball is empty

Original radius: `0x1.0000000000000p-3`. The fresh quadratic whole-ball
model improves the H-normal allowance from the C1 value about
0.008659211963421641 to approximately 0.007474657079918870 radians.
The mathematical domain is unchanged. The new enclosure includes about
4.90e-16 centre rounding and 1.25e-16 frame rounding; its enclosed normal
hex value is `0x1.e9dbefb5027a3p-8`.

The resulting complete cover has 55,706 bins, 1,884 labels, 54 colors,
118 valid labels, and two patterns. Both patterns fail necessary
bin/column orthogonality tests. Emptiness follows from this complete
cover and its exclusions. It does not follow from a fit's failure or
from distance to a known family.

### Other newly closed cases

Ball 1700 retains radius 0.08. Of ten patterns, six pass the K-anchor
symmetry test (q approximately 0.7052–0.8579) and four are excluded.
The two new coupled scalar exclusions are pattern 0, colors
`[0,9,25,27,34,57]`, with approximately 0.016102900895 > 0.011886618833,
and pattern 1, colors `[2,10,15,33,41,46]`, with approximately
0.023241523227 > 0.014167728098. Both take 28 contraction iterations.

Balls 500 and 1100 retain radius 0.1 and close through the fine-bin
fallback. In the final receipts, **arc consistency removes every bin**;
the subsequent clique searches require zero steps. This is more precise
than describing the result as an expensive exhaustive clique search.

| Ball / pattern | Fine bins before pruning | Candidate edges tested | Arc-consistency rounds | Bins after pruning | Pair-cache hits |
|---|---:|---:|---:|---:|---:|
| 500 / 0 | 1,519 | 357,970 | 1 | 0 | 0 |
| 500 / 1 | 1,586 | 382,036 | 1 | 0 | 10 |
| 500 / 2 | 1,483 | 345,163 | 1 | 0 | 1 |
| 1100 / 0 | 2,652 | 920,364 | 2 | 0 | 0 |
| 1100 / 1 | 2,893 | 1,123,533 | 2 | 0 | 10 |
| 1100 / 2 | 2,837 | 965,023 | 2 | 0 | 10 |
| 1100 / 3 | 3,078 | 1,213,111 | 2 | 0 | 14 |

## 4. Original coordinates and the complete all-K cover

The proof starts with an actual represented Hadamard H and an arbitrary
actual completing basis K. Every later enclosure is conditional on that
pair; the argument never presupposes a numerical root census is complete.

`run_ball` loads and hashes the unchanged atlas record, freshly calls
`seedcert.certify_c1(ball, max_boxes=4096)`, and obtains the verified model
from `patches.normal_form(ball, prec=160)`:

\[
 Q(w)=Q_0+Uw+\tfrac12 H_2[w,w]+Xz(w),
 \qquad \|w\|\le r,\quad \|z(w)\|\le\tau.
\]

The phases are horizontal phase coordinates in radians. The source
whole-ball theorem supplies the branch, orientation, and continuous lift
with its winding convention. Array dimensions are Q0: 36-by-1, U:
36-by-4, H2: 36-by-16 with quadratic index `4*j+k`, and X: 36-by-21.
The stored `model['H']` uses a dephased gauge; `Q0` uses the horizontal
row gauge. Numerical ray proposals therefore use `exp(i Q0)`. Confusing
these two gauges was a material implementation hazard.

For Stage C, let q and V be exact binary64 proposals for Q0 and U.
`model_stage_c_args` encloses the same domain by

\[
 Q(w)=q+Vw+\nu,\qquad
 \|\nu\|\le \tfrac12\|H_2\|r^2+\|X\|\tau
                  +\|Q_0-q\|+\|U-V\|r.
\]

All terms are bounded with Arb; the original w and r are retained.
`stage_c_args` also encloses conversion from radians to cycles. The
improved normal allowance is not a smaller original ball.

Stage C covers the entire five-phase column torus, refining resolutions
12, 24, 48, and 96 and retaining every potentially unbiased column for
every represented H. It clusters bins into labels and forms a necessary
orthogonality graph. The label-radius bound prevents two orthogonal
columns from occupying the same label.

Numerical roots propose colors only. Each proposed color is split until
it is an independent set of the necessary label graph. Thus every actual
basis has six distinct colors forming a quotient six-clique, even if
the root proposals miss roots. All quotient six-cliques are enumerated.
Search caps are failures, never proofs of an empty graph.

Coarse arc consistency removes a label only when no surviving pattern
can supply the five required other-color neighbors. An actual basis
supplies those neighbors at every iteration. Its six labels therefore
survive by induction, and quotient enumeration after pruning preserves
its color pattern.

The exact cluster assignment is replayed to retain all original fine
bins of every surviving label. The full closed bin of width 1/M is
enclosed after removing its column mean by radius

\[
 \rho=\frac\pi M\sqrt{29/6}.
\]

This is the maximum norm for five coordinates in [-pi/M, pi/M] with
first coordinate zero after mean subtraction. Bin centres are stored
as integers k/192. Integer winding choices and fitted phases can be
arbitrary proposals, but all resulting bin distances are recomputed
in Arb, including rho. No acceptance covers only bin centres.

## 5. Conditional contraction and scalar exclusion

### Individual and conditioned columns

Each mean-zero column is enclosed as
`v = v0 + T w + e`, with `||e|| <= epsilon`. The normalized mixed
equations are

\[
 f_c(Q,v)=\frac{|H_c^*e^{iv}|^2-6}{6}
 =\frac13\sum_{a<b}\cos(v_a-v_b-Q_{ac}+Q_{bc})=0.
\]

The preconditioner is arbitrary exact binary64 data. The checker keeps
the residual at v0, the inverse defect, the carrier defect, and all
H-normal corrections. For a mean-zero six-vector d, the mixed scalar
Hessian has norm at most 2 and cubic remainder at most
`sqrt(2) ||d||^3 / 3`. Complex column orthogonality has cubic remainder
at most `||d||^3 / 6`. Signed Hessian terms are summed before taking
certified spectral norms. `PROOF.md` Section 2 gives the detailed
individual-column and bin-centred bounds.

`conditioned_columns` appends orthogonality against other already
bounded columns, keeping all their error contributions. Updates use
the preceding valid bounds in sequence; the final reference error is
never assumed in order to prove itself. A refit can propose new v0,
but every original bin is translated and bounded again in Arb.

### New coupled contraction of all six K columns

This is the main new mechanism for 1864 and 1700. Use all 96 triple
equations F in 72 phase variables. Let C_K project each of the six K
columns to mean zero. At q=(Q0,v0), write J=(J_H,J_K). A numerical
pseudoinverse proposes A, followed by projection into range C_K.
Choose a proposed carrier T in that range and set L=[U;T]. Every
covered zero can be written

\[
 x=q+Lw+[h;e],\qquad
 h=\tfrac12H_2[w,w]+Xz,\quad e=C_Ke,
 \quad \|e_c\|\le\epsilon_c.
\]

Write `D = C_K - A J_K C_K`,
`E_K = sqrt(sum epsilon_c^2)`, and
`N = ||H2|| r^2/2 + ||X|| tau`. Expansion of `A F(x)=0` yields

\[
 e=D e-AF(q)-AJLw-AJ_Hh
       -\tfrac12D^2(AF)(q)[Lw+[h;e],Lw+[h;e]]-A R_3.
\]

For output coordinate i, let B_i be the signed Hessian of `(AF)_i`.
The scalar enclosure keeps the absolute centre residual, the linear
carrier term, inverse-defect row norm times E_K, and Xz term. Its six
quadratic contributions are

\[
\begin{split}
&\tfrac12r^2\|L^TB_iL+(AJ_HH_2)_i\|
 +rE_K\|L^TB_iK_{\rm ins}\|
 +\tfrac12E_K^2\|K_{\rm ins}^TB_iK_{\rm ins}\|\\
&+rN\|L^TB_iH_{\rm ins}\|
 +E_KN\|K_{\rm ins}^TB_iH_{\rm ins}\|
 +\tfrac12N^2\|H_{\rm ins}^TB_iH_{\rm ins}\|.
\end{split}
\]

H_ins inserts the H correction; K_ins inserts mean-zero K errors.
The H2 row is reshaped into a 4-by-4 quadratic form and combined with
the signed w-w Hessian before taking its norm. The cubic bounds use
correlated differences of column carriers, the individual errors, and
the mixed/orthogonality constants above. For a complex orthogonality
equation, a preconditioner's real and imaginary coefficients are
combined by their Euclidean norm.

The norm of the six scalar bounds belonging to one K column supplies
its next epsilon. Initial errors are translated from the previous
carrier using a certified norm of the carrier difference; independent
phase-radius bounds may tighten them. A finite iteration accepts only
strict improvements. By induction every covered zero remains enclosed.
This is a conditional localization argument, not a Newton existence
theorem and not an assumption that the six fitted columns are a basis.

After changing the carrier, `joint_basis` returns only the v0/T/error
data needed by the final tests. Earlier cached column Hessians built
for the old T are not reused. Review this interface carefully.

### Scalar support contradiction

`basis_exclusion` proposes a real row y of the 96 equations. For a
covered zero, Taylor expansion gives

\[
 |yF(q)|\le B_{\rm linear}+B_{\rm quadratic}+B_{\rm cubic}.
\]

The right side retains the correlated carrier, six error sensitivities,
H2 and Xz corrections, signed quadratic blocks, and valid cubic bounds.
`PROOF.md` Section 7 states the exact bounds used by this separate test.
The test accepts only if the Arb lower bound of the left side is
strictly greater than the right-side upper bound. The receipt stores
y as exact binary64 hexadecimal entries. Least squares proposes y;
its fit quality has no logical role in the contradiction.

## 6. Forcing an actual symmetry

This mechanism also underlies the previous generic release. It must be
reviewed along with the new contractions because the classification
claims depend on it.

F consists of 30 real H-orthogonality equations, 30 real K-orthogonality
equations, and 36 normalized mixed equations. Its Fourier layout has
180 complex orthogonality terms and 540 real mixed terms. Direct matrix
comparisons in the tests check normalization and Jacobian signs.

Numerical monomial matching proposes a balanced cubic label assignment
(each of 0,1,2 twice), an anchor I/H/K, and the corresponding permutations
R,S,T. The fixed anchor's ray permutation is the identity; the other
two have two three-cycles. The checker verifies their cycle structure.
A canonical phase array b supplies the cubic-root factors, making
`x -> b + P(x-b)` an actual common row operation together with basis
column permutations and column phases. This affine action preserves
the triple equations' zero set; b need not itself be a zero.

The joint row/column gauge complement is the rational projector

\[
 W_{(b,r,c),(d,s,j)}=(\delta_{rs}-1/6)
                       (\delta_{bd}\delta_{cj}-1/12).
\]

With `G=(I+P+P^2)/3`, the checker verifies over exact rationals that
`P^3=I`, `WP=PW`, W is an orthogonal projector, and `E=(I-G)W` is an
orthogonal projector of rank 40. Proposed integer phase windings can
improve the lift; numerical gauge fitting proves no distance assertion.

The **default averaged moving equation** uses an exact action Y on
the 96 real residual equations. It includes pair-order conjugations and
cubic-root factors. The checker constructs Y over Q(sqrt(3)) and verifies
`Y^3=I` and `Y^T Y=I`. Set `Q_Y=I-(I+Y+Y^2)/3` and use
`A=E A0 Q_Y`, where A0 is an arbitrary numerical inverse proposal.

For every canonically fixed phase point a, residual covariance gives
`F(a)=YF(a)`, hence **AF(a)=0 exactly**, even if F(a) is nonzero.
This exact cancellation is essential; a small fitted residual would
not be enough.

Gauge-transform an actual zero and write it as `x=a0+s+e`, with a0+s
fixed and e in range E. Then

\[
 0=A(F(x)-F(a_0+s))
   =A\int_0^1DF(a_0+s+te)e\,dt.
\]

The checker bounds the operator defect of this integrated derivative
on range E by q. If **q<1 strictly**, then `||e|| <= q ||e||` forces
e=0. The actual triple consequently has the balanced order-three
symmetry at the proposed anchor.

The bound contains the inverse defect, the signed deterministic Hessian
variation, the H/K-error Hessian contribution, and a Fourier remainder
majorant. The signed first-order variation integrates at the midpoint:
the first-argument transform is `((I+G)/2)W`, not the original W.
If beta0 and beta1 bound a Fourier term's endpoint increments, its
integrated derivative remainder is at most coefficient modulus times

\[
 (\beta_0^2+\beta_0\beta_1+\beta_1^2)/6.
\]

The resulting entrywise nonnegative matrix majorizes the remainder,
so its certified spectral norm bounds the actual operator norm.
All acceptance norms use Arb Gram-shift/LDL certification; an SVD only
proposes a shift. Nonfinite norm bounds raise an error.

`PROOF.md` Section 4 also documents the symmetry-pair segment method.
Section 6 is the stronger default averaged method used here. Do not
confuse its integrated bound with a claimed pointwise bound on every
derivative along that segment. The driver usually tries one preferred
action; failure to find a successful action proves nothing about other
actions.

## 7. New complete fine-bin fallback

The original fine bins can give much sharper necessary pair tests than
the larger coarse labels. `fine_patterns` processes one unresolved
six-color pattern, keeping every retained closed fine bin for each color.
It uses the stored integer centres, not centres reconstructed by rounding
fitted phases back to a grid.

For each of the fifteen color pairs it applies Stage C orthogonality
and joint support tests to the radius-rho bin balls, using the same
whole-original-ball H enclosure. Candidate edges are handled in disjoint
batches of 20,000. Every retained edge must be written back to its correct
cross-color indices. Results can be cached only for the same immutable
cover and color pair; a refined cover discards that cache.

Arc consistency deletes a bin only if at least one other required color
has no surviving adjacent bin. An actual basis would provide that
neighbor, so induction preserves every actual six-clique. A completed
empty search excludes the pattern. A found clique is only a proposal;
it is not a complete census. A search cap provides no exclusion, though
already valid arc pruning may still be used by subsequent contractors.

Remaining bin centres, displacements, and radii retain aligned ordering.
They are passed back to the interval pipeline, with at most one fine
recursion (`allow_fine=False` on the recursive call). This refines K
coverage only. It does not subdivide the original H ball.

## 8. Analytic and arithmetic dependencies requiring review

The theorem chain is:

1. Fresh C1 plus the existing whole-ball model covers every represented H.
2. Stage C and graph invariants cover every possible completing K.
3. Conditional contractions and necessary exclusions preserve every zero.
4. Every surviving pattern satisfies the strict moving-symmetry bound.
5. Recognition turns the actual symmetry into Conjecture 1 type.

Recognition is in
[CHECKPOINT.md, Section 8](../seed_method/reference/r0153/CHECKPOINT.md),
including the positive-amplitude argument in Section 6. Orbit
normalization gives a two-circulant transition. Independent correlation
rows force a constant cubic phase and the canonical complementary form.
In the dependent case the amplitude argument forces zero correlation;
the exact phase alternatives give either the same canonical form or a
tensor-product qubit-qutrit triple. The latter is the isolated
Fourier/product type. The treatment of vanishing coefficients and
dependent cases is part of this analytic dependency. The new run does
not independently reprove or formalize that reference.

Other acceptance dependencies, with paths from the root, are:

| Dependency | What is trusted or replayed |
|---|---|
| `proof/seed_atlas/cert/seedcert.py`, `patches.py` | Fresh C1 and whole-ball native phase model. |
| `proof/seed_atlas/cert/wholeball.py`, `tmarb.py`, `wholeball_basis.json` | Interval arithmetic helpers, model basis, certified norm machinery. |
| `proof/theorems/Z_completion_hessian/Z_completion_hessian_return/THEOREM.md` | Analytic justification for the quadratic completion model. |
| `proof/theorems/ZT_wholeball_transfers/ZT_return/REPORT.md` | Whole-ball transfer/model conclusions. |
| `proof/atlas/stagec.py`, `STAGEC.md`, `RIGOUR.md` | Complete torus cover and necessary tests with proved floating-point error enclosures. |
| `proof/seed_atlas/FORMAT.md` | Meaning of the original records and coordinates. |
| `seed_method/seed_cover.py`, `tao.py` under the parent theorem directory | Imported graph/exact-arithmetic helpers; inclusion does not imply replay of the separate Tao theorem. |

**The implementation is not wholly Arb.** New acceptance inequalities
are Arb/exact. Stage C uses binary64 computations with its documented
conservative error bounds, including `MARGIN=1e-7` and Arb-generated
exponential tables. This is a claimed validated arithmetic enclosure,
not raw numerical acceptance. Whether that proof applies to every new
call site remains a central review obligation.

Specifically, check the magnitude assumptions in `RIGOUR.md` for the
new native U enclosure, the unit conversions, the per-column and whole
matrix normal allowances, and the fine-bin batched calls. Check that
batching does not change a bound that depends on the total candidate
set. No fresh independent Arb replay of every Stage C edge in the
current thirteen-ball run was performed. Eleven tests cannot establish
that error budget universally.

NumPy/Accelerate emitted matmul divide-by-zero, overflow, and invalid
warnings during these runs; the logs preserve them. Numerical proposals
are subsequently checked, but Stage C itself also uses validated
binary64 operations. The warnings alone neither prove unsoundness nor
justify dismissing the arithmetic dependency. The review must trace
acceptance-relevant finite bounds and the documented margins.

The JSONL receipts are audit records with replayable source, **not
self-contained formal proof objects**. They do not serialize every
cover array or every intermediate inequality. Source replay and the
analytic proofs are necessary. The source binding also does not prove
the global atlas coverage theorem or authenticate the unavailable
Rusty survivor list.

## 9. Exact remaining obstruction: ball 2300

Original radius: `0x1.999999999999ap-4` (displayed as 0.1).
The cover has 25,046 bins, 921 labels, 56 colors, 182 valid labels, and
four final patterns. Its model normal bound is about 0.00426641130534.

| Pattern | Colors | Fine bins before / after arc pruning | Result |
|---:|---|---:|---|
| 0 | 0, 2, 22, 29, 30, 49 | 3,652 / 391 | NOT ESTABLISHED |
| 1 | 0, 2, 22, 30, 31, 49 | 4,843 / 596 | NOT ESTABLISHED |
| 2 | 2, 7, 22, 29, 30, 49 | 2,782 / 0 | EXCLUDED |
| 3 | 2, 7, 22, 30, 31, 49 | 3,973 / 0 | EXCLUDED |

For patterns 0 and 1, the optional fine clique search finds a candidate
in six search steps. This is one witness in the necessary graph, not
an actual certified triple and not an enumeration of all cliques.

Their final q bounds are approximately 3.6203157243 and 3.6303513165,
respectively. For pattern 0, the main contributions are deterministic
linear variation 0.2709548314, error-Hessian contribution 1.4317817479,
and Fourier remainder 1.9175791451, plus the tiny inverse defect.
For pattern 1 the corresponding terms are 0.2709548307, 1.4333118378,
and 1.9260846481. Both totals exceed the required threshold 1.

Final individual affine errors remain about 0.20–0.24 radians. The
fixed-H numerical fit residual is about 0.282371017, and the numerical
action score about 0.15072005. These are diagnostic proposals only.
They certify neither emptiness nor a counterexample.

Exploratory one-sided quadratic scalar estimates and a total K-error
estimate did not close these cases and are not used by the committed
acceptance path. Tighter coupled localization or an exhaustive
subdivision fallback that accounts for the entire original domain are
possible next research directions. Neither is an established solution.
There is no proven runtime bound or completeness guarantee for success
on every surviving ball.

## 10. Reading map and review priorities

Read `PROOF.md` Sections 1, 6, 8, and 9 alongside the following functions.
Line numbers refer to the frozen implementation commit.

| File and entry point | Review purpose |
|---|---|
| [run.py](run.py), `source_paths` line 39, `binding` line 52, `run_ball` line 110 | Binding, original domain, complete pattern accounting, exception behavior. |
| [native_cover.py](native_cover.py), `model_stage_c_args` line 44, `complete_cover` line 65 | Sharper enclosure and complete all-K disjunction. |
| [native_cover.py](native_cover.py), `contract_patterns` line 159, `restrict_pattern_bins` line 177, `label_pattern` line 214 | Necessary graph pruning and complete/capped search distinction. |
| [native_columns.py](native_columns.py), `build` line 32, `improve` line 88, `localize_bins` line 138 | Conditional column inequalities and closed-bin localization. |
| [conditioned_columns.py](conditioned_columns.py), `build` line 12, `refine_pattern` line 130 | Reference-error accounting and sequential induction. |
| [pattern_proposals.py](pattern_proposals.py), `fit` line 9 | Rebuild all enclosures after numerical refitting. |
| [joint_basis.py](joint_basis.py), `build` line 14, `refine` line 38 | New coupled inequalities, indexing, carrier replacement. |
| [basis_exclusion.py](basis_exclusion.py), `exclude` line 8 | Signed scalar support contradiction. |
| [moving_symmetry.py](moving_symmetry.py), `group` line 84, `equation_moving_projector` line 155, `prove` line 181 | Exact action/projectors, residual cancellation, averaged derivative estimate. |
| [fine_patterns.py](fine_patterns.py), `arc_consistent` line 16, `refine` line 29 | Original-bin coverage, batched edges, cache scope, cap behavior. |
| [test_native.py](test_native.py) | Useful regression evidence and its limitations. |

Highest-priority questions for an independent reviewer:

1. Does every original-ball H and every completing K survive the cover,
   color splitting, pruning, winding selection, refit, and fallback?
   Audit closed boundaries and the horizontal/dephased gauge distinction.
2. Do the Stage C magnitude and rounding proofs apply to the new native
   model arguments and fine-bin batched calls? A failure here affects
   completeness and can invalidate both classification and emptiness.
3. Does the coupled identity include every residual, defect, H2, Xz,
   mixed quadratic block, and cubic term with correct normalization and
   array ordering? Are all contractions valid implications for existing
   zeros, with no circular use of an improved bound?
4. Is every scalar exclusion strict with the correct direction and
   outward bounds? Are the exact proposed coefficients recoverable?
5. Does the canonical action represent a genuine balanced ambient
   symmetry at all three anchors? Does the constructed Y actually
   implement covariance, beyond merely satisfying its group identities?
6. Is the averaged derivative bound valid on the entire covered set,
   including signed midpoint integration and the positive remainder
   matrix majorant? Is the fixed residual cancelled exactly?
7. Does recognition cover all resulting symmetries and dependent cases,
   including the isolated product case, without an omitted assumption?
8. Do source changes, resource caps, exceptions, interrupted jobs, and
   unresolved patterns prevent an unsupported whole-ball success claim?

Return findings by severity, with the exact equation and source location,
the failing implication or counterexample where possible, affected
claims/balls, and a concrete repair or verification needed. Distinguish
mathematical errors, implementation errors, incomplete evidence, and
performance limitations. A passing replay is valuable but is not an
independent derivation of a bound.

## 11. Reproduction and integrity checks

Run from the repository root or the extracted review archive root.
Use a fresh output filename for each independent replay. The recorded
environment above is the reference; platform/library differences can
change proposals, pattern numbers, and timings. They must not weaken
strict acceptance conditions.

Create an environment using a Python compatible with the pinned packages:

```sh
python3 -m venv .venv-tc-review
.venv-tc-review/bin/pip install -r proof/theorems/TC_triple_classification/family_neighbourhoods/requirements.txt
```

Run the eleven existing tests:

```sh
VECLIB_MAXIMUM_THREADS=1 .venv-tc-review/bin/python proof/theorems/TC_triple_classification/family_neighbourhoods/test_native.py
```

They check equation/Jacobian normalization against direct matrix
arithmetic, product-point actions and windings at all three anchors,
malformed actions, graph exhaustion/caps, residual covariance and fixed
residual cancellation examples, index/binding handling, nonfinite norms,
preservation of a known zero by the coupled contraction, model conversion
rounding, and fine-graph pruning/caps. They do not prove the universal
analytic inequalities or validate every Stage C edge.

Priority replay (expected exit 0, 1864 classified and 2200 empty):

```sh
VECLIB_MAXIMUM_THREADS=1 .venv-tc-review/bin/python proof/theorems/TC_triple_classification/family_neighbourhoods/run.py \
  --indices 1864 2200 --workers 2 --output review-priority.jsonl
```

All thirteen cases (expected exit **2**, with only 2300 unresolved):

```sh
VECLIB_MAXIMUM_THREADS=1 .venv-tc-review/bin/python proof/theorems/TC_triple_classification/family_neighbourhoods/run.py \
  --indices 100 500 1100 1500 1700 1864 1879 1881 1900 2200 2300 2500 2700 \
  --workers 4 --output review-all13.jsonl
```

The earlier standalone deployment smoke replay covered 2200, 500, and
1700, exercising the three new mechanisms. It returned empty, empty,
and classified, in 6.882, 20.863, and 29.602 seconds respectively with
three workers. The final original archive differed from that extracted
smoke-tested version only in a report wording correction; all 27
acceptance-source hashes matched and all 38 final archived files were
checked. The sidecar records this qualification explicitly.

To check archived file hashes without executing the certifier, use this
in an extracted review archive. It verifies the preserved deployment
files and the extra review files separately:

```sh
python3 - <<'PY'
import hashlib, json
from pathlib import Path
root = Path.cwd()
for name in ('DEPLOYMENT_MANIFEST.json', 'REVIEW_MANIFEST.json'):
    manifest = json.loads((root / name).read_text())
    for relative, expected in manifest['files'].items():
        actual = hashlib.sha256((root / relative).read_bytes()).hexdigest()
        assert actual == expected, (name, relative, actual, expected)
    print(name, len(manifest['files']), 'file hashes verified')
PY
```

Check the acceptance binding and the stored result accounting with the
installed runtime. This is an integrity check of existing evidence,
not a replay of its mathematical inequalities:

```sh
.venv-tc-review/bin/python - <<'PY'
import collections, gzip, hashlib, json, sys
from pathlib import Path
p = Path('proof/theorems/TC_triple_classification/family_neighbourhoods')
sys.path.insert(0, str(p.resolve()))
import run
receipt = p / 'results/native_coupled_fine_original_balls.jsonl'
manifest = json.loads(receipt.with_suffix('.jsonl.manifest.json').read_text())
current = run.binding(run.DEFAULT_ATLAS)
assert current['id'] == manifest['id']
rows = [json.loads(line) for line in receipt.read_text().splitlines()]
assert len(rows) == len({row['index'] for row in rows})
assert {row['index'] for row in rows} == set(manifest['requested_indices'])
records = json.loads(gzip.decompress(run.DEFAULT_ATLAS.read_bytes()))['seeds']
for row in rows:
    record = records[row['index']]
    assert row['binding'] == current['id']
    assert row['radius_hex'] == float(run.SC.Ball(record).r).hex()
    assert row['seed_sha256'] == hashlib.sha256(json.dumps(record, sort_keys=True).encode()).hexdigest()
    patterns = row['patterns']
    assert len(patterns) == row['patterns_after_column_filter']
    counts = collections.Counter(item['status'] for item in patterns)
    if row['status'] == 'CERTIFIED':
        assert counts['CERTIFIED'] and set(counts) <= {'CERTIFIED', 'EXCLUDED'}
    elif row['status'] == 'CERTIFIED EMPTY':
        assert set(counts) <= {'EXCLUDED'}
    else:
        assert row['status'] == 'NOT ESTABLISHED' and 'claim' not in row
    print(row['index'], row['status'], dict(counts))
assert sorted(row['index'] for row in rows if row['status'] == 'NOT ESTABLISHED') == [2300]
print('Binding, original record/radius identity, and all 13 result rows verified.')
PY
```

For the eventual Rusty list, provide `--index-file remaining-indices.txt`
(JSON integer array or whitespace/comma-separated integers with optional
`#` comments). Duplicate indices and out-of-range values are rejected.
No default survivor list is inferred. Keep the output JSONL and adjacent
manifest together; a partial run does not cover missing requested indices.

`--resume` checks existing row bindings and retains completed rows,
**including unresolved rows**. To retry an unresolved case after changing
the method, use a new output path. A new run manifest records the current
requested set, workers, and cap settings. Each worker has its own Arb
context, with numerical library thread pools defaulting to one thread.

Resource caps include C1's 4,096 boxes, 2,000,000 torus bins, 6,000 coarse
labels, 300,000 coarse undirected candidate edges, 500,000 quotient
cliques, 5,000,000 quotient-search steps, and a default per-ball cap of
500 patterns. The optional label search has a 1,000,000-step cap. The
fine fallback permits 6,000 bins and 5,000,000 candidate edges per
pattern. Caps supply no emptiness certificate; an optional capped test
may be bypassed only if a different valid certificate closes the case.

The substantive unfinished work is to close the two 2300 patterns,
obtain and run the actual surviving-index set, and complete the separate
global combination and X-ball obligations. The current evidence supports
the twelve listed whole-ball conclusions and the sufficient method;
it does not support universal deployable success yet.
