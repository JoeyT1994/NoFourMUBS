# Independent review of the native whole-ball certifier and recognition

**Date:** 1 November 2026.  
**Input:** `TC_native_review_20261101.zip`.  
**Frozen binding:** `aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7`.

## 1. Result and precise scope

**The native all-completions argument is sound for a record's represented analytic Hadamard branch, conditional on the stated C1/normal-form theorem and Stage C error theorem with its input hypotheses. Recognition, covariance, the averaged symmetry bound, and the reviewed cover/contraction/exclusion implementation have been checked independently.**

**One major proof interface remains unclosed in the submitted package:** a child record's seed-coordinate ball contains a parent cell, but the frozen checks do not identify the child's analytic Hadamard branch with the parent's branch, even modulo the equivalences sufficient for classification. Question 15 therefore cannot be marked verified. This is a missing implication in the tree application, not a counterexample to the classification theorem or an exhibited falsely classified ball.

The recognition argument's appeal to conjugation has a minor exposition gap. This return supplies an explicit unitary equivalence that closes it without permitting antiunitaries. The default symmetry bound is also valid, but the proof document should describe it as an integrated derivative estimate, as its section 6 does.

No frozen input file was edited. All 57 file hashes in the package manifest match; all 27 frozen binding sources match. Reconstructing the binding with the *declared* atlas hash gives the binding above. The atlas itself was unavailable and has not been hash-verified or replayed.

The 11 supplied native unit tests pass. New exact checks cover every legal symmetry action and the product-sign recognition identities. Additional graph and exact-product-zero regressions pass. These checks supplement the proofs below and in the annexes; they do not substitute for the inherited analytic or floating-point theorems.

### Meaning of the verified native statement

Let S be a record for which the supplied theorems establish its chosen branch

\[
Q_S(w)=Q_{0,S}+U_Sw+\tfrac12H_{2,S}[w,w]+X_Sz_S(w),
\quad \|w\|\le r_S,\quad \|z_S(w)\|\le\tau_S.
\]

Assume the Stage C hypotheses hold for the actual enclosure used. Then a successful frozen native call proves:

- `CERTIFIED`: every completing basis K for every represented H is of the recognized type. Existence of K is not asserted.
- `CERTIFIED EMPTY`: there is no completing K anywhere on that represented branch ball.

An accepted child record proves these same statements for **its own** represented ball. Applying the statement to a parent cell additionally requires identifying the two represented branches on their common seed domain. That is the specific outstanding interface.

The overall atlas classification, plane witnesses, ordering rules, X-ball driver/core and Tao exclusion were outside this request's review scope. No global classification or no-four-MUBs theorem is certified by this review alone.

## 2. Findings by severity

### Critical

No critical error was found within the audited scope. This does not assert that every external dependency or deployment artifact has been checked.

### F1 — Major: seed containment does not by itself identify the represented branch

**Locations.**

- `refs/10_plane_frontier_certificate_at_914919b.py:26–43`, especially 30 and 35–40 (`cell_geometry`).
- The same file, lines 53–74 (`build_record`).
- `code/TripleClassification/code/onetree.py:90–110` (`native_check` below level zero).
- `code/proof/seed_atlas/cert/seedcert.py:182–189` (`centre_sides`).
- `code/proof/seed_atlas/cert/patches.py:26–44` (`normal_form`).
- `Z_completion_hessian_return/THEOREM.md` section 1 and its uniqueness conclusion in section 4.
- `ZT_return/REPORT.md:529–535`, explicitly warning that independent side solutions and orientation do not identify the original labelled branch.
- `refs/07_TREE_PROOF.md`, the inherited statement and its application after Lemma 1.

**Failing implication.** The geometry check proves

\[
\theta_{\rm parent}(C)\subseteq B^{\theta}_{\rm child}\pmod{2\pi}.
\]

The tree application needs, for every such seed, the corresponding parent Hadamard matrix to be represented by the child record, or to be equivalent to one that is. The submitted checks do not establish that conclusion.

The child P is used to propose the two side roots; the Krawczyk test certifies roots near those proposals, and the normal-form theorem extends the local germ through the resulting centre. The theorem gives uniqueness **inside that normal tube**, not uniqueness among all same-seed, same-orientation completions. In `build_record`, beginning the new numerical solve from the parent's side phases is a useful proposal, but it is not a certified continuation path. The subsequent checks compare no common actual phase point with the parent's tube.

