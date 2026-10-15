# Kernel atlas: checking the atlas computations in the Lean kernel (experimental)

**Not part of the proof.** The proof (`PROOF.md`, `lean/NoFourMUBs/`) is `NoFourMUBs.Final.no_four_mubs
(C : AtlasCertificate) : ¬ FourMUBs`, with the finite atlas certificate checked by `proof/atlas/certify.py` (Arb and
margined binary64) and by the independent Julia checker (`proof/independent/`). This folder pursues a stronger
form: the certificate's computations checked by the Lean kernel itself, which would make the theorem unconditional
(`¬ FourMUBs` with no hypotheses). Nothing in the proof imports this folder.

## Status (15 Oct 2026)

**Record 100 is a complete kernel-checked `RecordCert`** (`NoFourMUBs.KernelAtlas.Rec100.cert`, standard axioms only),
in about 17 CPU-minutes:

| Ingredient | Lean (`lean/KernelAtlas/`) |
|---|---|
| Bin tree: direct test, tangent test, label membership | `Bins`, `Tangent`, `Labels` |
| Edges (direct O and U tests) and the two-clique search | `Edges`, `Clique`, assembled by `StageCK` |
| Normal bound: frame (g, λ, t), σ, e₀, K, j₁, radii against the bars | `FrameK`, `TrigK`, `SigmaK`, `E0K`, `NormalK` |
| Record 100 data and checks (generated) | `Rec100/` |

Details and costs: [`docs/KERNEL_RECORD100.md`](docs/KERNEL_RECORD100.md); the design and the cost model:
[`docs/KERNEL_FEASIBILITY.md`](docs/KERNEL_FEASIBILITY.md), [`docs/KERNEL_TANGENT.md`](docs/KERNEL_TANGENT.md).

## What remains for an unconditional theorem

1. **Survey** the atlas with the Python mirrors: which Records need the support (6.20)–(6.21) or joint (6.23) edge
   tests (Record 100 needs neither), and the per-Record kernel cost.
2. **Boundary transfers** (`BoundaryCover`, Lemma 4.1) against the target Records.
3. **Special Records**: Tao's zero-dimensional Record (no frame), and the `tao`, `fourier` and `anchor` fields of
   `AtlasCertificate` (exact equivalences into Records).
4. **Scale**: smaller generated data (recompute the trees in the kernel), a hierarchical assembly, and one run over
   all 12,021 Records (about 4,000–5,000 CPU-hours, less with packed arithmetic and stronger pruning).

## Layout and usage

- `lean/KernelAtlas/`: Lean sources, built as the Lake library `KernelAtlas` declared in `lean/lakefile.toml` (not a
  default target).
- `generators/`: Python generators and exact mirrors (`export_record.py`, `export_tangent.py`, `klabels.py`,
  `knormal.py`, `kbins.py`, `ktangent.py`).
- `docs/`: design notes and status.

Regenerate Record 100 from the repository root, then build from `lean/`:

```bash
python3 kernel_atlas/generators/export_record.py 100 kernel_atlas/lean/KernelAtlas/Rec100
python3 kernel_atlas/generators/export_tangent.py 100 kernel_atlas/lean/KernelAtlas/Rec100 --labels --subs 0,8 6,2 --all
python3 kernel_atlas/generators/knormal.py 100 kernel_atlas/lean/KernelAtlas/Rec100
cd lean && lake build KernelAtlas.Rec100.Record
```

The generated modules are named `KernelAtlas.Rec100.*`; their declarations live in the namespace
`NoFourMUBs.KernelAtlas.Rec100`.
