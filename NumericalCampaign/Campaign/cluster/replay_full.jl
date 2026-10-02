# Independent replay audit of the full certification run (29 Sep 2026).
#   julia --project=code/Certification/jlenv_cluster replay_full.jl K [SEED] [RESULTS_SUBDIR=certify_full]
# Picks K certified leaves at random (a random task file, then a random certified leaf in it) and re-certifies each
# on the same enlarged cell with the ORIGINAL interval exclusion test (verified_excluded, not the Cartesian verifier),
# sharp capacity and partitioned labels, then rebuilds the overlap graph independently at 256 bits under the old
# quadratic capacity bound (graph256, copied verbatim from Certification/review/replay_accelerated.jl).
# Agreement is evidence about the production run, not an additional proof.
const PKG = @__DIR__
const CERT = isdir(joinpath(PKG, "code", "Certification")) ? joinpath(PKG, "code", "Certification") : joinpath(PKG, "..", "..", "Certification")
include(joinpath(CERT, "cover_accelerated.jl"))
using Random, Printf; BLAS.set_num_threads(1)

function graph256(labels)
    setprecision(BigFloat,256) do
        I(x)=interval(BigFloat(x))
        unit(t)=complex(cos(t),sin(t))
        n=length(labels); O=[BitSet() for _ in 1:n]; U=[BitSet() for _ in 1:n]
        target=I(1)/6
        for (_,r,_) in labels
            b=1-sum(I(x)^2 for x in r)/3
            @assert inf(b)>0 && inf(b^2)>sup(target) # original quadratic capacity theorem
        end
        for a in 1:n, b in a+1:n
            ca,ra=labels[a][1:2]; cb,rb=labels[b][1:2]
            d=[I(cb[k])-I(ca[k]) for k in 1:5]
            width=[I(ra[k])+I(rb[k]) for k in 1:5]
            g=(1+sum(unit.(d)))/6
            amp=sqrt(real(g)^2+imag(g)^2); e=sum(width)/6
            old=interval(max(BigFloat(0),inf(amp-e)),min(BigFloat(1),sup(amp+e)))^2
            gamma=I(angle(complex(mid(real(g)),mid(imag(g)))))
            terms=[unit(d[k]-gamma+interval(-sup(width[k]),sup(width[k]))) for k in 1:5]
            total=unit(-gamma)+sum(terms)
            direct=(real(total)^2+imag(total)^2)/36
            lo=max(inf(old),inf(direct)); hi=min(sup(old),sup(direct))
            @assert lo<=hi
            if lo<=0<=hi; push!(O[a],b);push!(O[b],a);end
            if lo<=sup(target) && hi>=inf(target); push!(U[a],b);push!(U[b],a);end
        end
        # Independent BitSet enumeration, with no clique cap for this replay.
        function visit(cand, chosen, callback)
            length(chosen)==6 && return callback(chosen)
            left=copy(cand)
            while length(left)>=6-length(chosen)
                v=first(left);delete!(left,v)
                visit(intersect(left,O[v]),[chosen;v],callback) && return true
            end
            false
        end
        bases=Ref(0)
        found=visit(BitSet(1:n),Int[],basis -> begin
            bases[]+=1
            candidates=reduce(intersect,[U[v] for v in basis])
            visit(candidates,Int[],_ -> true)
        end)
        (excluded=!found,labels=n,nO=sum(length,O)÷2,nU=sum(length,U)÷2,bases=bases[])
    end
end

positive=[(Float64[2pi*j*k/6+family*pi*k^2/6 for k in 1:5],fill(1e-8,5),[6family+j+1])
          for family in 0:1 for j in 0:5]
@assert !graph256(positive).excluded

K = parse(Int, ARGS[1]); Random.seed!(length(ARGS) > 1 ? parse(Int, ARGS[2]) : 20260930)
dir = joinpath(PKG, "results", length(ARGS) > 2 ? ARGS[3] : "certify_full")
files = filter(f -> endswith(f, ".jsonl"), readdir(dir; join = true))
picked = Tuple{Vector{Float64},Float64,String}[]
while length(picked) < K && !isempty(files)
    f = files[rand(1:length(files))]
    ls = [l for l in eachline(f) if occursin("\"status\":\"certified\"", l)]
    isempty(ls) && continue
    l = ls[rand(1:length(ls))]
    th = parse.(Float64, split(match(r"\"theta\":\[([^\]]*)\]", l)[1], ","))
    rho = parse(Float64, match(r"\"rho\":([0-9.eE+-]+)", l)[1])
    push!(picked, (th, rho, match(r"\"method\":\"(\w+)\"", l)[1]))
end
println(length(files), " result files; replaying ", length(picked), " random certified leaves"); flush(stdout)
lastlabels = Ref{Any}(nothing)
capture(kept; kwargs...) = (res = PartitionLabels()(kept; kwargs...); lastlabels[] = res[1]; res)
bad = 0
for (θ, ρ, meth) in picked
    lastlabels[] = nothing
    t = @elapsed r = certify_cell_cover(θ, ρ + 2.0^-40; verifier = verified_excluded, sharp_capacity = true, tight_pairs = true,
                                        label_builder = capture, budget = 20_000_000, deadline = time() + 1800)
    g = r.ok ? graph256(lastlabels[]) : (excluded = false, labels = 0)
    ok = r.ok && g.excluded
    global bad += !ok
    @printf("%s %-17s θ=%s ρ=%.4g: original verifier %s (%d labels), 256-bit graph %s (%.0f s)\n", ok ? "agree   " : "DISAGREE", meth,
            string(round.(θ, digits = 4)), ρ, r.ok ? "certified" : string(r.reason), r.nlabels, g.excluded ? "excluded" : "NOT excluded", t)
    flush(stdout)
end
println(bad == 0 ? "replay: all $(length(picked)) agree" : "replay: $bad disagreements (inconclusive replays count as disagreements)")
