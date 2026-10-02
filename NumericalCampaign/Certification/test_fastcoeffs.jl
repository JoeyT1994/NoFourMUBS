# FastTM seed coefficients: rigour by BigFloat sampling, remainder widths and time vs TaylorModels.jl.
include("fastcoeffs.jl")
using Random, Printf
Random.seed!(2); setprecision(BigFloat, 200)
θ0 = [2.692, -1.5, -0.614, 1.884]

# BigFloat reference leaves in the same order as leaves(C)
refleaves(x::Real) = [x]
refleaves(z::Complex) = [real(z), imag(z)]
refleaves(A::AbstractArray) = reduce(vcat, [refleaves(y) for y in A])
refleaves(t::NamedTuple) = reduce(vcat, [refleaves(t[k]) for k in keys(t)])
function evalbig(m, s)
    T = FastTM.table(tmorder(m)); v = big(0.0)
    for k in 1:T.N; e = T.exps[k]; v += big(coeffs(m)[k]) * prod(big(s[i])^e[i] for i in 1:4); end
    v
end
# the Complex{BigFloat} reference must use the same structure as seed_coeffs_tm's NamedTuple
function ref_struct(θ)
    a, b, c, d = cis.(θ); o = one(a)
    E = [o o o; o a b; o c d]
    Gh = 6I - E*E'; T = 6I - E'*E
    s, t, r = Gh[2,1], Gh[3,1], Gh[3,2]
    X, Y, Z = abs2(s), abs2(t), abs2(r)
    p = X + Y + Z; J = 2*real(s*r*conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    R = 4g^2*eta - chi^2; zeta = Complex(chi, sqrt(R)) / (2g)
    (E = E, g = g, R = R, JG = adj3(Gh), JT = adj3(T), h = moment_side(Gh, zeta, g), v = moment_side(T, zeta, g))
end

for (ρ, q, hi) in [(3e-3, 4, 4), (5e-3, 4, 8), (1e-2, 4, 8), (1e-2, 8, 8), (2e-2, 4, 8)]
    fast_cell_coeffs(θ0, ρ; q = q, hi = hi)
    t = @elapsed C = fast_cell_coeffs(θ0, ρ; q = q, hi = hi)
    L = leaves(C)
    worst = 0.0; viol = 0
    for _ in 1:60
        s = 2 .* rand(4) .- 1
        ref = refleaves(ref_struct([big(θ0[i]) + big(ρ) * big(s[i]) for i in 1:4]))
        @assert length(ref) == length(L)
        for (m, v) in zip(L, ref)
            e = Float64(abs(v - evalbig(m, s)))
            viol += e > remainder_radius(m); worst = max(worst, e / max(remainder_radius(m), 1e-300))
        end
    end
    rv = remainder_radius(C.v.NY[3, 2].re)
    @printf("ρ=%.0e order %d (from %d): %d leaves, v.NY32 rem %.2e, max rem %.2e, violations %d, worst err/rem %.2f, %.3f s\n",
            ρ, q, hi, length(L), rv, maximum(remainder_radius, L), viol, worst, t)
end
