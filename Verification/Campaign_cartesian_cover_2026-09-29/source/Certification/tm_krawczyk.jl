# Taylor-model Krawczyk for one physical ray over a seed box  theta0 + [-rho, rho]^4.
#
# Predictor  phi_p(t) = phi0 + Phi1 * t   (t = theta - theta0 as Taylor-model variables,
#            Phi1 = -J0^{-1} dF/dtheta at the centre, rows = 5 selected equations).
# Unknown    phi = phi_p(t) + w,  w in W = [-r, r]^5.
# Preconditioner Y(t) = Y0 + Y1*t  with Y0 = J0^{-1}, Y1 from the derivative of J along the
#            predicted path (first order), all as Taylor models in t.
# Krawczyk   K(W) = -Y(t) F(phi_p(t); t) + (I - Y(t) J(phi_p(t) + W; t)) W   (enclosed over t, W)
# If K(W) is strictly inside W then for every theta in the box the 5 selected equations have
# exactly one solution in phi_p(theta) + W.
include("single_radical.jl")
include("single_radical_tm.jl")
using ForwardDiff, LinearAlgebra
NEWTON_STEPS = 2
enclose_real(x::TaylorModelN, dom) = TaylorModels.evaluate(x, dom)
function interval_coeffs(Ctm, dom)
    ic(z::CTM) = Complex(enclose_real(z.re, dom), enclose_real(z.im, dom))
    ic(x::TaylorModelN) = enclose_real(x, dom)
    icm(M) = map(ic, M)
    side(S) = (s = ic(S.s), t = ic(S.t), NX = icm(S.NX), NY = icm(S.NY))
    (E = icm(Ctm.E), g = ic(Ctm.g), R = ic(Ctm.R), JG = icm(Ctm.JG), JT = icm(Ctm.JT), h = side(Ctm.h), v = side(Ctm.v))
end


# ray equations for generic phase type P (Float, TaylorModelN) and coefficient type
cexg(t::TaylorModelN) = cex_tm(t)
cexg(t) = cex(t)
function xp_g(phi)
    e1 = cexg(phi[1]); e2 = cexg(phi[2])
    x = [one(e1), e1, e2]; p = [cexg(phi[3]), cexg(phi[4]), cexg(phi[5])]
    x, p
end
function ray_eqs_gen(phi, C)
    x, p = xp_g(phi)
    Et = cadj(C.E)
    z = [sqrt(6)*p[i] - sum(Et[i, k]*x[k] for k in 1:3) for i in 1:3]
    h = [sqrt(6)*x[i] - sum(C.E[i, k]*p[k] for k in 1:3) for i in 1:3]
    av = mvec(C.JT, z); ah = mvec(C.JG, h); g = C.g
    hd(a, b) = sum(conj(a[i])*b[i] for i in 1:3)
    N = real(hd(z, mvec(C.JT, z))) - 3g
    f(a, M, m) = hd(a, mvec(M, a)) - g*g*m
    fxv = f(av, C.v.NX, C.v.s); fyv = f(av, C.v.NY, C.v.t)
    fxh = f(ah, C.h.NX, C.h.s); fyh = f(ah, C.h.NY, C.h.t)
    [N, real(fxv), imag(fxv), real(fyv), imag(fyv), real(fxh), imag(fxh), real(fyh), imag(fyh)]
end

