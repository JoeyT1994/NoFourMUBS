# The normal component of a record's Hadamards over an eta-box (the T1' refinement; coordinator's update of 24 Oct,
# FORMAT.md §6).  This is my own design: a Krawczyk test in the 2-norm, with the Jacobian's variation bounded by the
# record lemma's second-derivative constant, followed by contraction steps.
#
# Record s: H = e^{iP}; T the exact horizontal frame (36 x 4); N = horizontal minus span T (21-dimensional), with the
# exact orthogonal projector Pi = h - T G^{-1} T^T.  Every Hadamard of the record is e^{i(P + delta)}, delta = T eta + nu,
# nu in N, ||nu|| <= n (Lemma 3.1).  Phi(delta) in R^30 is the off-diagonal (i < j) Re/Im of
# (e^{i(P + delta)})(e^{i(P + delta)})^*, and Phi = 0 exactly at Hadamards.
#
# Coordinates on N.  N_b is a float 36 x 21 matrix (an approximate orthonormal basis of N) and M = Pi N_b, enclosed in
# intervals from the exact Pi.  The columns of the exact M lie in N; if lambda_min(M^T M) >= lam > 0 (Gershgorin on
# the interval matrix), x -> M x is a bijection R^21 -> N with ||x|| <= ||M x|| / sqrt(lam).  So every Hadamard of
# the record has nu = M x with ||x|| <= n_x = n / sqrt(lam).
#
# The second derivative.  Phi_ij(delta) = sum_c e^{i(P_ic - P_jc + delta_ic - delta_jc)}, so
# |Phi_ij''[w, v]| <= sum_c |w_ic - w_jc| |v_ic - v_jc|.  With a_ij = ||w_i - w_j||^2 <= 2 ||w||^2 (rows w_i) and, for
# v horizontal, sum_{i<j} ||v_i - v_j||^2 = 6 ||v||^2 (Lagrange's identity; the rows of v sum to 0):
# ||Phi''[w, v]||^2 <= sum_{i<j} a_ij(w) a_ij(v) <= 2 ||w||^2 6 ||v||^2, i.e. ||Phi''[w, v]|| <= L ||w|| ||v||,
# L = 2 sqrt 3, for any w and horizontal v.  Hence ||(J(d1) - J(d2)) v|| <= L ||d1 - d2|| ||v|| for v horizontal.
#
# The test on a box eta = zc + u (|u_j| <= h_j).  F(u, x) = Y Phi(T(zc + u) + M x) with Y a float 21 x 30 matrix
# (a left inverse of J M at the centre), x_p(u) a float second-order predictor (Newton in model space), and for each u
# the ball X(u) = B(x_p(u), rho_X), rho_X >= n_x + sup ||x_p||, which therefore contains every record Hadamard's x.
# For x in X(u), K(x) = x - F(u, x) satisfies (integral mean value along the segment, which stays in X(u))
#   ||K(x) - x_p(u)|| <= beta + alpha(rho_X) rho_X,
#   beta  >= sup_u ||Y Phi(delta_c(u))||,              delta_c(u) = T(zc + u) + M x_p(u),
#   alpha(rho) = ||I - Y J(delta_c(0)) M|| + ||Y|| L ||M|| (D + ||M|| rho),    D >= sup_u ||delta_c(u) - delta_c(0)||,
# since ||I - Y J(d) M|| <= ||I - Y J(delta_c(0)) M|| + ||Y|| L ||d - delta_c(0)|| ||M|| and
# ||d - delta_c(0)|| <= D + ||M|| rho on X(u).  If beta + alpha(rho_X) rho_X < rho_X, K maps the ball X(u) into itself
# (a fixed point exists, by Brouwer) and ||I - Y Jbar M|| < 1 for every mean-value matrix (the zero is unique in X(u)).
# Every record Hadamard with eta in the box is a zero of F in X(u), so it is that zero.  The zero lies in
# K(X_k) for every ball X_k = B(x_p, rho_k) that contains it, so rho_{k+1} = beta + alpha(rho_k) rho_k is again a valid
# radius: a few steps bring rho down to about beta.  Result: nu = M (x_p(u) + e), ||e|| <= rho.

const PAIRS15 = [(i, j) for i in 1:6 for j in i+1:6]
const L_PHI = 2 * sqrt(iv(3.0))

