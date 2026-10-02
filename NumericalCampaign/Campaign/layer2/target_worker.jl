# Explicit enlarged terminal targets from hybrid.py; no hidden subdivision.
const REPO=normpath(joinpath(@__DIR__,"../../.."))
include(joinpath(REPO,"NumericalCampaign/Campaign/driver.jl"))
input,out=abspath.(ARGS[1:2]);isfile(out) && error("Output exists")
deadlines=Dict{Int,Float64}()
open(out,"w") do io
    for line in eachline(input)
        f=split(line);id=parse(Int,f[1]);path=f[2]=="root" ? Int[] : parse.(Int,split(f[2],','))
        rho=parse(Float64,f[3]);theta=parse.(Float64,f[4:7]);start=time()
        deadline=get!(deadlines,id,time()+parse(Float64,get(ENV,"LAYER2_SECONDS","180")))
        status="open";method="time_limit"
        if time()<deadline
            method="keep"
            for (name,fun) in (("F_out",f_test),("R_out",r_test),("BC_out",bc_test),("D0_out",d0_test))
                r=try fun(theta,rho) catch; :maybe end
                if r==:out;status=name;method=name;break end
                if r==:singular;method="singular";break end
            end
            if method=="keep" && time()<deadline
                cov=try certify_cell_cover_accelerated(theta,rho;partition=true,budget=20_000_000,
                    deadline=min(deadline,time()+parse(Float64,get(ENV,"LAYER2_ATTEMPT","45"))))
                catch e;(ok=false,reason=Symbol("error_"*string(typeof(e)))) end
                if cov.ok;status="certified";method="cover_accelerated"
                else;method=string(cov.reason) end
            end
        end
        println(io,"{\"cell\":",id,",\"path\":[",join(path,","),"],\"theta\":",jl(theta),",\"radius\":",jl(rho),",\"status\":",jl(status),",\"method\":",jl(method),",\"seconds\":",time()-start,"}");flush(io)
    end
end
