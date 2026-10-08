# Shared by confine.jl-style classifiers: R bounds, nearest F6-orbit member, column-projector ball test.
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
