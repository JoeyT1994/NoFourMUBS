# Implicit side-chart H-models for the unchanged production cover

## Status

This is an additive engineering implementation of the archive's proved side-chart and completion arguments. It does not modify production files. `provider.jl` supplies `sidechart_models(theta,rho)` and `certify_cell_sidechart(theta,rho)`. The latter invokes the existing cover logic on H models rather than invoking `hplus_tm`.

**Executed and replayed:** an independent outward Python implementation constructs all-orbit H enclosures on 617 of 1,000 supplied positive-R singular sample boxes. Its acceptance is model construction, not quartet exclusion. **Not executed:** Julia compilation, FastTM provider runtime, regular-box parity against `certify_cell_cover_accelerated`, and end-to-end quartet-cover runs. Julia was not installed in this environment and the attempted runtime download failed. Consequently this module is supplied for integration review, not marked production-ready. The Python quadratic/constant-completion pilot is not a measured success rate or cost for the higher-order Julia provider.

## 1. Dependency ledger

All source inputs are pinned in `INPUTS.json`.

* **[P1, proved archive input]** `RegularSideCharts/PROOF.md` §§1–3: six-phase side moment equations, det(J)^2=R/64 and the fixed-preconditioner contraction test. The implementation uses the contraction test, not a floating Jacobian condition estimate.
* **[P2, proved archive input]** `ChartConditioning/RESULTS.md`, completion-conditioning argument: forced completion is Lipschitz once a common working block is invertible. The present code validates a fixed inverse of its actual C* block by a Neumann residual. It does **not** assign the ten-chart theorem's bound ||C^{-1}||<2 to the original seed split without selecting and certifying such a split.
* **[A1, accepted, not reproved]** `MinimalConstruction/RECONSTRUCTION.md`, scope item 2: at a strict corner the normalized side fiber has **exactly two** orbits under column permutations. This is stronger than merely knowing that two numerical roots exist. It is used to turn the two separated validated roots into complete side coverage.
* **[A2, accepted, not reproved]** The reconstruction's side formulas supply floating proposals, and the accepted existence of H+ determines the campaign object to be covered. Proposal arithmetic never authorizes acceptance. Flatness of arbitrary cross-pairings is not assumed.
* **[P3, proved archive input]** `Sheets/BRANCH_LEMMA.md`: scalar side-root changes are ordinary side permutations, not a switch between sheets. This explains why no agreement with principal square/cube-root labels is required. More generally, ordinary row and column permutations preserve the quartet-extension question.
* **[P4, proved guarded arithmetic]** `FastTMInvariant/README.md` and `RESCALED_INTRINSICS.md`, for the production hash `7e9c0bc3c08a42094d1f1dca34a61238c7a3510f091db189fa7947f1c2f35baa`. Every Julia operation retains the production guard. Orders must lie in 2..12, scalar/model operands must satisfy the archive's magnitude bounds, and no negative-power or shrinking-remainder bypass is used.
* **[P5, proved archive input]** The cluster-cover theorem and unchanged production cover/graph/label routines. They are used only after an H enclosure has been constructed, never to infer side coverage.

Global strict-corner and positive-sheet coverage are not proved here. They remain accepted inputs to the surrounding project reduction.

## 2. Parameter-dependent implicit charts, not radical Taylor models

Let theta=theta0+rho_seed s, s in [-1,1]^4. For a normalized horizontal side write

    q=(alpha0,beta0,alpha1,beta1,alpha2,beta2),
    Phi(q)=(Re Σe^{i alpha}, Im Σe^{i alpha},
            Re Σe^{i beta}, Im Σe^{i beta},
            Re Σe^{i(beta-alpha)}, Im Σe^{i(beta-alpha)}).

Its target is

    t(theta)=(Re s,Im s,Re t,Im t,Re r,Im r),
    s=−1−a−b, t=−1−c−d, r=−1−c/a−d/b.

These equations are equivalent to B B*=6I−E E* because all B entries are unit phases. The vertical equations use E^T, i.e. the coordinate permutation (1,3,2,4).

Choose any exact polynomial vector p(s), an exact binary matrix A, and r_side>0. The polynomial and matrix may have been proposed by floating Newton iterations. Let Q enclose p(s)+[-r_side,r_side]^6 for every s. Bound outward

    eta_i >= sup_s |[A(Phi(p(s))−t(theta(s)))]_i|,
    lambda_i >= sup_(q in Q) Σ_j |[I−A D Phi(q)]_ij|.     (1)

