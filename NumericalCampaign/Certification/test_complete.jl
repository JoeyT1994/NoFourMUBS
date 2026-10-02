# Completeness certificate on carrier g2 cells: number of rays found vs the known 48, boxes, time.
include("complete.jl")
using Printf
θ0 = [2.692, -1.5, -0.614, 1.884]
ρs = isempty(ARGS) ? [1e-4, 1e-3, 2.5e-3, 5e-3] : parse.(Float64, ARGS)
for ρ in ρs
    q = ρ > 6e-3 ? 6 : 4
    t = @elapsed res = certify_cell_rays(θ0, ρ; q = q)
    if res.ok
        @printf("ρ=%.1e: COMPLETE, %d certified rays (known: 48); %d fold-search boxes (%d regular leaves), %d centre boxes; fold %.1f s, centre %.1f s, total %.1f s\n",
                ρ, length(res.rays), res.nt, res.nreg, res.nt2, res.t_fold, res.t_centre, t)
    else
        @printf("ρ=%.1e: NOT certified (%s, %d unresolved boxes, %d tested), %.1f s\n", ρ, res.reason, res.nunres, res.nt, t)
    end
    flush(stdout)
end