Literal labelled-H uniqueness from seed and orientation is already too strong: permuting the last three columns or rows changes the labelled side matrices while preserving the seed and side signature. Such permutations are harmless for this classification. Therefore this observation is **not** a counterexample to the required equivalence-class conclusion. The missing step is either a supplied theorem proving that all permitted branch choices are equivalent in the needed way, or a certificate identifying the particular parent and child branches.

The packet refers to a matched reconstruction and an external `SPEC.md`, but it does not supply the global same-seed, same-orientation uniqueness-up-to-permutations result needed to dismiss this issue. The local-germ and normal-form conclusions supplied here do not establish it without an additional identification argument.

**Affected claims.** Transport of both `CERTIFIED` and `CERTIFIED EMPTY` from native sub-cell records to their parent cells; the analogous inherited transport in trees of sub-balls. The original-record native claim and level-zero native leaves do not require this new parent-child identification. This finding does not invalidate the shared symmetry helpers. Its application to the separate X-ball driver is not assessed here.

**Concrete repairs.** Either:

1. State, supply and bind the exact strict-domain reconstruction theorem that identifies same-seed, same-orientation completions up to peripheral row/column permutations, then explicitly transport all completing K under those operations; or
2. Add a certified overlap witness between the parent and child normal forms. A sufficient new lemma, proved in `subcell_overlap_lemma.md`, is summarized in section 6 below. It avoids needing global side-factor uniqueness.

The second repair requires checking actual witnesses for the relevant records. The lemma alone does not retroactively validate existing tree receipts.

### F2 — Minor, repaired in this return: conjugation is unnecessary in recognition

**Location:** `refs/01_recognition_CHECKPOINT_r0153.md:645`, with the product case of section 8.

**Issue.** The sentence relating the two quadratic signs by simultaneous conjugation does not, as written, show equivalence under common unitaries, column monomials and basis permutations unless antiunitaries are also explicitly permitted. The supplied statement does not explicitly add antiunitaries.

**Repair and checked conclusion.** Let normalized H2 and F3 be the two- and three-dimensional Fourier matrices, let Y2 be the qubit Y basis, and put

\[
D_\sigma=\operatorname{diag}(\omega^{\sigma t^2}),\qquad
P_\sigma e_s=e_{\sigma s},\qquad \sigma\in\{1,-1\}.
\]

Then

\[
F_3D_\sigma F_3=i\sigma D_{-\sigma}F_3P_\sigma D_{-\sigma}.
\]

The common unitary H2 tensor F3 interchanges the coordinate and Fourier ray bases and takes the third product basis of sign sigma to the one of sign minus sigma, up to column monomials. Its qubit factor preserves the Y-basis rays. Exchange the first two bases afterward. This proves the desired equivalence without conjugation. Both Gauss identities and the qubit identity were checked in exact integer rings.

**Affected claims:** the last identification in `CERTIFIED` recognition, including any driver using the same recognition argument. It does not affect emptiness certificates. The mathematical gap in the sentence is closed by the explicit replacement proof here.

### F3 — Minor: distinguish the averaged bound from a pointwise segment bound

**Locations:** `family_neighbourhoods/PROOF.md` sections 4 and 6; `moving_symmetry.py:181–259`.

**Issue.** Section 4 describes the older symmetry-pair segment route. The default code uses the integrated derivative on the segment from the group average to the solution. Its q need not bound every individual Jacobian along that segment.

**Repair.** Present section 6's averaged inequality as the default theorem and label the other route separately. The averaged proof has been checked term by term and is sound. This is the previously identified documentation issue, not a newly found acceptance error.

**Affected claims:** interpretation of the reported symmetry q and exposition of `CERTIFIED`; no demonstrated change to acceptance soundness.

### R1 — Remark: raw `run_ball` results retain an external Stage C hypothesis

**Locations:** `run.py:110–145`; `stagec_guard.py:29–55`; `onetree.py:109–110`.

`run_ball` does not invoke `stagec_guard.check`. The one-tree native wrapper does invoke it, and its failure prevents acceptance. Therefore the wrapper has the required gate; a bare native row is not, by itself, evidence that the gate was evaluated. The brief already makes the native claim conditional on the Stage C hypotheses, so this is a scope clarification, not a new counterexample.

For standalone use, require the guard result with the record binding, as the tree assembly does, or integrate an argument-level guard into the Stage C enclosure constructor. Guarding the exact argument object used would also avoid relying on recomputation of the enclosure. The supplied 2,775-row inventory contains summary counts rather than guard receipts; its actual input preconditions were not independently replayed here.

