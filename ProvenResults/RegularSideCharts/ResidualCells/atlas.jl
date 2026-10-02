# Standalone adaptive reconstruction cover. Does not change campaign methods.
isdefined(Main, :hplus_tm) || include(joinpath(@__DIR__, "../../../NumericalCampaign/Certification/fasthplus.jl"))

"""Sixteen outward-rounded child cubes cover their parent cube exactly or with overlap.
Bit k-1 of label selects the upper half of coordinate k. No inward rounding.
"""
function atlas_children(c, r)
    half = interval(r) / 2
    [begin
        exact = [interval(c[k]) + (isodd(label >> (k-1)) ? 1 : -1)*half for k in 1:4]
        cc = mid.(exact)
        rr = maximum(sup(half + abs(exact[k] - interval(cc[k]))) for k in 1:4)
        (label=label, center=cc, radius=rr)
    end for label in 0:15]
end

"""Return a complete cover only if every leaf has a finite H+ Taylor model.

max_error optionally limits the sum of real/imaginary remainder bounds per
entry. Finite models can still be too loose for efficient ray certification.
Caps return ok=false with pending/unresolved regions, never a certificate.
"""
function reconstruction_atlas(center, radius; maxdepth=4, budget=100, max_error=Inf)
    stack = [(path="r", center=Float64.(center), radius=Float64(radius), depth=0)]
    nodes = []
    charts = []
    while !isempty(stack)
        length(nodes) >= budget && return (ok=false, nodes=nodes, charts=charts, reason=:budget)
        node = pop!(stack)
        model = nothing
        err = Inf
        failure = ""
        try
            proposal = hplus_tm(node.center, node.radius)
            finite = all(all(isfinite, coeffs(p)) && isfinite(remainder_radius(p))
                         for z in proposal.H for p in (z.re, z.im))
            err = maximum(sup(interval(remainder_radius(z.re)) + interval(remainder_radius(z.im)))
                          for z in proposal.H)
            if finite && err <= max_error
                model = proposal
            else
                failure = "nonfinite or insufficient remainder bound"
            end
        catch e
            e isa ErrorException || rethrow()
            failure = sprint(showerror, e)
        end
        if model !== nothing
            push!(nodes, merge(node, (kind=:chart, error=err, failure="")))
            push!(charts, (cell=node, model=model))
        elseif node.depth >= maxdepth
            push!(nodes, merge(node, (kind=:unresolved, error=Inf, failure=failure)))
            return (ok=false, nodes=nodes, charts=charts, reason=:depth)
        else
            push!(nodes, merge(node, (kind=:split, error=Inf, failure=failure)))
            for child in atlas_children(node.center, node.radius)
                push!(stack, (path=node.path*"/"*string(child.label),
                              center=child.center, radius=child.radius, depth=node.depth+1))
            end
        end
    end
    (ok=true, nodes=nodes, charts=charts, reason=:complete)
end
