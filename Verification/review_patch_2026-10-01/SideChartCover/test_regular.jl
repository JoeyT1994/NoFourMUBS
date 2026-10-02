# Additive review copy of the bounded regular-box parity test.
# See the review README for fresh versus historical execution status.
# Failure is a review flag, not an alternative acceptance path.
# NOFOURMUBS_ROOT locates the unmodified repository, not this patch folder.
const REVIEW_ROOT = abspath(get(ENV, "NOFOURMUBS_ROOT", joinpath(@__DIR__, "..", "..")))
ENV["NOFOURMUBS_ROOT"] = REVIEW_ROOT
include(joinpath(REVIEW_ROOT, "ProvenResults", "SideChartCover", "provider.jl"))
using Test
BLAS.set_num_threads(1)
@test sc_check_sources()
# Exact seed-variable permutation test (only proposal polynomial arithmetic).
a=tmvar(4,2,0.0,1.0); b=tmvar(4,3,0.0,1.0)
@test coeffs(sc_swap23(a))==coeffs(b)
@test remainder_radius(sc_swap23(a))==remainder_radius(a)
@test coeffs(sc_swap23(sc_swap23(a)))==coeffs(a)
# Published archive regression carrier g2 and nearby regular dyadic seeds.
base=[2.692,-1.5,-0.614,1.884]
centers=[base,base.+[2.0^-12,0,0,0],base.+[0,-2.0^-12,0,0],base.+[0,0,2.0^-12,0]]
rho=2.0^-16
accepted=0
for theta in centers
    original=hplus_tm(theta,rho;q=4) # regression reference ONLY, never a provider fallback
    @test size(original.H)==(6,6)
    proposed=sidechart_models(theta,rho;q=4)
    @test proposed.ok
    if !proposed.ok;continue;end
    @test length(proposed.models)==4
    @test all(size(H)==(6,6) for H in proposed.models)
    old=certify_cell_cover_accelerated(theta,rho;partition=true,budget=4_000_000,deadline=time()+120)
    new=certify_cell_sidechart(theta,rho;partition=true,budget=4_000_000,deadline=time()+120)
    @test old.ok==new.ok
    global accepted+=Int(old.ok && new.ok)
    println((theta=theta,old=old,new=new))
end
# Do not call all-inconclusive parity a successful cover regression.
@test accepted>0
println("Regular-box parity and guarded model tests passed")
