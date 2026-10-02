# REVIEW DRAFT, not used in production: the rays certificate with outward-interval acceptance.
#
# The production rays path (complete.jl) accepts boxes by Float64 tests with an a-priori rounding margin
# (fastexcl.jl: excluded_fast, regular_fast, krawczyk_exclude0) and by ghost tubes (lsred.jl).  Here every
# acceptance is re-established in outward interval arithmetic; the float tests only propose:
#   :out      verified_excluded (cover.jl, the ClusterCover acceptance test) on the exactly re-expanded
#             sub-cell model (subcover);
#   :regular  ‖I − Y J‖∞ < 1 with J the interval Jacobian over (φ-box) × (interval enclosure of H over the
#             sub-cell) and Y = pinv(mid J) a point matrix;
#   centre    a box without a centre ray: verified_excluded on the centre carrier, or an interval Krawczyk
#             exclusion K(B) ∩ B = ∅ with the centre carrier H(0) ∈ h₀ ± rem.
# Ghost tubes are not used: a cell that needs them fails here and goes to the cover certificate.
# The theorem is that of complete.jl (fold exclusion + covering map + centre rays + Krawczyk tubes).
const CERTDIR = joinpath(@__DIR__, "..")
isdefined(Main, :fold_search) || include(joinpath(CERTDIR, "complete.jl"))
isdefined(Main, :certify_cell_cover) || include(joinpath(CERTDIR, "cover.jl"))
using LinearAlgebra

"""Interval enclosure of H over the (sub-)cell of a CoverCell: h₀ ± dev per entry (square enclosure of the disc)."""
hiv_of(cc::CoverCell) = [Complex(real(cc.hc[k, j, 1]) + interval(-sup(cc.dev[k, j]), sup(cc.dev[k, j])),
                                 imag(cc.hc[k, j, 1]) + interval(-sup(cc.dev[k, j]), sup(cc.dev[k, j]))) for k in 1:6, j in 1:6]

"""Centre-carrier enclosure: H(0) ∈ h₀ ± rem (the polynomial part is exactly h₀ at s = 0)."""
hiv0_of(cc::CoverCell) = [Complex(real(cc.hc[k, j, 1]) + interval(-sup(cc.rem[k, j]), sup(cc.rem[k, j])),
                                  imag(cc.hc[k, j, 1]) + interval(-sup(cc.rem[k, j]), sup(cc.rem[k, j]))) for k in 1:6, j in 1:6]

"""Rigorous regularity: ‖I − Y J‖∞ < 1 over the phase box B (intervals) and every H in `Hiv`."""
function verified_regular(B, Hiv)
    J = hjac(B, Hiv)                                               # 6×5 intervals
    Y = pinv([mid(J[j, k]) for j in 1:6, k in 1:5])                 # point preconditioner, exact as intervals
    nrm = interval(0.0)
    for i in 1:5
        rs = interval(0.0)
        for k in 1:5
            m = (i == k ? interval(1.0) : interval(0.0)) - sum(interval(Y[i, a]) * J[a, k] for a in 1:6)
            rs += interval(mag(m))
        end
        nrm = max(nrm, rs)
    end
    sup(nrm) < 1
end

"""Rigorous: no zero of the ray equations of the centre carrier in B (interval Krawczyk, K(B) ∩ B = ∅)."""
function verified_krawczyk_exclude0(B, Hiv0)
    c = [interval(mid(b)) for b in B]
    F = hf(c, Hiv0); J = hjac(B, Hiv0)
    Y = pinv([mid(J[j, k]) for j in 1:6, k in 1:5])
    for i in 1:5
        Ki = c[i] - sum(interval(Y[i, a]) * F[a] for a in 1:6) +
             sum(((i == k ? interval(1.0) : interval(0.0)) - sum(interval(Y[i, a]) * J[a, k] for a in 1:6)) * (B[k] - c[k]) for k in 1:5)
        (sup(Ki) < inf(B[i]) || inf(Ki) > sup(B[i])) && return true
    end
    false
end

