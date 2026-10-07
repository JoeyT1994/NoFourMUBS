ENV["CERT_FASTMAX"]="0"; ENV["CERT_CHILD_FASTMAX"]="0"; ENV["CERT_COVER_ACCELERATED"]="1"
const CODE = ARGS[1]
include(joinpath(CODE, "Campaign", "driver.jl"))
const C0 = 5.0; const MAXL = parse(Int, ARGS[4])
function rcap_test(θ0, ρ; q = 2)
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); G = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    sup(fbound(4*g*g*eta - chi*chi)) < C0 ? :out : :maybe
end
function classify(θ, ρ)
    ρe = enl(ρ)
    (try f_test(θ, ρe) catch; :maybe end) == :out && return :F_out
    (try rcap_test(θ, ρe; q = 4) catch; :maybe end) == :out && return :Rlow_out
    (try bc_test(θ, ρe) catch; :maybe end) == :out && return :BC_out
    d = try d0_test(θ, ρe; q = ρ > 0.0065 ? 6 : 4) catch; :maybe end
    d == :out && return :D0_out
    d == :singular && return :singular
    :cover
end
cnt = Dict{Tuple{Int,Symbol},Int}()
function go(θ, lev)
    s = classify(θ, pi / 2^lev)
    if s == :singular && lev < MAXL
        for c in children(θ, pi / 2^lev); go(c, lev + 1); end
    else
        cnt[(lev, s)] = get(cnt, (lev, s), 0) + 1
    end
end
cells = [parse.(Float64, split(l)) for l in readlines(ARGS[2]) if !isempty(strip(l))]
i = parse(Int, ARGS[3]); t = @elapsed go(cells[i], 7)
println("cell $i t=$(round(t)) ", join(["L$(k[1]) $(k[2])=$v" for (k, v) in sort(collect(cnt))], " "))
