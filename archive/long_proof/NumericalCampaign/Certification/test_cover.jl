# Cover certificate (cover.jl) on the reference cells.
#   julia --project=jlenv_cluster test_cover.jl
include("cover.jl"); using Printf; BLAS.set_num_threads(1)
x6 = reinterpret(Float64, UInt64[0x40037d69d2109e0c, 0x3fdf2aad0f8991ed, 0xc0012d4e970797ad, 0xbffe05cd71af651e])
cases = [("X6 cube (ClusterCover)", x6, 1 / 1024),
         ("g2 campaign cell", [1.380582709097077, -0.6810874698212247, -0.7792622402459056, 1.5769322499464393], pi / 512),
         ("pilot-failed", [-1.3209298402581602, 1.328884260545503, 1.3929721502727643, -1.509396145997828], 5e-3),
         ("pilot-rayfail", [-0.454, 2.226, 2.236, -0.766], 5e-3),
         ("g1", [0.808, 3.137, -2.504, 0.18], 5e-3),
         ("g3", [-1.003, 0.511, -1.487, 2.875], 5e-3),
         ("X6 at campaign size", x6, pi / 512)]
sel = length(ARGS) > 0 ? parse.(Int, split(ARGS[1], ",")) : eachindex(cases)
for (nm, θ, ρ) in cases[sel]
    t = @elapsed r = certify_cell_cover(θ, ρ; deadline = time() + 900)
    @printf("%-24s ρ=%.4g: %s at level %d | %d nodes, %d kept boxes, %d labels (max half-width %.3f), O %s U %s bases %s | %.0f s\n",
            nm, ρ, r.ok ? "NO QUARTET" : "inconclusive ($(r.reason))", r.level, r.nt, r.nkept, r.nlabels,
            get(r, :rmax, NaN), get(r, :nO, "-"), get(r, :nU, "-"), get(r, :nbases, "-"), t)
    flush(stdout)
end
