# Cover certificate: quartet exclusion over a seed cell without root counting or regularity
# (ProvenResults/CommonRays/ClusterCover/PROOF.md, "cluster cover" theorem).
#
# For a seed cell X (centre θ0, half-width ρ) with H₊ enclosed by its Taylor model:
#  1. Branch and bound over the phase torus T⁵ (chart [-p, p]⁵, p = sup π).  A box is accepted as
#     EXCLUDED only by an outward-interval test that some |S_j|² omits 6 on box × X (the fast float test
#     is only a proposal filter, as in the ClusterCover replay).  Boxes of width below `wstop` that are
#     not excluded are kept.
#  2. The kept boxes are grouped into connected components (periodic adjacency); each component's
#     lifted bounding box, widened outward, is a LABEL.  Every kept box is checked rigorously to lie in
#     its label.  So every common ray, for every θ in X, lies in some label (coverage).
#  3. Each label has half-widths ≤ RCAP, with 5·RCAP² < 3(1 − 1/√6), hence capacity one (|x†y|² > 1/6
#     inside; PROOF.md §2 (1)-(2)).
#  4. Pair enclosures |x†y|² ∈ [max(0,|g|-e)², min(1,|g|+e)²] (PROOF.md (3)) give the orthogonality
#     graph O (0 in the enclosure) and unbiasedness graph U (1/6 in the enclosure).  An exhaustive search
#     for two disjoint O-6-cliques with all cross pairs U-edges; none ⇒ no quartet over X.
# Any cap (nodes, time, cliques) or an oversized label returns an inconclusive result, never a pass.
isdefined(Main, :hcell) || include("hform.jl")
isdefined(Main, :FastCell) || include("fastexcl.jl")
using LinearAlgebra
include("box_capacity.jl")

const RCAP = 0.59                       # label half-width cap (capacity one holds below 0.595)
const COVER_WIDTHS = (1 / 8, 1 / 16, 1 / 32, 1 / 64, 1 / 128, 1 / 256)   # iterative-deepening box widths
const PCHART = sup(interval(pi))

eic(c) = Complex(cos(interval(c)), sin(interval(c)))
cmodi(z) = sqrt(real(z)^2 + imag(z)^2)

struct CoverCell
    fc::FastCell
    hc::Array{Complex{Interval{Float64}},3}   # exact interval copies of the order-2 coefficients
    rem::Matrix{Interval{Float64}}            # remainder radius (re + im) per entry
    dev::Matrix{Interval{Float64}}            # bound on |H_kj(s) - h_kj0| over the cell
end
function CoverCell(H)
    fc = FastCell(H, 2)
    hc = Complex{Interval{Float64}}.(ic.(fc.h))
    rem = [interval(remainder_radius(truncate_order(H[i, j].re, 2))) + interval(remainder_radius(truncate_order(H[i, j].im, 2))) for i in 1:6, j in 1:6]
    dev = [sum(cmodi(hc[i, j, a]) for a in 2:fc.N) + rem[i, j] for i in 1:6, j in 1:6]
    CoverCell(fc, hc, rem, dev)
end

"""Outward-interval exclusion (the ClusterCover acceptance test): true iff for some column j the enclosure
of |S_j|² over the phase box (centre c, half-widths w) × the whole cell omits 6."""
function verified_excluded(cc::CoverCell, c, w)
    hc = cc.hc; z = [eic(0.0); eic.(c)]
    zf = [1.0; cis.(c)]; sf, _ = s_disc(cc.fc, zf); order = sortperm(abs.(abs.(sf) .- sqrt(6)); rev = true)
    for j in order
        sc = sum(z[k] * conj(hc[k, j, 1]) for k in 1:6)
        er = sum(cmodi(sum(z[k] * conj(hc[k, j, a]) for k in 1:6)) for a in 2:cc.fc.N) + sum(cc.rem[:, j])
        unit = eic(angle(sf[j])); rot = conj(unit) * sc                 # any exact rotation is legitimate
        re = real(rot) + interval(-sup(er), sup(er)); im = imag(rot) + interval(-sup(er), sup(er))
        for k in 1:5
            vv = conj(unit) * conj(hc[k + 1, j, 1]) * z[k + 1]
            rr = cmodi(vv); aa = atan(imag(vv), real(vv)); ar = aa + interval(-w[k], w[k])
            dv = cc.dev[k + 1, j] * min(2.0, w[k])
            re += rr * cos(ar) - real(vv) + interval(-sup(dv), sup(dv))
            im += rr * sin(ar) - imag(vv) + interval(-sup(dv), sup(dv))
        end
        sq = re^2 + im^2
        (sup(sq) < 6 || inf(sq) > 6) && return true
    end
    false
