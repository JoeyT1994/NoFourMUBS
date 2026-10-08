# H-form ray certificates on carrier g2: tight radius, uniqueness radius rmax, and the ray sweep
# over the cell (the completeness search needs rmax > sweep for the fixed-frame argument).
include("hform.jl")
using DelimitedFiles, Printf, Statistics
θ0 = [2.692, -1.5, -0.614, 1.884]
M = readdlm("data/rays_g2.csv", ',', Float64)
phis0 = [angle.(complex.(M[i, 1:5], M[i, 11:15])) for i in 1:size(M, 1)]   # z2..z6 of the raw ray
for ρ in (1e-3, 2.5e-3, 5e-3)
    cell = hcell(θ0, ρ)
    phis = [newton_centre(ph, cell.Hc) for ph in phis0]
    res0 = maximum(maximum(abs.(hf(ph, cell.Hc))) for ph in phis)
    hform_certify(phis[1], cell)
    t = @elapsed res = [hform_certify(ph, cell) for ph in phis]
    ok = count(r -> r.ok, res)
    sw = [maximum(r.sweep) for r in res]; rm = [r.rmax for r in res if r.ok]
    good = count(r -> r.ok && r.rmax > maximum(r.sweep), res)
    @printf("ρ=%.1e: |f| at centre rays %.1e; certified %d/48; tight r median %.1e; rmax median %.3f (min %.3f); sweep median %.3f (max %.3f); rays with rmax > sweep: %d/48; %.2f s\n",
            ρ, res0, ok, median([r.r for r in res if r.ok]), median(rm), minimum(rm), median(sw), maximum(sw), good, t)
end
