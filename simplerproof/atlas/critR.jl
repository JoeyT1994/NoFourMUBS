# Certified search for critical points of the corner invariant R(θ) on T⁴ with R > 0 (coverage step of the atlas proof).
# A box is discarded when sup R <= 0 on it (no point of {R > 0}), or when some partial derivative ∂R/∂θ_k has constant
# nonzero sign on it (no critical point).  Remaining boxes at depth MAXL are written out (they contain every critical
# point with R > 0; in particular every local maximum).
# Gradient is evaluated structurally:  R = 4 g² η − χ²,  ∂R = 8gη ∂g + 4g² ∂η − 2χ ∂χ, with g, η, χ polynomials in
# X = |s|², Y = |t|², Z = |r|², J = 2 Re(s r t̄) and s = G21, t = G31, r = G32 of G = 6I − E E*.
#   julia critR.jl CODE L0 MAXL OUT
const CODE = ARGS[1]
include(joinpath(CODE, "Campaign", "driver.jl"))
const L0 = parse(Int, ARGS[2]); const MAXL = parse(Int, ARGS[3]); const OUT = ARGS[4]

function rgrad(θ0, ρ; q = 4)
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); z = zero(a)
    E = [o o o; o a b; o c d]
    # derivative of E w.r.t. θ_k: only one entry, i * entry
    dE = Vector{Matrix{typeof(a)}}(undef, 4)
    pos = [(2, 2), (2, 3), (3, 2), (3, 3)]
    for k in 1:4
        M = [z z z; z z z; z z z]; (i, j) = pos[k]; M[i, j] = CTM(-imag(E[i, j]), real(E[i, j])); dE[k] = M
    end
    EE = mmul(E, cadj(E))
    s, t, r = -EE[2, 1], -EE[3, 1], -EE[3, 2]
    X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    R = 4*g*g*eta - chi*chi
    grads = Any[]
    for k in 1:4
        dEE = mmul(dE[k], cadj(E)) + mmul(E, cadj(dE[k]))
        ds, dt, dr = -dEE[2, 1], -dEE[3, 1], -dEE[3, 2]
        dX = 2 * real(conj(s) * ds); dY = 2 * real(conj(t) * dt); dZ = 2 * real(conj(r) * dr)
        dp = dX + dY + dZ
        dJ = 2 * real(ds * r * conj(t) + s * dr * conj(t) + s * r * conj(dt))
        dW = dX*Y + X*dY + dX*Z + X*dZ + dY*Z + Y*dZ - (dX*Y*Z + X*dY*Z + X*Y*dZ)
        dg = -3dp + dJ; deta = -dp + dJ
        dchi = dW - (dp*(p - 18) + (p - 9)*dp) + (dp*J + (p - 15)*dJ)
        push!(grads, 8*g*eta*dg + 4*g*g*deta - 2*chi*dchi)
    end
    fbound(R), [fbound(G) for G in grads]
end

kept = Vector{Vector{Float64}}(); stats = Dict{Symbol,Int}()
function go(θ, L)
    ρ = enl(pi / 2^L)
    rb, gb = try rgrad(θ, ρ) catch; (nothing, nothing) end
    if rb !== nothing
        if sup(rb) <= 0; stats[:Rneg] = get(stats, :Rneg, 0) + 1; return; end
        if any(G -> inf(G) > 0 || sup(G) < 0, gb); stats[:grad] = get(stats, :grad, 0) + 1; return; end
    end
    if L >= MAXL
        push!(kept, θ); stats[:kept] = get(stats, :kept, 0) + 1; return
    end
    for ch in children(θ, pi / 2^L); go(ch, L + 1); end
end
# level-L0 grid of T⁴
n = 2^L0; h = pi / 2^L0
t0 = time()
for idx in Iterators.product(0:n-1, 0:n-1, 0:n-1, 0:n-1)
    go([-pi + (2 * i + 1) * h for i in idx], L0)
end
open(OUT, "w") do f
    for θ in kept; println(f, join(θ, " ")); end
end
println("stats ", stats, " time ", round(time() - t0, digits = 1))
