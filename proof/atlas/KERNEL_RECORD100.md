# Record 100 end to end in the kernel: status (15 Oct 2026)

Goal: a `RecordCert` for Record 100 whose every field is checked by the Lean kernel, as the template for all 12,021
Records. This file tracks what is done; the cost model and design are in `KERNEL_FEASIBILITY.md` and
`KERNEL_TANGENT.md`.

## Done: Stage C (`Rec100.stageC`, standard axioms only)

`NoFourMUBs.KernelAtlas.Rec100.stageC` builds `StageCCert ((1/2π) • Pmat tab.pq) (Tmat tcfg tq) rH n r rF` for any
radii with `r ≤ r̄`, `r_F ≤ r̄_F`, `r_H ≤ r̄_H`, `n ≤ n̄` and an operator-norm bound `K ≤ K̄`
(`lean/NoFourMUBs/KernelAtlas/Rec100/StageC.lean`). It is assembled by `stageCK` (`KernelAtlas/StageCK.lean`) from:

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

Regenerate and check, from `lean/`:

```bash
python3 generators/kernelatlas/export_tangent.py 100 NoFourMUBs/KernelAtlas/Rec100 --labels --subs 0,8 6,2 --all
lake build NoFourMUBs.KernelAtlas.Rec100.StageC
```

## To do

1. **Normal bound** (the `RecordCert` fields other than `stageC`), and the five radius hypotheses of `stageC`:
   - `hproj`, `g`: the frame T is horizontal and its Gram matrix has λ_min ≥ 1/g² (exact rational);
   - `hσ`, σ: a lower bound on the Jacobian on the 21-dimensional normal space, from trig enclosures of `P` and an
     exact LDLᵀ of a rational approximation with an error margin; `hLR: 2√3 R < σ`;
   - `he` (e₀), `hj` (j₁), `hlam` (λ), `hcol` (t): residual and norm bounds;
   - `hK`: `‖e(P)/√6‖_op ≤ K̄`;
   - the RecordCert radii (`nroot` expressions) are ≤ the bars r̄, r̄_F, r̄_H, n̄ used by the bin tree.
2. **Boundary transfers** (`BoundaryCover`): the η-box tree with off-shell and transfer tests against the target
   Records' centres (Lemma 4.1).
3. **Measure the other Records**: which need the support or joint edge tests, and the per-Record kernel cost.
