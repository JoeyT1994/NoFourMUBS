# Confinement pilot: on cells of F ∩ {0 < R < C0}, show that no maximal-corner seed gives a quartet edge outside the
# wide F6 tube (d_F <= 0.075, simplerproof/widetube).  Exits per cell (rigorous Taylor-model tests):
#   F_out | Rneg_out (sup R < 0) | Rhigh_out (inf R >= C0) | BC_out (radical-free corner beats E) |
#   D0_out (a corner of H₊ beats E) | Tube (column projector distance of H₊ to an explicit dephased F6-orbit member
#   <= RT on the whole cell) | otherwise refine to MAXL; at MAXL record 'singular' or 'open'.
#   julia confine.jl CODE CELLS FIRST:LAST C0 RT MAXL
const CODE = ARGS[1]
include(joinpath(CODE, "Campaign", "driver.jl"))
const C0 = parse(Float64, ARGS[4]); const RT = parse(Float64, ARGS[5]); const MAXL = parse(Int, ARGS[6])
function rbounds(θ0, ρ; q = 4)
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); G = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    fbound(4*g*g*eta - chi*chi)
end
# dephased F6 orbit: exponent matrices a_i b_j mod 6 (a, b permutations of Z6 fixing 0)
function perms_fix0()
    out = Vector{Vector{Int}}()
    function rec(pre, rest)
        isempty(rest) && (push!(out, copy(pre)); return)
        for k in eachindex(rest)
            rec(vcat(pre, rest[k]), vcat(rest[1:k-1], rest[k+1:end]))
        end
    end
    rec([0], collect(1:5)); out
end
const ORB_UNUSED = let s = Set{Matrix{Int}}(); P = perms_fix0()
    for a in P, b in P
        push!(s, [mod(a[i] * b[j], 6) for i in 1:6, j in 1:6])
    end
    s
end
const FF = [cis(2pi * j * k / 6) for j in 0:5, k in 0:5]
# Nearest orbit member G = D P F Q (D: diagonal unit row phases, P, Q permutations) to the centre matrix Hc:
# column assignment by the largest overlaps |<h_j, f_k>|, then row assignment and phases from the row overlaps.
function nearest_member(Hc)
    # dephased orbit member by rounding the phases to sixth roots, then continuous row phases D (column phases are
    # irrelevant for projector distances) by alternating maximisation of the column overlaps.
    ex = mod.(round.(Int, angle.(Hc) .* (3 / pi)), 6)
    ex in ORB_UNUSED || return nothing
    G0 = cis.(pi .* ex ./ 3)
    d = ones(ComplexF64, 6)
    for it in 1:50
        c = [let z = sum(conj(d[i] * G0[i, j]) * Hc[i, j] for i in 1:6); z / abs(z) end for j in 1:6]
        dn = [let z = sum(Hc[i, j] * conj(G0[i, j] * c[j]) for j in 1:6); z / abs(z) end for i in 1:6]
        maximum(abs.(dn .- d)) < 1e-14 && (d = dn; break)
        d = dn
    end
    d .* G0
end
function tube_test(HT)
    Hc = [centre(z) for z in HT.H]
    G = nearest_member(Hc)
    G === nothing && return Inf
    # column projector distance sqrt(1 - |<h_j, g_j>|^2/36); |<h_j,g_j>|^2 bounded below on the whole cell.
    # g entries are floats of modulus 1 +- 1e-15: ||g_j||^2 <= 6 (1 + 1e-14), absorbed in the 1e-12 slack.
    worst = 0.0
    for j in 1:6
        z = nothing
        for i in 1:6
            t = cm(ic(conj(G[i, j])), HT.H[i, j])
            z = z === nothing ? t : z + t
        end
        lo = max(inf(fbound(absq_tm(z))) - 1e-11, 0.0)
        worst = max(worst, sqrt(max(1 - lo / 36, 0.0)))
    end
    worst
end
function classify(θ, L)
    ρe = enl(pi / 2^L)
    (try f_test(θ, ρe) catch; :maybe end) == :out && return :F_out
    rb = try rbounds(θ, ρe) catch; nothing end
    if rb !== nothing
        sup(rb) < 0 && return :Rneg_out
        inf(rb) >= C0 && return :Rhigh_out
    end
    (try bc_test(θ, ρe) catch; :maybe end) == :out && return :BC_out
    L < 7 && return :keep
    HT = try hplus_tm(θ, ρe; q = L <= 8 ? 6 : 4) catch e; e isa ErrorException ? (return :singular) : rethrow() end
    d0 = try
        Rs = corner_R_all(HT.H); R0 = Rs[1, 1]; out = false
        for c in eachindex(Rs)
            c == 1 && continue
            if inf(fbound(Rs[c] - R0)) > 0; out = true; break; end
        end
        out
    catch
        false
    end
    d0 && return :D0_out
    dtube = try tube_test(HT) catch; Inf end
    dtube <= RT && return :Tube
    if get(ENV, "CONFINE_DEBUG", "0") == "1" && L == MAXL
        Hc = [centre(z) for z in HT.H]
        Rc = [R_float(Hc[collect(r), collect(c)]) for r in SUBSETS, c in SUBSETS]
        println(stderr, "OPEN θ=", round.(θ, digits=4), " R0=", round(Rc[1,1], digits=3), " maxR=", round(maximum(Rc), digits=2),
                " argmax=", argmax(Rc), " dtube=", round(dtube, digits=4))
    end
    :keep
end
function go!(cnt, θ, L)
    s = classify(θ, L)
    if s == :keep || s == :singular
        if L < MAXL
            for c in children(θ, pi / 2^L); go!(cnt, c, L + 1); end
            return
        end
        s = s == :keep ? :open : :singular
    end
    cnt[(L, s)] = get(cnt, (L, s), 0) + 1
end
cells = [parse.(Float64, split(l)) for l in readlines(ARGS[2]) if !isempty(strip(l))]
rng = parse.(Int, split(ARGS[3], ":"))
for i in rng[1]:min(rng[2], length(cells))
    cnt = Dict{Tuple{Int,Symbol},Int}(); t0 = time()
    go!(cnt, cells[i], parse(Int, get(ENV, "CONFINE_L0", "7")))
    println("{\"cell\": $i, \"t\": $(round(time() - t0, digits = 1)), \"exits\": {" *
            join(["\"L$(k[1])_$(k[2])\": $v" for (k, v) in sort(collect(cnt))], ", ") * "}}"); flush(stdout)
end
