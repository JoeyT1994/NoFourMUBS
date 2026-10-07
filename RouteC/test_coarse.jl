# Route C probe: production cover certificate on one coarse box (no subdivision, no prune).
using LinearAlgebra; BLAS.set_num_threads(1)
const CODE = ARGS[1]
include(joinpath(CODE, "Certification", "cover_accelerated.jl"))
θ = parse.(Float64, split(ARGS[2], ",")); L = parse(Int, ARGS[3]); ρ = pi / 2^L
t0 = time()
r = try
    certify_cell_cover_accelerated(θ, ρ + 2.0^-40; partition=true, budget=200_000_000, deadline=time() + parse(Float64, ARGS[4]))
catch e
    (ok=false, reason=Symbol("error_", typeof(e)), msg=sprint(showerror, e)[1:min(end, 120)])
end
println("RESULT ", join(θ, ","), " L=", L, " ok=", r.ok, " reason=", get(r, :reason, :none), " nlabels=", get(r, :nlabels, 0),
        " nbases=", get(r, :nbases, 0), " t=", round(time() - t0, digits=1), " ", get(r, :msg, ""))
