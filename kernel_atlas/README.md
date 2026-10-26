# Kernel atlas: the certificate checked in the Lean kernel

The main theorem (`PROOF.md`, `lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean`) is
`EdgeXFinal.no_four_mubs_seed (C : EdgeAtlasCertificate) : ¬ FourMUBs`, with the certificate's inequalities checked
by the Arb and Julia certifiers. This folder checks those inequalities in the Lean kernel itself (`decide +kernel`),
which makes the theorem hold with no hypotheses. Nothing in `verify.py` runs it, and a reviewer does not need it.

## Status

| Piece | Lean (`lean/KernelAtlas/`) | Status |
|---|---|---|
| Return X at 7/40 (the X-ball's `exclusion`) | `X/`, `X/SC175/` | **done**: `X.Radius0175.no_quartet_near_F6_r0175`, hypothesis-free, standard axioms |
| Stage C on a seed ball's enclosure | `StageCK2B` and the record pipeline below, reused | done (the pipeline of the earlier atlas) |
| Seed-ball C1 by return Z (one centre computation per ball) | `WholeBall/`, `lean/NoFourMUBs/SeedAtlas/Method/WholeBall*.lean` | in progress |
| Seed-ball C1 by boxes (fallback) | `Seed/` ([`docs/KERNEL_SEED.md`](docs/KERNEL_SEED.md)) | done; 3.6 s per box |
| The X-ball: C1e, image bound, chart, T3 | `Edge/` ([`docs/KERNEL_EDGE.md`](docs/KERNEL_EDGE.md)) | in progress |
| Transfers T0, T1 and sphere coverage | `Seed/` | design in `docs/KERNEL_SEED.md` §6 |

## The record pipeline

The earlier proof's atlas of 12,021 ball Records was kernel-checked once in full (`no_four_mubs_kernel`, 16–19 Oct
2026, 53,675 core-hours; preserved with its manifest at the git tag `v1-25dim-records`). Its Stage C, normal-bound
and boundary modules are what return X and the seed balls reuse. The rest of this file documents them.

### The pieces (17 Oct 2026)

**Record 100 is a complete kernel-checked `RecordCert`** (`NoFourMUBs.KernelAtlas.Rec100.cert`, standard axioms only),
in about 17 CPU-minutes:

| Ingredient | Lean (`lean/KernelAtlas/`) |
|---|---|
| Bin tree: direct test, tangent test, label membership | `Bins`, `Tangent`, `Labels` |
| Edges (direct O and U tests) and the two-clique search | `Edges`, `Clique`, assembled by `StageCK` |
| Normal bound: frame (g, λ, t), σ, e₀, K, j₁, radii against the bars | `FrameK`, `TrigK`, `SigmaK`, `E0K`, `NormalK` |
| Record 100 data and checks (generated) | `Rec100/` |

**Record 146** (one of the 673 Records the v1 checker could not settle) **has a complete kernel-checked Stage C**
(`Rec146.stageC2`, standard axioms) with the sharper tangent test v2 (`Tangent2`, `Tangent2K`, `Tangent2S`: hinted
least-squares multiplier, full remainder, scalar test) and the joint edge test (`Joint2`, `Joint2K`, `Joint2S`).
With v2 the greedy kernel labels leave 26 of 12,021 Records unsettled (v1: 673); a clustering variant (survivor order
× label radius) settles all 26, so direct + joint edges suffice for every Record (Record 4015, a former failure, is a
full kernel `RecordCert`). See [`docs/KERNEL_TANGENT_V2.md`](docs/KERNEL_TANGENT_V2.md).

**The `boundary` field** (`BoundaryCover`, Lemma 4.1) is kernel-checked for Record 100 (`Rec100.boundary`, standard
axioms, about 100 s and < 10 GB) and Record 146 (`Rec146.boundary`), for any atlas containing the Record whose transfer
targets have the stored centres and radii (`BoundaryK`: an η-box tree with exact integer tests, one box per target).
The exact Python mirror finds a boundary cover for all 12,021 Records.
**The `fourier` and `tao` fields** are kernel-checked the same way (`ExactK`, `Special/`):
`fourierHadamard` into Record 877 and `taoMatrix ω` (both cube roots) into the zero-dimensional Tao Record. (The
former `anchor` field, the explicit `H₀` in Record 9319, was removed with return Q.) **Tao's zero-dimensional Record** is a
kernel-checked `RecordCert` (`RecTao.cert`, frame `T = 0`, `RecordK0`), so the `tao` field holds for any atlas
containing it. See [`docs/KERNEL_BOUNDARY.md`](docs/KERNEL_BOUNDARY.md).

