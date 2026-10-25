# Edge balls (SPEC §10): the four-dimensional chart through F6 of return U, as an atlas ball.
#
# Parameters p = (u1, u2, u3, y) = Mth w, ||w|| <= r.  For each side, seven unknowns x = (t, varphi_1..6) solve the
# augmented system (return U, eq. 20)
#     gamma(phi0 + varphi) = Gamma(theta),   S(phi0 + varphi)/24 + sgn y/48 = 0,   theta = theta0 + (u1, u2, u3, t),
# with gamma = (Re s, Im s, Re t, Im t, Re r, Im r), s = sum x_j, t = sum y_j, r = sum conj(x_j) y_j over the side's rows
# 1, 2 (x_j = e^{i phi_j}, y_j = e^{i phi_{3+j}}), S = Im Psi of the side.  Horizontal side: Gamma = the entries (1,0),
# (2,0), (2,1) of G_h = 6I - E E*, sgn = +1.  Vertical side V = C^T: the same system for E^T at (u1, u3, u2, -y); written
# in the original theta this is Gamma = the same entries of G_v = 6I - E^T conj(E), sgn = -1, and its own fourth phase
# t'.  theta0 = (1,2,2,4) pi/3 and phi0 = (3,4,5,0,2,4) pi/3 are used exactly (interval enclosures of k pi/3).
#
# C1e on a w-box (exact float centre wc, half-widths h_j; second-order models in u = w - wc); the first level is the
# k0 x k1 x k2 x k3 partition of [-r, r]^4 (FORMAT.md §8), with dyadic half-widths h_j >= r/k_j:
#   * each side: a parametric Krawczyk test (componentwise, as for the seed sides) with a second-order predictor from
#     Newton in model space; this certifies a unique solution in x_pred(u) + [-rho, rho]^7 and encloses it within
#     `need` = b + A rho;
#   * t' = t: dR/dtheta4 > 0 on theta1..3 = theta0 + (u1, u2, u3), theta4 over the segment between the two enclosed
#     fourth phases (both solutions satisfy R(theta) = y^2, since R o gamma = 4 S^2; R is then strictly monotone in
#     theta4), and g > 0 there (g = det G_h = |det B|^2);
#   * D = -C E* (B*)^-1 by residual correction, arg D near P, and the residual bound against P + U w, as in C1.
# Every leaf box keeps its two tubes (predictors and uniqueness radii) for the T3 transfers into the ball.

const TH0K = (1, 2, 2, 4)
const PH0K = (3, 4, 5, 0, 2, 4)
pi3(k::Integer) = iv(Float64(k)) * PI_I / iv(3.0)


# number conversion for the generic (float / interval) model code
cnum(::Type{T}, q) where {T<:AbstractFloat} = T(q)
cnum(::Type{I64}, q::Rational) = iv(Float64(numerator(q))) / iv(Float64(denominator(q)))
cnum(::Type{I64}, q::Integer) = iv(Float64(q))
th0c(::Type{T}) where {T<:AbstractFloat} = [k * T(π) / 3 for k in TH0K]
th0c(::Type{I64}) = [pi3(k) for k in TH0K]
ph0c(::Type{T}) where {T<:AbstractFloat} = [k * T(π) / 3 for k in PH0K]
ph0c(::Type{I64}) = [pi3(k) for k in PH0K]

"""i z for a complex model."""
itimes(t::TM{Complex{S}}) where {S} = TM{Complex{S}}(Complex(-imag(t.c), real(t.c)), map(z -> Complex(-imag(z), real(z)), t.g),
                                                    map(z -> Complex(-imag(z), real(z)), t.q), t.r)

