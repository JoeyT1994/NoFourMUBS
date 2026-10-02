# Float fast path for the completeness search (complete.jl): exclusion and regularity tests in
# plain Float64 with an a-priori rounding margin.
#
# Rounding.  Every bound below is a sum of at most ~300 products of numbers of modulus ≤ 40
# (|H| = 1, |S| ≤ 6, Taylor coefficients ≤ 6), each carrying a relative error ≤ 4u (u = 2^-53,
# including Julia's cos/sin/atan/sqrt, accurate to < 1 ulp).  The accumulated error is therefore
# < 300·40·4u ≈ 5e-12.  Every final comparison uses the margin MARGIN = 1e-9, so a box is
# declared excluded or regular only if the exact-arithmetic test passes with room to spare.
#
# Cell data.  For each entry H_kj the order-qbb Taylor model gives coefficients h[α] and a remainder;
# for every s in the cell,  H_kj(s) ∈ disc(h[1], dev_kj),  dev_kj = Σ_{α>1} |h[α]| + rem,  and
# S_j(c, s) = Σ_k z_k conj(H_kj(s)) ∈ disc(σ_1, ρ_j) with σ_α = Σ_k z_k conj(h_kj[α]),
# ρ_j = Σ_{α>1} |σ_α| + Σ_k rem_kj.  (|s^α| ≤ 1 on the normalised cell.)
const MARGIN = 1e-9
const SQ6F = sqrt(6.0)

struct FastCell
    N::Int
    h::Array{ComplexF64,3}      # h[k, j, α]
    rem::Matrix{Float64}        # complex remainder radius per entry (re + im)
    dev::Matrix{Float64}        # max_s |H_kj(s) - h[k,j,1]|
end
function FastCell(H::AbstractMatrix, q::Int)
    T = FastTM.table(q); N = T.N
    h = zeros(ComplexF64, 6, 6, N); rem = zeros(6, 6); dev = zeros(6, 6)
    for k in 1:6, j in 1:6
        re = truncate_order(H[k, j].re, q); im = truncate_order(H[k, j].im, q)
        for α in 1:N; h[k, j, α] = complex(coeffs(re)[α], coeffs(im)[α]); end
        rem[k, j] = remainder_radius(re) + remainder_radius(im)
        dev[k, j] = sum(abs(h[k, j, α]) for α in 2:N; init = 0.0) + rem[k, j]
    end
    FastCell(N, h, rem, dev)
end
"""The centre carrier only (s = 0): constant terms, remainder = enclosure radius at s = 0."""
function centre_only(fc::FastCell)
    h = zeros(ComplexF64, 6, 6, 1); h[:, :, 1] .= fc.h[:, :, 1]
    FastCell(1, h, copy(fc.rem), copy(fc.rem))
end

@inline chord(w) = 2 * sin(w / 2)
"""[min, max] of cos over the angle interval [a - w, a + w] (w ≥ 0)."""
@inline function cosrange(a, w)
    w >= pi && return (-1.0, 1.0)
    lo = min(cos(a - w), cos(a + w)); hi = max(cos(a - w), cos(a + w))
    # contains a multiple of 2π → max 1;  contains π + 2πn → min -1
    n = ceil((a - w) / (2pi)); (2pi * n <= a + w) && (hi = 1.0)
    n = ceil((a - w - pi) / (2pi)); (pi + 2pi * n <= a + w) && (lo = -1.0)
    lo, hi
end
@inline sinrange(a, w) = cosrange(a - pi / 2, w)

"""S-disc data at the box centre: σ_1 (centre value) and ρ_j."""
function s_disc(fc::FastCell, z)
    S0 = zeros(ComplexF64, 6); ρ = zeros(6)
    @inbounds for j in 1:6
        s1 = 0.0im
        for k in 1:6; s1 += z[k] * conj(fc.h[k, j, 1]); end
        S0[j] = s1
        r = 0.0
        for α in 2:fc.N
            sα = 0.0im
            for k in 1:6; sα += z[k] * conj(fc.h[k, j, α]); end
            r += abs(sα)
        end
        for k in 1:6; r += fc.rem[k, j]; end
        ρ[j] = r
    end
    S0, ρ
