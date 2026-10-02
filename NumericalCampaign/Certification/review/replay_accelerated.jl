# Geometry replay: original interval exclusion, then a separate 256-bit graph.
# ARGS: fixture, line, label-output.tsv. CERT_SOURCE may select a frozen source directory.
include(joinpath(get(ENV,"CERT_SOURCE",normpath(joinpath(@__DIR__,".."))),"cover_accelerated.jl"))
using DelimitedFiles
BLAS.set_num_threads(1)

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

f=parse.(Float64,split(readlines(ARGS[1])[parse(Int,ARGS[2])]))
lastlabels=Ref{Any}(nothing)
function capture(kept;kwargs...)
    result=PartitionLabels()(kept;kwargs...)
    lastlabels[]=result[1]
    result
end
seconds=@elapsed r=certify_cell_cover(f[1:4],f[5]+2.0^-40;
    verifier=verified_excluded,sharp_capacity=true,tight_pairs=true,label_builder=capture,
    budget=4_000_000,deadline=time()+600)
println("Original interval verifier with new label geometry: ",r," wall_seconds=",seconds);flush(stdout)
@assert r.ok
writedlm(ARGS[3],reduce(vcat,[permutedims([c;r]) for (c,r,_) in lastlabels[]]))
g=graph256(lastlabels[])
@assert g.excluded
println("PASS independent 256-bit graph, old quadratic capacity bound: ",g)
