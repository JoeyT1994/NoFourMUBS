# Corner invariants R_c of H₊ over a cell, and the rigorous D₀ exclusion test:
# a cell is OUT of D₀ if some corner c has inf(R_c - R_0) > 0 over the whole cell (R_0 = corner 012|012).
include("fasthplus.jl")
using Random, Printf, LinearAlgebra
Random.seed!(5)
function R_float(M)
    G = 6I - M*M'; s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = abs2(s), abs2(t), abs2(r)
    p = X + Y + Z; J = 2real(s*r*conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J; 4g^2*eta - chi^2
end
"""Returns :out (certified not in D₀), :maybe, plus timing and the best margin."""
function d0_test(θ0, ρ; q = 4)
    HT = hplus_tm(θ0, ρ; q = q)
    Rs = corner_R_all(HT.H)
    R0 = Rs[1, 1]
    best = -Inf
    for c in eachindex(Rs)
        c == 1 && continue
        lo = inf(fbound(Rs[c] - R0)); best = max(best, lo)
        lo > 0 && return :out, best, HT
    end
    :maybe, best, HT
end
# 1. corner R at the centre vs float evaluation of the centre Hadamard
θ0 = [2.692, -1.5, -0.614, 1.884]
HT = hplus_tm(θ0, 1e-3); t = @elapsed Rs = corner_R_all(HT.H)
Hc = [centre(HT.H[i, j]) for i in 1:6, j in 1:6]
Rf = [R_float(Hc[collect(r), collect(c)]) for r in SUBSETS, c in SUBSETS]
@printf("corner R: max |centre - float| = %.1e, all 400 enclosures contain float value: %s, time %.2f s\n",
        maximum(abs(centre(Rs[i]) - Rf[i]) for i in eachindex(Rs)), all(in_interval(Rf[i], fbound(Rs[i])) for i in eachindex(Rs)), t)
# 2. exclusion on random cells
for ρ in (5e-3, 1e-2)
    nout = 0; nmaybe = 0; nin_centre = 0; tt = 0.0; nfail = 0; k = 0
    while k < 60
        θ = 2pi .* rand(4) .- pi
        a_, b_, c_, d_ = cis.(θ); R_float(ComplexF64[1 1 1; 1 a_ b_; 1 c_ d_]) > 50 || continue   # comfortably inside R > 0
        k += 1
        try
            t = @elapsed (st, best, H) = d0_test(θ, ρ; q = ρ > 6e-3 ? 6 : 4)
            tt += t
            Hc = [centre(H.H[i, j]) for i in 1:6, j in 1:6]
            inD0 = all(R_float(Hc[collect(r), collect(c)]) <= R_float(Hc[1:3, 1:3]) + 1e-9 for r in SUBSETS, c in SUBSETS)
            nin_centre += inD0
            st == :out ? (nout += 1) : (nmaybe += 1)
            st == :out && inD0 && println("  INCONSISTENT: centre in D0 but cell excluded")
        catch e
            nfail += 1
        end
    end
    @printf("ρ=%.0e: 60 random cells: %d certified out of D₀, %d kept (%d have centre in D₀), %d TM failures; %.2f s per cell\n",
            ρ, nout, nmaybe, nin_centre, nfail, tt / (60 - nfail))
end
