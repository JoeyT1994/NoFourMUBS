# Bounded label partition; certify_cell_cover still verifies every box's containment.
# Proof: ProvenResults/CommonRays/ClusterCover/LABEL_REFINEMENT.md.
struct PartitionLabels
    radius::Float64
    cap::Int
end
PartitionLabels() = PartitionLabels(0.3,256)
function (builder::PartitionLabels)(kept; rcap=RCAP, sharp_capacity=false)
    groups, _ = make_labels(kept; rcap=Inf)
    labels = empty(groups)
    while !isempty(groups)
        c,r,mem = pop!(groups)
        if maximum(r) <= min(builder.radius,rcap) && certified_box_capacity(r)
            push!(labels,(c,r,mem)); continue
        end
        if length(mem)<2 || length(labels)+length(groups)+2>builder.cap
            # No certificate was produced; retain all boxes for finer phase search.
            return (empty(labels),collect(eachindex(kept)))
        end
        k = argmax(r)
        function centre(i)
            x = (kept[i][1][k]+kept[i][2][k])/2
            x + round((c[k]-x)/TWOPI)*TWOPI
        end
        ids = sort(mem;by=centre); cut=length(ids)÷2
        for child in (ids[1:cut],ids[cut+1:end])
            ref=(kept[first(child)][1].+kept[first(child)][2])./2
            lo=fill(Inf,5); hi=fill(-Inf,5)
            for i in child
                l,u=kept[i][1],kept[i][2]; mid=(l.+u)./2
                sh=round.((ref.-mid)./TWOPI).*TWOPI
                lo.=min.(lo,l.+sh); hi.=max.(hi,u.+sh)
            end
            cc=(lo.+hi)./2; rr=(hi.-lo)./2 .+1e-9.*(1 .+abs.(cc))
            push!(groups,(cc,rr,child))
        end
    end
    labels,Int[]
end
