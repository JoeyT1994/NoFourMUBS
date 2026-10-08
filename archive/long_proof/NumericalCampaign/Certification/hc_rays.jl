# All complex solutions of the common-ray system of (I, H) for a fixed carrier H,
# with Krawczyk certification (HomotopyContinuation.certify).
#   variables z2..z6, w2..w6 (chart z1 = w1 = 1; physical rays have w = conj(z), |z_i| = 1)
#   z_i w_i = 1 (i = 2..6),   (sum_j conj(H_jk) z_j)(sum_j H_jk w_j) = 6  (k = 1..5)
# The finite common-ray algebra theorem gives the number of projective solutions:
# 252 - 2m for H with no zero 3x3 minor and m zero 2x2 minors.
using HomotopyContinuation, LinearAlgebra, DelimitedFiles

function ray_system(H)
    @var z[2:6] w[2:6]
    Z = [1; z]; W = [1; w]
    eqs = [z[i]*w[i] - 1 for i in 1:5]
    for k in 1:5
        push!(eqs, sum(conj(H[j,k])*Z[j] for j in 1:6) * sum(H[j,k]*W[j] for j in 1:6) - 6)
    end
    System(eqs; variables = [z; w])
end

H = readdlm(ARGS[1], ',', ComplexF64)          # 6x6 phase Hadamard (unnormalised)
@assert maximum(abs.(H'H - 6I)) < 1e-10
F = ray_system(H)
t = @elapsed res = solve(F; show_progress = false)
sols = solutions(res)
phys = filter(s -> maximum(abs.(s[6:10] .- conj.(s[1:5]))) < 1e-8, sols)
println("solve time $(round(t, digits=1)) s; finite solutions $(length(sols)); physical (w = conj z) $(length(phys))")
tc = @elapsed cert = certify(F, sols)
println("certify time $(round(tc, digits=1)) s; certified distinct solutions $(ndistinct_certified(cert)); certified real-type? $(nreal_certified(cert))")
writedlm(ARGS[2], hcat(real.(reduce(hcat, phys))', imag.(reduce(hcat, phys))'), ',')
