# Exact endpoint capacity criterion for dephased phase boxes.
# Proof: ProvenResults/CommonRays/ClusterCover/SHARP_CAPACITY.md.
# Requires IntervalArithmetic (loaded by cover.jl).
function certified_box_capacity(r)
    length(r) == 5 || return false
    all(x -> isfinite(x) && x >= 0, r) || return false
    a = [2interval(x) for x in r]
    # This real-part bound is valid even for a wide coordinate.
    real_lower = 1 + sum(cos(interval(-sup(x), sup(x))) for x in a)
    inf(real_lower) > 0 && inf(real_lower^2) > 6 && return true
    all(x -> sup(x) < inf(interval(pi)/2), a) || return false
    cs = cos.(a); ss = sin.(a)
    re = 1 + sum(cs)
    inf(re^2) > 6 && return true
    # Simultaneous sign reversal conjugates the sum: only 16 of 32 vertices.
    for mask in 0:15
        im = ss[1] + sum((((mask >> (k-2)) & 1) == 1 ? ss[k] : -ss[k]) for k in 2:5)
        inf(re^2 + im^2) > 6 || return false
    end
    true
end