"""Rigorous chord (Lipschitz) exclusion, the interval version of excluded_fast's first test.  For the true
Hadamard H(s) all entries are unimodular, so |S_j(c+δ, s) − S_j(c, s)| ≤ Σ_k |e^{iδ_k} − 1| ≤ Σ_k 2 sin(w_k/2);
and S_j(c, s) ∈ S0_j ± ρ_j over the (sub-)cell, with S0_j and ρ_j enclosed in intervals."""
function verified_chord_excluded(cc::CoverCell, c, w)
    z = [eic(0.0); eic.(c)]; sq6 = sqrt(interval(6.0))
    L = sum(2 * sin(interval(w[k]) / 2) for k in 1:5)
    for j in 1:6
        S0 = sum(z[k] * conj(cc.hc[k, j, 1]) for k in 1:6)
        ρj = sum(cmodi(sum(z[k] * conj(cc.hc[k, j, a]) for k in 1:6)) for a in 2:cc.fc.N) + sum(cc.rem[:, j])
        m = cmodi(S0)
        (sup(m + ρj + L) < inf(sq6) || inf(m - ρj - L) > sup(sq6)) && return true
    end
    false
end
"""verified_excluded (cover.jl) with the tighter rigorous bound |e^{iδ} − 1| ≤ 2 sin(w/2) (|δ| ≤ w ≤ π) on the
seed-dependent term, as excluded_fast uses; otherwise identical."""
function verified_arc_excluded(cc::CoverCell, c, w)
    hc = cc.hc; z = [eic(0.0); eic.(c)]
    zf = [1.0; cis.(c)]; sf, _ = s_disc(cc.fc, zf); order = sortperm(abs.(abs.(sf) .- sqrt(6)); rev = true)
    for j in order
        sc = sum(z[k] * conj(hc[k, j, 1]) for k in 1:6)
        er = sum(cmodi(sum(z[k] * conj(hc[k, j, a]) for k in 1:6)) for a in 2:cc.fc.N) + sum(cc.rem[:, j])
        unit = eic(angle(sf[j])); rot = conj(unit) * sc
        re = real(rot) + interval(-sup(er), sup(er)); im = imag(rot) + interval(-sup(er), sup(er))
        for k in 1:5
            vv = conj(unit) * conj(hc[k + 1, j, 1]) * z[k + 1]
            rr = cmodi(vv); aa = atan(imag(vv), real(vv)); ar = aa + interval(-w[k], w[k])
            wk = min(w[k], sup(interval(pi)))
            dv = cc.dev[k + 1, j] * (w[k] >= 3 ? interval(2.0) : 2 * sin(interval(wk) / 2))
            re += rr * cos(ar) - real(vv) + interval(-sup(dv), sup(dv))
            im += rr * sin(ar) - imag(vv) + interval(-sup(dv), sup(dv))
        end
        sq = re^2 + im^2
        (sup(sq) < 6 || inf(sq) > 6) && return true
    end
    false
end
verified_exclusion(cc, c, w) = verified_chord_excluded(cc, c, w) || verified_arc_excluded(cc, c, w) || verified_excluded(cc, c, w)
const REJ = Dict{Symbol,Int}(:excl => 0, :reg => 0)

"""Exact interval port of regular_fast (fastexcl.jl): same test (Taylor-model preconditioner Y(s), closed-form bound on
the φ-variation dJ of the Jacobian), with the float parts (S₀, ρ from s_disc, the cos-range and chord bounds, the final
norm) in outward interval arithmetic and the cell data from the exactly re-expanded sub-cell CoverCell.  The Taylor-
model parts (S_at, J_at, Y(s)) are already rigorous FastTM/interval computations."""
function verified_regular_tm(ccs::CoverCell, H2s, c, w)
    hc = ccs.hc; N = ccs.fc.N
    z = [Complex(interval(1.0), interval(0.0)); eic.(c)]
    S0 = [sum(z[k] * conj(hc[k, j, 1]) for k in 1:6) for j in 1:6]
    ρ = [sum(cmodi(sum(z[k] * conj(hc[k, j, a]) for k in 1:6)) for a in 2:N) + sum(ccs.rem[:, j]) for j in 1:6]
    Lw = sum(2 * sin(interval(min(w[k], 3.0)) / 2) for k in 1:5)
    zi = zvec_ic(c); S = S_at(c, H2s, zi); Jc = J_at(c, H2s, S, zi)
    Jm = [coeffs(Jc[j, k])[1] for j in 1:6, k in 1:5]
    Y = pinv(Jm)
    dJ = fill(interval(0.0), 6, 5)
    for j in 1:6, k in 1:5
        tot = interval(0.0)
        for l in 1:5
            if l == k
                pk = conj(S0[j]) * conj(hc[k + 1, j, 1])
                cr = cos(atan(imag(pk), real(pk)) + interval(c[k]) + interval(-w[k], w[k]))
                err = (ρ[j] + Lw) * (1 + ccs.dev[k + 1, j]) + cmodi(S0[j]) * ccs.dev[k + 1, j]
                A = cmodi(pk) * cr
                X = interval(inf(A) - sup(err), sup(A) + sup(err))
                tot += 2 * interval(mag(1 - X)) * interval(w[l])
            else
                hh = hc[l + 1, j, 1] * conj(hc[k + 1, j, 1])
                cr = cos(atan(imag(hh), real(hh)) + interval(c[k]) - interval(c[l]) + interval(-(w[k] + w[l]), w[k] + w[l]))
                tot += 2 * (interval(mag(cr)) * cmodi(hh) + ccs.dev[l + 1, j] + ccs.dev[k + 1, j]) * interval(w[l])
            end
        end
        dJ[j, k] = tot
    end
    J1 = [Jc[a, b] - Jm[a, b] for a in 1:6, b in 1:5]
    YJ1 = [sum(Y[i, a] * J1[a, b] for a in 1:6) for i in 1:5, b in 1:5]
    Ys = [Y[i, b] - sum(YJ1[i, a] * Y[a, b] for a in 1:5) for i in 1:5, b in 1:6]
    Ymag = [interval(sup(mag(fbound(Ys[i, a])))) for i in 1:5, a in 1:6]
    nrm = interval(0.0)
    for i in 1:5
        rs = interval(0.0)
        for jj in 1:5
            m0 = fbound((i == jj ? 1.0 : 0.0) - sum(Ys[i, a] * Jc[a, jj] for a in 1:6))
            rs += interval(mag(m0)) + sum(Ymag[i, a] * dJ[a, jj] for a in 1:6)
        end
        nrm = max(nrm, rs)
    end
    sup(nrm) < 1
