# Correctness and speed of FastTM (fasttm.jl).
#  1. Rigour by sampling: for random compositions, |f(θ0+ρs) - P(s)| ≤ r at random s ∈ [-1,1]^4
#     (f evaluated in BigFloat).
#  2. Speed of the core product against TaylorModels.jl on dense order-4 and order-8 models.
include("fasttm.jl")
using .FastTM, IntervalArithmetic, Random, Printf
Random.seed!(1)

function evalbig(m, s)
    T = FastTM.table(tmorder(m)); v = big(0.0)
    for k in 1:T.N
        e = T.exps[k]; v += big(coeffs(m)[k]) * prod(big(s[i])^e[i] for i in 1:4)
    end
    v
end
setprecision(BigFloat, 200)
function check(name, fTM, fBig, θ0, ρ; Q = 6, nsamp = 400)
    x = [tmvar(Q, i, θ0[i], ρ) for i in 1:4]
    t = @elapsed m = fTM(x)
    worst = 0.0
    for _ in 1:nsamp
        s = 2 .* rand(4) .- 1
        exact = (fBig([big(θ0[i]) + big(ρ) * big(s[i]) for i in 1:4]))
        worst = max(worst, Float64(abs(big(exact) - evalbig(m, s))))
    end
    ok = worst <= remainder_radius(m)
    @printf("%-28s Q=%d ρ=%.0e  r=%.2e  worst sampled error=%.2e  %s  (%.2g s)\n", name, Q, ρ, remainder_radius(m), worst, ok ? "ok" : "VIOLATION", t)
    ok
end
θ0 = [2.692, -1.5, -0.614, 1.884]
f1(x) = cos(x[1]) * sin(x[2]) + x[3] * x[4]
f2(x) = inv(3 + cos(x[1] + x[2]) + sin(x[3]) * cos(x[4]))
f3(x) = sqrt(5 + cos(x[1]) * cos(x[2]) - sin(x[3] - x[4]))
f4(x) = (y = cos(x[1]) * x[2] + sin(x[3]); z = inv(2 + y * y); sqrt(1 + z * z) * cos(z * x[4]))
ok = true
for (nm, f) in [("cos·sin + product", f1), ("inv(3 + ...)", f2), ("sqrt(5 + ...)", f3), ("nested inv/sqrt/cos", f4)]
    for (Q, ρ) in [(4, 3e-3), (4, 1e-2), (8, 1e-2), (8, 3e-2)]
        global ok &= check(nm, f, f, θ0, ρ; Q = Q)
    end
end
println(ok ? "RIGOUR SAMPLING: PASS" : "RIGOUR SAMPLING: FAIL")

# speed: dense products
for Q in (4, 8)
    N = tmlen(Q)
    a = TM{Q}(randn(N), 1e-12); b = TM{Q}(randn(N), 1e-12)
    a * b
    n = Q == 4 ? 20000 : 2000
    t = @elapsed for _ in 1:n; a * b; end
    @printf("FastTM order %d (%d coeffs): dense product %.2f µs\n", Q, N, t / n * 1e6)
end
using TaylorModels
const TS = TaylorModels.TaylorSeries
for Q in (4, 8)
    space = TS.JetSpace(2Q, ["t1","t2","t3","t4"]); dom = fill(interval(-1e-2, 1e-2), 4); x0 = fill(interval(0.0), 4)
    tv = [TaylorModelN(space, i, Q, x0, dom) for i in 1:4]
    a = cos(tv[1] + tv[2]) * sin(tv[3] - tv[4]) + exp(tv[1] * tv[3]); b = sin(tv[2] + tv[4]) * cos(tv[1]) + exp(tv[2] - tv[3])
    a * b
    n = Q == 4 ? 200 : 20
    t = @elapsed for _ in 1:n; a * b; end
    @printf("TaylorModels.jl order %d: dense product %.1f µs\n", Q, t / n * 1e6)
end
