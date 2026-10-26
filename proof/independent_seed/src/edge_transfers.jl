# Transfers of edge balls (SPEC §10): T3 from seed-ball spheres into an edge ball, and the edge ball's own sphere
# cover by T1 transfers into seed balls.

"""h-model composed with models u (4, in other variables): c + sum g_j u_j + sum q_m u_j u_l."""
function compose(t::TM{I64}, u::Vector{TM{I64}}, D::Dom)
    acc = tmconst(t.c)
    for j in 1:4
        acc = acc + scale(u[j], t.g[j])
    end
    for (m, (j, l)) in enumerate(QPAIRS)
        acc = acc + scale(mul(u[j], u[l], D), t.q[m])
    end
    acc
end

"""Shift a model by 2 pi N so that its constant is nearest the float c0 (any integer N is valid here)."""
near(t::TM{I64}, c0::Float64) = (k = round((c0 - mid(t.c)) / (2π)); k == 0 ? t : addc(t, TWOPI_I * iv(k)))

const X_DIST = 0.15                  # return XS, (XS1): 3/20 (the binary64 0.15 is below 3/20, so val < 0.15 suffices)
const W_TANGENT = [1.0 -0.5 -0.5 0.0; -0.5 1.75 0.25 0.0; -0.5 0.25 1.75 0.0; 0.0 0.0 0.0 1.0]   # W's form, XS (1)
const PERM3 = ((1, 2, 3), (1, 3, 2), (2, 1, 3), (2, 3, 1), (3, 1, 2), (3, 2, 1))
const IN_W = Dict{UInt,Bool}()
const IN_W_LOCK = ReentrantLock()

"""The edge ball's parameter ellipsoid {p = Mth w : ||w|| <= r} lies inside W's E_{1/5} = {q^T W q <= 1/25},
q = (p1, p2, p3, p4/24): (1/(25 r^2)) I - S^T W S is positive definite (interval Cholesky), S = diag(1, 1, 1, 1/24) Mth.
Cached per edge ball.  A shifted ball (q0 != 0) is not covered."""
function edge_in_W(eb::EdgeBall)
    key = objectid(eb)
    lock(IN_W_LOCK) do
        haskey(IN_W, key) && return IN_W[key]
        ok = all(iszero, eb.q0) && begin
            Sm = [iv(eb.Mth[i, j]) / (i == 4 ? iv(24.0) : iv(1.0)) for i in 1:4, j in 1:4]
            M = transpose(Sm) * iv.(W_TANGENT) * Sm
            c = iv(1.0) / (iv(25.0) * iv(eb.r)^2)
            IA.interval_cholesky_pd(Matrix{I64}([(i == j ? c : iv(0.0)) - M[i, j] for i in 1:4, j in 1:4]))
        end
        IN_W[key] = ok
    end
end

