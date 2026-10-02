# The faster exact exclusion test (verified_excluded_v2, arg_enclosure, er_bound) now lives in cover.jl,
# behind CERT_FASTVERIFY=1 (default off until reviewed).  This file is kept so that old scripts still load.
isdefined(Main, :verified_excluded_v2) || include(joinpath(@__DIR__, "..", "cover.jl"))