### R2 — Remark: the atlas replay input was unavailable

The omitted `seed_atlas_certificate.json.gz` was not in the attachment. The exact repository URL in the brief returned 404 through both public retrieval and the connected GitHub route; repository metadata retrieval also returned 404. Narrow filename searches did not locate a separate accessible copy.

Consequently no fresh native ball receipt was produced for 2254, 1864, 491 or 2300, and no original or level-one one-tree native replay was performed. The included 13 full receipts were checked for verdict accounting, and the complete 2,775-row summary was counted, but neither operation is a recomputation of those certificates.

## 3. Answers to all sixteen questions

Here **Verified** means the stated implication/code path was checked within the inherited dependencies and scope just stated. It does not mean every deployed input was replayed.

| No. | Status | Answer |
|---:|---|---|
| 1 | **Verified for a represented branch; tree application has F1** | Every actual K remains covered through colours, arc consistency, exact-bin replay, winding selection, refits and fine fallback. Closed bins and horizontal/dephased gauges are handled correctly. Steps 1–6 imply the two native conditional verdicts. Passing from a child record to the parent's H-family is the separate unclosed implication in question 15. |
| 2 | **Verified** | Orbit normalization works for every actual balanced symmetry. Each Fourier-mode block is a 2-by-2 unitary, so its bottom row is a unit phase times the conjugate orthogonal complement of its top row. Thus (22) is global, despite the word “nearby” where it was first introduced. |
| 3 | **Verified** | The arbitrary top unit-entry circulants obey gamma(a)+gamma(b)=0. Their two cubic discriminants give (10)–(11), a uniform positive amplitude bound, and all required nonzero denominators. The dependent case forces gamma=0 and yields exactly the two alternatives of (26). |
| 4 | **Gap in the written sentence; repaired here** | Antiunitaries need not be included. F2 supplies a common unitary and basis transposition relating the two product signs. |
| 5 | **Verified under the intended equivalence** | A common unitary reanchors at H or K. The project explicitly permits permutations of the three bases; the target is their union of equivalence classes. State this convention explicitly in the final theorem. |
| 6 | **Verified** | Exponentiating the fixed-array relation supplies Q=diag(omega^labels) at I and Q equal to the row-permutation operator at H/K. Undoing the gauge conjugates Q. Its cube, balanced spectrum and two nonanchor three-cycles are exact. |
| 7 | **Verified within the requested native scope** | Each reviewed map, contraction, exclusion and symmetry inequality implements its mathematical step. K uses order 6r+c; H2 uses order 4a+b. The C1/normal-form and Stage C error proofs themselves remain inherited, as requested. |
| 8 | **Verified** | Covariance was derived for arbitrary phase arrays at all anchors, including reversed-pair conjugation. An exact factorized checker covers all 432,000 legal actions and the actual rational equation-action builder. |
| 9 | **Verified** | The averaged point is P-fixed and AF(xbar)=0 exactly. The projector ((I+G)/2)W, both valid H/K error bounds, and the integrated cubic coefficient are correct. No residual or endpoint term is missing. |
| 10 | **Verified conditional on Stage C's hypotheses** | New discards use strict Arb inequalities or exhaustive exact graph logic. Float heuristics select proposals or partitions; their correctness is not assumed. Caps/exceptions cannot produce exclusions. An empty original fine-bin colour is a valid exclusion of a pattern requiring that colour. R1 explains the raw-call guard condition. |
| 11 | **Verified** | Changed joint carriers are used only by tests that compute their needed coefficients afresh. Fine refinement preserves original global colour IDs and rebuilds contractors. The fixed normal-form constructor always makes X of width 21; records cannot change it. |
| 12 | **Verified** | A symmetry proof for an empty pattern is a true universal statement. There is no existence claim and no need to prove nonemptiness before using that route. |
| 13 | **Verified for the represented domain** | Empty bins, empty pattern lists, or complete pattern exclusion imply no K. `CERTIFIED` does not assert existence. `native_check` may accept either status after its required domain and Stage C checks. Domain transport below the root remains subject to F1. |
| 14 | **Verified at guarded call sites; deployed records not replayed** | The guard covers actual centre/frame/scalar bounds; constructor invariants bound the coarse and fine radii and midpoint arithmetic. Fixed bin constants are legitimate because the resolutions are fixed. Batching changes the number of independent edges, not a single-edge expression's error budget. Bare `run_ball` omits the guard; see R1 and section 4. |
| 15 | **Gap** | Seed containment and fresh C1/normal-form success do not identify the parent and child's selected analytic branches. Neither a global uniqueness-up-to-equivalence theorem nor a certified parent-tube overlap is supplied. F1 states the precise failing implication and section 6 supplies a sufficient repair. |
| 16 | **Verified for the child record's own ball** | Rebinding changes the atlas container/hash, not the native acceptance pipeline. The call still rebuilds C1, normal form, complete cover and every pattern, then the wrapper checks Stage C. It does not fix question 15. |