"""T3 by return XS's transfer theorem (XS1): for K = g . H_{o_s}(theta), theta over the box (phase models Q of the
representative), if the corner parameter p_K = (theta_K,1..3 - theta0_1..3, -2 Im Psi(K[I, J^c])) lies in a target
inside W's E_{1/5} and d([K], [F6]) <= 3/20, then K ~ H(p_K).  Checked over the whole box:
  - the target edge ball's ellipsoid lies inside E_{1/5} (edge_in_W);
  - ||Mth^-1 p_K|| < r;
  - the phase distance of K to F6 is below 3/20: K's rows (I, then I^c in some order) and columns (J, then J^c) are
    aligned with F6's rows and columns 0..5, and sup ||hor(pi(K) + 2 pi N - P_F6)|| is bounded as in T2 (the order of
    the complements and N are chosen in floats; any choice gives a valid bound).
No side orders, side windings, orientation signs or tubes are used.  The order of J^c is immaterial for Psi.  The 2 pi
windings of the first three corner phases are the stored ones (wind[1:3]) when present, else the nearest."""
function check_T3(Q::Vector{TM{I64}}, D::Dom, g::Group, eb::EdgeBall, leaves::Vector{EdgeLeaf}, Minv::Matrix{I64})
    edge_in_W(eb) || return false, "T3: the edge ball's ellipsoid is not certified inside W's E_1/5", Inf
    K = gact(mat6(Q), g.g)
    I = g.rows[1:3]; J = g.cols[1:3]
    Ic = [k for k in 1:6 if !(k in I)]; Jc = [k for k in 1:6 if !(k in J)]
    t0 = th0c(I64)
    sw = length(g.wind) >= 3
    thK = corner_seed(K, I, J)
    thK = [sw ? addc(thK[k], TWOPI_I * iv(Float64(g.wind[k]))) : near(thK[k], mid(t0[k])) for k in 1:3]
    yK = scale(imp(psi_model(K[I, Jc], D)), iv(-2.0))
    pK = [addc(thK[1], -t0[1]), addc(thK[2], -t0[2]), addc(thK[3], -t0[3]), yK]
    wK = [lincomb(Minv[i, :], pK) for i in 1:4]
    land = vecnorm_sup(wK, D)
    land < eb.r || return false, @sprintf("T3: ||w_K|| <= %.6g >= r = %.6g", land, eb.r), land
    # the distance to F6
    PF = [Float64(mod((a - 1) * (b - 1), 6)) for a in 1:6, b in 1:6]          # units of 2 pi / 6
    best = (Inf, Int[], Int[], zeros(6, 6))
    for pr in PERM3, pc in PERM3
        R = [I; Ic[collect(pr)]]; C = [J; Jc[collect(pc)]]
        A = permute6(K, R, C)
        D6 = [mid(A[a, b].c) - 2π * PF[a, b] / 6 for a in 1:6, b in 1:6]
        N = IA.choose_winding(D6)[1]
        z = hproj(D6 .+ 2π .* N)
        v = sqrt(sum(abs2, z))
        v < best[1] && (best = (v, R, C, N))
    end
    _, R, C, N = best
    A = permute6(K, R, C)
    Z = [addc(polypart(A[a, b]), TWOPI_I * iv(N[a, b]) - TWOPI_I * iv(PF[a, b]) / iv(6.0)) for a in 1:6, b in 1:6]
    rem = sup(sqrt(sum(iv(A[a, b].r)^2 for a in 1:6, b in 1:6)))
    dist = sup(iv(vecnorm_sup(vec(permutedims(hproj_models(Z))), D)) + iv(rem))
    dist < X_DIST || return false, @sprintf("T3: phase distance to F6 <= %.6g, not < 3/20", dist), land
    true, "ok", land
end

