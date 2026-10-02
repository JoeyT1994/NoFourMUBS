# Numerical evidence for targets T1 (corner-R lower bound) and its leads.  Not part of any proof.
#   julia --project=../../NumericalCampaign/Certification/jlenv_cluster corner_evidence.jl [N] [seed]
# For N random seeds θ ∈ T⁴ with R(θ) > 0 (float H₊ from the Taylor-model code at a point) it reports:
#  1. the radical-free corners: R(B), B = H₊[1:3,4:6], equals R(p, −J, W) of E's row Gram; R(C), C = H₊[4:6,1:3],
#     the same from E's column Gram (max relative error);
#  2. the CS-decomposition lead for D = H₊[4:6,4:6]: compare (p, J, W) of D's row Gram with E's;
#  3. the distribution of max over the 400 corners of R_c, of max(R0, R_B, R_C), and how often each wins,
#     binned by R0.
const CERT = joinpath(@__DIR__, "..", "..", "NumericalCampaign", "Certification")
include(joinpath(CERT, "domain.jl"))
using Random, Printf, LinearAlgebra, Statistics
N = length(ARGS) >= 1 ? parse(Int, ARGS[1]) : 2000
Random.seed!(length(ARGS) >= 2 ? parse(Int, ARGS[2]) : 1)
function pjw(G)
    s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = abs2(s), abs2(t), abs2(r)
    (X + Y + Z, 2real(s*r*conj(t)), X*Y + X*Z + Y*Z - X*Y*Z)
end
Rf(p, J, W) = (g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J; 4g^2*eta - chi^2)
rows = Any[]; eB = 0.0; eC = 0.0; dP = 0.0; dJ = Float64[]; dW = Float64[]
while length(rows) < N
    θ = 2pi .* rand(4) .- pi
    E = corner_E(θ); R0 = R_float(E); R0 > 0 || continue
    HT = try hplus_tm(θ, 1e-9; q = 1, hi = 2) catch; continue end
    H = [centre(z) for z in HT.H]
    p, J, W = pjw(6I - E*E'); pv, Jv, Wv = pjw(6I - transpose(E)*conj(E))
    RB = R_float(H[1:3, 4:6]); RC = R_float(H[4:6, 1:3])
    global eB = max(eB, abs(RB - Rf(p, -J, W)) / (1 + abs(RB))); global eC = max(eC, abs(RC - Rf(pv, -Jv, Wv)) / (1 + abs(RC)))
    D = H[4:6, 4:6]; pD, JD, WD = pjw(6I - D*D')
    global dP = max(dP, abs(pD - p)); push!(dJ, min(abs(JD - J), abs(JD + J))); push!(dW, abs(WD - W))
    Rc = [R_float(H[collect(a), collect(b)]) for a in SUBSETS, b in SUBSETS]
    push!(rows, (R0 = R0, max = maximum(Rc), bc = max(RB, RC), RB = RB, RC = RC, RD = R_float(D), inF = in_F(θ)))
end
@printf("%d seeds with R > 0\n", N)
@printf("1. R(B) vs R(p,-J,W): max rel. error %.1e;  R(C) vs column version: %.1e\n", eB, eC)
@printf("2. corner D vs E: max |p_D - p_E| = %.1e;  max min|J_D ∓ J_E| = %.1e;  |W_D - W_E|: median %.3g, max %.3g\n",
        dP, maximum(dJ), median(dW), maximum(dW))
M = [r.max for r in rows]
@printf("3. max_c R_c over all seeds: min %.1f, 1%% %.1f, 5%% %.1f, median %.1f\n", minimum(M), quantile(M, 0.01), quantile(M, 0.05), median(M))
for (lo, hi) in ((0, 5), (5, 20), (20, 50), (50, 100), (100, 1e9))
    sel = [r for r in rows if lo <= r.R0 < hi]; isempty(sel) && continue
    @printf("   R0 ∈ [%3.0f, %4.0f): %5d seeds; min max_c R_c %6.1f; max(R_B,R_C) > R0 at %5.1f%%; min of max(R0,R_B,R_C,R_D) %6.1f\n",
            lo, min(hi, 9999), length(sel), minimum(r.max for r in sel), 100 * count(r -> r.bc > r.R0, sel) / length(sel),
            minimum(max(r.R0, r.RB, r.RC, r.RD) for r in sel))
end
d0 = [r for r in rows if r.max - r.R0 < 1e-6]
isempty(d0) || @printf("   seeds in D₀ (corner 0 is the max): %d, R0 there ∈ [%.1f, %.1f]\n", length(d0), minimum(r.R0 for r in d0), maximum(r.R0 for r in d0))
