# FastTM: fixed-order dense Taylor models in the 4 normalised seed variables s ∈ [-1,1]^4.
#
#   f(θ0 + ρ s) ∈ P(s) + [-r, r]   for every s ∈ [-1,1]^4,
#
# where P has Float64 coefficients on the graded monomial basis s^α, |α| ≤ Q, and r ≥ 0 is a
# symmetric remainder.  Every rounding error of the coefficient arithmetic, every truncated
# term, and every Lagrange remainder of an intrinsic is added to r, so the enclosure is
# rigorous (given IEEE round-to-nearest Float64 and IntervalArithmetic's outward rounding).
#
# Error bookkeeping (u = 2^-53, and |s^α| ≤ 1 on the domain, so B(P) = Σ|c_α| bounds |P|):
#   a + b : exact sum up to u·Σ|c_k|.
#   λ·a   : up to u·|λ|·B(a).
#   a·b   : kept coefficients c_k = Σ a_i b_j (FMA recursive sums of at most nmax terms)
#           err ≤ γ(nmax)·B(a)·B(b); dropped terms ≤ Σ_{d+e>Q} A_d B_e (A_d = Σ_{|α|=d}|a_α|);
#           r_c = r_a B(b) + B(a) r_b + r_a r_b + dropped + err.
# Every computed bound is finally inflated by (1 + 2^-30) and 1e-300 (absorbs the rounding of
# the bound computations themselves and any underflow).
#
# Operand-range guard (always on, fail closed).  The error allowances above are rigorous only for bounded
# operands: a subnormal scalar times a huge coefficient can underflow an allowance (Review/FASTTM.md).  The
# invariant_* checks below enforce exactly the hypotheses of the theorem in
# ProvenResults/FastTMInvariant (order <= 12, B(P)+r <= 2^40, exact scalars |x| <= 2^40, interval midpoint and
# deviation <= 2^40, finite padding arguments in [0, 2^100], no shrinking remainders or negative powers);
# under them every accepted model is a valid enclosure, including gradual underflow.  A violation throws.
# The guard text is the reviewed instrumentation of FastTMInvariant/guarded_replay.py, applied verbatim; it
# only reads values and does not change any floating-point result.
# 30 Sep 2026: inv and sqrt now expand about a centre normalised to 1 (see the comment above inv).  The old
# forms built constants c0^-(Q+1), which the guard rejected on 406,719 cells with small but nonzero
# denominators in the side constructor (NumericalCampaign/Campaign/REPORT_2026-09-30.md).  The guard is unchanged.
module FastTM

using IntervalArithmetic

const INV_M = 2.0^40
const INV_MODELS = Ref(0)
const INV_MAX_NORM = Ref(0.0)
const INV_MAX_ORDER = Ref(0)
function invariant_state(Q, c, r)
    0 <= Q <= 12 || error("invariant: order outside 0..12")
    length(c) == binomial(Q+4,4) || error("invariant: coefficient count")
    isfinite(r) && r >= 0 || error("invariant: invalid remainder")
    s = 0.0
    for x in c
        isfinite(x) || error("invariant: nonfinite coefficient")
        s += abs(x)
    end
    isfinite(s) || error("invariant: norm overflow")
    # B(c) <= 2s by the theorem's exact sum-length inequality.
    upper = sup(2interval(s) + interval(r))
    upper <= INV_M || error("invariant: model norm exceeds proved range")
    INV_MODELS[] += 1
    INV_MAX_NORM[] = max(INV_MAX_NORM[], upper)
    INV_MAX_ORDER[] = max(INV_MAX_ORDER[], Q)
    nothing
end
function invariant_scalar(x::Real)
    xf = Float64(x)
    xf == x || error("invariant: inexact scalar conversion")
    isfinite(xf) && abs(xf) <= INV_M || error("invariant: scalar outside proved range")
    nothing
end
function invariant_interval(X::Interval)
    X isa Interval{Float64} || error("invariant: non-binary64 interval")
    m=mid(X)
    invariant_scalar(m)
    d=sup(mag(X-interval(m)))
    isfinite(d) && 0 <= d <= INV_M || error("invariant: interval deviation outside proved range")
    nothing
end
function invariant_pad(x)
    isfinite(x) && 0 <= x <= 2.0^100 || error("invariant: invalid padding argument")
    nothing
end
export TM, tmconst, tmvar, bound, truncate_order, raise_order, remainder_radius, coeffs,
       evalpoly_at, tmorder, tmlen, set_remainder

