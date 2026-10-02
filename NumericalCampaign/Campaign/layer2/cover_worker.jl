# Standalone layer refinement; production sources are only included, never edited.
const REPO=normpath(joinpath(@__DIR__,"../../.."))
include(joinpath(REPO,"NumericalCampaign/Campaign/driver.jl"))
using Random
const L2DEPTH=parse(Int,get(ENV,"LAYER2_DEPTH","2"))
const L2SECONDS=parse(Float64,get(ENV,"LAYER2_SECONDS","180"))
const L2ATTEMPT=parse(Float64,get(ENV,"LAYER2_ATTEMPT","45"))
# Extra guards grow faster than Float64 centre rounding. The audit verifies
# actual containment with exact rational arithmetic, not this estimate.
radius(lev,d)=nextfloat(pi/2^(lev+d)+2.0^-40+d*2.0^-48)
function l2prune(theta,rho)
    for (name,f) in (("F_out",f_test),("R_out",r_test),("BC_out",bc_test),("D0_out",d0_test))
        r=try f(theta,rho) catch; :maybe end
        r==:out && return name
        r==:singular && return "singular"
    end
    "keep"
end
function walk(theta,lev,path,deadline,emit)
    d=length(path);rho=radius(lev,d);start=time()
    p=time()>deadline ? "time_limit" : l2prune(theta,rho)
    if endswith(p,"_out")
        emit(theta,rho,path,p,p,time()-start);return
    end
    if p=="keep" && time()<deadline
        cov=try certify_cell_cover_accelerated(theta,rho;partition=true,
            budget=20_000_000,deadline=min(deadline,time()+L2ATTEMPT))
        catch e; (ok=false,reason=Symbol("error_"*string(typeof(e)))) end
        if cov.ok
            emit(theta,rho,path,"certified","cover_accelerated",time()-start);return
        end
        p=string(cov.reason)
    end
    if d>=L2DEPTH || time()>deadline
        emit(theta,rho,path,"open",p,time()-start);return
    end
    emit(theta,rho,path,"split",p,time()-start)
    for (i,c) in enumerate(children(theta,pi/2^(lev+d)))
        walk(c,lev,[path;i-1],deadline,emit)
    end
end
function classify(theta,lev,id)
    rng=MersenneTwister(id);rho=pi/2^lev
    pts=vcat([theta],vec([theta.+rho.*collect(v) for v in Iterators.product(ntuple(_->(-1,1),4)...)]),
        [theta.+rho.*(2rand(rng,4).-1) for _ in 1:64])
    rs=[R_float(corner_E(p)) for p in pts]
    rd=[R_float(corner_E(p)) for p in pts if in_F(p) && in_D0(p)[1]]
    (length(rd),minimum(rs),maximum(rs),isempty(rd) ? NaN : minimum(rd))
end
function main()
    input,out=abspath.(ARGS[1:2]);isfile(out) && error("Output exists")
    open(out,"w") do io
        for line in eachline(input)
            f=split(line);id=parse(Int,f[1]);lev=parse(Int,f[3]);theta=parse.(Float64,f[4:7])
            start=time();cl=classify(theta,lev,id)
            println(io,"{\"cell\":",id,",\"evidence_only\":true,\"nD0\":",cl[1],",\"Rmin\":",jl(cl[2]),",\"Rmax\":",jl(cl[3]),",\"RD0min\":",jl(cl[4]),"}");flush(io)
            function emit(th,r,path,status,method,t)
                println(io,"{\"cell\":",id,",\"theta\":",jl(th),",\"radius\":",jl(r),",\"path\":[",join(path,","),"],\"status\":",jl(status),",\"method\":",jl(method),",\"seconds\":",jl(t),"}");flush(io)
            end
            walk(theta,lev,Int[],time()+L2SECONDS,emit)
            println(io,"{\"cell\":",id,",\"done\":true,\"wall_seconds\":",time()-start,"}");flush(io)
        end
    end
end
main()
