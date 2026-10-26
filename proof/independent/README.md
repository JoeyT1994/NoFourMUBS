# Independent Stage C and normal bound (Julia)

`src/` is the independent Julia implementation (IntervalArithmetic.jl) of Stage C (`proof/atlas/STAGEC.md`) and of
the normal bound for full-matrix records. It was written from the specifications only, without opening
`stagec.py` or `ballrecord.py`. It is loaded unchanged, as the submodule `IndepAtlas`, by the independent seed-atlas
checker [`../independent_seed/`](../independent_seed/README.md), which runs it on every seed ball's enclosure and on
Tao's record.

| Path | Content |
|---|---|
| `src/IndepAtlas.jl` | the module |
| `src/stagec.jl` | Stage C: vector bins, labels, edge tests with the joint test, the two-clique search |
| `src/normal.jl` | σ, the Gram bounds and the normal bound of a record |
| `src/boundary.jl`, `src/io.jl` | record boundary transfers and input parsing |
| `jlenv/` | the pinned Julia environment of both checkers (IntervalArithmetic 1.0.10) |

```bash
julia --startup-file=no --project=jlenv -e 'using Pkg; Pkg.instantiate()'    # once, for both checkers
```

The front end that checked the earlier 25-dimensional atlas with this code (`check.jl`, its results and tests) is
preserved at the git tag `v1-25dim-records`.
