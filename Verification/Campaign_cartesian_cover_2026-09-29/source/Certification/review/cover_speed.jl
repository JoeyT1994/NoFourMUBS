# Review/profiling only: does trying the cheap rigorous chord test before the arc test speed up the cover search?
include(joinpath(@__DIR__, "verified_rays.jl")); using Printf; BLAS.set_num_threads(1)
const USE_CHORD = Ref(false)
# same acceptance logic as cover.jl's verified_excluded, optionally preceded by the rigorous chord test
@eval Main begin
    const _ve_orig = verified_excluded
end
function cover_run(θ, ρ; chord)
    USE_CHORD[] = chord
    certify_cell_cover(θ, ρ; deadline = time() + 900)
end
# monkey-patch through a wrapper method on a new type-free name is not possible for a const function; instead
# time the two acceptance functions directly on the boxes the search visits
θ = [-1.3239978018339316, 1.3258162989697315, 1.3960401118485357, -1.5124641075735994]; ρ = pi / 1024 + 2.0^-40
cell = hcell(θ, ρ); cc = CoverCell(cell.H)
st, kept, nt, nrej = cover_search(cc; wstop = 1 / 32, budget = 3_000_000, deadline = time() + 300)
println("search: ", st, " nodes ", nt)
# sample boxes: random phase boxes of the sizes the search uses
import Random; Random.seed!(1)
boxes = [(2pi .* rand(5) .- pi, fill(w, 5)) for w in (1 / 8, 1 / 32, 1 / 128) for _ in 1:3000]
t_arc = @elapsed a = [verified_excluded(cc, c, w) for (c, w) in boxes]
t_chd = @elapsed b = [verified_chord_excluded(cc, c, w) for (c, w) in boxes]
t_cmb = @elapsed d = [verified_chord_excluded(cc, c, w) || verified_excluded(cc, c, w) for (c, w) in boxes]
@printf("per box: arc test %.1f µs, chord test %.1f µs, chord-then-arc %.1f µs; chord alone decides %.0f%% of arc exclusions; agreement %s\n",
        1e6t_arc / length(boxes), 1e6t_chd / length(boxes), 1e6t_cmb / length(boxes), 100 * count(b .& a) / max(1, count(a)), all(d .== (a .| b)))
