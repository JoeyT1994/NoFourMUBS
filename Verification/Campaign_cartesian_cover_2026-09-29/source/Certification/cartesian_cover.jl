# Outward-interval Cartesian phase arcs; opt-in cover verifier.
isdefined(Main, :CoverCell) || include(joinpath(@__DIR__, "cover.jl"))

mutable struct CartesianVerifier
    phases::Dict{Float64,Complex{Interval{Float64}}}
    widths::Dict{Float64,Tuple{Interval{Float64},Interval{Float64},Interval{Float64}}}
    radii::IdDict{CoverCell,Vector{Interval{Float64}}}
    calls::Int
    coarse::Int
    refined::Int
    fallback::Int
end
CartesianVerifier() = CartesianVerifier(Dict(), Dict(), IdDict(), 0, 0, 0, 0)

function (v::CartesianVerifier)(cc::CoverCell, c::AbstractVector{Float64}, w::AbstractVector{Float64})
    v.calls += 1
    z = [eic(0.0); [get!(() -> eic(x), v.phases, x) for x in c]]
    arcs = [get!(v.widths, x) do
        a = interval(-x, x)
        (cos(a) - 1, sin(a), interval(min(2.0, x)))
    end for x in w]
    coarse = get!(() -> [sum(cc.dev[:, j]) for j in 1:6], v.radii, cc)
    zf = [1.0 + 0im; cis.(c)]
    sf = [sum(zf[k] * conj(cc.fc.h[k,j,1]) for k in 1:6) for j in 1:6]
    order = sortperm(abs.(abs.(sf) .- sqrt(6)); rev = true)
    for j in order
        sc = sum(z[k] * conj(cc.hc[k,j,1]) for k in 1:6)
        unit = eic(angle(sf[j])); rot = conj(unit) * sc
        re = real(rot); im = imag(rot)
        for k in 1:5
            vv = conj(unit) * conj(cc.hc[k+1,j,1]) * z[k+1]
            cm, sn, ch = arcs[k]
            d = sup(cc.dev[k+1,j] * ch)
            re += real(vv) * cm - imag(vv) * sn + interval(-d, d)
            im += imag(vv) * cm + real(vv) * sn + interval(-d, d)
        end
        function rejects(er)
            e = interval(-sup(er), sup(er))
            sq = (re + e)^2 + (im + e)^2
            sup(sq) < 6 || inf(sq) > 6
        end
        if rejects(coarse[j])
            v.coarse += 1
            return true
        end
        er = sum(cmodi(sum(z[k] * conj(cc.hc[k,j,a]) for k in 1:6)) for a in 2:cc.fc.N) + sum(cc.rem[:,j])
        if rejects(er)
            v.refined += 1
            return true
        end
    end
    v.fallback += 1
    verified_excluded(cc, c, w)
end
