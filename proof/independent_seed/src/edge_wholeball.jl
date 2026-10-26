# The X-ball (edge chart F6-012 at F6) by one augmented whole-ball contraction (return ZT, edge/EDGE_REPORT.md §§2-4).
#
# The augmented residual F(q) = (Phi(q), psi_h(q)) in R^31: the 30 row-orthogonality components and the signed
# side signature of rows 0-2, columns 3-5, with psi_h(Q(w)) = -(M w)_4 / 2.  As a trigonometric polynomial,
# F(q) = Re sum_k C_k exp(i n_k . q): 90 row-pair monomials and 24 signature frequencies.  Normal coordinates X: the
# 22-dim kernel, in the horizontal space, of the first three seed cross-ratios.  At the Fourier lift q0 (F(q0) = 0),
# J = DF(q0), W = ((J X)^T (J X))^{-1} (J X)^T, U = V M_3 + X W (T - J V M_3), H2 = -X W D^2F(q0)[U, U], and
# G(w, z) = W (F(q_p(w) + X z) - T w) is contracted as in return Z, with 22 normal coordinates.  The output-weighted
# normal error tau_A (EDGE_REPORT.md §4) bounds ||A X z(w)|| for a linear output A.  Every acceptance is an interval
# inequality; floats only propose.

const EW_FIXED = [(1, 1), (1, 2), (2, 1)]
const EW_FREE = [(i, j) for i in 1:5 for j in 1:5 if !((i, j) in EW_FIXED)]

"""The monomials (n_k (36 ints), C_k as 31 Gaussian integers (re, im)) of F, and max ||nu||^2 of the signature."""
function ew_monomials()
    Ns = Vector{Vector{Int}}(); Cre = Vector{Vector{Int}}(); Cim = Vector{Vector{Int}}()
    for (p, (a, b)) in enumerate(WB_PAIRS), j in 0:5
        n = zeros(Int, 36); n[6a+j+1] = 1; n[6b+j+1] = -1
        cr = zeros(Int, 31); ci = zeros(Int, 31); cr[p] = 1; ci[15+p] = -1      # Re z and Im z = Re(-i z)
        push!(Ns, n); push!(Cre, cr); push!(Cim, ci)
    end
    maxnu = 0
    for (sg, nu) in WB_SIG_TERMS                                                # psi_h = sum sg sin(nu . x) = Re(-i sg z)
        n = zeros(Int, 36)
        for a in 0:2, b in 0:2; n[6a+3+b+1] = nu[3a+b+1]; end
        cr = zeros(Int, 31); ci = zeros(Int, 31); ci[31] = -sg
        push!(Ns, n); push!(Cre, cr); push!(Cim, ci)
        maxnu = max(maxnu, sum(abs2, nu))
    end
    Ns, Cre, Cim, maxnu
end

ew_norm(A) = iv(wb_spectral(A))

"""Re(K) (a (x) b) contracted: the D^2 term -sum_k K_k (n_k.a)(n_k.b) (only Re K enters: the factor is real)."""
function ew_tensor2(Kr, a, b)
    m, d = size(a); e = size(b, 2)
    ar = zeros(I64, m, d * e)
    for k in 1:m, i in 1:d, j in 1:e; ar[k, (i-1)*e+j] = -a[k, i] * b[k, j]; end
    Kr * ar
end

