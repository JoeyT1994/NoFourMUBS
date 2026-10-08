# Completeness of the certified rays over a seed cell (H-column form), by fold exclusion.
#
# S = {(φ, s) ∈ T^5 × cell : f(φ; H₊(s)) = 0}.  Since H₊ is exactly Hadamard, Σ_j f_j ≡ 0, so any
# 5 rows cut out S.  The branch and bound below classifies every box B of T^5 as
#   :out      f_j ≠ 0 on B × cell for some j;                 (no point of S over B)
#   :regular  the 5x5 Jacobian (chosen rows) is regular on B × cell   (‖I - Y J‖∞ < 1).
# Theorem (per cell).  If every box is :out or :regular, then S has no singular point, so the
# projection S → cell is a proper local diffeomorphism onto a box, hence a trivial covering:
# S is n disjoint graphs s ↦ φ_i(s).  Every graph meets s = 0, so n = number of centre rays.
# The centre rays are listed completely: in a regular box the centre carrier has at most one
# solution (injectivity), and every regular box either excludes the centre carrier or contains a
# ray certified at the centre.  Finally each centre ray's Krawczyk tube (hform_certify) contains its
# whole graph: the graph starts inside the tube's uniqueness box and cannot leave it (it would have
# to cross the box boundary, where the unique solution is not).  So the certified tubes contain
# every common unbiased ray for every θ in the cell.
# Tests are correlated in s: at the box centre c, f(c, s) and J(c, s) are Taylor models in s; the
# φ-variation over B uses interval derivatives with the entrywise hull of H over the cell.
include("hform.jl")
include("fastexcl.jl")
include("lsred.jl")

ivcomplex(z::CTM) = Complex(fbound(z.re), fbound(z.im))
eic(c::Float64) = Complex(cos(interval(c)), sin(interval(c)))
zvec_ic(c) = vcat([Complex(interval(1.0), interval(0.0))], [eic(c[k]) for k in 1:5])
S_at(c, H2, z = zvec_ic(c)) = [reduce(+, (cm(z[k], conj(H2[k, j])) for k in 1:6)) for j in 1:6]
J_at(c, H2, S, z = zvec_ic(c)) = [2 * real(conj(S[j]) * cm(z[k + 1] * Complex(interval(0.0), interval(1.0)), conj(H2[k + 1, j]))) for j in 1:6, k in 1:5]
boxmid(B) = [mid(b) for b in B]
halfw(B) = [interval(-radius(b), radius(b)) for b in B]

"""Exclusion by the modulus form, with each phase term bounded on its arc.
For φ = c + δ, |δ_k| ≤ w_k:  S_j(φ,s) = S0 + Σ_k a_k (e^{iδ_k} - 1),  a_k = conj(H_kj(s)) e^{ic_k}.
With u = S0/|S0| and v_k = ū a_k:  ū S_j = |S0| + Σ_k v_k ((cos δ_k - 1) + i sin δ_k), and each term is
enclosed using cos δ - 1 ∈ [cos w - 1, 0], sin δ ∈ [-sin w, sin w].  Then
   |S_j| ≥ Re(ū S_j) ≥ |S0| + Σ inf Re(term),   |S_j| ≤ |(|S0| + Σ Re(term)) + i Σ Im(term)|.
If this does not decide, the chord bound | |S_j| - |S0| | ≤ Σ_k |H_kj| w_k is also tried.
S0 = S_j(c, s) is a Taylor model in s; u and a_k are enclosed over the cell by intervals."""
function excluded_modulus(S, Hiv, B, c)
    s6 = sqrt(interval(6.0))
    w = [radius(b) for b in B]
    cw = [interval(inf(cos(interval(x))) - 1, 0.0) for x in w]     # cos δ - 1 for |δ| ≤ w
    sw = [interval(-sup(sin(interval(x))), sup(sin(interval(x)))) for x in w]
    ei = [eic(c[k]) for k in 1:5]
    for j in 1:6
        S0 = S[j] isa CTM ? Complex(fbound(S[j].re), fbound(S[j].im)) : S[j]
        m2 = real(S0)^2 + imag(S0)^2; mS = sqrt(max(interval(0.0), m2))
        if inf(mS) > 0.2
            u = S0 / mS
            re = mS; im = interval(0.0)
            for k in 1:5
                v = conj(u) * conj(Hiv[k + 1, j]) * ei[k]
                re += real(v) * cw[k] - imag(v) * sw[k]
                im += real(v) * sw[k] + imag(v) * cw[k]
            end
            lo = re; hi = sqrt(max(abs(inf(re)), abs(sup(re)))^2 + max(abs(inf(im)), abs(sup(im)))^2)
            (sup(hi) < inf(s6) || inf(lo) > sup(s6)) && return true
        end
        L = sum(sup(mag(Hiv[k + 1, j])) * w[k] for k in 1:5)
        (sup(mS) + L < inf(s6) || inf(mS) - L > sup(s6)) && return true
    end
    false
