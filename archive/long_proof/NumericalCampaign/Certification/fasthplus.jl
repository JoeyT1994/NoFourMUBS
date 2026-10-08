# FastTM Taylor model of the full positive-sheet Hadamard H₊(θ) over a seed cell θ0 + ρ[-1,1]^4,
# following MinimalConstruction/Implementation/model.py (side constructor S(G,z) = M P(w) F3 and
# H₊ = [[E, B], [C, D]]), and the 400 corner invariants R_c used by the canonical-domain test.
#
# Branches.  The side square root δ and the cube root w of ξ are continued analytically over the
# cell from the choices model.py makes at the centre (δ with dF ≥ 0; principal cube root):
#     sqrt(z) = s0 · (z/s0²)^(1/2),   cbrt(ξ) = w0 · (ξ/w0³)^(1/3),
# each a convergent binomial series with an exact geometric tail (|z/s0² − 1| < 1 is checked).
# Branch lemma (ProvenResults/Sheets/BRANCH_LEMMA.md; accepted sign-selected side identities):
# every defined δ reversal or cube-root change permutes columns 3-5 (h) or rows 3-5 (v).
# The alternative δ chart has rho = 0 at s = 0; nonzero-divisor checks remain required.
# Everything the certificate uses (common-ray moduli, corner R multiset) is invariant under both,
# so the continued branch represents H₊(θ) throughout the cell.  `dF_bounds` reports whether the
# centre sign is also the model.py sign on the whole cell (it is unless the cell meets dF = 0).
include("fastcoeffs.jl")

const IC = Complex{Interval{Float64}}
ic(z::Number) = Complex(interval(Float64(real(z))), interval(Float64(imag(z))))
cm(a::IC, z::CTM) = CTM(real(a) * z.re - imag(a) * z.im, real(a) * z.im + imag(a) * z.re)
cm(z::CTM, a::IC) = cm(a, z)
cm(a::CTM, b::CTM) = a * b
cadd(z::CTM, a::IC) = CTM(z.re + real(a), z.im + imag(a))
ctm_abs_bound(z::CTM) = (x = mag(fbound(z.re)); y = mag(fbound(z.im)); sqrt(interval(x)^2 + interval(y)^2))

"""root0 · (z / root0^n)^(1/n) as a complex Taylor model, n = 2 or 3 (analytic continuation of root0)."""
function ctm_root(z::CTM{FTM{Q}}, root0::ComplexF64, n::Int) where Q
    α = interval(1.0) / interval(n)
    r0 = ic(root0)
    x = cadd(cm(inv(r0^n), z), ic(-1.0))
    X = ctm_abs_bound(x)
    sup(X) < 1 || error("ctm_root: |z/root0^$n - 1| reaches $(sup(X)) on the cell")
    b = [interval(1.0)]
    for k in 1:Q + 1; push!(b, b[end] * (α - interval(k - 1)) / interval(k)); end
    P = CTM(tmconst(Q, b[Q + 1]), tmconst(Q, 0.0))
    for k in Q:-1:1
        P = cadd(P * x, Complex(b[k], interval(0.0)))
    end
    tail = sup(abs(b[Q + 2]) * X^(Q + 1) / (interval(1.0) - X))
    P = CTM(set_remainder(P.re, FastTM.up(remainder_radius(P.re) + tail)), set_remainder(P.im, FastTM.up(remainder_radius(P.im) + tail)))
    cm(r0, P)
end

centre(x::FTM) = coeffs(x)[1]
centre(z::CTM) = Complex(centre(z.re), centre(z.im))

"""Side constructor of model.py over the cell. Returns (M, xi, dF) as Taylor models."""
function side_tm(G, z, g)
    s, t, r = G[2, 1], G[3, 1], G[3, 2]
    X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    P = [r*s*s + conj(r)*t*t + (3 - Z)*s*t,
         t*conj(s)*conj(s) + r*r*conj(t) + (3 - Y)*r*conj(s),
         s*conj(t)*conj(t) + conj(r)*conj(r)*conj(s) + (3 - X)*conj(r)*conj(t)]
    cs = [9 - Z, 9 - Y, 9 - X]
    lam = [cdiv_tm(g + cs[j] * conj(z), conj(P[j])) for j in 1:3]
    u = lam[1] * conj(lam[2]); mu = s / 3; nu = t / 3; n = 1 - absq_tm(mu)
    k = r / 3 - nu * conj(mu); alpha = mu * mu - u * conj(mu)
    gamma = 2 * mu * nu - z * lam[1] / 3
    d2 = (g / 27) * (lam[1] * conj(lam[2]) * conj(lam[3]))
    # centre choice of model.py: principal sqrt, then the sign making dF >= 0
    d0 = sqrt(centre(d2))
    dFc = real(27 / centre(g) * (centre(n) * centre(gamma) - 2 * centre(alpha) * centre(k)) * conj(d0))
    dFc < 0 && (d0 = -d0)
    delta = ctm_root(d2, d0, 2)
    dF = (27 / g) * ((n * gamma - 2 * alpha * k) * conj(delta))
    rho = (n + real(dF)) / 2
    q = alpha / rho
    cp = (k - delta * conj(q)) / n; cmn = (k * q + delta) / n
    sigma = u + mu * q
    xi = (sigma * sigma) / rho
    o = one(mu); zr = zero(mu)
    M = [o zr zr; mu sigma q*conj(sigma); nu cp*sigma cmn*conj(sigma)]
    (M = M, xi = xi, dF = real(dF))
