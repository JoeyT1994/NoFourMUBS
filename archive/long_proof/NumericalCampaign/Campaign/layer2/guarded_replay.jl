# Replay historical leaves using the guarded production arithmetic.
using SHA
const REPO=normpath(joinpath(@__DIR__,"../../.."))
const FASTTM_PATH=joinpath(REPO,"NumericalCampaign/Certification/fasttm.jl")
const APPROVED_FASTTM="e18d1563b7413ad70423ed1dc16a3a785b929607611aac036fe61048a77df984"
bytes2hex(sha256(read(FASTTM_PATH)))==APPROVED_FASTTM || error("Unreviewed FastTM source")
include(joinpath(REPO,"NumericalCampaign/Campaign/driver.jl"))
isdefined(FastTM,:INV_MODELS) || error("Missing always-on guard")
input,out=abspath.(ARGS[1:2]);isfile(out) && error("Output exists")
open(out,"w") do io
    for line in eachline(input)
        f=split(line);id=parse(Int,f[1]);path=f[2]=="root" ? Int[] : parse.(Int,split(f[2],','))
        method=f[3];rho=parse(Float64,f[4]);theta=parse.(Float64,f[5:8])
        ok=false;failure="";before=FastTM.INV_MODELS[];start=time()
        try
            if method=="cover_accelerated"
                ok=certify_cell_cover_accelerated(theta,rho;partition=true,budget=20_000_000,deadline=time()+180).ok
            else
                fun=Dict("F_out"=>f_test,"R_out"=>r_test,"BC_out"=>bc_test,"D0_out"=>d0_test)[method]
                ok=fun(theta,rho)==:out
            end
        catch e
            failure=sprint(showerror,e);ok=false
        end
        bytes2hex(sha256(read(FASTTM_PATH)))==APPROVED_FASTTM || error("Source changed during replay")
        println(io,"{\"cell\":",id,",\"path\":[",join(path,","),"],\"theta\":",jl(theta),
          ",\"radius\":",jl(rho),",\"method\":",jl(method),",\"ok\":",ok,
          ",\"fasttm_sha256\":",jl(APPROVED_FASTTM),",\"guarded_models\":",FastTM.INV_MODELS[]-before,
          ",\"guard_max_norm\":",jl(FastTM.INV_MAX_NORM[]),",\"guard_max_order\":",FastTM.INV_MAX_ORDER[],
          ",\"seconds\":",jl(time()-start),",\"failure\":",jl(failure),"}");flush(io)
    end
end
