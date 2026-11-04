# Kernel atlas: checking the certificate in the Lean kernel

The main theorem is `EdgeXFinal.no_four_mubs_seed (C : EdgeAtlasCertificate) : ¬ FourMUBs` (see `PROOF.md` and
`lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean`). Its hypothesis is a numerical certificate, whose inequalities are
checked by the Arb and Julia certifiers. This folder checks those inequalities in the Lean kernel itself, with
`decide +kernel`. Once all of them are checked this way, the theorem holds with no hypotheses. `verify.py` does not
run any of this, and a reviewer of the proof does not need it.

## Status

| Part | Lean (`lean/KernelAtlas/`) | Status |
|---|---|---|
| The exclusion of quartet edges within 7/40 of F6 (Theorem 4.1, the `exclusion` field of the ball at F6) | `X/`, `X/SC175/` | Done. `NoFourMUBs.X.no_quartet_near_F6_r0175` (in `lean/NoFourMUBs/X/Radius0175.lean`) is hypothesis-free and uses only the standard axioms. |
| The local tests that exclude quartet edges from a ball's enclosure (Stage C, Lemma 3.2), on a seed ball | `StageCK2B` and the Record modules below, reused | Done, as part of the earlier full kernel check |
| The enclosure of the Hadamard matrices over a seed ball (Lemma 3.1), from one computation at the centre of each ball | `WholeBall/`, `lean/NoFourMUBs/SeedAtlas/Method/WholeBall*.lean` | In progress. The method is proved in Lean, and one ball of a development certificate is kernel-checked ([`WholeBall/`](lean/KernelAtlas/WholeBall/README.md)). |
| The same enclosure from a subdivision of the ball into boxes (the fallback) | `Seed/` ([`docs/KERNEL_SEED.md`](docs/KERNEL_SEED.md)) | Done, 3.6 s per box |
| The ball at F6 (the X-ball): its enclosure, the bound on its image, the edge chart and the transfers into it (T3) | `Edge/` ([`docs/KERNEL_EDGE.md`](docs/KERNEL_EDGE.md)) | In progress |
| The transfers between seed balls (T0 and T1, Lemma 5.1) and the coverage of each boundary sphere | `Seed/` | Designed, see `docs/KERNEL_SEED.md` §6 |

Theorem, lemma and transfer numbers refer to `PROOF.md`.

## The Record modules

An earlier version of the proof used an atlas of 12,021 balls in 25-dimensional coordinates, called Records. That
atlas was kernel-checked once in full (`no_four_mubs_kernel`, 16–19 Oct 2026, 53,675 core-hours, see
[`results/full/RUN.md`](results/full/RUN.md)). Its Stage C, normal-bound and boundary modules are reused by the
exclusion near F6 and by the seed balls, and the rest of this file documents them. The atlas and its certificate are
kept at the git tag `v1-25dim-records`. The generators that read this certificate (`export_record.py`,
`export_table.py`, `kbound.py`, `kexact.py` and others) need it from the tag.

### Record 100

Record 100 is a complete kernel-checked `RecordCert` (`NoFourMUBs.KernelAtlas.Rec100.cert`). It uses only the
standard axioms and takes about 17 CPU-minutes.

| Part | Lean (`lean/KernelAtlas/`) |
|---|---|
| Bin tree: direct test, tangent test, label membership | `Bins`, `Tangent`, `Labels` |
| Edges (direct O and U tests) and the two-clique search | `Edges`, `Clique`, assembled by `StageCK` |
| Normal bound: frame (g, λ, t), σ, e₀, K, j₁, radii against the bars | `FrameK`, `TrigK`, `SigmaK`, `E0K`, `NormalK` |
| Record 100 data and checks (generated) | `Rec100/` |

### Record 146 and the sharper tests

Record 146 is one of the 673 Records that the first version of the checker could not settle. Its Stage C is
kernel-checked in full (`Rec146.stageC2`, standard axioms). It uses two sharper tests. The second version of the
tangent test (`Tangent2`, `Tangent2K`, `Tangent2S`) has a hinted least-squares multiplier, the full remainder and a
scalar test. The joint edge test is in `Joint2`, `Joint2K` and `Joint2S`.

