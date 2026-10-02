# Budget: certifying Q in 600,000 CPU-hours

The budget is 600,000 CPU-hours over two weeks on rusty, under account `ccq`. The QOS limit is
3,840 cores or 45 nodes. The domain D₀ ∩ F and the reduction are in [REDUCTION.md](REDUCTION.md).

## Run of record (30 September 2026): projection

| Stage | Size | Basis | CPU-h |
|---|---|---|---|
| 1. Expansion, rescaled FastTM | 340,972 level-6 jobs, 16,686 tasks, 3 × 10 rome nodes | guarded expansion: 30 nodes for about 7.8 h including the tail. The rescaled code is about 10× faster on the former guard-failure cells | ≈ 2–3·10⁴ |
| 2. Layer prune | ≈ 14.0M branch-layer cells | guarded layer: 4 nodes, 1.7 h | ≈ 1·10³ |
| 3. Certify, accelerated cover only | ≈ 8.65M work cells, plus about 5·10⁴ new ones from former guard cells | guarded certification: 342,217 of 342,218 certified, 20.7 s mean, projecting 4.97·10⁴ task CPU-h | ≈ 5–6·10⁴ with the tail |
| 4. Pass 2 and replay | failed cells (0.0003% so far) and a random replay sample | measured on earlier runs | < 10³ |
| **Total for the run of record** | | | **≈ 8–9·10⁴** |

## Spent so far (Slurm accounting, 28–30 September)

| Run | CPU-h charged |
|---|---|
| First (unguarded) expansion, 28 Sep, including cancelled attempts | ≈ 2.8·10⁴ |
| Expansion tail, layer prune, 1% sample | ≈ 6·10³ |
| 0.2% samples (v2 rays first; v3 accelerated cover) | ≈ 1–4·10³ |
| Unguarded full certification, cancelled at 43.7% (FastTM rigour gap) | ≈ 2.4·10⁴ |
| Guarded expansion, layer prune and certification (cancelled at about 4%) | ≈ 1.8–3.6·10⁴ |
| Branch-layer jobs on this account | ≈ 10² |
| **Total** | **≈ 7.6–9.9·10⁴, 13–16% of the budget** |

The ranges bound the charge of jobs that shrink their allocation. Each Slurm resize record repeats
the elapsed time from the start, so the upper value multiplies the initial allocation by the final
elapsed time. **Spent plus the run of record comes to ≈ 1.7–1.9·10⁵ CPU-h, about 30% of the budget.**

## How the estimate evolved

| Date | Setup | Unbiased mean per cell | Projection |
|---|---|---|---|
| 29 Sep, 02:00 | rays first, cover cap 0.3, widths to 1/128 | 767 s, 24% failed | 1.8·10⁶ |
| 29 Sep, 12:00 | rays first, cap 0.59, widths to 1/256 | 589 s, 8.8% failed | 1.4·10⁶ |
| 29 Sep, 14:00 | **accelerated cover only** | **25 s, 0% failed** | **6.0·10⁴** |
| 30 Sep, 06:20 | guarded FastTM, first 342,218 cells of the full run | 20.7 s, 0.0003% failed | 5.0·10⁴ |

Details are in [Campaign/cluster/REPORT_2026-09-29b.md](Campaign/cluster/REPORT_2026-09-29b.md).
The pre-campaign cost analysis of 27–28 September (Krawczyk-era per-cell costs and cell-count
tables) is archived in `../NoFourMUBSArchive/cleanup-2026-09-29/NumericalCampaign/BUDGET_2026-09-28.md`.
