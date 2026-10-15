# Record 100 end to end in the kernel: status (15 Oct 2026)

Goal: a `RecordCert` for Record 100 whose every field is checked by the Lean kernel, as the template for all 12,021
Records. This file tracks what is done; the cost model and design are in `KERNEL_FEASIBILITY.md` and
`KERNEL_TANGENT.md`.

## Done: Stage C (`Rec100.stageC`, standard axioms only)

`NoFourMUBs.KernelAtlas.Rec100.stageC` builds `StageCCert ((1/2π) • Pmat tab.pq) (Tmat tcfg tq) rH n r rF` for any
radii with `r ≤ r̄`, `r_F ≤ r̄_F`, `r_H ≤ r̄_H`, `n ≤ n̄` and an operator-norm bound `K ≤ K̄`
(`kernel_atlas/lean/KernelAtlas/Rec100/StageC.lean`). It is assembled by `stageCK` (`KernelAtlas/StageCK.lean`) from:

| Ingredient | Lean | Kernel check (Record 100) |
|---|---|---|
| Bin tree: direct test, tangent test (y = c), label membership at depth 0 | `Tangent.lean`, `Labels.lean` (`leafL`, `labOK_sound` via `inLabel_of_wrap`) | `Rec100.coverT`: 144 sub-slabs, 769 s CPU, ≤ 7.7 GB per process |
| Labels: 131 labels for the 11,057 kernel survivors, largest s = 0.0409 < 1/10 | `labsOK`, `labsSmall` | `LabelData`, `Graph`: seconds |
| Edges: direct O and U tests (6.16) from the verified e(k/192) table | `Edges.lean` (`edgeOB_sound`, `edgeUB_sound`) | `Graph.edgesOK_`, together with the clique search: 66 s, 14.7 GB |
| Two-clique search (include/exclude with accumulator) | `Clique.lean` (`cl_complete`, `noTwo_sound`) | `Graph.cliqueOK_`: 157,867 calls in the mirror |

Notes.
- The labels are re-derived from the **kernel** survivors (`klabels.py`, an exact mirror of the traversal), because
  the kernel tangent test is slightly weaker than `stagec.py` and leaves 11,057 survivors instead of Python's 8,246.
  Python's labels would not cover them.
- Record 100 needs neither the support tests (6.20)–(6.21) nor the joint test (6.23): the direct edge tests alone
  leave 2,274 O pairs and 10,976 U arcs, and the graph has no two cliques. Other Records may need them.
- The scalar test is not used; the tangent test runs on every direct-test survivor.

Regenerate (from the repository root) and check (from `lean/`):

```bash
python3 kernel_atlas/generators/export_tangent.py 100 kernel_atlas/lean/KernelAtlas/Rec100 --labels --subs 0,8 6,2 --all
lake build KernelAtlas.Rec100.StageC
```

## Done: the normal bound, and the whole `RecordCert` (`Rec100.cert`)

`NoFourMUBs.KernelAtlas.Rec100.cert : RecordCert` (`kernel_atlas/lean/KernelAtlas/Rec100/Record.lean`) is assembled by
`recordK` (`KernelAtlas/NormalK.lean`). Every field is a kernel check:

| Field | Lean | Record 100 | Kernel cost |
|---|---|---|---|
| `hproj` (g), `hlam` (λ), `hcol` (t) | `FrameK.lean`: exact Gram matrix, `‖G − I‖_F ≤ e_G`, rational inverse, Gershgorin per column block | e_G = 2.1e-9, g = 1.000000001, t = 0.617265 | seconds |
| `hσ` (σ) | `SigmaK.lean`: `‖Jν‖² = ½ Σ C d d` (`jac_sq`), table error `≤ 36γ‖ν‖²`, closed-form matrix `M̃` (`quadM`), penalty `c AᵀA` (rows, columns, frame), `M̃ + cAᵀA − sI − LLᵀ` diagonally dominant | σ = 17/10, L dyadic (2⁻⁴⁰), smallest remainder diagonal 1e-3 | 41 s, 14 GB |
| `he` (e₀), `hK` (K̄) | `E0K.lean`: `Φ(0)` from the table, `‖Zᴴz‖² = 6‖z‖² + zᴴΦz` | e₀ = 6.6e-11 | with σ |
| `hj` (j₁) | `E0K.lean`: linearity of J, per-frame bounds | j₁ = 9.7e-9 | with σ |
| radii ≤ bars, `hLR` | `NormalK.lean`: `nroot σ b ≤ 2b̄/(σ + s_lo)` (`nroot_le`), `π̃ ≤ π`, `√3 ≤ s̄₃` | n̄ = 0.0065646 rad | `barsOK_` |

The trig constants use a second table `tabN` (`p = 64`, Taylor order 60) on the same centre as the bin-tree table.
**The Stage C bars are now derived from these kernel constants** (`knormal.kernel_radii`, used by both
`export_record.py` and `export_tangent.py`), so nothing in Record 100 depends on the Python float normal bound.

Regenerate (from the repository root) and check (from `lean/`):

```bash
python3 kernel_atlas/generators/export_record.py 100 kernel_atlas/lean/KernelAtlas/Rec100
python3 kernel_atlas/generators/export_tangent.py 100 kernel_atlas/lean/KernelAtlas/Rec100 --labels --subs 0,8 6,2 --all
python3 kernel_atlas/generators/knormal.py 100 kernel_atlas/lean/KernelAtlas/Rec100
lake build KernelAtlas.Rec100.Record
```

## To do

1. **Boundary transfers** (`BoundaryCover A l`): the η-box tree with off-shell and transfer tests against the target
   Records (Lemma 4.1). These refer to other Records' centres and radii, so they need the atlas indexing.
2. **Measure the other Records**: which need the support or joint edge tests, and the per-Record kernel cost.
3. **Scale**: generate and check all 12,021 Records on the cluster; then `AtlasCertificate`.
