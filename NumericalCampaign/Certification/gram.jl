# Clique stage: certify that no two orthonormal bases of common unbiased rays of (I, H₊(θ)) are
# mutually unbiased, for every θ in the cell.
#
# Input: the complete certified ray set of the cell (complete.jl).  Ray a has true phases
# φ_a(s) ∈ φ_{p,a}(s) + [-r_a, r_a]^5 for every s.  With z = (1, e^{iφ1..5}) (|z|² = 6),
#     g_ab(s) = ⟨z_a, z_b⟩/6 = (1 + Σ_k e^{i(φ_{b,k} - φ_{a,k})})/6,      P_ab = |g_ab|²,
# and P_ab is enclosed by a Taylor model over the cell (correlated in θ); the tube radii enter as
# |e^{i(d+δ)} - e^{id}| ≤ |δ| ≤ r_a + r_b per coordinate.
# A quartet {I, H/√6, V, W} at some θ needs: V, W orthonormal (P = 0 within each), all cross pairs
# unbiased (P = 1/6), and, for every ray x, Σ_{v∈V} P_vx = 1 (V is a basis) — all at the SAME θ.
# Search: 6-cliques of "possibly orthogonal" (0 ∈ P_ab), filtered by the basis identity; then
# second bases among rays possibly unbiased to all of V.  Survivors are re-examined on sub-cells
# (Taylor models bounded on sub-boxes of s), where all conditions must hold on one common sub-cell.
isdefined(Main, :hform_certify) || include("hform.jl")

"""Interval bound of a FastTM model on the sub-box s ∈ lo..hi ⊂ [-1,1]^4 (natural evaluation)."""
function bound_sub(a::FTM{Q}, lo, hi) where Q
    T = FastTM.table(Q)
    S = [interval(lo[i], hi[i]) for i in 1:4]
    pw = [[S[i]^e for e in 0:Q] for i in 1:4]
    acc = interval(0.0)
    for α in 1:T.N
        e = T.exps[α]; c = coeffs(a)[α]; c == 0 && continue
        acc += interval(c) * pw[1][e[1] + 1] * pw[2][e[2] + 1] * pw[3][e[3] + 1] * pw[4][e[4] + 1]
    end
    acc + interval(-remainder_radius(a), remainder_radius(a))
end

"""Overlap Taylor models P_ab for all pairs of certified rays."""
function overlap_models(rays)
    n = length(rays); P = Matrix{Any}(undef, n, n)
    for a in 1:n, b in a+1:n
        ra = rays[a]; rb = rays[b]; δ = ra.r + rb.r
        acc = nothing
        for k in 1:5
            d = rb.phip[k] - ra.phip[k]
            c = cos(d); s = sin(d)
            c = set_remainder(c, FastTM.up(remainder_radius(c) + δ)); s = set_remainder(s, FastTM.up(remainder_radius(s) + δ))
            e = CTM(c, s)
            acc = acc === nothing ? e : acc + e
        end
        g = CTM(acc.re + 1, acc.im) / 6
        P[a, b] = P[b, a] = absq_tm(g)
    end
    P
end

possibly(I::Interval, v) = inf(I) <= v <= sup(I)

"""All 6-cliques of the graph adj (Vector{BitVector}) within the candidate set cand."""
function cliques6(adj, cand::BitVector; limit = 10^6)
    out = Vector{Vector{Int}}()
    function rec(cur, c)
        length(out) >= limit && return
        if length(cur) == 6; push!(out, copy(cur)); return; end
        idx = findall(c)
        for v in idx
            c2 = c .& adj[v]; c2[1:v] .= false
            count(c2) >= 5 - length(cur) || continue
            push!(cur, v); rec(cur, c2); pop!(cur)
        end
    end
    rec(Int[], copy(cand))
    out
end

"""Quartet exclusion on the sub-box (lo, hi) of the cell, given interval tables for P.
Returns surviving candidate (V, W) pairs."""
function quartet_candidates(PI, Pm, n; lo = -ones(4), hi = ones(4), limit = 10^5)
    O = [BitVector([a != b && possibly(PI[a, b], 0.0) for b in 1:n]) for a in 1:n]
    U = [BitVector([a != b && possibly(PI[a, b], 1 / 6) for b in 1:n]) for a in 1:n]
    Vs = cliques6(O, trues(n); limit = limit)
    # basis identity: Σ_{v∈V} P_vx = 1 for every ray x ∉ V (correlated sum of Taylor models)
    basis_ok(V) = all(x -> x in V || possibly(bound_sub(reduce(+, (Pm[v, x] for v in V)), lo, hi), 1.0), 1:n)
    Vs = filter(basis_ok, Vs)
    pairs = Tuple{Vector{Int},Vector{Int}}[]
    for V in Vs
        cand = trues(n); for v in V; cand .&= U[v]; cand[v] = false; end
        count(cand) >= 6 || continue
        for W in cliques6(O, cand; limit = limit)
            basis_ok(W) && push!(pairs, (V, W))
        end
    end
    (nV = length(Vs), pairs = pairs)
end

"""Certify 'no quartet' over the cell. Candidates are re-examined on sub-cells up to depth `maxdepth`."""
function certify_no_quartet(rays; maxdepth = 3)
    n = length(rays)
    Pm = overlap_models(rays)
    function check(lo, hi, depth)
        PI = Matrix{Interval{Float64}}(undef, n, n)
        for a in 1:n; PI[a, a] = interval(1.0); for b in a+1:n; PI[a, b] = PI[b, a] = bound_sub(Pm[a, b], lo, hi); end; end
        r = quartet_candidates(PI, Pm, n; lo = lo, hi = hi)
        isempty(r.pairs) && return (ok = true, nV = r.nV, depth = depth)
        depth >= maxdepth && return (ok = false, nV = r.nV, depth = depth, pairs = r.pairs)
        i = argmax(hi .- lo); m = (lo[i] + hi[i]) / 2
        lo2 = copy(lo); hi2 = copy(hi); hi2[i] = m; lo2[i] = m
        a = check(lo, hi2, depth + 1); a.ok || return a
        b = check(lo2, hi, depth + 1); b.ok || return b
        (ok = true, nV = max(r.nV, a.nV, b.nV), depth = max(a.depth, b.depth))
    end
    check(-ones(4), ones(4), 0)
end