"""Psi of the side with phases phi (6 real models) and its six partial derivatives dPsi/dphi_k (complex models).
Psi = perm det^2 e^{-i sum phi}, perm = sum_{a != b} z_ab, det = sum sgn z_ab, z_ab = e^{i(phi_a + phi_{3+b})};
dPsi_k = i e^{-i sum}(P_k det^2 + 2 perm det D_k) - i Psi, where P_k, D_k sum (signed) the z_ab that contain phi_k."""
function psi_grad(phi::Vector{TM{T}}, D::Dom) where {T}
    terms = [(s[2], s[3], sg, exp_i(phi[s[2]] + phi[3+s[3]], D)) for (s, sg) in zip(PERMS3, SIGN3)]
    perm = reduce(+, (z for (_, _, _, z) in terms))
    dt = reduce(+, (sg == 1 ? z : -z for (_, _, sg, z) in terms))
    Ez = exp_i(-reduce(+, phi), D)
    det2 = mul(dt, dt, D); pd = mul(perm, dt, D)
    Psi = mul(mul(perm, det2, D), Ez, D)
    grads = map(1:6) do k
        sel = [(sg, z) for (a, b, sg, z) in terms if (k <= 3 ? a == k : b == k - 3)]
        Pk = reduce(+, (z for (_, z) in sel)); Dk = reduce(+, (sg == 1 ? z : -z for (sg, z) in sel))
        inner = mul(Pk, det2, D) + scale(mul(pd, Dk, D), cnum(T, 2))
        itimes(mul(Ez, inner, D)) - itimes(Psi)
    end
    Psi, grads
end

