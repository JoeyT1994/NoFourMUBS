# Step 3, first half: the exact frame, sigma (interval Cholesky) and the normal bound (Lemma 3.1).
# Everything here is in radians.  Every number that enters an acceptance decision is an interval enclosure
# (IntervalArithmetic.jl) or an exact rational.

const I64 = Interval{Float64}
iv(x::Real) = interval(x)                         # exact Float64 / Int -> thin interval
ivq(q::Rational) = interval(Float64, q)           # outward-rounded enclosure of an exact rational
const PI_I = interval(Float64, π)
const TWOPI_I = 2 * PI_I
const L_I = 2 * sqrt(interval(3.0))               # L = 2 sqrt 3
const FRAME_DEN = 36 * 2^30                       # T = T36 / FRAME_DEN exactly

"""The exact horizontal frame.  Returns T36 (Int64, 36x4) with T = h(Tint/2^30) = T36/(36*2^30) exactly."""
function frame_exact(Tint::Matrix{Int64})
    T36 = zeros(Int64, 36, 4)
    for k in 1:4
        X = [Tint[6(j-1)+c, k] for j in 1:6, c in 1:6]
        rs = vec(sum(X, dims=2)); cs = vec(sum(X, dims=1)); tot = sum(X)
        for j in 1:6, c in 1:6
            T36[6(j-1)+c, k] = 36 * X[j, c] - 6 * rs[j] - 6 * cs[c] + tot
        end
    end
    T36
end

frame_interval(T36) = [iv(T36[e, k]) / iv(Float64(FRAME_DEN)) for e in 1:36, k in 1:4]

