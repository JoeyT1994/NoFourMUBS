# Independent review: cover preservation, contractions, and exclusions

Date: 1 November 2026. Reviewer scope: the frozen sources in
`TC_native_review_20261101/code/proof/theorems/TC_triple_classification/family_neighbourhoods`,
plus the `all_cliques` implementation, the relevant clustering implementation of
the local tests (Stage C in the code), and the fixed geometry constructor. No frozen source was edited.

## Verdict within this scope

**Verified, conditional on the enclosures of the local tests at the actual call
sites and the supplied whole-ball model.** No unsound discard of a genuine
completing basis was found in the cover, contraction, scalar exclusion, refit, or
fine-bin code reviewed here. This verdict does not independently certify the
floating-point error theorem of the local tests, its input preconditions, the
enclosure of H (`patches.normal_form`), the symmetry-forcing routine, or analytic
recognition. Those are separate
dependencies, not consequences of successful regression tests.

There is no critical or major finding in the functions assigned to this review.
The horizontal geometry requirement described below is material and verified
for the production constructor. Arbitrary replacement models would not have
the same guarantee.

## 1. Preservation of every actual column and basis

### 1.1 Gauges and closed bins

`native_cover.py:65–156` uses the whole-ball H model in its horizontal row
gauge. A corresponding common row rephasing of K preserves all the triple
conditions. Each K column can then independently be dephased for the torus of
the local tests and later represented by a mean-zero real phase lift. Both changes
preserve the rays and their mutual orthogonality.

For a closed five-coordinate bin of half-width `a = pi/M`, its displacement
before projection is `(0,d1,...,d5)` with each `|dj| <= a`. The squared norm
after subtracting the mean is a convex quadratic on the cube, so its maximum is
at a vertex. Direct rational evaluation of the 32 vertices gives
`(29/6)*a^2`, attained when the five signs split 3–2. Thus the code's
`rho = (pi/M)*sqrt(29/6)` encloses the entire closed bin, including its
boundary. No open-cell assumption is used.

`native_cover.py:145–152` selects an integer winding for each coordinate,
subtracts it in Arb, and projects off the mean. The integer need not be the
mathematically nearest winding for soundness: any selected integer gives a
legitimate lift, and the subsequent Arb norm measures the actual selected lift.
The code does not infer a distance from floating-point nearest-root selection.

### 1.2 Labels, colours, and quotient cliques

The label radius of the local tests is strictly below 0.1 cycles. Two points in one
such label have phase lifts whose difference norm is below `4*pi*0.1`.
The exponential map is 1-Lipschitz in radians for unnormalised unit-entry
vectors, whereas two orthogonal length-sqrt(6) vectors are distance sqrt(12)
apart under every relative scalar phase. Therefore one label cannot contain
two orthogonal columns. This justifies the absence of diagonal graph edges.

`native_cover.py:88–103` partitions each proposed colour into independent
sets of the necessary label graph. In particular, incomplete Newton-root
proposals cannot silently identify two genuinely orthogonal columns: their
necessary graph edge forces distinct final colours. The assert at line 103
is a consistency check, not the sole mathematical justification.

An actual six-column basis therefore supplies six distinct colours and all
15 edges in the quotient graph. `seed_cover.py:130–148` enumerates all
six-cliques by the standard increasing-vertex recursion. Both its step and
clique caps raise instead of returning a truncated list.

### 1.3 Arc consistency and cluster replay

`native_cover.py:110–121` preserves an actual label tuple inductively. For
each of its labels, its other five actual labels provide the required
neighbours in its own colour pattern. Taking the union over patterns does
not weaken this preservation argument. Rebuilding the quotient graph and
enumerating its six-cliques again cannot remove that tuple.

The replay at `native_cover.py:130–140` reproduces `stagec.cluster`'s
greedy assignment: the same first unassigned midpoint, the same exact
integer wrap modulo 192, the same float conversion, mean subtraction,
row-wise norm, and radius comparison. It additionally checks that every
replayed first midpoint equals the stored centre and that every bin receives
an assignment. A mismatch raises. Float membership here is a deterministic
partition choice. The enclosing label radius of the local tests, with its error
margin, is what makes the chosen partition a cover. The later Arb radius is rebuilt
from each bin itself.

### 1.4 Edge removals and complete label search

`native_columns.py:127–135` bounds the complex orthogonality sum by

`|S0| <= r ||Dw S0|| + sqrt(6)(ea+eb) + (||Tb-Ta||r+ea+eb)^2/2`.

The Jacobian is the real 2-by-4 Jacobian and the quadratic remainder follows
from `|exp(it)-1-it| <= t^2/2`. `native_cover.py:159–174` removes an edge
only on the strict Arb negation of this necessary inequality. Deleting
edges cannot create new six-cliques, so preparing only colours in original
six-cliques is safe.

