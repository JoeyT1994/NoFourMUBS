include("tm_krawczyk.jl")
using DelimitedFiles
th0 = [2.692, -1.5, -0.614, 1.884]; C0 = seed_coeffs(th0)
Hraw = readdlm("data/H_g2.csv", ',', ComplexF64); M = readdlm("data/rays_g2.csv", ',', Float64)
phis = [begin s = complex.(M[i,1:10], M[i,11:20]); v = vcat(1.0+0im, s[1:5]); p = (Hraw'*v/sqrt(6))[1:3];
         [angle(v[2]), angle(v[3]), angle(p[1]), angle(p[2]), angle(p[3])] end for i in 1:size(M,1)]
for k in eachindex(phis), it in 1:5
    J = ForwardDiff.jacobian(ph -> ray_eqs(ph, C0), phis[k]); phis[k] = phis[k] - J \ ray_eqs(phis[k], C0)
end
# sanity: analytic Jacobian vs ForwardDiff at the centre
Ja = ray_jac_gen(phis[1], C0); Jf = ForwardDiff.jacobian(ph -> ray_eqs(ph, C0), phis[1])
println("analytic vs AD Jacobian max diff: ", maximum(abs.(Ja .- Jf)))
for rho in (3e-3, 1e-2, 2e-2, 4e-2)
    t = @elapsed res = [tm_certify_ray(ph, th0, rho) for ph in phis[1:12]]
    nok = count(r -> r[1], res)
    println("rho $rho: certified $(nok)/12 rays; max r $(round(maximum([r[2] for r in res if r[1]]; init=0.0), sigdigits=3)); median |YF| $(round(sort([r[4] for r in res])[6], sigdigits=3)); $(round(t, digits=1)) s")
end
