# Openness at y = 0 (SPEC §10.1): the graph property (G) near F6 and the chart derivative (D) of an edge ball.
#
# Data (an edge entry's "graph" and "sigma_D"; defaults when absent): the F6 record's centre P_F (phi) and exact frame
# T_F (Tint), the eta-radius rho_G, the radius R_G and the normal radius n_G, the eta-boxes of (G), sigma_D.
#   Defaults: P_F = the edge ball's P (F6 in the chart's gauge); Tint = round(2^30 hor(U)), the horizontal part of the
#   edge ball's frame; R_G = n_G = 1.05 x the certified sup of ||delta|| over the edge image; rho_G = 1.05 x the
#   certified sup of ||eta||; sigma_D = the certified minimum over the edge ball; the boxes = the checker's own cover.
# Alignment: the chart's F6 = (e^{i pi ab/3}) is matched to P_F by the existing F6 search (IndepAtlas.nonempty_F6):
#   delta(K) = hor(A(phases of K) + 2 pi N - P_F), A(X) = sign (tr ? X^T : X)[rp, cp], N an integer winding (chosen
#   per C1e box from its phase models; any integer matrix is valid);
#   eta(K) = T_F^+ delta(K), T_F^+ = G^{-1} T_F^T (exact, enclosed).
#
# (G) For every eta with ||eta|| <= rho_G, at most one nu in N_F with ||nu|| <= n_G makes e^{i(P_F + T_F eta + nu)}
#     Hadamard.  Certified on eta-boxes covering the ball by the normal tube (normal_tube.jl) with the inclusion ball
#     sized for ||nu|| <= n_G: its contraction gives uniqueness of the zero of Y Phi in the ball, and every such
#     Hadamard nu is a zero there.  Also checked: every Hadamard e^{i(P_F + delta)}, delta horizontal, ||delta|| <= R_G,
#     has ||nu|| <= n_G (trivial if n_G >= R_G, since ||nu|| <= ||delta||; otherwise by the record lemma at R_G).
# (D) On every C1e leaf box, sigma_min(d eta(H(p(w)))/dw) >= sigma_D > 0, and the image lies strictly inside
#     ||eta|| < rho_G, ||delta|| < R_G.  The derivative is enclosed by implicit differentiation in intervals over the
#     box: dx/dp = -(dH/dx)^{-1} dH/dp on the tube's ranges (both augmented systems), then the phases of E, B, C, and
#     d arg D = Im(dD/D) with dD = -(dC E* + C dE* + D dB*)(B*)^{-1}; sigma_min by an interval Cholesky of
#     A^T A - sigma^2 I.  (The Taylor models' polynomial parts alone would not bound a derivative: their remainder
#     need not be differentiable-small.)


struct GraphCtx
    PF::Matrix{Float64}
    Tint::Matrix{Int64}
    T36::Matrix{Int64}
    Ti::Matrix{I64}
    Tplus::Matrix{I64}           # 4 x 36, encloses G^{-1} T^T
    Tpn::Float64                 # >= ||T^+||_2
    sign::Int; tr::Bool; rp::Vector{Int}; cp::Vector{Int}
    N::Matrix{Float64}
end

const F6K = [mod(a * b, 6) for a in 0:5, b in 0:5]

function graph_ctx(eb::EdgeBall, gd::GraphData)
    PF = gd.phi === nothing ? [eb.P[6(a-1)+b] for a in 1:6, b in 1:6] : [gd.phi[6(a-1)+b] for a in 1:6, b in 1:6]
    if gd.Tint === nothing
        Th = zeros(36, 4)
        for k in 1:4
            Th[:, k] = vec(permutedims(IA.hproj([eb.U[6(a-1)+b, k] for a in 1:6, b in 1:6])))
        end
        Tint = round.(Int64, Th .* 2.0^30)
    else
        Tint = gd.Tint
    end
    T36 = IA.frame_exact(Tint)
    Ti = IA.frame_interval(T36)
    G = IA.gram_exact(T36)
    det(Float64.(G)) > 0 || return nothing
    Gi = [IA.ivq(x) for x in inv(G)]
    Tplus = Gi * transpose(Ti)
    # alignment of the chart's F6 with P_F: the existing exhaustive F6 search (any alignment that fits is valid)
    ne = IA.nonempty_F6([IA.Rec(0, true, 10.0, 0.03, PF, Tint, IA.Target[])], [1])
    isempty(ne) && return nothing
    _, _, _, _, sg, tr, rp0, cp0 = ne[1]
    rp = rp0 .+ 1; cp = cp0 .+ 1
    A0 = IA.align([pi3(F6K[a, b]) for a in 1:6, b in 1:6], sg, tr, rp, cp)
    N, _ = IA.choose_winding(mid.(A0) .- PF)
    GraphCtx(PF, Tint, T36, Ti, Tplus, IA.opnorm_upper(Tplus), sg, tr, rp, cp, N)
