# Run from the repository root with the pinned Certification/jlenv_cluster.
# This calls unchanged campaign code; it runs no campaign jobs.
using IntervalArithmetic
include(joinpath(@__DIR__, "..", "NumericalCampaign", "Certification", "fasttm.jl"))
using .FastTM
x=prevfloat(floatmin(Float64))
a=nextfloat(2.0^1023)
product_model=x*tmconst(2,a)
exact=Rational{BigInt}(x)*Rational{BigInt}(a)
error=abs(exact-Rational{BigInt}(coeffs(product_model)[1]))
@assert error==big(1)//(big(2)^103)
@assert error>Rational{BigInt}(remainder_radius(product_model))
residual=product_model-2
B=bound(residual)
@assert exact-2 < Rational{BigInt}(inf(B))
println("PASS: counterexample reproduced in Julia ",VERSION)
println("coefficient error = ",error, "; reported remainder = ",remainder_radius(product_model))
println("exact residual = ",exact-2,"; returned enclosure = ",B)
