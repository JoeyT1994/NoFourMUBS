# Kernel check of the edge ball (plan, 24 Oct 2026)

The edge ball replaces `F6`'s 25-dim record (`proof/seed_atlas/SPEC.md` §10–10.2). Its Lean statement is
`SeedAtlas.EdgeBallCert` (`lean/NoFourMUBs/SeedAtlas/Edge.lean`; `README.md` there lists the fields), and the route
`EdgeFinal.no_four_mubs_seed` is proved. This note plans the kernel version, `KernelAtlas/Seed/Edge*`, on top of the
seed ball machinery (`KERNEL_SEED.md`). Nothing here is built yet.

## 1. The chart as a Lean function

`Q` must be a definite function of `w` for `hcont` and `hopen`. Per box `b` of the `k⁴` grid:

* `x_h(w)`, `x_v(w)` (7 unknowns each: `t` and the six side angles): the unique zero of the augmented system in
  the box's tube, `Classical.choose` of `Method.krawczyk_param` (m = 7, parameters `w` in the box; existence and
  uniqueness). Neighbouring boxes agree on overlaps by uniqueness (tubes overlap there; checked as for C1 cores).
* `t′ = t` (SPEC §10): the side formula `R = 4 (Im T)²` (as in `Seed.right_formula`, `lower_formula`, at the level
  of a side solving its `γ` equations) gives `R(θ⁰ + (u, t)) = y² = R(θ⁰ + (u, t′))`; a Taylor model of `∂₄R` with
  `∂₄R > 0` over the box's `t`-range and the mean value lemma give `t′ = t` (U certifies `∂₄R > 1158`).
* `H(w) = [[E(θ), B], [C, D]]`, `D = −C E* (B*)⁻¹` (residual correction as in C1; `|det B| > 0` from the box).
* `Q(w) = P + U w + arg(H(w) / e^{i(P + U w)})` entrywise, so the enclosure (`hC1e`'s second half) holds with
  `N = 0` once the per-box bound `‖arg(·)‖ ≤ n < π` is checked (C1's vertex bound, unchanged).

## 2. The fields

| Field | Kernel route | New Lean |
|---|---|---|
| `hC1e` Hadamard, `y ≠ 0` | `Method.matchedO_of_certified_sides` with `o = −sign y` (the augmented equations give `Im Ψ(B) = −y/2`, `Im Ψ(C) = y/2`) | `R > 0` from `Im Ψ ≠ 0` (a non-real root of the side quadratic) |
| `hC1e` Hadamard, `y = 0` | **closure**: `Q` continuous, Hadamard on the dense set `{y(w) ≠ 0}` (`y` is a nonzero linear form in `w`), Hadamard matrices closed | density lemma; avoids formalising U §3.1–3.2 |
| `hC1e` enclosure | C1's per-box vertex bound | — |
| `hcont` | the tube solution is continuous (unique zero in a compact tube: closed graph), `D` continuous where `det B ≠ 0`, `arg` continuous on the slit plane | closed-graph lemma |
| `stageC` | as a seed ball (`seed_stagec.py`; prototype passes at `r = 0.125`, 223 labels) | — |
| (G) `hσF`, `σF` | the F6 record's `hσ` check (BallRecord Cholesky, as the old kernel atlas checks records); `σ ≥ 1.7` | — |
| (G) `hRG`, `hG` | `RG = 0.45`: `2√3 · 0.45 = 1.56 < 1.7`; `‖h(Q − P_F)‖ ≤ ‖h(P − P_F)‖ + λ_F r + n ≈ 0.14` | — |
| `eta`, `heta` | `eta = (T_FᵀT_F)⁻¹T_Fᵀ` with the exact Gram inverse of F6's frame; `T_F` horizontal, checked exactly | — |
| (D) `hopen` | **slope Krawczyk** on `f(w) = η` per `w`-box: `f(w) − f(w′) = S (w − w′)` with `S` enclosed from slopes of the explicit systems (`x(w) − x(w′) = −S_x⁻¹ S_p (w − w′)`, `Method.mv_coord`), then `isUnit_det_of_rowsum` and the Krawczyk contraction give a local inverse with a Lipschitz constant | slope Krawczyk for `f` (Krawczyk for an implicitly defined map); no Mathlib implicit function theorem |

Alternative for (D): Mathlib's implicit function theorem for `Q` (strict differentiability) and
`hopen_of_strictDeriv`. It needs the derivative of `Q` in closed form and an enclosure of it anyway, so the slope
route is shorter.

## 3. Transfers

* **Out of the edge ball** (sphere `‖w‖ = r`): T1 into seed balls (`CornerIn` on `e^{iQ(w)}`: the corner seed is
  linear in `Q`, `Ψ` signs from the box's `H` enclosure), T2 into Tao's record (not expected near F6), T3 back into
  the edge ball (other `g`, corners). Same traversal and target search as a seed ball's C2 (`seed_transfer.py`).
* **Into the edge ball, T3** (`EdgeInQ`): from seed balls near `F6` (and from the edge ball's own sphere under `g`):
  `‖h(A Q_src + 2πN − P_F)‖ < R_G` (T2's check against F6's centre) and the `η`-box of the source in
  `f(B_r)`: the slope Krawczyk of (D) solved for `η` in the box (one solve per T3 box, uniform in `η`).

## 4. Cost (projected from the measured seed ball costs)

| Part | Count | Per unit | CPU |
|---|---|---|---|
| C1e boxes (two 7-unknown tubes, `∂₄R`, slopes for (D)) | `6 × 5³ ≈ 750` to `8⁴ = 4096` | 25–40 s (C1 box: 10.2 s; ×2.5–4) | 5–45 h |
| Stage C | 1 | 1.5–3 h (ball 721: 1.4 h, 290 labels) | 1.5–3 h |
| Sphere cover (T1/T3) | ≈ 5k–20k boxes | 0.2–2 s | 1–10 h |
| T3 solves from seed balls | a few thousand | ≈ 1–2 s | ≈ 1–2 h |

About 10–60 core-hours for the edge ball: negligible next to the seed balls (130k–170k core-hours).

## 5. Lean work, in order

1. Slope Krawczyk for `f` (`hopen` and T3), on top of `Method.krawczyk_param`.
2. `R > 0` from `Im Ψ ≠ 0`; Hadamard by closure on the dense `y ≠ 0` set.
3. Closed-graph continuity of the tube solution; `Q` as an `arg` lift; `hcont`.
4. `t′ = t` from `∂₄R > 0`.
5. Generators `seed_edge.py` (C1e boxes, slopes, Stage C input, sphere cover, T3 targets) and modules
   `KernelAtlas/Seed/Edge*`; the final module takes `EdgeAtlasCertificate` in place of the F6 record.

No new mathematics beyond SPEC §10.1–10.2, but (G)'s constant must be `2√3 R_G < σ`, and T3 must go through (G)
rather than through positional tubes (see `lean/NoFourMUBs/SeedAtlas/README.md`, "Two departures").