end

"""true ⇒ no common unbiased ray φ ∈ c ± w for any s in the cell (fc)."""
function excluded_fast(fc::FastCell, c, w)
    z = ComplexF64[1.0; [cis(c[k]) for k in 1:5]]
    S0, ρ = s_disc(fc, z)
    @inbounds for j in 1:6
        m = abs(S0[j]); ρj = ρ[j]
        L = 0.0
        for k in 1:5; L += chord(w[k]); end
        # chord (Lipschitz) test
        (m + ρj + L < SQ6F - MARGIN || m - ρj - L > SQ6F + MARGIN) && return true
        m - ρj > 0.2 || continue
        # arc test in the rotated frame u = S0/|S0|
        u = S0[j] / m
        relo = m - ρj; rehi = m + ρj; imlo = -ρj; imhi = ρj
        for k in 1:5
            v = conj(u) * conj(fc.h[k + 1, j, 1]) * z[k + 1]            # centre part of ū a_k
            R = abs(v); φv = atan(imag(v), real(v))
            clo, chi = cosrange(φv, w[k]); slo, shi = sinrange(φv, w[k])
            dv = fc.dev[k + 1, j] * chord(w[k])
            relo += R * clo - real(v) - dv; rehi += R * chi - real(v) + dv   # Re v(e^{iδ} - 1) = R cos(δ+φ) - Re v
            imlo += R * slo - imag(v) - dv; imhi += R * shi - imag(v) + dv   # Im v(e^{iδ} - 1) = R sin(δ+φ) - Im v
        end
        relo > SQ6F + MARGIN && return true
        up = sqrt(max(abs(relo), abs(rehi))^2 + max(abs(imlo), abs(imhi))^2)
        up < SQ6F - MARGIN && return true
    end
    false
end

"""Upper bound of |S_j| over the box × cell."""
function smax_fast(fc::FastCell, S0, ρ, w)
    L = sum(chord, w)
    [abs(S0[j]) + ρ[j] + L for j in 1:6]
end

"""Regularity of the 5x5 Jacobian (rows chosen at the centre) on box × cell:
‖I - Y J(φ,s)‖∞ < 1 with Y = J(c, 0)^{-1}.  J(c,s) is a FastTM Taylor model in s (order of H2).
φ-variation: J_jk = 2 Re(conj(S_j) ∂_k S_j), ∂_k S_j = conj(H_kj) i z_k, so
  ∂_l J_jk = 2 Re(H_lj conj(H_kj) e^{i(φ_k - φ_l)}) + 2 δ_kl Re(-conj(S_j) conj(H_kj) z_k),
and over box × cell  |∂_l J_jk| ≤ 2 (maxabs cos over arg(h_lj conj h_kj) + c_k - c_l ± (w_k + w_l)
+ dev_lj + dev_kj)  (l ≠ k),  ≤ 2 (1 + smax_j)  (l = k).  Hence |J(φ,s) - J(c,s)| ≤ Σ_l |∂_l J| w_l."""
function regular_fast(fc::FastCell, H2, c, w)
    z = ComplexF64[1.0; [cis(c[k]) for k in 1:5]]
    S0, ρ = s_disc(fc, z)
    smax = smax_fast(fc, S0, ρ, w)
    zi = zvec_ic(c)
    S = S_at(c, H2, zi)
    Jc = J_at(c, H2, S, zi)
    Jm = [coeffs(Jc[j, k])[1] for j in 1:6, k in 1:5]
    Y = pinv(Jm)                                                   # 5x6; see hform_certify for why
    cc = [0.0; c]
    dJ = zeros(6, 5)
    for j in 1:6, k in 1:5
        tot = 0.0
        for l in 1:5
            if l == k
                hk = conj(fc.h[k + 1, j, 1]); pk = conj(S0[j]) * hk
                lo, hi = cosrange(angle(pk) + c[k], w[k])
                err = (ρ[j] + sum(chord, w)) * (1 + fc.dev[k + 1, j]) + abs(S0[j]) * fc.dev[k + 1, j]
                relo = abs(pk) * lo - err; rehi = abs(pk) * hi + err
                tot += 2 * max(abs(1 - relo), abs(1 - rehi)) * w[l]
            else
                hh = fc.h[l + 1, j, 1] * conj(fc.h[k + 1, j, 1])
                ang = angle(hh) + cc[k + 1] - cc[l + 1]
                lo, hi = cosrange(ang, w[k] + w[l])
                tot += 2 * (max(abs(lo), abs(hi)) * abs(hh) + fc.dev[l + 1, j] + fc.dev[k + 1, j]) * w[l]
            end
        end
        dJ[j, k] = tot
    end
    J1 = [Jc[a, b] - Jm[a, b] for a in 1:6, b in 1:5]
    YJ1 = [sum(Y[i, a] * J1[a, b] for a in 1:6) for i in 1:5, b in 1:5]
    Ys = [Y[i, b] - sum(YJ1[i, a] * Y[a, b] for a in 1:5) for i in 1:5, b in 1:6]      # Taylor model in s
    Ymag = [sup(mag(fbound(Ys[i, a]))) for i in 1:5, a in 1:6]
    nrm = 0.0
    for i in 1:5
        rs = 0.0
        for jj in 1:5
            m0 = fbound((i == jj ? 1.0 : 0.0) - sum(Ys[i, a] * Jc[a, jj] for a in 1:6))
            rs += sup(mag(m0)) + sum(Ymag[i, a] * dJ[a, jj] for a in 1:6)
        end
        nrm = max(nrm, rs)
    end
    nrm < 1 - MARGIN