end

"""The cover cell restricted to the sub-cell s ∈ m + h[-1,1]⁴ of the normalised seed cube.  The interval
coefficients are re-expanded exactly (restrict2 on Complex{Interval}; m, h are dyadic); the float FastCell
(proposal filter only) by the float re-expansion.  Remainders are those of the whole cell."""
function subcover(cc::CoverCell, m, h)
    all(==(1.0), h) && all(==(0.0), m) && return cc
    N = cc.fc.N; hh = zeros(ComplexF64, 6, 6, N); rem = copy(cc.fc.rem); devf = zeros(6, 6)
    hc = similar(cc.hc); dev = similar(cc.dev)
    for k in 1:6, j in 1:6
        v = restrict2(view(cc.fc.h, k, j, :), m, h); pad = 1e-14 * sum(abs, view(cc.fc.h, k, j, :))
        hh[k, j, :] .= v; rem[k, j] += 2pad; devf[k, j] = sum(abs(v[α]) for α in 2:N) + rem[k, j]
        hc[k, j, :] .= restrict2(collect(view(cc.hc, k, j, :)), m, h)
        dev[k, j] = sum(cmodi(hc[k, j, a]) for a in 2:N) + cc.rem[k, j]
    end
    CoverCell(FastCell(N, hh, rem, devf), hc, cc.rem, dev)
end

# ---------------------------------------------------------------- faster exact exclusion (under review)
# CERT_FASTVERIFY=1 replaces verified_excluded by verified_excluded_v2: the same test with (i) the phase-term
# angles enclosed without interval atan2 and (ii) the cell-variation radius bounded from a float sum plus
# explicit rounding-error terms.  The arguments are in the comments below
# (to be reviewed before the switch is turned on in production).
const FASTVERIFY = get(ENV, "CERT_FASTVERIFY", "0") == "1"
# (i) Phase angles without interval atan2.  For the centre part v ∈ V (a complex
# interval) of each phase term, the original encloses arg v by atan(Im V, Re V).  Here: take a float angle a_f
# of mid(V) and the exact rotation W = V·e^{-i a_f} (interval arithmetic).  If inf Re W > 0 then every v ∈ V
# has φ = arg v − a_f ∈ (−π/2, π/2) and |φ| ≤ (π/2)|sin φ| = (π/2)|Im(v e^{-i a_f})|/|v|
# ≤ (π/2)·sup|Im W| / inf Re W  (|v| ≥ Re(v e^{-i a_f}) = Re w).  So arg v ∈ a_f + [−e, e] with e that bound, and
# arg v + [−w_k, w_k] ⊆ a_f + [−w_k − e, w_k + e].  Otherwise fall back to atan.  Everything else is verbatim.
function arg_enclosure(vv)
    af = atan(sup(imag(vv)) / 2 + inf(imag(vv)) / 2, sup(real(vv)) / 2 + inf(real(vv)) / 2)
    W = vv * eic(-af)
    if inf(real(W)) > 0
        e = sup(interval(pi) / 2 * max(abs(inf(imag(W))), abs(sup(imag(W)))) / interval(inf(real(W))))
        return interval(af), e
    end
    atan(imag(vv), real(vv)), 0.0
end
function verified_excluded_fa(cc::CoverCell, c, w)
    hc = cc.hc; z = [eic(0.0); eic.(c)]
    zf = [1.0; cis.(c)]; sf, _ = s_disc(cc.fc, zf); order = sortperm(abs.(abs.(sf) .- sqrt(6)); rev = true)
    for j in order
        sc = sum(z[k] * conj(hc[k, j, 1]) for k in 1:6)
        er = sum(cmodi(sum(z[k] * conj(hc[k, j, a]) for k in 1:6)) for a in 2:cc.fc.N) + sum(cc.rem[:, j])
        unit = eic(angle(sf[j])); rot = conj(unit) * sc
        re = real(rot) + interval(-sup(er), sup(er)); im = imag(rot) + interval(-sup(er), sup(er))
        for k in 1:5
            vv = conj(unit) * conj(hc[k + 1, j, 1]) * z[k + 1]
            rr = cmodi(vv); aa, e = arg_enclosure(vv); ar = aa + interval(-(w[k] + e), w[k] + e)
            dv = cc.dev[k + 1, j] * min(2.0, w[k])
            re += rr * cos(ar) - real(vv) + interval(-sup(dv), sup(dv))
            im += rr * sin(ar) - imag(vv) + interval(-sup(dv), sup(dv))
        end
        sq = re^2 + im^2
        (sup(sq) < 6 || inf(sq) > 6) && return true
    end
    false
