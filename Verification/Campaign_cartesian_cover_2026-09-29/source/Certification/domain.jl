# Canonical-domain membership: float tests at a point, and the rigorous D₀ exclusion over a cell.
#   F  : Xh ≥ Yh ≥ Zh, Xv ≥ Yv ≥ Zv, (Xh,Yh,Zh) ≥lex (Xv,Yv,Zv)   (REDUCTION.md)
#   D₀ : R > 0 and corner (012|012) of H₊ has the largest R of the 400 corners
isdefined(Main, :hplus_tm) || include("fasthplus.jl")
using LinearAlgebra

function R_float(M)
    G = 6I - M*M'; s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = abs2(s), abs2(t), abs2(r)
    p = X + Y + Z; J = 2real(s*r*conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J; 4g^2*eta - chi^2
end
function corner_E(θ)
    a, b, c, d = cis.(θ); ComplexF64[1 1 1; 1 a b; 1 c d]
end
function in_F(θ)
    E = corner_E(θ)
    Gh = 6I - E*E'; Gv = 6I - transpose(E)*conj(E)
    h = (abs2(Gh[2,1]), abs2(Gh[3,1]), abs2(Gh[3,2])); v = (abs2(Gv[2,1]), abs2(Gv[3,1]), abs2(Gv[3,2]))
    h[1] >= h[2] >= h[3] && v[1] >= v[2] >= v[3] && h >= v
end
"""Float Hadamard H₊(θ) (centre of a tiny-cell Taylor model) and D₀ membership at the point."""
function in_D0(θ)
    R_float(corner_E(θ)) > 0 || return false, nothing
    HT = try hplus_tm(θ, 1e-9; q = 1, hi = 2) catch; return false, nothing end
    H = [centre(z) for z in HT.H]
    R0 = R_float(H[1:3, 1:3])
    for r in SUBSETS, c in SUBSETS
        R_float(H[collect(r), collect(c)]) > R0 + 1e-9 && return false, H
    end
    true, H
end
"""Rigorous: :out if some corner beats corner 0 on the whole cell, else :maybe; :singular if the Taylor
model of H₊ cannot be formed on the cell (a branch point of the radical chain meets it: typically
R = 0, where the two sheets meet and the side constructor degenerates).  Singular cells are neither
excluded nor certifiable here; the campaign records them as the branch layer."""
function d0_test(θ0, ρ; q = 4)
    HT = try hplus_tm(θ0, ρ; q = q) catch e; e isa ErrorException ? (return :singular) : rethrow() end
    Rs = corner_R_all(HT.H); R0 = Rs[1, 1]
    for c in eachindex(Rs)
        c == 1 && continue
        inf(fbound(Rs[c] - R0)) > 0 && return :out
    end
    :maybe
end
"""Rigorous: :out if an F inequality fails on the whole cell (Gram moduli as Taylor models)."""
function f_test(θ0, ρ; q = 2)
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); EtE = mmul(cadj(E), E)
    mods(M) = (absq_tm(M[2,1]), absq_tm(M[3,1]), absq_tm(M[3,2]))
    h = mods(EE); v = mods(permutedims(EtE))            # off-diagonals of 6I - EE† and 6I - EᵀĒ have these moduli
    lt(p, q) = sup(fbound(p - q)) < 0                   # p < q on the whole cell
    (lt(h[1], h[2]) || lt(h[2], h[3]) || lt(v[1], v[2]) || lt(v[2], v[3]) || lt(h[1], v[1])) ? :out : :maybe
end
"""Rigorous, radical-free: :out if corner (012|345) or (345|012) of H₊ beats corner (012|012) on the whole cell.
Row orthogonality of H₊ gives E E† + B B† = 6I, so the Gram 6I − B B† of B = H₊[1:3, 4:6] is E E† = 6I − G_h:
its off-diagonals are those of G_h negated, hence R(B) = R(p, −J, W) in the notation of R_float (p, W are
even, J is odd in the off-diagonals).  Column orthogonality gives the same for C = H₊[4:6, 1:3] from the
column Gram of E (R is transpose-invariant).  No branch of H₊ is involved, so this works on cells where
the Taylor model of H₊ does not exist (near R = 0).  The sign identity is exact check 5 of
Domain/verify_reduction.py; R(B), R(C) agree with the corners of H₊ to 1e-11 on 400 random seeds."""
function bc_test(θ0, ρ; q = 4)
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); EtE = mmul(cadj(E), E)
    function pjw(M)                                     # (p, J, W) of G = 6I − M: off-diagonals −M[i,j]
        s, t, r = -M[2, 1], -M[3, 1], -M[3, 2]; X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
        (X + Y + Z, 2 * real(s * r * conj(t)), X*Y + X*Z + Y*Z - X*Y*Z)
    end
    Rf(p, J, W) = (g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J; 4*g*g*eta - chi*chi)
    p, J, W = pjw(EE); pv, Jv, Wv = pjw(permutedims(EtE))
    R0 = Rf(p, J, W)
    (inf(fbound(Rf(p, -J, W) - R0)) > 0 || inf(fbound(Rf(pv, -Jv, Wv) - R0)) > 0) ? :out : :maybe
end