end

"""Krawczyk exclusion at the centre carrier (fc0 = centre_only(...)): with rows chosen at c,
Y = J(c)^{-1} (float), K(B) = c - Y F(c) + (I - Y J(B)) (B - c).  If K_i ∩ B_i = ∅ for some i then
B has no solution of the 5 rows at s = 0, hence no centre ray.  F(c), J(c) are enclosed using
S_j(c) ∈ disc(S0_j, ρ_j) and |∂_k S_j - conj(h_kj) i z_k| ≤ dev_kj; J(B) - J(c) as in regular_fast."""
function krawczyk_exclude0(fc0::FastCell, c, w)
    z = ComplexF64[1.0; [cis(c[k]) for k in 1:5]]
    S0, ρ = s_disc(fc0, z)
    smax = smax_fast(fc0, S0, ρ, w)
    # J(c) centre values and error radii
    Jm = zeros(6, 5); Je = zeros(6, 5)
    for j in 1:6, k in 1:5
        dS = conj(fc0.h[k + 1, j, 1]) * 1im * z[k + 1]
        Jm[j, k] = 2 * real(conj(S0[j]) * dS)
        Je[j, k] = 2 * (ρ[j] * (1 + fc0.dev[k + 1, j]) + abs(S0[j]) * fc0.dev[k + 1, j]) + 1e-12
    end
    Y = pinv(Jm)
    Flo = [abs(S0[j])^2 - 6 - (2 * abs(S0[j]) * ρ[j] + ρ[j]^2) for j in 1:6] .- 1e-12
    Fhi = [abs(S0[j])^2 - 6 + (2 * abs(S0[j]) * ρ[j] + ρ[j]^2) for j in 1:6] .+ 1e-12
    for i in 1:5
        yflo = 0.0; yfhi = 0.0
        for a in 1:6
            y = Y[i, a]
            yflo += y > 0 ? y * Flo[a] : y * Fhi[a]; yfhi += y > 0 ? y * Fhi[a] : y * Flo[a]
        end
        spread = 0.0
        for jj in 1:5
            m = (i == jj ? 1.0 : 0.0) - sum(Y[i, a] * Jm[a, jj] for a in 1:6)
            e = sum(abs(Y[i, a]) * Je[a, jj] for a in 1:6)
            d = 0.0
            for j in 1:6
                tot = 0.0
                for l in 1:5
                    if l == jj
                        tot += 2 * (1 + smax[j]) * w[l]
                    else
                        hh = fc0.h[l + 1, j, 1] * conj(fc0.h[jj + 1, j, 1])
                        lo, hi = cosrange(angle(hh) + c[jj] - c[l], w[jj] + w[l])
                        tot += 2 * (max(abs(lo), abs(hi)) * abs(hh) + fc0.dev[l + 1, j] + fc0.dev[jj + 1, j]) * w[l]
                    end
                end
                d += abs(Y[i, j]) * tot
            end
            spread += (abs(m) + e + d) * w[jj]
        end
        Klo = c[i] - yfhi - spread - MARGIN; Khi = c[i] - yflo + spread + MARGIN
        (Khi < c[i] - w[i] || Klo > c[i] + w[i]) && return true
    end
    false
