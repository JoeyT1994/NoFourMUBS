# Minimal complex Taylor models: pairs (re, im) of TaylorModelN, enough for the
# single-radical formulas (ring operations, conj, |.|^2, division by |b|^2, cis, sqrt of real).
using TaylorModels, IntervalArithmetic
const TS = TaylorModels.TaylorSeries

struct CTM{T} <: Number
    re::T
    im::T
end
Base.real(z::CTM) = z.re
Base.imag(z::CTM) = z.im
Base.conj(z::CTM) = CTM(z.re, -z.im)
Base.adjoint(z::CTM) = conj(z)
Base.:+(a::CTM, b::CTM) = CTM(a.re + b.re, a.im + b.im)
Base.:-(a::CTM, b::CTM) = CTM(a.re - b.re, a.im - b.im)
Base.:-(a::CTM) = CTM(-a.re, -a.im)
Base.:*(a::CTM, b::CTM) = CTM(a.re*b.re - a.im*b.im, a.re*b.im + a.im*b.re)
# mixing with ordinary numbers / real Taylor models
lift(z::CTM, x::Real) = CTM(zero(z.re) + x, zero(z.re))
lift(z::CTM, x::Complex) = CTM(zero(z.re) + real(x), zero(z.re) + imag(x))
for op in (:+, :-, :*)
    @eval Base.$op(a::CTM, b::Number) = $op(a, lift(a, b))
    @eval Base.$op(a::Number, b::CTM) = $op(lift(b, a), b)
    @eval Base.$op(a::CTM{T}, b::T) where {T<:TaylorModelN} = $op(a, CTM(b, zero(b)))
    @eval Base.$op(a::T, b::CTM{T}) where {T<:TaylorModelN} = $op(CTM(a, zero(a)), b)
end
Base.:/(a::CTM, b::Real) = CTM(a.re / b, a.im / b)
Base.:/(a::CTM{T}, b::T) where {T<:TaylorModelN} = CTM(a.re / b, a.im / b)
Base.zero(z::CTM) = CTM(zero(z.re), zero(z.re))
Base.one(z::CTM) = CTM(one(z.re), zero(z.re))
Base.zero(::Type{CTM{T}}) where T = error("zero(CTM type) needs an instance")  # avoid silent misuse
Base.promote_rule(::Type{CTM{T}}, ::Type{<:Number}) where T = CTM{T}
cex_tm(t::TaylorModelN) = CTM(cos(t), sin(t))
absq_tm(z::CTM) = z.re*z.re + z.im*z.im
cdiv_tm(a::CTM, b::CTM) = (d = absq_tm(b); CTM((a.re*b.re + a.im*b.im)/d, (a.im*b.re - a.re*b.im)/d))
enclose(tm::TaylorModelN, dom) = TaylorModels.evaluate(tm, dom)
enclose(z::CTM, dom) = Complex(enclose(z.re, dom), enclose(z.im, dom))

# matrix helpers without relying on zero(::Type)
function mmul(A::AbstractMatrix, B::AbstractMatrix)
    [sum(A[i, k]*B[k, j] for k in axes(A, 2)) for i in axes(A, 1), j in axes(B, 2)]
end
mvec(A::AbstractMatrix, x::AbstractVector) = [sum(A[i, k]*x[k] for k in axes(A, 2)) for i in axes(A, 1)]
cadj(A::AbstractMatrix) = [conj(A[j, i]) for i in axes(A, 2), j in axes(A, 1)]
CTM{T}(x::T) where {T<:TaylorModelN} = CTM(x, zero(x))
