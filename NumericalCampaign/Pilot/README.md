# Overnight pilot (27–28 September 2026)

[pilot_completeness.jl](pilot_completeness.jl) draws random cell centres in
D₀ ∩ F, with ρ = 0.005. It certifies each cell end to end, meaning complete
certified rays (complete.jl) and no quartet (gram.jl), and bisects failures
up to twice. It writes one JSON line per cell. Summarise a run with
`python3 summarize.py [dir]`.

**Historical.** These pilots used the rays path, which the campaign no longer uses; see
[../README.md](../README.md).

| run | code version | directory |
|---|---|---|
| v1–v3 | first version; row selection; per-ray order-6 retry, budget 10⁶ | archived in `../NoFourMUBSArchive/cleanup-2026-09-29/NumericalCampaign/Pilot/` |
| v4 | + 5×6 pseudo-inverse preconditioner | this directory, from 01:25 |