"""The augmented system H(p, x) (7 real models) and its Jacobian dH/dx (7 x 7 real models).
x = (t, varphi_1..6); p = (u1, u2, u3, y); vert selects the vertical side (Gamma of G_v, -y)."""
function aug_system(x::Vector{TM{T}}, p::Vector{TM{T}}, vert::Bool, D::Dom) where {T}
    t0 = th0c(T); f0 = ph0c(T)
    th = [addc(p[1], t0[1]), addc(p[2], t0[2]), addc(p[3], t0[3]), addc(x[1], t0[4])]
    phi = [addc(x[1+k], f0[k]) for k in 1:6]
    ex = [exp_i(phi[k], D) for k in 1:3]; ey = [exp_i(phi[3+k], D) for k in 1:3]
    er = [exp_i(phi[3+k] - phi[k], D) for k in 1:3]
    one_ = one(Complex{T})
    a1, a2 = vert ? (1, 3) : (1, 2)                 # Gamma1 = -(1 + e^{i th_a1} + e^{i th_a2})
    b1 = vert ? 2 : 3                               # Gamma2 = -(1 + e^{i th_b1} + e^{i th_4})
    c1, c2 = vert ? (2, 1) : (3, 1)                 # Gamma3 = -(1 + e^{i(th_c1 - th_c2)} + e^{i(th_4 - th_d)})
    d = vert ? 3 : 2
    z4 = exp_i(th[4], D); z4d = exp_i(th[4] - th[d], D)
    G1 = exp_i(th[a1], D) + exp_i(th[a2], D)
    G2 = exp_i(th[b1], D) + z4
    G3 = exp_i(th[c1] - th[c2], D) + z4d
    e1 = addc(ex[1] + ex[2] + ex[3] + G1, one_)     # s - Gamma1
    e2 = addc(ey[1] + ey[2] + ey[3] + G2, one_)     # t - Gamma2
    e3 = addc(er[1] + er[2] + er[3] + G3, one_)     # r - Gamma3
    Psi, dPsi = psi_grad(phi, D)
    sg = vert ? -1 : 1
    H = [re(e1), imp(e1), re(e2), imp(e2), re(e3), imp(e3),
         scale(imp(Psi), cnum(T, 1 // 24)) + scale(p[4], cnum(T, sg // 48))]
    z = tmzero(T)
    J = fill(z, 7, 7)
    # d/dt: -dGamma/dtheta4 = i e^{i th4} (rows 3, 4) and i e^{i(th4 - th_d)} (rows 5, 6)
    J[3, 1] = -imp(z4);  J[4, 1] = re(z4)
    J[5, 1] = -imp(z4d); J[6, 1] = re(z4d)
    w24 = cnum(T, 1 // 24)
    for k in 1:3
        # x-angles: s gets i x_k; r gets -i e^{i(phi_{3+k} - phi_k)}
        J[1, 1+k] = -imp(ex[k]); J[2, 1+k] = re(ex[k])
        J[5, 1+k] = imp(er[k]);  J[6, 1+k] = -re(er[k])
        J[7, 1+k] = scale(imp(dPsi[k]), w24)
        # y-angles: t gets i y_k; r gets +i e^{i(phi_{3+k} - phi_k)}
        J[3, 4+k] = -imp(ey[k]); J[4, 4+k] = re(ey[k])
        J[5, 4+k] = -imp(er[k]); J[6, 4+k] = re(er[k])
        J[7, 4+k] = scale(imp(dPsi[3+k]), w24)
    end
    H, J, th, phi
end

"""Parameter models p(u) = q0 + Mth (wc + u) on the box (exact float centre)."""
param_models(::Type{T}, Mth, wc, q0=zeros(4)) where {T} =
    [TM{T}(T === I64 ? iv(q0[i]) + sum(iv(Mth[i, j]) * iv(wc[j]) for j in 1:4) : q0[i] + sum(Mth[i, j] * wc[j] for j in 1:4),
           ntuple(j -> T === I64 ? iv(Mth[i, j]) : Mth[i, j], 4), ntuple(_ -> zero(T), 10), 0.0) for i in 1:4]

"""Float Newton for one side at the parameter point pc (floats), from x0."""
function aug_newton_f(pc, x0, vert::Bool; iters=40)
    D0 = Dom((0.0, 0.0, 0.0, 0.0))
    p = [tmconst(pc[i]) for i in 1:4]
    x = collect(Float64, x0)
    for _ in 1:iters
        H, J, _, _ = aug_system([tmconst(v) for v in x], p, vert, D0)
        F = [h.c for h in H]
        maximum(abs, F) < 1e-14 && return x, [Jm.c for Jm in J]
        Jc = [Jm.c for Jm in J]
        abs(det(Jc)) < 1e-14 && return nothing, nothing
        x .-= Jc \ F
        all(isfinite, x) || return nothing, nothing
    end
    H, J, _, _ = aug_system([tmconst(v) for v in x], p, vert, D0)
    maximum(abs, [h.c for h in H]) < 1e-11 ? (x, [Jm.c for Jm in J]) : (nothing, nothing)
end

"""Second-order float predictor (Newton in model space, Y = J(x_c)^-1 fixed)."""
function aug_predictor_f(xc, pf, vert::Bool, Y, D::Dom; steps=3)
    x = [tmconst(xc[k]) for k in 1:7]
    for _ in 1:steps
        H, _, _, _ = aug_system(x, pf, vert, D)
        x = [x[i] - lincomb(view(Y, i, :), H) for i in 1:7]
    end
    x
end

"""A = sup |I - Y dH/dx| over the tube xp + [-rho, rho] (entrywise, 7 x 7)."""
function aug_A(xp::Vector{TM{I64}}, p::Vector{TM{I64}}, vert::Bool, Y::Matrix{Float64}, rho::Vector{Float64}, D::Dom)
    tube = [withrem(xp[k], rho[k]) for k in 1:7]
    _, J, _, _ = aug_system(tube, p, vert, D)
    A = zeros(7, 7)
    for k in 1:7, i in 1:7
        acc = tmconst(iv(i == k ? 1.0 : 0.0))
        for l in 1:7
            Y[i, l] == 0.0 && continue
            acc = acc - scale(J[l, k], iv(Y[i, l]))
        end
        A[i, k] = bound(acc, D)
    end
    A
end

krawczyk_need(b, A, rho) = [sup(iv(b[i]) + sum(iv(A[i, k]) * iv(rho[k]) for k in 1:7)) for i in 1:7]

"""Parametric Krawczyk test for one side (7 unknowns), as side_tube: b + A rho < rho certifies, for every u in the box, a
unique zero in xp(u) + [-rho, rho]^7, lying within need = b + A rho of xp(u).  Returns (x models with remainder need,
rho_U, need) or nothing.  rho_U is the largest radius of uniqueness certified among 1e-2 ... 1e-4 (and at least rho):
the T3 transfers need K's sides inside the tube where uniqueness holds, so a wide tube helps them."""
function aug_tube(xp::Vector{TM{I64}}, p::Vector{TM{I64}}, vert::Bool, Y::Matrix{Float64}, D::Dom)
    H, _, _, _ = aug_system(xp, p, vert, D)
    b = [bound(lincomb(view(Y, i, :), H), D) for i in 1:7]
    rho = [sup(iv(2.0) * iv(b[i]) + iv(1e-300)) for i in 1:7]
    for _ in 1:12
        A = aug_A(xp, p, vert, Y, rho, D)
        need = krawczyk_need(b, A, rho)
        if all(need[i] < rho[i] for i in 1:7)
            rhoU = rho
            for wide in (1e-2, 3e-3, 1e-3, 3e-4, 1e-4)
                cand = [max(rho[i], wide) for i in 1:7]
                cand == rho && break
                nU = krawczyk_need(b, aug_A(xp, p, vert, Y, cand, D), cand)
                if all(nU[i] < cand[i] for i in 1:7)
                    rhoU = cand; break
                end
            end
            return [withrem(xp[k], need[k]) for k in 1:7], rhoU, need
        end
        any(sum(A[i, :]) >= 1 for i in 1:7) && return nothing
        rho = [max(rho[i], 1.5 * need[i]) for i in 1:7]
        maximum(rho) > 0.5 && return nothing
    end
    nothing
end

"""G_h's entries (1,0), (2,0), (2,1) for theta models, as complex models."""
function gh_entries(th, D)
    o = one(typeof(exp_i(th[1], D).c))
    s = -addc(exp_i(th[1], D) + exp_i(th[2], D), o)
    t = -addc(exp_i(th[3], D) + exp_i(th[4], D), o)
    r = -addc(exp_i(th[3] - th[1], D) + exp_i(th[4] - th[2], D), o)
    s, t, r
end

abs2m(z, D) = mul(re(z), re(z), D) + mul(imp(z), imp(z), D)
dotm(z, dz, D) = scale(mul(re(z), re(dz), D) + mul(imp(z), imp(dz), D), iv(2.0))   # d|z|^2 = 2 Re(conj z dz)

"""(g, dR/dtheta4) as real models of theta (4 models; theta4 may carry a remainder covering a segment).
R = 4 g^2 eta - chi^2 with X, Y, Z = |s|^2, |t|^2, |r|^2, p = X + Y + Z, J = 2 Re(s r conj t), W = XY + XZ + YZ - XYZ,
g = 27 - 3p + J, eta = 9 - p + J, chi = W - (p - 9)(p - 18) + (p - 15) J (seedball.R_of); only t and r depend on theta4,
with dt = -i e^{i th4}, dr = -i e^{i(th4 - th2)}."""
function g_dR4(th::Vector{TM{I64}}, D::Dom)
    s, t, r = gh_entries(th, D)
    dt = -itimes(exp_i(th[4], D)); dr = -itimes(exp_i(th[4] - th[2], D))
    X = abs2m(s, D); Y = abs2m(t, D); Z = abs2m(r, D)
    dY = dotm(t, dt, D); dZ = dotm(r, dr, D)
    sr = mul(s, r, D)
    J = scale(re(mul(sr, conj(t), D)), iv(2.0))
    dJ = scale(re(mul(mul(s, dr, D), conj(t), D) + mul(sr, conj(dt), D)), iv(2.0))
    p = X + Y + Z; dp = dY + dZ
    XY = mul(X, Y, D); XZ = mul(X, Z, D); YZ = mul(Y, Z, D)
    W = XY + XZ + YZ - mul(XY, Z, D)
    dW = mul(X, dY, D) + mul(X, dZ, D) + mul(dY, Z, D) + mul(Y, dZ, D) - mul(X, mul(dY, Z, D) + mul(Y, dZ, D), D)
    g = addc(J - scale(p, iv(3.0)), iv(27.0))
    eta = addc(J - p, iv(9.0))
    dg = dJ - scale(dp, iv(3.0)); deta = dJ - dp
    p9 = addc(p, iv(-9.0)); p18 = addc(p, iv(-18.0)); p15 = addc(p, iv(-15.0))
    chi = W - mul(p9, p18, D) + mul(p15, J, D)
    dchi = dW - mul(dp, p18, D) - mul(p9, dp, D) + mul(dp, J, D) + mul(p15, dJ, D)
    dR = scale(mul(mul(g, dg, D), eta, D), iv(8.0)) + scale(mul(mul(g, g, D), deta, D), iv(4.0)) -
         scale(mul(chi, dchi, D), iv(2.0))
    g, dR
end

struct EdgeMap
    ok::Bool
    why::String
    Q::Vector{TM{I64}}
    xh::Vector{TM{I64}}; rho_h::Vector{Float64}       # tube: predictor (thin) and radius of uniqueness
    xv::Vector{TM{I64}}; rho_v::Vector{Float64}
    xhf::Vector{TM{Float64}}; xvf::Vector{TM{Float64}}  # float predictors (guesses for nearby boxes)
    wc::NTuple{4,Float64}
    xhE::Vector{TM{I64}}; xvE::Vector{TM{I64}}         # the enclosures of the solutions (predictor + need)
    p::Vector{TM{I64}}                                  # the parameter models
    Dm::Matrix{TM{CI64}}                                # the forced block (models)
end
EdgeMap(ok, why, Q, xh, rho_h, xv, rho_v, xhf, xvf, wc) =
    EdgeMap(ok, why, Q, xh, rho_h, xv, rho_v, xhf, xvf, wc, TM{I64}[], TM{I64}[], TM{I64}[], Matrix{TM{CI64}}(undef, 0, 0))
EdgeFail(why) = EdgeMap(false, why, TM{I64}[], TM{I64}[], Float64[], TM{I64}[], Float64[], TM{Float64}[], TM{Float64}[], (0.0, 0.0, 0.0, 0.0))

"""Float guesses for both sides at the float point w from a float predictor."""
function edge_guess(em::EdgeMap, w)
    u = ntuple(j -> w[j] - em.wc[j], 4)
    [peval(t, u) for t in em.xhf], [peval(t, u) for t in em.xvf]
end

"""H(p) on the box {wc + u : |u_j| <= h_j} (wc exact floats) and the C1e side conditions.  gh0, gv0: float guesses
(7 each) at the centre."""
function edge_box_map(eb::EdgeBall, wc::NTuple{4,Float64}, h::NTuple{4,Float64}, gh0, gv0; wcI=nothing)
    D = Dom(h)
    pc = eb.q0 .+ eb.Mth * collect(wc)
    xhc, Jh = aug_newton_f(pc, gh0, false); xvc, Jv = aug_newton_f(pc, gv0, true)
    (xhc === nothing || xvc === nothing) && return EdgeFail("float Newton at the centre")
    abs(xhc[1] - xvc[1]) < 1e-8 || return EdgeFail("float centre: t != t'")
    Yh = inv(Jh); Yv = inv(Jv)
    pf = param_models(Float64, eb.Mth, wc, eb.q0)
    xhf = aug_predictor_f(xhc, pf, false, Yh, D); xvf = aug_predictor_f(xvc, pf, true, Yv, D)
    p = wcI === nothing ? param_models(I64, eb.Mth, wc, eb.q0) :
        [TM{I64}(iv(eb.q0[i]) + sum(iv(eb.Mth[i, j]) * wcI[j] for j in 1:4), ntuple(j -> iv(eb.Mth[i, j]), 4), ntuple(_ -> iv(0.0), 10), 0.0) for i in 1:4]
    xhp = map(toiv, xhf); xvp = map(toiv, xvf)
    th_ = aug_tube(xhp, p, false, Yh, D)
    th_ === nothing && return EdgeFail("Krawczyk (horizontal augmented system)")
    tv_ = aug_tube(xvp, p, true, Yv, D)
    tv_ === nothing && return EdgeFail("Krawczyk (vertical augmented system)")
    xh, rho_h, _ = th_; xv, rho_v, _ = tv_
    # t' = t and g > 0: theta4 over the segment between the two enclosed fourth phases
    dtt = bound(polypart(xv[1]) - polypart(xh[1]), D)
    seg = withrem(xh[1], sup(iv(xh[1].r) + iv(xv[1].r) + iv(dtt)))
    t0 = th0c(I64)
    thseg = [addc(p[1], t0[1]), addc(p[2], t0[2]), addc(p[3], t0[3]), addc(seg, t0[4])]
    g, dR = g_dR4(thseg, D)
    tmrange(g, D)[1] > 0 || return EdgeFail("g > 0 not certified")
    tmrange(dR, D)[1] > 0 || return EdgeFail("dR/dtheta4 > 0 not certified")
    # the completion
    th = [addc(p[1], t0[1]), addc(p[2], t0[2]), addc(p[3], t0[3]), addc(xh[1], t0[4])]
    f0 = ph0c(I64)
    ph = [addc(xh[1+k], f0[k]) for k in 1:6]; pv = [addc(xv[1+k], f0[k]) for k in 1:6]
    tf = th0c(Float64); ff = ph0c(Float64)
    thf = [addc(pf[1], tf[1]), addc(pf[2], tf[2]), addc(pf[3], tf[3]), addc(xhf[1], tf[4])]
    phf = [addc(xhf[1+k], ff[k]) for k in 1:6]; pvf = [addc(xvf[1+k], ff[k]) for k in 1:6]
    Xp = D_predictor_f(E_models(thf, D), B_models(phf, D), C_models(pvf, D), D)
    Dm = D_models(E_models(th, D), B_models(ph, D), C_models(pv, D), Xp, D)
    Dm === nothing && return EdgeFail("Neumann bound for (B*)^-1")
    Q = fill(tmzero(I64), 36)
    at(a, b) = 6(a - 1) + b
    Q[at(2, 2)] = th[1]; Q[at(2, 3)] = th[2]; Q[at(3, 2)] = th[3]; Q[at(3, 3)] = th[4]
    for k in 1:3
        Q[at(2, 3 + k)] = ph[k]; Q[at(3, 3 + k)] = ph[3+k]
        Q[at(3 + k, 2)] = pv[k]; Q[at(3 + k, 3)] = pv[3+k]
    end
    for j in 1:3, k in 1:3
        a = arg_near(Dm[j, k], eb.P[at(3 + j, 3 + k)], D)
        a === nothing && return EdgeFail("arg of D")
        Q[at(3 + j, 3 + k)] = a
    end
    EdgeMap(true, "ok", Q, map(polypart, xhp), rho_h, map(polypart, xvp), rho_v, xhf, xvf, wc, xh, xv, p, Matrix{TM{CI64}}(Dm))
end

# ---------------------------------------------------------------- C1e: the cover, with leaves kept for T3

struct EdgeLeaf
    wc::NTuple{4,Float64}
    h::NTuple{4,Float64}
    xh::Vector{TM{I64}}; rho_h::Vector{Float64}
    xv::Vector{TM{I64}}; rho_v::Vector{Float64}
end

struct C1eResult
    ok::Bool
    msg::String
    bound::Float64
    leaves::Vector{EdgeLeaf}
    nvisit::Int
    nsplit::Int
    maxdepth::Int
    seconds::Float64
end

"""Exact float half-width h0 >= r/k (a dyadic, so that the centres (2i - k + 1) h0 and all halvings are exact)."""
function edge_h0(r::Float64, k::Int)
    h0 = ldexp(ceil(ldexp(nextfloat(r / k), 40)), -40)
    k * h0 >= r || error("edge_h0")
    h0
end

edge_misses_ball(wc, h::NTuple{4,Float64}, r) = inf(sum(max(iv(0.0), abs(iv(wc[j])) - iv(h[j]))^2 for j in 1:4)) > sup(iv(r)^2)

"""The float root predictor at the centre p = q0 (by continuation from p = 0, where x = 0 exactly) over [-r, r]^4."""
function edge_root(eb::EdgeBall)
    xh = zeros(7); xv = zeros(7); Jh = nothing; Jv = nothing
    m = max(1, ceil(Int, maximum(abs, eb.q0) / 0.05))
    for s in 1:m
        q = eb.q0 .* (s / m)
        xh, Jh = aug_newton_f(q, xh, false); xv, Jv = aug_newton_f(q, xv, true)
        (xh === nothing || xv === nothing) && return nothing
    end
    if m == 0 || Jh === nothing
        xh, Jh = aug_newton_f(eb.q0, zeros(7), false); xv, Jv = aug_newton_f(eb.q0, zeros(7), true)
        (xh === nothing || xv === nothing) && return nothing
    end
    D = Dom((eb.r, eb.r, eb.r, eb.r))
    pf = param_models(Float64, eb.Mth, (0.0, 0.0, 0.0, 0.0), eb.q0)
    EdgeMap(true, "root", TM{I64}[], TM{I64}[], Float64[], TM{I64}[], Float64[],
            aug_predictor_f(xh, pf, false, inv(Jh), D), aug_predictor_f(xv, pf, true, inv(Jv), D), (0.0, 0.0, 0.0, 0.0))
end

"""C1e on one first-level box and its halvings: (leaves, worst bound, visited, splits, depth, failure message)."""
function c1e_subtree(eb::EdgeBall, wc0::NTuple{4,Float64}, h0::NTuple{4,Float64}, root::EdgeMap, maxdepth::Int)
    lvs = EdgeLeaf[]; worst = 0.0; nv = 0; ns = 0; md = 0
    stack = [(wc0, h0, 0, root)]
    while !isempty(stack)
        wc, h, depth, parent = pop!(stack)
        edge_misses_ball(wc, h, eb.r) && continue
        nv += 1; md = max(md, depth)
        em = try
            edge_box_map(eb, wc, h, edge_guess(parent, wc)...)
        catch err
            EdgeFail("exception: " * sprint(showerror, err)[1:min(end, 200)])
        end
        why = em.why
        if em.ok
            b = vecnorm_sup(residual_models(em.Q, eb.P, eb.U, ntuple(j -> iv(wc[j]), 4)), Dom(h))
            if b <= eb.n
                worst = max(worst, b)
                push!(lvs, EdgeLeaf(wc, h, em.xh, em.rho_h, em.xv, em.rho_v))
                continue
            end
            why = @sprintf("bound %.6g > n = %.6g", b, eb.n)
        end
        if depth < maxdepth
            ns += 1
            for ch in 0:15
                push!(stack, (ntuple(j -> wc[j] + ((ch >> (j - 1)) & 1 == 1 ? h[j] / 2 : -h[j] / 2), 4), h ./ 2, depth + 1, em.ok ? em : parent))
            end
        else
            return lvs, worst, nv, ns, md, @sprintf("box at depth %d, centre %s, half-widths %s: %s", depth, string(round.(wc, sigdigits=6)), string(round.(h, sigdigits=4)), why)
        end
    end
    lvs, worst, nv, ns, md, ""
end

function check_c1e(eb::EdgeBall; maxdepth::Int=3)
    t0 = time()
    root = edge_root(eb)
    root === nothing && return C1eResult(false, "no float solution at p = 0", Inf, EdgeLeaf[], 0, 0, 0, time() - t0)
    h0 = ntuple(j -> edge_h0(eb.r, eb.k[j]), 4)
    firsts = [ntuple(j -> (2 * (idx[j] - 1) - eb.k[j] + 1) * h0[j], 4)
              for idx in Iterators.product(1:eb.k[1], 1:eb.k[2], 1:eb.k[3], 1:eb.k[4])]
    firsts = vec(firsts)
    results = Vector{Any}(undef, length(firsts))
    Threads.@threads :greedy for fi in eachindex(firsts)
        results[fi] = c1e_subtree(eb, firsts[fi], h0, root, maxdepth)
    end
    leaves = EdgeLeaf[]; worst = 0.0; nv = 0; ns = 0; md = 0
    for (lv, w, a, b, c, fail) in results
        isempty(fail) || return C1eResult(false, fail, Inf, EdgeLeaf[], nv + a, ns + b, max(md, c), time() - t0)
        append!(leaves, lv); worst = max(worst, w); nv += a; ns += b; md = max(md, c)
    end
    C1eResult(true, "ok", worst, leaves, nv, ns, md, time() - t0)
end
