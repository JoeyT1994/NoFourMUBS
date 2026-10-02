include("atlas.jl")
using DelimitedFiles
rows = readdlm(joinpath(@__DIR__, "../data/cells.txt"), Float64)
c = vec(rows[5, :]); r = pi/512
@assert !reconstruction_atlas(c, r; budget=0).ok
@assert !reconstruction_atlas(c, r; maxdepth=0).ok
t0 = time()
result = reconstruction_atlas(c, r)
@assert result.ok
@assert length(result.nodes) == 65
@assert length(result.charts) == 61
@assert maximum(n.depth for n in result.nodes) == 4
for n in result.nodes
    # These exact Float64 values are independently audited as binary rationals
    # by verify.py. The Python audit checks the whole tree, not sample points.
    println("NODE ", n.path, " ", n.kind, " ", n.radius, " ", join(n.center, " "), " ", n.error)
end
println("PASS: complete 61-chart cover; maximum depth 4; budget/depth controls reject")
println("Remainder maximum: ", maximum(n.error for n in result.nodes if n.kind == :chart))
println("Elapsed seconds: ", time()-t0)