end

"""fold_search with verified acceptance and no ghost tubes (same split rules, same phase chart)."""
function fold_search_verified(cell; n0 = 4, wmin = 2e-3, hmin = 1 / 64, qbb = 2, budget = 4_000_000, deadline = Inf, wreg = 0.13)
    H2 = map(z -> CTM(truncate_order(z.re, qbb), truncate_order(z.im, qbb)), cell.H)
    fc = FastCell(cell.H, qbb); cc = CoverCell(cell.H)
    subs = Dict{Tuple{Vector{Float64},Vector{Float64}},Any}()
    getsub(m, hs) = get!(() -> (ccs = subcover(cc, m, hs); (ccs, hiv_of(ccs))), subs, (m, hs))
    p = sup(interval(pi)); h = 2p / n0
    edge(i) = i == 0 ? -p : i == n0 ? p : -p + h * i
    root = (fc, H2, zeros(4), ones(4))
    stack = [(B, root) for B in vec([[interval(edge(i[k]), edge(i[k] + 1)) for k in 1:5] for i in Iterators.product(ntuple(_ -> 0:n0-1, 5)...)])]
    reg = Any[]; unres = Any[]; nt = 0; nrej = 0
    while !isempty(stack)
        B, sc = pop!(stack); nt += 1
        (nt > budget || (nt % 1024 == 0 && time() > deadline)) && return reg, vcat(unres, [x[1] for x in stack], [B]), nt, nrej
        fcs, H2s, m, hs = sc
        c = [mid(b) for b in B]; w = [radius(b) for b in B]
        wv = [max(sup(interval(sup(B[k])) - interval(c[k])), sup(interval(c[k]) - interval(inf(B[k])))) for k in 1:5]
        if excluded_fast(fcs, c, w)
            ccs, _ = getsub(m, hs)
            verified_exclusion(ccs, c, wv) && continue
            nrej += 1; REJ[:excl] += 1
        elseif maximum(diam.(B)) <= wreg && regular_fast(fcs, H2s, c, w)
            ccs, Hivs = getsub(m, hs)
            (verified_regular_tm(ccs, H2s, c, wv) || verified_regular(B, Hivs)) ? (push!(reg, (B, m, hs)); continue) : (nrej += 1; REJ[:reg] += 1)
        end
        k = argmax(diam.(B))
        split_s = maximum(hs) > hmin && diam(B[k]) < 0.13 && blocker(fcs, c, w) == :s
        if split_s
            i = argmax(hs); h2 = copy(hs); h2[i] /= 2
            for sgn in (-1, 1)
                m2 = copy(m); m2[i] += sgn * h2[i]
                push!(stack, (B, (restrict(fc, H2, m2, h2)..., m2, h2)))
            end
        elseif diam(B[k]) < wmin
            push!(unres, B)
        else
            mm = mid(B[k]); B1 = copy(B); B2 = copy(B)
            B1[k] = interval(inf(B[k]), mm); B2[k] = interval(mm, sup(B[k])); push!(stack, (B1, sc), (B2, sc))
        end
    end
    reg, unres, nt, nrej
