include("/Users/jtindall/Files/NoFourMUBS/NumericalCampaign/Campaign/driver.jl")
using .FastTM, IntervalArithmetic, Random
Random.seed!(1)
mk(c0, ρ) = (x = [tmvar(4, i, 0.0, ρ) for i in 1:4]; c0 + x[1] * x[2] - 0.3 * x[3] + 0.2 * x[4]^3 + x[1] * c0)
tests = [(0.9, 0.01), (0.05, 0.002), (3.0, 0.2), (0.01, 0.0005)]
res = Dict()
for (c0, ρ) in tests
    a = mk(c0, ρ)
    res[(c0, ρ)] = (bound(inv(a)), bound(sqrt(a)))
end
include(joinpath(@__DIR__, "scaled_intrinsics.jl"))
for (c0, ρ) in tests
    a = mk(c0, ρ); bi, bs = bound(inv(a)), bound(sqrt(a)); oi, os = res[(c0, ρ)]
    ok = true
    for _ in 1:2000
        s = 2 .* rand(4) .- 1
        v = evalpoly_at(a, s)      # a has tiny remainder; point value of the modelled function
        ok &= in_interval(1 / v, bi) && in_interval(sqrt(v), bs) && in_interval(1 / v, oi) && in_interval(sqrt(v), os)
    end
    println((c0, ρ), " points inside both: ", ok, "  inv orig ", oi, " scaled ", bi, "  sqrt orig ", os, " scaled ", bs)
end