struct NormalCtx
    Mi::Matrix{I64}          # 36 x 21, encloses the exact Pi N_b
    Mf::Matrix{Float64}      # its midpoint (predictors only)
    Mnorm::Float64           # >= ||M||_2
    Mrow::Vector{Float64}    # >= ||M_e,:||_2 per entry e
    nx::Float64              # >= n / sqrt(lambda_min(M^T M))
end

"""Record-level data for the normal tube, or nothing if M cannot be certified to have full rank."""
function normal_ctx(T36::Matrix{Int64}, n::Float64)
    Ti = IA.frame_interval(T36)
    Ginv = inv(IA.gram_exact(T36))
    Gi = [IA.ivq(Ginv[a, b]) for a in 1:4, b in 1:4]
    Pi = IA.HMAT - Ti * Gi * transpose(Ti)
    E = eigen(Symmetric(mid.(Pi)))
    idx = findall(>(0.5), E.values)
    length(idx) == 21 || return nothing
    Nb = E.vectors[:, idx]
    Mi = Pi * iv.(Nb)
    MtM = transpose(Mi) * Mi
    lam = minimum(inf(MtM[i, i]) - sum(mag(MtM[i, j]) for j in 1:21 if j != i) for i in 1:21)
    lam > 0 || return nothing
    nx = sup(iv(n) / sqrt(iv(lam)))
    Mrow = [sup(sqrt(sum(Mi[e, j]^2 for j in 1:21))) for e in 1:36]
    NormalCtx(Mi, mid.(Mi), IA.opnorm_upper(Mi), Mrow, nx)
end

# ---------------------------------------------------------------- Phi and J (row 2p-1: Re, row 2p: Im of pair p)

function Phi_f(Q::AbstractVector{T}) where {T<:AbstractFloat}
    out = zeros(T, 30)
    for (p, (i, j)) in enumerate(PAIRS15)
        s = sum(cis(Q[6(i-1)+c] - Q[6(j-1)+c]) for c in 1:6)
        out[2p-1] = real(s); out[2p] = imag(s)
    end
    out
end

"""dPhi/ddelta (30 x 36) at the phases Q (any number type with cos and sin)."""
function J_phases(Q::AbstractVector{T}) where {T}
    J = fill(zero(T), 30, 36)
    for (p, (i, j)) in enumerate(PAIRS15), c in 1:6
        d = Q[6(i-1)+c] - Q[6(j-1)+c]
        wr = cos(d); wi = sin(d)
        J[2p-1, 6(i-1)+c] = -wi; J[2p-1, 6(j-1)+c] = wi
        J[2p, 6(i-1)+c] = wr;    J[2p, 6(j-1)+c] = -wr
    end
    J
end

"""Phi of phase models Q (36 real models): 30 real models."""
function Phi_models(Q::Vector{TM{T}}, D::Dom) where {T}
    out = Vector{TM{T}}(undef, 30)
    for (p, (i, j)) in enumerate(PAIRS15)
        s = nothing
        for c in 1:6
            z = exp_i(Q[6(i-1)+c] - Q[6(j-1)+c], D)
            s = s === nothing ? z : s + z
        end
        out[2p-1] = re(s); out[2p] = imp(s)
    end
    out
end

"""delta models T (zc + u) + M x(u) (36 models)."""
function delta_models(Ti, M, zc, x::Vector{TM{T}}) where {T}
    map(1:36) do e
        lin = TM{T}(sum(Ti[e, k] * zc[k] for k in 1:4), ntuple(k -> Ti[e, k], 4), ntuple(_ -> zero(T), 10), 0.0)
        lin + lincomb(view(M, e, :), x)
    end
end

# ---------------------------------------------------------------- third-order bound for beta
#
# beta is the size of Y Phi along the predictor, a genuinely third-order quantity: the predictor kills orders 0-2.
# Second-order models push each exponential's cubic terms into its own remainder, so they cannot cancel in the sums of
# Phi.  Here each exponential of a quadratic phase y = c + l(u) + q(u) is expanded to third order with exact
# (interval) coefficients:  e^{iy} = e^{ic} [1 + i l + (i q - l^2/2) + (-l q - i l^3/6)] + e^{ic} R,
#   |R| <= L2^2/2 + L1^2 L2/2 + L1 L2^2/2 + L2^3/6 + (L1 + L2)^4/24,
# from e^{is} = 1 + is - s^2/2 - is^3/6 + R4, |R4| <= s^4/24 (s = l + q real), the dropped terms being
# -q^2/2 - i l^2 q/2 - i l q^2/2 - i q^3/6.  Polynomials of degree <= 3 in u are dense vectors over 35 monomials.

