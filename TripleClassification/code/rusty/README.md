# Cluster drivers (rusty, Slurm)

These scripts run the tree pipeline on rusty under `/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/`. They
contain no mathematics. Every verdict comes from the frozen certifier, the builders, `gamma_test.py` and
`audit_select.py` in `../`.

| Script | What it does |
|---|---|
| `run_select.sh` | One level of selective refinement (`split_select.py`) for a task's balls, or one ball (`BALLS`) |
| `chain_levels.sh` | Levels 4–6 (`LEVELS`) in sequence for one task or ball |
| `chain_v2.sh` | The current driver: one ball, score-first. For each level: finish the parent layer with the runner that built it, score its open cells (`gamma_test.py`), build the next layer from the cells no receipt closes (`tree_build.py`), run it |
| `switch_v2.sh` | Stops the older per-ball chains and launches `chain_v2.sh` for each open ball |
| `run_gamma.sh`, `gamma_list.py`, `gamma_list_timeouts.py` | Score a list of open cells (`gamma_test.py batch`) |
| `run_gamma_sweep.sh` | Every 20 minutes, score open cells not yet scored |
| `gamma_by_ball.py`, `../ball_cells.py` | Compact per-ball score records; one layer's unscored open cells |
| `run_sidecar_loop.sh`, `run_sidecar_sel.sh`, `interim.sh`, `complete_files.py` | Stage C preconditions (`stagec_guard.py`) for closed sub-balls; the loop is incremental |
| `assemble_all.sh` | Builds `results/`: certifier on whole balls, else one audited tree per ball, with certificates |
| `run_assemble_loop.sh` | Reruns `assemble_all.sh` into `results_live` every 30 minutes, with cached verdicts |

**Deletion rule.** These scripts delete only:
- `mktemp` lists they create themselves;
- the assembly's own scratch directories, named from `OUT`, which must be set.

Every such `rm` uses exact, quoted paths.
