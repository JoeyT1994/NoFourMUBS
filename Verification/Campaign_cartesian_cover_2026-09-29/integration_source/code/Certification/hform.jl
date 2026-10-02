# Common-ray equations in the Hadamard-column form, and a Taylor-model Krawczyk certificate for
# each ray over a seed cell, in the SAME coordinates the completeness search uses.
#
# Ray z = (1, e^{iφ1}, ..., e^{iφ5}) (raw, dephased by z_1).  With H = H₊(θ) (raw phase Hadamard),
#     S_j = Σ_k conj(H_kj) z_k,    f_j = |S_j|^2 - 6,   j = 1..6,
# and z is a common unbiased ray of (I, H/√6) iff f = 0 (5 independent equations; Σ_j f_j = 0 on
# the unit-modulus torus, since H is unitary up to √6).
# Krawczyk (per ray, per cell): predictor φ_p(s) (TM, Newton-refined), 5 selected rows, TM
# preconditioner Y(s); K(W) = -Y F(φ_p) + (I - Y J(φ_p)) W - Y dJ(W) W ⊂ int W  ⇒  for every θ in
# the cell exactly one solution of the 5 rows in φ_p(θ) + W.  The largest W that passes is the
# uniqueness radius used by the completeness search.
include("fasthplus.jl")
using ForwardDiff, LinearAlgebra

cexh(t::FTM) = CTM(cos(t), sin(t))
cexh(t) = Complex(cos(t), sin(t))
zvec(phi) = (e = [cexh(phi[k]) for k in 1:5]; vcat([one(e[1])], e))
cmul(a, b) = a * b
cmul(a::IC, b::CTM) = cm(a, b); cmul(a::CTM, b::IC) = cm(b, a)
"""S_j = Σ_k conj(H_kj) z_k for all j (H entries: CTM, Complex{Interval} or Complex)."""
Svec(H, z) = [reduce(+, (cmul(conj(H[k, j]), z[k]) for k in 1:6)) for j in 1:6]
absq(z::CTM) = absq_tm(z)
hf(phi, H) = (S = Svec(H, zvec(phi)); [absq(S[j]) - 6 for j in 1:6])
iu(z::CTM) = CTM(zero(z.re), one(z.re)); iu(z::Complex) = Complex(zero(real(z)), one(real(z)))
"""∂f_j/∂φ_k = 2 Re( conj(S_j) conj(H_{k+1,j}) i z_{k+1} )  (6 x 5)."""
function hjac(phi, H)
    z = zvec(phi); S = Svec(H, z)
    [2 * real(cmul(conj(S[j]), cmul(conj(H[k + 1, j]), iu(z[k + 1]) * z[k + 1]))) for j in 1:6, k in 1:5]
end

function rows5(J0)
    rows = Int[]
    for _ in 1:5
        best = 0; bv = -1.0
        for i in 1:6
            i in rows && continue
            sv = svdvals(J0[vcat(rows, i), :])[end]; sv > bv && (bv = sv; best = i)
        end
        push!(rows, best)
    end
    sort(rows)
end

"""Cell data for the H-form: H₊ Taylor model (order q), its entrywise interval hull and centre."""
function hcell(θ0, ρ; q = 4, hi = 8)
    HT = hplus_tm(θ0, ρ; q = q, hi = hi)
    # adaptive order: near dF = 0 (small side square root) the order-8 series converge slowly
    if hi < 12 && maximum(max(remainder_radius(z.re), remainder_radius(z.im)) for z in HT.H) > 1e-4
        HT = hplus_tm(θ0, ρ; q = q, hi = 12)
    end
    H = HT.H
    (θ0 = θ0, ρ = ρ, q = q, H = H, Hiv = map(z -> Complex(fbound(z.re), fbound(z.im)), H),
     Hc = map(centre, H), dF = HT.dF, R = HT.R)
end
function newton_centre(phi, Hc; it = 8)
    for _ in 1:it
        phi = phi - pinv(hjac(phi, Hc)) * hf(phi, Hc)
    end
    phi
end
lin_tm(q, c0, grad) = (T = FastTM.table(q); c = zeros(T.N); c[1] = c0;
    for m in 1:4; e = [0, 0, 0, 0]; e[m] = 1; c[T.index[Tuple(e)]] = grad[m]; end; FTM{q}(c, 0.0))
