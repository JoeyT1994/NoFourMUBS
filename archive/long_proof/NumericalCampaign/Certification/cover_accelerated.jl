# Opt-in accelerated cover certificate. Existing campaign defaults are unchanged.
isdefined(Main, :CoverCell) || include("cover.jl")
include("cartesian_cover.jl")
include("cover_labels.jl")

"""Same whole-seed-cell claim and resource limits as certify_cell_cover.
Uses a private outward-interval Cartesian verifier, certified anisotropic
label capacities, and intersected direct-arc pair enclosures. Optional
partitioning replaces oversized connected components by smaller labels.
All unresolved/resource-limit outcomes remain inconclusive.
"""
function certify_cell_cover_accelerated(theta, rho; partition=false, kwargs...)
    certify_cell_cover(theta, rho; verifier=CartesianVerifier(),
        sharp_capacity=true, tight_pairs=true,
        label_builder=partition ? PartitionLabels() : make_labels, kwargs...)
end
