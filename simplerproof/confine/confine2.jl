# Confinement classifier, version 2: confine.jl plus an s = sqrt(R) splitting that removes the R -> 0 branch
# singularity of the H_+ Taylor model.
#
# On a cell, H_+(θ) = Φ(θ, sqrt(R(θ))) where Φ(θ, s) is the model.py construction with s in place of sqrt(R).
# With S = [sqrt(max(inf R, 0)), sqrt(sup R)] split into pieces S_k, the Taylor models Φ(θ, S_k) (S_k enters as an
# interval constant) enclose H_+ on {θ in cell : sqrt R(θ) ∈ S_k}; the union over k covers the whole cell ∩ {R > 0}.
# A cell exits if, for every piece, either some corner of H_+ beats the seed corner E (D0_out: E is not maximal) or the
# column-projector distance of H_+ to one explicit F6-orbit member is <= RT (Ball).
#
#   julia confine2.jl CODE CELLS FIRST:LAST C0 RT MAXL
const CODE = ARGS[1]
include(joinpath(CODE, "Campaign", "driver.jl"))
const C0 = parse(Float64, ARGS[4]); const RT = parse(Float64, ARGS[5]); const MAXL = parse(Int, ARGS[6])
const SPLITS = parse(Int, get(ENV, "CONFINE_SPLITS", "6"))     # adaptive s-bisection depth

include(joinpath(@__DIR__, "confine_common.jl"))
include(joinpath(@__DIR__, "qmonomials.jl"))

const COMP3 = Dict(t => Tuple(j for j in 1:6 if !(j in t)) for t in SUBSETS)

"""2 Im q(B) for a 3x3 block of complex numbers (unimodular entries), via the Laurent form QMONO."""
function twoimq(B)
    z = [B[i, j] for i in 1:3 for j in 1:3]; acc = zero(z[1])
    for (c, k) in QMONO
        t = one(z[1]) * c
        for e in 1:9
            k[e] == 0 && continue
            f = k[e] > 0 ? z[e] : conj(z[e])
            for _ in 1:abs(k[e]); t = t * f; end
        end
        acc = acc + t
    end
    2 * imag(acc)
end

"""Corner test via R(A) = (2 Im q(B))^2, B the same-row complementary block (valid on exact Hadamards).
True if some corner other than the seed corner has (2 Im q)^2 > R0sup on the whole enclosure."""
function q_beats(HT, R0sup; k = 6)
    Hc = [centre(z) for z in HT.H]
    vals = Tuple{Float64,Int,Int}[]
    for (ri, rows) in enumerate(SUBSETS), (ci, cols) in enumerate(SUBSETS)
        (ri == 1 && ci == 1) && continue
        Bc = [Hc[r, c] for r in rows, c in COMP3[cols]]
        push!(vals, (abs(twoimq(Bc)), ri, ci))
    end
    sort!(vals, rev = true)
    for (v, ri, ci) in vals[1:k]
        v^2 <= R0sup && return false
        rows = SUBSETS[ri]; cols = COMP3[SUBSETS[ci]]
        B = [HT.H[r, c] for r in rows, c in cols]
        I = try fbound(twoimq(B)) catch; continue end
        lo = inf(I) > 0 ? inf(I) : (sup(I) < 0 ? -sup(I) : 0.0)
        lo^2 > R0sup && return true
    end
    false
end