end

# ---------------------------------------------------------------------------------------------------------
# Second change: the cell-variation radius er_j = Σ_{a≥2} |Σ_k z_k conj(h_kja)| + Σ_k rem_kj without complex
# interval products.  Write z_k = z̃_k + ζ_k and h_kja = h̃_kja + η_kja with z̃, h̃ the (float) midpoints of the
# interval enclosures and |ζ_k| ≤ r_z, |η_kja| ≤ r_kja (diameters, rounded up).  With u = 2^-53:
#   |Σ_k z_k conj(h_kja)| ≤ |Σ_k z̃_k conj(h̃_kja)| + Σ_k (r_z |h̃_kja| + |z̃_k| r_kja + r_z r_kja);
#   the float evaluation of S̃_a = Σ_k z̃_k conj(h̃_kja) (2 products + 1 sum per component per term, 5 sums)
#   errs by at most 2γ₇ Σ_k |z̃_k||h̃_kja| in modulus, γ_n = nu/(1−nu); fl(sqrt(fl(x²)+fl(y²))) and the outer
#   14-term float sum of nonnegative numbers err by relative factors below 4u and 15u.
# Using |z̃_k| ≤ 1 + r_z ≤ 2 and γ₇ < 8u, all this is below the generous
#   er_j ≤ F_j (1 + 32u) + (32u + 2 r_z)(H_j + R_j) + 2 R_j + Σ_k rem_kj,
# with F_j the float result, H_j = Σ_{a,k} (|Re h̃_kja| + |Im h̃_kja|) ≥ Σ_{a,k} |h̃_kja| and R_j = Σ_{a,k} r_kja
# (float sums of ≤ 168 nonnegative terms, then × (1 + 256u) for their own rounding).  The final combination is
# done in interval arithmetic.  See review/FAST_VERIFY.md for the full argument.
const U53 = 2.0^-53
diamup(x) = (sup(x) - inf(x)) * (1 + 4U53)
function er_bound(cc::CoverCell, zt, rz, j)
    N = cc.fc.N; F = 0.0; H = 0.0; R = 0.0
    @inbounds for a in 2:N
        x = 0.0; y = 0.0
        for k in 1:6
            h = cc.hc[k, j, a]; hr = mid(real(h)); hi = mid(imag(h)); zr = real(zt[k]); zi = imag(zt[k])
            x += zr * hr + zi * hi; y += zi * hr - zr * hi                  # z̃ conj(h̃)
            H += abs(hr) + abs(hi); R += diamup(real(h)) + diamup(imag(h))
        end
        F += sqrt(x * x + y * y)
    end
    Fi = interval(F) * (1 + interval(32U53)); Hi = interval(H) * (1 + interval(256U53)); Ri = interval(R) * (1 + interval(256U53))
    Fi + (interval(32U53) + 2 * interval(rz)) * (Hi + Ri) + 2 * Ri + sum(cc.rem[:, j])
end
function verified_excluded_v2(cc::CoverCell, c, w)
    hc = cc.hc; z = [eic(0.0); eic.(c)]
    zt = [Complex(mid(real(zk)), mid(imag(zk))) for zk in z]
    rz = maximum(diamup(real(zk)) + diamup(imag(zk)) for zk in z)
    zf = [1.0; cis.(c)]; sf, _ = s_disc(cc.fc, zf); order = sortperm(abs.(abs.(sf) .- sqrt(6)); rev = true)
    for j in order
        sc = sum(z[k] * conj(hc[k, j, 1]) for k in 1:6)
        er = er_bound(cc, zt, rz, j)
        unit = eic(angle(sf[j])); rot = conj(unit) * sc
        re = real(rot) + interval(-sup(er), sup(er)); im = imag(rot) + interval(-sup(er), sup(er))
        for k in 1:5
            vv = conj(unit) * conj(hc[k + 1, j, 1]) * z[k + 1]
            rr = cmodi(vv); aa, e = arg_enclosure(vv); ar = aa + interval(-(w[k] + e), w[k] + e)
            dv = cc.dev[k + 1, j] * min(2.0, w[k])
            re += rr * cos(ar) - real(vv) + interval(-sup(dv), sup(dv))
            im += rr * sin(ar) - imag(vv) + interval(-sup(dv), sup(dv))
        end
        sq = re^2 + im^2
        (sup(sq) < 6 || inf(sq) > 6) && return true
    end
    false
