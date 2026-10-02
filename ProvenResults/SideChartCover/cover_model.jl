# Additive model-injection copy of the production cover function.
# The verifier checks the exact two substitutions below against pinned cover.jl.
# cover_search, CoverCell, graph tests, label tests and arithmetic are unchanged.
# q remains a compatibility keyword; H has already been constructed.
function certify_cover_with_model(H; q = 4, widths = COVER_WIDTHS, budget = 4_000_000, deadline = Inf, hmin = 1 / 16,
                            rcap = RCAP, boundary = true, verifier = verified_excluded, sharp_capacity = false, tight_pairs = false,
                            label_builder = make_labels)
    @assert sharp_capacity || 5 * rcap^2 < 3 * (1 - 1 / sqrt(6)) - 1e-6   # each label is checked separately in sharp mode
    cc = CoverCell(H)
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