"""H_+ Taylor model with sqrt(R) replaced by the interval S (copied from Certification/fasthplus.jl:hplus_tm)."""
function hplus_tm_s(θ0, ρ, S::Interval; q = 4, hi = 8)
    x = [tmvar(hi, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a)
    E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); EtE = mmul(cadj(E), E)
    Gh = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    T = [(i == j ? 6 - EtE[i, j] : -EtE[i, j]) for i in 1:3, j in 1:3]
    Gv = permutedims(T)
    s, t, r = Gh[2, 1], Gh[3, 1], Gh[3, 2]
    X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    R = 4*g*g*eta - chi*chi
    zp = CTM(chi / (2g), tmconst(hi, S) / (2g))
    h = side_tm(Gh, zp, g); v = side_tm(Gv, conj(zp), g)
    wh0 = cis(angle(centre(h.xi)) / 3); wv0 = cis(angle(centre(v.xi)) / 3)
    wh = ctm_root(h.xi, wh0, 3); wv = ctm_root(v.xi, wv0, 3)
    zr = zero(a)
    Ph = [o zr zr; zr conj(wh) zr; zr zr wh]; Pv = [o zr zr; zr conj(wv) zr; zr zr wv]
    B = matmul(matmul(h.M, Ph), F3)
    C = matmul(matmul(F3, Pv), permutedims(v.M))
    Jh = adj3_tm(Gh)
    EH = [conj(E[j, i]) for i in 1:3, j in 1:3]
    ig = inv(g)
    D = [-(x * ig) for x in matmul(matmul(matmul(C, EH), Jh), B)]
    H = [E B; C D]
    Hq = q == hi ? H : map(z -> CTM(truncate_order(z.re, q), truncate_order(z.im, q)), H)
    (H = Hq, R = truncate_order(R, q))
end

"""Exit of one enclosure HT: :D0_out, :Ball, or :keep."""
function test_enclosure(HT, R0sup = Inf)
    (try q_beats(HT, R0sup) catch; false end) && return :D0_out
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
    dball = try tube_test(HT) catch; Inf end
    dball <= RT && return :Ball
    :keep
end

"""Adaptive s-bisection: every piece of [lo, hi] must exit (D0_out or Ball); returns :D0_out, :Ball, :Mixed or :keep."""
function split_test(θ, ρe, rb, q)
    lo = sqrt(max(inf(rb), 0.0)); hi = sqrt(max(sup(rb), 0.0))
    kinds = Symbol[]
    function piece(a, b, depth)
        S = interval(prevfloat(max(a, 0.0)), nextfloat(b))
        HT = try hplus_tm_s(θ, ρe, S; q = q) catch e; e isa ErrorException ? nothing : rethrow() end
        r = HT === nothing ? :keep : test_enclosure(HT, sup(rb))
        if r != :keep
            push!(kinds, r); return true
        end
        depth >= SPLITS && return false
        m = (a + b) / 2
        piece(a, m, depth + 1) && piece(m, b, depth + 1)
    end
    piece(lo, hi, 0) || return :keep
    all(==(:D0_out), kinds) ? :D0_out : (all(==(:Ball), kinds) ? :Ball : :Mixed)
end

function classify(θ, L)
    ρe = enl(pi / 2^L)
    (try f_test(θ, ρe) catch; :maybe end) == :out && return :F_out
    rb = try rbounds(θ, ρe) catch e
        get(ENV, "CONFINE_DEBUG", "0") == "1" && L == MAXL && println(stderr, "RBFAIL θ=", round.(θ, digits = 6), " ", sprint(showerror, e)[1:min(end, 160)])
        nothing
    end
    rb === nothing && return :keep
    sup(rb) <= 0 && return :Rneg_out
    inf(rb) >= C0 && return :Rhigh_out
    (try bc_test(θ, ρe) catch; :maybe end) == :out && return :BC_out
    L < 7 && return :keep
    q = L <= 8 ? 6 : 4
    # first the correlated model (better when R is bounded away from 0), then the s-split
    HT = try hplus_tm(θ, ρe; q = q) catch e; e isa ErrorException ? nothing : rethrow() end
    if HT !== nothing
        r = test_enclosure(HT, sup(rb))
        r != :keep && return r
    end
    r = split_test(θ, ρe, rb, q)
    r != :keep && return r
    if get(ENV, "CONFINE_DEBUG", "0") == "1" && L == MAXL
        println(stderr, "OPEN θ=", round.(θ, digits = 5), " R∈", round(inf(rb), digits = 3), "..", round(sup(rb), digits = 3),
                " corr=", HT === nothing ? "singular" : "ok")
    end
    :keep
end

function go!(cnt, θ, L)
    s = classify(θ, L)
    if s == :keep
        if L < MAXL
            for c in children(θ, pi / 2^L); go!(cnt, c, L + 1); end
            return
        end
        s = :open
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
