# Whole-ball C1 for a seed ball without subdivision (return Z, THEOREM.md; explorations/returns/Z_completion_hessian).
# An independent interval implementation of the theorem (IntervalArithmetic.jl, Float64 intervals): from the exact
# centre (side roots by a 6-dim Krawczyk test), the projected Hadamard equations W Phi along a fixed normal basis X
# (return Z's frozen dyadic basis) with the Gram left inverse W = (A^T A)^{-1} A^T, A = J X, give over the whole ellipsoid
# theta0 + Mth w, ||w|| <= r: a contraction tau (existence of the matched branch), both orientation signs, and
# ||h Q(w) - P_exact - U w|| <= beta r^2/2 + ||X|| tau.  Against the certificate's stored P, U:
# n_record = that + ||P_exact - P|| + r ||U_exact - U||.  Every acceptance is an interval inequality.

const WB_PAIRS = [(i, l) for i in 0:5 for l in i+1:5]                      # 15 row pairs (0-based)
const WB_SEEDS = [(1, 1), (1, 2), (2, 1), (2, 2)]
const WB_FREE = [(i, j) for i in 1:5 for j in 1:5 if !((i, j) in WB_SEEDS)]

wb_cexp(x::I64) = complex(cos(x), sin(x))
wb_sup(x::I64) = sup(x)
wb_abs(z::Complex{I64}) = sqrt(real(z)^2 + imag(z)^2)

"""Interval enclosure of the inverse of a square interval matrix G (preconditioned Neumann bound), or nothing."""
function wb_inv(G::Matrix{I64})
    n = size(G, 1)
    Y = inv(mid.(G))
    R = Matrix{I64}(I, n, n) - iv.(Y) * G
    rn = maximum(sup(sum(abs(R[i, j]) for j in 1:n)) for i in 1:n)
    rn < 1 || return nothing
    # G^{-1} = (I - R)^{-1} Y,  (I - R)^{-1} in I + R + R^2 [ -t, t ] entrywise with t = ||R||^2/(1-||R||) (inf-norm)
    t = rn^2 / (1 - rn)
    E = Matrix{I64}(I, n, n) + R + fill(interval(-t, t), n, n)
    E * iv.(Y)
end

"""Upper bound for ||A||_2: a float proposal lam, verified by an interval LDL^T of lam I - A A^T (positive definite)."""
function wb_spectral(A::Matrix{I64})
    B = size(A, 1) > size(A, 2) ? transpose(A) : A
    n = size(B, 1)
    n == 1 && return sup(sqrt(sum(B[1, j]^2 for j in 1:size(B, 2))))
    G = B * transpose(B)
    lam = opnorm(Float64.(mid.(B)))^2 * (1 + 1e-9) + 1e-30
    for _ in 1:8
        M = iv(lam) * Matrix{I64}(I, n, n) - G
        L = zeros(I64, n, n); d = I64[]; good = true
        for i in 1:n
            di = M[i, i] - sum((L[i, k]^2 * d[k] for k in 1:i-1); init=iv(0.0))
            if !(inf(di) > 0); good = false; break; end
            push!(d, di)
            for j in i+1:n
                L[j, i] = (M[j, i] - sum((L[j, k] * L[i, k] * d[k] for k in 1:i-1); init=iv(0.0))) / di
            end
        end
        good && return sup(sqrt(iv(lam)))
        lam = lam * 1.01 + 1e-25
    end
    # the Frobenius norm bounds the spectral norm: a valid (looser) fallback when the LDL^T test cannot verify
    f = sup(sqrt(sum(x^2 for x in A)))
    isfinite(f) || error("norm bound not finite for a $(size(A, 1)) x $(size(A, 2)) matrix")
    f
end

