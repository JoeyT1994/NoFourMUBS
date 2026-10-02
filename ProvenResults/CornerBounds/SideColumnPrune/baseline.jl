# Independent comparison only: these statuses are not certificate inputs.
const ROOT = normpath(joinpath(@__DIR__, "../../.."))
include(joinpath(ROOT, "NumericalCampaign/Certification/domain.jl"))
using SHA

for source in ("Certification/domain.jl", "Certification/fasthplus.jl",
               "Certification/fasttm.jl", "Campaign/driver.jl")
    path = joinpath(ROOT, "NumericalCampaign", source)
    println("source ", source, " sha256=", bytes2hex(sha256(read(path))))
end

cases = [
    ("mixed_34", [169,139,-179,395]),
    ("mixed_38", [-289,-307,-381,89]),
    ("mixed_43", [-149,-213,-333,199]),
    ("mixed_60", [291,321,443,-117]),
]

for (name, numerators) in cases
    theta = numerators .* (pi/512)
    rho = pi/512
    x = [tmvar(2,i,theta[i],rho) for i in 1:4]
    a,b,c,d = cex_tm.(x)
    o = one(a)
    E = [o o o; o a b; o c d]
    # Only the first corner is used; repeated blocks here are a convenience
    # for calling the existing corner-polynomial implementation.
    Rbounds = fbound(corner_R_all([E E; E E])[1,1])
    ft, bc, dt = f_test(theta,rho), bc_test(theta,rho), d0_test(theta,rho)
    @assert ft == :maybe && bc == :maybe && dt == :singular
    @assert sup(Rbounds) > 0
    println(name, " F=", ft, " BC=", bc, " D0=", dt,
            " R=[", inf(Rbounds), ",", sup(Rbounds), "]")
end
println("PASS: all four examples are retained as singular by the existing tests")
