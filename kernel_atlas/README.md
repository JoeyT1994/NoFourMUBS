# Kernel atlas: checking the atlas computations in the Lean kernel (experimental)

**Not part of the proof.** The proof (`PROOF.md`, `lean/NoFourMUBs/`) is `NoFourMUBs.Final.no_four_mubs
(C : AtlasCertificate) : ¬ FourMUBs`, with the finite atlas certificate checked by `proof/atlas/certify.py` (Arb and
margined binary64) and by the independent Julia checker (`proof/independent/`). This folder pursues a stronger
form: the certificate's computations checked by the Lean kernel itself, which would make the theorem unconditional
(`¬ FourMUBs` with no hypotheses). Nothing in the proof imports this folder, `verify.py` does not run it, and a
reviewer does not need to: it is here to show that the kernel check exists and works.

## Status (16 Oct 2026)

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
**The `fourier`, `tao` and `anchor` fields** are kernel-checked the same way (`ExactK`, `AnchorK`, `Special/`):
`fourierHadamard` into Record 877, `taoMatrix ω` (both cube roots) into the zero-dimensional Tao Record, and the
base-anchor completion `H₀` (entries in `ℚ(i, √3, √5, √7)`) into Record 9319. **Tao's zero-dimensional Record** is a
kernel-checked `RecordCert` (`RecTao.cert`, frame `T = 0`, `RecordK0`), so the `tao` field holds for any atlas
containing it. See [`docs/KERNEL_BOUNDARY.md`](docs/KERNEL_BOUNDARY.md).

Details and costs: [`docs/KERNEL_RECORD100.md`](docs/KERNEL_RECORD100.md); the design and the cost model:
[`docs/KERNEL_FEASIBILITY.md`](docs/KERNEL_FEASIBILITY.md), [`docs/KERNEL_TANGENT.md`](docs/KERNEL_TANGENT.md).

## What remains for an unconditional theorem

1. **Survey** (done: `explorations/atlas_survey/`, and for v2 `docs/KERNEL_TANGENT_V2.md`). The joint edge test is
   in the kernel; the support test is not needed: the 26 Records that fail with the greedy kernel labels pass with a
   clustering variant (all 26 in the mirror; Record 4015 end to end in the kernel), so every Record is settled by
   direct + joint edges.
2. **Boundary transfers** (`BoundaryCover`, Lemma 4.1): the checker and Records 100 and 146 are done
   (`docs/KERNEL_BOUNDARY.md`); about 1.5 CPU-minutes per Record, ≈ 300 CPU-hours for the atlas. Each Record's cover
   is conditional on its ≈ 55 targets being kernel-certified with the same centres and radii.
3. **Special Records** (done): Tao's zero-dimensional Record (`RecTao.cert`) and the `tao`, `fourier` and `anchor`
   fields (conditional on their target Records being in the atlas).
4. **Scale**: smaller generated data (packed literals; recompute the trees in the kernel), a hierarchical assembly
   into one `AtlasCertificate`, and one run over all 12,021 Records (about 6,300 CPU-hours with the boundaries). The
   assembly and the rusty run are designed in [`docs/KERNEL_ASSEMBLY.md`](docs/KERNEL_ASSEMBLY.md).

## Layout and usage

- `lean/KernelAtlas/`: Lean sources, built as the Lake library `KernelAtlas` declared in `lean/lakefile.toml` (not a
  default target).
- `generators/`: Python generators and exact mirrors (`export_record.py`, `export_tangent.py`, `klabels.py`,
  `knormal.py`, `kbins.py`, `ktangent.py`; boundary and special fields: `kbound.py`, `export_boundary.py`,
  `survey_boundary.py`, `kexact.py`, `export_exact.py`, `export_anchor.py`, `export_tao.py`).
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
python3 kernel_atlas/generators/export_anchor.py    # Special/Anchor.lean (anchor)
python3 kernel_atlas/generators/export_tao.py       # RecTao/ (Tao's Record; then lake build KernelAtlas.RecTao.Record)
cd lean && lake build KernelAtlas.Rec100.BoundaryCover KernelAtlas.Special.Exact KernelAtlas.Special.Anchor
```

The generated modules are named `KernelAtlas.Rec100.*`; their declarations live in the namespace
`NoFourMUBs.KernelAtlas.Rec100`.
