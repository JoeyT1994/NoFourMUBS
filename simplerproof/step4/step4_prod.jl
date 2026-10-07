# Step 4 production: cover Ω = F ∩ {R ≥ C0} and close every cell.
#
#   julia step4_prod.jl CODE OUTDIR WORKER NWORKERS [C0=5] [COVERMAX=1200]
#
# Enumeration: dyadic cells of T⁴ = [-π, π]^4 (half-width π/2^L), descended from the level-0 cell.  A cell is
# discarded as soon as a rigorous test holds on the whole (enlarged) cell:
#   F_out     an F inequality fails                                  (θ ∉ F)
#   Rlow_out  sup R(E) < C0                                          (Step 2: E is not a maximal corner outside the F6 tube)
#   BC_out    corner (012|345) or (345|012) of H₊ beats E, radical-free   (θ ∉ D₀)
#   D0_out    some corner of the H₊ Taylor model beats E             (θ ∉ D₀; needs L ≥ 7)
# Cells reaching JOBLEVEL (5) are dealt round-robin to workers.  Below level 7 a surviving cell is refined while
#   - the H₊ Taylor model does not exist on it (D0_singular: the cell meets the edge R ≈ 0 of Ω or a side branch
#     point; refinement separates sup R < C0 from inf R > 0), down to SINGMAX;
#   - the D₀ test is inconclusive and no float sample point of the cell is a maximal-corner seed, down to PRUNEMAX;
# otherwise the cluster cover (Step 4 proper) runs on the cell, and on failure the cell is split (down to COVERMIN).
# Output: OUTDIR/w<WORKER>.jsonl, one line per finished job cell: {"j", "theta5", "leaves": {status: n},
# "covers": [[L, θ..., ok, nlabels, t]], "failed": [[L, θ..., reason]], "t"}.  Restart skips finished job cells.
ENV["CERT_FASTMAX"] = "0"; ENV["CERT_CHILD_FASTMAX"] = "0"; ENV["CERT_COVER_ACCELERATED"] = "1"
const CODE = ARGS[1]
include(joinpath(CODE, "Campaign", "driver.jl"))
const OUTDIR = ARGS[2]; const WORKER = parse(Int, ARGS[3]); const NW = parse(Int, ARGS[4])
const C0 = length(ARGS) >= 5 ? parse(Float64, ARGS[5]) : 5.0
const COVERMAX = length(ARGS) >= 6 ? parse(Float64, ARGS[6]) : 1200.0
const JOBLEVEL = 5; const D0LEVEL = 7; const PRUNEMAX = 9; const SINGMAX = 11
const COVERMIN = parse(Int, get(ENV, "S4_COVERMIN", "9"))     # retry pass (step4_retry.jl): 11

function rcap_test(θ0, ρ; q = 4)       # :out if sup R(E) < C0 on the whole cell
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); G = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    sup(fbound(4*g*g*eta - chi*chi)) < C0 ? :out : :maybe
end
function classify(θ, L)
    ρe = enl(pi / 2^L)
    (try f_test(θ, ρe) catch; :maybe end) == :out && return :F_out
    (try rcap_test(θ, ρe) catch; :maybe end) == :out && return :Rlow_out
    (try bc_test(θ, ρe) catch; :maybe end) == :out && return :BC_out
    L < D0LEVEL && return :keep
    d = try d0_test(θ, ρe; q = L <= 8 ? 6 : 4) catch; :maybe end
    d == :out ? :D0_out : d == :singular ? :D0_singular : :keep
end
fmtθ(θ) = join([repr(x) for x in θ], ", ")
function go!(acc, θ, L)
    s = classify(θ, L)
    if s in (:F_out, :Rlow_out, :BC_out, :D0_out)
        acc.leaves[s] = get(acc.leaves, s, 0) + 1; return
    end
    if L < D0LEVEL
        for c in children(θ, pi / 2^L); go!(acc, c, L + 1); end; return
    end
    if s == :D0_singular
        if L < SINGMAX
            for c in children(θ, pi / 2^L); go!(acc, c, L + 1); end
        else
            push!(acc.failed, "[$L, $(fmtθ(θ)), \"D0_singular\"]")
        end
        return
    end
    if L < PRUNEMAX && !meets_domain(θ, pi / 2^L)
        for c in children(θ, pi / 2^L); go!(acc, c, L + 1); end; return
    end
    t = time()
    r = try certify_cell_cover_accelerated(θ, enl(pi / 2^L); partition = true, budget = 200_000_000, deadline = time() + COVERMAX)
        catch e; (ok = false, reason = Symbol("error_", typeof(e)), nlabels = 0) end
    push!(acc.covers, "[$L, $(fmtθ(θ)), $(r.ok), $(get(r, :nlabels, 0)), $(round(time() - t, digits = 1))]")
    if r.ok
        acc.leaves[:cover] = get(acc.leaves, :cover, 0) + 1
    elseif L < COVERMIN
        for c in children(θ, pi / 2^L); go!(acc, c, L + 1); end
    else
        push!(acc.failed, "[$L, $(fmtθ(θ)), \"cover_$(get(r, :reason, ""))\"]")
    end
end

# job cells: deterministic breadth-first plan to JOBLEVEL with the cheap tests
function jobcells()
    cells = [zeros(4)]
    for L in 0:JOBLEVEL-1
        nxt = Vector{Vector{Float64}}()
        for θ in cells
            classify(θ, L) == :keep && append!(nxt, children(θ, pi / 2^L))
        end
        cells = nxt
    end
    [θ for θ in cells if classify(θ, JOBLEVEL) == :keep]
end
get(ENV, "S4_LIBRARY", "0") == "1" || begin
mkpath(OUTDIR); out = joinpath(OUTDIR, "w$WORKER.jsonl")
done = Set{Int}()
isfile(out) && for l in eachline(out)
    m = match(r"\"j\": (\d+)", l); m === nothing || push!(done, parse(Int, m[1]))
end
J = jobcells()
WORKER == 0 && println(stderr, "job cells at level $JOBLEVEL: $(length(J))")
open(out, "a") do f
    for j in eachindex(J)
        (j - 1) % NW == WORKER || continue
        j in done && continue
        t0 = time(); acc = (leaves = Dict{Symbol,Int}(), covers = String[], failed = String[])
        go!(acc, J[j], JOBLEVEL)
        lv = join(["\"$k\": $v" for (k, v) in acc.leaves], ", ")
        println(f, "{\"j\": $j, \"theta5\": [$(fmtθ(J[j]))], \"leaves\": {$lv}, \"covers\": [$(join(acc.covers, ", "))], " *
                   "\"failed\": [$(join(acc.failed, ", "))], \"t\": $(round(time() - t0, digits = 1))}")
        flush(f)
    end
end
end
