include("/Users/jtindall/Files/NoFourMUBS/NumericalCampaign/Campaign/driver.jl")
include(joinpath(@__DIR__, "bins_rfun.jl"))
const SEEDS = [parse.(Int, split(l)) for l in readlines(joinpath(@__DIR__, "f6_seeds.txt"))]
circ(a) = abs(mod(a + pi, 2pi) - pi)
nearest(θ, act) = minimum(maximum(circ(θ[i] - s[5+i]*pi/3) for i in 1:4) for s in SEEDS if (s[1] == 1) == act)
per = Dict{String,Dict{String,Float64}}()
for l in eachline(ARGS[1])
    g = split(l); cid = g[1]; θ = parse.(Float64, g[2:5]); lev = parse(Int, g[6]); w = 16.0^-(lev - 11)
    Ri = R_interval(θ, enl(pi/2^lev)); lo, hi = inf(Ri), sup(Ri)
    k = hi < 0 ? "Rneg" : lo > 1 ? "posR" : "resid"
    d = get!(per, cid, Dict{String,Float64}()); d[k] = get(d, k, 0.0) + w
    if k == "resid"
        na = nearest(θ, true); d["resid_min_active"] = min(get(d, "resid_min_active", Inf), na)
        d["resid_max_active"] = max(get(d, "resid_max_active", 0.0), na)
        d["resid_min_stat"] = min(get(d, "resid_min_stat", Inf), nearest(θ, false))
    end
end
open(ARGS[2], "w") do io
    for (c, d) in per; println(io, c, " ", join(["$k=$(round(v; sigdigits=4))" for (k, v) in sort(collect(d))], " ")); end
end