ppart(a::FTM{Q}) where Q = FTM{Q}(copy(a.c), 0.0)

"""θ-derivative of the centre ray (for the predictor): dφ/ds by implicit differentiation, with
∂H/∂s_m read from the linear coefficients of the H Taylor model."""
function ray_velocity(phi, cell, rows = 1:6)
    T = FastTM.table(cell.q)
    dH = [map(z -> Complex(coeffs(z.re)[T.index[Tuple(Int.(1:4 .== m))]], coeffs(z.im)[T.index[Tuple(Int.(1:4 .== m))]]), cell.H) for m in 1:4]
    Y = pinv(hjac(phi, cell.Hc))
    Fs = hcat([ForwardDiff.derivative(t -> hf(phi, cell.Hc .+ t .* dH[m]), 0.0) for m in 1:4]...)
    -(Y * Fs)                                        # 5 x 4, per unit s
end
"""Certify one ray. Returns (ok, r, rmax, rows, phip, sweep) with r the tight radius and rmax the
largest uniqueness radius found (geometric search)."""
function hform_certify(phi0, cell; newton = 2, rgrowth = 2.0, rcap = 1.0)
    # Preconditioner: the 5x6 pseudo-inverse Y of J (no row selection).  Since Σ_j f_j ≡ 0, the columns
    # of J span 1^⊥; Y J ≈ I then makes Y injective on 1^⊥, so Y F = 0 ⇔ F = 0 (F ∈ 1^⊥ exactly).
    (; q, H, Hiv, Hc) = cell
    J0 = hjac(phi0, Hc); Y0 = pinv(J0)
    V = ray_velocity(phi0, cell)
    phip = [lin_tm(q, phi0[k], V[k, :]) for k in 1:5]
    local Fp, Jp, Yt
    for itn in 0:newton
        Fp = hf(phip, H); Jp = hjac(phip, H)
        J1 = [Jp[a, j] - J0[a, j] for a in 1:6, j in 1:5]
        Y0J1 = [sum(Y0[i, a] * J1[a, j] for a in 1:6) for i in 1:5, j in 1:5]
        Yt = [sum(Y0J1[i, b] * (-Y0[b, j]) for b in 1:5) + Y0[i, j] for i in 1:5, j in 1:6]
        itn == newton && break
        upd = [sum(Yt[k, j] * Fp[j] for j in 1:6) for k in 1:5]
        phip = [ppart(phip[k] - upd[k]) for k in 1:5]
    end
    YF = [fbound(sum(Yt[i, j] * Fp[j] for j in 1:6)) for i in 1:5]
    base = maximum(sup.(mag.(YF)))
    phiv = fbound.(phip); YM = fbound.(Yt)
    IYJ = [fbound((i == j ? 1.0 : 0.0) - sum(Yt[i, a] * Jp[a, j] for a in 1:6)) for i in 1:5, j in 1:5]
    passes(r) = begin
        W = [interval(-r, r) for _ in 1:5]
        X = [phiv[k] + W[k] for k in 1:5]
        D2 = ForwardDiff.jacobian(ph -> vec(hjac(ph, Hiv)), X)            # 30 x 5: row (j-1)*6 + a
        dJ = [sum(D2[(j - 1) * 6 + a, k] * W[k] for k in 1:5) for a in 1:6, j in 1:5]
        K = [-YF[i] + sum((IYJ[i, j] - sum(YM[i, a] * dJ[a, j] for a in 1:6)) * W[j] for j in 1:5) for i in 1:5]
        all(isstrictsubset(K[i], W[i]) for i in 1:5)
    end
    r = 2 * base + 1e-13; ok = false
    for _ in 1:4
        passes(r) && (ok = true; break); r *= 2
    end
    ok || return (ok = false, r = NaN, rmax = NaN, rows = 1:6, phip = phip, sweep = diam.(phiv))
    rmax = r
    while rmax * rgrowth <= rcap && passes(rmax * rgrowth); rmax *= rgrowth; end
    (ok = true, r = r, rmax = rmax, rows = 1:6, phip = phip, sweep = diam.(phiv))
end
