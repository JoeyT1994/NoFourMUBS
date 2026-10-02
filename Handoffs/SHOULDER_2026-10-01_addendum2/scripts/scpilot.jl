# Shoulder side-chart pilot: certify_cell_sidechart on listed boxes "LEVEL θ1..θ4 DIST"; exceptions are inconclusive.
include("/Users/jtindall/Files/NoFourMUBS/ProvenResults/SideChartCover/provider.jl")
using Printf
BLAS.set_num_threads(1)
src, out, shard, nshard, secs = ARGS[1], ARGS[2], parse(Int, ARGS[3]), parse(Int, ARGS[4]), parse(Float64, ARGS[5])
lines = readlines(src)
open(out, "w") do io
    println(io, "idx\tlevel\tdist\tok\treason\tcpu\twall\tnt\tnlabels\tnkept")
    for (k, l) in enumerate(lines)
        (k - 1) % nshard == shard || continue
        p = split(l); lev = parse(Int, p[1]); θ = parse.(Float64, p[2:5])
        ρ = sup(interval(pi) / (2^lev) + interval(2.0)^(-40))
        t = time(); c = ccall(:clock, Clong, ()) / 1_000_000
        r = try
            certify_cell_sidechart(θ, ρ; partition = true, budget = 4_000_000, deadline = time() + secs)
        catch ex
            ex isa InterruptException && rethrow()
            (ok = false, reason = Symbol("exception_", typeof(ex)), nt = 0, nlabels = 0, nkept = 0)
        end
        println(io, join(string.((k, lev, p[6], r.ok, r.reason, ccall(:clock, Clong, ()) / 1_000_000 - c, time() - t, r.nt, r.nlabels, r.nkept)), '\t')); flush(io)
    end
end
