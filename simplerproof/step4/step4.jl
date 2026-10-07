# Step 4 prototype: classify each level-7 cell of Omega = F ∩ {R >= C0} by its cheapest valid exit.
#   F_out | Rlow_out (sup R < C0 on the cell: no maximal-corner seed there, by the averaging lemma)
#   D0_out (some corner of H₊ beats E on the whole cell) | otherwise: cluster cover (MUB exclusion).
# If d0_test is inconclusive or singular at level 7, the 16 level-8 children are classified the same way.
ENV["CERT_FASTMAX"]="0"; ENV["CERT_CHILD_FASTMAX"]="0"; ENV["CERT_COVER_ACCELERATED"]="1"
const CODE = ARGS[1]
include(joinpath(CODE, "Campaign", "driver.jl"))
const C0 = parse(Float64, ARGS[4]); const COVERMAX = parse(Float64, ARGS[5])
function rcap_test(θ0, ρ; q = 2)       # :out if sup R < C0 on the whole cell
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
    (try f_test(θ, ρe) catch; :maybe end) == :out && return "F_out"
    (try rcap_test(θ, ρe) catch; :maybe end) == :out && return "Rlow_out"
    d = try d0_test(θ, ρe; q = 6) catch; :maybe end
    d == :out && return "D0_out"
    d == :singular && return "D0_singular"
    "cover_needed"
end
function cover(θ, ρ)
    t = time()
    r = try certify_cell_cover_accelerated(θ, enl(ρ); partition=true, budget=200_000_000, deadline=time() + COVERMAX)
        catch e; (ok=false, reason=Symbol("error_", typeof(e))) end
    (ok=r.ok, reason=string(get(r, :reason, "")), nlabels=get(r, :nlabels, 0), t=round(time() - t, digits=1))
end
cells = [parse.(Float64, split(l)) for l in readlines(ARGS[2]) if !isempty(strip(l))]; idx = parse.(Int, split(ARGS[3], ":"))
for i in idx[1]:idx[2]
    i > length(cells) && break
    θ = collect(Float64, cells[i]); ρ = pi / 2^7; t0 = time()
    s = classify(θ, ρ); out = "{\"cell\": $i, \"level7\": \"$s\""
    fmt(c) = "{\"ok\": $(c.ok), \"reason\": \"$(c.reason)\", \"nlabels\": $(c.nlabels), \"t\": $(c.t)}"
    if s == "cover_needed"
        out *= ", \"cover7\": " * fmt(cover(θ, ρ))
    elseif s == "D0_singular"
        kids = Dict{String,Int}(); kc = String[]
        for c in children(θ, ρ)
            sc = classify(c, ρ / 2); kids[sc] = get(kids, sc, 0) + 1
            sc == "cover_needed" && push!(kc, fmt(cover(c, ρ / 2)))
        end
        out *= ", \"children8\": {" * join(["\"$k\": $v" for (k, v) in kids], ", ") * "}, \"covers8\": [" * join(kc, ", ") * "]"
    end
    out *= ", \"t\": $(round(time() - t0, digits=1))}"
    println(out); flush(stdout)
end