"""The whole-ball model of an X-ball centred at F6, or nothing (then the box method decides)."""
function edge_wholeball_model(eb::EdgeBall)
    all(iszero, eb.q0) || return nothing
    Ns, Cre, Cim, maxnu = ew_monomials(); nm = length(Ns)
    Nmat = iv.(Float64.(reduce(vcat, [transpose(n) for n in Ns])))           # nm x 36, integers
    fk = [mod(i * j, 6) for i in 0:5 for j in 0:5]                            # q0 = (pi / 3) fk, the Fourier lift
    z = [wb_cexp(PI_I * iv(Float64(sum(Ns[k][e] * fk[e] for e in 1:36))) / iv(3.0)) for k in 1:nm]
    Ck = [complex(iv(Float64(Cre[k][a])), iv(Float64(Cim[k][a]))) for k in 1:nm, a in 1:31]
    J = zeros(I64, 31, 36)
    for a in 1:31, k in 1:nm
        v = real(im * Ck[k, a] * z[k])
        for e in 1:36; Ns[k][e] != 0 && (J[a, e] += v * Ns[k][e]); end
    end
    V = wb_hbasis(EW_FIXED); X0 = wb_hbasis(EW_FREE)
    _, Rf = qr(mid.(X0)); T = iv.(inv(Matrix(Rf)))
    wb_inv(T) === nothing && return nothing
    X = X0 * T
    JX = J * X
    Gi = wb_inv(transpose(JX) * JX); Gi === nothing && return nothing
    Y = Gi * transpose(JX)                                                    # 22 x 31
    M = iv.(eb.Mth); M3 = M[1:3, :]
    Rhs = zeros(I64, 31, 4); Rhs[31, :] = -M[4, :] ./ 2
    base = V * M3
    U = base + X * Y * (Rhs - J * base)
    K = [sum(Y[i, a] * Ck[k, a] for a in 1:31) * z[k] for i in 1:22, k in 1:nm]
    Kr = real.(K); Ki = imag.(K)
    s = Nmat * U; dx = Nmat * X
    H2 = -(X * ew_tensor2(Kr, s, s)); t = Nmat * H2
    Wph = Y[:, 1:30]; Wps = Y[:, 31:31]
    L2 = 2 * sqrt(iv(3.0)) * ew_norm(Wph) + 72 * ew_norm(Wps)
    L3 = 2 * sqrt(iv(6.0)) * ew_norm(Wph) + 72 * sqrt(iv(Float64(maxnu))) * ew_norm(Wps)
    Cm = ew_tensor2(Kr, s, dx); Dm = ew_tensor2(Kr, dx, dx)
    c = ew_norm(Cm); d = ew_norm(Dm); u = ew_norm(U); x = ew_norm(X); beta = ew_norm(H2)
    r = iv(eb.r)
    # predictor residual constants (return Z §3, with nm monomials and 22 normal coordinates)
    triples = [(i, j, k) for i in 1:4 for j in 1:4 for k in 1:4]
    quads = [(i, j, k, l) for i in 1:4 for j in 1:4 for k in 1:4 for l in 1:4]
    p3r = zeros(I64, nm, 64); p3i = zeros(I64, nm, 64); p4r = zeros(I64, nm, 256); p4i = zeros(I64, nm, 256)
    a2r = zeros(I64, nm, 16 * 22); a2i = zeros(I64, nm, 16 * 22)
    L5 = iv(0.0); L3a = iv(0.0); w5 = I64[]; w3 = I64[]
    for a in 1:nm
        sa = s[a, :]; ta = [t[a, 4(i-1)+j] for i in 1:4, j in 1:4]
        for (cc, (i, j, k)) in enumerate(triples)
            p3r[a, cc] = -(ta[i, j] * sa[k] + ta[i, k] * sa[j] + ta[j, k] * sa[i]); p3i[a, cc] = -sa[i] * sa[j] * sa[k]
        end
        for (cc, (i, j, k, l)) in enumerate(quads)
            p4r[a, cc] = sa[i] * sa[j] * sa[k] * sa[l] - ta[i, j] * ta[k, l] - ta[i, k] * ta[j, l] - ta[i, l] * ta[j, k]
            p4i[a, cc] = -(ta[i, j] * sa[k] * sa[l] + ta[i, k] * sa[j] * sa[l] + ta[i, l] * sa[j] * sa[k] +
                           ta[j, k] * sa[i] * sa[l] + ta[j, l] * sa[i] * sa[k] + ta[k, l] * sa[i] * sa[j])
        end
        for i in 1:4, j in 1:4, k in 1:22
            cc = ((i - 1) * 4 + (j - 1)) * 22 + k
            a2r[a, cc] = -ta[i, j] * dx[a, k]; a2i[a, cc] = -sa[i] * sa[j] * dx[a, k]
        end
        sn = sqrt(sum(v^2 for v in sa)); tn = ew_norm(ta); an = sn + r * tn
        cn = ew_norm(hcat(Kr[:, a], Ki[:, a]))
        push!(w5, an^5 + 10 * tn * an^3 + 15 * tn^2 * an); L5 += cn * w5[end]
        dxn = sqrt(sum(dx[a, k]^2 for k in 1:22)); push!(w3, dxn * (an^3 + 3 * tn * an)); L3a += cn * w3[end]
    end
    R3 = Kr * p3r - Ki * p3i; R4 = Kr * p4r - Ki * p4i; A2 = Kr * a2r - Ki * a2i
    t3 = ew_norm(R3); t4 = ew_norm(R4); a2 = ew_norm(A2)
    b0 = t3 * r^3 / 6 + t4 * r^4 / 24 + L5 * r^5 / 120
    b1 = t3 * r^2 / 2 + t4 * r^3 / 6 + L5 * r^4 / 24
    b2 = t3 * r + t4 * r^2 / 2 + L5 * r^3 / 6
    bs = u * r + beta * r^2 / 2
    qb = c * r + a2 * r^2 / 2 + L3a * r^3 / 6
    qfun(tau) = qb + (d + L3 * x^2 * bs) * tau + L3 * x^3 * tau^2 / 2
    tau = iv(sup(b0) * 1.1); valid = false; q = iv(0.0)
    for _ in 1:100
        q = qfun(tau)
        sup(q) < 1 || break
        if sup(b0 + q * tau) < inf(tau); valid = true; break; end
        tau = iv(sup(b0 / (1 - q)) * 1.001)
    end
    valid || return nothing
    dlt = bs + x * tau
    m1 = c + a2 * r + L3a * r^2 / 2 + L3 * x^2 * (u + beta * r) * tau
    m2 = L3 * x * (u + beta * r)^2 + L2 * x * beta; mzz = d + L3 * x^2 * dlt
    Z1 = (b1 + m1 * tau) / (1 - q); Z2 = (b2 + m2 * tau + 2 * m1 * Z1 + mzz * Z1^2) / (1 - q)
    # the stored (dephased) lift: centre turns, then the gap to P + U w on the ball (below pi: the stored windings' lift)
    Gd = zeros(I64, 36, 36)
    for i in 0:5, j in 0:5
        k = 6i + j + 1; Gd[k, k] += 1; Gd[k, 6i+1] -= 1; Gd[k, j+1] -= 1; Gd[k, 1] += 1
    end
    q0 = [PI_I * iv(Float64(f)) / iv(3.0) for f in fk]
    qg = Gd * q0
    turns = round.((eb.P .- mid.(qg)) ./ (2π))
    qbase = qg .+ TWOPI_I .* iv.(turns)
    e0 = sqrt(sum((qbase[e] - iv(eb.P[e]))^2 for e in 1:36))
    sup(e0) < π / 4 || return nothing
    gap = e0 + r * ew_norm(Gd * U - iv.(eb.U)) + ew_norm(Gd * H2) * r^2 / 2 + ew_norm(Gd * X) * tau
    sup(gap) < inf(PI_I) || return nothing
    Q0 = vec(permutedims(hproj(permutedims(reshape(qbase, 6, 6)))))
    (Q0 = Q0, qbase = qbase, U = U, H2 = H2, X = X, Y = Y, tau = tau, q = q, Z1 = Z1, Z2 = Z2, r = r, u = u, x = x,
     beta = beta, R3 = R3, R4 = R4, A2 = A2, K = K, w5 = w5, w3 = w3, Cm = Cm, Dm = Dm, maxnu = maxnu, gap = sup(gap),
     n_direct = sup(beta * r^2 / 2 + x * tau), fk = fk, Ns = Ns, Ck = Ck)