end
"""Classify a φ-box against the whole cell (float fast path, fastexcl.jl)."""
function classify(B, cell, H2, fc; wreg = 0.13)
    c = [mid(b) for b in B]; w = [radius(b) for b in B]
    excluded_fast(fc, c, w) && return :out
    maximum(diam.(B)) > wreg && return :split                 # regularity is hopeless on big boxes
    regular_fast(fc, H2, c, w) ? :regular : :split
end

"""Joint branch and bound over T^5 × cell.  A node is (φ-box B, sub-cell (m, h)); it is split in φ
or in s depending on which term blocks the decision.  Returns regular leaves (φ-box and sub-cell),
unresolved nodes, and the number tested.  `budget` caps the work and `deadline` (a time() value) the
wall-clock time; either way the remaining nodes are returned as unresolved (the cell then fails)."""
function fold_search(cell; n0 = 4, wmin = 2e-3, hmin = 1 / 64, qbb = 2, budget = 4_000_000, ghost_width = 0.012, max_tubes = 2000, stats = nothing, deadline = Inf)
    H2 = map(z -> CTM(truncate_order(z.re, qbb), truncate_order(z.im, qbb)), cell.H)
    fc = FastCell(cell.H, qbb)
    # Phase chart [-p, p]⁵ with p = sup(interval(π)) ≥ π, so the chart covers the whole torus (a Float64 π
    # would leave slivers of width π - fl(π) at ±π, where rays with an entry -1 live).  Adjacent boxes
    # share their split endpoints exactly; the outer endpoints are exactly ∓p.
    p = sup(interval(pi)); h = 2p / n0
    edge(i) = i == 0 ? -p : i == n0 ? p : -p + h * i
    root = (fc, H2, zeros(4), ones(4))
    stack = [(B, root) for B in vec([[interval(edge(i[k]), edge(i[k] + 1)) for k in 1:5] for i in Iterators.product(ntuple(_ -> 0:n0-1, 5)...)])]
    reg = Any[]; unres = Any[]; nt = 0; nls = 0; tubes = Any[]; tried = Vector{Vector{Float64}}(); grid = Dict{NTuple{5,Int},Vector{Int}}()
    while !isempty(stack)
        B, sc = pop!(stack); nt += 1
        (nt > budget || (nt % 1024 == 0 && time() > deadline)) && (global LAST_NLS = nls; global LAST_TUBES = length(tubes); return reg, vcat(unres, [x[1] for x in stack], [B]), nt)
        fcs, H2s, m, hs = sc
        cls = classify(B, cell, H2s, fcs)
        cls == :out && continue
        cls == :regular && (push!(reg, (B, m, hs)); continue)
        c = [mid(b) for b in B]; w = [radius(b) for b in B]
        k = argmax(diam.(B))
        if stats !== nothing
            key = (round(Int, -log2(diam(B[k]))), maximum(hs), any(tb -> near_tube(tb, B, m, hs; margin = 0.0), tubes))
            stats[key] = get(stats, key, 0) + 1
            if key[1] >= 7 && length(get!(stats, :samples, Any[])) < 40
                push!(stats[:samples], (B, fcs, H2s, m, hs))
            end
        end
        # near-miss ghosts: moving ghost tubes certified over the whole cell (lsred.jl)
        ls_tried = false
        if diam(B[k]) < ghost_width
            cands = tube_candidates(grid, tubes, B)
            if any(tb -> in_tube(tb, B, m, hs), cands)
                nls += 1; continue
            end
            cv = try valley_point2(fcs, B) catch; c end
            fresh = !any(p -> maximum(abs.(p .- cv)) < 0.002, tried)
            if length(tubes) < max_tubes && fresh
                push!(tried, cv)
                σ5 = svdvals(hjac(cv, fcs.h[:, :, 1]))[end]
                if σ5 < 0.5
                    for (Rw, Rt) in ((0.03, 0.01), (0.02, 0.01), (0.015, 0.015), (0.01, 0.006), (0.006, 0.003))
                        tb = try ghost_tube(fc, H2, cv; Rw = Rw, Rt = Rt) catch; nothing end
                        tb === nothing || (tube_insert!(grid, tubes, tb); push!(cands, tb); break)
                    end
                    if any(tb -> in_tube(tb, B, m, hs), cands)
                        nls += 1; continue
                    end
                end
            end
            # split s only if a nearby tube's centre moves by more than about half its radius on this sub-cell
            ls_tried = any(tb -> near_tube(tb, B, m, hs) && maximum(k -> diam(bound_on_subcell(tb.c[k], m, hs)), 1:5) > tb.R / 2, cands)
        end
        split_s = maximum(hs) > hmin && (diam(B[k]) < 0.13 && (blocker(fcs, c, w) == :s || ls_tried))
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
    global LAST_NLS = nls; global LAST_TUBES = length(tubes)
    reg, unres, nt
end
LAST_NLS = 0; LAST_TUBES = 0
# spatial hash of ghost tubes: grid cells of side GH in φ (the 2π-periodic chart [-π, π)^5)
const GH = 0.05
gkey(x) = floor(Int, (x + pi) / GH)
function tube_insert!(grid, tubes, tb)
    push!(tubes, tb); id = length(tubes); reach = sqrt(4 * tb.Rw^2 + tb.Rt^2) * 1.01 + 0.05
    rng = [gkey(inf(tb.cbox[k]) - reach):gkey(sup(tb.cbox[k]) + reach) for k in 1:5]
    for key in Iterators.product(rng...); push!(get!(grid, key, Int[]), id); end
