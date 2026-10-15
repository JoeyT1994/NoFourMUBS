# Kernel tangent test C2(b) — the GATE experiment (done, 15 Oct 2026)

**Status:** done. The checker is built and benchmarked, and the gate passes (GO). The soundness proof compiles:
`tangB_sound`, `binT_sound`, `slabT_sound` and `topT_sound` use only `propext`, `Classical.choice` and `Quot.sound`.
**Record 100's whole bin tree, with the direct and the tangent test, is kernel-checked**: `Rec100.coverT`, from 144
`decide +kernel` sub-slabs in 12 modules (`Rec100/TangentSlab00`–`11`), standard axioms only. See §Result.

## Measured cost per tangent test (Record 100, kernel, `decide +kernel`)

Method: same sub-slab traversal, run twice in one `lean` process each. Run 1 does the direct test only. Run 2 also
computes the tangent test at every direct-test survivor but ignores its answer, so the tree is identical. The
difference is divided by the number of tangent tests (exact-mirror count).

| Sub-slab | Tangent tests | Δ user time | Δ peak RSS | **Per test** |
|---|---|---|---|---|
| (0, 8) | 5,537 | 7.5 s | 0.99 GB | **1.36 ms, 0.18 MB** |
| (6, 2) | 5,443 | 7.1 s | 0.98 GB | **1.31 ms, 0.18 MB** |

**Gate (≤ 10 ms, ≤ 1 MB per test): GO.** The margins are about 7× on time and 5.5× on memory.

For comparison, the direct test in the same runs costs 0.75 ms and about 110 KB per bin.

Key finding: the first version cost 7.2 ms and 1.0 MB per test. **`Nat.log2` is not accelerated by the kernel**: a
microbenchmark gives 3.1 ms and 0.55 MB per call on a 300-bit number. The two integer square roots (Newton steps
started from `log2`) were the whole cost. They are now gone: `kU·√X1 + kQ·√X2 < C` is decided exactly by
`b² < C²`, `a² < C² + b²` and `4C²b² < (C² + b² − a²)²`. Everything else measured as expected:
- direct `Nat.add/mul/div/mod/ble` cost about 3 µs per operation;
- notation (`+`, `*`) costs about 2.7× more;
- big integers (up to about 1,700 bits) add little;
- replacing `let`s by staged functions made no difference.

## What is built

- `lean/NoFourMUBs/KernelAtlas/Tangent.lean`:
  - **Checker** (`tangB`, all `Nat`): multiplier `y_i = N_i − 6Z²` (the rule y = c), computed in the kernel with no
    hints. `N_i` and the sign-split magnitudes are shared with `rejectB`.
  - **Lane packing:** lanes of radix `R = 2^170`; lanes 0–5 hold the rows j, lanes 6–9 the frame directions k.
    - Per node: `TP_ji = R^j + Σ_k T'_kji R^(6+k)`.
    - Packed bin sums `pk` are accumulated along the traversal.
    - Two multiplications per column give `X_i`, and six more give `G`. Its ten lanes yield `V_j = Σ_i y_i J̃_ij`
      and `B̃_k`, read with `/` and `%`.
  - **Traversal** `binT/slabT`: direct test, then tangent test, then the 32 children. Flags `on/use` exist for
    benchmarking only.
  - **Side conditions:** `TParQ` and `TParOK` (decidable, checked once per Record), and the exact frame `Tmat`
    (`T = (T' − OT)/DT`, `DT = 36·2^30`).
  - **Proofs** (all compile):
    - `tang_real`/`tang_final`: the real-number core into `StageC.leafRej_of_linear`. **Compiles.**
    - Integer layer: `colX_int`, `pv_digit`/`lane_int` (lane extraction), `sqrtfree`, `tFin_sound`, `tY_sound`,
      `lanes_interp`.
    - Assembly: `tangB_sound`, whose conclusion is `∀ δ, Admissible (Tmat tc tq) rH n r rF δ → LeafRej …`.
    - Traversal: `binT_sound`, `slabT_sound`, `topT_sound`, giving `Covered`.
- `lean/generators/kernelatlas/ktangent.py`:
  - exact mirror of `tangB` and the traversal, with `TCfg`/`TPar` constants;
  - on Record 100: 154,831 tangent tests, 814,336 direct tests, 11,057 survivors at M = 96, in 15 s of Python;
  - the float model with y = c and the same simplifications gives 154.6k tests and 11.1k survivors.
- `lean/generators/kernelatlas/export_tangent.py` writes:
  - `TangentData.lean` (`tcfg`, `tq`, `tparOK`);
  - `TangentSub.lean`, the selected sub-slabs;
  - with `--all`: `TangentSlabNN.lean` and `TangentCover.lean` (`coverT` via `topT_sound`).

Simplifications versus `stagec.py`, all sound:
- N_y ≤ ‖S∘y‖, G_y dropped (the K-branch of the min), the r_F branches of the other mins, SYinf ≤ ‖S∘y‖;
- there is no scalar test, so the tangent test runs on every direct-test survivor.

Cost of the simplifications: about +12% survivors (11.1k against 9.8k) and +3.5% tangent tests.

## Estimate (provisional)

**Record 100:** 814k direct tests × 0.75 ms + 155k tangent tests × 1.35 ms ≈ **10.2 + 3.5 ≈ 14 min** of kernel
time. That is less than the 26 min of the direct-only tree, because the tangent test prunes.

**Average Record:**
- bin tree with the tangent test: about 14 min;
- joint test (≈ 2 tangent tests each): about 0.5 min;
- the other §4 items of KERNEL_FEASIBILITY.md: about 3–9 min;
- total ≈ **20–25 min per Record**, so **≈ 4,000–5,000 CPU-h for 12,021 Records**. The previous estimate was
  8,000–24,000.

## Result (15 Oct 2026)

- `NoFourMUBs.KernelAtlas.Tangent` builds (about 70 s). The last tactic error (`r4` in the square-root-free comparison)
  is fixed by casting the difference separately (`hD`).
- `export_tangent.py 100 … --preflight` and `--all` write `Rec100/TangentData.lean`, `TangentSub.lean` (sub-slabs
  (0, 8) and (6, 2)), `TangentSlab00`–`11.lean` and `TangentCover.lean`, 68 KB in all.
- `Rec100.TangentData` (`tparOK`) and `Rec100.TangentSub` build in 20 s and 27 s, at about 8.5 GB peak each (including
  about 6 GB of Mathlib).
- `Rec100.TangentCover` with its 12 slab modules: **681 s of CPU in total (11.4 min)**, 76 s of wall time on an
  18-core, 64 GB laptop with Lake building the slabs in parallel, at most 7.8 GB per process. The provisional estimate
  was about 14 min.
- `#print axioms Rec100.coverT`: `propext`, `Classical.choice`, `Quot.sound`.

Reproduce, from `lean/`:

```bash
python3 generators/kernelatlas/export_tangent.py 100 NoFourMUBs/KernelAtlas/Rec100 --subs 0,8 6,2 --preflight
python3 generators/kernelatlas/export_tangent.py 100 NoFourMUBs/KernelAtlas/Rec100 --all
lake build NoFourMUBs.KernelAtlas.Rec100.TangentSub NoFourMUBs.KernelAtlas.Rec100.TangentCover
```

**Since then.** Label membership, the direct edge tests and the two-clique search are in the kernel too, and
`Rec100.stageC` assembles a complete Stage C certificate: see `KERNEL_RECORD100.md`. Still missing for a complete
Record: the normal bound and the boundary transfers.
