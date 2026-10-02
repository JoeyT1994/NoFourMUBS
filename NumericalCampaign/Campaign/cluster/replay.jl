# Random independent replay of certified cleaves (audit; review draft, not part of the production stages).
#   julia --project=code/Certification/jlenv_cluster replay.jl K [SEED]
# Picks K random certified cleaves from results/certify/*.jsonl and re-certifies each independently:
#   method "rays"  -> the interval-verified rays certificate (Certification/review/verified_rays.jl) + clique stage
#   method "cover" -> the cover certificate again (cover.jl), which is interval-accepted throughout
# on the same enlarged cell (centre ± (ρ + 2^-40)).  Any disagreement is reported; agreement is evidence, not proof.
const PKG = @__DIR__
const CERT = isdir(joinpath(PKG, "code", "Certification")) ? joinpath(PKG, "code", "Certification") : joinpath(PKG, "..", "..", "Certification")
include(joinpath(CERT, "review", "verified_rays.jl")); include(joinpath(CERT, "gram.jl"))
include(joinpath(CERT, "cover_accelerated.jl"))
using Random, Printf; BLAS.set_num_threads(1)
K = parse(Int, ARGS[1]); Random.seed!(length(ARGS) > 1 ? parse(Int, ARGS[2]) : 20260929)
cleaves = Tuple{Vector{Float64},Float64,String,Int}[]
for f in readdir(joinpath(PKG, "results", "certify"); join = true)
    endswith(f, ".jsonl") || continue
    for l in eachline(f)
        occursin("\"status\":\"certified\"", l) || continue
        th = parse.(Float64, split(match(r"\"theta\":\[([^\]]*)\]", l)[1], ","))
        rho = parse(Float64, match(r"\"rho\":([0-9.eE+-]+)", l)[1])
        m = match(r"\"method\":\"(\w+)\"", l); rays = parse(Int, match(r"\"rays\":(\d+)", l)[1])
        push!(cleaves, (th, rho, m === nothing ? "rays" : m[1], rays))
    end
end
println(length(cleaves), " certified leaves found; replaying ", min(K, length(cleaves)))
bad = 0
for (θ, ρ, meth, rays) in cleaves[randperm(length(cleaves))[1:min(K, end)]]
    ρe = ρ + 2.0^-40
    t = @elapsed ok, what = if meth == "rays"
        r = certify_cell_rays_verified(θ, ρe; budget = 8_000_000, deadline = time() + 1800)
        q = r.ok ? certify_no_quartet(r.rays) : (ok = false,)
        (r.ok && q.ok && length(r.rays) == rays), (r.ok ? "$(length(r.rays)) rays, no quartet $(q.ok)" : string(r.reason))
    elseif meth == "cover_accelerated"
        r = certify_cell_cover_accelerated(θ, ρe; partition=true, budget=20_000_000, deadline=time()+1800)
        r.ok, (r.ok ? "no quartet ($(r.nlabels) labels, accelerated cover)" : string(r.reason))
    else
        r = certify_cell_cover(θ, ρe; budget = 20_000_000, deadline = time() + 1800)
        r.ok, (r.ok ? "no quartet ($(r.nlabels) labels)" : string(r.reason))
    end
    global bad += !ok
    @printf("%s  %-5s %s: %s (%.0f s)\n", ok ? "agree   " : "DISAGREE", meth, string(round.(θ, digits = 4)), what, t); flush(stdout)
end
println(bad == 0 ? "replay: all agree" : "replay: $bad disagreements (inconclusive replays count as disagreements)")
