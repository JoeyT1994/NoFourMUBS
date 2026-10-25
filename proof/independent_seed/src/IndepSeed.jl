# Independent replay of a seed-atlas certificate (proof/seed_atlas/SPEC.md), in IntervalArithmetic.jl.
# The existing independent checker (proof/independent/src) is loaded unchanged as the submodule IndepAtlas and is used
# for the 25-dimensional records (normal bound, Stage C, record transfers, F6) and for Stage C on the seed balls.
module IndepSeed
using IntervalArithmetic, LinearAlgebra, Printf
include(joinpath(@__DIR__, "..", "..", "independent", "src", "IndepAtlas.jl"))
using .IndepAtlas: I64, iv, ivq, hproj, TWOPI_I, PI_I
const IA = IndepAtlas
include("tm.jl")
include("seedmap.jl")
include("io_seed.jl")
include("c1.jl")
include("wholeball.jl")
include("stagec_seed.jl")
include("normal_tube.jl")
include("edge.jl")
include("transfers.jl")
include("edge_transfers.jl")
include("graph.jl")
include("tao.jl")
end
