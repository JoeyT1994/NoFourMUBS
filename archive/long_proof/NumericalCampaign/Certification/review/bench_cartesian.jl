include(joinpath(@__DIR__, "..", "cover_accelerated.jl"))
using Printf, SHA
BLAS.set_num_threads(1)
println("Julia ", VERSION, "; threads=", Threads.nthreads())
for path in ("cover.jl", "box_capacity.jl", "cartesian_cover.jl", "cover_labels.jl", "cover_accelerated.jl", "review/bench_cartesian.jl", "fastexcl.jl", "hform.jl")
    println("source ", path, " ", bytes2hex(sha256(read(joinpath(@__DIR__, "..", path)))))
end
flush(stdout)
lines = readlines(ARGS[1]); ids = length(ARGS) > 1 ? parse.(Int, split(ARGS[2], ",")) : eachindex(lines)
for li in ids
    f = parse.(Float64, split(lines[li])); theta = f[1:4]; rho = f[5] + 2.0^-40
    # Warm compilation on the same whole-cell Taylor model, outside timings.
    cc = CoverCell(hcell(theta, rho).H)
    for mode in split(get(ENV, "MODES", "original,cartesian"), ",")
        verifier = mode == "original" ? verified_excluded : CartesianVerifier()
        cover_search(cc; budget=1024, verifier=verifier)
        make_labels([(zeros(5),fill(0.01,5),zeros(4),ones(4))]; sharp_capacity=mode in ("sharp","tight"))
        label_graph_test([(zeros(5),fill(0.01,5),[1])]; tight_pairs=mode == "tight")
        verifier = mode == "original" ? verified_excluded : CartesianVerifier()
        GC.gc()
        result = nothing
        cpu_start = ccall(:clock, Clong, ()) / 1_000_000
        seconds = @elapsed result = certify_cell_cover(theta, rho; verifier=verifier,
            budget=parse(Int,get(ENV,"BUDGET","4000000")), deadline=time()+300,
            sharp_capacity=mode in ("sharp","tight","partition"), tight_pairs=mode in ("tight","partition"),
            label_builder=mode == "partition" ? PartitionLabels() : make_labels)
        cpu_seconds = ccall(:clock, Clong, ()) / 1_000_000 - cpu_start
        println((fixture=basename(ARGS[1]), line=li, mode=mode, seconds=seconds, cpu_seconds=cpu_seconds, result=result,
            counts=verifier isa CartesianVerifier ? (verifier.calls,verifier.coarse,verifier.refined,verifier.fallback) : nothing))
        flush(stdout)
    end
end
