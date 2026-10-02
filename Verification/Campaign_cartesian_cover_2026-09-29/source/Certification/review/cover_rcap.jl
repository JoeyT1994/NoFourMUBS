# Review experiment: does a larger label cap (capacity one still holds for half-widths ≤ 1/2) rescue cells
# that fail the cover certificate with label_too_big?  Same logic as certify_cell_cover with rcap as a parameter.
include(joinpath(@__DIR__, "..", "cover.jl")); using Printf; BLAS.set_num_threads(1)
function cover_rcap(θ0, ρ; rcap, widths = (1 / 8, 1 / 16, 1 / 32, 1 / 64, 1 / 128, 1 / 256), budget = 20_000_000, deadline = Inf)
    cell = hcell(θ0, ρ); cc = CoverCell(cell.H); nt = 0; kept = nothing; subs = Dict{Tuple{Vector{Float64},Vector{Float64}},CoverCell}(); last = "none"
    for (lev, w) in enumerate(widths)
        (st, k2, n2, _) = cover_search(cc; wstop = w, budget = budget - nt, deadline = deadline, start = kept, subs = subs)
        nt += n2; kept = k2; st == :complete || return (false, "search $(st)", lev, nt, 0, NaN)
        labels, big = make_labels(kept; rcap = rcap)
        isempty(big) || (last = "label_too_big"; continue)
        all(label_contains(c, r, kept[i][1], kept[i][2]) for (c, r, mem) in labels for i in mem) || return (false, "containment", lev, nt, 0, NaN)
        (gr, nO, nU, nb) = label_graph_test(labels)
        rmax = maximum(maximum(l[2]) for l in labels)
        gr == :excluded && return (true, "no quartet", lev, nt, length(labels), rmax)
        last = string(gr)
    end
    (false, last, length(widths), nt, 0, NaN)
end
for l in eachline(ARGS[1])
    f = parse.(Float64, split(l)); θ = f[1:4]; ρ = f[5] + 2.0^-40
    for rcap in parse.(Float64, split(get(ENV, "RCAPS", "0.3,0.45"), ","))
        t = @elapsed (ok, why, lev, nt, nl, rm) = cover_rcap(θ, ρ; rcap = rcap, deadline = time() + parse(Float64, get(ENV, "TMAX", "600")))
        @printf("θ=%s ρ=%.4g rcap=%.2f: %s (%s) at level %d, %d nodes, %d labels, max hw %.3f, %.0f s\n", string(round.(θ, digits = 3)), f[5], rcap, ok ? "PASS" : "fail", why, lev, nt, nl, rm, t)
        flush(stdout); ok && break
    end
end
