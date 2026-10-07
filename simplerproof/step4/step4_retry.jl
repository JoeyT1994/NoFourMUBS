# Step 4 retry pass: re-run the cells recorded in "failed" by step4_prod.jl with a longer cover budget and
# splitting down to level S4_COVERMIN (default 11).  Same tests and statement as step4_prod.jl.
#   S4_LIBRARY=1 S4_COVERMIN=11 julia step4_retry.jl CODE OUTDIR WORKER NWORKERS C0 COVERMAX FAILED.txt
# FAILED.txt: one cell per line, "L θ1 θ2 θ3 θ4" (exactly the floats printed by step4_prod.jl).
ENV["S4_LIBRARY"] = "1"; get!(ENV, "S4_COVERMIN", "11")
include(joinpath(@__DIR__, "step4_prod.jl"))
cells = [split(l) for l in readlines(ARGS[7]) if !isempty(strip(l))]
mkpath(OUTDIR); out = joinpath(OUTDIR, "r$WORKER.jsonl")
open(out, "a") do f
    for (j, c) in enumerate(cells)
        (j - 1) % NW == WORKER || continue
        L = parse(Int, c[1]); θ = parse.(Float64, c[2:5]); t0 = time()
        acc = (leaves = Dict{Symbol,Int}(), covers = String[], failed = String[])
        go!(acc, θ, L)
        lv = join(["\"$k\": $v" for (k, v) in acc.leaves], ", ")
        println(f, "{\"r\": $j, \"L\": $L, \"theta\": [$(fmtθ(θ))], \"leaves\": {$lv}, \"covers\": [$(join(acc.covers, ", "))], " *
                   "\"failed\": [$(join(acc.failed, ", "))], \"t\": $(round(time() - t0, digits = 1))}")
        flush(f)
    end
end
