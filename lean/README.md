# Lean formalisation of the minimal proof

This builds against Mateo Cárdenes Wuttig's formal classification, [`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six), pinned at `57b0302`, which brings in Mathlib.

```bash
lake exe cache get   # prebuilt Mathlib
lake build
```

## The end-to-end theorem

`NoFourMUBs.no_four_mubs_final`, and its form `no_four_mubs_of_certificates` taking boundary covers (in `Final.lean`), prove `¬ FourMUBs`. `no_four_mubs_step1` is the same theorem with Step 1 discharged: the anchors are the explicit maxima `Step1Geo.anchors`, and the census is `Step1Geo.maximumCensus`. It uses only `propext`, `Classical.choice` and `Quot.sound`. Its hypotheses are exactly the remaining inputs:

| Input | Kind | Status |
|---|---|---|
| `A : ι → RecordCert`, boundary covers (`BoundaryCover`), Tao and anchor memberships | finite certificate | checked externally (`certify.py`, `proof/independent/`) |
| `MaximumCensus anchors` | Step 1 | ✅ **proved** (`Step1Geo.maximumCensus`, anchors explicit) |
| `MatchedExistence`, `MatchedUniqueness` | reconstruction | paper proofs (dossier MC2–MC4; `STEP2_BLUEPRINT.md` §7) |
| `MatchedDensityReach` | reconstruction | **open point** (PR-M); handoff C in progress |

## Status

`#print axioms NoFourMUBs.no_four_mubs` reports only `[propext, Classical.choice, Quot.sound]` (run `lake env lean NoFourMUBs/Axioms.lean`).

