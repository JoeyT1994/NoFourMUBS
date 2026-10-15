# Atlas survey (exploratory)

**Not part of the proof.** A per-Record survey of the 12,021-Record atlas, to decide which algebra and which kernel
checkers pay off (`kernel_atlas/`). For each Record, `survey.py` computes, with the exact mirrors of the kernel
checkers where they exist and `stagec.py` floats otherwise:

- the kernel bin tree on kernel-derived bars: direct and tangent tests, survivors, labels, label tests;
- which edge tests the kernel-label graph needs for "no two cliques": direct (6.16), support (6.20)–(6.21), joint
  (6.23), or none of them suffice;
- tier 1 on that graph (no 6-clique: no third MUB in the ball);
- the normal bound: e₀, j₁, and whether the exact σ certificate passes;
- invariants of the centre H: d₂ (distance to a 2×2 Hadamard submatrix), d₃ (to a 3×3 Hadamard block);
- the centre's unbiased vectors (torus roots, by Newton from the labels): count, separation, Jacobian singular value,
  and **δ₃**, the least t such that six of them are pairwise `|⟨x, y⟩|/6 ≤ t` (0 iff the centre extends to a MUB
  triple): a proxy for the distance to the triple locus T₃;
- an estimated kernel time (model calibrated on Record 100).

```bash
python3 explorations/atlas_survey/survey.py out.jsonl 100 101 102          # some Records (about 12 s each)
sbatch explorations/atlas_survey/run_rusty.sh                              # all 12,021 on the cluster
python3 explorations/atlas_survey/summarize.py <results dir> [--csv file]  # report (SUMMARY.md) and CSV
```

## Results: the whole atlas (12,021 Records, `results/full/`)

Run on rusty (job 7248862 plus a backfill, 4 + 2 whole nodes, about 25 minutes); every Record surveyed, no errors.
Per-Record rows: `results/full/survey_all.jsonl.gz`; report: `results/full/SUMMARY.md`.

**Hardness concentrates near the triple locus T₃.** δ₃ (distance of the centre to a MUB triple) predicts it:

| δ₃ of the centre | Records | needs more than the direct edge tests | kernel graph fails | median est. kernel time |
|---|---|---|---|---|
| < 0.05 | 1,338 (11%) | 73% | 26% | 922 s |
| 0.05–0.1 | 2,010 | 70% | 16% | 971 s |
| 0.1–0.2 | 6,015 | 49% | 0% | 1,254 s |
| ≥ 0.2 | 2,658 | 8% | 0% | 1,524 s |

All 673 kernel failures have δ₃ ≤ 0.16 (median 0.048). The Records the atlas had to shrink are near T₃: none at
R = 0.04 or 0.05 passes with the direct tests alone.

**Two near-triple regions.** The centres closest to a triple have d₃ ≈ 0 (a 3×3 Hadamard block, the Fourier-type
families): the closest is Record 877 (δ₃ = 3e-5), the Record that contains F₆, which is known to extend to MUB
triples. A second region is not Fourier-type: Record 11975 (δ₃ = 4e-4, d₃ = 0.75, 72 torus roots) and 35 centres
with 80 or more torus roots (median d₃ = 0.76, median δ₃ = 0.028), plausibly near the bicirculant triples of
Route 2C.

**Edge tests.** Direct tests suffice for 53.6%; the support tests are needed for 19.2%, the joint test for 21.5%;
5.6% (673) fail with the kernel's simplified bin tree and need the scalar test or the full tangent multiplier.

**Normal bound.** The exact σ certificate passes on all 12,021 Records.

**Cost.** Estimated kernel time per Record: median 1,248 s, p99 3,063 s, max 6,268 s; about **4,500 CPU-hours** in
all. The tail is the in-kernel label search (up to 19M label tests).

**Unbiased vectors at the centres.** 48 torus roots for 56%, up to 120; the smallest Jacobian singular value is
0.045 (near folds).

## Pilot: every 40th Record (301 Records, `results/sample40/SUMMARY.md`)

**Hardness concentrates near the triple locus T₃.** δ₃ predicts which Records are hard:

| δ₃ of the centre | Records | needs more than the direct edge tests | kernel graph fails | median est. kernel time |
|---|---|---|---|---|
| < 0.05 | 39 (13%) | 74% | 31% | 919 s |
| 0.05–0.1 | 49 | 65% | 14% | 970 s |
| 0.1–0.2 | 153 | 42% | 0% | 1252 s |
| ≥ 0.2 | 60 | 5% | 0% | 1506 s |

No sampled centre has a third MUB exactly (smallest δ₃ = 0.0005; median 0.15). The hard Records are also the ones
the atlas had to shrink (R = 0.04–0.063: none passes with direct tests alone).

**Edge tests.** With kernel labels: direct tests suffice for 57.5%, the support tests are needed for 16.9%, the joint
test for 19.3%, and 6.3% fail even with the joint test. The failures are all near T₃ and are caused by the kernel's
simplified bin tests (no scalar test, multiplier y = c): on Record 11640, Python's Stage C keeps 3,504 bins and 413
O edges, the kernel route 5,617 survivors and 887 O edges. **So the kernel needs the support and joint tests, and the
scalar test or the full tangent multiplier near T₃.**

**Normal bound.** The exact σ certificate (penalty + LLᵀ + diagonal dominance) passes on all 301 Records.

**Cost.** Estimated kernel time: median 1240 s, p99 3067 s, max 3722 s per Record; about **4,500 CPU-hours** for the
atlas, consistent with earlier estimates. The far-from-T₃ Records are the largest trees (most survivors and labels),
the near-T₃ Records the hardest graphs. The in-kernel label search dominates the tail (up to 10M label tests): label
hints would cut it.

**Not informative.** d₂ is small for almost every Record (min over 225 submatrices of a codimension-one defect), so
it does not separate the H2 locus at this resolution; δ₃ and d₃ do.

## What this suggests

1. **T₃ is where the difficulty lives.** Classifying T₃ (or bounding its neighbourhood by an explicit family), and
   excluding quartets near it by algebra, would remove the hard 10–30% of the atlas and almost all of its special
   tests.
2. **Kernel checkers in order of need:** support tests (17%), joint test (19%), then a stronger bin tree near T₃
   (scalar test or the full tangent multiplier, about 6%), then label hints for cost.
3. **Next measurements:** locate the actual triples near the smallest-δ₃ centres (Newton on the full triple
   equations) and identify their families (Fourier, transposed Fourier, Diţă, bicirculant); how δ₃ varies across
   each ball.