end

"""F6 = H(0): the augmented residual at the Fourier lift contains 0 (then z = 0 solves G(0, z) = 0, and the
contraction's uniqueness in ||z|| <= tau gives z(0) = 0, H(0) = F6)."""
function edge_wholeball_f6(m)
    for a in 1:31
        v = sum(real(m.Ck[k, a] * wb_cexp(PI_I * iv(Float64(sum(m.Ns[k][e] * m.fk[e] for e in 1:36))) / iv(3.0)))
                for k in 1:length(m.Ns))
        (in_interval(0.0, v) && sup(abs(v)) < 1e-12) || return false
    end
    true
end

"""(G), (D) and the image from the model: GraphResult, with the image bound ||h(Q - P_F + 2 pi N)|| over the ball."""
function edge_wholeball_graph(eb::EdgeBall, m, gd::GraphData)
    t0 = time()
    gc = graph_ctx(eb, gd)
    gc === nothing && return GraphResult(false, "graph data: no frame", NaN, NaN, NaN, NaN, NaN, time() - t0)
    sig = sigma_F6(gc; target=gd.sigma)
    sig > 0 || return GraphResult(false, "(G): sigma at F6 not certified", NaN, NaN, NaN, NaN, NaN, time() - t0)
    RG = isnan(gd.R) ? min(0.45, sup(iv(0.99) * iv(sig) / L_LIP)) : gd.R
    sup(L_LIP * iv(RG)) < sig || return GraphResult(false, "(G): L R_G >= sigma", RG, sig, NaN, NaN, NaN, time() - t0)
    Hm = [ivq((36 * (a == b) - 6 * ((a - 1) ÷ 6 == (b - 1) ÷ 6) - 6 * ((a - 1) % 6 == (b - 1) % 6) + 1) // 36) for a in 1:36, b in 1:36]
    PF = vec(permutedims(gc.PF))
    N0 = round.((mid.(m.Q0) .- mid.(PF)) ./ (2π))
    off = Hm * (m.Q0 .- PF .- TWOPI_I .* iv.(N0))
    c0 = sqrt(sum(v^2 for v in off))
    r = m.r
    dsup = sup(c0 + ew_norm(Hm * m.U) * r + ew_norm(Hm * m.H2) * r^2 / 2 + ew_norm(Hm * m.X) * m.tau)
    Tp = gc.Tplus
    esup = sup(ew_norm(Tp) * c0 + ew_norm(Tp * Hm * m.U) * r + ew_norm(Tp * Hm * m.H2) * r^2 / 2 + ew_norm(Tp * Hm * m.X) * m.tau)
    A = Tp * Hm * m.U
    sv = svdvals(mid.(A))[end]; s = sv * 0.999; slo = 0.0
    for _ in 1:60
        B = transpose(A) * A - iv(s)^2 * Matrix{I64}(I, 4, 4)
        if IA.interval_cholesky_pd(Matrix{I64}(B)); slo = s; break; end
        s *= 0.98
    end
    pert = sup(ew_norm(Tp * Hm) * (ew_norm(m.H2) * r + ew_norm(m.X) * m.Z1))
    sD = slo - pert
    sD > 0 || return GraphResult(false, "(D): sigma_D not certified positive (whole ball)", RG, sig, sD, dsup, esup, time() - t0)
    dsup < RG || return GraphResult(false, "(G): the edge image is not inside R_G (whole ball)", RG, sig, sD, dsup, esup, time() - t0)
    GraphResult(true, "ok", RG, sig, sD, dsup, esup, time() - t0)
end

"""The output-weighted normal error tau_A = b0_A + q_A tau (EDGE_REPORT.md §4) for a linear output A (m x 36)."""
function edge_weighted_tau(m, A)
    AX = A * m.X; KA = AX * m.K; r = m.r
    t3 = ew_norm(AX * m.R3); t4 = ew_norm(AX * m.R4); a2 = ew_norm(AX * m.A2)
    cn = [ew_norm(hcat(real.(KA[:, a]), imag.(KA[:, a]))) for a in 1:size(KA, 2)]
    L5 = sum(cn[a] * m.w5[a] for a in eachindex(cn)); L3a = sum(cn[a] * m.w3[a] for a in eachindex(cn))
    b0 = t3 * r^3 / 6 + t4 * r^4 / 24 + L5 * r^5 / 120
    AW = AX * m.Y
    L3 = 2 * sqrt(iv(6.0)) * ew_norm(AW[:, 1:30]) + 72 * sqrt(iv(Float64(m.maxnu))) * ew_norm(AW[:, 31:31])
    c = ew_norm(AX * m.Cm); d = ew_norm(AX * m.Dm); bs = m.u * r + m.beta * r^2 / 2
    qA = c * r + a2 * r^2 / 2 + L3a * r^3 / 6 + (d + L3 * m.x^2 * bs) * m.tau + L3 * m.x^3 * m.tau^2 / 2
    b0 + qA * m.tau
end

"""The patch test for an edge-sphere T1 box (one centre, output-weighted tau_A): (ok, message, value)."""
function edge_patch_T1(m, tauA, lo, hi, g::Group, t::Seed, Mi)
    c, h = patch_box(m.r, lo, hi)
    Gg = gmat36(g.g)
    A = Mi * (lcorner(g.rows, g.cols) * Gg)
    off = Mi * (TWOPI_I .* iv.(Float64.(g.wind[1:4])) .- iv.(t.theta0))
    Hc = h2c(m.H2, c)
    Qc = m.Q0 .+ m.U * c .+ (Hc * c) ./ 2
    Dc = m.U .+ Hc
    a = A * Qc .+ off; B = A * Dc
    eps = nrm(A * m.H2) * (2h)^2 / 2 + tauA
    val = maximum(sup(sqrt(sum((a[i] + sum(B[i, j] * h * sg[j] for j in 1:4))^2 for i in 1:4))) for sg in SG16)
    tot = sup(iv(val) + eps)
    tot < t.r || return false, @sprintf("edge T1 patch: %.6g >= r_t", tot), tot
    ok, msg = patch_signs(m, Qc, Dc, c, h, g, t, Gg)
    ok || return false, msg, tot
    true, "ok (patch)", tot
end
