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

## 8. Status (24 Oct 2026)

### Implemented (Lean, all with `propext`, `Classical.choice`, `Quot.sound` only; generators with exact mirrors)

| piece | Lean (`kernel_atlas/lean/KernelAtlas/Seed/`) | generator | soundness theorem |
|---|---|---|---|
| Taylor models | `Poly` (15-monomial models on the grid, `+ − · conj re im e^{i·} arg lin`) | `seed_c1.py` mirror | `has_*` |
| C1 per box | `C1`, `C1Lemmas`, `C1SideSound`, `C1Forced`, `C1Bound`, `C1Box` | `seed_c1.py` | `c1Box_sound` |
| reusable core, re-centring | `Core`, `Shift` | `seed_transfer.py` | `core_sound`, `has_shift` |
| T2, T1 (general corner) | `T2`, `T1`, `T1Sound` | `seed_transfer.py` | `t2OK_sound`, `t1OK_sound` |
| C1 box + its transfer boxes; finer transfer-only cores | `Full` | `seed_kball.py` | `fullBox_sound`, `coreFull_sound` |
| frame bounds (`hMth`, `hcol`, `hfrob`) | `Frame` (kernel LDLᵀ, exact adjugate) | `seed_exact.py` | `frame_sound` |
| T0, T1 by corner symmetry | `T0`, `T1Sym` | `seed_exact.py` | `t0_sound`, `t1sym_holds` |
| coverage (C1 ball, seed sphere, record shell) | `Cover` (exact preorder traversals) | `seed_exact.py` | `ball_cover(_boxes)`, `sphere_cover`, `shell_cover'` |
| Stage C | `StageC` (StageCK2B path, exact P/U bridges) | `seed_stagec.py` | `stageCSeed` |
| ball certificate, boundary cover | `BallCert`, `Boundary`, `Assemble`, `Links` | `seed_kball.py`, `seed_table.py` | `ballCert`, `seedBoundary_of`, `seed_kernel_of` |
| assembly (chunks, Final) | generated `SeedA/Chunk<k>`, `SeedA/Final` | `seed_assembly.py` | `no_four_mubs_seed_kernel` |
| T1′ analytic lemmas | `lean/NoFourMUBs/SeedAtlas/Method/NormalTube.lean` | — | `outNorm_jac_sub_le` (2√3), `normal_tube` |

The final module type-checks against stub balls and stub records (`sorryAx` from the stubs only).  Rusty job scripts:
`run_seed_{setup,balls,chunks,final}.sh` with the node driver `seed_run.py` (not launched).

### Design changes from §§3–6 (decided while building)

* **One core per C1 box, re-centred on the transfer boxes** (`Shift`, `Full`).  A general-T1 box with its own core
  costs ≈ 17 s of kernel time; re-centring the C1 box's models costs ≈ 1.8 s per transfer box.  Where the C1 box's
  remainders are too large for the target's margin (≈ 2·10⁻³ in `θ′`, amplified ≈ 10× by `M_l⁻¹`), the generator
  falls back to a finer core box (level 3, 4, …: `coreFull`) and, at a box's own level, splits the box (16 children).
* **Windings in the kernel's gauge.** The kernel's phases (`θ₀` reduced to (−π, π], side phases continued, `arg D` on
  the generator's branch) differ from FORMAT's representative by multiples of 2π, so every winding (T0, T1, T2) is
  recomputed by the generator at the box centre; the kernel checks whatever winding it is given.
* **The kernel radius** is the certificate's `r` rounded down to a multiple of 2²⁰ grid units (so every dyadic box is
  exact on the grid); FORMAT's boxes are read in units of this radius.

### Measurements (MacBook, kernel CPU above the ≈ 3 s import baseline)

| check | time | peak RAM |
|---|---|---|
| C1 box (`c1Box`) | 10.2 s (the two Krawczyk side checks ≈ 5.4 s) | 8.5 GB |
| core + T2 / + T1 on the same box | 12.4 s / 17.3 s | 8.5 GB |
| transfer box re-centred on a core (`fullBox`, marginal) | 1.84 s | +0.45 GB per box in one theorem |
| module of 8 C1 boxes (`Core<k>`, real ball 721) | 100–112 s | 8–13 GB |
| frame bounds | 0.6 s per ball | |
| T0 box / T1 corner-symmetry box | 4 ms / 4–5 ms | |
| traversals: C1 ball / seed sphere / record shell | 0.25 / 0.42 / 2.4 ms per node | |
| Stage C (4 test balls, r ≤ 0.08) | 11–47 CPU-min per ball | 8–20 GB |
| T1′ η-box (estimate, `KERNEL_T1PRIME.md`) | 1.5–3 s | |