const U = 2.0^-53
γ(n) = n * U / (1 - n * U)
@inline up(x::Float64) = (invariant_pad(x); muladd(x, 1.0 + 2.0^-30, 1e-300))

# ---------------------------------------------------------------- monomial tables
struct Table
    Q::Int
    N::Int
    exps::Vector{NTuple{4,Int}}
    deg::Vector{Int}
    even::Vector{Bool}              # all exponents even: s^α ∈ [0,1]
    pi::Vector{Int32}
    pj::Vector{Int32}
    pk::Vector{Int32}
    nmax::Int
    index::Dict{NTuple{4,Int},Int}
end
function build_table(Q)
    exps = NTuple{4,Int}[]
    for d in 0:Q, a in d:-1:0, b in (d - a):-1:0, c in (d - a - b):-1:0
        push!(exps, (a, b, c, d - a - b - c))
    end
    N = length(exps); index = Dict(e => i for (i, e) in enumerate(exps))
    deg = [sum(e) for e in exps]; even = [all(iseven, e) for e in exps]
    pi = Int32[]; pj = Int32[]; pk = Int32[]; cnt = zeros(Int, N)
    for i in 1:N, j in 1:N
        deg[i] + deg[j] > Q && continue
        k = index[exps[i] .+ exps[j]]
        push!(pi, i); push!(pj, j); push!(pk, k); cnt[k] += 1
    end
    p = sortperm(pk)                     # group by output coefficient
    Table(Q, N, exps, deg, even, pi[p], pj[p], pk[p], maximum(cnt), index)
end
const TABLES = Dict{Int,Table}()
table(Q::Int) = (0 <= Q <= 12 || error("invariant: table order"); get!(() -> build_table(Q), TABLES, Q))

# ---------------------------------------------------------------- the type
struct TM{Q}
    c::Vector{Float64}
    r::Float64
    function TM{Q}(c::Vector{Float64}, r::Float64) where Q
        invariant_state(Q,c,r)
        new{Q}(c,r)
    end
end
tmorder(::TM{Q}) where Q = Q
tmlen(Q) = table(Q).N
coeffs(a::TM) = a.c
remainder_radius(a::TM) = a.r
set_remainder(a::TM{Q}, r) where Q = (r >= a.r || error("invariant: shrinking remainder"); TM{Q}(a.c, r))
Base.broadcastable(a::TM) = Ref(a)
Base.copy(a::TM{Q}) where Q = TM{Q}(copy(a.c), a.r)

tmconst(Q::Int, x::Real) = (invariant_scalar(x); c = zeros(tmlen(Q)); c[1] = Float64(x); TM{Q}(c, Float64(x) == x ? 0.0 : up(U * abs(x))))
function tmconst(Q::Int, X::Interval)
    invariant_interval(X)
    m = mid(X); c = zeros(tmlen(Q)); c[1] = m
    TM{Q}(c, up(sup(mag(X - interval(m)))))
end
"""θ0 + ρ s_i  (center and ρ are Float64; representation error included)."""
function tmvar(Q::Int, i::Int, center::Float64, rho::Float64)
    T = table(Q); c = zeros(T.N); c[1] = center
    e = [0, 0, 0, 0]; e[i] = 1; c[T.index[Tuple(e)]] = rho
    TM{Q}(c, 0.0)
end
Base.zero(a::TM{Q}) where Q = TM{Q}(zeros(length(a.c)), 0.0)
Base.one(a::TM{Q}) where Q = tmconst(Q, 1.0)

@inline function degsums(c, T::Table)
    A = zeros(T.Q + 1)
    @inbounds for k in eachindex(c); A[T.deg[k] + 1] += abs(c[k]); end
    A
end
babs(c) = (s = 0.0; @inbounds for x in c; s += abs(x); end; s)

# ---------------------------------------------------------------- ring operations
function Base.:+(a::TM{Q}, b::TM{Q}) where Q
    c = a.c .+ b.c
    TM{Q}(c, up(a.r + b.r + U * babs(c)))
end
Base.:-(a::TM{Q}) where Q = TM{Q}(.-a.c, a.r)
Base.:-(a::TM{Q}, b::TM{Q}) where Q = a + (-b)
function Base.:*(a::TM{Q}, b::TM{Q}) where Q
    T = table(Q); ac = a.c; bc = b.c; c = zeros(T.N)
    pi = T.pi; pj = T.pj; pk = T.pk
    @inbounds for p in eachindex(pk)
        k = pk[p]; c[k] = muladd(ac[pi[p]], bc[pj[p]], c[k])
    end
    A = degsums(ac, T); B = degsums(bc, T); Ba = sum(A); Bb = sum(B)
    drop = 0.0
    @inbounds for d in 0:Q, e in (Q - d + 1):Q; drop += A[d + 1] * B[e + 1]; end
    TM{Q}(c, up(a.r * Bb + Ba * b.r + a.r * b.r + drop + γ(T.nmax) * Ba * Bb))
