# Review experiment: the cover certificate with boundary-only deep refinement (certify_cell_cover default)
# against full refinement (boundary = false), on cells listed as "θ1 θ2 θ3 θ4 ρ [depth]".
#   julia --project=jlenv_cluster review/cover_boundary.jl CELLS.txt [LINE]   (env MODES=boundary,full; TMAX; BUDGET)
include(joinpath(@__DIR__, "..", "cover.jl")); using Printf; BLAS.set_num_threads(1)
lines = collect(eachline(ARGS[1])); sel = length(ARGS) > 1 ? [parse(Int, ARGS[2])] : eachindex(lines)
tmax = parse(Float64, get(ENV, "TMAX", "600")); budget = parse(Int, get(ENV, "BUDGET", "20000000"))
for li in sel
    f = parse.(Float64, split(lines[li])); θ = f[1:4]; ρ = f[5] + 2.0^-40
    for mode in split(get(ENV, "MODES", "boundary"), ",")
        t = @elapsed r = certify_cell_cover(θ, ρ; budget = budget, deadline = time() + tmax, boundary = mode == "boundary", rcap = parse(Float64, get(ENV, "RCAP", string(RCAP))))
        @printf("%s:%d θ=%s ρ=%.4g %-8s: %s (%s) level %d, %d nodes, %d kept, %d labels, max hw %.3f, %.0f s\n", basename(ARGS[1]), li,
                string(round.(θ, digits = 3)), f[5], mode, r.ok ? "PASS" : "fail", r.reason, r.level, r.nt, r.nkept, r.nlabels, get(r, :rmax, NaN), t)
        flush(stdout)
    end
end