end

"""Joint branch and bound over T⁵ (chart [-p, p]⁵) × the seed cell.  A node is a phase box and a sub-cell
(m, h) of the normalised seed cube; it is accepted as excluded only by `verified_excluded` on that
sub-cell.  A node that is not excluded is split in s when the seed variation blocks exclusion (heuristic
`blocker`, sub-cells down to hmin), else in φ; phase boxes below `wstop` are kept.  Returns (status,
kept nodes [(lo, hi, m, h)], nodes, rejected proposals); status :complete, :budget or :time.  Every
(φ, θ) with φ a common ray at θ lies in a kept node's phase box."""
function cover_search(cc::CoverCell; n0 = 4, wstop = 1 / 64, hmin = 1 / 16, budget = 4_000_000, deadline = Inf,
                      start = nothing, subs = Dict{Tuple{Vector{Float64},Vector{Float64}},CoverCell}(), verifier = verified_excluded)
    p = PCHART; hgrid = 2p / n0
    z4 = zeros(4); o4 = ones(4)
    stack = start !== nothing ? copy(start) :
            [(Float64[-p + hgrid * i[k] for k in 1:5], Float64[i[k] == n0 - 1 ? p : -p + hgrid * (i[k] + 1) for k in 1:5], z4, o4)
             for i in vec(collect(Iterators.product(ntuple(_ -> 0:n0-1, 5)...)))]
    getsub(m, h) = get!(() -> subcover(cc, m, h), subs, (m, h))
    kept = Tuple{Vector{Float64},Vector{Float64},Vector{Float64},Vector{Float64}}[]; nt = 0; nrej = 0
    while !isempty(stack)
        lo, hi, m, h = pop!(stack); nt += 1
        nt > budget && return (:budget, kept, nt, nrej)
        nt % 1024 == 0 && time() > deadline && return (:time, kept, nt, nrej)
        sc = getsub(m, h)
        c = (lo .+ hi) ./ 2
        w = [max(sup(interval(hi[k]) - interval(c[k])), sup(interval(c[k]) - interval(lo[k]))) for k in 1:5]
        if excluded_fast(sc.fc, c, w)
            verifier(sc, c, w) && continue
            nrej += 1
        end
        splits = maximum(h) > hmin && blocker(sc.fc, c, w) == :s
        k = argmax(hi .- lo)
        if splits
            i = argmax(h); h2 = copy(h); h2[i] /= 2
            m1 = copy(m); m1[i] -= h2[i]; m2 = copy(m); m2[i] += h2[i]
            push!(stack, (lo, hi, m1, h2), (lo, hi, m2, h2))
        elseif hi[k] - lo[k] < wstop
            push!(kept, (lo, hi, m, h))
        else
            mid_ = c[k]; lo2 = copy(lo); lo2[k] = mid_; hi2 = copy(hi); hi2[k] = mid_
            push!(stack, (lo2, hi, m, h), (lo, hi2, m, h))
        end
    end
    (:complete, kept, nt, nrej)
end

# ---------------------------------------------------------------- labels
const TWOPI = 2pi
"""Closed boxes a, b (chart coordinates) touch or overlap on the torus (shifts by 2π, with tolerance)."""
function touches(a, b)
    for k in 1:5
        ok = false
        for s in (-TWOPI, 0.0, TWOPI)
            (a[1][k] <= b[2][k] + s + 1e-9 && b[1][k] + s <= a[2][k] + 1e-9) && (ok = true; break)
        end
        ok || return false
    end
    true
