# No quartet edge near F6, in Lean

A complex Hadamard matrix `H` is a quartet edge if `1` and `H/√6` extend to four mutually unbiased bases. The
exclusion theorem of
[`QuartetExclusion/theorems/X_no_quartet_near_F6/`](../../../QuartetExclusion/theorems/X_no_quartet_near_F6/X_no_quartet_near_F6_RESULT/REPORT.md)
states that no complex Hadamard matrix within horizontal phase distance ρ = 3/20 of F6 is a quartet edge. Below,
"the report" means that folder's `REPORT.md`. This folder proves the theorem in Lean at ρ = 3/20 and at ρ = 7/40.
The proofs use only the standard axioms `propext`, `Classical.choice` and `Quot.sound`. The audit is
`Axioms.lean`.

## The theorems

| Lean | Statement |
|---|---|
| `Radius015.no_quartet_near_F6_r015` | `∀ H, IsHadamard H → dph H ≤ 3/20 → ¬ QuartetEdge H` |
| `Radius015.no_quartet_near_F6_r015_phase` | `∀ Q N, ‖hor (Q − PF + wind N)‖_F ≤ 3/20 → IsHadamard (phaseMat Q) → ¬ QuartetEdge (phaseMat Q)` |
| `Radius015.core015` | the displacement form: `δ` horizontal, `‖δ‖_F ≤ 0.150001` and `e^{i(PF + δ)}` Hadamard ⇒ not a quartet edge |
| `Radius0175.no_quartet_near_F6_r0175`, `…_phase`, `core0175` | the same at `7/40` (`core0175`: `‖δ‖_F ≤ 0.175001`) |

`PF a b = 2π (a b mod 6)/6` is F6's phase matrix, so `e^{iPF}` is the Fourier matrix. `dph H` is the infimum of
`‖δ‖_F` over horizontal `δ` with `H ≃ e^{i(PF + δ)}`. Here `≃` allows row and column phases and permutations, and
windings are absorbed in `δ`. `core015` and `core0175` have the form `SeedAtlas.XExclusion ρ` used by the edge-ball
proof of the main theorem (`XShape.lean`, with `F6phase = PF`).

## How the proof goes

The report's cover is a run of the local tests of the main atlas (Stage C) at F6. Its five-phase torus boxes,
direct and linearised rejection tests, label balls and orthogonality graph are the tests of `StageC/`. Sections 4–6
of the report correspond to the tests described in `STAGEC.md`. The finite part therefore uses the existing kernel
record pipeline. The new mathematics is the bound on the normal displacement that feeds it.

| Lean | Report | Content |
|---|---|---|
| `Remainder.outNorm_rem_le_hor` | §3.2, eq. (11)–(12) | `‖Φ_P(δ) − Φ_P(0) − J_P δ‖ ≤ √2 ‖δ‖²` for centred columns (any centre `P`) |
| `Remainder.sum_pow4_sub_le` | eq. (11) | `Σ_{ab}(v_a − v_b)⁴ ≤ 16 ‖v‖⁴` for a centred six-vector |
| `Frame.V`, `Frame.V_inner` | §3.1, eq. (7)–(8) | the horizontal tangent generators (rank one: `σαᵀ/6`, …) and their Gram matrix `G` |
| `Frame.frame_split` | §3.1, eq. (10) | `δ = Σ w_k V_k + ν` with `ν ⟂ V`, `‖w‖ ≤ ‖Σ w_k V_k‖` and the column cap `‖(Σ w_k V_k)_{:,i}‖² ≤ ‖·‖²/3` |
| `Main.normal_le` | eq. (13) | `σ ‖ν‖ ≤ e₀ + j₁ + √2 ‖δ‖²` at a centre `P` |
| `Main.exclude_of_cert` | §2, §6 | the reduction: a Stage C certificate at a centre `P` near `PF`, with `σ, e₀, j₁` and the scalar conditions, excludes the ball |
| `Main.no_quartet_of_cert` | §2 | the phase-matrix form with windings, and the `dph` form (alignment by `phaseMat_add_arg`) |
| `KernelAtlas/X/StageC.x_core` | eq. (14), §5.1 | the kernel bridge: centre `P̃` (rational `π̃`) with `‖PF − P̃‖ ≤ 10⁻¹⁸`, the frame `V` exact, the radii under the bars, `σ = 1.7319` and `√2 ≤ 1.414213563` |
| `KernelAtlas/X/SC/` (generated) | §4, §5 | the Stage C certificate (`stageC2`), `σ`, `e₀` and `j₁` (`Sigma`), and `core` |

The `KernelAtlas/X/` files are in `kernel_atlas/lean/`.

The Lean proof differs from the report in three ways. Each of the first two costs under `10⁻⁵` of the margin in
`n² ≥ (2/3)ρ⁴`.

1. The kernel works at a rational centre `P̃` and absorbs `‖PF − P̃‖` into the radius.
2. The kernel certifies `σ ≥ 1.7319` at `P̃` (`SigmaK`, by diagonal dominance after an exact Cholesky step). The
   report uses the exact spectrum `{3, 9, 12}`.
3. The labels and the graph are those of the Stage C pipeline: 340 labels at radius ≤ 0.04 cycles, direct and
   joint edges, and a bitset two-clique search. The report uses the 48 exact centres of its §5. Stage C's
   `NoTwoCliques` covers both additional bases at once.

## The radius

The method closes up to a radius of about 0.18. At ρ = 7/40 it uses only the bound `‖ν‖ ≤ √(2/3)ρ²` proved here,
with `n = 2501/100000` and `r_col = 12606/100000`. That run has 176k survivors and 408 labels.

At 0.19 with the same bound, the bin cover passes but no label clustering clears the two-clique graph. The same
happens at 0.20 and 0.25, even with the sharper geometry of
`QuartetExclusion/theorems/X_radius_045/X_radius_045_RESULT/geometry`. The ray balls grow with ρ until the pairwise
orthogonality and unbiasedness tests cannot separate them. The radius-0.45 argument in
[`QuartetExclusion/theorems/X_radius_045/`](../../../QuartetExclusion/theorems/X_radius_045/X_radius_045_RESULT/REPORT.md)
replaces that step by whole-basis polar budgets. Formalising it, with its predictor filters, is the way beyond
0.18.

## The kernel data

`kernel_atlas/generators/x_stagec.py OUTDIR` generates `KernelAtlas/X/SC/`. It runs an exact Python mirror first
and takes about 8 min. `run_x_rusty.sh` compiles the output on one cluster node.

The parameters for `KernelAtlas/X/SC` are `ρ = 0.150001`, `r_H = r_F = 0.150002`, `n = 147/8000` and
`r_col = 21/200` (the report's constants), with `σ = 1.7319`. The parameters for `KernelAtlas/X/SC175` are
`--module NoFourMUBs.KernelAtlas.X.SC175 --rho 175001/1000000 --rad 175002/1000000 --normal 2501/100000
--col 12606/100000`.