end
function Base.:*(x::Real, a::TM{Q}) where Q
    invariant_scalar(x)
    xf = Float64(x); @assert xf == x "inexact scalar; use an Interval"
    TM{Q}(xf .* a.c, up(abs(xf) * a.r + U * abs(xf) * babs(a.c)))
end
function Base.:*(X::Interval, a::TM{Q}) where Q
    invariant_interval(X)
    m = mid(X); d = sup(mag(X - interval(m)))
    b = m * a
    TM{Q}(b.c, up(b.r + d * (babs(a.c) + a.r)))
end
Base.:*(a::TM, x::Union{Real,Interval}) = x * a
function Base.:+(a::TM{Q}, x::Real) where Q
    invariant_scalar(x)
    xf = Float64(x); @assert xf == x "inexact scalar; use an Interval"
    c = copy(a.c); c[1] += xf
    TM{Q}(c, up(a.r + U * abs(c[1])))
end
Base.:+(a::TM{Q}, X::Interval) where Q = a + tmconst(Q, X)
Base.:+(x::Union{Real,Interval}, a::TM) = a + x
Base.:-(a::TM, x::Union{Real,Interval}) = a + (-x)
Base.:-(x::Union{Real,Interval}, a::TM) = (-a) + x
Base.:/(a::TM, x::Real) = (invariant_scalar(x); (interval(1.0) / interval(Float64(x))) * a)
Base.:/(a::TM{Q}, b::TM{Q}) where Q = a * inv(b)
Base.:/(x::Real, b::TM) = x * inv(b)
Base.:^(a::TM, n::Integer) = (n >= 0 || error("invariant: negative power"); n == 0 ? one(a) : n == 1 ? a : (n % 2 == 0 ? (h = a^(n ÷ 2); h * h) : a * a^(n - 1)))
Base.conj(a::TM) = a
Base.real(a::TM) = a
Base.imag(a::TM) = zero(a)

# ---------------------------------------------------------------- range enclosure
"""Interval enclosure of the model over s ∈ [-1,1]^4 (even monomials use [0,1])."""
function bound(a::TM{Q}) where Q
    invariant_state(Q,a.c,a.r)
    T = table(Q); lo = a.c[1] - a.r; hi = a.c[1] + a.r; tot = abs(a.c[1]) + a.r
    @inbounds for k in 2:T.N
        x = a.c[k]; tot += abs(x)
        if T.even[k]
            x > 0 ? (hi += x) : (lo += x)
        else
            hi += abs(x); lo -= abs(x)
        end
    end
    pad = up(2.0^-40 * tot)
    interval(lo - pad, hi + pad)
end
"""Evaluate the polynomial part at a point s (Float64, for testing only)."""
function evalpoly_at(a::TM{Q}, s) where Q
    T = table(Q); v = 0.0
    for k in 1:T.N
        e = T.exps[k]; v += a.c[k] * s[1]^e[1] * s[2]^e[2] * s[3]^e[3] * s[4]^e[4]
    end
    v
end

# ---------------------------------------------------------------- order changes
"""Drop all terms of degree > Q2 into the remainder."""
function truncate_order(a::TM{Q}, Q2::Int) where Q
    T = table(Q); T2 = table(Q2); c = zeros(T2.N); tail = 0.0
    for k in 1:T.N
        if T.deg[k] <= Q2; c[T2.index[T.exps[k]]] = a.c[k] else tail += abs(a.c[k]) end
    end
    TM{Q2}(c, up(a.r + tail))
end
function raise_order(a::TM{Q}, Q2::Int) where Q
    T = table(Q); T2 = table(Q2); c = zeros(T2.N)
    for k in 1:T.N; c[T2.index[T.exps[k]]] = a.c[k]; end
    TM{Q2}(c, a.r)
end

# ---------------------------------------------------------------- intrinsics
# f(c0 + h) = Σ_{k≤Q} f_k h^k + L,  f_k = f^(k)(c0)/k! enclosed by intervals,
# |L| ≤ sup_{ξ ∈ c0 ± H} |f^(Q+1)(ξ)|/(Q+1)! · H^(Q+1),  H = sup|h| (polynomial + remainder).
function series(a::TM{Q}, fk::Vector{<:Interval}, lagrange::Float64) where Q
    h = TM{Q}(copy(a.c), a.r); h.c[1] = 0.0
    P = tmconst(Q, fk[Q + 1])
    for k in Q:-1:1
        P = P * h + fk[k]
    end
    TM{Q}(P.c, up(P.r + lagrange))
