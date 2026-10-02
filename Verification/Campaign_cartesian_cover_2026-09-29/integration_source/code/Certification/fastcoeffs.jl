# Seed coefficients of the single-radical form as FastTM models over a cell θ0 + ρ[-1,1]^4.
# Reuses the generic formulas of single_radical_tm.jl (adj3_tm, moment_side_tm, seed_coeffs_tm)
# through the CTM complex-pair type of ctm.jl, with FastTM real parts.
include("fasttm.jl")
using .FastTM: tmconst, tmvar, truncate_order, raise_order, remainder_radius, coeffs, tmorder, tmlen, set_remainder
const FTM = FastTM.TM
fbound(x) = FastTM.bound(x)
include("single_radical.jl")          # float reference (seed_coeffs, ray_eqs, ...)
include("single_radical_tm.jl")       # generic formulas + CTM
using IntervalArithmetic

# glue: CTM{FTM} mixing with FTM, intervals and the intrinsics used by the formulas
for op in (:+, :-, :*)
    @eval Base.$op(a::CTM{T}, b::T) where {T<:FTM} = $op(a, CTM(b, zero(b)))
    @eval Base.$op(a::T, b::CTM{T}) where {T<:FTM} = $op(CTM(a, zero(a)), b)
end
Base.:/(a::CTM{T}, b::T) where {T<:FTM} = (ib = inv(b); CTM(a.re * ib, a.im * ib))
Base.:*(X::Interval, z::CTM{<:FTM}) = CTM(X * z.re, X * z.im)
Base.:*(z::CTM{<:FTM}, X::Interval) = X * z
cex_tm(t::FTM) = CTM(cos(t), sin(t))

"""Apply f to every FTM leaf of a (nested) coefficient structure."""
mapleaves(f, x::FTM) = f(x)
mapleaves(f, z::CTM) = CTM(mapleaves(f, z.re), mapleaves(f, z.im))
mapleaves(f, A::AbstractArray) = map(y -> mapleaves(f, y), A)
mapleaves(f, t::NamedTuple) = NamedTuple{keys(t)}(Tuple(mapleaves(f, t[k]) for k in keys(t)))
leaves(x::FTM) = [x]
leaves(z::CTM) = vcat(leaves(z.re), leaves(z.im))
leaves(A::AbstractArray) = reduce(vcat, [leaves(y) for y in A])
leaves(t::NamedTuple) = reduce(vcat, [leaves(t[k]) for k in keys(t)])

"""Coefficients over the cell: computed at order `hi`, then truncated to order `q`
(tail absorbed into the remainder)."""
function fast_cell_coeffs(θ0, ρ; q = 4, hi = 8)
    x = [tmvar(hi, i, θ0[i], ρ) for i in 1:4]
    C = seed_coeffs_tm(x)
    q == hi ? C : mapleaves(a -> truncate_order(a, q), C)
end
