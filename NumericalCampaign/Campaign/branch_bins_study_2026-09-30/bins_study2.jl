# STUDY (not production): refine genuine branch-layer survivors with the production tests and sort their volume.
#   julia bins_study.jl REPO SAMPLE FIRST LAST OUT MAXLEVEL TCAP
REPO = ARGS[1]
include(joinpath(REPO, "NumericalCampaign", "Campaign", "driver.jl"))
const SEEDS = [parse.(Int, split(l)) for l in readlines(joinpath(@__DIR__, "f6_seeds.txt"))]
circ(a) = abs(mod(a + pi, 2pi) - pi)
function seed_dists(θ)
    reps = unique([s[2:5] for s in SEEDS])
    [ (rep = r, active = SEEDS[findfirst(s -> s[2:5] == r, SEEDS)][1] == 1,
       d = minimum(maximum(circ(θ[i] - s[5 + i] * pi / 3) for i in 1:4) for s in SEEDS if s[2:5] == r)) for r in reps ]
end
js(x::AbstractString) = "\"" * x * "\""
js(x::Symbol) = js(string(x))
js(x::Real) = isfinite(x) ? repr(Float64(x)) : "null"
js(x::Bool) = x ? "true" : "false"
js(x::Nothing) = "null"
js(x::AbstractVector) = "[" * join(js.(x), ",") * "]"
js(x::Tuple) = "[" * join(js.(x), ",") * "]"
js(x::NamedTuple) = "{" * join(["\"$k\":" * js(v) for (k, v) in pairs(x)], ",") * "}"
js(x::AbstractDict) = "{" * join(["\"$k\":" * js(v) for (k, v) in x], ",") * "}"
"""Outward interval of the seed polynomial R over the enlarged cell (order-q Taylor model, as in r_test)."""
function R_interval(θ0, ρ; q = 4)
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); G = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    fbound(4*g*g*eta - chi*chi)
end
function classify!(acc, leaves, θ, lev, w, maxlev, deadline)
    if time() > deadline
        acc["timeout_vol"] = get(acc, "timeout_vol", 0.0) + w; return
    end
    ρ = pi / 2^lev; p = prune(θ, ρ)
    if p in (:F_out, :R_out, :BC_out, :D0_out)
        acc["pruned_vol"] = get(acc, "pruned_vol", 0.0) + w; return
    elseif p == :keep
        acc["work_vol"] = get(acc, "work_vol", 0.0) + w; acc["work_n"] = get(acc, "work_n", 0.0) + 1; return
    end
    # :D0_singular
    if lev < maxlev
        for c in children(θ, ρ); classify!(acc, leaves, c, lev + 1, w / 16, maxlev, deadline); end
        return
    end
    rsplit!(acc, leaves, θ, lev, w, RMAX_LEVEL, deadline)
end
const RMAX_LEVEL = parse(Int, get(ENV, "RMAX_LEVEL", "14"))
const MTHR = parse(Float64, get(ENV, "MTHR", "1.0"))
"""Inside an H+-singular leaf: split by the seed polynomial R alone.  R<0 on a sub-box is a rigorous D0 exclusion
(r_test); inf R>MTHR marks a sub-box for regular side charts (bin b); the rest is the residual small-R set."""
function rsplit!(acc, leaves, θ, lev, w, rmax, deadline)
    if time() > deadline
        acc["timeout_vol"] = get(acc, "timeout_vol", 0.0) + w; return
    end
    ρ = pi / 2^lev
    Ri = try R_interval(θ, enl(ρ)) catch; nothing end
    lo = Ri === nothing ? -Inf : inf(Ri); hi = Ri === nothing ? Inf : sup(Ri)
    if hi < 0
        acc["Rneg_vol"] = get(acc, "Rneg_vol", 0.0) + w; return
    elseif lo > MTHR
        acc["posR_vol"] = get(acc, "posR_vol", 0.0) + w; acc["posR_n"] = get(acc, "posR_n", 0.0) + 1
        acc["posR_minRlo"] = min(get(acc, "posR_minRlo", Inf), lo); return
    elseif lev < rmax
        for c in children(θ, ρ); rsplit!(acc, leaves, c, lev + 1, w / 16, rmax, deadline); end; return
    end
    acc["sliver_vol"] = get(acc, "sliver_vol", 0.0) + w; acc["sliver_n"] = get(acc, "sliver_n", 0.0) + 1
    length(leaves) < 50 && push!(leaves, (θ = θ, lev = lev, Rlo = lo, Rhi = hi, d = seed_dists(θ)))
    acc["sliver_min_active"] = min(get(acc, "sliver_min_active", Inf), minimum(x.d for x in seed_dists(θ) if x.active))
    acc["sliver_max_active"] = max(get(acc, "sliver_max_active", 0.0), minimum(x.d for x in seed_dists(θ) if x.active))
end
recs = readlines(ARGS[2]); a, b = parse(Int, ARGS[3]), parse(Int, ARGS[4])
maxlev = parse(Int, ARGS[6]); tcap = parse(Float64, ARGS[7])
open(ARGS[5], "w") do io
    for i in a:min(b, length(recs))
        g = split(recs[i]); id = parse(Int, g[1]); lev = parse(Int, g[3]); θ = parse.(Float64, g[4:7])
        acc = Dict{String,Float64}(); leaves = Any[]
        t = @elapsed classify!(acc, leaves, θ, lev, 1.0, maxlev, time() + tcap)
        Rroot = try R_interval(θ, enl(pi / 2^lev)) catch; nothing end
        sl = [(Rlo = l.Rlo, Rhi = l.Rhi, lev = l.lev,
               nearest_active = minimum(x.d for x in l.d if x.active), nearest_stationary = minimum(x.d for x in l.d if !x.active),
               nearest_class = l.d[argmin([x.d for x in l.d])].rep) for l in leaves]
        println(io, js((id = id, level = lev, theta = θ, t = round(t; digits = 2),
                         R_root = Rroot === nothing ? nothing : (inf(Rroot), sup(Rroot)),
                         root_dists = [(rep = x.rep, active = x.active, d = x.d) for x in seed_dists(θ)],
                         acc = acc, sliver = sl))); flush(io)
    end
end
