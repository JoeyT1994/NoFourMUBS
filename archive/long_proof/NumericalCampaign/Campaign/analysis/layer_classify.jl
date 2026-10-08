# Evidence only (float sampling, not part of any proof): classify branch-layer survivors.
#   julia --project=../../Certification/jlenv_cluster layer_classify.jl IN.jsonl OUT.tsv [NSAMPLE]
# IN: layer-stage output lines (JSON with theta, level, ok); only ok=false cells are classified.
# For each cell: 81 points (centre, 16 vertices, 64 random) → number in D₀ ∩ F (float), R range over the
# points, R range over the D₀ points.
include(joinpath(@__DIR__, "..", "..", "Certification", "domain.jl"))
using Random, Printf
Random.seed!(20260929)
parse_line(l) = (m = match(r"\"theta\": \[([^\]]*)\].*\"ok\": (true|false)", l); m === nothing ? nothing :
                 (parse.(Float64, split(m[1], ",")), m[2] == "true", parse(Int, match(r"\"level\": (\d+)", l)[1])))
rows = filter(x -> x !== nothing && !x[2], [parse_line(l) for l in eachline(ARGS[1])])
n = length(ARGS) >= 3 ? min(parse(Int, ARGS[3]), length(rows)) : length(rows)
rows = rows[randperm(length(rows))[1:n]]
open(ARGS[2], "w") do io
    println(io, "t1\tt2\tt3\tt4\tlevel\tnD0\tRmin\tRmax\tRD0min\tRD0max")
    for (θ, _, lev) in rows
        ρ = pi / 2^lev
        pts = vcat([θ], vec([θ .+ ρ .* collect(v) for v in Iterators.product(ntuple(_ -> (-1, 1), 4)...)]),
                   [θ .+ ρ .* (2 .* rand(4) .- 1) for _ in 1:64])
        Rs = [R_float(corner_E(p)) for p in pts]
        inD = [p for p in pts if in_F(p) && in_D0(p)[1]]
        RD = [R_float(corner_E(p)) for p in inD]
        @printf(io, "%.17g\t%.17g\t%.17g\t%.17g\t%d\t%d\t%.6g\t%.6g\t%s\t%s\n", θ..., lev, length(inD), minimum(Rs), maximum(Rs),
                isempty(RD) ? "NA" : @sprintf("%.6g", minimum(RD)), isempty(RD) ? "NA" : @sprintf("%.6g", maximum(RD)))
    end
end
println("classified $n survivors")
