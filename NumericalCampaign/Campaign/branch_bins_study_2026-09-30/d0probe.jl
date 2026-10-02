include("/Users/jtindall/Files/NoFourMUBS/NumericalCampaign/Campaign/driver.jl")
include(joinpath(@__DIR__, "bins_rfun.jl"))
θ0 = [0.7424467013366504,-1.0492428589137783,-1.086058397823034,1.3192234775816516]
LV = Any[]
function walk(θ, lev)
    ρ = pi/2^lev; p = prune(θ, ρ)
    p in (:F_out,:R_out,:BC_out,:D0_out,:keep) && return
    lev < 11 ? foreach(c -> walk(c, lev+1), children(θ, ρ)) : push!(LV, θ)
end
walk(θ0, 9)
# sample points in the residual shell: random points in leaves with 0 < R_float < 1
using Random; Random.seed!(3)
pts = Any[]
for θ in LV, k in 1:400
    φ = θ .+ (pi/2^11) .* (2 .* rand(4) .- 1)
    r = R_float(corner_E(φ)); 0 < r < 1 && push!(pts, φ)
end
println(length(pts), " float points with 0<R<1")
stats = Dict{String,Int}(); gaps = Float64[]
for φ in pts[1:min(end, 300)]
    ok, H = in_D0(φ)
    if H === nothing; stats["no_H"] = get(stats, "no_H", 0) + 1; continue; end
    R0 = R_float(H[1:3,1:3]); M = maximum(R_float(H[collect(r), collect(c)]) for r in SUBSETS, c in SUBSETS)
    stats[ok ? "in_D0" : "not_D0"] = get(stats, ok ? "in_D0" : "not_D0", 0) + 1
    push!(gaps, M - R0)
end
println(stats); isempty(gaps) || println("M - R0 over sampled points: min ", minimum(gaps), " median ", sort(gaps)[end÷2+1])
top = 0; tot = 0; best_top = Float64[]
for φ in pts[1:min(end, 300)]
    ok, H = in_D0(φ); H === nothing && continue
    R0 = R_float(H[1:3,1:3])
    vals = [(R_float(H[collect(r), collect(c)]), r, c) for r in SUBSETS, c in SUBSETS]
    m = maximum(v[1] for v in vals); arg = vals[argmax([v[1] for v in vals])]
    global tot += 1; arg[2] == (1,2,3) && (global top += 1)
    push!(best_top, maximum(v[1] for v in vals if v[2] == (1,2,3)) - R0)
end
println("max corner in rows (1,2,3): $top of $tot;  best rows-(1,2,3) competitor minus R0: min ", minimum(best_top), " median ", sort(best_top)[end÷2+1])
println("SUBSETS[1] = ", SUBSETS[1])