end
"""Connected components of the kept boxes; returns (labels [(centre, radius, member indices)], indices of
kept boxes in components wider than rcap).  Grouping is heuristic; soundness comes from `label_contains`."""
function make_labels(kept; rcap = RCAP, sharp_capacity = false)
    n = length(kept); n == 0 && return (Tuple{Vector{Float64},Vector{Float64},Vector{Int}}[], Int[])
    # Kept boxes are dyadic grid cells (see box_addr), so two touch iff one contains a same-level neighbour
    # cell (offset in {-1,0,1}⁵, periodic) of the finer one.  Look those up by packed address.
    addr = [box_addr(kp[1], kp[2]) for kp in kept]
    pack(j, I) = UInt64(j) << 60 | UInt64(I[1]) << 48 | UInt64(I[2]) << 36 | UInt64(I[3]) << 24 | UInt64(I[4]) << 12 | UInt64(I[5])
    maximum(first, addr) <= 10 || error("make_labels: grid level above 10")
    parent = collect(1:n); find(i) = (while parent[i] != i; parent[i] = parent[parent[i]]; i = parent[i]; end; i)
    unite(a, b) = (ra = find(a); rb = find(b); ra != rb && (parent[ra] = rb))
    at = Dict{UInt64,Int}()
    for (i, (j, I)) in enumerate(addr)
        key = pack(j, I); haskey(at, key) ? unite(i, at[key]) : (at[key] = i)     # same phase box, other sub-cells
    end
    levels = sort(unique(first.(addr)))
    offs = [Tuple(d) for d in Iterators.product(ntuple(_ -> -1:1, 5)...) if any(!=(0), d)]
    seen = Set{UInt64}()
    for (i, (j, I)) in enumerate(addr)
        Nj = 4 << j; empty!(seen)
        for d in offs
            J = ntuple(k -> mod(I[k] + d[k], Nj), 5)
            for jp in levels
                jp > j && break
                key = pack(jp, J .>> (j - jp))
                key in seen && continue; push!(seen, key)
                b = get(at, key, 0); b > 0 && unite(i, b)
            end
        end
    end
    comps = Dict{Int,Vector{Int}}()
    for i in 1:n; push!(get!(comps, find(i), Int[]), i); end
    labels = Tuple{Vector{Float64},Vector{Float64},Vector{Int}}[]; big = Int[]
    for mem in values(comps)
        # lift members coherently relative to the first box's centre, then take the bounding box
        ref = (kept[mem[1]][1] .+ kept[mem[1]][2]) ./ 2
        lo = fill(Inf, 5); hi = fill(-Inf, 5)
        for i in mem
            l, u = kept[i][1], kept[i][2]; cm = (l .+ u) ./ 2
            sh = round.((ref .- cm) ./ TWOPI) .* TWOPI
            lo .= min.(lo, l .+ sh); hi .= max.(hi, u .+ sh)
        end
        c = (lo .+ hi) ./ 2; r = (hi .- lo) ./ 2 .+ 1e-9 .* (1 .+ abs.(c))
        admissible = sharp_capacity ? certified_box_capacity(r) : maximum(r) <= rcap
        admissible ? push!(labels, (c, r, mem)) : append!(big, mem)
    end
    (labels, big)
end
"""Rigorous: the closed box (lo, hi) lies in label (c, r) for some lift (interval arithmetic, interval π)."""
function label_contains(c, r, lo, hi)
    for k in 1:5
        sh = round(Int, ((lo[k] + hi[k]) / 2 - c[k]) / TWOPI)
        D1 = interval(lo[k]) - interval(c[k]) - 2sh * interval(pi)
        D2 = interval(hi[k]) - interval(c[k]) - 2sh * interval(pi)
        (inf(D1) >= -r[k] && sup(D2) <= r[k]) || return false
    end
    true
end

