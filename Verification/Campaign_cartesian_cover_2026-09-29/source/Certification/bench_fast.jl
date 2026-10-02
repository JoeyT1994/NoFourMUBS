# Per-cell benchmark of the FastTM ray certificate on carrier g2 (48 physical rays).
include("fast_krawczyk.jl")
using DelimitedFiles, Printf
θ0 = [2.692, -1.5, -0.614, 1.884]; C0 = seed_coeffs(θ0)
Hraw = readdlm("data/H_g2.csv", ',', ComplexF64); M = readdlm("data/rays_g2.csv", ',', Float64)
phis = [begin s = complex.(M[i,1:10], M[i,11:20]); v = vcat(1.0+0im, s[1:5]); p = (Hraw'*v/sqrt(6))[1:3];
         [angle(v[2]), angle(v[3]), angle(p[1]), angle(p[2]), angle(p[3])] end for i in 1:size(M,1)]
for k in eachindex(phis), it in 1:5
    J = ForwardDiff.jacobian(ph -> ray_eqs(ph, C0), phis[k]); phis[k] = phis[k] - J \ ray_eqs(phis[k], C0)
end
# analytic Jacobian check against AD at the centre
Ja = ray_jac_r(phis[1], C0, sqrt(6.0)); Jf = ForwardDiff.jacobian(ph -> ray_eqs(ph, C0), phis[1])
@printf("analytic vs AD Jacobian: %.1e\n", maximum(abs.(Ja .- Jf)))
fast_certify_ray(phis[1], fast_cell(θ0, 1e-4))                     # compile
cases = isempty(ARGS) ? [(5e-3, 4, 2), (1e-2, 4, 2), (1e-2, 5, 2), (1e-2, 6, 2), (1.5e-2, 6, 3), (2e-2, 6, 3)] :
        [Tuple(parse.(Float64, split(a, ","))) for a in ARGS]
for (ρ, q, nw) in cases
    q = Int(q); nw = Int(nw)
    t1 = @elapsed cell = fast_cell(θ0, ρ; q = q, hi = max(8, q))
    fast_certify_ray(phis[1], cell; newton = nw)
    t2 = @elapsed res = [fast_certify_ray(ph, cell; newton = nw) for ph in phis]
    ok = count(r -> r[1], res)
    @printf("ρ=%.1e ray order %d newton %d: %d/%d certified; max box radius %.2e; median |YF| %.2e; cell setup %.2f s, 48 rays %.2f s (%.3f s/ray)\n",
            ρ, q, nw, ok, length(phis), maximum([r[2] for r in res if r[1]]; init = 0.0), sort([r[4] for r in res])[24], t1, t2, t2 / length(phis))
    flush(stdout)
end
