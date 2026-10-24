# Kernel check of the seed atlas (design, 24 Oct 2026)

**Goal.** `no_four_mubs_seed_kernel : ¬ FourMUBs` with only `propext`, `Classical.choice`, `Quot.sound`: apply
`NoFourMUBs.FinalSeed.no_four_mubs_seed` (`lean/NoFourMUBs/FinalSeed.lean`) to a `SeedAtlasCertificate` whose every
field is kernel-checked, as `KERNEL_ASSEMBLY.md` did for the old atlas.  New files only: `kernel_atlas/lean/KernelAtlas/Seed/`,
`kernel_atlas/generators/seed_*.py`, `lean/NoFourMUBs/SeedAtlas/`.

## 1. What has to be produced

`SeedAtlasCertificate` (`SeedAtlas/Atlas.lean`):

| field | kernel source |
|---|---|
| `S j : SeedBallCert` | per seed ball: **C1** (`hC1`, new: §3), the frame bounds `hcol`, `hfrob` and `hMth` (exact, §4), **Stage C** (`StageCK2B` reused on the enclosure `P + Uw + ν`, §5) |
| `A l : RecordCert` | F6's record (and any record near F6), Tao's record: the old per-Record pipeline (`atlas_run.py`) unchanged |
| `seedBoundary j` | the dyadic box tree of FORMAT §4 (exact sphere coverage) and per box T0 / T1 / T2 (§6) |
| `recBoundary l` | FORMAT §6: `rec` boxes (`BoundaryK`'s test) and `T1′` boxes (piece A's ν enclosure, §6) |
| `tao`, `fourier` | `RecTao.tao`, `Special.fourier` with the new F6 record (`ExactK`) |

## 2. Data: one rounded atlas

The kernel certifies its own copy of the atlas: every datum of every seed ball (`θ₀`, `M_θ`, `r`, `P`, `U`, `n`) is
rounded to the fixed-point grid `2^{-p}` (`p = 60`) once, in a shared table (as `Table/` for the old atlas), so that
cross-ball references (transfers) are definitional.  Nothing in the kernel theorem refers to the binary64 certificate;
the generator only has to choose data that pass.

## 3. C1 in the kernel (`Seed/Poly`, `Seed/C1Box`, `Seed/C1Ball`)

Per ball, the boxes are the dyadic grid of `[−r, r]⁴` with `2^m` boxes per axis (`m = 2` by default), dropping boxes
exactly certified to miss the ball; every coordinate is then dyadic.  Per box the kernel evaluates one Boolean
function `c1Box : BoxData → Bool` and the soundness theorem turns `c1Box d = true` into, for every `u` in the box,
the C1 conclusion at `w = w_c + u`.

**Arithmetic.** Second-order Taylor models in 4 variables over the box, coefficients on the grid `2^{-p}` (15
monomials; real `List ℤ` or complex `List (ℤ × ℤ)`) and a remainder `ρ : ℕ` (same grid), with pointwise semantics:
`Has T u x : |x − T(u)| ≤ ρ` for `u` in the box.  Operations (each with a soundness lemma): `+`, `−`, scalar `·`,
conj, re/im, `·` (degree ≤ 2 kept, rounded to the grid; degree ≥ 3 products and rounding into `ρ`; complex moduli
bounded by `max + min/2`), `e^{i·}` (the constant `e^{ic}` from `TrigK`'s `cisRound`, then
`Method.norm_exp_I_taylor2_le`), sup bounds, and the `arg` step (`Method.exists_arg_one_add`, branch constant `a`
certified by `|arg(c e^{−ia})| ≤ |Im|/Re`).  Measured: one complex product costs about **5.5 ms** of kernel time.

**The box check** (mirrors piece A's `seedcert.box_Q`, every float only a predictor):
1. `θ(u) = θ₀ + M_θ(w_c + u)` (exact linear), `E`, `G_h`, `G_v`;
2. each side: the parametric Krawczyk test (`Method.krawczyk`) with the generator's predictor `φ_pred(u)` (second
   order), `Y`, `ρ`: `b ≥ sup|Y F(φ_pred(u); G(u))|`, `q ≥` row sums of `sup|I − Y J|` over the tube (`J` evaluated
   as Taylor models on the tube), `b + qρ < ρ`; side tubes `φ_pred ± (b + qρ)`;
3. orientation: `o · Im Ψ(B) > 0`, `−o · Im Ψ(V) > 0` on the tubes (`Ψ = perm det² ∏ conj` as Taylor models);
   with `Method.matchedO_of_certified_sides` the completion is Hadamard and `MatchedO o`;
4. `D = X_p + δD` by residual correction and the Neumann bound (`Method.residual_correction`, `Method.neumann`);
5. `arg D`, the phase representative `Q` (windings `N` from the generator), and the residual
   `Q − P − U(w_c + u) − 2πN` bounded by the 16-vertex maximum of its linear part, `Σ ‖H_{·jl}‖ h_j h_l` and `‖ρ‖`
   (`Method.box_bound`; norms compared through squares).

## 4. Frame bounds

`hcol`, `hfrob`: `t² I − U_(i)ᵀU_(i)` (6 blocks) and `λ_F² I − UᵀU` positive semidefinite, checked exactly by
leading principal minors of the 4×4 matrices; `hMth`: `det M_θ ≠ 0` exactly.

## 5. Stage C

`stageCK2B` (`StageCK2B.lean`) builds `StageCCert ((1/2π) • Pmat tb.pq) (Tmat t.tc tq) rH n r rF` for any centre table,
integer frame and radii under the bars: the seed's `P` is the table's centre, `U` is stored as an integer frame
(`Tmat`), and the radii are `r/2π`, `n/2π`, `(t r + n)/2π`, `(λ_F r + n)/2π`.  The generators (`export_record.py`,
`export_v2.py` and the tangent/edge/clique steps of `atlas_run.py`) are driven by a seed adapter
(`seed_stagec.py`) instead of an atlas Record.

## 6. Transfers

* **T0**: exact rational geometry: `‖M_l⁻¹(θ_j(v) + 2πN − θ0_l)‖² < r_l²` at the 16 vertices (convexity, exact `M_l⁻¹`,
  `π` between rational bounds).
* **T1** at a reordering of the seed corner: `θ′` integer-linear in `θ`, so the same exact test; orientation and
  matching inherited.  **T1** at any other corner: the box's C1 Taylor models, `θ′ = L g Q`, the ellipsoid test and the
  two `Ψ` signs on the corner blocks.
* **T2**: `‖hor(π g Q + 2πN − P_t)‖ < R_t` on the box's Taylor models (vertex bound).
* **Records**: `rec` boxes by `BoundaryK`; `T1′` boxes by piece A's 2-norm enclosure of `ν ∈ N` (A1–A3), which needs
  `‖J(δ) − J(δ′)‖₂ ≤ 2√3 ‖δ − δ′‖₂` in Lean (RIGOUR.md §1's `Φ″` bound) — the one new analytic lemma of the route.
* **Coverage**: the FORMAT §4/§6 traversals, exact.

## 7. Assembly and the run

As `KERNEL_ASSEMBLY.md` §8–9: per-ball jobs (C1, frame, Stage C, boundary), per-record jobs for the few records,
chunks of 100 balls, one `Final` module importing the chunks with the `nommap` shim, data packed (`kpack.py`), job
outputs as tarballs on ceph.

## 8. Status

See the end of this file (updated as the pieces land).
