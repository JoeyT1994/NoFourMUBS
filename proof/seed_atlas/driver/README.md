# Seed atlas driver

Builds the seed atlas of `PROOF.md` Steps 3–5 and writes it in the format of `../FORMAT.md`. Everything here is
untrusted binary64: the certifiers (`../cert/`, Arb; `../../independent_seed/`, Julia) check the result from the
certificate alone.

```bash
sbatch run_rusty.sh          # one rusty node: grow, cover the X-ball's sphere, export, per-ball n (resumable)
```

## Files

| File | Role |
|---|---|
| `driver.py` | Breadth-first growth on one node (master and a process pool; `distexec.py`/`distworker.py` spread it over several nodes) |
| `seedgeom.py` | Seed geometry: side Gram equations, Newton, continuation, the matched completion, the corner census (every g ∈ Γ, 400 corners, orientation and matching), the edge distance R/‖∇R‖ |
| `c1.py` | `Ball` (centre data: P = Q(θ₀), T = DQ(θ₀), M_θ = V S⁻¹, U = T M_θ) and the float C1 bound by Taylor models on w-boxes |
| `tmb.py` | Second-order Taylor models, batched over boxes |
| `makeball.py` | A new ball: radius ladder 0.125 … 0.01, label radius 0.03 then 0.02, stored n = 1.1 × the Taylor-model bound, Stage C screened |
| `cover.py` | Sphere covers by dyadic boxes: target discovery (sample the sphere, look every corner seed up in a grid index of the balls), T0 and linear T1 by exact vertex tests, general T1 by Taylor models, T3 at sample points |
| `edge_phase.py` | The edge chart F6-012 (return W's augmented 7-unknown system), the X-ball (`EdgeBall.xball`), T3 side orders and windings, gap proposals on the X-ball's sphere |
| `edge_multi.py` | Covers the X-ball's sphere by T1 boxes into seed balls; reports the gaps (exit 3) for `driver.py --gaps` |
| `record_boundary.py` | Covers of full-matrix record shells (T1′); used only by certificates with records |
| `seed_export.py` | Writes the certificate, with the X-ball's exclusion radius 7/40 (return X in Lean) |
| `wholeball_n.py` | The per-ball remainder: each ball's n raised to its whole-ball C1 bound (return Z) where Stage C still passes, so the certifiers' C1 is one centre computation; never tightens n |
| `kernel_n.py`, `apply_kernel_n.py` | A looser n = f × (sampled n), f up to 6, for the kernel's box C1; not used for the certificate (larger n makes Stage C's graphs harder) |
| `selfcheck.py` | Float re-check of every C1, every transfer box and every sphere cover |
| `summary.py`, `build_log.py` | Build summaries from a driver state, and the build log from a certificate and the Slurm accounting |
| `run_rusty.sh`, `run_rusty_multi.sh`, `run_selfcheck_rusty.sh` | Rusty jobs: the whole build on one node; growth over several nodes; the float self-check |

## Method

- **Balls.**
  - A ball's centre is a seed in some corner chart, with M_θ = V S⁻¹ from the SVD of DQ(θ₀), so its image is close
    to a round 4-disc of matrix radius r.
  - Both orientations are used: f₋(θ) = conj f₊(θ̄), and Γ is applied anyway.
- **Growth.**
  - Each ball's sphere ‖w‖ = r is covered by dyadic boxes.
  - Where a box has no target, a ball is spawned just outside the sphere, at f · r in that direction with
    f ∈ {1, 1.15, 1.3, 1.45}, taking the f furthest from existing centres.
  - A new ball stays in its parent's chart while that chart's edge distance is at least 0.6 × the best corner's;
    otherwise it moves to the best corner.
- **No re-covering.** Every sampled sphere point is expanded into all of its orientation-matched corner seeds (about
  28,800), and each is looked up among the existing balls. So growth stops where the class is already covered: it
  covers the class space, not Ω.
- **Transfers.**
  - **T0:** the same chart.
  - **Linear T1:** the 72 corner symmetries, where θ′ is linear in θ.
  - **General T1:** other corners, where charts meet.
  - **T3:** into the X-ball, on boxes of level ≥ 4. The matrix must be the chart's H(p_K): its fourth corner phase
    and side angles within 0.1 rad of the chart's linear side model at F6, which also gives the side orders and
    windings.
- **The X-ball.** The edge chart's ellipsoid of tangent radius 0.13, which lies within 7/40 of F6. It is excluded by
  return X, with no Stage C. Its own sphere is covered by T1 boxes into seed balls (`edge_multi.py`). Where a sphere
  point has no target, `driver.py --gaps` adds seed balls there.
- **Covers.** Each candidate is tested only on the boxes still open, and the T3 sample points are computed once per
  box.