`native_cover.py:177–211` applies the same argument to a whole closed fine
bin (carrier zero, error rho) against a previously bounded reference column.
It removes that bin only if one required orthogonality is impossible. Its
rebuilt contractor has the same v0 and T, making intersection with the old
epsilon valid. Retaining the original cover object after this local
improvement can only restore extra possibilities. It cannot lose a true K.

`native_cover.py:214–239` recursively searches the full label graph for the
six specified colours. A completed empty search is an exclusion. A cap
returns `UNRESOLVED`, never `EXCLUDED`, and a found clique is a proposal only.

## 2. Taylor inequalities and signs

### 2.1 Normalisations

For an H column and a K column, the equation is

`f = (|Hc† v|^2-6)/6 = (1/3) sum_{a<b} cos(va-vb-Hac+Hbc)`.

This is exactly the `z/3` convention in `native_columns.build`, the mixed
terms in `conditioned_columns.build`, and the last 36 entries of the full
96-equation layout. H/K orthogonality equations are the unnormalised complex
inner products, and their real and imaginary parts use no factor 1/3 or 1/6.

For mean-zero six-vectors d,
`sum_{a<b}(da-db)^2 = 6||d||^2` and `|da-db| <= sqrt(2)||d||` give

`||D^2 f|| <= 2`, and `|R3(f,d)| <= sqrt(2)||d||^3/3`.

For a complex orthogonality sum, the modulus of its cubic remainder is at
most `sum_j |dj|^3/6 <= ||d||^3/6`. A real functional with coefficients
`(a,b)` on real and imaginary parts multiplies this by `sqrt(a^2+b^2)`.
All reviewed uses have these exact constants and coefficient norms.

### 2.2 Single-column contractions

`native_columns.py:32–107` keeps the arbitrary inverse proposal A, its
defect `C-A Jv C`, the full residual `A f0`, the carrier defect
`A(JH U+Jv T)`, and `A JH X`. There is no requirement that the proposed
centre be a zero or that A be an actual inverse.

With `h = H2[w,w]/2+Xz` and `v-v0 = Tw+e`, expansion of `A f = 0` gives a
bound for e. The signed w-w Hessian must be added to `A JH H2` before
taking its norm. The code does this with the same sign. The w-e term has
coefficient one and the diagonal w-w/e-e terms have coefficient one half.
The alternative quadratic form in `(w,v-v0)` is an algebraic rewriting of
the same Hessian, so taking the smaller of its bound and the affine-error
bound is legitimate. This does not change the separately retained linear
carrier defect.

The normal correction h contributes the exact linear terms already
accounted for above. Its remaining quadratic contribution is bounded by
`2 a n+n^2`, and the cubic remainder uses `a+n`. This follows directly from
the Hessian bound 2. The code's `ncol`, `dcol`, and `ucol` correctly use
the mean-zero six-row slice of each H column.

`native_columns.py:138–162` expands the same identity on a fine bin
`v-v0 = d+u`, `||u|| <= rho`. Its signed constant is

`-A f0 + (C-AJvC)d - (1/2)d^T QEE d`.

The w coefficient is `-A JH U-T-QWE_plain*d`, and the u coefficient is
`C-AJvC-QEE*d`. Those are the code's `centre`, `plain_linear-wd`, and
`defect-qd`. The remaining mixed w-u and u-u terms and all H-normal and
cubic terms are present. Taking the maximum over all bins gives a valid
initial affine-error bound even when their union is disconnected.

Each accepted iteration only proves that every zero in the preceding
enclosure lies in a smaller one. No root existence or uniqueness is used.

### 2.3 Orthogonality-conditioned columns

`conditioned_columns.py:12–115` adds the real and imaginary inner products
with already enclosed reference columns. Its lift includes the reference
carriers, and the target carrier is then proposed using that lift. Every
reference epsilon enters through its own linear sensitivity and every
target/reference block pair enters the signed quadratic table. The
plain-coordinate alternative zeroes only the target carrier, as required.

The target/reference orthogonality cubic bound uses the smaller of a
carrier-difference enclosure and the sum of the independently valid total
phase radii. Both are valid. `contract` translates the old epsilon to the
new carrier by `||Tnew-Told||r`. `refine_pattern` updates references
sequentially using bounds already proved. It does not assume all final
bounds simultaneously.

The choice between two valid carriers may use epsilon or total phase
radius as a heuristic. Either selected pair `(T,epsilon)` remains valid,
and their epsilons are not intersected across different carriers.

### 2.4 Coupled contraction and scalar exclusion

