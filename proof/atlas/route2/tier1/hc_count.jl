# Count complex solutions of the complexified unbiasedness system for given 6x6 matrices H:
#   a_i(x) b_i(y) = 6 (i = 0..4), x_k y_k = 1, x_0 = y_0 = 1;  a = H^* x, b = H^T y.
# BKK/Haagerup bound 252.  Exploration only.  Usage: julia hc_count.jl H.txt outdir
using HomotopyContinuation, LinearAlgebra, Random
function hccount(H; seed=1)
    @var x[1:5] y[1:5]
    X = [1; x]; Y = [1; y]
    a = H' * X; b = transpose(H) * Y
    F = System([[a[i]*b[i] - 6 for i in 1:5]; [x[k]*y[k] - 1 for k in 1:5]], variables=[x; y])
    r = solve(F; threading=false, show_progress=false, seed=UInt32(seed), start_system=:polyhedral, only_torus=true)
    return r
end
ntorus(S) = sum(s -> maximum(abs.(abs.(s[1:5]) .- 1)) < 1e-8 ? 1 : 0, S; init=0)
outdir = length(ARGS) > 1 ? ARGS[2] : "."
for line in eachline(ARGS[1])
    v = split(line); id = v[1]; z = parse.(Float64, v[2:end])
    H = transpose(reshape([complex(z[2k-1], z[2k]) for k in 1:36], 6, 6))
    t = @elapsed r = hccount(H)
    S = solutions(r; only_nonsingular=false)
    println(id, " paths ", length(path_results(r)), " finite ", nresults(r), " nonsingular ", nnonsingular(r), " singular ", nsingular(r),
            " torus ", ntorus(S), " atinf ", length(at_infinity(r)), " failed ", length(failed(r)), " (", round(t, digits=1), " s)")
    open(joinpath(outdir, "sols_" * id * ".txt"), "w") do f
        for s in S; println(f, join([string(real(c), " ", imag(c)) for c in s[1:5]], " ")); end
    end
    flush(stdout)
end
