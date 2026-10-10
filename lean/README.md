# Lean formalisation of the minimal proof

This builds against Mateo Cárdenes Wuttig's formal classification, [`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six), pinned at `57b0302`, which brings in Mathlib.

```bash
lake exe cache get   # prebuilt Mathlib
lake build
```

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
| `Step1Gen/` (library `Step1`) | **Step 1's finite algebra**: 216 kernel-checked certificate theorems (saddle algebra, boundary elimination with explicit cofactors, Bernstein positivity, algebraic numbers, the 18-point orbit) | ✅ compiled; the analytic assembly of (W) is still to do |
| `StageC/Interface.lean`, `StageC/Cert.lean` | **Certificate interface for Stage C**: semantic exclusion predicates (`LeafRej`, `EdgeOExcl`, `EdgeUExcl`), `stageC_semantic`, one lemma per recorded test turning a violation into an exclusion, and the `StageCCert` structure with `StageCCert.excludes` | ✅ proved |
| `Record.lean` | **`RecordCert`**: the data `certify.py` checks for one Record (centre, radius, frame, σ, e₀, j₁, λ, the projection constant, column constant, and a `StageCCert` in cycle units). `RecordCert.excludes`: no Hadamard in a certified Record is a quartet edge (Lemmas 3.1 and 3.2, radians to cycles) | ✅ proved |
| `Atlas.lean` | `atlas_excluded`, `atlas_taoExcluded`, and **`no_four_mubs_of_atlas`**: a certified atlas, Tao's membership and coverage imply no four MUBs | ✅ proved |
| `Transfer.lean` | **Lemma 4.1 (boundary transfer)**: Frobenius norm, `hor` contracts it, signed permutations act isometrically and match Γ, windings | ✅ proved |
| `Main.lean` | **`no_four_mubs : Inputs Ball → ¬ FourMUBs`** | ✅ proved, relative to `Inputs` |
| `Inputs.taoExcluded` | Remark 3.3: S₆ is a zero-dimensional Record | ⏳ Lemma 3.1, Stage C, finite certificate |
| `Inputs.excluded` | Step 3: Lemma 3.1 (normal bound) plus Stage C (`STAGEC.md`) | ⏳ lemmas to formalise; certificate as an explicit hypothesis |
| `Inputs.covered` | Steps 1, 2 and 4: maxima of R, connectedness, the open-closed atlas | ⏳ Step 2 needs the seed-domain theorem and global reach, not yet in the upstream Lean |

The computational certificate (`proof/atlas/results/`) will enter as an explicit hypothesis, `CertificateValid`. This mirrors how the upstream project treats its post-classification calculations.
