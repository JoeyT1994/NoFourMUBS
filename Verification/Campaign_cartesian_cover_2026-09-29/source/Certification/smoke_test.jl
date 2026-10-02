# Smoke test of the certification tools on carrier g2 (seeds 2.692, -1.5, -0.614, 1.884):
#   1. the single-radical port vanishes on the 48 physical rays;
#   2. FastTM seed coefficients over a ρ = 5e-3 cell enclose BigFloat values at random points;
#   3. the FastTM Krawczyk certificate certifies all 48 rays over that cell.
include("fast_krawczyk.jl")
using DelimitedFiles, Random
Random.seed!(3); setprecision(BigFloat, 200)
θ0 = [2.692, -1.5, -0.614, 1.884]; C0 = seed_coeffs(θ0); ρ = 5e-3
Hraw = readdlm("data/H_g2.csv", ',', ComplexF64); M = readdlm("data/rays_g2.csv", ',', Float64)
phis = [begin s = complex.(M[i,1:10], M[i,11:20]); v = vcat(1.0+0im, s[1:5]); p = (Hraw'*v/sqrt(6))[1:3];
         [angle(v[2]), angle(v[3]), angle(p[1]), angle(p[2]), angle(p[3])] end for i in 1:size(M,1)]
res0 = maximum(maximum(abs.(ray_eqs(ph, C0))) for ph in phis)
println("1. max |ray equations| on the 48 physical rays: ", res0); @assert res0 < 1e-8
cell = fast_cell(θ0, ρ)
evalbig(m, s) = (T = FastTM.table(tmorder(m)); sum(big(coeffs(m)[k]) * prod(big(s[i])^T.exps[k][i] for i in 1:4) for k in 1:T.N))
refl(x::Real) = [x]; refl(z::Complex) = [real(z), imag(z)]
refl(A::AbstractArray) = reduce(vcat, [refl(y) for y in A]); refl(t::NamedTuple) = reduce(vcat, [refl(t[k]) for k in keys(t)])
L = leaves(cell.Ctm); viol = 0
for _ in 1:10
    s = 2 .* rand(4) .- 1
    ref = refl(seed_coeffs([big(θ0[i]) + big(ρ) * big(s[i]) for i in 1:4]))
    global viol += count(abs(v - evalbig(m, s)) > remainder_radius(m) for (m, v) in zip(L, ref))
end
println("2. coefficient enclosure violations at 10 random points x $(length(L)) entries: ", viol); @assert viol == 0
for k in eachindex(phis), it in 1:5
    J = ForwardDiff.jacobian(ph -> ray_eqs(ph, C0), phis[k]); phis[k] = phis[k] - J \ ray_eqs(phis[k], C0)
end
res = [fast_certify_ray(ph, cell) for ph in phis]
println("3. rays certified over the ρ = 5e-3 cell: ", count(r -> r[1], res), "/48"); @assert all(r -> r[1], res)
println("PASS")
