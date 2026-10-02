# Lyapunov–Schmidt exclusion of a near-miss "ghost" (a complex pair of solutions just off the real
# torus) on a node (φ-box B, sub-cell with entrywise hull Hs of H).
#
# At the box centre c (sub-cell centre carrier) take the SVD J0 = U Σ Vᵀ of the 6x5 Jacobian and write
#     φ = c + V⊥ w + v t,        w ∈ W = [-R,R]^4,  t ∈ T = [-R,R],   R = |radius(B)|₂,
# (so B ⊂ this region), with v the near-null right vector, V⊥ the other four, u5 the matching left
# vector and U4 the four leading left vectors.  Every zero of F in B × sub-cell satisfies
#     A(w, t) = U4ᵀ F = 0   and   g = u5ᵀ F = 0.
# 1. A_w = U4ᵀ J V⊥ is well conditioned; a Krawczyk test uniform in (t, s) shows: for each (t, s)
#    there is exactly one w(t) ∈ W with A = 0.
# 2. G(t) = g(w(t), t) has G'' bounded away from 0 on T (interval bounds from the closed-form
#    second derivatives of F); with G(0), G'(0) enclosed, the quadratic minorant (or majorant)
#    G(t) ≥ G(0) + G'(0) t + ½ inf G'' t² has no real zero  ⇒  F has no zero on the node.
# Rigour: interval arithmetic throughout (IntervalArithmetic), H over the sub-cell by its hull.
using ForwardDiff, LinearAlgebra

"""Entrywise complex-interval hull of H over a sub-cell (FastCell: disc(h1, dev))."""
hull_H(fcs) = [Complex(interval(real(fcs.h[k, j, 1])) + interval(-fcs.dev[k, j], fcs.dev[k, j]),
                       interval(imag(fcs.h[k, j, 1])) + interval(-fcs.dev[k, j], fcs.dev[k, j])) for k in 1:6, j in 1:6]
iv(M::AbstractArray{<:Real}) = interval.(M)
matvec(A, x) = [sum(A[i, k] * x[k] for k in eachindex(x)) for i in axes(A, 1)]

