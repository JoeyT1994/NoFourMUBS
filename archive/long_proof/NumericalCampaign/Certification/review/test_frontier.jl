# Unit test of frontier_select (cover.jl boundary refinement) on synthetic dyadic box sets.
#   julia --project=jlenv_cluster review/test_frontier.jl
include(joinpath(@__DIR__, "..", "cover.jl"))
p = PCHART
box(j, I) = (E = 2p / (4 * 2^j); (Float64[-p + E * I[k] for k in 1:5], Float64[-p + E * (I[k] + 1) for k in 1:5], zeros(4), ones(4)))
# 3^5 block at level 3: only the centre is interior
kept = [box(3, (5, 5, 5, 5, 5) .+ Tuple(d) .- 1) for d in Iterators.product(ntuple(_ -> 0:2, 5)...)] |> vec
@assert all(box_addr(k[1], k[2]) == (3, (5,5,5,5,5) .+ Tuple(d) .- 1) for (k, d) in zip(kept, vec(collect(Iterators.product(ntuple(_ -> 0:2, 5)...)))))
f = frontier_select(kept, 9); println("block: ", length(kept), " boxes, ", length(f), " frontier (expect 242)")
# replace the +x1 face neighbour of the centre by its 32 children: centre must stay interior
ci = findfirst(k -> box_addr(k[1], k[2]) == (3, (5,5,5,5,5)), kept)
ni = findfirst(k -> box_addr(k[1], k[2]) == (3, (6,5,5,5,5)), kept)
kids = [box(4, (12, 10, 10, 10, 10) .+ Tuple(d)) for d in Iterators.product(ntuple(_ -> 0:1, 5)...)] |> vec
k2 = [kept[setdiff(1:end, ni)]; kids]
f2 = frontier_select(k2, 9); println("refined neighbour: centre frontier? ", any(box_addr(k2[i][1], k2[i][2]) == (3, (5,5,5,5,5)) for i in f2), " (expect false)")
# drop one face-adjacent child (the one touching the centre's face): centre becomes frontier
k3 = [kept[setdiff(1:end, ni)]; kids[2:end]]
f3 = frontier_select(k3, 9); println("child removed at face: centre frontier? ", any(box_addr(k3[i][1], k3[i][2]) == (3, (5,5,5,5,5)) for i in f3), " (expect true)")
# drop a child on the far side instead: centre stays interior
far = findfirst(k -> box_addr(k[1], k[2]) == (4, (13, 10, 10, 10, 10)), kids)
k4 = [kept[setdiff(1:end, ni)]; kids[setdiff(1:end, far)]]
f4 = frontier_select(k4, 9); println("child removed away from face: centre frontier? ", any(box_addr(k4[i][1], k4[i][2]) == (3, (5,5,5,5,5)) for i in f4), " (expect false)")
# periodic wrap: a full slab along x1 at level 2 (16 cells) × 3^4 block; nothing is frontier along x1
kept5 = [box(2, (i, 5, 5, 5, 5) .+ (0, d...) .- (0, 1, 1, 1, 1)) for i in 0:15 for d in Iterators.product(ntuple(_ -> 0:2, 4)...)]
f5 = frontier_select(kept5, 9); println("periodic slab: ", length(kept5), " boxes, ", length(f5), " frontier (expect ", 16 * (81 - 1), ")")
println("grid levels: ", [grid_level(w) for w in COVER_WIDTHS])
