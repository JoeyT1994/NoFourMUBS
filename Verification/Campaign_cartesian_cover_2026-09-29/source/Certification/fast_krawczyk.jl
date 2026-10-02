# Taylor-model Krawczyk certificate for one physical ray over a seed cell, on the FastTM kernel.
# Same method as tm_krawczyk.jl (predictor φ0 + Φ1 Δθ, Newton-refined in TM arithmetic; θ-dependent
# preconditioner Y(θ); spread over W by an interval second derivative), with two changes:
#   * all Taylor models are FastTM models in the normalised variables s = Δθ/ρ ∈ [-1,1]^4;
#   * sqrt(6) is an interval constant (the float constant made the old equations a perturbation).
# If K(W) ⊂ int W, then for every θ in the cell the 5 selected ray equations have exactly one
# solution in φ_p(θ) + W.
include("fastcoeffs.jl")
using ForwardDiff, LinearAlgebra
const SQ6 = sqrt(interval(6.0))

cexr(t::FTM) = CTM(cos(t), sin(t))
cexr(t) = Complex(cos(t), sin(t))
function xp_r(phi)
    e1 = cexr(phi[1]); e2 = cexr(phi[2])
    [one(e1), e1, e2], [cexr(phi[3]), cexr(phi[4]), cexr(phi[5])]
end
hdr(a, b) = sum(conj(a[i]) * b[i] for i in 1:3)
function ray_eqs_r(phi, C, sq6)
    x, p = xp_r(phi); Et = cadj(C.E); g = C.g
    z = [sq6 * p[i] - sum(Et[i, k] * x[k] for k in 1:3) for i in 1:3]
    h = [sq6 * x[i] - sum(C.E[i, k] * p[k] for k in 1:3) for i in 1:3]
    av = mvec(C.JT, z); ah = mvec(C.JG, h)
    N = real(hdr(z, mvec(C.JT, z))) - 3g
    f(a, M, m) = hdr(a, mvec(M, a)) - (g * g) * m
    fxv = f(av, C.v.NX, C.v.s); fyv = f(av, C.v.NY, C.v.t)
    fxh = f(ah, C.h.NX, C.h.s); fyh = f(ah, C.h.NY, C.h.t)
    [N, real(fxv), imag(fxv), real(fyv), imag(fyv), real(fxh), imag(fxh), real(fyh), imag(fyh)]
end
iunit(z::CTM) = CTM(zero(z.re), one(z.re))
iunit(z::Complex) = Complex(zero(real(z)), one(real(z)))
"""Analytic φ-Jacobian (9x5): phases enter only through e^{iφ}, d e^{iφ} = i e^{iφ}."""
function ray_jac_r(phi, C, sq6)
    x, p = xp_r(phi); Et = cadj(C.E)
    z = [sq6 * p[i] - sum(Et[i, k] * x[k] for k in 1:3) for i in 1:3]
    h = [sq6 * x[i] - sum(C.E[i, k] * p[k] for k in 1:3) for i in 1:3]
    av = mvec(C.JT, z); ah = mvec(C.JG, h)
    JTz = mvec(C.JT, z)
    Mv = [mvec(C.v.NX, av), mvec(C.v.NY, av)]; Mh = [mvec(C.h.NX, ah), mvec(C.h.NY, ah)]
    MvH = [mvec(cadj(C.v.NX), av), mvec(cadj(C.v.NY), av)]; MhH = [mvec(cadj(C.h.NX), ah), mvec(cadj(C.h.NY), ah)]
    zr = zero(x[1])
    cols = map(1:5) do k
        dx = [zr, zr, zr]; dp = [zr, zr, zr]
        if k <= 2; dx[k + 1] = x[k + 1] * iunit(x[k + 1]); else; dp[k - 2] = p[k - 2] * iunit(p[k - 2]); end
        dz = [sq6 * dp[i] - sum(Et[i, j] * dx[j] for j in 1:3) for i in 1:3]
        dh = [sq6 * dx[i] - sum(C.E[i, j] * dp[j] for j in 1:3) for i in 1:3]
        dav = mvec(C.JT, dz); dah = mvec(C.JG, dh)
        dN = real(hdr(dz, JTz) + hdr(z, mvec(C.JT, dz)))
        # d <a, M a> = <da, M a> + <a, M da> = <da, M a> + conj(<da, M^† a>)
        df(da, Ma, MHa) = hdr(da, Ma) + conj(hdr(da, MHa))
        fxv = df(dav, Mv[1], MvH[1]); fyv = df(dav, Mv[2], MvH[2])
        fxh = df(dah, Mh[1], MhH[1]); fyh = df(dah, Mh[2], MhH[2])
        [dN, real(fxv), imag(fxv), real(fyv), imag(fyv), real(fxh), imag(fxh), real(fyh), imag(fyh)]
    end
    [cols[j][i] for i in 1:9, j in 1:5]
