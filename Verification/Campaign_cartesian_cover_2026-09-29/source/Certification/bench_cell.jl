# Per-cell benchmark: shared TM coefficients, then all 48 physical rays of the carrier g2.
include("tm_krawczyk.jl")
using DelimitedFiles
th0 = [2.692, -1.5, -0.614, 1.884]; C0 = seed_coeffs(th0)
Hraw = readdlm("data/H_g2.csv", ',', ComplexF64); M = readdlm("data/rays_g2.csv", ',', Float64)
phis = [begin s = complex.(M[i,1:10], M[i,11:20]); v = vcat(1.0+0im, s[1:5]); p = (Hraw'*v/sqrt(6))[1:3];
         [angle(v[2]), angle(v[3]), angle(p[1]), angle(p[2]), angle(p[3])] end for i in 1:size(M,1)]
for k in eachindex(phis), it in 1:5
    J = ForwardDiff.jacobian(ph -> ray_eqs(ph, C0), phis[k]); phis[k] = phis[k] - J \ ray_eqs(phis[k], C0)
end
global NEWTON_STEPS
for (order, rho, nst) in [(4, 3e-3, 2), (6, 5e-3, 2), (6, 1e-2, 3), (8, 1e-2, 3)]
    global NEWTON_STEPS = nst
    tm_certify_ray(phis[1], tm_cell(th0, 1e-4; order = order))           # warm up / compile
    t1 = @elapsed cell = tm_cell(th0, rho; order = order)
    t2 = @elapsed res = [tm_certify_ray(ph, cell) for ph in phis]
    ok = count(r -> r[1], res)
    println("order $order rho $rho newton $nst: $(ok)/$(length(phis)) rays certified; max ray radius $(round(maximum([r[2] for r in res if r[1]]; init=0.0), sigdigits=3)); cell setup $(round(t1,digits=1)) s, rays $(round(t2,digits=1)) s"); flush(stdout)
end
