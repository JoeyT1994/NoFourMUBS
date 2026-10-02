# FastTM H₊: centre agreement with model.py, BigFloat containment at random points, unitarity, corner R.
include("fasthplus.jl")
using DelimitedFiles, Random, Printf
Random.seed!(4); setprecision(BigFloat, 200)

# ---- BigFloat reference port of model.py, with branches continued from the centre choices
function side_ref(G, z, g, d0, w0)
    s, t, r = G[2, 1], G[3, 1], G[3, 2]
    X, Y, Z = abs2(s), abs2(t), abs2(r)
    P = [r*s*s + conj(r)*t*t + (3 - Z)*s*t, t*conj(s)^2 + r*r*conj(t) + (3 - Y)*r*conj(s),
         s*conj(t)^2 + conj(r)^2*conj(s) + (3 - X)*conj(r)*conj(t)]
    cs = [9 - Z, 9 - Y, 9 - X]; lam = [P[j]*(g + cs[j]*conj(z))/abs2(P[j]) for j in 1:3]
    u = lam[1]*conj(lam[2]); mu = s/3; nu = t/3; n = 1 - abs2(mu)
    k = r/3 - nu*conj(mu); alpha = mu*mu - u*conj(mu); gamma = 2mu*nu - z*lam[1]/3
    delta = sqrt(g/27*lam[1]*conj(lam[2])*conj(lam[3]))
    abs(delta - d0) > abs(-delta - d0) && (delta = -delta)          # continue the centre branch
    dF = real(27/g*(n*gamma - 2alpha*k)*conj(delta))
    rho = (n + dF)/2; q = alpha/rho; cp = (k - delta*conj(q))/n; cmn = (k*q + delta)/n
    sigma = u + mu*q; xi = sigma^2/rho
    w = argmin(ww -> abs(ww - w0), [cbrt_c(xi) * cis(2big(pi)*j/3) for j in 0:2])
    M = [1 0 0; mu sigma q*conj(sigma); nu cp*sigma cmn*conj(sigma)]
    (M = Complex{BigFloat}.(M), w = w, delta = delta, dF = dF)
end
cbrt_c(z) = abs(z)^(1//3) * cis(angle(z)/3)
function hplus_ref(θ, br)
    a, b, c, d = cis.(θ); E = Complex{BigFloat}[1 1 1; 1 a b; 1 c d]
    Gh = 6I - E*E'; T = 6I - E'*E; Gv = permutedims(T)
    s, t, r = Gh[2,1], Gh[3,1], Gh[3,2]; X, Y, Z = abs2(s), abs2(t), abs2(r)
    p = X + Y + Z; J = 2real(s*r*conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J; R = 4g^2*eta - chi^2
    zp = Complex(chi, sqrt(R))/(2g)
    h = side_ref(Gh, zp, g, br.dh, br.wh); v = side_ref(Gv, conj(zp), g, br.dv, br.wv)
    ω = cis(2big(pi)/3); F = [ω^(j*k) for j in 0:2, k in 0:2]
    Ph = Diagonal([1, conj(h.w), h.w]); Pv = Diagonal([1, conj(v.w), v.w])
    B = h.M*Ph*F; C = F*Pv*permutedims(v.M); D = -C*E'*adj3(Gh)*B/g
    [E B; C D], (dh = h.delta, wh = h.w, dv = v.delta, wv = v.w)
end
evalbig(m, s) = (T = FastTM.table(tmorder(m)); sum(big(coeffs(m)[k]) * prod(big(s[i])^T.exps[k][i] for i in 1:4) for k in 1:T.N))

θ0 = [2.692, -1.5, -0.614, 1.884]
Hpy = readdlm("data/H_g2.csv", ',', ComplexF64)
for (ρ, q) in [(1e-3, 4), (5e-3, 4), (1e-2, 6)]   # at ρ = 2e-2 the cube-root series does not converge
    hplus_tm(θ0, 1e-4; q = q)
    t = @elapsed HT = hplus_tm(θ0, ρ; q = q)
    H = HT.H
    Hc = [centre(H[i, j]) for i in 1:6, j in 1:6]
    viol = 0; worst = 0.0
    for trial in 1:25
        s = 2 .* rand(4) .- 1
        θ = [big(θ0[i]) + big(ρ) * big(s[i]) for i in 1:4]
        # branch-agnostic reference: of the 36 sign/cube-root choices, compare with the one nearest the TM
        best = nothing; bd = Inf
        for sh in (1, -1), sv in (1, -1), jh in 0:2, jv in 0:2
            Hr, _ = hplus_ref(θ, (dh = big(sh) + 0im, wh = cis(2big(pi)*jh/3), dv = big(sv) + 0im, wv = cis(2big(pi)*jv/3)))
            dist = maximum(abs(Hr[i, j] - Complex(evalbig(H[i, j].re, s), evalbig(H[i, j].im, s))) for i in 1:6, j in 1:6)
            dist < bd && (bd = dist; best = Hr)
        end
        for i in 1:6, j in 1:6
            for (m, v) in ((H[i, j].re, real(best[i, j])), (H[i, j].im, imag(best[i, j])))
                e = Float64(abs(v - evalbig(m, s))); viol += e > remainder_radius(m); worst = max(worst, e / remainder_radius(m))
            end
        end
    end
    maxrem = maximum(max(remainder_radius(z.re), remainder_radius(z.im)) for z in H)
    Uerr = maximum(sup(mag(fbound((sum(H[i, k] * conj(H[j, k]) for k in 1:6)).re) - (i == j ? 6 : 0))) for i in 1:6, j in 1:6)
    @printf("ρ=%.0e q=%d: centre vs model.py %.1e | max remainder %.2e | BigFloat violations %d (worst err/rem %.2f) | |HH†-6I| ≤ %.2e | dF_h %s dF_v %s | %.2f s\n",
            ρ, q, maximum(abs.(Hc .- Hpy)), maxrem, viol, worst, Uerr, HT.dF.h, HT.dF.v, t)
end
