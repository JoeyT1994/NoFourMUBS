# Input: CELL PATH(comma-separated, or root) METHOD RADIUS THETA1..4
const REPO=normpath(joinpath(@__DIR__,"../../.."))
include(joinpath(REPO,"NumericalCampaign/Campaign/driver.jl"))
input,out=abspath.(ARGS[1:2]);isfile(out) && error("Output exists")
open(out,"w") do io
    for line in eachline(input)
        f=split(line);id=parse(Int,f[1]);path=f[2]=="root" ? Int[] : parse.(Int,split(f[2],','))
        method=f[3];rho=parse(Float64,f[4]);theta=parse.(Float64,f[5:8])
        ok=false
        try
            if method=="cover_accelerated"
                ok=certify_cell_cover_accelerated(theta,rho;partition=true,budget=20_000_000,deadline=time()+180).ok
            else
                fun=Dict("F_out"=>f_test,"R_out"=>r_test,"BC_out"=>bc_test,"D0_out"=>d0_test)[method]
                ok=fun(theta,rho)==:out
            end
        catch;ok=false end
        println(io,"{\"cell\":",id,",\"path\":[",join(path,","),"],\"theta\":",jl(theta),",\"radius\":",jl(rho),",\"method\":",jl(method),",\"ok\":",ok,"}");flush(io)
    end
end