"""Jacobian of the ray equations w.r.t. phi, as a matrix of Taylor models, at phase TMs phi_tm.
Uses the analytic structure: d/dphi_k of cos/sin; computed by forward differentiation of the
generic function with dual numbers is not available for TMs, so use the exact formula
dF/dphi_k = F'(phi)[e_k] via complex-step-free symbolic rule: phases enter only through
cex(phi_k), d cex(phi) = i cex(phi)."""
function ray_jac_gen(phi, C)
    # directional derivative by exact first-order expansion: replace cex(phi_k) by
    # cex(phi_k) + i cex(phi_k) * eps and extract the eps-linear part (bilinear forms => exact)
    x, p = xp_g(phi)
    Et = cadj(C.E); g = C.g
    hd(a, b) = sum(conj(a[i])*b[i] for i in 1:3)
    base_z = [sqrt(6)*p[i] - sum(Et[i, k]*x[k] for k in 1:3) for i in 1:3]
    base_h = [sqrt(6)*x[i] - sum(C.E[i, k]*p[k] for k in 1:3) for i in 1:3]
    cols = []
    for k in 1:5
        dx = [zero(x[1]), zero(x[1]), zero(x[1])]; dp = [zero(x[1]), zero(x[1]), zero(x[1])]
        if k <= 2; dx[k+1] = x[k+1] * CTMi(x[k+1]); else; dp[k-2] = p[k-2] * CTMi(p[k-2]); end
        dz = [sqrt(6)*dp[i] - sum(Et[i, j]*dx[j] for j in 1:3) for i in 1:3]
        dh = [sqrt(6)*dx[i] - sum(C.E[i, j]*dp[j] for j in 1:3) for i in 1:3]
        av = mvec(C.JT, base_z); ah = mvec(C.JG, base_h); dav = mvec(C.JT, dz); dah = mvec(C.JG, dh)
        dN = real(hd(dz, mvec(C.JT, base_z)) + hd(base_z, mvec(C.JT, dz)))
        df(a, da, M) = hd(da, mvec(M, a)) + hd(a, mvec(M, da))
        fxv = df(av, dav, C.v.NX); fyv = df(av, dav, C.v.NY); fxh = df(ah, dah, C.h.NX); fyh = df(ah, dah, C.h.NY)
        push!(cols, [dN, real(fxv), imag(fxv), real(fyv), imag(fyv), real(fxh), imag(fxh), real(fyh), imag(fyh)])
    end
    [cols[j][i] for i in 1:9, j in 1:5]
end
CTMi(z::CTM) = CTM(zero(z.re), one(z.re))           # the constant i, same type as z
CTMi(z::Complex) = Complex(zero(real(z)), one(real(z)))

function choose_rows(J0)
    rows = Int[]
    for k in 1:5
        best = 0; bv = -1.0
        for i in 1:9
            i in rows && continue
            sv = svdvals(J0[vcat(rows, i), :])[end]; if sv > bv; bv = sv; best = i; end
        end
        push!(rows, best)
    end
    rows
end

"""Cell setup shared by all rays: Taylor-model seed coefficients over theta0 + [-rho,rho]^4."""
function tm_cell(th0, rho; order = 4)
    space = TS.JetSpace(2order, ["t1","t2","t3","t4"]); dom = fill(interval(-rho, rho), 4); x0 = fill(interval(0.0), 4)
    tv = [TaylorModelN(space, i, order, x0, dom) for i in 1:4]
    Ctm = seed_coeffs_tm([tv[i] + th0[i] for i in 1:4])
    (th0 = th0, rho = rho, C0 = seed_coeffs(th0), tv = tv, dom = dom, x0 = x0, Ctm = Ctm, Civ = interval_coeffs(Ctm, dom))
end