Accept only if, for every i,

    lambda_i<1,       eta_i+lambda_i r_side<r_side.        (2)

For each fixed s, q -> q−A(Phi(q)−t(theta(s))) maps the cube p(s)+[-r_side,r_side]^6 strictly into itself and contracts in the infinity norm. Banach's theorem yields a unique solution there. The preconditioner is invertible because ||I−A D Phi||<1, so a fixed point solves the original equations. Thus

    q_i(theta(s)) in p_i(s)+[-r_side,r_side]              (3)

for every seed in the box. This is precisely [P1]'s fixed-point proof with a parameter-dependent center; it is not a new side-fiber theorem. Regularity/analytic continuation is useful but not needed to replace (1)–(2) by any unverified branch argument.

### Python pilot implementation

`predicate.py` uses a quadratic p. Write p=c+L+Q2, and let ell and qbar bound the coefficient 1-norms of L and Q2 on the normalized cube. For either trigonometric function f,

    f(p)=f(c)+f'(c)(L+Q2)−f(c)L²/2+error,
    |error| <= (ell+qbar)^3/6+ell*qbar+qbar²/2.          (4)

The first term bounds the third-order Taylor remainder; the other two account for replacing (L+Q2)^2 by L². The retained coefficients, target polynomials and error propagation through A use outward intervals. The Jacobian bound in (1) is evaluated over the entire phase range Q, not just at the center. Each accepted record stores its exact binary polynomial, preconditioner and radius, which `verify.py` revalidates without trusting its acceptance flag or its stored lambda/eta summaries.

### Julia implementation

`sc_side` instead forms and residual-validates order-q FastTM predictors. Resetting a remainder is allowed **only when declaring a new polynomial proposal** via `sc_poly`; it is not an enclosure of the function from which its coefficients were copied. The residual test subsequently certifies (3) afresh. All trigonometric composition and propagated radii then use guarded FastTM [P4]. No call to `hplus_tm` occurs in the provider.

## 3. Pointwise exhaustion and sheet coverage

Two floating proposals alone do not establish coverage. We validate two charts and additionally rule out every one of the six permutations matching their column triples. For each permutation, at least one real or imaginary entry interval of one side is strictly disjoint from its proposed counterpart in the other side. This proves that the two sides represent different orbits for **every** seed in the whole box.

Now apply [A1]: each strict side fiber has exactly two orbits. The two distinct validated charts must therefore exhaust it pointwise. Repeat for the vertical side. Floating `sign` labels have no role in this argument; they only generate initial guesses.

Retain all four horizontal/vertical pairings. For any actual framed Hadamard completion and any seed in the box, its horizontal side equals one of our horizontal representatives up to a permutation P, and its vertical block equals Q^T times one of our vertical representatives, for a permutation Q. The completion equation below transports these permutations to the bottom-right block. Thus the four representatives together with their 6×6 independent side permutations, at most **144 models**, enclose **all physical framed completions**, including H+(theta). The containing representative and permutations may depend on theta; no globally fixed principal-root branch is claimed.

This also retains exceptional flat pairings in the accepted reconstruction: none of the four pairings is silently discarded. Some representatives may be nonflat; their presence only enlarges the set the cover must exclude. No matching-flatness assumption is used to turn a cross-pairing into an actual Hadamard.

Sending just the four representatives to the cover is sufficient: ordinary side-row/side-column permutations preserve standard-basis unbiasedness and the quartet-extension property [P3]. It is not asserted that one named, unpermuted representative alone contains the literal principal-root H+ throughout the box.

## 4. Certified Lipschitz completion without 1/sqrt(R)

For every actual physical completion,

    C* D = −E* B.                                        (5)

Choose a fixed exact binary complex matrix Y, proposed as (C0*)^{-1}. Bound

    lambda >= sup_s ||I−Y C(s)*||_infinity < 1.           (6)

This proves C(s)* invertible throughout the box. For any polynomial proposal P_D(s), set

    Z(s)=Y(C(s)* P_D(s)+E(s)*B(s)),
    e_j >= sup_s max_i |Z_ij(s)|/(1−lambda).             (7)

