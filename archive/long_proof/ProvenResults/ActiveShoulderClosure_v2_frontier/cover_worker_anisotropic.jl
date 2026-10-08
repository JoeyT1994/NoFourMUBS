# The frozen production kernel is unchanged. Message/trace fields are base64
# so tabs and newlines cannot corrupt the request/response protocol.
using Base64
include(joinpath(@__DIR__,"../../NumericalCampaign/Certification/cover_accelerated.jl"))
FastTM.tmvar(Q::Int,i::Int,c::Float64,r::Vector{Float64}) = FastTM.tmvar(Q,i,c,r[i])
BLAS.set_num_threads(1)
cpu()=ccall(:clock,Clong,())/1.0e6
println("READY\t",VERSION,"\t",cpu());flush(stdout)
for line in eachline(stdin)
    begin_cpu=cpu();begin_wall=time()
    try
        f=parse.(Float64,split(line));@assert length(f)==10
        result=certify_cell_cover_accelerated(f[1:4],f[5:8];partition=true,
                    budget=Int(f[9]),deadline=time()+f[10])
        println(result.ok,'\t',result.reason,'\t',result.nt,'\t',cpu()-begin_cpu,'\t',time()-begin_wall,"\t-\t-")
    catch ex
        bt=catch_backtrace()
        message=base64encode(sprint(showerror,ex))
        trace=base64encode(sprint(showerror,ex,bt))
        println("false\texception_",nameof(typeof(ex)),"\t0\t",cpu()-begin_cpu,'\t',time()-begin_wall,'\t',message,'\t',trace)
    end
    flush(stdout)
end