# ---------------------------------------------------------------- graph test
"""Exhaustive 6+6 test on labels.  Returns (:excluded | :candidates | :cap, nO, nU, nbases)."""
function label_graph_test(labels; clique_cap = 200_000, tight_pairs = false)
    n = length(labels); O = falses(n, n); U = falses(n, n); target = interval(1.0) / 6
    for a in 1:n, b in a+1:n
        ca, ra = labels[a][1], labels[a][2]; cb, rb = labels[b][1], labels[b][2]
        g = (1 + sum(Complex(cos(interval(cb[k]) - interval(ca[k])), sin(interval(cb[k]) - interval(ca[k]))) for k in 1:5)) / 6
        e = sum(interval(ra[k]) + interval(rb[k]) for k in 1:5) / 6
        amp = cmodi(g); low = max(0.0, inf(amp - e)); high = min(1.0, sup(amp + e)); B = interval(low, high)^2
        if tight_pairs
            # Direct phase-arc rectangle in a freely chosen rotated frame.
            # Intersect two valid enclosures, so no true graph edge is removed.
            rotation = interval(angle(complex(mid(real(g)), mid(imag(g)))))
            re = cos(-rotation); im = sin(-rotation)
            for k in 1:5
                w = sup(interval(ra[k]) + interval(rb[k]))
                aphi = interval(cb[k]) - interval(ca[k]) - rotation + interval(-w,w)
                re += cos(aphi); im += sin(aphi)
            end
            direct = (re^2 + im^2)/36
            B = intersect_interval(B, direct)
        end
        O[a, b] = O[b, a] = (inf(B) <= 0.0 <= sup(B))
        U[a, b] = U[b, a] = !(sup(B) < inf(target) || inf(B) > sup(target))
    end
    count = Ref(0); capped = Ref(false)
    function cliques(cand, k, cur, out)
        capped[] && return out
        length(cur) == k && (push!(out, copy(cur)); count[] += 1; count[] > clique_cap && (capped[] = true); return out)
        for (ii, v) in enumerate(cand)
            cc = [w for w in cand[ii+1:end] if O[v, w]]
            length(cc) >= k - length(cur) - 1 || continue
            cliques(cc, k, [cur; v], out)
        end
        out
    end
    bases = cliques(collect(1:n), 6, Int[], Vector{Vector{Int}}())
    capped[] && return (:cap, sum(O) ÷ 2, sum(U) ÷ 2, length(bases))
    for V in bases
        cand = [a for a in 1:n if all(U[a, v] for v in V)]
        isempty(cliques(cand, 6, Int[], Vector{Vector{Int}}())) || return (:candidates, sum(O) ÷ 2, sum(U) ÷ 2, length(bases))
        capped[] && return (:cap, sum(O) ÷ 2, sum(U) ÷ 2, length(bases))
    end
    (:excluded, sum(O) ÷ 2, sum(U) ÷ 2, length(bases))
end

# ---------------------------------------------------------------- boundary refinement
# Kept phase boxes are cells of the dyadic grid of [-p, p]⁵ with 4·2^j cells per side (cover_search starts
# from the 4⁵ grid and always halves the longest side, so a kept box is a cube).  Refining a box deep inside
# the kept set changes nothing (its children stay kept), so deep refinement works only at label boundaries:
# boxes with a face not covered by other kept boxes.  This only chooses what to refine; soundness does not
# depend on it (every kept box, refined or not, is checked into a label).  On the hard high-R cells tested
# (29 Sep) the kept set is a thin sheet and every box is on the frontier, so it matches full refinement.
const Addr = Tuple{Int,NTuple{5,Int}}
grid_level(w) = (j = 0; while 2PCHART / (4 * 2^j) >= w; j += 1; end; j)   # level of the boxes kept at wstop = w
function box_addr(lo, hi)
    j = round(Int, log2(2PCHART / (4 * (hi[1] - lo[1])))); E = 2PCHART / (4 * 2^j)
    (j, ntuple(k -> round(Int, (lo[k] + PCHART) / E), 5))
end
"""Indices of kept boxes coarser than level `jw` that are on the frontier of the kept set."""
function frontier_select(kept, jw)
    addr = [box_addr(kp[1], kp[2]) for kp in kept]
    K = Set(addr); D = Set{Addr}()                    # kept cells; proper ancestors of kept cells
    for (j, I) in K
        for d in 1:j                                  # (a nested loop: `break` leaves only this one)
            a = (j - d, I .>> d); a in D && break; push!(D, a)
        end
    end
    anc(j, I) = any((j - d, I .>> d) in K for d in 0:j)
    # is the face of cell (j, J) that faces direction -s along k covered by kept boxes?
    function covered(j, J, k, s)
        anc(j, J) && return true
        (j, J) in D || return false
        others = [m for m in 1:5 if m != k]
        for b in 0:15
            ch = ntuple(m -> m == k ? 2J[k] + (s == 1 ? 0 : 1) : 2J[m] + ((b >> (findfirst(==(m), others) - 1)) & 1), 5)
            covered(j + 1, ch, k, s) || return false
        end
        true
    end
    front(j, I) = any(!covered(j, mod.(Base.setindex(I, I[k] + s, k), 4 << j), k, s) for k in 1:5 for s in (-1, 1))
    memo = Dict{Addr,Bool}()
    [i for i in eachindex(kept) if addr[i][1] < jw && get!(() -> front(addr[i]...), memo, addr[i])]