end

# ---------------------------------------------------------------- sub-cells (joint φ × s search)
# A sub-cell is s ∈ m + h·[-1,1]^4.  An order-2 polynomial p(s) is re-expanded exactly in the new
# normalised variable t (s = m + h t); the remainder (valid on the whole cell) is kept.  Float
# rounding of the re-expansion is ≤ 1e-14·Σ|coefficients| and is added to the remainder.
function restrict2(c::AbstractVector{T}, m, h) where T
    tab = FastTM.table(2); N = tab.N
    out = zeros(T, N)
    for α in 1:N
        e = tab.exps[α]; cα = c[α]; cα == 0 && continue
        # monomial Π_i (m_i + h_i t_i)^{e_i}, total degree ≤ 2: expand explicitly
        idx = [i for i in 1:4 for _ in 1:e[i]]
        if isempty(idx)
            out[1] += cα
        elseif length(idx) == 1
            i = idx[1]; out[1] += cα * m[i]
            out[tab.index[Tuple(Int.(1:4 .== i))]] += cα * h[i]
        else
            i, j = idx
            out[1] += cα * m[i] * m[j]
            out[tab.index[Tuple(Int.(1:4 .== i))]] += cα * h[i] * m[j]
            out[tab.index[Tuple(Int.(1:4 .== j))]] += cα * m[i] * h[j]
            out[tab.index[Tuple(Int.(1:4 .== i) .+ Int.(1:4 .== j))]] += cα * h[i] * h[j]
        end
    end
    out
end
"""FastCell and order-2 Taylor models of H on the sub-cell m + h[-1,1]^4 (fc, H2 over the cell)."""
function restrict(fc::FastCell, H2, m, h)
    N = fc.N; @assert N == FastTM.tmlen(2)
    hh = zeros(ComplexF64, 6, 6, N); rem = copy(fc.rem); dev = zeros(6, 6)
    H2s = similar(H2)
    for k in 1:6, j in 1:6
        v = restrict2(view(fc.h, k, j, :), m, h)
        pad = 1e-14 * sum(abs, view(fc.h, k, j, :))
        hh[k, j, :] .= v; rem[k, j] += 2pad
        dev[k, j] = sum(abs(v[α]) for α in 2:N) + rem[k, j]
        re = FTM{2}(real.(v), FastTM.up(remainder_radius(H2[k, j].re) + pad))
        im = FTM{2}(imag.(v), FastTM.up(remainder_radius(H2[k, j].im) + pad))
        H2s[k, j] = CTM(re, im)
    end
    FastCell(N, hh, rem, dev), H2s
end
"""Which part blocks exclusion at this box: :s (cell variation ρ_j dominates) or :φ (box width)."""
function blocker(fc::FastCell, c, w)
    z = ComplexF64[1.0; [cis(c[k]) for k in 1:5]]
    _, ρ = s_disc(fc, z)
    # only the s-dependent part of ρ_j shrinks when the sub-cell is split; the remainder does not
    ρs = [ρ[j] - sum(fc.rem[k, j] for k in 1:6) for j in 1:6]
    maximum(ρs) > sum(chord, w) ? :s : :φ
end