**A real ball, end to end** (driver ball 721, r = 0.08; from the driver's state on rusty, 24 Oct): 256 C1 boxes
(C1 needs n = 0.0093 of the certificate's 0.0112), 1,723 T0 boxes, 826 general-T1 boxes (one split into 16), 569 cores
(256 C1 + 313 finer, most finer cores serving one transfer box), sphere traversal 5,361 nodes; Python generation
9.5 min + 4 min (Stage C), one thread.  All 110 modules compile; `B721.cert : SeedBallCert` and `B721.bnd` (its
boundary cover) depend on `propext`, `Classical.choice`, `Quot.sound` only.  **Kernel CPU 3.8 h on the laptop**
(cores 2.4 h, Stage C 1.4 h: 219k label hints), peak 20.4 GB (one Stage C module).  Three more real balls generate
cleanly: 4194 (788 general-T1 boxes, all on the C1 boxes' own cores: 256 cores), 1798 (1,212 → 829 cores),
6848 (r = 0.1: 2,787 general-T1 and 439 corner-symmetry boxes → 1,014 cores).  The core count, and so the cost, varies
by a factor ≈ 4 between balls.

### Cost projection

Per ball (laptop, measured on ball 721): 3.8 CPU-hours; by core count the four real balls range ≈ 2.5–6 CPU-hours,
mean ≈ 4.  With the old pipeline's laptop-to-rusty factor (2.7, measured on Stage C; to be re-measured by a one-node
pilot): **≈ 11 core-hours per ball on rusty**.  The driver's state on 24 Oct: 10,008 balls (6,859 closed: 15.5M T0,
5.7M general-T1, 0.8M corner-symmetry boxes; no T2), still growing.  For 12–15k balls: **≈ 130k–170k core-hours for
the seed balls**, dominated by the cores (C1 ≈ 25%, transfer-only ≈ 35%) and Stage C (≈ 35%).  Records: ≈ 1–2 core-hours each.  T1′ (built, `T1P*.lean`): ≈ 0.2 s per final box plus ≈ 10 s per tube box shared by
its sub-boxes (laptop), so 30–50M record-boundary boxes would cost ≈ 6k–13k core-hours on rusty; with SPEC §10's edge
balls replacing F6's record, this path is no longer needed except for records other than Tao's.

Levers, in order of effect: cheaper side checks (a Jacobian bound from the centre plus the 2√3 Lipschitz bound instead
of 36 Taylor-model entries: ≈ −40% per core); sharper models so that fewer transfer boxes need their own core (a
third-order `Poly`, or smaller remainders); fewer general-T1 boxes from the driver (T0 and corner-symmetry targets
cost milliseconds); sharing in T1′.

### Not yet done

* **T1′ in the kernel**: done (`T1P`, `T1PRec`, `T1PLin`, `T1PTube`, `T1PSound`: `t1p_holds`, standard axioms).
* **The record side**: the `rec` boxes and the record boundary cover are written (`RecBox`, `RecCover`,
  `RecFields`); F6's record through the old pipeline was generated but not finished (the helper stopped).  SPEC §10
  (24 Oct) replaces F6's record by an edge ball, so the record side reduces to Tao's record (`RecTao`, existing) and
  the Fourier anchor moves to the edge ball: **the remaining blocker for a hypothesis-free statement is the edge ball**
  (semantic `EdgeBallCert`, its openness, T3, and its kernel C1e), which is the next task.
* The production table and per-ball generation at scale, the rusty pilot, and the run itself (after the atlas is
  built and certified).
* **Horizontal gauge (SPEC §11).** `SeedBallCert.hC1` now asks for a representative up to row and column phases
  (`RepO`), so both gauges are statements of the same field. The kernel's C1 still proves the dephased form and
  `ballCert` wraps it (`RepO.of_matched`); the generated ball modules are unchanged. For `"gauge": "hor"` data
  (`P = h(P_g)`, `U = h(T) M_θ`) the C1 box takes `Q = h(Q_g)` with `N = 0` (`RepO.hor`) and bounds
  `‖h(Q_g − P_g − U_g w)‖` at the vertices instead of `‖Q_g − P_g − U_g w − 2πN‖` (`h` is linear, `‖h X‖ ≤ ‖X‖`):
  a change in `c1Box`'s bound step and in the generator, not yet made. Corner seeds and `Ψ` signs (T1, T1sym, T0)
  are cross ratios and need nothing.