With the second tangent test and the greedy kernel labels, 26 of the 12,021 Records remain unsettled (673 with the
first version). A clustering variant, which varies the survivor order and the label radius, settles all 26. So the
direct and joint edge tests suffice for every Record. Record 4015, formerly one of the failures, is a full
kernel-checked `RecordCert`. See [`docs/KERNEL_TANGENT_V2.md`](docs/KERNEL_TANGENT_V2.md).

### Boundary and special fields

The `boundary` field (`BoundaryCover`, Lemma 4.1 of the earlier proof) is kernel-checked for Record 100
(`Rec100.boundary`, standard axioms, about 100 s and under 10 GB) and for Record 146 (`Rec146.boundary`). Each result
holds for any atlas that contains the Record and whose transfer targets have the stored centres and radii. The
checker `BoundaryK` works on a tree of η-boxes with exact integer tests, one box per target. An exact Python mirror
finds a boundary cover for all 12,021 Records.

The `fourier` and `tao` fields are kernel-checked in the same way (`ExactK`, `Special/`). They place
`fourierHadamard` in Record 877 and `taoMatrix ω`, for both cube roots ω, in Tao's zero-dimensional Record. That
Record is itself a kernel-checked `RecordCert` (`RecTao.cert`, with frame `T = 0`, `RecordK0`), so the `tao` field
holds for any atlas containing it. An earlier `anchor` field, the explicit `H₀` in Record 9319, has since been
removed from the certificate. See [`docs/KERNEL_BOUNDARY.md`](docs/KERNEL_BOUNDARY.md).

Details and costs are in [`docs/KERNEL_RECORD100.md`](docs/KERNEL_RECORD100.md). The design and the cost model are in
[`docs/KERNEL_FEASIBILITY.md`](docs/KERNEL_FEASIBILITY.md) and [`docs/KERNEL_TANGENT.md`](docs/KERNEL_TANGENT.md).

### How the full check was done

1. A survey of the atlas (`explorations/atlas_survey/` at the tag, and `docs/KERNEL_TANGENT_V2.md` for the
   second tangent test) fixed which tests the kernel needs. The joint edge test is in the kernel. The support
   test is not needed, because the 26 Records that fail with the greedy kernel labels pass with a clustering variant.
   All 26 pass in the mirror, and Record 4015 passes end to end in the kernel.
2. For the boundary transfers (`BoundaryCover`, Lemma 4.1), the checker and Records 100 and 146 came first
   (`docs/KERNEL_BOUNDARY.md`). Each Record takes about 1.5 CPU-minutes, or about 300 CPU-hours for the atlas. Each
   Record's cover is conditional on its roughly 55 targets being kernel-certified with the same centres and radii.
3. The special Records followed: Tao's zero-dimensional Record (`RecTao.cert`) and the `tao` and `fourier`
   fields, each conditional on its target Record being in the atlas.
4. The check was then scaled to the whole atlas ([`docs/KERNEL_ASSEMBLY.md`](docs/KERNEL_ASSEMBLY.md)). The data
   are sealed and packed, which gives about 5 MB of olean per Record instead of about 177 MB. All Records share the atlas table, so links between
   Records hold by `rfl`. The chunk and final assembly modules are generated by `export_assembly.py`, and
   `Final.lean` was first checked against stub chunks. A pilot run kernel-checked 50 Records with their boundaries
   and imported them into one process in 4 s and 6.9 GB. This extrapolates to about 1–2 min and about 50 GB for the
   whole atlas. The full run finished on 19 Oct 2026 ([`results/full/RUN.md`](results/full/RUN.md)).

## Layout and usage

- `lean/KernelAtlas/`: Lean sources, built as the Lake library `KernelAtlas` declared in `lean/lakefile.toml`. It is
  not a default target.
- `generators/`: Python generators and exact mirrors (`export_record.py`, `export_tangent.py`, `klabels.py`,
  `knormal.py`, `kbins.py`, `ktangent.py`, and for the boundary and special fields `kbound.py`,
  `export_boundary.py`, `survey_boundary.py`, `kexact.py`, `export_exact.py`, `export_tao.py`).
- `docs/`: design notes and status.

To regenerate Record 100, run the generators from the repository root and then build from `lean/`:

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

The generated modules are named `KernelAtlas.Rec100.*`. Their declarations live in the namespace
`NoFourMUBs.KernelAtlas.Rec100`.