end

matmul(A, B) = [reduce(+, (cm(A[i, k], B[k, j]) for k in axes(A, 2))) for i in axes(A, 1), j in axes(B, 2)]
const OMEGA = Complex(interval(-0.5), sqrt(interval(3.0)) / interval(2.0))
const F3 = [OMEGA^(j * k) for j in 0:2, k in 0:2]

"""H₊ over the cell, as a 6x6 matrix of complex Taylor models of order q (computed at order hi)."""
function hplus_tm(θ0, ρ; q = 4, hi = 8)
    x = [tmvar(hi, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a)
    E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); EtE = mmul(cadj(E), E)
    Gh = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    T = [(i == j ? 6 - EtE[i, j] : -EtE[i, j]) for i in 1:3, j in 1:3]
    Gv = permutedims(T)
    s, t, r = Gh[2, 1], Gh[3, 1], Gh[3, 2]
    X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    R = 4*g*g*eta - chi*chi
    zp = CTM(chi / (2g), sqrt(R) / (2g))
    h = side_tm(Gh, zp, g); v = side_tm(Gv, conj(zp), g)
    wh0 = cis(angle(centre(h.xi)) / 3); wv0 = cis(angle(centre(v.xi)) / 3)
    wh = ctm_root(h.xi, wh0, 3); wv = ctm_root(v.xi, wv0, 3)
    zr = zero(a)
    Ph = [o zr zr; zr conj(wh) zr; zr zr wh]; Pv = [o zr zr; zr conj(wv) zr; zr zr wv]
    B = matmul(matmul(h.M, Ph), F3)
    C = matmul(matmul(F3, Pv), permutedims(v.M))
    Jh = adj3_tm(Gh)
    EH = [conj(E[j, i]) for i in 1:3, j in 1:3]
    ig = inv(g)
    D = [-(x * ig) for x in matmul(matmul(matmul(C, EH), Jh), B)]
    H = [E B; C D]
    Hq = q == hi ? H : map(z -> CTM(truncate_order(z.re, q), truncate_order(z.im, q)), H)
    (H = Hq, R = truncate_order(R, q), dF = (h = fbound(h.dF), v = fbound(v.dF)))
end

# ---------------------------------------------------------------- corner invariants
const SUBSETS = [(i, j, k) for i in 1:6 for j in i+1:6 for k in j+1:6]
"""R of the positional corner (rows, cols) of H, from G = 6I - M M† (no dephasing needed:
R is invariant under diagonal phases, verified exactly in Domain/verify_reduction.py)."""
function corner_R_all(H)
    # inner products over each column subset for each row pair
    ip = Dict{Tuple{Int,Int,Int},Any}()
    for (ci, cols) in enumerate(SUBSETS), i in 1:6, k in i+1:6
        ip[(ci, i, k)] = sum(H[i, j] * conj(H[k, j]) for j in cols)
    end
    Rs = Matrix{Any}(undef, 20, 20)
    for (ri, rows) in enumerate(SUBSETS), (ci, _) in enumerate(SUBSETS)
        i1, i2, i3 = rows
        s = -ip[(ci, i1, i2)]; t = -ip[(ci, i1, i3)]; r = -ip[(ci, i2, i3)]
        # G[2,1] = -<row2,row1>: s = conj(-ip(i1,i2)); moduli and the triangle product only need
        # consistency, and J uses s r conj(t) with G[2,1], G[3,1], G[3,2]:
        s, t, r = conj(s), conj(t), conj(r)
        X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
        p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
        g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
        Rs[ri, ci] = 4*g*g*eta - chi*chi
    end
    Rs
end
