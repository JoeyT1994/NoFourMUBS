# End-to-end cell certificate: complete certified rays (complete.jl), then no quartet (gram.jl).
include("complete.jl"); include("gram.jl"); using LinearAlgebra; BLAS.set_num_threads(1)
using Printf
X6 = [2.436236992962, 0.486979737447, -2.147122554702, -1.87641662987]      # H₊(X6) ≅ Szöllősi X6(0.3+0.2i)
cases = [("g2", [2.692, -1.5, -0.614, 1.884], 5e-3), ("g1", [0.808, 3.137, -2.504, 0.18], 5e-3),
         ("X6", X6, 1e-4), ("X6", X6, 1e-3)]
for (nm, θ, ρ) in (isempty(ARGS) ? cases : cases[parse.(Int, ARGS)])
    t1 = @elapsed res = certify_cell_rays(θ, ρ)
    res.ok || (println("$nm: rays not certified ($(res.reason))"); continue)
    rays = res.rays
    t2 = @elapsed Pm = overlap_models(rays)
    PI = [a == b ? interval(1.0) : fbound(Pm[a, b]) for a in 1:length(rays), b in 1:length(rays)]
    w = [diam(PI[a, b]) for a in 1:length(rays) for b in a+1:length(rays)]
    nO = count(possibly(PI[a, b], 0.0) for a in 1:length(rays) for b in a+1:length(rays))
    nU = count(possibly(PI[a, b], 1/6) for a in 1:length(rays) for b in a+1:length(rays))
    t3 = @elapsed q = certify_no_quartet(rays)
    @printf("%s ρ=%.0e: %d rays (complete, %.0f s) | overlap models %.2f s, width median %.1e max %.1e | possibly-orthogonal pairs %d, possibly-unbiased %d | candidate bases %d | NO QUARTET: %s (depth %d) in %.2f s\n",
            nm, ρ, length(rays), t1, t2, sort(w)[end ÷ 2], maximum(w), nO, nU, q.nV, q.ok, q.depth, t3)
    flush(stdout)
end
