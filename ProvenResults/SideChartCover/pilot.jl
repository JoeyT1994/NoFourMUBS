# Bounded, single-process, single-file shard. NOT RUN in the delivery environment.
# Usage: julia --startup-file=no --threads=1 --project=<production jlenv_cluster> \
#          pilot.jl <source.txt[.gz]> <output.tsv> [start_index=0] [count=1000] [seconds_per_box=60]
include("provider.jl")
using Printf
BLAS.set_num_threads(1)
length(ARGS)>=2 || error("source and output paths are required")
source,out=ARGS[1:2]
start=length(ARGS)>=3 ? parse(Int,ARGS[3]) : 0
count=length(ARGS)>=4 ? parse(Int,ARGS[4]) : 1000
seconds=length(ARGS)>=5 ? parse(Float64,ARGS[5]) : 60.0
0<=start && count>0 && isfinite(seconds) && seconds>0 || error("invalid bounds")
# Never use an existing result path or append to a run of record.
ispath(out) && error("output exists; choose a new shard name")
occursin("nofourmubs_rescaled_2026-09-30",abspath(out)) && error("run-of-record output prohibited")
lines=endswith(source,".gz") ? readlines(`gzip -dc $source`) : readlines(source)
N=length(lines); N>=1000 || error("source has fewer than 1000 records")
# Same 1000 deterministic source positions as the outward Python pilot.
indices=[1+(k*(N-1))÷999 for k in 0:999]
start+count<=length(indices) || error("shard exceeds deterministic sample")
# POSIX/Linux process CPU clock, CLOCKS_PER_SEC=1,000,000. Timings are diagnostics.
cpu()=ccall(:clock,Clong,())/1_000_000
open(out,"w") do io
    println(io,"sample_index\tsource_line\tcell\tlevel\trho_seed\tok\treason\tcpu_seconds\twall_seconds\tnt\tnlabels\tnkept")
    for k in start:start+count-1
        line=indices[k+1];parts=split(lines[line]);theta=parse.(Float64,parts[4:7]);lev=parse(Int,parts[3])
        rho=sup(interval(pi)/(2^lev)+interval(2.0)^(-40))
        t=time();c=cpu()
        result=try
            certify_cell_sidechart(theta,rho;partition=true,budget=4_000_000,deadline=time()+seconds)
        catch ex
            ex isa InterruptException && rethrow()
            sc_failure(:pilot_exception)
        end
        values=(k,line,parts[1],lev,rho,result.ok,result.reason,cpu()-c,time()-t,result.nt,result.nlabels,result.nkept)
        println(io,join(string.(values),'\t'));flush(io)
    end
end
