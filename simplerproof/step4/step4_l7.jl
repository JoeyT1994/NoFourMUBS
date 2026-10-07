# Step 4, finer load balancing: the level-5 job cells not finished by step4_prod.jl are re-dealt as level-7 cells.
#   plan:  julia step4_l7.jl CODE OUTDIR WORKER NWORKERS C0 COVERMAX plan PREVDIR
#          each worker takes its share of the unfinished level-5 cells (those without a record in PREVDIR/w*.jsonl),
#          descends with the cheap tests only (F_out, Rlow_out, BC_out) to level 7, and writes the surviving level-7
#          cells to OUTDIR/plan/p<WORKER>.txt and the pruned counts to OUTDIR/plan/c<WORKER>.jsonl.
#   run:   julia step4_l7.jl CODE OUTDIR WORKER NWORKERS C0 COVERMAX run
#          deals all planned level-7 cells round-robin; each is closed by go! of step4_prod.jl from level 7.
# Same tests and statement as step4_prod.jl.  A level-5 cell is complete when its plan record exists and every one of
# its planned level-7 cells has a run record.
ENV["S4_LIBRARY"] = "1"
include(joinpath(@__DIR__, "step4_prod.jl"))
const MODE = ARGS[7]
function plan7!(leaves, cells, θ, L)
    if L == D0LEVEL
        push!(cells, θ); return
    end
    s = classify(θ, L)
    if s in (:F_out, :Rlow_out, :BC_out)
        leaves[s] = get(leaves, s, 0) + 1; return
    end
    for c in children(θ, pi / 2^L); plan7!(leaves, cells, c, L + 1); end
end
if MODE == "plan"
    prev = ARGS[8]; done = Set{Int}()
    for p in readdir(prev; join = true)
        occursin(r"/w\d+\.jsonl$", p) || continue
        for l in eachline(p)
            m = match(r"\"j\": (\d+)", l); m === nothing || push!(done, parse(Int, m[1]))
        end
    end
    J = jobcells(); todo = [j for j in eachindex(J) if !(j in done)]
    WORKER == 0 && println(stderr, "level-5 job cells $(length(J)), done $(length(done)), to plan $(length(todo))")
    mkpath(joinpath(OUTDIR, "plan"))
    open(joinpath(OUTDIR, "plan", "p$WORKER.txt"), "w") do fp
        open(joinpath(OUTDIR, "plan", "c$WORKER.jsonl"), "w") do fc
            for (k, j) in enumerate(todo)
                (k - 1) % NW == WORKER || continue
                leaves = Dict{Symbol,Int}(); cells = Vector{Vector{Float64}}()
                s = classify(J[j], JOBLEVEL)
                s in (:F_out, :Rlow_out, :BC_out) ? (leaves[s] = 1) : plan7!(leaves, cells, J[j], JOBLEVEL)
                for c in cells; println(fp, j, " ", join([repr(x) for x in c], " ")); end
                println(fc, "{\"j\": $j, \"cells7\": $(length(cells)), \"leaves\": {" *
                            join(["\"$k\": $v" for (k, v) in leaves], ", ") * "}}")
            end
        end
    end
elseif MODE == "run"
    P = sort([p for p in readdir(joinpath(OUTDIR, "plan"); join = true) if occursin(r"/p\d+\.txt$", p)])
    rows = String[]
    for p in P; append!(rows, [l for l in eachline(p) if !isempty(strip(l))]); end
    out = joinpath(OUTDIR, "r$WORKER.jsonl"); done = Set{Int}()
    isfile(out) && for l in eachline(out)
        m = match(r"\"k\": (\d+)", l); m === nothing || push!(done, parse(Int, m[1]))
    end
    WORKER == 0 && println(stderr, "level-7 cells $(length(rows))")
    open(out, "a") do f
        for k in eachindex(rows)
            (k - 1) % NW == WORKER || continue
            k in done && continue
            g = split(rows[k]); j = parse(Int, g[1]); θ = parse.(Float64, g[2:5]); t0 = time()
            acc = (leaves = Dict{Symbol,Int}(), covers = String[], failed = String[])
            go!(acc, θ, D0LEVEL)
            lv = join(["\"$kk\": $v" for (kk, v) in acc.leaves], ", ")
            println(f, "{\"k\": $k, \"j\": $j, \"theta7\": [$(fmtθ(θ))], \"leaves\": {$lv}, \"covers\": [$(join(acc.covers, ", "))], " *
                       "\"failed\": [$(join(acc.failed, ", "))], \"t\": $(round(time() - t0, digits = 1))}")
            flush(f)
        end
    end
end
