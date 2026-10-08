# Persistent production cover service. No floating result other than ok=true
# authorizes a terminal; a clean replay reruns the complete outward algorithm.
include(joinpath(@__DIR__,"../../NumericalCampaign/Certification/cover_accelerated.jl"))
BLAS.set_num_threads(1)
cpu()=ccall(:clock,Clong,())/1.0e6
println("READY\t",VERSION);flush(stdout)
for line in eachline(stdin)
    begin_cpu=cpu();begin_wall=time();nt=0
    try
        f=parse.(Float64,split(line));@assert length(f)==7
        result=certify_cell_cover_accelerated(f[1:4],f[5];partition=true,
                    budget=Int(f[6]),deadline=time()+f[7])
        println(result.ok,'\t',result.reason,'\t',result.nt,'\t',cpu()-begin_cpu,'\t',time()-begin_wall)
    catch ex
        println("false\texception_",nameof(typeof(ex)),"\t0\t",cpu()-begin_cpu,'\t',time()-begin_wall)
    end
    flush(stdout)
end