end

"""A(X) = sign (tr ? X^T : X)[rp, cp] for a 6 x 6 matrix of anything."""
galign(X::AbstractMatrix, gc::GraphCtx) = (Y = gc.tr ? permutedims(X) : X; [gc.sign == 1 ? Y[gc.rp[i], gc.cp[j]] : -Y[gc.rp[i], gc.cp[j]] for i in 1:6, j in 1:6])

# ---------------------------------------------------------------- (D): the derivative on a box

"""dH/dp (7 x 4 real models) for theta models (one side; indices as in aug_system)."""
function aug_dp_tm(th::Vector{TM{T}}, vert::Bool, D::Dom) where {T}
    a1, a2 = vert ? (1, 3) : (1, 2); b1 = vert ? 2 : 3; c1, c2 = vert ? (2, 1) : (3, 1); d = vert ? 3 : 2
    zc = itimes(exp_i(th[c1] - th[c2], D)); zd = itimes(exp_i(th[4] - th[d], D))
    O = tmzero(Complex{T})
    J = fill(tmzero(T), 7, 4)
    for k in 1:3
        izk = itimes(exp_i(th[k], D))
        d1 = (k == a1 || k == a2) ? izk : O
        d2 = k == b1 ? izk : O
        d3 = (k == c1 ? zc : O) - (k == c2 ? zc : O) - (k == d ? zd : O)
        J[1, k] = re(d1); J[2, k] = imp(d1); J[3, k] = re(d2); J[4, k] = imp(d2); J[5, k] = re(d3); J[6, k] = imp(d3)
    end
    J[7, 4] = tmconst(cnum(T, (vert ? -1 : 1) // 48))
    J
end

"""Model matrix product (any mix of real / complex models)."""
mmul(A, B, D) = [reduce(+, (mul(A[i, l], B[l, j], D) for l in 1:size(A, 2))) for i in 1:size(A, 1), j in 1:size(B, 2)]

"""dx/dp (7 x 4 models) over the box for one side: Z = -J_x^{-1} J_p with J_x, J_p the models of dH/dx, dH/dp at the
enclosed solution.  Zp = two Newton steps in model space (polynomial part, Y = inv J_x at the centre); then
|Z - Zp| <= ||J_x^{-1}||_inf ||J_x Zp + J_p||_inf column by column, with ||J_x^{-1}||_inf <= ||Y||_inf / (1 - q),
q = sup ||I - Y J_x||_inf over the box."""
function dx_dp(x::Vector{TM{I64}}, p::Vector{TM{I64}}, vert::Bool, D::Dom)
    _, Jx, th, _ = aug_system(x, p, vert, D)
    Jp = aug_dp_tm(th, vert, D)
    Y = inv([mid(j.c) for j in Jx])
    all(isfinite, Y) || return nothing
    Z = [-lincomb(Y[i, :], Jp[:, m]) for i in 1:7, m in 1:4]
    for _ in 1:2
        R = mmul(Jx, Z, D) .+ Jp
        Z = [polypart(Z[i, m] - lincomb(Y[i, :], R[:, m])) for i in 1:7, m in 1:4]
    end
    Zp = map(t -> toiv(tofloat(t)), Z)
    R = mmul(Jx, Zp, D) .+ Jp
    q = maximum(sup(sum(iv(bound(tmconst(iv(i == k ? 1.0 : 0.0)) - lincomb(Y[i, :], Jx[:, k]), D)) for k in 1:7)) for i in 1:7)
    q < 1 || return nothing
    nY = maximum(sup(sum(iv(abs(Y[i, k])) for k in 1:7)) for i in 1:7)
    inv_norm = sup(iv(nY) / (iv(1.0) - iv(q)))
    out = similar(Zp)
    for m in 1:4
        e = sup(iv(inv_norm) * iv(maximum(bound(R[i, m], D) for i in 1:7)))
        for i in 1:7
            out[i, m] = withrem(Zp[i, m], e)
        end
    end
    out
end

"""d eta / dw (4 x 4 models) over the edge box of em: dQ/dp from dx/dp of both sides, d arg D by residual correction
(dD B* = -(dC E* + C dE* + D dB*) =: -S, dD = -S A0 - R (B*)^{-1}, R = -S A0 B* + S, |(B*)^{-1}| by a Neumann bound),
then aligned, projected and mapped by T^+, times Mth."""
function edge_deta(eb::EdgeBall, em::EdgeMap, h::NTuple{4,Float64}, gc::GraphCtx)
    D = Dom(h)
    Zh = dx_dp(em.xhE, em.p, false, D); Zh === nothing && return nothing
    Zv = dx_dp(em.xvE, em.p, true, D); Zv === nothing && return nothing
    t0 = th0c(I64); f0 = ph0c(I64)
    th = [addc(em.p[1], t0[1]), addc(em.p[2], t0[2]), addc(em.p[3], t0[3]), addc(em.xhE[1], t0[4])]
    ph = [addc(em.xhE[1+k], f0[k]) for k in 1:6]; pv = [addc(em.xvE[1+k], f0[k]) for k in 1:6]
    at(a, b) = 6(a - 1) + b
    z = tmzero(I64); one_ = tmconst(iv(1.0))
    dQ = fill(z, 36, 4)
    dQ[at(2, 2), 1] = one_; dQ[at(2, 3), 2] = one_; dQ[at(3, 2), 3] = one_
    for m in 1:4
        dQ[at(3, 3), m] = Zh[1, m]
        for k in 1:3
            dQ[at(2, 3 + k), m] = Zh[1+k, m]; dQ[at(3, 3 + k), m] = Zh[4+k, m]
            dQ[at(3 + k, 2), m] = Zv[1+k, m]; dQ[at(3 + k, 3), m] = Zv[4+k, m]
        end
    end
    # complex models of E, B, C, D (exact ones where the entry is 1)
    cz = tmzero(CI64); c1 = tmconst(Complex(iv(1.0), iv(0.0)))
    E = [c1 c1 c1; c1 exp_i(th[1], D) exp_i(th[2], D); c1 exp_i(th[3], D) exp_i(th[4], D)]
    B = [c1 c1 c1; exp_i(ph[1], D) exp_i(ph[2], D) exp_i(ph[3], D); exp_i(ph[4], D) exp_i(ph[5], D) exp_i(ph[6], D)]
    C = [c1 exp_i(pv[1], D) exp_i(pv[4], D); c1 exp_i(pv[2], D) exp_i(pv[5], D); c1 exp_i(pv[3], D) exp_i(pv[6], D)]
    Dm = em.Dm
    Bs = permutedims(map(conj, B)); Es = permutedims(map(conj, E))
    # (B*)^{-1}: Neumann bound around A0 = inv(mid B*_c)
    Bsc = [x.c for x in Bs]
    A0 = inv([Complex(mid(real(x)), mid(imag(x))) for x in Bsc])
    A0i = civ.(A0)
    qn = maximum(sup(sum(iv(absup((i == k ? Complex(iv(1.0), iv(0.0)) : Complex(iv(0.0), iv(0.0))) - sum(A0i[i, l] * Bsc[l, k] for l in 1:3))) +
                         sum(iv(absup(A0i[i, l])) * iv(varb(Bs[l, k], D)) for l in 1:3) for k in 1:3)) for i in 1:3)
    qn < 1 || return nothing
    nA0 = maximum(sup(sum(iv(absup(A0i[i, l])) for l in 1:3)) for i in 1:3)
    Mb = [sup(iv(absup(A0i[l, k])) + iv(qn) / (iv(1.0) - iv(qn)) * iv(nA0)) for l in 1:3, k in 1:3]
    for m in 1:4
        dE = [(a == 1 || b == 1) ? cz : mul(itimes(E[a, b]), cplx(dQ[at(a, b), m]), D) for a in 1:3, b in 1:3]
        dB = [a == 1 ? cz : mul(itimes(B[a, b]), cplx(dQ[at(a, 3 + b), m]), D) for a in 1:3, b in 1:3]
        dC = [b == 1 ? cz : mul(itimes(C[a, b]), cplx(dQ[at(3 + a, b), m]), D) for a in 1:3, b in 1:3]
        S = mmul(dC, Es, D) .+ mmul(C, permutedims(map(conj, dE)), D) .+ mmul(Dm, permutedims(map(conj, dB)), D)
        # dD solves dD B* = -S: Newton in model space (two steps), then the residual correction
        X = [-lincomb(civ.(A0[:, k]), S[j, :]) for j in 1:3, k in 1:3]
        for _ in 1:2
            R = mmul(X, Bs, D) .+ S
            X = [polypart(X[j, k] - lincomb(civ.(A0[:, k]), R[j, :])) for j in 1:3, k in 1:3]
        end
        X = map(t -> toiv(tofloat(t)), X)
        R = mmul(X, Bs, D) .+ S
        Rb = [bound(R[j, l], D) for j in 1:3, l in 1:3]
        for a in 1:3, b in 1:3
            dDab = withrem(X[a, b], sup(sum(iv(Rb[a, l]) * iv(Mb[l, b]) for l in 1:3)))
            qm = imp(mul(dDab, conj(Dm[a, b]), D))         # Im(dD conj D) = |D|^2 d arg D
            # divide by |D|^2 (within [lo, hi] near 1): q/|D|^2 = q + q (1/|D|^2 - 1)
            ad = abs2m(Dm[a, b], D); adr = tmrange(ad, D)
            adr[1] > 0 || return nothing
            dev = max(abs(1 / adr[1] - 1), abs(1 / adr[2] - 1)) * 1.000001
            dQ[at(3 + a, 3 + b), m] = withrem(qm, sup(iv(qm.r) + iv(bound(qm, D)) * iv(dev)))
        end
    end
    # d eta / dp = T^+ hor(A(dQ)), then d eta / dw = (d eta / dp) Mth
    deta_dp = Matrix{TM{I64}}(undef, 4, 4)
    for m in 1:4
        X = galign([dQ[at(a, b), m] for a in 1:6, b in 1:6], gc)
        dd = vec(permutedims(hproj_models(Matrix{TM{I64}}(X))))
        for i in 1:4
            deta_dp[i, m] = lincomb(gc.Tplus[i, :], dd)
        end
    end
    A = [lincomb([iv(eb.Mth[m, j]) for m in 1:4], deta_dp[i, :]) for i in 1:4, j in 1:4]
    DEBUG_DETA[] && (DETA_LAST[] = (deta_dp, A, D))
    [tmrange(t, D) |> (r -> interval(r[1], r[2])) for t in A]
end
const DEBUG_DETA = Ref(false)
const DETA_LAST = Ref{Any}(nothing)

"""A certified lower bound for sigma_min over the interval matrix A (n x n): by Weyl's inequality, for every matrix
A_mid + Delta of the hull (|Delta| <= A_rad entrywise), sigma_min >= sigma_min(A_mid) - ||A_rad||_2, with
||A_rad||_2 <= sqrt(||A_rad||_1 ||A_rad||_inf) and sigma_min(A_mid) certified by an interval Cholesky of
A_mid^T A_mid - s^2 I (A_mid is an exact float matrix).  With target > 0, the bound is compared with it."""
function sigma_lower(A::Matrix{I64}; target::Float64=NaN)
    n = size(A, 1)
    Am = mid.(A)
    Ar = [sup(iv(sup(A[i, k])) - iv(Am[i, k])) for i in 1:n, k in 1:n]
    Ar = [max(Ar[i, k], sup(iv(Am[i, k]) - iv(inf(A[i, k])))) for i in 1:n, k in 1:n]
    n1 = maximum(sup(sum(iv(Ar[i, k]) for i in 1:n)) for k in 1:n); ninf = maximum(sup(sum(iv(Ar[i, k]) for k in 1:n)) for i in 1:n)
    rad = sup(sqrt(iv(n1) * iv(ninf)))
    B = transpose(iv.(Am)) * iv.(Am)
    tryit(s2) = IA.interval_cholesky_pd(Matrix{I64}([B[i, k] - (i == k ? iv(s2) : iv(0.0)) for i in 1:n, k in 1:n]))
    smid = 0.0
    lf = eigmin(Symmetric(Am' * Am))
    if lf > 0
        s2 = lf * 0.999
        for _ in 1:40
            if tryit(s2)
                smid = inf(sqrt(iv(s2))); break
            end
            s2 *= 0.8
        end
    end
    s = inf(iv(smid) - iv(rad))
    !isnan(target) && return s >= target ? target : 0.0
    max(s, 0.0)
end

"""(old form, kept for reference) interval Cholesky of A^T A - s^2 I over the whole hull."""
function sigma_lower_hull(A::Matrix{I64}; target::Float64=NaN)
    n = size(A, 1)
    B = transpose(A) * A
    tryit(s2) = IA.interval_cholesky_pd(Matrix{I64}([B[i, k] - (i == k ? iv(s2) : iv(0.0)) for i in 1:n, k in 1:n]))
    if !isnan(target)
        return tryit(target^2) ? target : 0.0
    end
    lf = eigmin(Symmetric(mid.(B)))
    lf > 0 || return 0.0
    s2 = lf * 0.999
    for _ in 1:40
        tryit(s2) && return inf(sqrt(iv(s2)))
        s2 *= 0.8
    end
    0.0
end

"""Image of the box: sup ||delta|| and sup ||eta|| over it (Taylor models of Q, aligned, projected)."""
function edge_image(em::EdgeMap, h::NTuple{4,Float64}, gc::GraphCtx)
    D = Dom(h)
    A = galign(mat6(em.Q), gc)
    N, _ = IA.choose_winding([mid(A[a, b].c) for a in 1:6, b in 1:6] .- gc.PF)     # any integer winding is valid
    Z = [addc(polypart(A[a, b]), TWOPI_I * iv(N[a, b]) - iv(gc.PF[a, b])) for a in 1:6, b in 1:6]
    rem = sup(sqrt(sum(iv(A[a, b].r)^2 for a in 1:6, b in 1:6)))
    dl = vec(permutedims(hproj_models(Z)))
    dsup = sup(iv(vecnorm_sup(dl, D)) + iv(rem))
    eta = [lincomb(gc.Tplus[i, :], dl) for i in 1:4]
    esup = sup(iv(vecnorm_sup(eta, D)) + iv(gc.Tpn) * iv(rem))
    dsup, esup
end

# ---------------------------------------------------------------- (G): the eta-ball

misses_unit_ball(lo, hi) = inf(sum((lo[j] > 0 ? iv(lo[j])^2 : hi[j] < 0 ? iv(hi[j])^2 : iv(0.0)) for j in 1:4)) > 1

"""(G) on one eta-box (u-box in units of rho_G): the normal tube with the inclusion ball for ||nu|| <= n_G."""
function graph_box(gc::GraphCtx, nc::NormalCtx, rhoG::Float64, lo, hi)
    zc, h = scaled_dom(lo, hi, rhoG)
    normal_tube(gc.PF, gc.Ti, nc, zc, h)
end

struct GraphResult
    ok::Bool
    msg::String
    rhoG::Float64; RG::Float64; nG::Float64
    sigma::Float64               # certified min sigma over the edge ball (or sigma_D when given and verified)
    eta_sup::Float64; delta_sup::Float64
    nboxes::Int                  # (G) boxes
    alpha_max::Float64           # max contraction alpha(rho_X) over the (G) boxes
    seconds::Float64
end

function check_graph(eb::EdgeBall, leaves::Vector{EdgeLeaf}, gd::GraphData; maxsplit::Int=6)
    t0 = time()
    fail(msg, a...) = GraphResult(false, msg, a..., time() - t0)
    gc = graph_ctx(eb, gd)
    gc === nothing && return fail("graph data: no frame or no alignment of F6 with phi", NaN, NaN, NaN, NaN, NaN, NaN, 0, NaN)
    root = edge_root(eb)
    # (D) and the image, on every C1e leaf
    out = Vector{Any}(undef, length(leaves))
    Threads.@threads :greedy for i in eachindex(leaves)
        lf = leaves[i]
        out[i] = try
            em = edge_box_map(eb, lf.wc, lf.h, edge_guess(root, lf.wc)...)
            if !em.ok
                (false, "(D): edge box map failed on a C1e box: " * em.why)
            else
                A = edge_deta(eb, em, lf.h, gc)
                if A === nothing
                    (false, "(D): derivative enclosure failed on the box at " * string(round.(lf.wc, sigdigits=4)))
                else
                    s = sigma_lower(A; target=isnan(gd.sigmaD) ? NaN : gd.sigmaD)
                    d, e = edge_image(em, lf.h, gc)
                    s > 0 ? (true, s, d, e) :
                        (false, @sprintf("(D): sigma_min not certified >= %s on the box at %s",
                                         isnan(gd.sigmaD) ? "0" : string(gd.sigmaD), string(round.(lf.wc, sigdigits=4))))
                end
            end
        catch err
            (false, "(D): exception: " * sprint(showerror, err)[1:min(end, 200)])
        end
    end
    smin = Inf; esup = 0.0; dsup = 0.0
    for o in out
        o[1] || return fail(o[2], NaN, NaN, NaN, NaN, NaN, NaN, 0, NaN)
        smin = min(smin, o[2]); dsup = max(dsup, o[3]); esup = max(esup, o[4])
    end
    RG = isnan(gd.R) ? sup(iv(1.05) * iv(dsup)) : gd.R
    nG = isnan(gd.n) ? RG : gd.n
    rhoG = isnan(gd.eta) ? sup(iv(1.05) * iv(esup)) : gd.eta
    res(ok, msg, nb=0, am=NaN) = GraphResult(ok, msg, rhoG, RG, nG, smin, esup, dsup, nb, am, time() - t0)
    esup < rhoG || return res(false, @sprintf("(D): the edge image reaches ||eta|| <= %.6g, not < rho_G = %.6g", esup, rhoG))
    dsup < RG || return res(false, @sprintf("(D): the edge image reaches ||delta|| <= %.6g, not < R_G = %.6g", dsup, RG))
    # every Hadamard with ||delta|| <= R_G has ||nu|| <= n_G
    if nG < RG
        nb = IA.normal_bound(IA.Rec(0, true, RG, 0.03, gc.PF, gc.Tint, IA.Target[]))
        (nb.ok && nb.n <= nG) || return res(false, @sprintf("(G): n_G = %.6g below the record's normal bound at R_G (%s)", nG, nb.ok ? string(nb.n) : nb.msg))
    end
    # (G) on eta-boxes covering ||eta|| <= rho_G
    nc = normal_ctx(gc.T36, nG)
    nc === nothing && return res(false, "(G): no certified coordinates on N_F")
    amax = 0.0; nbx = 0
    if !isempty(gd.boxes)
        listed = Set(gd.boxes)
        cov, _ = dyadic_covered(listed, misses_unit_ball)
        cov || return res(false, "(G): the eta-boxes do not cover the ball ||eta|| <= rho_G")
        # a listed box whose contraction fails as a whole is split into its halves (the claim is universal over it)
        for b in gd.boxes
            stack = [(ubox(b)..., 0)]
            while !isempty(stack)
                lo, hi, dpt = pop!(stack)
                misses_unit_ball(lo, hi) && continue
                tb = graph_box(gc, nc, rhoG, lo, hi)
                if tb.ok
                    amax = max(amax, tb.alpha); nbx += 1
                elseif dpt < 2
                    for (lo2, hi2) in split_box(lo, hi)
                        push!(stack, (lo2, hi2, dpt + 1))
                    end
                else
                    return res(false, "(G): box $b: " * tb.why, nbx, amax)
                end
            end
        end
    else
        stack = [(0, 0, 0, 0, 0)]
        while !isempty(stack)
            b = pop!(stack)
            lo, hi = ubox(b)
            misses_unit_ball(lo, hi) && continue
            tb = graph_box(gc, nc, rhoG, lo, hi)
            if tb.ok
                amax = max(amax, tb.alpha); nbx += 1
            elseif b[1] < maxsplit
                m = b[1] + 1
                for ch in 0:15
                    push!(stack, (m, ntuple(a -> 2b[a+1] + ((ch >> (a - 1)) & 1), 4)...))
                end
            else
                return res(false, "(G): box $b: " * tb.why, nbx, amax)
            end
        end
    end
    res(true, "ok", nbx, amax)
end