`joint_basis.py:14–66` uses K row order `6*r+c`. Its projector is
`delta_{c,d}*(delta_{r,s}-1/6)`, which removes each column's mean.
The extraction `range(c,36,6)` and the final `rows[c::6]` both follow that
same order. H2 columns are ordered `4*a+b`, as created by
`wholeball.derivative2`, and all 4-by-4 reshapes match it.

For each scalar output, the coupled quadratic bound includes exactly the
six necessary terms:

1. `(r^2/2)||L^T B L+(A JH H2)_i||`,
2. `r E ||L^T B K||`,
3. `(E^2/2)||K^T B K||`,
4. `r N ||L^T B H||`,
5. `E N ||K^T B H||`,
6. `(N^2/2)||H^T B H||`.

The full residual, inverse defect, linear carrier defect, and Xz term
remain present. H-orthogonality, K-orthogonality, and mixed cubic terms
use their respective constants and correctly correlated differences.
All new column epsilons are computed from the preceding enclosures before
intersection, so simultaneous updates are valid by induction.

`basis_exclusion.py:8–60` expands an arbitrary real functional y of the
same 96 equations. Its w-w Hessian includes `y JH H2`, its linear K terms
retain six separate column epsilons, and the remaining H-normal quadratic
terms are conservatively bounded using the full signed Hessian norm.
The exclusion is only the strict Arb inequality `abs(y F(q)) > rhs`.
The numerical regularised solves and scaling propose y and do not accept
or discard a pattern by themselves.

## 3. Interfaces and the fine fallback

### 3.1 Refit translations

`pattern_proposals.py:9–41` replaces expansion points, but translates every
retained closed bin in Arb by `old_v0-new_v0`, selects new integer 2pi
windings, removes the scalar mean, and rebuilds every contractor and radius.
Every column still has a physical representative in one of these bins.
Residual size, fit success, and the chosen branch of phase wrapping are
not acceptance tests.

### 3.2 Changed carriers

After `joint_basis.refine` replaces T, its output intentionally contains
only `model`, `v0`, `T`, and `Tnorm`, with the new bounds. In
`run.py:89–97` only `basis_exclusion.exclude` and `moving_symmetry.classify`
receive that output, and neither reads the old cached single-column Hessian
coefficients. If fine refinement is attempted, `run.py:98–105` starts
again from the original cover and invokes `contract_patterns` afresh.
There is no stale-contractor use across this carrier change.

### 3.3 Fine-bin colour bookkeeping

`fine_patterns.py:29–91` uses original integer bin midpoints and retains
the original global colour identifiers, even though its temporary label
graph concatenates only six colour groups. `offsets` is used only for the
temporary graph blocks. The returned bin arrays remain globally indexed
by colour, so `run.py:102–104` supplies the same original clique to the
fresh contractors and recursive final test.

An empty `bin_indices[c]` means that no actual column of colour c is
represented in the original valid cover. Thus `fine_patterns.py:33` is
a sound exclusion of a pattern requiring that colour. Arc consistency
and the subsequent complete label search have the preservation argument
from Section 1.3. A search cap leaves a cover and never removes an actual
tuple. A bin cap or edge cap returns `UNRESOLVED`.

The pair cache is keyed by the ordered colour pair and belongs to the
same original immutable cover and H model. At the relevant call site the
cover is the original `cover`, not the translated `cc` from the fit. Its
bin arrays and H model therefore do not change between cached pair tests.
The refined recursive call has `allow_fine=False`. The cache cannot be
mistakenly reused with refitted bins or another H model in this driver.

The caller ignores the potentially reduced clique list returned by
`contract_patterns` after fine refinement and may examine a pattern
already shown impossible by an edge removal. This is harmless extra
work: all its columns were prepared, and any later universal statement
about that empty pattern is vacuous.

### 3.4 The 21-column and horizontal invariants

`joint_basis.py:35` explicitly requests the 21 columns of X.
`patches.normal_form` always obtains X from `wholeball.geometry`:
`FREE` is the 25 dephased coordinates minus the four seed coordinates,
and the frozen change-of-basis matrix is 21-by-21. No record field can
change this width. U is a combination of the fixed horizontal V and X,
and H2 is `X*h2`. Hence Q0,U,H2,X are all column-mean-zero (indeed row- and
column-mean-zero) in their exact underlying meanings.

This also justifies using projected H-column differences in the cubic
H-orthogonality remainder. **Remark:** this invariant is an actual
precondition if the low-level functions are reused with externally
constructed models. The existing random-model test does not establish
correctness for arbitrary nonhorizontal models. A future public generic
API should state or check horizontal geometry and X width. The frozen
`run_ball -> normal_form` path already supplies both invariants.