"""Certify one ray. Returns (ok, r, rows)."""
tm_certify_ray(phi0, th0, rho; order = 4, rtries = (1.0, 2.0, 4.0, 8.0)) = tm_certify_ray(phi0, tm_cell(th0, rho; order); rtries)
function tm_certify_ray(phi0, cell::NamedTuple; rtries = (1.0, 2.0, 4.0, 8.0))
    (; th0, C0, tv, dom, x0, Ctm, Civ) = cell
    J0 = ForwardDiff.jacobian(ph -> ray_eqs(ph, C0), phi0)
    rows = choose_rows(J0)
    Jt = ForwardDiff.jacobian(th -> ray_eqs(phi0, seed_coeffs(th)), th0)
    Phi1 = -(J0[rows, :] \ Jt[rows, :])                          # 5x4
    phip = [phi0[k] + sum(Phi1[k, m]*tv[m] for m in 1:4) for k in 1:5]
    Y0 = inv(J0[rows, :])
    local Fp, Jp, Yt
    for newton in 0:NEWTON_STEPS
        Fp = ray_eqs_gen(phip, Ctm)[rows]
        Jp = ray_jac_gen(phip, Ctm)[rows, :]
        J1t = [Jp[i, j] - J0[rows, :][i, j] for i in 1:5, j in 1:5]
        Yt = [Y0[i, j] - sum(Y0[i, a] * J1t[a, b] * Y0[b, j] for a in 1:5, b in 1:5) for i in 1:5, j in 1:5]
        newton == NEWTON_STEPS && break
        # Newton update of the predictor in Taylor-model arithmetic (keep polynomial part only:
        # the predictor is just a choice of centre; rigour comes from the final Krawczyk test)
        upd = [sum(Yt[k, j]*Fp[j] for j in 1:5) for k in 1:5]
        phip = [TaylorModelN(TaylorModels.polynomial(phip[k] - upd[k]), interval(0.0), x0, dom) for k in 1:5]
    end
    YF = [TaylorModels.evaluate(sum(Yt[i, j]*Fp[j] for j in 1:5), dom) for i in 1:5]
    base = maximum(mag.(YF))
    # second-derivative bound for the Jacobian over W: enclose J at phi_p + W by interval eval
    phip_iv = [TaylorModels.evaluate(phip[k], dom) for k in 1:5]
    YMenc = [TaylorModels.evaluate(Yt[i, j], dom) for i in 1:5, j in 1:5]
    for f in rtries
        r = 2f*base + 1e-13
        W = [interval(-r, r) for _ in 1:5]
        Xiv = [phip_iv[k] + W[k] for k in 1:5]
        # mean value in w:  J(phi_p + w) - J(phi_p) = sum_k d/dphi_k J (xi) * w_k,  xi in Xiv
        D2 = ForwardDiff.jacobian(ph -> vec(ray_jac_gen(ph, Civ)[rows, :]), Xiv)   # 25 x 5 interval
        IYJp = [TaylorModels.evaluate((i == j ? 1.0 : 0.0) - sum(Yt[i, a]*Jp[a, j] for a in 1:5), dom) for i in 1:5, j in 1:5]
        dJ = [sum(D2[(j-1)*5 + a, k] * W[k] for k in 1:5) for a in 1:5, j in 1:5]           # a = row, j = col
        spread = [-sum(YMenc[i, a] * dJ[a, j] for a in 1:5) for i in 1:5, j in 1:5]
        Mm = IYJp .+ spread
        K = [-YF[i] + sum(Mm[i, j]*W[j] for j in 1:5) for i in 1:5]
        if all(isstrictsubset(K[i], W[i]) for i in 1:5)
            return true, r, rows, base
        end
    end
    false, NaN, rows, base
end

# ---- mixed order: order-q polynomial parts with remainders taken from an order-hi computation ----
# Both TMs enclose the same analytic function; their degree<=q parts enclose the same Taylor
# coefficients (interval coefficients), so  f - p_q  is enclosed by  sum_{k>q} range(p_hi[k]) + rem_hi.
function tighten(lo::TaylorModelN, hi::TaylorModelN, q, dom)
    ph = TaylorModels.polynomial(hi)
    tail = interval(0.0)
    for k in q+1:length(ph.coeffs)-1
        tail = tail + TS.evaluate(ph.coeffs[k+1], dom)
    end
    r = intersect_interval(TaylorModels.remainder(lo), tail + TaylorModels.remainder(hi))
    TaylorModelN(TaylorModels.polynomial(lo), r, lo.x0, lo.dom)
end
tighten(lo::CTM, hi::CTM, q, dom) = CTM(tighten(lo.re, hi.re, q, dom), tighten(lo.im, hi.im, q, dom))
tighten(lo::AbstractArray, hi::AbstractArray, q, dom) = [tighten(lo[i], hi[i], q, dom) for i in eachindex(lo)] |> x -> reshape(x, size(lo))
tighten(lo::NamedTuple, hi::NamedTuple, q, dom) = NamedTuple{keys(lo)}(Tuple(tighten(lo[k], hi[k], q, dom) for k in keys(lo)))

function tm_cell_mixed(th0, rho; order = 4, hi = 8)
    cl = tm_cell(th0, rho; order = order); ch = tm_cell(th0, rho; order = hi)
    Ctm = tighten(cl.Ctm, ch.Ctm, order, cl.dom)
    merge(cl, (Ctm = Ctm, Civ = interval_coeffs(Ctm, cl.dom)))
end