end

"""centre_rays with verified exclusion of ray-free boxes (verified_excluded or interval Krawczyk)."""
function centre_rays_verified(reg, cell)
    fc0 = centre_only(FastCell(cell.H, 2)); cc = CoverCell(cell.H)
    # centre carrier as a CoverCell with zero s-dependence: H(0) ∈ h₀ ± rem (dev = rem)
    N = cc.fc.N; h0 = zeros(ComplexF64, 6, 6, N); h0[:, :, 1] .= cc.fc.h[:, :, 1]
    hc0 = fill(Complex(interval(0.0), interval(0.0)), 6, 6, N); hc0[:, :, 1] .= cc.hc[:, :, 1]
    remf = [sup(cc.rem[k, j]) for k in 1:6, j in 1:6]
    cc0 = CoverCell(FastCell(N, h0, remf, remf), hc0, cc.rem, copy(cc.rem))
    Hiv0 = hiv0_of(cc)
    inbox(B, c, r, rad) = (p0 = [wrapnear(centre(r.phip[k]), c[k]) for k in 1:5];
                           all(p0[k] - rad < inf(B[k]) && sup(B[k]) < p0[k] + rad for k in 1:5))
    holds(B, c, r) = (p0 = [wrapnear(centre(r.phip[k]), c[k]) for k in 1:5];
                      all(inf(B[k]) < p0[k] - r.r && p0[k] + r.r < sup(B[k]) for k in 1:5))
    rays = Any[]; pending = copy(reg); nt = 0; cell6 = nothing
    while !isempty(pending)
        B = pop!(pending); nt += 1
        c = boxmid(B); wB = [radius(b) for b in B]
        wv = [max(sup(interval(sup(B[k])) - interval(c[k])), sup(interval(c[k]) - interval(inf(B[k])))) for k in 1:5]
        any(r -> inbox(B, c, r, r.rmax) || holds(B, c, r), rays) && continue
        if excluded_fast(fc0, c, wB) || krawczyk_exclude0(fc0, c, wB)
            (verified_exclusion(cc0, c, wv) || verified_krawczyk_exclude0(B, Hiv0)) && continue
        end
        φ = try newton_centre(c, cell.Hc) catch; nothing end
        if φ !== nothing && maximum(abs.(hf(φ, cell.Hc))) < 1e-9
            φ = [wrapnear(φ[k], c[k]) for k in 1:5]
            if all(inf(B[k]) - 0.05 <= φ[k] <= sup(B[k]) + 0.05 for k in 1:5) &&
               !any(r -> maximum(abs.(mod.(φ .- centre.(r.phip) .+ pi, 2pi) .- pi)) < 1e-7, rays)
                r = hform_certify(φ, cell)
                if !r.ok && cell.q < 6
                    cell6 === nothing && (cell6 = hcell(cell.θ0, cell.ρ; q = 6))
                    r6 = hform_certify(newton_centre(φ, cell6.Hc), cell6)
                    r6.ok && (r = merge(r6, (phip = [truncate_order(x, cell.q) for x in r6.phip],)))
                end
                r.ok || return nothing, nt
                push!(rays, r); push!(pending, B); continue
            end
        end
        k = argmax(diam.(B)); diam(B[k]) < 1e-7 && return nothing, nt
        m = mid(B[k]); B1 = copy(B); B2 = copy(B)
        B1[k] = interval(inf(B[k]), m); B2[k] = interval(m, sup(B[k])); push!(pending, B1, B2)
    end
    rays, nt
end

"""Verified rays certificate over one cell (same contract as certify_cell_rays)."""
function certify_cell_rays_verified(θ0, ρ; q = 4, budget = 4_000_000, deadline = Inf)
    cell = hcell(θ0, ρ; q = q)
    t1 = @elapsed (reg, unres, nt, nrej) = fold_search_verified(cell; budget = budget, deadline = deadline)
    isempty(unres) || return (ok = false, reason = time() > deadline ? :time_limit : :fold_or_unresolved, nunres = length(unres), nt = nt, nrej = nrej)
    reg0 = [B for (B, m, h) in reg if all(abs(m[i]) <= h[i] for i in 1:4)]
    t2 = @elapsed (rays, nt2) = centre_rays_verified(reg0, cell)
    rays === nothing && return (ok = false, reason = :centre_ray_uncertified, nt = nt, nrej = nrej)
    (ok = true, rays = rays, nreg = length(reg), nt = nt, nt2 = nt2, nrej = nrej, t_fold = t1, t_centre = t2, cell = cell)
end
