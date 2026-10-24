# Second-order Taylor models in four variables u = (u1, u2, u3, u4) on a box |u_j| <= h_j.
#
# A model t = (c, g, q, r) stands for a fixed polynomial p(u) = c + sum_j g_j u_j + sum_{j<=l} q_jl u_j u_l whose
# coefficients lie in the given intervals, together with the claim |f(u) - p(u)| <= r for every u in the box.  The
# quadratic part is stored in the monomial basis u_j u_l (j <= l), ten coefficients in the order of QPAIRS.
#
# The same code runs with Float64 / ComplexF64 coefficients.  That mode carries no remainder (r = 0) and is used only
# to compute predictors (an untrusted second-order expansion); nothing it produces is trusted.

const QPAIRS = ((1, 1), (1, 2), (1, 3), (1, 4), (2, 2), (2, 3), (2, 4), (3, 3), (3, 4), (4, 4))
const CI64 = Complex{I64}

"""The box: half-widths h_j (exact floats, used as upper bounds), as intervals, and the products h_j h_l."""
struct Dom
    h::NTuple{4,Float64}
    hI::NTuple{4,I64}
    hq::NTuple{10,I64}
end
function Dom(h::NTuple{4,Float64})
    all(x -> x >= 0, h) || error("negative half-width")
    hI = ntuple(j -> iv(h[j]), 4)
    Dom(h, hI, ntuple(m -> hI[QPAIRS[m][1]] * hI[QPAIRS[m][2]], 10))
end

struct TM{T}
    c::T
    g::NTuple{4,T}
    q::NTuple{10,T}
    r::Float64
end

rig(::Type{I64}) = true
rig(::Type{CI64}) = true
rig(::Type) = false

# ---------------------------------------------------------------- rigorous scalar helpers (upper bounds)

absup(x::I64) = mag(x)
absup(x::CI64) = sup(sqrt(real(x)^2 + imag(x)^2))
absup(x::Real) = abs(x)
absup(x::Complex) = abs(x)
"""Lower bound of |x| (0 if the enclosure contains 0)."""
abslo(x::I64) = mig(x)
abslo(x::CI64) = inf(sqrt(real(x)^2 + imag(x)^2))

addu(a::Float64, b::Float64) = (a == 0.0 ? b : b == 0.0 ? a : sup(iv(a) + iv(b)))
mulu(a::Float64, b::Float64) = (a == 0.0 || b == 0.0) ? 0.0 : sup(iv(a) * iv(b))

zer(::Type{T}) where {T} = zero(T)
const Z4I = ntuple(_ -> iv(0.0), 4)

tmconst(c::T) where {T} = TM{T}(c, ntuple(_ -> zero(T), 4), ntuple(_ -> zero(T), 10), 0.0)
tmzero(::Type{T}) where {T} = tmconst(zero(T))

"""(|c|, L1, L2): upper bounds of |c|, sum_j |g_j| h_j and sum_m |q_m| h_j h_l."""
function polybounds(t::TM{T}, D::Dom) where {T}
    rig(T) || return (0.0, 0.0, 0.0)
    s1 = iv(0.0)
    @inbounds for j in 1:4
        s1 += iv(absup(t.g[j])) * D.hI[j]
    end
    s2 = iv(0.0)
    @inbounds for m in 1:10
        s2 += iv(absup(t.q[m])) * D.hq[m]
    end
    absup(t.c), sup(s1), sup(s2)
end

"""Upper bound of sup_u |f(u)|."""
function bound(t::TM, D::Dom)
    a, l1, l2 = polybounds(t, D)
    sup(iv(a) + iv(l1) + iv(l2) + iv(t.r))
end
"""Upper bound of sup_u |f(u) - c| (c the constant coefficient, as a point of its interval)."""
function varb(t::TM, D::Dom)
    _, l1, l2 = polybounds(t, D)
    sup(iv(l1) + iv(l2) + iv(t.r))
end

# ---------------------------------------------------------------- linear operations

