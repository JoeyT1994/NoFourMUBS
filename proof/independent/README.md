# An independent implementation of the local tests (Julia)

`src/` is an independent Julia implementation, in IntervalArithmetic.jl, of the local tests run inside each ball
(Stage C, specified in [`../atlas/STAGEC.md`](../atlas/STAGEC.md)) and of the normal bound for full-matrix records. It
was written from the specifications alone, without reference to the Python code. The independent atlas checker in
[`../independent_seed/`](../independent_seed/README.md) loads it as the submodule `IndepAtlas`, and runs it on every
seed ball and on Tao's record.

| Path | What it contains |
|---|---|
| `src/IndepAtlas.jl` | the module |
| `src/stagec.jl` | Stage C: the vector bins, the labels, the edge tests with the joint test, and the search for two cliques |
| `src/normal.jl` | σ, the Gram bounds and the normal bound of a record |
| `src/boundary.jl`, `src/io.jl` | the boundary transfers of records, and reading the input |
| `jlenv/` | the Julia environment of both checkers (IntervalArithmetic 1.0.10) |

```bash
julia --startup-file=no --project=jlenv -e 'using Pkg; Pkg.instantiate()'    # once, for both checkers
```
