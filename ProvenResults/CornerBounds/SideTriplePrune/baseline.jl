# Comparison with the existing campaign tests; not a certificate premise.
const ROOT = normpath(joinpath(@__DIR__, "../../.."))
include(joinpath(ROOT,"NumericalCampaign/Certification/domain.jl"))
using SHA

for source in ("Certification/domain.jl","Certification/fasthplus.jl",
               "Certification/fasttm.jl","Campaign/driver.jl")
    path = joinpath(ROOT,"NumericalCampaign",source)
    println("source ",source," sha256=",bytes2hex(sha256(read(path))))
end

for line in eachline(joinpath(@__DIR__,"data/grid.txt"))
    fields = split(line)
    name, numerators = fields[1], parse.(Int,fields[2:5])
    theta, rho = numerators.*(pi/512), pi/512
    x = [tmvar(2,i,theta[i],rho) for i in 1:4]
    a,b,c,d = cex_tm.(x)
    o = one(a)
    E = [o o o; o a b; o c d]
    rb = fbound(corner_R_all([E E; E E])[1,1])
    ft,bc,dt = f_test(theta,rho),bc_test(theta,rho),d0_test(theta,rho)
    @assert ft == :maybe && bc == :maybe && dt == :singular
    @assert sup(rb) > 0
    println(name," F=",ft," BC=",bc," D0=",dt,
            " R=[",inf(rb),",",sup(rb),"]")
end
println("PASS: all eleven examples are retained as singular by the existing tests")