end
ifact(k) = (@assert k <= 18; interval(Float64(factorial(k))))
hbound(a::TM) = up(babs(@view a.c[2:end]) + a.r)
function Base.cos(a::TM{Q}) where Q
    X = interval(a.c[1]); H = hbound(a); Ξ = X + interval(-H, H)
    d = [cos(X), -sin(X), -cos(X), sin(X)]
    fk = [d[k % 4 + 1] / ifact(k) for k in 0:Q]
    dq = [cos(Ξ), -sin(Ξ), -cos(Ξ), sin(Ξ)][(Q + 1) % 4 + 1]
    series(a, fk, sup(mag(dq) / ifact(Q + 1) * interval(H)^(Q + 1)))
end
function Base.sin(a::TM{Q}) where Q
    X = interval(a.c[1]); H = hbound(a); Ξ = X + interval(-H, H)
    d = [sin(X), cos(X), -sin(X), -cos(X)]
    fk = [d[k % 4 + 1] / ifact(k) for k in 0:Q]
    dq = [sin(Ξ), cos(Ξ), -sin(Ξ), -cos(Ξ)][(Q + 1) % 4 + 1]
    series(a, fk, sup(mag(dq) / ifact(Q + 1) * interval(H)^(Q + 1)))
end
# inv and sqrt expand about a centre normalised to 1, so that no intermediate constant grows like c0^-(Q+1)
# (which the operand-range guard rejects for small |c0| even when the result is modest).  With an interval
# L ∋ 1/c0 and h = a - c0 (polynomial part without constant term, plus remainder), v = 1 + L*h encloses
# 1 + u(s), u = h(s)/c0, for every s; x = hbound(v) ≥ sup|u| must be < 1.  Then
#   1/(c0+h)   = (1/c0) · 1/(1+u),      1/(1+u)   = Σ_{k≤Q} (-u)^k + T,   |T| ≤ x^(Q+1)/(1-x);
#   sqrt(c0+h) = sqrt(c0) · sqrt(1+u),  sqrt(1+u) = Σ_{k≤Q} b_k u^k + T,  |T| ≤ |b_{Q+1}| x^(Q+1)/(1-x),
# b_k = binom(1/2, k) (|b_k| decreases for k ≥ 1, so the tail is dominated by a geometric series).  series()
# evaluates the sum on v's centre-free part and adds the tail; multiplying by the interval L (resp. sqrt(c0))
# encloses the product for the true 1/c0 (resp. sqrt(c0)).  Only guarded primitives are used.
function Base.inv(a::TM{Q}) where Q
    X = interval(a.c[1]); ac = abs(X)
    sup(interval(hbound(a)) / ac) < 1 || error("inv: model range reaches 0 (H/|c0| = $(sup(interval(hbound(a)) / ac)))")
    L = interval(1.0) / X
    h = TM{Q}(copy(a.c), a.r); h.c[1] = 0.0
    v = L * h + 1.0
    x = interval(hbound(v))
    sup(x) < 1 || error("inv: scaled model range reaches 0 (x = $(sup(x)))")
    fk = [interval(Float64((-1)^k)) for k in 0:Q]
    L * series(v, fk, sup(x^(Q + 1) / (interval(1.0) - x)))
end
function Base.sqrt(a::TM{Q}) where Q
    X = interval(a.c[1])
    inf(X) > 0 || error("sqrt: centre not positive")
    sup(interval(hbound(a)) / X) < 1 || error("sqrt: model range reaches 0 (H/c0 = $(sup(interval(hbound(a)) / X)))")
    h = TM{Q}(copy(a.c), a.r); h.c[1] = 0.0
    v = (interval(1.0) / X) * h + 1.0
    x = interval(hbound(v))
    sup(x) < 1 || error("sqrt: scaled model range reaches 0 (x = $(sup(x)))")
    bin = [interval(1.0)]
    for k in 1:Q + 1; push!(bin, bin[end] * (interval(0.5) - interval(k - 1)) / interval(k)); end
    sqrt(X) * series(v, bin[1:Q + 1], sup(abs(bin[Q + 2]) * x^(Q + 1) / (interval(1.0) - x)))
end

end # module