Base.:+(a::TM{T}, b::TM{T}) where {T} = TM{T}(a.c + b.c, a.g .+ b.g, a.q .+ b.q, addu(a.r, b.r))
Base.:-(a::TM{T}, b::TM{T}) where {T} = TM{T}(a.c - b.c, a.g .- b.g, a.q .- b.q, addu(a.r, b.r))
Base.:-(a::TM{T}) where {T} = TM{T}(-a.c, map(-, a.g), map(-, a.q), a.r)
addc(a::TM{T}, x) where {T} = TM{T}(a.c + x, a.g, a.q, a.r)

"""s * t for a number s (an exact float, or an interval standing for one fixed point of it)."""
function scale(t::TM{T}, s) where {T}
    c = s * t.c
    S = typeof(c)
    TM{S}(c, map(x -> s * x, t.g), map(x -> s * x, t.q), rig(S) ? mulu(t.r, absup(s)) : 0.0)
end

"""sum_k a_k t_k for numbers a_k (exact floats or intervals); zero coefficients are skipped."""
function lincomb(a, ts::AbstractVector{TM{T}}) where {T}
    acc = nothing
    for k in eachindex(ts)
        ak = a[k]
        (ak isa Float64 && ak == 0.0) && continue
        x = scale(ts[k], ak)
        acc = acc === nothing ? x : acc + x
    end
    acc === nothing ? tmzero(T) : acc
end

Base.conj(t::TM{T}) where {T} = TM{T}(conj(t.c), map(conj, t.g), map(conj, t.q), t.r)
re(t::TM{Complex{S}}) where {S} = TM{S}(real(t.c), map(real, t.g), map(real, t.q), t.r)
imp(t::TM{Complex{S}}) where {S} = TM{S}(imag(t.c), map(imag, t.g), map(imag, t.q), t.r)
cplx(t::TM{S}) where {S<:Real} = TM{Complex{S}}(Complex(t.c, zero(S)), map(x -> Complex(x, zero(S)), t.g),
                                                map(x -> Complex(x, zero(S)), t.q), t.r)
"""The model with the remainder dropped (the polynomial part, as a model with r = 0)."""
polypart(t::TM{T}) where {T} = TM{T}(t.c, t.g, t.q, 0.0)
withrem(t::TM{T}, r::Float64) where {T} = TM{T}(t.c, t.g, t.q, r)

# ---------------------------------------------------------------- product

@inline function ggcoef(ag, bg, m::Int)
    j, l = QPAIRS[m]
    j == l ? ag[j] * bg[j] : ag[j] * bg[l] + ag[l] * bg[j]
end

"""Product.  Orders 0-2 are kept exactly (in intervals); the discarded polynomial terms (g_a.u) q_b + q_a (g_b.u) +
q_a q_b are bounded by L1a L2b + L2a L1b + L2a L2b, and the remainders by ra Bb + Ba rb + ra rb with B = |c| + L1 + L2."""
function mul(a::TM{A}, b::TM{B}, D::Dom) where {A,B}
    c = a.c * b.c
    g = ntuple(j -> a.c * b.g[j] + b.c * a.g[j], 4)
    q = ntuple(m -> a.c * b.q[m] + b.c * a.q[m] + ggcoef(a.g, b.g, m), 10)
    T = typeof(c)
    rig(T) || return TM{T}(c, g, q, 0.0)
    ca, l1a, l2a = polybounds(a, D)
    cb, l1b, l2b = polybounds(b, D)
    L1a = iv(l1a); L2a = iv(l2a); L1b = iv(l1b); L2b = iv(l2b); ra = iv(a.r); rb = iv(b.r)
    Ba = iv(ca) + L1a + L2a; Bb = iv(cb) + L1b + L2b
    r = L1a * L2b + L2a * L1b + L2a * L2b + ra * Bb + Ba * rb + ra * rb
    TM{T}(c, g, q, sup(r))
end

# ---------------------------------------------------------------- e^{i x} for a real model x

ecis(c::I64) = Complex(cos(c), sin(c))
ecis(c::Float64) = cis(c)

