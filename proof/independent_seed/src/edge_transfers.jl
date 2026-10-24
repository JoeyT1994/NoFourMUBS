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

"""T3: for K = g . H_{o_s}(theta), theta over the box (phase models Q of the representative): the corner seed theta_K
at the ordered corner (I, J) and y_K = -2 Im Psi(K[I, J^c]) give p_K = (theta_K,1..3 - theta0_1..3, y_K) in int E,
and K's dephased side angles (with theta_K,4 - theta0_4) lie strictly inside the certified horizontal tube at p_K;
likewise the vertical side (K[I^c, J], transposed) in the vertical tube.  The side angles follow FORMAT.md §8: the
horizontal side's columns in the order hcols (= cols[4:6]), the vertical side's rows in the order vrows (= rows[4:6]);
the stored windings wind, wind_h, wind_v are the ones used (the checker's own nearest choice only when none is stored).  The tubes are those of the C1e leaves: the
containment is checked, over the whole source box, against every leaf whose box meets the range of w_K = Mth^-1 p_K
(its predictor composed with w_K - wc).  Each source point has w_K in int E, hence in some leaf (the leaves cover the
ball), and that leaf is among those checked; there K's sides are the unique solutions, so K ~ H(p_K).  (For the vertical side this uses that K is matched at that corner; SPEC §10's global
argument: a nonmatched strict K would be Tao, which is far from F6.)"""
function check_T3(Q::Vector{TM{I64}}, D::Dom, g::Group, eb::EdgeBall, leaves::Vector{EdgeLeaf}, Minv::Matrix{I64})
    K = gact(mat6(Q), g.g)
    I = g.rows[1:3]; Ic = g.rows[4:6]; J = g.cols[1:3]; Jc = g.cols[4:6]
    t0 = th0c(I64); f0 = ph0c(I64)
    sw = length(g.wind) == 16          # stored windings (FORMAT.md §8): wind, wind_h, wind_v
    wfix(x, c0, k) = sw ? addc(x, TWOPI_I * iv(Float64(g.wind[k]))) : near(x, c0)
    thK = [wfix(x, mid(t0[k]), k) for (k, x) in enumerate(corner_seed(K, I, J))]
    yK = scale(imp(psi_model(K[I, Jc], D)), iv(-2.0))
    pK = [addc(thK[1], -t0[1]), addc(thK[2], -t0[2]), addc(thK[3], -t0[3]), yK]
    wK = [lincomb(Minv[i, :], pK) for i in 1:4]
    land = vecnorm_sup(wK, D)
    land < eb.r || return false, @sprintf("T3: ||w_K|| <= %.6g >= r = %.6g", land, eb.r), land
    dep(a, b) = K[a, b] - K[a, J[1]] - K[I[1], b] + K[I[1], J[1]]
    tK = addc(thK[4], -t0[4])
    xh = [tK; [addc(wfix(dep(I[2+(k-1)÷3], Jc[(k-1)%3+1]), mid(f0[k]), 4 + k), -f0[k]) for k in 1:6]]
    xv = [tK; [addc(wfix(dep(Ic[(k-1)%3+1], J[2+(k-1)÷3]), mid(f0[k]), 10 + k), -f0[k]) for k in 1:6]]
    wr = [tmrange(x, D) for x in wK]
    hits = [l for l in leaves if all(l.wc[j] - l.h[j] <= wr[j][2] && wr[j][1] <= l.wc[j] + l.h[j] for j in 1:4)]
    isempty(hits) && return false, "T3: w_K meets no C1e box", land
    for lf in hits
        u = [addc(wK[j], iv(-lf.wc[j])) for j in 1:4]
        for (side, x, xp, rho) in (("horizontal", xh, lf.xh, lf.rho_h), ("vertical", xv, lf.xv, lf.rho_v))
            for i in 1:7
                d = bound(x[i] - compose(xp[i], u, D), D)
                d < rho[i] || return false, @sprintf("T3: %s side, unknown %d: %.3g from the tube's predictor >= rho %.3g", side, i, d, rho[i]), land
            end
        end
    end
    true, "ok", land
end

"""C2 for an edge ball: its sphere ||w|| = r is covered by the listed dyadic boxes (units of r), and every box carries a
T1 transfer into a seed ball (corner seed of g . H(p) lands in int E_t, orientation o_t, matched)."""
function check_c2_edge(eb::EdgeBall, X, root::EdgeMap; split_depth::Int=2, cover::Bool=true)
    t0 = time()
    counts = Dict(:T1 => 0); worst = Dict(:T1 => 0.0)
    nb = sum(length(g.boxes) for g in eb.groups; init=0)
    res(ok, msg, st=[0, 0], cn=0) = C2Result(ok, msg, nb, counts, st[1], st[2], worst, cn, time() - t0)
    listed = Set{NTuple{5,Int}}(b for g in eb.groups for b in g.boxes)
    cov, cn = cover ? dyadic_covered(listed, misses_unit_sphere) : (true, 0)     # cover = false: tests only
    cov || return res(false, "the boxes do not cover the sphere ||w|| = r", [0, 0], cn)
    st = [0, 0]
    for (gi, g) in enumerate(eb.groups)
        (0 <= g.target < length(X.seeds)) || return res(false, "group $(gi-1): no such seed", st, cn)
        Mi = X.minv[g.target+1]
        Mi === nothing && return res(false, "group $(gi-1): target Mth not invertible", st, cn)
        t = X.seeds[g.target+1]
        f = function (lo, hi)
            wc, h = scaled_dom(lo, hi, eb.r)
            wcm = ntuple(j -> mid(wc[j]), 4)
            em = edge_box_map(eb, wcm, h, edge_guess(root, wcm)...; wcI=wc)
            em.ok || return false, "T1: " * em.why, Inf
            check_T1(representative(em.Q, eb.P, eb.U, wc), Dom(h), g, t, Mi)
        end
        for b in g.boxes
            ok, msg, val = check_with_split(f, ubox(b)..., 0, split_depth, st)
            ok || return res(false, "group $(gi-1) (T1 -> $(g.target)), box $b: " * msg, st, cn)
            counts[:T1] += 1; worst[:T1] = max(worst[:T1], val)
        end
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