"""true ⇒ no common unbiased ray in B for any s in the sub-cell."""
function ls_exclude(fcs, B; why = false, centre = nothing)
    Hs = hull_H(fcs); Hc = fcs.h[:, :, 1]
    c = centre === nothing ? [mid(b) for b in B] : centre
    J0 = hjac(c, Hc); F0 = svd(J0)
    v = F0.V[:, 5]; Vp = F0.V[:, 1:4]; u5 = F0.U[:, 5]; U4 = F0.U[:, 1:4]
    # region radius: the ball around c containing B (all of B lies in c + V⊥W + vT)
    R = sqrt(sum((abs(mid(B[k]) - c[k]) + radius(B[k]))^2 for k in 1:5)) * (1 + 1e-12)
    W = [interval(-R, R) for _ in 1:4]; T = interval(-R, R)
    φof(w, t) = iv(c) .+ matvec(iv(Vp), w) .+ iv(v) .* t
    X = φof(W, T)                                           # the whole region (interval box in φ)
    JX = hjac(X, Hs)                                        # 6x5 over region × sub-cell
    Aw = iv(U4') * JX * iv(Vp)                              # 4x4
    Y = inv(U4' * J0 * Vp)
    M = [(i == j ? interval(1.0) : interval(0.0)) - sum(interval(Y[i, a]) * Aw[a, j] for a in 1:4) for i in 1:4, j in 1:4]
    qn = maximum(sum(sup(mag(M[i, j])) for j in 1:4) for i in 1:4)
    qn < 0.9 || return why ? (:q, qn) : false
    # 1. uniform Krawczyk in w: K = -Y A(0, T) + M W ⊂ int W
    A0 = matvec(iv(U4'), hf(φof(fill(interval(0.0), 4), T), Hs))
    K = [-sum(interval(Y[i, a]) * A0[a] for a in 1:4) + sum(M[i, j] * W[j] for j in 1:4) for i in 1:4]
    all(isstrictsubset(K[i], W[i]) for i in 1:4) || return why ? (:krawczyk, maximum(sup(mag(K[i])) for i in 1:4) / R) : false
    # w(0): contract with t = 0
    W0 = copy(W)
    for _ in 1:8
        A00 = matvec(iv(U4'), hf(φof(fill(interval(0.0), 4), interval(0.0)), Hs))
        K0 = [-sum(interval(Y[i, a]) * A00[a] for a in 1:4) + sum(M[i, j] * W0[j] for j in 1:4) for i in 1:4]
        W0 = [intersect_interval(K0[i], W0[i]) for i in 1:4]
    end
    # derivative bounds over the region:  w' = -A_w^{-1} A_t,  |A_w^{-1} x| ≤ |Y x| / (1 - q)
    At = matvec(iv(U4'), matvec(JX, iv(v)))
    wp_mag = maximum(sup(mag(sum(interval(Y[i, a]) * At[a] for a in 1:4))) for i in 1:4) / (1 - qn)
    WP = [interval(-wp_mag, wp_mag) for _ in 1:4]
    d = matvec(iv(Vp), WP) .+ iv(v)                        # dφ/dt along the solution curve
    # second derivatives of F: D2[(k-1)*6 + a, l] = ∂J_ak/∂φ_l over the region
    D2 = ForwardDiff.jacobian(ph -> vec(hjac(ph, Hs)), X)
    Fdd = [sum(D2[(k - 1) * 6 + a, l] * d[k] * d[l] for k in 1:5, l in 1:5) for a in 1:6]   # ∂²F(d, d)
    wpp_mag = maximum(sup(mag(sum(interval(Y[i, a]) * sum(interval(U4[b, a]) * Fdd[b] for b in 1:6) for a in 1:4))) for i in 1:4) / (1 - qn)
    WPP = [interval(-wpp_mag, wpp_mag) for _ in 1:4]
    Gpp = sum(interval(u5[a]) * (Fdd[a] + sum(JX[a, k] * sum(interval(Vp[k, m]) * WPP[m] for m in 1:4) for k in 1:5)) for a in 1:6)
    in_interval(0.0, Gpp) && return why ? (:gpp, (inf(Gpp), sup(Gpp))) : false   # not convex / concave: no conclusion
    # G(0) and G'(0)
    φ0 = φof(W0, interval(0.0))
    G0 = sum(interval(u5[a]) * f for (a, f) in enumerate(hf(φ0, Hs)))
    J00 = hjac(φ0, Hs)
    At0 = matvec(iv(U4'), matvec(J00, iv(v)))
    wp0 = maximum(sup(mag(sum(interval(Y[i, a]) * At0[a] for a in 1:4))) for i in 1:4) / (1 - qn)
    d0 = matvec(iv(Vp), [interval(-wp0, wp0) for _ in 1:4]) .+ iv(v)
    Gp0 = sum(interval(u5[a]) * sum(J00[a, k] * d0[k] for k in 1:5) for a in 1:6)
    gm = inf(Gpp) > 0 ? inf(Gpp) : -sup(Gpp)                # |G''| lower bound, sign s
    sgn = inf(Gpp) > 0 ? 1 : -1
    # sgn·G(t) ≥ sgn·G(0) + sgn·G'(0) t + gm t²/2 ≥ sgn·G(0) - G'(0)²/(2 gm)
    lower = (sgn > 0 ? inf(G0) : -sup(G0)) - sup(mag(Gp0))^2 / (2gm)
    why ? (lower > 1e-12 ? :excluded : :minorant, (lower, inf(G0), sup(G0), sup(mag(Gp0)), gm)) : lower > 1e-12
end

"""Valley point of a ghost near B: minimiser of |F|² (centre carrier of the sub-cell), by damped
Gauss–Newton from the centre of B.  Used only to place the Lyapunov–Schmidt frame (not rigorous)."""
function valley_point(fcs, B; it = 60)
    Hc = fcs.h[:, :, 1]; φ = [mid(b) for b in B]
    for _ in 1:it
        J = hjac(φ, Hc); F = hf(φ, Hc)
        φ = φ - (J' * J + 1e-3 * I) \ (J' * F)
    end
    φ
end
ls_exclude_near(fcs, B; why = false) = ls_exclude(fcs, B; why = why, centre = valley_point(fcs, B))

# ---------------------------------------------------------------- centred-form version
# Closed-form derivative bounds for f_j = |S_j|², S_j = Σ_k conj(H_kj) z_k, z_k = e^{iφ_k} (|H| = 1):
#   |∂_l S| ≤ 1,  |∂_l∂_k S| ≤ δ_kl,  |∂³ S| ≤ δ_klm,
#   |∂_l ∂_k f_j| ≤ 2(1 + δ_kl smax_j),   |∂_m ∂_l ∂_k f_j| ≤ 2(3 + smax_j)  (all mixed partials).
# For φ in the region, |φ - c|_1 ≤ δ1 := Σ_l Σ_m |V_lm| R.
"""true ⇒ no ray in B for any s in the sub-cell (centred-form Lyapunov–Schmidt).  `centre` places
the frame (default: box centre), `Rscale` enlarges the region radius beyond the covering radius."""
function ls_exclude_cf(fcs, B; centre = nothing, Rscale = 1.0, why = false)
    Hs = hull_H(fcs); Hc = fcs.h[:, :, 1]
    c = centre === nothing ? [mid(b) for b in B] : centre
    J0 = hjac(c, Hc); SV = svd(J0)
    v = SV.V[:, 5]; Vp = SV.V[:, 1:4]; u5 = SV.U[:, 5]; U4 = SV.U[:, 1:4]
    R = Rscale * sqrt(sum((abs(mid(B[k]) - c[k]) + radius(B[k]))^2 for k in 1:5)) * (1 + 1e-12)
    ci = interval.(c)
    Fc = hf(ci, Hs); Jc = hjac(ci, Hs)                             # at the centre point, H over the sub-cell
    Sc = Svec(Hs, zvec(ci)); smax = [sup(abs(Sc[j])) + sqrt(5.0) * 2R for j in 1:6]   # |S| grows ≤ Σ|Δφ| ≤ √5·(√5 R)
    δ1 = sum(abs, SV.V) * R                                        # crude bound on |φ - c|_1 over the region
    # second-order centred form: J(c + Σ_m V_m y_m) = Jc + Σ_m dJ_m y_m + Q,  y = (w, t) ∈ [-R,R]^5,
    # dJ_m = ∂J/∂φ · V_m at the centre (exact intervals), |Q_jk| ≤ (3 + smax_j) δ1²
    Hc2 = ForwardDiff.jacobian(ph -> vec(hjac(ph, Hs)), ci)       # 30x5: row (k-1)*6 + a, column l
    Vf = hcat(Vp, v)
    dJ = [[sum(Hc2[(k - 1) * 6 + a, l] * Vf[l, m] for l in 1:5) for a in 1:6, k in 1:5] for m in 1:5]
    EQ = [(3 + smax[j]) * δ1^2 for j in 1:6, k in 1:5]
    Aw_c = iv(U4') * Jc * iv(Vp)
    Y = inv(U4' * J0 * Vp)
    M = [(i == j ? 1.0 : 0.0) - sum(Y[i, a] * Aw_c[a, j] for a in 1:4) for i in 1:4, j in 1:4]
    YdA = [Y * mid.(iv(U4') * dJ[m] * iv(Vp)) for m in 1:5]      # centre values
    YdAr = [abs.(Y) * radius.(iv(U4') * dJ[m] * iv(Vp)) for m in 1:5]
    Aq = abs.(U4') * EQ * abs.(Vp)
    Mmag = [sup(mag(M[i, j])) + sum((abs(YdA[m][i, j]) + YdAr[m][i, j]) * R for m in 1:5) + sum(abs(Y[i, a]) * Aq[a, j] for a in 1:4) for i in 1:4, j in 1:4]
    qn = maximum(sum(Mmag[i, :]) for i in 1:4)
    EJ = [sum(sup(mag(dJ[m][j, k])) for m in 1:5) * R + EQ[j, k] for j in 1:6, k in 1:5]    # |J(φ) - Jc| over the region
    qn < 0.9 || return why ? (:q, qn) : false
    W = [interval(-R, R) for _ in 1:4]; T = interval(-R, R)
    # A(0, t) = U4ᵀ F(c + v t) ∈ U4ᵀ Fc + U4ᵀ J(ξ) v t,  J(ξ) ∈ Jc ± EJseg along the segment
    # along the segment c + v t:  J(c + v t) v = Jc v + dJ_5 v t + Q
    Jv = [sum(Jc[a, k] * v[k] for k in 1:5) + sum(dJ[5][a, k] * v[k] for k in 1:5) * T + interval(-1, 1) * sum(EQ[a, k] * abs(v[k]) for k in 1:5) for a in 1:6]
    A0 = [sum(U4[b, a] * (Fc[b] + Jv[b] * T) for b in 1:6) for a in 1:4]
    K = [-sum(Y[i, a] * A0[a] for a in 1:4) + interval(-1, 1) * sum(Mmag[i, j] * R for j in 1:4) for i in 1:4]
    all(isstrictsubset(K[i], W[i]) for i in 1:4) || return why ? (:krawczyk, maximum(sup(mag(K[i])) for i in 1:4) / R) : false
    # w(0): K0 = -Y U4ᵀ Fc + M W0, iterated
    A00 = [sum(U4[b, a] * Fc[b] for b in 1:6) for a in 1:4]
    w0 = R
    for _ in 1:30
        w0 = min(w0, maximum(sup(mag(sum(Y[i, a] * A00[a] for a in 1:4))) for i in 1:4) + qn * w0)
    end
    # SVD orthogonality: u5ᵀ J V⊥ = 0 and U4ᵀ J v = 0 at (c, s0).  Enclose these products over the
    # region as centre value (interval, from the sub-cell hull) + Hessian variation + quadratic remainder.
    sumVp = [sum(abs(Vp[k, m]) for k in 1:5) for m in 1:4]
    EQrow = [maximum(EQ[a, :]) for a in 1:6]
    uJV = [sum(u5[a] * sum(Jc[a, k] * Vp[k, m] for k in 1:5) for a in 1:6) for m in 1:4]
    uJVvar = [sum(sup(mag(sum(u5[a] * sum(dJ[mm][a, k] * Vp[k, m] for k in 1:5) for a in 1:6))) for mm in 1:5) * R +
              sum(abs(u5[a]) * EQrow[a] for a in 1:6) * sumVp[m] for m in 1:4]
    uJVmag = [sup(mag(uJV[m])) + uJVvar[m] for m in 1:4]
    UJv = [sum(U4[b, a] * sum(Jc[b, k] * v[k] for k in 1:5) for b in 1:6) for a in 1:4]
    UJvvar = [sum(sup(mag(sum(U4[b, a] * sum(dJ[mm][b, k] * v[k] for k in 1:5) for b in 1:6))) for mm in 1:5) * R +
              sum(abs(U4[b, a]) * EQrow[b] for b in 1:6) * sum(abs, v) for a in 1:4]
    UJvmag = [sup(mag(UJv[a])) + UJvvar[a] for a in 1:4]
    wp = maximum(sum(abs(Y[i, a]) * UJvmag[a] for a in 1:4) for i in 1:4) / (1 - qn)       # |w'| on T
    # G(0) = u5ᵀ F(c + V⊥ w(0)), |w(0)| ≤ w0:  u5ᵀFc + (u5ᵀ J V⊥) w
    G0 = sum(u5[a] * Fc[a] for a in 1:6) + interval(-1, 1) * sum(uJVmag[m] * w0 for m in 1:4)
    # G'(0) = u5ᵀ J (v + V⊥ w'):  u5ᵀ J v over the region + (u5ᵀ J V⊥) w'
    uJv = sum(u5[a] * sum(Jc[a, k] * v[k] for k in 1:5) for a in 1:6)
    uJvvar = sum(sup(mag(sum(u5[a] * sum(dJ[mm][a, k] * v[k] for k in 1:5) for a in 1:6))) for mm in 1:5) * R + sum(abs(u5[a]) * EQrow[a] for a in 1:6) * sum(abs, v)
    Gp0 = uJv + interval(-1, 1) * (uJvvar + sum(uJVmag[m] * wp for m in 1:4))
    dmag = [abs(v[k]) + sum(abs(Vp[k, m]) for m in 1:4) * wp for k in 1:5]
    # G'' over the region: u5ᵀ F''(d,d) + u5ᵀ J V⊥ w'',  F'' at c exactly (interval) + third-derivative variation
    Fdd_c = [sum(Hc2[(k - 1) * 6 + a, l] * v[k] * v[l] for k in 1:5, l in 1:5) for a in 1:6]    # along v
    dvar = sum(dmag) - sum(abs, v)                                  # |d - v|_1
    Fdd_err = [2 * (1 + smax[a]) * (2 * sum(abs, v) * dvar + dvar^2) + 2 * (3 + smax[a]) * δ1 * sum(dmag)^2 for a in 1:6]
    Fdd = [Fdd_c[a] + interval(-Fdd_err[a], Fdd_err[a]) for a in 1:6]
    Fddmag = [sup(mag(x)) for x in Fdd]
    wpp = maximum(sum(abs(Y[i, a]) * sum(abs(U4[b, a]) * Fddmag[b] for b in 1:6) for a in 1:4) for i in 1:4) / (1 - qn)
    Gpp = sum(u5[a] * Fdd[a] for a in 1:6) + interval(-1, 1) * sum(uJVmag[m] * wpp for m in 1:4)
    # direct bound:  |G(t) - G(0)| ≤ |G'(0)| R + ½ max|G''| R²   (Taylor with remainder on T)
    if inf(mag(G0)) > 0 && !in_interval(0.0, G0)
        slack = sup(mag(Gp0)) * R + 0.5 * sup(mag(Gpp)) * R^2
        dist0 = min(abs(inf(G0)), abs(sup(G0)))
        dist0 > slack * (1 + 1e-12) + 1e-12 && return why ? (:excluded, (dist0, slack, qn)) : true
    end
    in_interval(0.0, Gpp) && return why ? (:gpp, (G0 = (inf(G0), sup(G0)), Gp0 = sup(mag(Gp0)), Gpp = sup(mag(Gpp)), R = R, w0 = w0, wp = wp, wpp = wpp)) : false
    gm = inf(Gpp) > 0 ? inf(Gpp) : -sup(Gpp); sgn = inf(Gpp) > 0 ? 1 : -1
    lower = (sgn > 0 ? inf(G0) : -sup(G0)) - sup(mag(Gp0))^2 / (2gm)
    why ? (lower > 1e-12 ? :excluded : :minorant, (lower, inf(G0), sup(G0), sup(mag(Gp0)), gm, qn)) : lower > 1e-12
end

"""Valley point near B: from the box centre c, Newton in the four transverse coordinates only
(U4ᵀ F(c + V⊥ w) = 0, well conditioned), at the sub-cell centre carrier.  Frame placement only."""
function valley_point2(fcs, B; it = 12)
    Hc = fcs.h[:, :, 1]; c = [mid(b) for b in B]
    SV = svd(hjac(c, Hc)); Vp = SV.V[:, 1:4]; U4 = SV.U[:, 1:4]
    w = zeros(4)
    for _ in 1:it
        φ = c .+ Vp * w
        w = w - (U4' * hjac(φ, Hc) * Vp) \ (U4' * hf(φ, Hc))
    end
    c .+ Vp * w
end

# ---------------------------------------------------------------- moving ghost tubes
# A ghost tube certifies, over a whole sub-cell S (Taylor models in s), that F has no zero in the
# moving region  c(s) + V⊥ w + v t,  |w|∞ ≤ Rw, |t| ≤ Rt,  where c(s) = c0 + V⊥ w_c(s) is a Taylor-model
# valley point (predictor only; rigour comes from the bounds).  Same bounds as ls_exclude_cf, with
# F(c(s)), J(c(s)) as Taylor models in s (correlated) instead of the sub-cell hull.
# Closed-form derivative bounds as above; Hs (hull over S) is used only for the φ-variation terms.
"""Certify a ghost tube near φ-point c0 over the sub-cell of (fcs, H2s). Returns nothing or
(c = Taylor models of the centre, R = region radius (ball), Rw, Rt)."""
function ghost_tube(fcs, H2s, c0; Rw = 0.01, Rt = 0.01, q = 2)
    Hs = hull_H(fcs); Hc = fcs.h[:, :, 1]
    SV = svd(hjac(c0, Hc)); v = SV.V[:, 5]; Vp = SV.V[:, 1:4]; u5 = SV.U[:, 5]; U4 = SV.U[:, 1:4]
    Y = inv(U4' * hjac(c0, Hc) * Vp)
    # predictor c(s): Newton on U4ᵀ F(c0 + V⊥ w, s) = 0 in Taylor-model arithmetic (polynomial part)
    wc = [tmconst(q, 0.0) for _ in 1:4]
    local Fc, Jc, cφ
    for it in 0:3
        cφ = [c0[k] + sum(Vp[k, m] * wc[m] for m in 1:4) for k in 1:5]
        Fc = hf(cφ, H2s); Jc = hjac(cφ, H2s)
        it == 3 && break
        A = [sum(U4[b, a] * Fc[b] for b in 1:6) for a in 1:4]
        wc = [set_remainder(wc[i] - sum(Y[i, a] * A[a] for a in 1:4), 0.0) for i in 1:4]
    end
    # bounds over the region: |φ - c(s)|_1 ≤ δ1, smax from |S| at c(s) plus the chord growth
    Scs = Svec(H2s, zvec(cφ)); smax = [sup(fbound(absq_tm(Scs[j])))^0.5 + sqrt(5.0) * (Rw * 2 + Rt) for j in 1:6]
    # |φ - c(s)|_1 ≤ √5 |V y|_2 = √5 |y|_2 ≤ √5 · √(4Rw² + Rt²)   (V orthonormal up to rounding)
    δ1 = min(sum(abs, Vp) * Rw + sum(abs, v) * Rt, sqrt(5.0) * sqrt(4Rw^2 + Rt^2)) * (1 + 1e-10)
    EQ = [(3 + smax[j]) * δ1^2 for j in 1:6]
    # Hessian of F at c(s), along the frame, enclosed over the sub-cell by intervals at the (interval) centre
    cI = [fbound(x) for x in cφ]
    Hc2 = ForwardDiff.jacobian(ph -> vec(hjac(ph, Hs)), cI)
    Vf = hcat(Vp, v); Rv = [fill(Rw, 4); Rt]
    dJ = [[sum(Hc2[(k - 1) * 6 + a, l] * Vf[l, m] for l in 1:5) for a in 1:6, k in 1:5] for m in 1:5]
    # M(s) = I - Y U4ᵀ J(c(s)) V⊥ (Taylor model) + variation over the region
    M0 = [fbound((i == j ? 1.0 : 0.0) - sum(Y[i, a] * sum(U4[b, a] * sum(Jc[b, k] * Vp[k, j] for k in 1:5) for b in 1:6) for a in 1:4)) for i in 1:4, j in 1:4]
    var = [sum(sup(mag(sum(Y[i, a] * sum(U4[b, a] * sum(dJ[m][b, k] * Vp[k, j] for k in 1:5) for b in 1:6) for a in 1:4))) * Rv[m] for m in 1:5) +
           sum(abs(Y[i, a]) * sum(abs(U4[b, a]) * EQ[b] for b in 1:6) for a in 1:4) * sum(abs.(Vp[:, j])) for i in 1:4, j in 1:4]
    Mmag = [sup(mag(M0[i, j])) + var[i, j] for i in 1:4, j in 1:4]
    qn = maximum(sum(Mmag[i, :]) for i in 1:4)
    qn < 0.9 || (global GT_WHY = (:q, qn); return nothing)
    # A at the centre line c(s) + v t:  A(c(s)) (Taylor model, ≈ 0 by the predictor) + U4ᵀ J v t + quadratic
    Ac = [fbound(sum(U4[b, a] * Fc[b] for b in 1:6)) for a in 1:4]
    UJv = [fbound(sum(U4[b, a] * sum(Jc[b, k] * v[k] for k in 1:5) for b in 1:6)) for a in 1:4]
    UJvvar = [sum(sup(mag(sum(U4[b, a] * sum(dJ[m][b, k] * v[k] for k in 1:5) for b in 1:6))) * Rv[m] for m in 1:5) + sum(abs(U4[b, a]) * EQ[b] for b in 1:6) * sum(abs, v) for a in 1:4]
    A0mag = [sup(mag(Ac[a])) + (sup(mag(UJv[a])) + UJvvar[a]) * Rt for a in 1:4]
    Kmag = [sum(abs(Y[i, a]) * A0mag[a] for a in 1:4) + sum(Mmag[i, j] for j in 1:4) * Rw for i in 1:4]
    all(Kmag .< Rw) || (global GT_WHY = (:krawczyk, maximum(Kmag) / Rw, qn); return nothing)
    # w(0, s) ≤ w0;  slope w' ≤ wp
    w0 = Rw
    for _ in 1:30; w0 = min(w0, maximum(sum(abs(Y[i, a]) * sup(mag(Ac[a])) for a in 1:4) for i in 1:4) + qn * w0); end
    wp = maximum(sum(abs(Y[i, a]) * (sup(mag(UJv[a])) + UJvvar[a]) for a in 1:4) for i in 1:4) / (1 - qn)
    # G(0, s) = u5ᵀ F(c(s) + V⊥ w(0,s)):  Taylor model of u5ᵀF(c(s)) + (u5ᵀ J V⊥) w
    uF = fbound(sum(u5[a] * Fc[a] for a in 1:6))
    uJV = [sup(mag(fbound(sum(u5[a] * sum(Jc[a, k] * Vp[k, m] for k in 1:5) for a in 1:6)))) +
           sum(sup(mag(sum(u5[a] * sum(dJ[mm][a, k] * Vp[k, m] for k in 1:5) for a in 1:6))) * Rv[mm] for mm in 1:5) +
           sum(abs(u5[a]) * EQ[a] for a in 1:6) * sum(abs.(Vp[:, m])) for m in 1:4]
    G0 = uF + interval(-1, 1) * sum(uJV[m] * w0 for m in 1:4)
    uJv = fbound(sum(u5[a] * sum(Jc[a, k] * v[k] for k in 1:5) for a in 1:6))
    uJvvar = sum(sup(mag(sum(u5[a] * sum(dJ[mm][a, k] * v[k] for k in 1:5) for a in 1:6))) * Rv[mm] for mm in 1:5) + sum(abs(u5[a]) * EQ[a] for a in 1:6) * sum(abs, v)
    Gp = sup(mag(uJv)) + uJvvar + sum(uJV[m] * wp for m in 1:4)
    # G'' ≤ |u5ᵀ F''(d,d)| + |u5ᵀ J V⊥| |w''|;  F''(d,d) at c(s) via the interval Hessian + third-derivative variation
    dmag = [abs(v[k]) + sum(abs(Vp[k, m]) for m in 1:4) * wp for k in 1:5]
    Fdd = [sup(mag(sum(Hc2[(k - 1) * 6 + a, l] * v[k] * v[l] for k in 1:5, l in 1:5))) +
           2 * (1 + smax[a]) * (2 * sum(abs, v) * (sum(dmag) - sum(abs, v)) + (sum(dmag) - sum(abs, v))^2) + 2 * (3 + smax[a]) * δ1 * sum(dmag)^2 for a in 1:6]
    wpp = maximum(sum(abs(Y[i, a]) * sum(abs(U4[b, a]) * Fdd[b] for b in 1:6) for a in 1:4) for i in 1:4) / (1 - qn)
    Gpp = sum(abs(u5[a]) * Fdd[a] for a in 1:6) + sum(uJV[m] * wpp for m in 1:4)
    in_interval(0.0, G0) && (global GT_WHY = (:G0, inf(G0), sup(G0)); return nothing)
    dist0 = min(abs(inf(G0)), abs(sup(G0)))
    dist0 > (Gp * Rt + 0.5 * Gpp * Rt^2) * (1 + 1e-12) + 1e-12 || (global GT_WHY = (:slack, dist0, Gp * Rt, 0.5 * Gpp * Rt^2); return nothing)
    # certified: no zero of F in the moving region.  It contains the ball of radius min(Rw, Rt) about c(s).
    (c = cφ, cbox = cI, R = min(Rw, Rt) * (1 - 1e-12), Rw = Rw * (1 - 1e-10), Rt = Rt * (1 - 1e-10), V = hcat(Vp, v))
end

GT_WHY = nothing
"""Interval bound of a FastTM model (whole-cell variables) on the sub-cell m ± h."""
function bound_on_subcell(a, m, h)
    T = FastTM.table(tmorder(a))
    S = [interval(m[i] - h[i], m[i] + h[i]) for i in 1:4]
    acc = interval(0.0)
    for α in 1:T.N
        e = T.exps[α]; cα = coeffs(a)[α]; cα == 0 && continue
        acc += interval(cα) * S[1]^e[1] * S[2]^e[2] * S[3]^e[3] * S[4]^e[4]
    end
    acc + interval(-remainder_radius(a), remainder_radius(a))
end
"""Is the φ-box B inside the tube's region for every s in the sub-cell m ± h?  Tested in the tube's
own frame: y = Vᵀ(φ - c(s)) must satisfy |y_{1..4}| ≤ Rw, |y_5| ≤ Rt (V orthonormal up to 1e-12)."""
function in_tube(tube, B, m, h)
    # cheap prefilter: B must lie within the tube's reach of its centre hull over the whole cell
    reach = sqrt(4 * tube.Rw^2 + tube.Rt^2) * 1.01
    for k in 1:5
        (inf(B[k]) > sup(tube.cbox[k]) + reach || sup(B[k]) < inf(tube.cbox[k]) - reach) && return false
    end
    mB = [mid(b) for b in B]; rB = [radius(b) for b in B]
    for i in 1:5
        # y_i(s) = V_iᵀ (mid B - c(s)) as a Taylor model (correlated in s), then the box half-widths
        yi = sum((-tube.V[k, i]) * tube.c[k] for k in 1:5) + sum(tube.V[k, i] * mB[k] for k in 1:5)
        bnd = sup(mag(bound_on_subcell(yi, m, h))) + sum(abs(tube.V[k, i]) * rB[k] for k in 1:5)
        bnd * (1 + 1e-10) < (i <= 4 ? tube.Rw : tube.Rt) || return false
    end
    true
end
"""Distance from B to the tube's centre range on the sub-cell (to decide whether splitting s helps)."""
function near_tube(tube, B, m, h; margin = 0.02)
    any(k -> inf(B[k]) - margin > sup(tube.cbox[k]) + 0.05 || sup(B[k]) + margin < inf(tube.cbox[k]) - 0.05, 1:5) && return false
    all(k -> (ck = bound_on_subcell(tube.c[k], m, h); inf(B[k]) - margin < sup(ck) && inf(ck) < sup(B[k]) + margin), 1:5)
end