end
function tube_candidates(grid, tubes, B)
    ids = Set{Int}()
    for key in Iterators.product((gkey(inf(B[k])):gkey(sup(B[k])) for k in 1:5)...)
        haskey(grid, key) && union!(ids, grid[key])
    end
    [tubes[i] for i in ids]
end

wrapnear(x, ref) = x + 2pi * round((ref - x) / (2pi))
"""Centre rays.  Pass 1: Newton (centre carrier) from every regular leaf, dedupe, certify each ray
over the cell.  Pass 2: every leaf (split as needed) must be accounted for at s = 0:
  - it lies inside a certified ray's uniqueness box (any centre solution in it is that ray), or
  - it contains that ray's tight box (then its unique centre solution, by injectivity, is the ray), or
  - the centre carrier is excluded on it.
Returns the certified rays (hform_certify results)."""
function centre_rays(reg, cell)
    fc0 = centre_only(FastCell(cell.H, 2))
    inbox(B, c, r, rad) = (p0 = [wrapnear(centre(r.phip[k]), c[k]) for k in 1:5];
                           all(p0[k] - rad < inf(B[k]) && sup(B[k]) < p0[k] + rad for k in 1:5))
    holds(B, c, r) = (p0 = [wrapnear(centre(r.phip[k]), c[k]) for k in 1:5];
                      all(inf(B[k]) < p0[k] - r.r && p0[k] + r.r < sup(B[k]) for k in 1:5))
    rays = Any[]; pending = copy(reg); nt = 0; cell6 = nothing
    while !isempty(pending)
        B = pop!(pending); nt += 1
        c = boxmid(B); wB = [radius(b) for b in B]
        # 1. accounted by a certified ray (inside its uniqueness box, or containing its tight box)
        any(r -> inbox(B, c, r, r.rmax) || holds(B, c, r), rays) && continue
        # 2. no centre ray in B
        (excluded_fast(fc0, c, wB) || krawczyk_exclude0(fc0, c, wB)) && continue
        # 3. look for the ray in B, certify it over the cell, and retry B
        φ = try newton_centre(c, cell.Hc) catch; nothing end
        if φ !== nothing && maximum(abs.(hf(φ, cell.Hc))) < 1e-9
            φ = [wrapnear(φ[k], c[k]) for k in 1:5]
            if all(inf(B[k]) - 0.05 <= φ[k] <= sup(B[k]) + 0.05 for k in 1:5) &&
               !any(r -> maximum(abs.(mod.(φ .- centre.(r.phip) .+ pi, 2pi) .- pi)) < 1e-7, rays)
                r = hform_certify(φ, cell)
                if !r.ok && cell.q < 6
                    # retry this ray with order-6 models; truncate its tube back to the cell order
                    # (the tail goes into the remainder, so the tube stays a rigorous enclosure)
                    cell6 === nothing && (cell6 = hcell(cell.θ0, cell.ρ; q = 6))
                    r6 = hform_certify(newton_centre(φ, cell6.Hc), cell6)
                    r6.ok && (r = merge(r6, (phip = [truncate_order(x, cell.q) for x in r6.phip],)))
                end
                r.ok || return nothing, nt                  # a centre ray does not certify: refine the cell
                push!(rays, r); push!(pending, B); continue
            end
        end
        # 4. split (regularity is inherited by sub-boxes)
        k = argmax(diam.(B)); diam(B[k]) < 1e-7 && return nothing, nt
        m = mid(B[k]); B1 = copy(B); B2 = copy(B)
        B1[k] = interval(inf(B[k]), m); B2[k] = interval(m, sup(B[k])); push!(pending, B1, B2)
    end
    rays, nt
end

"""Complete certificate of the rays over one cell. ok = true means: the returned tubes contain
every common unbiased ray of (I, H₊(θ)) for every θ in the cell."""
function certify_cell_rays(θ0, ρ; q = 4, budget = 4_000_000, deadline = Inf)
    cell = hcell(θ0, ρ; q = q)
    t1 = @elapsed (reg, unres, nt) = fold_search(cell; budget = budget, deadline = deadline)
    isempty(unres) || return (ok = false, reason = time() > deadline ? :time_limit : :fold_or_unresolved, nunres = length(unres), nt = nt, cell = cell)
    # the s = 0 slice is covered by the leaves whose sub-cell contains s = 0 (injectivity there)
    reg0 = [B for (B, m, h) in reg if all(abs(m[i]) <= h[i] for i in 1:4)]
    t2 = @elapsed (rays, nt2) = centre_rays(reg0, cell)
    rays === nothing && return (ok = false, reason = :centre_ray_uncertified, nunres = 0, nt = nt, cell = cell)
    (ok = true, rays = rays, nreg = length(reg), nsub = count(x -> maximum(x[3]) < 1, reg), nt = nt, nt2 = nt2, t_fold = t1, t_centre = t2, cell = cell)
end