| Module | Content | Status |
|---|---|---|
| `Basic.lean` | MUBs as unitary matrices; `QuartetEdge`; **four MUBs ⇒ a Hadamard quartet edge** | ✅ proved |
| `Skeleton.lean` | `Inputs` (the three substantive hypotheses); `InGamma` (Γ = {id, conj, ᵀ, conj∘ᵀ}); invariance under entrywise conjugation | ✅ proved |
| `Invariance.lean` | **quartet edges are invariant under Hadamard equivalence** (upstream `Equivalent`), conjugate-transpose and transpose; Γ preserves Hadamard quartet edges | ✅ proved |
| `Horizontal.lean` | horizontal matrices, the projector `hor`, the gauge e^{iY} ≅ e^{i·hor Y} | ✅ proved |
| `NormalBound.lean` | **Lemma 3.1 (normal bound)**, calculus-free: `outNorm_rem_le` (‖Φ(δ) − Φ(0) − Jδ‖ ≤ √3‖δ‖² for all δ), `normal_bound`, `normal_bound_root`; **isolation** (Remark 3.3: `δ = 0` or `‖δ‖ ≥ σ/√3`) | ✅ proved |
| `StageC/*.lean` | **Lemma 3.2 (Stage C), analytic layer**: assembly C5 (`not_quartetEdge`), distinct labels and label covering C3, bins C1 (`bin_bounds`), Cover from leaf bins (`cover_of_leaves`), direct test C2a (`direct_test`), linearised test C2b (`core_bound`, `linear_test`), scalar test 6.12 (`scalar_test`), edge tests C4 (`edge_O`, `edge_U`), joint test 6.23 with common η (`joint_O`, `joint_U`) | ✅ proved |
| `Step1Gen/` (library `Step1`) | **Step 1's finite algebra**: 216 kernel-checked certificate theorems (saddle algebra, boundary elimination with explicit cofactors, Bernstein positivity, algebraic numbers, the 18-point orbit) | ✅ compiled; used by `Step1/*.lean` |
| `StageC/Interface.lean`, `StageC/Cert.lean` | **Certificate interface for Stage C**: semantic exclusion predicates (`LeafRej`, `EdgeOExcl`, `EdgeUExcl`), `stageC_semantic`, one lemma per recorded test turning a violation into an exclusion, and the `StageCCert` structure with `StageCCert.excludes` | ✅ proved |
| `Record.lean` | **`RecordCert`**: the data `certify.py` checks for one Record (centre, radius, frame, σ, e₀, j₁, λ, the projection constant, column constant, and a `StageCCert` in cycle units). `RecordCert.excludes`: no Hadamard in a certified Record is a quartet edge (Lemmas 3.1 and 3.2, radians to cycles) | ✅ proved |
| `Atlas.lean` | `atlas_excluded`, `atlas_taoExcluded`, and **`no_four_mubs_of_atlas`**: a certified atlas, Tao's membership and coverage imply no four MUBs | ✅ proved |
| `Step2/*.lean` | From the Step 2 return: the compact Hadamard quotient, the compact-superlevel argument, and `coverage_of_matched_density`: matched existence, uniqueness and density, the census, clopen Records and anchors imply `Inputs.covered` | ✅ compiled |
| `Step4.lean` | **Step 4**: `recordClopen_of_atlas`. A finite atlas with boundary transfers covers a clopen set of classes. Closed: compact images. Open: the boundary transfer plus a local `arg` chart at interior points | ✅ proved |
| `Boundary.lean` | `BoundaryCover` (η-boxes, targets, signed permutations, windings) and `boundaryTransfers_of_covers` via Lemma 4.1 | ✅ proved |
| `Final.lean` | **`no_four_mubs_final`**: the end-to-end theorem, with every remaining input explicit (certificates, Step 1 census, matched existence, uniqueness and density) | ✅ proved |
| `Step1Saddle.lean` | **Step 1, interior**: `calR_no_pos_localMax`. The invariant ℛ(A, B) has no local maximum with positive value on ℂ². It combines the circle action, the first-order conditions, a second-order test proved by the mean value theorem, and the compiled certificate algebra | ✅ proved |
| `Step1/Deltoid.lean` | The filled deltoid `D`: `Δ = −|Vandermonde|²` on traces, boundary form `2z + z̄²`, `Δ < 0` ⇒ trace, `D` a neighbourhood of `Δ < 0` | ✅ proved |
| `Step1/Single.lean`, `Step1/Smooth.lean` | **Step 1, item 13**: no positive relative maximum of ℛ on `D × D` with an interior trace (interior case via the saddle theorem; cusp with interior partner, `ℛ = −4FG²`; smooth boundary trace, orbit curvature `−(9/2)(r+2)²Q²`) | ✅ proved |
| `Step1/DoubleSetup.lean`, `Step1/DoubleAlg.lean`, `Step1/Double.lean` | **Step 1, items 14–23**: on the double boundary `ℛ = R(c, h) = −256L²M²N`; first-order conditions along the two circle directions; the origin is excluded (`R − 256 = c²P₁(c)`), the cusp branch by the split curve (`Rs(q) − Rs(1) = (q−1)K`, `K(1) = −660(46y+9) < 0`), the edges give `c = ±1/4`. `relmax_census` | ✅ proved |
| `Step1/Lift.lean` | **Seeds to traces**: every seed is a lift `Ψ(x, y)`; `seedR ∘ Ψ = ℛ(traces)` (Laurent identity); the fibres of the trace map are reorderings, so (compactness) local maxima of `R` on `T⁴` are relative maxima of ℛ on `D × D` (`relmax_of_seed`) | ✅ proved |
| `Step1/Census.lean` | **Theorem 1**: `maximumCensus : MaximumCensus anchors`, with the 18 anchors `Ψ` of `(ζᵏq^{±1}, ζᵏq^{∓1})`, `q = (1+i√15)/4`, each with `R = 3¹³/2¹²` | ✅ proved |
| `Transfer.lean` | **Lemma 4.1 (boundary transfer)**: Frobenius norm, `hor` contracts it, signed permutations act isometrically and match Γ, windings | ✅ proved |
| `Main.lean` | **`no_four_mubs : Inputs Ball → ¬ FourMUBs`** | ✅ proved, relative to `Inputs` |
| `Inputs.taoExcluded` | Remark 3.3: S₆ is a zero-dimensional Record | ⏳ Lemma 3.1, Stage C, finite certificate |
| `Inputs.excluded` | Step 3: Lemma 3.1 (normal bound) plus Stage C (`STAGEC.md`) | ⏳ lemmas to formalise; certificate as an explicit hypothesis |
| `Inputs.covered` | Steps 1, 2 and 4: maxima of R, connectedness, the open-closed atlas | ⏳ Step 2 needs the seed-domain theorem and global reach, not yet in the upstream Lean |

The computational certificate (`proof/atlas/results/`) will enter as an explicit hypothesis, `CertificateValid`. This mirrors how the upstream project treats its post-classification calculations.
