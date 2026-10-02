# Stage D: classify the open (O) sub-boxes of stage-B leaves.  Reads stage-B lines "J LEV θ1..θ4 path:code ..." and
# writes the same line with every O replaced by R (production r_test proves R < 0 on the enlarged box: excluded from
# D0), P (outward R interval has inf > 1: target of the side-chart cover) or S (residual), followed by
# "|nearest=KIND:a,b,c,d:dist" for the leaf centre (F6 seed class in pi/3 units; circular sup distance in radians).
#   julia stageD.jl OUT IN1 [IN2 ...]
include(joinpath(@__DIR__, "code", "Campaign", "driver.jl"))
const SEEDS = [parse.(Int, split(l)) for l in readlines(joinpath(@__DIR__, "f6_seeds.txt"))]
circ(a) = abs(mod(a + pi, 2pi) - pi)
function nearest(θ)
    best = (Inf, 0, Int[])
    for s in SEEDS
        d = maximum(circ(θ[i] - s[5+i] * pi / 3) for i in 1:4)
        d < best[1] && (best = (d, s[1], s[2:5]))
    end
    best
end
"""Outward interval of the seed polynomial R on the enlarged box (as r_test, order 4)."""
function R_interval(θ0, ρ; q = 4)
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); G = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    fbound(4*g*g*eta - chi*chi)
end
child(c, lev, k) = (h = pi / 2^lev; [c[i] + (((k >> (i - 1)) & 1) == 1 ? 1 : -1) * h / 2 for i in 1:4])
function classify(θ, lev)
    ρe = enl(pi / 2^lev)
    (try r_test(θ, ρe) catch; :maybe end) == :out && return 'R'
    lo = try inf(R_interval(θ, ρe)) catch; -Inf end
    lo > 1 ? 'P' : 'S'
end
out = ARGS[1]; isfile(out) && exit(0)
open(out * ".part", "w") do io
    for fn in ARGS[2:end], line in eachline(fn)
        (startswith(line, "#") || isempty(strip(line))) && continue
        g = split(line); lev = parse(Int, g[2]); θ = parse.(Float64, g[3:6])
        ents = String[]
        for e in g[7:end]
            p, code = rsplit(e, ":"; limit = 2)
            if code == "O"
                c = θ
                for (d, ch) in enumerate(p); c = child(c, lev + d - 1, parse(Int, string(ch); base = 16)); end
                code = string(classify(c, lev + length(p)))
            end
            push!(ents, p * ":" * code)
        end
        d, act, rep = nearest(θ)
        println(io, join(g[1:6], " "), " ", join(ents, " "), " |nearest=", act == 1 ? "active" : "stationary", ":", join(rep, ","), ":", round(d; digits = 5))
    end
end
mv(out * ".part", out)