"""Horizontal basis vectors h(E_ab) for the listed interior positions (36 x m)."""
function wb_hbasis(inds)
    M = Matrix{I64}(undef, 36, length(inds))
    for (c, (a, b)) in enumerate(inds), i in 0:5, j in 0:5
        M[6i+j+1, c] = ivq((36 * (i == a && j == b) - 6 * (i == a) - 6 * (j == b) + 1) // 36)
    end
    M
end

const WB_BASIS_FILE = joinpath(@__DIR__, "..", "..", "seed_atlas", "cert", "wholeball_basis.json")

function wb_geometry()
    V = wb_hbasis(WB_SEEDS); X0 = wb_hbasis(WB_FREE)
    txt = read(WB_BASIS_FILE, String)
    hx = [parse(Float64, m.match) for m in eachmatch(r"-?0x[0-9a-fA-F.]+p[-+]?[0-9]+", txt)]   # T_hex, row-major
    length(hx) == 21 * 21 || error("whole ball: basis file has $(length(hx)) hex entries, expected 441")
    T = iv.(permutedims(reshape(hx, 21, 21)))
    wb_inv(T) === nothing && error("whole ball: frozen basis not certified invertible")
    V, X0 * T
end

"""The side Gram equations at the centre (return Z's form): F (6) and its Jacobian (6 x 6), as intervals."""
function wb_side(phi::Vector{I64}, th::Vector{I64})
    x = phi[1:3]; y = phi[4:6]
    f = [sum(wb_cexp(-x[j]) for j in 1:3) + 1 + wb_cexp(-th[1]) + wb_cexp(-th[2]),
         sum(wb_cexp(-y[j]) for j in 1:3) + 1 + wb_cexp(-th[3]) + wb_cexp(-th[4]),
         sum(wb_cexp(x[j] - y[j]) for j in 1:3) + 1 + wb_cexp(th[1] - th[3]) + wb_cexp(th[2] - th[4])]
    Jc = zeros(Complex{I64}, 3, 6)
    for j in 1:3
        Jc[1, j] = -im * wb_cexp(-x[j]); Jc[2, 3+j] = -im * wb_cexp(-y[j])
        Jc[3, j] = im * wb_cexp(x[j] - y[j]); Jc[3, 3+j] = -im * wb_cexp(x[j] - y[j])
    end
    vcat(real.(f), imag.(f)), vcat(real.(Jc), imag.(Jc))
end

"""Certified side root near a float guess: returns the 3 x 3 side matrix [1 1 1; e^{ix}; e^{iy}] (intervals) or nothing."""
const WB_NEWTON = I64 == Interval{Float64} ? 8 : 14                          # (the 256-bit copy: src/hp.jl)
const WB_SIDE_EPS = I64 == Interval{Float64} ? 2.0^-40 : big(2.0)^-200
function wb_certified_side(th::Vector{I64}, guess::Vector{Float64})
    p = copy(guess)
    for _ in 1:WB_NEWTON
        F, J = wb_side(iv.(p), th); p = p - mid.(J) \ mid.(F)
    end
    eps = WB_SIDE_EPS
    tube = [interval(v - eps, v + eps) for v in p]
    F0, J0 = wb_side(iv.(p), th)
    Y = iv.(inv(mid.(J0)))
    Ft, Jt = wb_side(tube, th)
    A = Matrix{I64}(I, 6, 6) - Y * Jt; b = Y * F0
    q = maximum(sup(sum(abs(A[i, j]) for j in 1:6)) for i in 1:6)
    bm = maximum(sup(abs(b[i])) for i in 1:6)
    (q < 1 && bm + q * eps < eps) || return nothing
    e = wb_cexp.(tube)
    [Complex{I64}(iv(1.0)) Complex{I64}(iv(1.0)) Complex{I64}(iv(1.0)); e[1] e[2] e[3]; e[4] e[5] e[6]]
end

function wb_det3(S)
    S[1,1]*(S[2,2]*S[3,3]-S[2,3]*S[3,2]) - S[1,2]*(S[2,1]*S[3,3]-S[2,3]*S[3,1]) + S[1,3]*(S[2,1]*S[3,2]-S[2,2]*S[3,1])
end
function wb_signature(S)
    perm = S[1,1]*(S[2,2]*S[3,3]+S[2,3]*S[3,2]) + S[1,2]*(S[2,1]*S[3,3]+S[2,3]*S[3,1]) + S[1,3]*(S[2,1]*S[3,2]+S[2,2]*S[3,1])
    perm * wb_det3(S)^2 / prod(S)
end

"""Rows (pair p, column k) of differences A[6i+k, :] - A[6l+k, :] (90 x ncols)."""
wb_diff(A) = reduce(vcat, [transpose(A[6i+k+1, :] - A[6l+k+1, :]) for (i, l) in WB_PAIRS for k in 0:5])

function wb_realjac(z::Vector{Complex{I64}})
    J = zeros(I64, 30, 36)
    for (p, (i, l)) in enumerate(WB_PAIRS), k in 0:5
        q = im * z[6(p-1)+k+1]
        J[p, 6i+k+1] = real(q); J[p, 6l+k+1] = -real(q)
        J[p+15, 6i+k+1] = imag(q); J[p+15, 6l+k+1] = -imag(q)
    end
    J
end

"""Second derivative of Phi along the difference columns: 30 x (na nb), column (i, j) = -sum_k z a_i b_j."""
function wb_d2(z, a, b)
    na, nb = size(a, 2), size(b, 2)
    out = zeros(I64, 30, na * nb)
    for p in 1:15, i in 1:na, j in 1:nb
        v = -sum(z[6(p-1)+k] * a[6(p-1)+k, i] * b[6(p-1)+k, j] for k in 1:6)
        out[p, (i-1)*nb+j] = real(v); out[p+15, (i-1)*nb+j] = imag(v)
    end
    out
end

"""The predictor residual constants (b0, b1, b2, a2, L3a) of THEOREM.md §3 (Z's predictor_residual)."""
function wb_residual(W, z, s, t, dx, r::I64)
    kr = zeros(I64, 21, 90); ki = zeros(I64, 21, 90)
    for i in 1:21, a in 1:90
        p = (a - 1) ÷ 6 + 1
        q = complex(W[i, p], -W[i, 15+p]) * z[a]
        kr[i, a] = real(q); ki[i, a] = imag(q)
    end
    triples = [(i, j, k) for i in 1:4 for j in 1:4 for k in 1:4]
    quads = [(i, j, k, l) for i in 1:4 for j in 1:4 for k in 1:4 for l in 1:4]
    p3r = zeros(I64, 90, 64); p3i = zeros(I64, 90, 64); p4r = zeros(I64, 90, 256); p4i = zeros(I64, 90, 256)
    a2r = zeros(I64, 90, 16 * 21); a2i = zeros(I64, 90, 16 * 21)
    L5 = iv(0.0); L3a = iv(0.0)
    for a in 1:90
        sa = s[a, :]; ta = [t[a, 4(i-1)+j] for i in 1:4, j in 1:4]
        for (c, (i, j, k)) in enumerate(triples)
            p3r[a, c] = -(ta[i, j] * sa[k] + ta[i, k] * sa[j] + ta[j, k] * sa[i]); p3i[a, c] = -sa[i] * sa[j] * sa[k]
        end
        for (c, (i, j, k, l)) in enumerate(quads)
            p4r[a, c] = sa[i] * sa[j] * sa[k] * sa[l] - ta[i, j] * ta[k, l] - ta[i, k] * ta[j, l] - ta[i, l] * ta[j, k]
            p4i[a, c] = -(ta[i, j] * sa[k] * sa[l] + ta[i, k] * sa[j] * sa[l] + ta[i, l] * sa[j] * sa[k] +
                          ta[j, k] * sa[i] * sa[l] + ta[j, l] * sa[i] * sa[k] + ta[k, l] * sa[i] * sa[j])
        end
        for i in 1:4, j in 1:4, k in 1:21
            c = ((i - 1) * 4 + (j - 1)) * 21 + k
            a2r[a, c] = -ta[i, j] * dx[a, k]; a2i[a, c] = -sa[i] * sa[j] * dx[a, k]
        end
        sn = sqrt(sum(v^2 for v in sa)); tn = iv(wb_spectral(ta))
        ca = sum(kr[i, a]^2 for i in 1:21); cb = sum(kr[i, a] * ki[i, a] for i in 1:21); cc = sum(ki[i, a]^2 for i in 1:21)
        cn = sqrt((ca + cc + sqrt((ca - cc)^2 + 4 * cb^2)) / 2)
        an = sn + r * tn
        L5 += cn * (an^5 + 10 * tn * an^3 + 15 * tn^2 * an)
        dxn = sqrt(sum(dx[a, k]^2 for k in 1:21))
        L3a += cn * dxn * (an^3 + 3 * tn * an)
    end
    t3 = iv(wb_spectral(kr * p3r - ki * p3i)); t4 = iv(wb_spectral(kr * p4r - ki * p4i))
    b0 = t3 * r^3 / 6 + t4 * r^4 / 24 + L5 * r^5 / 120
    b1 = t3 * r^2 / 2 + t4 * r^3 / 6 + L5 * r^4 / 24
    b2 = t3 * r + t4 * r^2 / 2 + L5 * r^3 / 6
    a2 = iv(wb_spectral(kr * a2r - ki * a2i))
    b0, b1, b2, a2, L3a
end

"""Orientation sign of one side over the ball (Z's orientation): returns (ok, sign)."""
function wb_orientation(H, U, H2, X, r::I64, tau::I64, which::Symbol)
    inds = which == :h ? [(i, 3+j) for i in 0:2 for j in 0:2] : [(3+j, i) for i in 0:2 for j in 0:2]
    P3 = [ivq((i == j ? 1 : 0) // 1 - 1 // 3) for i in 1:3, j in 1:3]
    A = zeros(I64, 9, 36)
    for a in 1:9, (b, (i, j)) in enumerate(inds)
        A[a, 6i+j+1] = P3[(a-1)÷3+1, (b-1)÷3+1] * P3[(a-1)%3+1, (b-1)%3+1]
    end
    ent = [H[i+1, j+1] for (i, j) in inds]
    f = iv(0.0)
    # gradient of Im Psi with respect to the 9 phases: d/dq_a Im(Psi) = Re(i * (dPsi/dlog entry_a) * ...) via the
    # signature's monomials: Psi = sum_nu c_nu prod e^{i nu.q}; d Im Psi / d q_a = Re(sum c_nu nu_a prod)
    grad = zeros(I64, 9)
    for (c, nu) in WB_SIG_TERMS
        zz = Complex{I64}(iv(1.0))
        for (a, k) in enumerate(nu)
            k != 0 && (zz *= ent[a]^k)
        end
        f += c * imag(zz)
        for (a, k) in enumerate(nu)
            grad[a] += c * k * real(zz)
        end
    end
    g = reshape(grad, 1, 9)
    AU = A * U; AH = A * H2; AX = A * X
    epsv = iv(wb_spectral(AU)) * r + iv(wb_spectral(AH)) * r^2 / 2 + iv(wb_spectral(AX)) * tau
    gh = g * AH
    gh4 = [gh[1, 4(i-1)+j] for i in 1:4, j in 1:4]
    variation = iv(wb_spectral(g * AU)) * r + iv(wb_spectral(gh4)) * r^2 / 2 + iv(wb_spectral(g * AX)) * tau + 36 * epsv^2
    margin = abs(f) - variation
    inf(margin) > 0, (inf(f) > 0 ? 1 : -1)
end

"""The 24 antisymmetric signature monomials (c, nu), nu over the 9 entries (Z's signature_terms, recomputed)."""
function wb_signature_terms()
    perms = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
    sgn(p) = (-1)^count(p[i] > p[j] for i in 1:3 for j in i+1:3)
    coef = Dict{Vector{Int},Int}()
    for a in perms, b in perms, d in perms
        nu = fill(-1, 9)
        for p in (a, b, d), i in 1:3
            nu[3(i-1)+p[i]] += 1
        end
        coef[nu] = get(coef, nu, 0) + sgn(b) * sgn(d)
    end
    filter!(kv -> kv[2] != 0, coef)
    @assert length(coef) == 55
    seen = Set{Vector{Int}}(); terms = Tuple{Int,Vector{Int}}[]
    for nu in sort(collect(union(keys(coef), [-k for k in keys(coef)])))
        nu in seen && continue
        push!(seen, nu, -nu)
        z = get(coef, nu, 0) - get(coef, -nu, 0)
        if z != 0
            @assert abs(z) == 1
            push!(terms, (z, nu))
        end
    end
    @assert length(terms) == 24
    terms
end
const WB_SIG_TERMS = wb_signature_terms()

struct WBResult
    ok::Bool
    msg::String
    n_record::Float64
    seconds::Float64
end

"""Whole-ball C1 for a seed ball (horizontal gauge, as stored), or a failure message (then the box method decides)."""
wholeball_c1(s::Seed) = wb_compute(s)[1]

"""The whole-ball computation: (WBResult, model), the model being nothing on failure or a NamedTuple with the
centre phases on the stored branch (horizontal) Q0, the frame U, H2, X, tau and the dephased-lift gap (return ZT
section 2: below pi, the continuous lift is the stored windings' lift everywhere on the ball)."""
function wb_compute(s::Seed)
    t0 = time()
    try
        V, X = wb_geometry()
        th = collect(iv.(s.theta0)); r = iv(s.r)
        Pgf = pg(s)
        guessh = [Pgf[6*1+4], Pgf[6*1+5], Pgf[6*1+6], Pgf[6*2+4], Pgf[6*2+5], Pgf[6*2+6]]
        guessv = [Pgf[6*3+2], Pgf[6*4+2], Pgf[6*5+2], Pgf[6*3+3], Pgf[6*4+3], Pgf[6*5+3]]
        B = wb_certified_side(th, guessh); Vs = wb_certified_side(th[[1, 3, 2, 4]], guessv)
        (B === nothing || Vs === nothing) && return WBResult(false, "centre sides not certified", Inf, time() - t0), nothing
        C = transpose(Vs)
        E = [Complex{I64}(iv(1.0)) Complex{I64}(iv(1.0)) Complex{I64}(iv(1.0));
             Complex{I64}(iv(1.0)) wb_cexp(th[1]) wb_cexp(th[2]); Complex{I64}(iv(1.0)) wb_cexp(th[3]) wb_cexp(th[4])]
        Bstar = conj.(transpose(B)); Bi = wb_inv_c(Bstar)
        Bi === nothing && return WBResult(false, "B* not certified invertible", Inf, time() - t0), nothing
        D = -(C * conj.(transpose(E)) * Bi)
        H = [E B; C D]
        sh = imag(wb_signature(B)); sv = imag(wb_signature(Vs))
        (inf(s.o * sh) > 0 && inf(-s.o * sv) > 0) || return WBResult(false, "centre orientation not certified", Inf, time() - t0), nothing
        z = [H[i+1, k+1] * conj(H[l+1, k+1]) for (i, l) in WB_PAIRS for k in 0:5]
        J = wb_realjac(z)
        A = J * X
        Gi = wb_inv(transpose(A) * A)
        Gi === nothing && return WBResult(false, "Gram matrix not certified invertible", Inf, time() - t0), nothing
        W = Gi * transpose(A)
        M = iv.(s.Mth)
        Ue = (V - X * W * J * V) * M
        sd = wb_diff(Ue); dx = wb_diff(X)
        h2 = -(W * wb_d2(z, sd, sd)); H2 = X * h2; td = wb_diff(H2)
        Cm = W * wb_d2(z, sd, dx); Dm = W * wb_d2(z, dx, dx)
        u = iv(wb_spectral(Ue)); x = iv(wb_spectral(X)); beta = iv(wb_spectral(H2))
        c = iv(wb_spectral(Cm)); d = iv(wb_spectral(Dm)); kn = iv(wb_spectral(W))
        L3 = 2 * sqrt(iv(6.0)) * kn
        b0, b1, b2, a2, L3a = wb_residual(W, z, sd, td, dx, r)
        base = u * r + beta * r^2 / 2
        qbase = c * r + a2 * r^2 / 2 + L3a * r^3 / 6
        qfun(tau) = qbase + (d + L3 * x^2 * base) * tau + L3 * x^3 * tau^2 / 2
        tau = iv(sup(b0) * 1.1); valid = false
        for _ in 1:100
            q = qfun(tau)
            sup(q) < 1 || break
            if sup(b0 + q * tau) < inf(tau); valid = true; break; end
            tau = iv(sup(b0 / (1 - q)) * 1.001)
        end
        valid || return WBResult(false, "whole-ball contraction not certified", Inf, time() - t0), nothing
        okh, sgh = wb_orientation(H, Ue, H2, X, r, tau, :h); okv, sgv = wb_orientation(H, Ue, H2, X, r, tau, :v)
        (okh && okv && sgh == s.o && sgv == -s.o) || return WBResult(false, "orientation over the ball not certified", Inf, time() - t0), nothing
        ndirect = beta * r^2 / 2 + x * tau
        # the centre phases on the stored branch: lift near the stored centre's dephased form, then h
        ref = Pgf
        pgx = [(w = H[i+1, j+1] * wb_cexp(-iv(ref[6i+j+1])); iv(ref[6i+j+1]) + atan(imag(w), real(w))) for i in 0:5 for j in 0:5]
        pex = vec(transpose(hproj(transpose(reshape(pgx, 6, 6)))))
        ep = sqrt(sum((pex[e] - s.P[e])^2 for e in 1:36))
        eu = iv(wb_spectral(Ue - iv.(s.U)))
        nrec = ndirect + ep + r * eu
        isfinite(sup(nrec)) || return WBResult(false, "whole ball: non-finite bound", Inf, time() - t0), nothing
        # the dephased lift: |q_g(w) - (P_g + U_g w)| < pi on the ball, so the stored windings refer to this branch
        Gd = zeros(I64, 36, 36)
        for i in 0:5, j in 0:5
            k = 6i + j + 1
            Gd[k, k] += 1; Gd[k, 6i+1] -= 1; Gd[k, j+1] -= 1; Gd[k, 1] += 1
        end
        Pgv = s.gauge == :hor ? Gd * iv.(s.P) : iv.(s.P)            # exact: the stored data's dephased form
        Ugm = s.gauge == :hor ? Gd * iv.(s.U) : iv.(s.U)
        gap = sqrt(sum((pgx[e] - Pgv[e])^2 for e in 1:36)) + r * iv(wb_spectral(Gd * Ue - Ugm)) +
              iv(wb_spectral(Gd * H2)) * r^2 / 2 + iv(wb_spectral(Gd * X)) * tau
        # Z1, Z2 (THEOREM.md section 4, (9)) for the local and weighted bounds of caps
        L2 = 2 * sqrt(iv(3.0)) * kn
        q = qfun(tau); dlt = base + x * tau
        m1 = c + a2 * r + L3a * r^2 / 2 + L3 * x^2 * (u + beta * r) * tau
        m2 = L3 * x * (u + beta * r)^2 + L2 * x * beta; mzz = d + L3 * x^2 * dlt
        Z1 = (b1 + m1 * tau) / (1 - q); Z2 = (b2 + m2 * tau + 2 * m1 * Z1 + mzz * Z1^2) / (1 - q)
        model = sup(gap) < inf(iv(π)) ? (Q0 = pex, Qbase = pgx, U = Ue, H2 = H2, X = X, tau = tau, r = r, gap = sup(gap),
                                         W = W, zz = z, sd = sd, td = td, dx = dx, q = q, Z1 = Z1, Z2 = Z2,
                                         u = u, x = x, beta = beta, kn = kn) : nothing
        WBResult(true, "ok", sup(nrec), time() - t0), model
    catch err
        WBResult(false, "whole ball: " * sprint(showerror, err)[1:min(end, 200)], Inf, time() - t0), nothing
    end
end

"""Inverse of a 3 x 3 complex interval matrix by the adjugate (det certified nonzero), or nothing."""
function wb_inv_c(S)
    dt = wb_det3(S)
    (inf(wb_abs(dt)) > 0) || return nothing
    cof(i, j) = (-1)^(i + j) * wb_det3_minor(S, i, j)
    [cof(j, i) / dt for i in 1:3, j in 1:3]
end
function wb_det3_minor(S, i, j)
    r = [k for k in 1:3 if k != i]; c = [k for k in 1:3 if k != j]
    S[r[1], c[1]] * S[r[2], c[2]] - S[r[1], c[2]] * S[r[2], c[1]]
end