## 4. Stage C applicability and wrapper audit

This review checks **application** of the inherited Stage C error theorem, not a new proof of that theorem.

### 4.1 Enclosing the same H domain

`native_cover.model_stage_c_args` rounds Q0 and U to binary64 proposals, and bounds both errors in Arb. It encloses the quadratic and normal part by

\[
\tfrac12\|H_2\|r^2+\|X\|\tau.
\]

`seedcert.stage_c_args` additionally absorbs the radians-to-cycles centre rounding. It preserves row-major entries when forming per-column norms from `U.reshape(6,6,4)[:,i,:]`. The supplied original radius is enlarged only outwards for the enclosure. This is the same native domain, not a reduction to a smaller H ball.

### 4.2 What the guard checks and what construction guarantees

The guard checks dimensions, finite P/T, every frame entry bounded by one, the finite nonnegative scalars rcol/rH/nN/rF/radius below one, and an outward operator-norm bound for the centre below 1.01.

The remaining bin and label quantities are controlled at their actual constructors:

- Coarse resolutions are exactly 12, 24, 48, 96. Their largest half-width is 1/24 cycles. X, L and I therefore have the fixed uniform upper bounds tested by the guard. Its bound on I is conservative.
- `complete_cover` uses cluster radius .02; `stagec.cluster` refuses label radius at least .1. This also lies within the error proof's stated clustering-distance bound of .042.
- Fine midpoint labels are the original integer k/192 values, not reconstructed floating fits. Their radius is an outward version of sqrt(29/6)/192 cycles, below .1.
- The edge sum radii are below .2. `joint_filter` normalizes its proposed directions; the inequalities hold for any such real directions. Its reductions are within each edge, never sums over the batch of edges.

Thus checking fixed bin constants is not a failure to inspect a varying record field. Those constants describe the fixed grids actually used. An API permitting arbitrary resolutions or cluster settings would need a correspondingly general guard; the frozen driver does not use such settings.

`propose_roots` also calls Stage C on a floating centre, but its results only propose root colours. Completeness is re-established by the independently built complete cover and independent-set colour splitting. A mistaken or empty numerical root proposal does not prove emptiness. The acceptance-relevant Stage C calls are the complete cover and its coarse/fine necessary graph tests.

### 4.3 Native leaves

At level zero, `native_check` calls the frozen native routine on the original pinned atlas record and then requires the Stage C guard. Below level zero, it checks schema, record hash, cell identity and exact/Arb seed geometry, writes precisely that record into a one-seed container, temporarily substitutes a binding function for that container, and calls the same routine. The original binding function is restored in `finally`.

The only change in this path is the data container and its binding. No C1, cover, pattern, exclusion or symmetry test is bypassed. After either native call the wrapper rejects any status outside the two universal verdicts and requires the guard. Guard failure propagates to a failed leaf or an unsuccessful search, not a certificate.

This establishes question 16's equality of **per-record** claims. It does not turn seed geometry into matrix-branch geometry; that distinction is F1.

## 5. Main mathematical checks

The complete derivations and source references are in `recognition.md`, `symmetry_bounds.md` and `cover_contractions.md`.

### 5.1 Global recognition and positive amplitudes

After reanchoring, normalize each nonanchor three-cycle by successive applications of the actual order-three unitary. This produces cyclic coordinates directly. The transition is a 2-by-2 array of circulants; Fourier diagonalization produces unitary blocks

\[
\begin{pmatrix}
\alpha_t&\beta_t\\
z_t\overline\beta_t&-z_t\overline\alpha_t
\end{pmatrix},\qquad |z_t|=1.
\]

This form does not require dividing by alpha or beta, so it is valid even before positivity is proved. The top flat circulants imply gamma(a)+gamma(b)=0. For q=|gamma|^2, the two unit-circle cubic discriminants give

\[
q^2+18q-27\le0,\qquad 0\le q\le6\sqrt3-9,
\]

