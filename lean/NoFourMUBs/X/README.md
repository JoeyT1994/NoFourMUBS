# Return X in Lean: no quartet edge near F6

Return X (`proof/theorems/X_no_quartet_near_F6/`, radius 3/20) proves that no complex Hadamard matrix within
horizontal phase distance ρ of F6 is a quartet edge. This folder proves it in Lean, at ρ = 3/20 and at ρ = 7/40, with
the standard axioms only (`propext`, `Classical.choice`, `Quot.sound`; audit: `Axioms.lean`).

## The theorems

| Lean | Statement |
|---|---|
| `Radius015.no_quartet_near_F6_r015` | `∀ H, IsHadamard H → dph H ≤ 3/20 → ¬ QuartetEdge H` |
| `Radius015.no_quartet_near_F6_r015_phase` | `∀ Q N, ‖hor (Q − PF + wind N)‖_F ≤ 3/20 → IsHadamard (phaseMat Q) → ¬ QuartetEdge (phaseMat Q)` |
| `Radius015.core015` | the displacement form: `δ` horizontal, `‖δ‖_F ≤ 0.150001`, `e^{i(PF + δ)}` Hadamard ⇒ not a quartet edge |
| `Radius0175.no_quartet_near_F6_r0175`, `…_phase`, `core0175` | the same at `7/40` (`core0175`: `‖δ‖_F ≤ 0.175001`) |

`PF a b = 2π (a b mod 6)/6` is F6's phase matrix (`e^{iPF}` is the Fourier matrix), and `dph H` is the infimum of
`‖δ‖_F` over horizontal `δ` with `H ≃ e^{i(PF + δ)}` (row and column phases and permutations; windings are absorbed in
`δ`). `core015`, `core0175` are `SeedAtlas.XExclusion ρ` of the edge-ball branch (`XShape.lean`, `F6phase = PF`).

## How the proof goes

Return X's cover *is* a Stage C run at F6: its five-phase torus boxes, direct and linearised rejection tests, label
balls and orthogonality graph are the tests of `StageC/` (return X §4–§6 ↔ `STAGEC.md` §6). So the finite part reuses
the kernel Record pipeline unchanged, and the new mathematics is the normal-displacement bound that feeds it.

| Lean | Return X | Content |
|---|---|---|
| `Remainder.outNorm_rem_le_hor` | §3.2, eq. (11)–(12) | `‖Φ_P(δ) − Φ_P(0) − J_P δ‖ ≤ √2 ‖δ‖²` for centred columns (any centre `P`) |
| `Remainder.sum_pow4_sub_le` | eq. (11) | `Σ_{ab}(v_a − v_b)⁴ ≤ 16 ‖v‖⁴` for a centred six-vector |
| `Frame.V`, `Frame.V_inner` | §3.1, eq. (7)–(8) | the horizontal tangent generators (rank one: `σαᵀ/6`, …) and their Gram matrix `G` |
| `Frame.frame_split` | §3.1, eq. (10) | `δ = Σ w_k V_k + ν`, `ν ⟂ V`, `‖w‖ ≤ ‖Σ w_k V_k‖`, column cap `‖(Σ w_k V_k)_{:,i}‖² ≤ ‖·‖²/3` |
| `Main.normal_le` | eq. (13) | `σ ‖ν‖ ≤ e₀ + j₁ + √2 ‖δ‖²` at a centre `P` |
| `Main.exclude_of_cert` | §2, §6 | the reduction: a Stage C certificate at a centre `P` near `PF`, with `σ, e₀, j₁` and the scalar conditions, excludes the ball |
| `Main.no_quartet_of_cert` | §2 | the phase-matrix form with windings and the `dph` form (alignment by `phaseMat_add_arg`) |
| `KernelAtlas/X/StageC.x_core` | eq. (14), §5.1 | the kernel bridge: centre `P̃` (rational `π̃`) with `‖PF − P̃‖ ≤ 10⁻¹⁸`, frame `V` exact, radii under the bars, `σ = 1.7319`, `√2 ≤ 1.414213563` |
| `KernelAtlas/X/SC/` (generated) | §4, §5 | the Stage C certificate (`stageC2`), `σ`, `e₀`, `j₁` (`Sigma`), and `core` |

Two simplifications relative to the return: the kernel works at a rational centre `P̃` and absorbs `‖PF − P̃‖` into the
radius, and it certifies `σ ≥ 1.7319` at `P̃` (`SigmaK`, diagonal dominance after an exact Cholesky step) instead of
the exact spectrum `{3, 9, 12}`; both cost under `10⁻⁵` of the margin in `n² ≥ (2/3)ρ⁴`. The labels and the graph are
the pipeline's own (340 labels at radius ≤ 0.04 cycles; direct and joint edges; bitset two-clique search), not the
48 exact centres of §5: Stage C's `NoTwoCliques` covers both additional bases at once.

## The radius

The route closes up to about 0.18. At ρ = 7/40 it uses only the bound `‖ν‖ ≤ √(2/3)ρ²` proved here
(`n = 2501/100000`, `r_col = 12606/100000`; 176k survivors, 408 labels). At 0.19 (same bound), and at 0.20 and 0.25
even with return X's sharper geometry (`X_radius_045/geometry`), the bin cover passes but no label clustering clears
the two-clique graph: the ray balls grow with ρ until pairwise orthogonality and unbiasedness tests cannot separate
them. The 0.45 return replaces that step by whole-basis polar budgets; formalising it (and its predictor filters) is
the route beyond 0.18.

## The kernel data

`kernel_atlas/generators/x_stagec.py OUTDIR` generates `KernelAtlas/X/SC/` (exact Python mirror first; about 8 min);
`run_x_rusty.sh` compiles it on one rusty node. Parameters: `ρ = 0.150001`, `r_H = r_F = 0.150002`,
`n = 147/8000`, `r_col = 21/200` (return X's constants), `σ = 1.7319` (`KernelAtlas/X/SC`); and
`--module NoFourMUBs.KernelAtlas.X.SC175 --rho 175001/1000000 --rad 175002/1000000 --normal 2501/100000
--col 12606/100000` (`KernelAtlas/X/SC175`).