## 4. Acceptance, exceptions, and logical scope

The new arithmetic acceptance gates reviewed here are strict Arb
inequalities. Minima/maxima either choose among proved upper endpoints or
choose between separately valid enclosures. Binary64 SVD/least-squares
values propose matrices, and certified Gram/LDL norms and residual/defect
bounds justify their subsequent use. The direct-route epsilon thresholds
in `run.py` only choose which rigorous symmetry attempt to run.

All caps found here either raise or return an unresolved status.
`run_ball` catches per-pattern arithmetic/runtime failures as
`NOT ESTABLISHED` and catches every outer exception without retaining a
claim. A float heuristic failure cannot produce an empty verdict by
dropping its unfinished pattern. The inherited decisions of the local tests still
require their own error theorem and call-site preconditions.

`run.py:134–138` accepts the ball only when every remaining pattern is
`CERTIFIED` or `EXCLUDED`. `CERTIFIED` means a universal classification
of every actual completion. It does not assert existence. A pattern that
is empty but passes symmetry forcing remains harmless. If no patterns
remain, or every pattern is excluded, no actual K remains, so
`CERTIFIED EMPTY` is the correct logical consequence. A complete torus
cover with zero surviving bins is the simplest instance of the same
argument.

## 5. Answers to the assigned questions

| Brief question | Status within this review | Reason / limitation |
|---|---|---|
| 1 | **Verified for the cover, contractions, refits, and exclusions** | Every actual K survives these operations. Symmetry windings, recognition, application of the local tests, and the enclosure of H require the other review components. |
| 7 | **Verified for the eight modules reviewed here** | Normalisations, `6*r+c` K ordering, and `4*a+b` H2 ordering agree. The symmetry-specific functions are outside this component. |
| 10 | **Verified for the new gates, conditional on the local tests** | Strict Arb or exhaustive graph decisions. Caps and exceptions fail closed, and empty fine-bin colours are valid exclusions. The input guard of the local tests is audited separately. |
| 11 | **Verified** | No stale carrier-dependent coefficients are reused, fine indices remain global colour indices, and production X has exactly 21 columns. |
| 12 | **Verified** | Existence is never claimed, so classifying an empty pattern is vacuous and sound. |
| 13 | **Verified, conditional on the dependencies of each route** | Empty covers/pattern lists imply no completion. A root or sub-cell wrapper may accept either universal verdict when it has established the corresponding represented domain. Wrapper domain checks are audited separately. |

## 6. Independent executable checks

The checks are additional evidence for implementation mistakes, not
substitutes for the preceding derivations. They use the frozen sources
and the supplied exact dependency versions (python-flint 0.9.0,
NumPy 2.2.6, SciPy 1.17.0).

- `cover_checks/check_cover_discrete.py` checks the exact rational 29/6
  bin-radius factor, compares exhaustive six-cliques against direct
  combinatorial enumeration on 256 graphs, checks fine arc consistency
  and label search on 256 graphs against all 64 six-colour assignments
  in each graph, and checks capped/empty-colour paths. **PASS.** All 81
  actual label cliques in those graph fixtures were preserved.
- `cover_checks/check_contractor_zero.py` constructs the exact product
  triple using rational multiples of pi in Arb. It creates an explicit
  horizontal affine/quadratic model containing that zero at specified
  rational w,z, and carries it through bin localisation, the certifier's
  single-column contraction, two- and four-reference conditioned refinement, joint
  contraction, and scalar exclusion. **PASS.** The joint contraction took
  13 iterations, and every exact column error and phase displacement remained
  strictly inside the corresponding returned bound. The scalar exclusion
  retained the known zero. The minimum verified epsilon-minus-actual-error
  margin in the joint result was approximately 1.9469e-4.

Machine-readable outputs are `cover_checks/discrete_results.json` and
`cover_checks/contractor_zero_results.jsonl`.

## 7. Dependencies checked and trusted

**Checked directly:**
- the cited implementation and control flow,
- the single/mixed/orthogonality Taylor constants,
- signed quadratic identities,
- the index conventions,
- exact-bin geometry,
- graph enumeration logic,
- colour/label/fine-bin preservation,
- the width of X in the enclosure and the horizontal-subspace construction,
- the use of the shared norm routines as enclosing rather than numerical
  estimates.

**Trusted or assigned elsewhere:**
- the global binary64 error proof of the local tests and its applicable input
  bounds,
- the enclosure of H (claim C1 in the code) and the whole-ball theorem,
- global atlas and tree coverage,
- full symmetry covariance and the averaged symmetry inequality,
- recognition of balanced triples,
- the sub-cell record's branch semantics. No full original-ball replay was performed by
this component, and no global classification theorem is asserted here.