and consequently

\[
|\alpha_t|^2,|\beta_t|^2\ge
\frac{3-2\sqrt{6\sqrt3-9}}6>0.
\]

Dependent bottom-flatness coefficient rows force all ratios |alpha_t|^2/|beta_t|^2 to agree. Parseval makes them one, and the amplitude formula gives gamma=0. The remaining equal-modulus zero sum is an equilateral triple. Its two possible cyclic orientations give exactly constant w or the nonconstant quadratic product case. The full flat lift is fixed up to permitted phases and row-pair swaps. F2 supplies the last product-sign equivalence.

### 5.2 Exact covariance and the averaged symmetry estimate

The canonical action is a common row operation, column permutations and column phases for arbitrary phase arrays. On complex orthogonality residuals, an ordered-pair reversal conjugates the source residual; an anchored column phase multiplies it by a cube root. On squared transition moduli, these phases cancel and only the two column labels are permuted. These observations give exactly the implemented real/imaginary signs.

Writing xbar for the group average of the gauge-fixed solution, covariance gives

\[
Q_YF(\bar x)=0,\qquad AF(\bar x)=0.
\]

The exact fixed-residual cancellation explains why no numerical residual term is needed. The integrated displacement has first-argument projector

\[
B=\tfrac12(I+G)W,
\]

which is the one used in the signed midpoint Hessian and error terms. Both

\[
h_HN+h_KE_K\quad\hbox{and}\quad h\sqrt{N^2+E_K^2}
\]

bound the same error; taking the smaller is valid. For each Fourier frequency, integration of the endpoint majorant yields

\[
\int_0^1\frac{[(1-t)\beta_0+t\beta_1]^2}{2}\,dt
=\frac{\beta_0^2+\beta_0\beta_1+\beta_1^2}{6}.
\]

The nonnegative matrix majorant controls the operator norm of the integrated remainder. The strict final Arb q<1 therefore forces the moving component to vanish. The actual fixed-point equations then produce a balanced ambient unitary at any of the three anchors.

### 5.3 Cover and contractions

The closed-bin radius follows by maximizing the mean-zero squared norm at the 32 vertices of the five-dimensional phase cube: the maximum factor is exactly 29/6. Independent-set colour splitting preserves every six-column orthogonal tuple even when numerical root proposals are incomplete. Each arc-consistency deletion and completed label search preserves every actual tuple. All caps fail closed.

The mixed unbiasedness residual is (|H_c^*v|^2-6)/6, with Hessian constant 2 and cubic bound sqrt(2)||d||^3/3. The complex orthogonality cubic bound is ||d||^3/6. The reviewed native, conditioned and joint formulas retain their residuals, inverse defects, signed H2 contributions, all quadratic cross terms and the corresponding cubic bounds. Their contractions are implications about existing zeros, not existence assumptions.

Refits retranslate all bins in Arb. Changing a carrier also changes its valid error bound; cached coefficients for the old carrier are not reused downstream. Fine refinement retains original global colour indices. The X width and horizontal geometry required by the Taylor formulas come from the fixed normal-form constructor, not from unchecked record metadata.

## 6. A proved sufficient repair for F1

This is a new lemma supplied with this review; it has not been run on the unavailable atlas or deployed child records.

Let p_i(w)=Q0_i+U_iw+H2_i[w,w]/2 for parent p and child c. Align the child by a fixed peripheral row/column permutation Pi and an integer winding N in the horizontal gauge. Choose a seed theta-star strictly inside both lifted ellipsoids, with coordinates w_p,w_c and exact seed equality after the winding. Put

\[
X_p^+=(X_p^TX_p)^{-1}X_p^T.
\]

A sufficient outward certificate is

\[
\left\|X_p^+\left(\Pi p_c(w_c)+2\pi\operatorname{hor}N-p_p(w_p)\right)\right\|
+\|X_p^+\Pi X_c\|\tau_c<\tau_p.
\]

Exact seed equality and horizontal gauge put the actual difference in range X_p. The inequality puts the aligned child point in the parent's normal tube. It is an exact Hadamard point, so it solves the parent's projected equation. Parent uniqueness identifies it with the parent point. Strictness and continuity give equality on an open common neighbourhood. Both branches are analytic, and the lifted ellipsoid intersection is convex, so the identity theorem gives equality throughout its interior; continuity includes its boundary.