const MONO3 = [(a, b, c, d) for a in 0:3 for b in 0:3 for c in 0:3 for d in 0:3 if a + b + c + d <= 3]
const MONO3_IDX = Dict(m => i for (i, m) in enumerate(MONO3))
const MONO3_DEG = [sum(m) for m in MONO3]
const MONO3_MUL = [(i, j, MONO3_IDX[MONO3[i] .+ MONO3[j]]) for i in eachindex(MONO3) for j in eachindex(MONO3)
                   if MONO3_DEG[i] + MONO3_DEG[j] <= 3]
e4(j) = ntuple(k -> k == j ? 1 : 0, 4)

function mul3(a::Vector{T}, b::Vector{S}) where {T,S}
    out = fill(zero(T) * zero(S), length(MONO3))
    for (i, j, k) in MONO3_MUL
        out[k] += a[i] * b[j]
    end
    out
end

"""Linear and quadratic parts of a real model as degree-3 polynomial vectors (interval coefficients)."""
function lin_quad3(t::TM{I64})
    l = fill(iv(0.0), length(MONO3)); q = fill(iv(0.0), length(MONO3))
    for j in 1:4
        l[MONO3_IDX[e4(j)]] = t.g[j]
    end
    for (m, (j, k)) in enumerate(QPAIRS)
        q[MONO3_IDX[e4(j) .+ e4(k)]] = t.q[m]
    end
    l, q
end

"""Upper bound of sup_u |p(u)| for a degree-3 polynomial vector (real or complex coefficients)."""
function poly3_bound(p, hI::NTuple{4,I64})
    s = iv(0.0)
    for (i, m) in enumerate(MONO3)
        hm = hI[1]^m[1] * hI[2]^m[2] * hI[3]^m[3] * hI[4]^m[4]
        s += iv(absup(p[i])) * hm
    end
    sup(s)
end

"""beta >= sup_u ||Y Phi(Q(u))|| for phase models Q without remainder (third order, see above)."""
function beta3(Q::Vector{TM{I64}}, Y::Matrix{Float64}, D::Dom)
    nm = length(MONO3)
    half = iv(0.5); sixth = iv(1.0) / iv(6.0)
    Phi = Vector{Vector{I64}}(undef, 30); rem = zeros(30)
    for (p, (i, j)) in enumerate(PAIRS15)
        acc = fill(Complex(iv(0.0), iv(0.0)), nm); racc = iv(0.0)
        for c in 1:6
            t = Q[6(i-1)+c] - Q[6(j-1)+c]
            t.r == 0.0 || error("beta3 needs models without remainder")
            l, q = lin_quad3(t)
            l2 = mul3(l, l); lq = mul3(l, q); l3 = mul3(l2, l)
            E = Complex(cos(t.c), sin(t.c))
            for k in 1:nm
                re_ = -half * l2[k] - lq[k]                       # real part of the bracket (plus 1 at k = 1)
                im_ = l[k] + q[k] - sixth * l3[k]                 # imaginary part
                k == 1 && (re_ += iv(1.0))
                acc[k] += E * Complex(re_, im_)
            end
            _, L1, L2 = polybounds(t, D)
            a = iv(L1); b = iv(L2)
            racc += (b^2 / 2 + a^2 * b / 2 + a * b^2 / 2 + b^3 / 6 + (a + b)^4 / 24) * iv(absup(E))
        end
        Phi[2p-1] = real.(acc); Phi[2p] = imag.(acc); rem[2p-1] = rem[2p] = sup(racc)
    end
    out = iv(0.0)
    for k in 1:21
        pk = fill(iv(0.0), nm); rk = iv(0.0)
        for l in 1:30
            y = iv(Y[k, l])
            pk .+= y .* Phi[l]
            rk += iv(abs(Y[k, l])) * iv(rem[l])
        end
        out += (iv(poly3_bound(pk, D.hI)) + rk)^2
    end
    sup(sqrt(out))
end

struct NormalTube
    ok::Bool
    why::String
    x::Vector{TM{I64}}       # predictor x_p(u) (thin interval models, r = 0)
    rho::Float64             # ||x - x_p(u)|| <= rho for every record Hadamard with eta in the box
    rhoX::Float64            # the inclusion radius
    alpha::Float64           # alpha(rho_X)
    beta::Float64