end

function choose_rows_r(J0)
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

ivc(z::CTM) = Complex(fbound(z.re), fbound(z.im))
ivc(x::FTM) = fbound(x)
ivcoeffs(C) = (E = map(ivc, C.E), g = ivc(C.g), R = ivc(C.R), JG = map(ivc, C.JG), JT = map(ivc, C.JT),
               h = (s = ivc(C.h.s), t = ivc(C.h.t), NX = map(ivc, C.h.NX), NY = map(ivc, C.h.NY)),
               v = (s = ivc(C.v.s), t = ivc(C.v.t), NX = map(ivc, C.v.NX), NY = map(ivc, C.v.NY)))

"""Everything shared by the rays of one cell."""
function fast_cell(θ0, ρ; q = 4, hi = 8)
    Ctm = fast_cell_coeffs(θ0, ρ; q = q, hi = hi)
    (θ0 = θ0, ρ = ρ, q = q, C0 = seed_coeffs(θ0), Ctm = Ctm, Civ = ivcoeffs(Ctm))
end

function linear_tm(q, c0, grad)          # c0 + Σ grad_m s_m  (exact polynomial, no remainder)
    T = FastTM.table(q); c = zeros(T.N); c[1] = c0
    for m in 1:4; e = [0, 0, 0, 0]; e[m] = 1; c[T.index[Tuple(e)]] = grad[m]; end
    FTM{q}(c, 0.0)
end
polypart(a::FTM{Q}) where Q = FTM{Q}(copy(a.c), 0.0)

"""Certify one ray over the cell. Returns (ok, r, rows, |YF|)."""
function fast_certify_ray(phi0, cell; newton = 2, rtries = (1.0, 2.0, 4.0, 8.0))
    (; θ0, ρ, q, C0, Ctm, Civ) = cell
    J0 = ForwardDiff.jacobian(ph -> ray_eqs(ph, C0), phi0)
    rows = choose_rows_r(J0); J0r = J0[rows, :]
    Jt = ForwardDiff.jacobian(th -> ray_eqs(phi0, seed_coeffs(th)), θ0)
    Φ1 = -(J0r \ Jt[rows, :])
    phip = [linear_tm(q, phi0[k], ρ .* Φ1[k, :]) for k in 1:5]
    Y0 = inv(J0r)
    local Fp, Jp, Yt
    for it in 0:newton
        Fp = ray_eqs_r(phip, Ctm, SQ6)[rows]
        Jp = ray_jac_r(phip, Ctm, SQ6)[rows, :]
        J1 = [Jp[i, j] - J0r[i, j] for i in 1:5, j in 1:5]
        Y0J1 = [sum(Y0[i, a] * J1[a, j] for a in 1:5) for i in 1:5, j in 1:5]
        Yt = [sum(Y0J1[i, b] * (-Y0[b, j]) for b in 1:5) + Y0[i, j] for i in 1:5, j in 1:5]
        it == newton && break
        upd = [sum(Yt[k, j] * Fp[j] for j in 1:5) for k in 1:5]
        phip = [polypart(phip[k] - upd[k]) for k in 1:5]
    end
    YF = [fbound(sum(Yt[i, j] * Fp[j] for j in 1:5)) for i in 1:5]
    base = maximum(sup.(mag.(YF)))
    phip_iv = fbound.(phip); YMenc = fbound.(Yt)
    IYJp = [fbound((i == j ? 1.0 : 0.0) - sum(Yt[i, a] * Jp[a, j] for a in 1:5)) for i in 1:5, j in 1:5]
    for f in rtries
        r = 2f * base + 1e-13
        W = [interval(-r, r) for _ in 1:5]
        Xiv = [phip_iv[k] + W[k] for k in 1:5]
        D2 = ForwardDiff.jacobian(ph -> vec(ray_jac_r(ph, Civ, SQ6)[rows, :]), Xiv)
        dJ = [sum(D2[(j - 1) * 5 + a, k] * W[k] for k in 1:5) for a in 1:5, j in 1:5]
        spread = [-sum(YMenc[i, a] * dJ[a, j] for a in 1:5) for i in 1:5, j in 1:5]
        K = [-YF[i] + sum((IYJp[i, j] + spread[i, j]) * W[j] for j in 1:5) for i in 1:5]
        all(isstrictsubset(K[i], W[i]) for i in 1:5) && return true, r, rows, base
    end
    false, NaN, rows, base
end
