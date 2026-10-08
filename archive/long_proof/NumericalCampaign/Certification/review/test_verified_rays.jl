# Compare the review-draft verified rays certificate with the production one.
#   julia --project=../jlenv_cluster test_verified_rays.jl
include(joinpath(@__DIR__, "verified_rays.jl")); include(joinpath(@__DIR__, "..", "gram.jl")); using Printf; BLAS.set_num_threads(1)
cases_all = [("g2 check cell", [1.380582709097077, -0.6810874698212247, -0.7792622402459056, 1.5769322499464393], pi / 512 + 2.0^-40),
         ("pilot-failed child", [-1.3239978018339316, 1.3258162989697315, 1.389904188696993, -1.5124641075735994], pi / 1024 + 2.0^-40),
         ("g2 neighbour", [1.3928545554001621, -0.6810874698212247, -0.7792622402459056, 1.5769322499464393], pi / 512 + 2.0^-40)]
for (nm, θ, ρ) in cases_all
    t0 = @elapsed r0 = certify_cell_rays(θ, ρ; budget = 3_000_000, deadline = time() + 600)
    REJ[:excl] = 0; REJ[:reg] = 0
    t1 = @elapsed r1 = certify_cell_rays_verified(θ, ρ; budget = 6_000_000, deadline = time() + 1200)
    println("  rejected float acceptances: exclusion ", REJ[:excl], ", regularity ", REJ[:reg])
    q1 = r1.ok ? certify_no_quartet(r1.rays) : (ok = false,)
    @printf("%-20s production: %s (%.0f s) | verified: %s, no quartet %s, %d nodes, %d float acceptances rejected by the interval recheck (%.0f s)\n",
            nm, r0.ok ? "$(length(r0.rays)) rays" : string(r0.reason), t0, r1.ok ? "$(length(r1.rays)) rays" : string(r1.reason), q1.ok, r1.nt, r1.nrej, t1)
end