Thus **one successful overlap witness per required identification** suffices to transport both classification and emptiness over the entire overlap. Failure of this sufficient bound is inconclusive; one may sharpen a value enclosure or use a chain of overlapping tubes. The full proof, exact winding conventions and certificate pseudocode are in `subcell_overlap_lemma.md`.

## 7. Evidence actually obtained

| Check | Result | What it establishes / does not establish |
|---|---|---|
| Package manifest | **57/57 match** | Input integrity; no frozen file changed. |
| Frozen source manifest | **27/27 match** | The audited sources match the receipt manifest. |
| Reconstructed binding | **Matches aaab342c…** | Uses the declared atlas hash; does not verify absent atlas bytes. |
| Supplied native tests | **11 pass** | Local regressions. The missing-atlas binding test fails closed, but this is not an atlas checksum replay. |
| Exact covariance | **PASS** | All 432,000 legal actions by exact factorization; 8,800 equation-action builder cases, not necessarily distinct matrices. |
| Exact product recognition | **PASS** | 54 nonconstant dependent lifts, both sign identities and the qubit identity. |
| Independent graph checks | **PASS** | 256 six-clique comparisons and 256 six-colour graph fixtures; all 81 actual fixture tuples preserved. |
| Exact-product-zero contractor check | **PASS** | The known rational-pi zero survives native/bin, conditioned, joint and scalar tests. Joint refinement uses 13 iterations, with minimum verified final error margin about 1.9469e-4. |
| Full included receipts | **13 consistent** | Verdict accounting agrees with their pattern statuses; not a fresh numerical replay. |
| Whole-atlas summary | **2,775 rows, indices 0–2774** | 272 CERTIFIED, 2,101 CERTIFIED EMPTY, 402 NOT ESTABLISHED, all carrying the stated binding. These are recorded counts. |
| Named atlas balls and native tree leaves | **Not checked by fresh replay** | Missing atlas and inaccessible repository prevent these runs. |

The covariance checker additionally verifies all 720 Fourier terms, 777,600 canonical offsets, 50,430 orthogonality-frequency identities and 1,476 mixed-frequency identities. Its proof of exhaustive factorization is documented; it does not claim 432,000 dense native certificate replays.

Execution environment: Python 3.12.14; python-flint 0.9.0; NumPy 2.2.6; SciPy 1.17.0; isolated environment with single-threaded numerical proposal libraries.

## 8. Independently checked versus inherited

### Independently checked

- Global cyclic normalization, arbitrary-unitary Fourier block form, amplitude positivity, dependent alternatives, full flat lift, product-sign equivalence, and all-anchor symmetry interpretation.
- Residual definitions, exact covariance, gauge and winding effects, every term in the averaged moving bound, and the mathematical validity of the shared Arb LDL spectral bound.
- Closed-bin geometry, label/colour/clique preservation, refits, fine fallback, normalizations, Taylor constants, signed Hessian terms, native/conditioned/joint contractions, scalar exclusions and safe carrier/index interfaces.
- Normal-form horizontal and 21-column constructor invariants, Stage C enclosure conversion and call-site magnitude conditions, guard control flow, native rebinding/control flow, and the limitation of seed-only sub-cell geometry.
- The new branch-overlap repair lemma, without deploying it on existing records.
- The integrity, exact algebra and regression evidence listed above.

### Trusted or outside scope

- C1 and the Z/ZT normal-form analytic theorems, including the exact matched-centre/local-germ premise and matched-flatness/reconstruction inputs.
- Stage C's own binary64 error proof and its mathematical necessary inequalities; application at these call sites was reviewed.
- Arb/python-flint and exact rational arithmetic as the arithmetic implementation.
- Atlas coverage, the full reconstruction theorem outside this packet, tree-cover combinatorics as scoped out, plane witnesses, score/ordering rules, Tao, and the X-ball driver/core.
- The separate rank calculation proving isolation of the product triple. Recognition of its product type does not require reproving that local isolation statement.
- Numerical proposal quality is never trusted as a proof; only the subsequently certified defects and inequalities are used.

### Required next proof action

Close F1 by supplying the missing equivalence-class reconstruction theorem or by certifying parent-child overlap witnesses. Preserve the external Stage C gate on any use of raw native rows. Replace the conjugation sentence by F2's explicit unitary argument and describe the default q as an averaged derivative bound. Fresh deployment replays additionally require the omitted pinned atlas and the referenced tree inputs.

This is a scoped independent review with an explicit remaining proof obligation, not a global verification label for the complete classification project.
