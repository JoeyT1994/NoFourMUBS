include("single_radical.jl")
using DelimitedFiles, IntervalArithmetic, ForwardDiff
th0 = [2.692, -1.5, -0.614, 1.884]
C0 = seed_coeffs(th0)
# rays from the HC solve file (physical solutions, chart z1=w1=1): z = (1, z2..z6) raw ray
Hraw = readdlm("data/H_g2.csv", ',', ComplexF64)
M = readdlm("data/rays_g2.csv", ',', Float64); nphys = size(M, 1)
phys = [complex.(M[i, 1:10], M[i, 11:20]) for i in 1:nphys]
phis = Vector{Vector{Float64}}()
for s in phys
    v = vcat(1.0 + 0im, s[1:5])                  # raw ray (unimodular)
    p = (Hraw' * v / sqrt(6))[1:3]
    push!(phis, [angle(v[2]), angle(v[3]), angle(p[1]), angle(p[2]), angle(p[3])])
end
println("physical rays: $nphys; max ray-equation residual at centre: ",
        maximum(maximum(abs.(ray_eqs(ph, C0))) for ph in phis))
println("overlap check <v1,v2>: ", overlap(phis[1], phis[2], C0), " vs direct ",
        let v1 = vcat(1.0+0im, phys[1][1:5]), v2 = vcat(1.0+0im, phys[2][1:5]); v1'v2 end)
# coefficient enclosure over a seed box: naive vs centred (mean-value) form
coeffvec(th) = (C = seed_coeffs(th); vcat(C.g, real.(vec(C.JT)), imag.(vec(C.JT)), real.(vec(C.v.NX)), imag.(vec(C.v.NX)), real(C.R)))
c0 = coeffvec(th0)
for rho in (1e-3, 1e-2, 3e-2)
    box = [interval(t - rho, t + rho) for t in th0]
    naive = coeffvec(box)
    Jbox = ForwardDiff.jacobian(coeffvec, box)          # derivative enclosure over the box
    centred = [interval(c0[i]) + sum(Jbox[i, m] * interval(-rho, rho) for m in 1:4) for i in eachindex(c0)]
    wn = maximum(radius.(naive)); wc = maximum(radius.(centred))
    println("rho $rho: max coefficient half-width naive $(round(wn, sigdigits=3)), centred $(round(wc, sigdigits=3)), R lower bound $(round(inf(centred[end]), sigdigits=4))")
end
