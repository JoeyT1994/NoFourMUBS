# Pilot: end-to-end certificates (complete rays + no quartet) on random cells of the canonical domain D₀ ∩ F (ρ = 0.005),
# with adaptive bisection, to measure the near-miss rate and the cost distribution.
# Usage: julia --project=../Certification/jlenv pilot_completeness.jl SEED HOURS [ρ] [maxdepth]
# One JSON line per top-level cell in pilot_SEED.jsonl.
const CERT = joinpath(@__DIR__, "..", "Certification")
cd(CERT)
include(joinpath(CERT, "complete.jl")); include(joinpath(CERT, "domain.jl")); include(joinpath(CERT, "gram.jl"))
using LinearAlgebra; BLAS.set_num_threads(1)
using Random, Printf
seed = parse(Int, ARGS[1]); hours = parse(Float64, ARGS[2])
ρ0 = length(ARGS) >= 3 ? parse(Float64, ARGS[3]) : 5e-3
maxdepth = length(ARGS) >= 4 ? parse(Int, ARGS[4]) : 2
Random.seed!(seed)
out = open(joinpath(@__DIR__, "pilot_$(seed).jsonl"), "a")
jl(x::AbstractVector) = "[" * join(jl.(x), ",") * "]"
jl(x::Real) = isfinite(x) ? string(x) : "null"
jl(x::Symbol) = "\"$(x)\""; jl(x::String) = "\"$(x)\""

"""Certify a cell, bisecting failures up to maxdepth. Returns a summary NamedTuple."""
function certify_adaptive(θ, ρ, depth)
    st = (leaves = 0, excluded = 0, failed = 0, maxdepth = depth, rays = Int[], boxes = 0, nsub = 0, t = 0.0, reasons = Symbol[], quartet_free = 0, maxV = 0)
    t = @elapsed begin
        dt = try d0_test(θ, ρ) catch; :maybe end
        if depth > 0 && dt == :out
            st = merge(st, (excluded = 1,))
        else
            res = try certify_cell_rays(θ, ρ; budget = 3_000_000) catch e; (ok = false, reason = Symbol("error_" * string(typeof(e))), nt = 0) end
            if res.ok
                q = try certify_no_quartet(res.rays) catch e; (ok = false, nV = -1) end
                st = merge(st, (leaves = 1, rays = [length(res.rays)], boxes = res.nt, nsub = res.nsub,
                                quartet_free = st.quartet_free + (q.ok ? 1 : 0), maxV = max(st.maxV, q.nV)))
            elseif depth < maxdepth
                reasons = [res.reason]; acc = st
                for v in Iterators.product(ntuple(_ -> (-1, 1), 4)...)
                    c = certify_adaptive(θ .+ (ρ / 2) .* collect(v), ρ / 2, depth + 1)
                    acc = (leaves = acc.leaves + c.leaves, excluded = acc.excluded + c.excluded, failed = acc.failed + c.failed,
                           maxdepth = max(acc.maxdepth, c.maxdepth), rays = vcat(acc.rays, c.rays), boxes = acc.boxes + c.boxes + res.nt,
                           nsub = acc.nsub + c.nsub, t = 0.0, reasons = vcat(reasons, c.reasons),
                           quartet_free = acc.quartet_free + c.quartet_free, maxV = max(acc.maxV, c.maxV))
                end
                st = acc
            else
                st = merge(st, (failed = 1, reasons = [res.reason], boxes = res.nt))
            end
        end
    end
    merge(st, (t = t,))
end

tstart = time(); ncell = 0
while time() - tstart < hours * 3600
    # rejection sample a centre in D₀ ∩ F
    θ = zeros(4); nraw = 0
    while true
        θ = 2pi .* rand(4) .- pi; nraw += 1
        in_F(θ) || continue
        ok, _ = in_D0(θ); ok && break
    end
    st = certify_adaptive(θ, ρ0, 0)
    global ncell += 1
    status = st.failed > 0 ? "failed" : (st.maxdepth > 0 ? "bisected" : "clean")
    println(out, "{\"theta\":", jl(θ), ",\"rho\":", jl(ρ0), ",\"status\":", jl(status), ",\"time\":", jl(st.t),
            ",\"leaves\":", jl(st.leaves), ",\"excluded\":", jl(st.excluded), ",\"failed\":", jl(st.failed),
            ",\"maxdepth\":", jl(st.maxdepth), ",\"rays\":", jl(unique(st.rays)), ",\"boxes\":", jl(st.boxes),
            ",\"nsub\":", jl(st.nsub), ",\"quartet_free_leaves\":", jl(st.quartet_free), ",\"max_candidate_bases\":", jl(st.maxV), ",\"reasons\":", jl(unique(string.(st.reasons))), ",\"nraw\":", jl(nraw), "}")
    flush(out)
end
close(out)