"""C2 for an edge ball: its sphere ||w|| = r is covered by the listed dyadic boxes (units of r), and every box carries a
T1 transfer into a seed ball (corner seed of g . H(p) lands in int E_t, orientation o_t, matched)."""
function check_c2_edge(eb::EdgeBall, X, root::EdgeMap; split_depth::Int=2, cover::Bool=true)
    t0 = time()
    counts = Dict(:T1 => 0, :T3 => 0); worst = Dict(:T1 => 0.0, :T3 => 0.0)
    nb = sum(length(g.boxes) for g in eb.groups; init=0)
    res(ok, msg, st=[0, 0], cn=0) = C2Result(ok, msg, nb, counts, st[1], st[2], worst, cn, time() - t0)
    listed = Set{NTuple{5,Int}}(b for g in eb.groups for b in g.boxes)
    cov, cn = cover ? dyadic_covered(listed, misses_unit_sphere) : (true, 0)     # cover = false: tests only
    cov || return res(false, "the boxes do not cover the sphere ||w|| = r", [0, 0], cn)
    st = [0, 0]
    # every (group, box) is an independent test: run them on all threads, each with its own split counters, then
    # report the first failure in group and box order, exactly as a serial loop would
    items = Tuple{Int,Int}[]
    for (gi, g) in enumerate(eb.groups)
        if g.kind == :T3                     # into another edge ball of the same chart (EdgeInQ)
            (0 <= g.target < length(X.edges)) || return res(false, "group $(gi-1): no such edge ball", st, cn)
            X.edge_leaves[g.target+1] === nothing && return res(false, "group $(gi-1): target edge ball did not pass C1e", st, cn)
            X.edge_minv[g.target+1] === nothing && return res(false, "group $(gi-1): target edge Mth not invertible", st, cn)
        else
            (0 <= g.target < length(X.seeds)) || return res(false, "group $(gi-1): no such seed", st, cn)
            X.minv[g.target+1] === nothing && return res(false, "group $(gi-1): target Mth not invertible", st, cn)
        end
        append!(items, ((gi, k) for k in eachindex(g.boxes)))
    end
    out = Vector{Tuple{Bool,String,Float64,Int,Int}}(undef, length(items))
    Threads.@threads :greedy for i in eachindex(items)
        gi, k = items[i]; g = eb.groups[gi]; b = g.boxes[k]
        sti = [0, 0]
        f = if g.kind == :T3
            function (lo, hi)
                wc, h = scaled_dom(lo, hi, eb.r)
                wcm = ntuple(j -> mid(wc[j]), 4)
                em = edge_box_map(eb, wcm, h, edge_guess(root, wcm)...; wcI=wc)
                em.ok || return false, "T3: " * em.why, Inf
                check_T3(representative(em.Q, eb.P, eb.U, wc), Dom(h), g, X.edges[g.target+1], X.edge_leaves[g.target+1], X.edge_minv[g.target+1])
            end
        else
            t = X.seeds[g.target+1]; Mi = X.minv[g.target+1]
            function (lo, hi)
                wc, h = scaled_dom(lo, hi, eb.r)
                wcm = ntuple(j -> mid(wc[j]), 4)
                em = edge_box_map(eb, wcm, h, edge_guess(root, wcm)...; wcI=wc)
                em.ok || return false, "T1: " * em.why, Inf
                check_T1(representative(em.Q, eb.P, eb.U, wc), Dom(h), g, t, Mi)
            end
        end
        ok, msg, val = try
            check_with_split(f, ubox(b)..., 0, split_depth, sti)
        catch err
            (false, "exception: " * sprint(showerror, err)[1:min(end, 200)], Inf)
        end
        out[i] = (ok, msg, val, sti[1], sti[2])
    end
    for (i, (gi, k)) in enumerate(items)
        ok, msg, val, a, b2 = out[i]; g = eb.groups[gi]
        st[1] += a; st[2] += b2
        tag = g.kind == :T3 ? "T3 -> edge $(g.target)" : "T1 -> $(g.target)"
        ok || return res(false, "group $(gi-1) ($tag), box $(g.boxes[k]): " * msg, st, cn)
        kk = g.kind == :T3 ? :T3 : :T1
        counts[kk] += 1; worst[kk] = max(worst[kk], val)
    end
    res(true, "ok", st, cn)
end

"""F6 is the edge ball's centre: at p = 0 the augmented systems hold exactly at x = 0 (theta0, phi0 are F6's corner and
sides; return U §4.1), and x = 0 lies strictly inside the certified tubes of the leaf containing w = 0, where the
solution is unique; so H(0) = F6.  The identity H(0, 0) = 0 is also checked here in intervals (each component's
enclosure contains 0)."""
function edge_f6(leaves::Vector{EdgeLeaf})
    li = findfirst(l -> all(abs(l.wc[j]) <= l.h[j] for j in 1:4), leaves)
    li === nothing && return false, "no C1e box contains w = 0"
    lf = leaves[li]
    u0 = [-lf.wc[j] for j in 1:4]
    for (side, xp, rho) in (("horizontal", lf.xh, lf.rho_h), ("vertical", lf.xv, lf.rho_v))
        for i in 1:7
            v = abs(peval(xp[i], iv.(u0)))
            sup(v) < rho[i] || return false, "x = 0 is not inside the $side tube at p = 0"
        end
    end
    D0 = Dom((0.0, 0.0, 0.0, 0.0))
    z = [tmconst(iv(0.0)) for _ in 1:7]; p0 = [tmconst(iv(0.0)) for _ in 1:4]
    for vert in (false, true)
        H, _, _, _ = aug_system(z, p0, vert, D0)
        all(inf(h.c) <= 0 <= sup(h.c) for h in H) || return false, "H(0, 0) does not enclose 0"
    end
    true, "F6 = H(0)"
end