"""Exact Gram matrix G = T^T T as Rational{BigInt}."""
function gram_exact(T36)
    D2 = big(FRAME_DEN)^2
    [sum(big(T36[e, a]) * big(T36[e, b]) for e in 1:36) // D2 for a in 1:4, b in 1:4]
end

"""Exact Gershgorin bounds: lam_max <= max_i sum_j |G_ij|, lam_min >= min_i (G_ii - sum_{j!=i} |G_ij|)."""
function gershgorin_exact(G)
    up = maximum(sum(abs(G[i, j]) for j in 1:size(G, 2)) for i in 1:size(G, 1))
    lo = minimum(G[i, i] - sum(abs(G[i, j]) for j in 1:size(G, 2) if j != i) for i in 1:size(G, 1))
    up, lo
end

"""Upper bound for the operator norm of an interval matrix A via ||A||^2 <= max_i sum_j |(A^T A)_ij|."""
function opnorm_upper(A::AbstractMatrix{I64})
    G = transpose(A) * A
    m = maximum(sup(sum(abs(G[i, j]) for j in 1:size(G, 2))) for i in 1:size(G, 1))
    sup(sqrt(iv(m)))
end

"""Horizontal projector h as a 36x36 interval matrix (index e = 6*row + col)."""
function hmatrix_interval()
    H = Matrix{I64}(undef, 36, 36)
    for j in 1:6, c in 1:6, j2 in 1:6, c2 in 1:6
        q = (j == j2 && c == c2 ? 1 // 1 : 0 // 1) - (j == j2 ? 1 // 6 : 0 // 1) - (c == c2 ? 1 // 6 : 0 // 1) + 1 // 36
        H[6(j-1)+c, 6(j2-1)+c2] = ivq(q)
    end
    H
end
const HMAT = hmatrix_interval()

"""h applied to a 6x6 matrix (generic): subtract row and column means, add the overall mean."""
function hproj(X::AbstractMatrix{T}) where {T}
    rm = [sum(X[j, :]) / 6 for j in 1:6]
    cm = [sum(X[:, c]) / 6 for c in 1:6]
    tm = sum(X) / 36
    [X[j, c] - rm[j] - cm[c] + tm for j in 1:6, c in 1:6]
end

"""J (30x36) and Phi(0) (30) of Phi(delta) = off-diagonal (i<j) Re/Im of (H o e^{i delta})(H o e^{i delta})^*, H = e^{iP}."""
function jacobian_interval(P::Matrix{Float64})
    J = fill(iv(0.0), 30, 36); Phi0 = fill(iv(0.0), 30)
    p = 0
    for i in 1:6, j in i+1:6
        p += 1
        for c in 1:6
            d = iv(P[i, c]) - iv(P[j, c])
            wr = cos(d); wi = sin(d)
            Phi0[2p-1] += wr; Phi0[2p] += wi
            J[2p-1, 6(i-1)+c] = -wi; J[2p-1, 6(j-1)+c] = wi
            J[2p, 6(i-1)+c] = wr;   J[2p, 6(j-1)+c] = -wr
        end
    end
    J, Phi0
end

"""Interval Cholesky: true iff it runs with all pivots > 0, which proves every symmetric matrix enclosed in the
lower triangle of A is positive definite (inclusion isotonicity: the point Cholesky of any such matrix has pivots
inside the interval pivots)."""
function interval_cholesky_pd(A::Matrix{I64})
    n = size(A, 1)
    L = fill(iv(0.0), n, n)
    for k in 1:n
        d = A[k, k]
        for m in 1:k-1
            d -= L[k, m]^2
        end
        inf(d) > 0 || return false
        L[k, k] = sqrt(d)
        for i in k+1:n
            s = A[i, k]
            for m in 1:k-1
                s -= L[i, m] * L[k, m]
            end
            L[i, k] = s / L[k, k]
        end
    end
    true
end

struct NormalBound
    ok::Bool
    msg::String
    sigma::Float64      # certified lower bound
    e0::Float64; j1::Float64; lam_max::Float64; gH::Float64   # upper bounds; gH >= ||G^{-1/2}||
    rH::Float64; b::Float64; n::Float64                      # upper bounds (radians)
    tcol::Float64; rcol::Float64; rF::Float64                # upper bounds (radians)
    T36::Matrix{Int64}
end

function normal_bound(rec::Rec)
    T36 = frame_exact(rec.Tint)
    Ti = frame_interval(T36)
    G = gram_exact(T36)
    gup, glo = gershgorin_exact(G)
    bad(msg) = NormalBound(false, msg, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, T36)
    glo > 0 || return bad("Gram matrix not certified positive definite")
    lam_max = sup(ivq(gup))
    gH = sup(1 / sqrt(ivq(glo)))
    J, Phi0 = jacobian_interval(rec.P)
    # projector onto N = horizontal minus span(T)
    Ginv = inv(G)                                  # exact rational inverse
    Gi = [ivq(Ginv[a, b]) for a in 1:4, b in 1:4]
    Pi = HMAT - Ti * Gi * transpose(Ti)
    A = Pi * (transpose(J) * J) * Pi
    # float estimate of the smallest eigenvalue on N
    Jf = mid.(J); Pif = mid.(Pi)
    mu = opnorm(Jf)^2 + 1.0
    Mf = Symmetric(Pif * (Jf' * Jf) * Pif + mu * (I - Pif))
    lmin = eigmin(Mf)
    lmin > 0 || return bad("sigma: no positive smallest eigenvalue")
    s2 = lmin * (1 - 1e-6)
    certified = false
    for _ in 1:12
        M = A + iv(mu) * (I - Pi) - iv(s2) * I
        M = Matrix{I64}(M)
        if interval_cholesky_pd(M)
            certified = true; break
        end
        s2 *= 0.999
    end
    certified || return bad("sigma: interval Cholesky failed")
    sig_i = sqrt(iv(s2))
    sigma = inf(sig_i)
    e0 = sup(sqrt(sum(x^2 for x in Phi0)))
    j1 = opnorm_upper(J * Ti)
    rH = sup(iv(gH) * iv(rec.R))
    b_i = iv(e0) + iv(j1) * iv(rH) + (L_I / 2) * iv(lam_max) * iv(rH)^2
    b = sup(b_i)
    sigL = iv(sigma) / L_I
    inf(sigL) > rec.R || return bad("R >= sigma/L (sigma=$(sigma))")
    disc = iv(sigma)^2 - 2 * L_I * iv(b)
    inf(disc) > 0 || return bad("sigma^2 - 2Lb not positive (sigma=$(sigma), b=$(b))")
    # n = (sigma - sqrt(disc))/L = 2b/(sigma + sqrt(disc))  (same number; second form avoids cancellation)
    n = sup(2 * iv(b) / (iv(sigma) + sqrt(disc)))
    # per-column frame norms ||T_i|| (rows e = 6j + i)
    tcol = maximum(opnorm_upper(Ti[[6(j-1)+i for j in 1:6], :]) for i in 1:6)
    rcol = sup(iv(tcol) * iv(rH) + iv(n))
    rF = min(rec.R, sup(sqrt(iv(lam_max)) * iv(rH) + iv(n)))
    NormalBound(true, "ok", sigma, e0, j1, lam_max, gH, rH, b, n, tcol, rcol, rF, T36)
end
