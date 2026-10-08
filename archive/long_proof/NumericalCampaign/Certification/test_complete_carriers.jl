# Completeness on the three pilot carriers; the ray counts must match the independent Python
# fixed-carrier branch and bound (Prototypes/logs: g1 53 clusters, one of them a near-miss ghost; the
# rigorous count at g1 is 52 at the centre and at six corners of the cell; g2 48, g3 54 clusters).
include("complete.jl")
using Printf
carriers = [("g1", [0.808, 3.137, -2.504, 0.18], 52), ("g2", [2.692, -1.5, -0.614, 1.884], 48), ("g3", [-1.003, 0.511, -1.487, 2.875], 54)]
ρ = isempty(ARGS) ? 5e-3 : parse(Float64, ARGS[1])
for (nm, θ, known) in carriers
    t = @elapsed res = certify_cell_rays(θ, ρ)
    if res.ok
        @printf("%s ρ=%.1e: COMPLETE, %d rays (expected %d) | %d boxes, %d leaves (%d on sub-cells) | %.1f s\n",
                nm, ρ, length(res.rays), known, res.nt, res.nreg, res.nsub, t)
    else
        @printf("%s ρ=%.1e: NOT certified (%s) %.1f s\n", nm, ρ, res.reason, t)
    end
    flush(stdout)
end
