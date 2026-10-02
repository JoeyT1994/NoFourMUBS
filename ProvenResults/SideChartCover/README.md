# SideChartCover — construction certified, Julia integration pending

Read `PROOF.md` before enabling this in production. This addition supplies:

* `provider.jl`: `sidechart_models(theta,rho)` and `certify_cell_sidechart(theta,rho)`;
* `cover_model.jl`: model injection into a copy of the unchanged production cover body;
* `predicate.py`: an independently executable outward quadratic-chart/constant-completion model validator;
* `verify.py`: source pins, exact cover-body diff, and frozen construction-witness replay;
* `test_regular.jl` and `pilot.jl`: requested Julia regression and bounded cover pilot, **not run** in this delivery environment.

## Executed result

617 of 1,000 deterministic positive-R singular sample boxes have two separated side orbits in each orientation and all four completion enclosures. All 617 frozen witnesses replay successfully. 383 remain inconclusive. There were **zero production quartet-cover tests** in this environment. Do not use the 61.7% construction rate as a quartet-certification rate or a measured Julia-provider rate.

```sh
python ProvenResults/SideChartCover/verify.py --project-root /path/to/NoFourMUBS --all
```

The Python public predicate is:

```python
from fractions import Fraction
from ProvenResults.SideChartCover import predicate
result = predicate([Fraction(-3,2),Fraction(1),Fraction(1),Fraction(-3,2)], Fraction(1,8192))
```

The example is an interface illustration, not a promised acceptance. `result['ok']` from this Python function certifies **models only**. It cannot be fed to the campaign as a quartet-exclusion flag. This module imports the sibling `SymmetricSignedCornerPrune/interval_core.py` solely as its shared outward arithmetic kernel.

## Julia integration commands — pending review/run

Use a fresh process, pinned campaign environment, no fast-math, and single-threaded BLAS:

```sh
export NOFOURMUBS_ROOT=/path/to/NoFourMUBS
export OPENBLAS_NUM_THREADS=1
export OMP_NUM_THREADS=1
julia --startup-file=no --threads=1 \
  --project="$NOFOURMUBS_ROOT/NumericalCampaign/Certification/jlenv_cluster" \
  "$NOFOURMUBS_ROOT/ProvenResults/SideChartCover/test_regular.jl"
```

The regular-box script asserts finite-budget accept/reject parity on four regular g2-neighborhood boxes, and requires at least one actual acceptance; parity of all-inconclusive runs is not called success. Neither that script nor the provider has been compiled or executed here. A mismatch needs review; sound overenclosures need not have identical finite-budget performance.

The 1,000-box cover pilot can be divided into ten 100-box shards. Each shard writes one TSV and refuses to overwrite an existing output. Example for the first shard:

```sh
julia --startup-file=no --threads=1 \
  --project="$NOFOURMUBS_ROOT/NumericalCampaign/Certification/jlenv_cluster" \
  "$NOFOURMUBS_ROOT/ProvenResults/SideChartCover/pilot.jl" \
  "$NOFOURMUBS_ROOT/NumericalCampaign/Campaign/branch_bins_study_2026-09-30/results/posR_singular_boxes_level13.txt.gz" \
  /new/output/cover_pilot_00000.tsv 0 100 60
```

Last arguments are sample start index, count, and per-box wall deadline. Starts 0,100,...,900 cover the same 1,000 source positions as the Python pilot. The shared cover node budget is four million per seed box across all four representatives. A timeout or budget exhaustion is inconclusive. No such cluster job was launched. Runs approaching 5,000 CPU hours require the user's approval; there is no full-campaign cost estimate in this package.

## Integration boundary

The valid enclosure is the union of four orbit representatives and their independent ordinary side permutations, not a single floating-label H+ branch. All four representative cover calls must succeed. The code preserves shared seed variables, including the vertical-variable swap, and validates the local completion inverse instead of assuming the ten-chart conditioning constant applies to the original split.