Details and costs: [`docs/KERNEL_RECORD100.md`](docs/KERNEL_RECORD100.md); the design and the cost model:
[`docs/KERNEL_FEASIBILITY.md`](docs/KERNEL_FEASIBILITY.md), [`docs/KERNEL_TANGENT.md`](docs/KERNEL_TANGENT.md).

## How it was reached

1. **Survey** (done: `explorations/atlas_survey/`, and for v2 `docs/KERNEL_TANGENT_V2.md`). The joint edge test is
   in the kernel; the support test is not needed: the 26 Records that fail with the greedy kernel labels pass with a
   clustering variant (all 26 in the mirror; Record 4015 end to end in the kernel), so every Record is settled by
   direct + joint edges.
2. **Boundary transfers** (`BoundaryCover`, Lemma 4.1): the checker and Records 100 and 146 are done
   (`docs/KERNEL_BOUNDARY.md`); about 1.5 CPU-minutes per Record, ≈ 300 CPU-hours for the atlas. Each Record's cover
   is conditional on its ≈ 55 targets being kernel-certified with the same centres and radii.
3. **Special Records** (done): Tao's zero-dimensional Record (`RecTao.cert`) and the `tao` and `fourier`
   fields (conditional on their target Records being in the atlas).
4. **Scale** ([`docs/KERNEL_ASSEMBLY.md`](docs/KERNEL_ASSEMBLY.md)): the data are sealed and packed (≈ 5 MB of olean
   per Record instead of ≈ 177 MB), all Records share the atlas table so cross-Record links are `rfl`, and the chunk
   and final assembly modules are generated (`export_assembly.py`; `Final.lean` checked against stub chunks). A
   rusty pilot kernel-checked 50 Records (with boundaries) and imported them into one process in 4 s and 6.9 GB,
   which extrapolates to ≈ 1–2 min and ≈ 50 GB for the atlas. **Done** (19 Oct): the full run, see the status above
   and `results/full/RUN.md`.

## Layout and usage

- `lean/KernelAtlas/`: Lean sources, built as the Lake library `KernelAtlas` declared in `lean/lakefile.toml` (not a
  default target).
- `generators/`: Python generators and exact mirrors (`export_record.py`, `export_tangent.py`, `klabels.py`,
  `knormal.py`, `kbins.py`, `ktangent.py`; boundary and special fields: `kbound.py`, `export_boundary.py`,
  `survey_boundary.py`, `kexact.py`, `export_exact.py`, `export_tao.py`).
- `docs/`: design notes and status.

Regenerate Record 100 from the repository root, then build from `lean/`:

```bash
python3 kernel_atlas/generators/export_record.py 100 kernel_atlas/lean/KernelAtlas/Rec100
python3 kernel_atlas/generators/export_tangent.py 100 kernel_atlas/lean/KernelAtlas/Rec100 --labels --subs 0,8 6,2 --all
python3 kernel_atlas/generators/knormal.py 100 kernel_atlas/lean/KernelAtlas/Rec100
cd lean && lake build KernelAtlas.Rec100.Record
```

The boundary cover and the special fields (`docs/KERNEL_BOUNDARY.md`):

```bash
python3 kernel_atlas/generators/export_boundary.py 100 kernel_atlas/lean/KernelAtlas/Rec100   # --v2 for v2 Records
python3 kernel_atlas/generators/export_exact.py     # Special/Exact.lean (fourier, tao)
python3 kernel_atlas/generators/export_tao.py       # RecTao/ (Tao's Record; then lake build KernelAtlas.RecTao.Record)
cd lean && lake build KernelAtlas.Rec100.BoundaryCover KernelAtlas.Special.Exact
```

The generated modules are named `KernelAtlas.Rec100.*`; their declarations live in the namespace
`NoFourMUBs.KernelAtlas.Rec100`.