Since Y C* (D−P_D)=−Z, the Neumann inverse bound gives

    |D_ij(s)−(P_D)_ij(s)| <= e_j.                        (8)

The true D for every pairing is thus enclosed. Equation (7) is the fixed-inverse Lipschitz completion mechanism [P2], with an explicitly validated local condition bound. It does not divide by sqrt(R) or assume the original partition has the ten-chart theorem's universal bound. Large lambda or residual simply causes failure or a wider enclosure.

The Python pilot uses constant P_D, hence relatively wide completion errors. Its frozen Y, P_D and column errors are checked by the independent replay. Julia uses polynomial P_D, built by preconditioned residual iterations, then applies (6)–(8) using guarded Taylor models. Each complex disc error e_j is safely added to **both** real and imaginary component remainders.

## 5. Parameter coordinates and radii

There are three distinct kinds of radius here:

1. `rho` / `radius`: four seed-angle half-widths, in radians. The sampled isotropic radius is the outward binary64 enclosure of pi/8192+2^(-40).
2. `phase_error`: a remainder in six side-phase coordinates, also in radians, around a polynomial depending on the normalized seed coordinates. This is not a seed radius.
3. `D_column_errors`: complex entrywise amplitude errors for the completion. They are neither phase radii nor a whole-matrix Frobenius radius.

No one is substituted for another, and no Fourier-neighborhood matrix theorem is invoked with one of these seed radii.

A vertical chart constructed in transposed seed order uses normalized variables (s1,s3,s2,s4). The Julia routine **permutes the polynomial variables 2 and 3 back** before forming C and combining it with E and B. `sc_swap23` is an exact coefficient permutation preserving the remainder and coefficient 1-norm. Omitting this step would be unsound even if the separate side certificates passed.

## 6. Unchanged cover injection and budgets

`cover_model.jl` is an additive copy of the production `certify_cell_cover` function with exactly two replacements:

    certify_cell_cover(theta0,rho; ...) -> certify_cover_with_model(H; ...)
    cell=hcell(...); cc=CoverCell(cell.H) -> cc=CoverCell(H)

`verify.py` checks this exact textual difference against the pinned source. Cover search, seed subrestriction, ray exclusion, label containment, capacities and graph tests are unchanged. `provider.jl` retains the accelerated verifier and label settings. It does not monkey-patch hcell or edit production defaults.

`certify_cell_sidechart` returns the same named result fields as the cover. On success its counts sum over four representatives; rmax and level are their maxima. The node budget and deadline are shared. An exception, failed contraction, failed orbit separation, failed completion condition, resource cap or unsuccessful representative returns an inconclusive result. Merely constructing H models never returns `ok=true` from this cover wrapper.

There is no theorem that two different H overenclosures must have identical finite-budget accept/reject outcomes. The requested regular-box parity check is a runtime regression test; its script asserts parity for the chosen boxes, but it has **not been run**. A mismatch under caps would require inspection, not reinterpretation as a mathematical contradiction or permission to accept.

## 7. Pilot and explicit remaining work

The source list contains 179,671 boxes. We select 1-based lines

    1+floor(k*(179671−1)/999), k=0,...,999,

and independently certify inf R>1 over each attempted box. The stored CSV R bounds are not used for acceptance. All 1,000 selected inputs passed this R guard. Quadratic chart construction produced both separated horizontal and vertical orbits and all four completion enclosures on **617 boxes**. The remaining **383** failed side contraction. No acceptance depended on a float root, inverse or norm estimate. All 617 frozen witnesses passed the independent outward replay.

The retained frozen-witness pilot used **97.829 summed worker CPU seconds**, or **0.097829 CPU seconds per attempted box**; four-worker wall time was **28.296 seconds**. This would scale to approximately **4.88 CPU hours** for construction-only scanning of the 179,671-record source list on comparable hardware. It is **not** a cover-cost estimate. Higher-order predictors may have different success and costs; neither is extrapolated from this quadratic pilot.

The pending integration work is concrete: run the Julia source/guard tests; run regular-box parity; run the bounded 1,000-box end-to-end cover pilot; measure the polynomial completion radii and quartet acceptances; then decide whether to refine failed charts or add a selected working partition. No cluster job was launched. No production source or run-of-record result was changed.