"""e^{i x}.  With x = c + l + s, l = g.u, s = q(u) + e:
e^{ix} = e^{ic} (1 + i l + i q - l^2/2) + e^{ic} R,
|R| <= r + L1 (L2 + r) + (L2 + r)^2/2 + (L1 + L2 + r)^3/6   (from |e^{iy} - 1 - iy + y^2/2| <= |y|^3/6, y real)."""
function exp_i(x::TM{T}, D::Dom) where {T<:Real}
    E = ecis(x.c)
    iE = Complex(-imag(E), real(E))
    g = ntuple(j -> iE * x.g[j], 4)
    half = rig(T) ? iv(0.5) : 0.5
    q = ntuple(10) do m
        j, l = QPAIRS[m]
        s = j == l ? half * x.g[j]^2 : x.g[j] * x.g[l]          # coefficient of l^2/2
        E * Complex(-s, x.q[m])                                  # E (i q_m - s)
    end
    S = typeof(E)
    rig(T) || return TM{S}(E, g, q, 0.0)
    _, l1, l2 = polybounds(x, D)
    L1 = iv(l1); L2 = iv(l2); r = iv(x.r)
    R = r + L1 * (L2 + r) + (L2 + r)^2 / iv(2.0) + (L1 + L2 + r)^3 / iv(6.0)
    TM{S}(E, g, q, sup(R * iv(absup(E))))
end

# ---------------------------------------------------------------- evaluation (tests and predictors)

"""The polynomial part at a point u (any number type)."""
function peval(t::TM, u)
    s = t.c
    @inbounds for j in 1:4
        s += t.g[j] * u[j]
    end
    @inbounds for m in 1:10
        j, l = QPAIRS[m]
        s += t.q[m] * (u[j] * u[l])
    end
    s
end

"""Float model from a rigorous one (midpoints; for predictors only)."""
fmid(x::I64) = mid(x)
fmid(x::CI64) = Complex(mid(real(x)), mid(imag(x)))
tofloat(t::TM) = (c = fmid(t.c); TM{typeof(c)}(c, map(fmid, t.g), map(fmid, t.q), 0.0))
"""Thin rigorous model from a float one (r = 0; the float coefficients are exact rationals)."""
toiv(t::TM{Float64}) = TM{I64}(iv(t.c), map(iv, t.g), map(iv, t.q), 0.0)
civ(z::ComplexF64) = Complex(iv(real(z)), iv(imag(z)))
toiv(t::TM{ComplexF64}) = TM{CI64}(civ(t.c), map(civ, t.g), map(civ, t.q), 0.0)

# ---------------------------------------------------------------- bounds of a vector of real models over the box

"""Upper bound of sup_u ||f(u)||_2 for a vector of real models f_e (all on the same box D).
Diagonal monomials are recentred: u_j^2 = h_j^2/2 + (u_j^2 - h_j^2/2), |u_j^2 - h_j^2/2| <= h_j^2/2.  Then
  ||f(u)|| <= max over the 16 vertices v of ||a' + G v||  +  ( sum_e (sum_m |q_em| k_m + r_e)^2 )^{1/2},
with a' = c + sum_j q_jj h_j^2/2, k_m = h_j^2/2 (j = l) or h_j h_l (j < l).  The first term is exact for the affine
part (a norm is convex, so its maximum over the box is at a vertex)."""
function vecnorm_sup(f::AbstractVector{TM{I64}}, D::Dom)
    ne = length(f)
    half = iv(0.5)
    kq = ntuple(m -> (QPAIRS[m][1] == QPAIRS[m][2] ? D.hq[m] * half : D.hq[m]), 10)
    a = Vector{I64}(undef, ne)
    tail = iv(0.0)
    @inbounds for e in 1:ne
        t = f[e]
        ae = t.c
        for (m, (j, l)) in enumerate(QPAIRS)
            j == l && (ae += t.q[m] * D.hq[m] * half)
        end
        a[e] = ae
        s = iv(t.r)
        for m in 1:10
            s += iv(mag(t.q[m])) * kq[m]
        end
        tail += s^2
    end
    best = 0.0
    for v in 0:15
        s = iv(0.0)
        @inbounds for e in 1:ne
            x = a[e]
            for j in 1:4
                x += ((v >> (j - 1)) & 1 == 1 ? D.hI[j] : -D.hI[j]) * f[e].g[j]
            end
            s += x^2
        end
        best = max(best, sup(sqrt(s)))
    end
    sup(iv(best) + sqrt(tail))
end
