# Where does the cover certificate spend its time on a hard cell?  (review / profiling only)
include(joinpath(@__DIR__, "..", "cover.jl")); using Profile, Printf; BLAS.set_num_threads(1)
θ = [-1.3239978018339316, 1.3258162989697315, 1.3960401118485357, -1.5124641075735994]   # a pilot child that needed cover
ρ = pi / 1024 + 2.0^-40
r = certify_cell_cover(θ, ρ; deadline = time() + 60)                    # warm-up / compile
Profile.clear()
t = @elapsed @profile (r = certify_cell_cover(θ, ρ; deadline = time() + 900))
@printf("result: %s at level %d, %d nodes, %d kept, %d labels, %.0f s\n", r.ok ? "NO QUARTET" : string(r.reason), r.level, r.nt, r.nkept, r.nlabels, t)
function report()
    data = Profile.fetch(); counts = Dict{String,Int}(); cache = Dict{UInt,Vector{String}}()
    names = ("verified_excluded", "excluded_fast", "subcover", "blocker", "make_labels", "label_graph_test", "cover_search",
             "restrict2", "s_disc", "hcell", "CoverCell", "touches", "label_contains", "cos", "sin", "atan", "sqrt", "*", "+", "^")
    nsamp = 0; cur = Set{String}()
    for ip in data
        if ip == 0
            nsamp += 1; for f in cur; counts[f] = get(counts, f, 0) + 1; end; empty!(cur); continue
        end
        for f in get!(() -> unique([string(fr.func) for fr in Profile.lookup(ip)]), cache, UInt(ip))
            f in names && push!(cur, f)
        end
    end
    for (f, c) in sort(collect(counts), by = x -> -x[2]); @printf("  %-18s %5.1f%% of samples\n", f, 100c / max(nsamp, 1)); end
end
report()