end
TubeFail(why) = NormalTube(false, why, TM{I64}[], Inf, NaN, NaN, NaN)

"""The normal tube of record (P, T) over the eta-box {zc + u : |u_j| <= h_j}."""
function normal_tube(P::Matrix{Float64}, Ti::Matrix{I64}, nc::NormalCtx, zc::NTuple{4,I64}, h::NTuple{4,Float64})
    D = Dom(h)
    Pv = [P[a, b] for a in 1:6 for b in 1:6]
    Tf = mid.(Ti); zcm = [mid(zc[k]) for k in 1:4]
    # float centre: Gauss-Newton on Phi(T zcm + M x) = 0
    x = zeros(21)
    for _ in 1:30
        Q = Pv .+ Tf * zcm .+ nc.Mf * x
        F = Phi_f(Q)
        maximum(abs, F) < 1e-13 && break
        x .-= pinv(J_phases(Q) * nc.Mf) * F
    end
    Qc = Pv .+ Tf * zcm .+ nc.Mf * x
    maximum(abs, Phi_f(Qc)) < 1e-10 || return TubeFail("no float Hadamard point at the box centre")
    Y = pinv(J_phases(Qc) * nc.Mf)
    all(isfinite, Y) || return TubeFail("singular J M at the centre")
    # float predictor: Newton in the space of truncated models
    zf = ntuple(k -> zcm[k], 4)
    xf = [tmconst(x[j]) for j in 1:21]
    for _ in 1:3
        Qm = [addc(d, Pv[e]) for (e, d) in enumerate(delta_models(Tf, nc.Mf, zf, xf))]
        F = Phi_models(Qm, D)
        xf = [xf[j] - lincomb(view(Y, j, :), F) for j in 1:21]
    end
    xp = map(toiv, xf)
    # rigorous: beta, D, Delta_c, alpha
    dl = delta_models(Ti, nc.Mi, zc, xp)
    Qm = [addc(d, iv(Pv[e])) for (e, d) in enumerate(dl)]
    F = Phi_models(Qm, D)
    beta = min(vecnorm_sup([lincomb(view(Y, j, :), F) for j in 1:21], D), beta3(Qm, Y, D))
    Dv = vecnorm_sup([TM{I64}(iv(0.0), d.g, d.q, d.r) for d in dl], D)
    Jc = J_phases([iv(Pv[e]) + dl[e].c for e in 1:36])
    Delta = [iv(i == k ? 1.0 : 0.0) for i in 1:21, k in 1:21] - iv.(Y) * (Jc * nc.Mi)
    dnorm = sup(sqrt(sum(x^2 for x in Delta)))
    ynorm = IA.opnorm_upper(iv.(Y))
    xsup = vecnorm_sup(xp, D)
    rhoX = sup(iv(nc.nx) + iv(xsup)) * (1 + 1e-12)
    alpha(rho) = sup(iv(dnorm) + iv(ynorm) * L_PHI * iv(nc.Mnorm) * (iv(Dv) + iv(nc.Mnorm) * iv(rho)))
    aX = alpha(rhoX)
    rho1 = sup(iv(beta) + iv(aX) * iv(rhoX))
    rho1 < rhoX || return NormalTube(false, @sprintf("Krawczyk: beta + alpha rho_X = %.3g >= rho_X = %.3g", rho1, rhoX),
                                     TM{I64}[], Inf, rhoX, aX, beta)
    rho = rho1
    for _ in 1:12
        r2 = sup(iv(beta) + iv(alpha(rho)) * iv(rho))
        r2 < rho * (1 - 1e-3) || break
        rho = r2
    end
    NormalTube(true, "ok", xp, rho, rhoX, aX, beta)
end

"""Phase models of the record's Hadamards over the box: P + T(zc + u) + M x_p(u), entry e with remainder
||M_e,:|| rho (since nu - M x_p = M e, ||e|| <= rho)."""
function tube_phase_models(P::Matrix{Float64}, Ti::Matrix{I64}, nc::NormalCtx, zc, tb::NormalTube)
    dl = delta_models(Ti, nc.Mi, zc, tb.x)
    [withrem(addc(dl[6(a-1)+b], iv(P[a, b])), sup(iv(nc.Mrow[6(a-1)+b]) * iv(tb.rho))) for a in 1:6 for b in 1:6]
end