end

"""Cover certificate for one seed cell.  ok = true means: for every θ in the cell, (I, H₊(θ)/√6) does not
extend to four MUBs (given the Taylor-model enclosure of H₊ and the accepted reconstruction identities).
Iterative deepening: search the torus to width `widths[1]`, form labels and run the graph test; while a
label is too wide or the graph test finds candidates, refine to the next width and retry.  With `boundary`
(default) only boxes at label boundaries are refined (`frontier_select`), repeatedly at the same width
until none coarser remains there; otherwise every kept box is refined.  (Refining only the oversized
components leaves the other labels fat, and the graph test then fails on them.)"""
function certify_cell_cover(θ0, ρ; q = 4, widths = COVER_WIDTHS, budget = 4_000_000, deadline = Inf, hmin = 1 / 16,
                            rcap = RCAP, boundary = true, verifier = verified_excluded, sharp_capacity = false, tight_pairs = false,
                            label_builder = make_labels)
    @assert sharp_capacity || 5 * rcap^2 < 3 * (1 - 1 / sqrt(6)) - 1e-6   # each label is checked separately in sharp mode
    cell = hcell(θ0, ρ; q = q)
    cc = CoverCell(cell.H)
    t0 = time(); nt = 0; nrej = 0; kept = nothing; last = (reason = :none,); subs = Dict{Tuple{Vector{Float64},Vector{Float64}},CoverCell}()
    fail(r) = (ok = false, reason = r, nt = nt, nlabels = 0, nkept = kept === nothing ? 0 : length(kept), level = 0)
    for (lev, w) in enumerate(widths)
        jw = grid_level(w)
        select() = frontier_select(kept, jw)
        todo = kept === nothing ? Int[] : boundary ? select() : [i for i in eachindex(kept) if box_addr(kept[i][1], kept[i][2])[1] < jw]
        while kept === nothing || !isempty(todo)
            (st, k2, n2, r2) = cover_search(cc; wstop = w, hmin = hmin, budget = budget - nt, deadline = deadline,
                                            start = kept === nothing ? nothing : kept[todo], subs = subs, verifier = verifier)
            nt += n2; nrej += r2
            st == :complete || return fail(st == :time ? :time_limit : :cover_budget)
            if kept === nothing
                kept = k2; break
            end
            stay = trues(length(kept)); stay[todo] .= false
            kept = [kept[stay]; k2]
            boundary || break
            time() > deadline && return fail(:time_limit)
            todo = select()
        end
        time() > deadline && return fail(:time_limit)
        labels, big = label_builder(kept; rcap = rcap, sharp_capacity = sharp_capacity)
        if !isempty(big)
            last = (reason = :label_too_big,)
            continue
        end
        for (c, r, mem) in labels, i in mem
            label_contains(c, r, kept[i][1], kept[i][2]) || return fail(:label_containment)
        end
        (gr, nO, nU, nb) = label_graph_test(labels; tight_pairs = tight_pairs)
        rmax = maximum(maximum(l[2]) for l in labels; init = 0.0)
        gr == :excluded && return (ok = true, reason = :none, nt = nt, nlabels = length(labels), nkept = length(kept), nrej = nrej,
                                   nO = nO, nU = nU, nbases = nb, rmax = rmax, level = lev, t = time() - t0)
        last = (reason = gr == :cap ? :clique_cap : :quartet_candidates, nlabels = length(labels), nO = nO, nU = nU, nbases = nb, rmax = rmax)
    end
    (ok = false, reason = last.reason, nt = nt, nlabels = get(last, :nlabels, 0), nkept = length(kept), nrej = nrej,
     nO = get(last, :nO, 0), nU = get(last, :nU, 0), nbases = get(last, :nbases, 0), rmax = get(last, :rmax, NaN), level = length(widths), t = time() - t0)
end
