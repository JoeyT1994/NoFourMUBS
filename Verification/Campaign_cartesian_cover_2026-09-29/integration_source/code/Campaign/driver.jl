# Campaign driver: certify Q on the canonical domain D₀ ∩ F by a hierarchical cover of T^4.
#
# Level ℓ cells have half-width ρ_ℓ = π/2^ℓ; the level-0 cell is [-π, π]^4.  A cell is pruned when a
# rigorous test shows it misses D₀ ∩ F:
#   :F_out   an ordering inequality of F fails on the whole cell         (domain.jl f_test)
#   :R_out   R < 0 on the whole cell                                      (r_test)
#   :BC_out  corner (012|345) or (345|012) beats (012|012) on the whole cell (domain.jl bc_test; radical-free)
#   :D0_out  some corner beats corner (012|012) on the whole cell        (domain.jl d0_test; ρ ≤ 0.013)
# Surviving cells at the work level are certified: complete rays (complete.jl) and no quartet
# (gram.jl), bisecting a failed cell up to `maxdepth` times.
#
#   plan:   julia driver.jl plan JOBLEVEL OUT.txt            → surviving cells at JOBLEVEL (the jobs)
#   run:    julia driver.jl run JOBS.txt INDEX OUTDIR        → process job INDEX (1-based) of the list
#   expand: julia driver.jl expand JOBS.txt FIRST LAST OUT   → surviving work cells (level WORKLEVEL..PRUNEMAX) of jobs FIRST..LAST
#   batch:  julia driver.jl batch CELLS.txt FIRST LAST OUT   → certify work cells FIRST..LAST (resumable)
# A job writes OUTDIR/job_INDEX.jsonl (one line per leaf) and OUTDIR/job_INDEX.done when finished.
# Environment: CERT_BUDGET (box budget per certificate, default 3e6), CERT_MAXDEPTH (bisections, default 2),
# CERT_CELLMAX (wall-clock seconds per work cell including its bisections, default 2400), CERT_CERTMAX (seconds per
# single certificate, default 600; a certificate cut off by it is bisected).
const ISMAIN = abspath(PROGRAM_FILE) == @__FILE__
const LAUNCH = pwd()
resolve(p) = isabspath(p) ? p : joinpath(LAUNCH, p)
const CERT = joinpath(@__DIR__, "..", "Certification")
cd(CERT)
include(joinpath(CERT, "complete.jl")); include(joinpath(CERT, "gram.jl")); include(joinpath(CERT, "domain.jl")); include(joinpath(CERT, "cover.jl"))
const ACCELERATED_COVER = get(ENV, "CERT_COVER_ACCELERATED", "0") == "1"
ACCELERATED_COVER && include(joinpath(CERT, "cover_accelerated.jl"))
campaign_cover(theta, rho; kwargs...) = ACCELERATED_COVER ?
    certify_cell_cover_accelerated(theta, rho; partition=true, kwargs...) :
    certify_cell_cover(theta, rho; kwargs...)
using Printf, LinearAlgebra, SHA; BLAS.set_num_threads(1)

const WORKLEVEL = 9                       # ρ = π/512 ≈ 0.0061
const MAXDEPTH = parse(Int, get(ENV, "CERT_MAXDEPTH", "2"))
const BUDGET = parse(Int, get(ENV, "CERT_BUDGET", "3000000"))
const CELLMAX = parse(Float64, get(ENV, "CERT_CELLMAX", "2400"))   # wall-clock seconds per work cell
const CERTMAX = parse(Float64, get(ENV, "CERT_CERTMAX", "600"))    # wall-clock seconds per certificate
const PRUNEMAX = WORKLEVEL + parse(Int, get(ENV, "EXPAND_EXTRA", "2"))   # deepest level of pruning refinement
const CONSOLIDATE = 4                    # see workcells!
# Every rigorous test runs on the ENLARGED cell centre ± (ρ + ENLARGE); children keep nominal centres θ ± ρ/2.
# Float64 rounding of child centres (≤ 1e-15 per level, ≤ 13 levels) and π - fl(π) ≈ 1.2e-16 are far below
# ENLARGE ≈ 9.1e-13, so the enlarged leaves (pruned, certified or residual) provably cover the nominal
# root cell [-π, π]⁴ with no gaps.  Records store the nominal ρ.
const ENLARGE = 2.0^-40
enl(ρ) = ρ + ENLARGE
const SINGMAX = WORKLEVEL + parse(Int, get(ENV, "EXPAND_SINGULAR_EXTRA", "0"))   # refinement of singular cells (default none)
const FASTMAX = parse(Float64, get(ENV, "CERT_FASTMAX", "60"))     # seconds for the rays path before the cover path
const COVER_MINDEPTH = parse(Int, get(ENV, "CERT_COVER_MINDEPTH", "1"))
const COVERBUDGET = parse(Int, get(ENV, "CERT_COVERBUDGET", "20000000"))   # node budget of the cover search
const COVER0 = parse(Float64, get(ENV, "CERT_COVER0", "0"))       # seconds for a cover attempt below COVER_MINDEPTH (0: none)
const CHILD_FASTMAX = parse(Float64, get(ENV, "CERT_CHILD_FASTMAX", string(FASTMAX)))   # rays-path seconds at depth ≥ 1
const CELLREC = 121                      # bytes per record of the work-cell file (see batch)

"""R < 0 on the whole cell (order-2 Taylor model of R; valid at any cell size)."""
function r_test(θ0, ρ; q = 2)
    x = [tmvar(q, i, θ0[i], ρ) for i in 1:4]
    a, b, c, d = cex_tm.(x); o = one(a); E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); G = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    s, t, r = G[2,1], G[3,1], G[3,2]; X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2 * real(s * r * conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    sup(fbound(4*g*g*eta - chi*chi)) < 0 ? :out : :maybe
end
function prune(θ, ρ)
    ρe = enl(ρ)                                                          # test the enlarged cell (see ENLARGE)
    (try f_test(θ, ρe) catch; :maybe end) == :out && return :F_out
    (try r_test(θ, ρe) catch; :maybe end) == :out && return :R_out
    (try bc_test(θ, ρe) catch; :maybe end) == :out && return :BC_out    # radical-free corners (012|345), (345|012)
    if ρ <= 0.013
        d = try d0_test(θ, ρe; q = ρ > 0.0065 ? 6 : 4) catch; :maybe end
        d == :out && return :D0_out
        d == :singular && return :D0_singular        # H₊ has a branch point on the cell: neither out nor certifiable
    end
    :keep
end
children(θ, ρ) = [θ .+ (ρ / 2) .* collect(v) for v in Iterators.product(ntuple(_ -> (-1, 1), 4)...)]

"""Full certificate of one work cell, with bisection. Returns a list of leaf records.  `deadline`
(a time() value, default now + CELLMAX) bounds the whole work cell: past it, certificates stop and the
remaining leaves are recorded as FAILED:time_limit."""
function certify_leaf(θ, ρ, depth; deadline = time() + CELLMAX)
    if time() > deadline
        return [(θ = θ, ρ = ρ, depth = depth, status = "FAILED:time_limit", method = "", rays = 0, nV = 0, t = 0.0)]
    end
    # Two independent certificates, either of which proves "no quartet over the cell":
    #  1. rays: complete Krawczyk ray tubes (complete.jl) + clique stage on them (gram.jl); fast on clean cells;
    #  2. cover: cluster-cover certificate (cover.jl; ProvenResults/CommonRays/ClusterCover), which needs no
    #     regularity or root count and so crosses folds and ghost valleys.
    # The rays path gets FASTMAX seconds, the cover path the rest of this certificate's CERTMAX.  Below
    # COVER_MINDEPTH a failed rays path gets a cover attempt of COVER0 seconds (none if 0) and then bisects.
    # (Starting the children's cover search from this attempt's kept boxes was tried and is slower: the
    # parent's boxes are fine but twice as numerous, 29 Sep.)
    t = @elapsed begin
        dcert = min(deadline, time() + CERTMAX)
        fm = depth == 0 ? FASTMAX : CHILD_FASTMAX
        res = fm <= 0 ? (ok = false, reason = :skipped) :
              try certify_cell_rays(θ, enl(ρ); budget = BUDGET, deadline = min(dcert, time() + fm)) catch e; (ok = false, reason = Symbol("error_" * string(typeof(e)))) end
        q = res.ok ? (try certify_no_quartet(res.rays) catch e; (ok = false,) end) : (ok = false,)
        nocov = (ok = false, reason = res.ok ? :quartet_candidates : res.reason == :skipped ? :cover0 : res.reason, nlabels = 0)
        cov = (res.ok && q.ok) ? nothing : (depth < COVER_MINDEPTH && COVER0 <= 0) ? nocov :
              (try campaign_cover(θ, enl(ρ); budget = COVERBUDGET,
                                      deadline = depth < COVER_MINDEPTH ? min(dcert, time() + COVER0) : dcert)
               catch e; (ok = false, reason = Symbol("error_" * string(typeof(e))), nlabels = 0) end)
        depth < COVER_MINDEPTH && cov !== nothing && !cov.ok && (cov = merge(cov, (reason = nocov.reason,)))   # a capped attempt is not the reason to split
    end
    if res.ok && q.ok
        return [(θ = θ, ρ = ρ, depth = depth, status = "certified", method = "rays", rays = length(res.rays), nV = q.nV, t = t)]
    end
    if cov.ok
        return [(θ = θ, ρ = ρ, depth = depth, status = "certified", method = ACCELERATED_COVER ? "cover_accelerated" : "cover", rays = cov.nlabels, nV = cov.nbases, t = t)]
    end
    reason = string(cov.reason)
    reason == "time_limit" && time() <= deadline && (reason = "cert_time")     # this certificate's cap, not the cell's
    if depth < MAXDEPTH && reason != "time_limit"
        out = Any[(θ = θ, ρ = ρ, depth = depth, status = "split:" * reason, method = "", rays = 0, nV = 0, t = t)]
        for c in children(θ, ρ)
            p = prune(c, ρ / 2)
            p == :keep ? append!(out, certify_leaf(c, ρ / 2, depth + 1; deadline = deadline)) :
            p == :D0_singular ? push!(out, (θ = c, ρ = ρ / 2, depth = depth + 1, status = "FAILED:D0_singular", method = "", rays = 0, nV = 0, t = 0.0)) :
                                push!(out, (θ = c, ρ = ρ / 2, depth = depth + 1, status = string(p), method = "", rays = 0, nV = 0, t = 0.0))
        end
        return out
    end
    [(θ = θ, ρ = ρ, depth = depth, status = "FAILED:" * reason, method = "", rays = 0, nV = 0, t = t)]
end

"""Descend from a cell to the work level, pruning; certify surviving work cells."""
function process(θ, level, emit)
    ρ = pi / 2^level
    p = prune(θ, ρ)
    p == :keep || return
    if level < WORKLEVEL
        for c in children(θ, ρ); process(c, level + 1, emit); end
    else
        for rec in certify_leaf(θ, ρ, 0); emit(rec); end
    end
end

"""Enumerate surviving cells at the job level (breadth-first from the level-0 cell)."""
function plan(joblevel)
    cells = [zeros(4)]
    for ℓ in 0:joblevel-1
        ρ = pi / 2^ℓ
        next = Vector{Vector{Float64}}()
        for θ in cells
            prune(θ, ρ) == :keep && append!(next, children(θ, ρ))
        end
        cells = next
        @printf("level %d: %d cells\n", ℓ + 1, length(cells)); flush(stdout)
    end
    [θ for θ in cells if prune(θ, pi / 2^joblevel) == :keep]
end

"""Float check (sampling only, not part of any proof): does D₀ ∩ F contain the centre or a vertex of the cell?"""
meets_domain(θ, ρ) = any(p -> in_F(p) && in_D0(p)[1], vcat([θ], vec([θ .+ ρ .* collect(v) for v in Iterators.product(ntuple(_ -> (-1, 1), 4)...)])))

"""Surviving cells below a level-`level` cell: work cells (θ, level) in `out`, branch-layer cells (θ, level) in
`layer`, prune counts per (level, reason) in `counts`.
- Above WORKLEVEL, a :D0_singular cell is refined like any kept cell (the D₀ test is not yet applied there).
- At WORKLEVEL and below, a :D0_singular cell (H₊ has a branch point on it, so neither the D₀ test nor
  certification applies) goes to `layer`, after refinement down to SINGMAX (default: none; refining
  shrinks the layer's volume but multiplies its count, and the kept sub-cells hug R = 0 where
  certification fails).  The layer needs a separate argument (WhatWeWanttoProve/T1).
- A kept cell that misses D₀ ∩ F at its 17 sample points is refined for pruning down to PRUNEMAX; its
  kept sub-cells become work cells at their own level.  Soundness rests on the rigorous prune alone; the
  sampling only decides where to refine."""
function workcells!(out, layer, counts, θ, level)
    ρ = pi / 2^level
    p = prune(θ, ρ)
    if p == :D0_singular && level >= WORKLEVEL
        if level < SINGMAX
            for c in children(θ, ρ); workcells!(out, layer, counts, c, level + 1); end
        else
            push!(layer, (θ, level))
        end
        return out
    elseif p != :keep && p != :D0_singular
        counts[(level, p)] = get(counts, (level, p), 0) + 1; return out
    end
    if level < WORKLEVEL
        for c in children(θ, ρ); workcells!(out, layer, counts, c, level + 1); end
    elseif level < PRUNEMAX && !meets_domain(θ, ρ)
        # refine for pruning; if that leaves more than CONSOLIDATE work cells, keep this cell whole instead
        # (a boundary cell of D₀ that the prune cannot shave: one certificate is cheaper than many)
        o2 = Any[]; l2 = Any[]; c2 = Dict{Tuple{Int,Symbol},Int}()
        for c in children(θ, ρ); workcells!(o2, l2, c2, c, level + 1); end
        if length(o2) > CONSOLIDATE
            push!(out, (θ, level))
        else
            append!(out, o2); append!(layer, l2)
            for (k, v) in c2; counts[k] = get(counts, k, 0) + v; end
        end
    else
        push!(out, (θ, level))
    end
    out
end

"""SHA-256 of the certification and campaign sources (ties every output line to a code version)."""
function code_hash()
    files = sort(vcat([joinpath(CERT, f) for f in readdir(CERT) if endswith(f, ".jl")], [joinpath(@__DIR__, "driver.jl")]))
    bytes2hex(sha256(join(read.(files, String), "\0")))[1:16]
end

jl(x::AbstractVector) = "[" * join(jl.(x), ",") * "]"
jl(x::Real) = isfinite(x) ? repr(Float64(x)) : "null"
jl(x::AbstractString) = "\"" * x * "\""
if ISMAIN
    if ARGS[1] == "plan"
        jobs = plan(parse(Int, ARGS[2]))
        open(resolve(ARGS[3]), "w") do io; for θ in jobs; println(io, join(repr.(θ), " ")); end; end
        println("jobs: ", length(jobs))
    elseif ARGS[1] == "run"
        lines = readlines(resolve(ARGS[2])); idx = parse(Int, ARGS[3]); outdir = resolve(ARGS[4]); mkpath(outdir)
        θ = parse.(Float64, split(lines[idx])); level = parse(Int, get(ENV, "JOBLEVEL", "6"))   # the level the plan was made at
        open(joinpath(outdir, "job_$(idx).jsonl"), "w") do io
            process(θ, level, rec -> (println(io, "{\"theta\":", jl(rec.θ), ",\"rho\":", jl(rec.ρ), ",\"depth\":", rec.depth,
                                              ",\"status\":", jl(rec.status), ",\"rays\":", rec.rays, ",\"nV\":", rec.nV, ",\"t\":", jl(rec.t), "}"); flush(io)))
        end
        touch(joinpath(outdir, "job_$(idx).done"))
    elseif ARGS[1] == "expand"
        # lines "JOB LEVEL θ1 θ2 θ3 θ4" for the work cells, "#layer JOB LEVEL θ..." for branch-layer cells, and a final
        # line "#prune JOB level:reason:count ... work:N layer:M" per job
        lines = readlines(resolve(ARGS[2])); a, b = parse(Int, ARGS[3]), parse(Int, ARGS[4]); out = resolve(ARGS[5])
        level = parse(Int, get(ENV, "JOBLEVEL", "6")); isfile(out) && exit(0)
        # resume: keep the records of jobs that have their closing #prune line; drop a partially written job
        done = Set{Int}()
        if isfile(out * ".part")
            old = readlines(out * ".part")
            for l in old; startswith(l, "#prune ") && push!(done, parse(Int, split(l)[2])); end
            jobof(l) = (f = split(l); isempty(f) ? 0 : startswith(l, "#") ? parse(Int, f[2]) : parse(Int, f[1]))
            open(out * ".part", "w") do io; for l in old; jobof(l) in done && println(io, l); end; end
        end
        open(out * ".part", "a") do io
            for idx in a:min(b, length(lines))
                idx in done && continue
                θ = parse.(Float64, split(lines[idx])); counts = Dict{Tuple{Int,Symbol},Int}()
                layer = Any[]
                cells = workcells!(Any[], layer, counts, θ, level)
                for (c, l) in cells; println(io, idx, " ", l, " ", join(repr.(c), " ")); end
                for (c, l) in layer; println(io, "#layer ", idx, " ", l, " ", join(repr.(c), " ")); end
                println(io, "#prune ", idx, " ", join(["$(k[1]):$(k[2]):$(v)" for (k, v) in sort(collect(counts))], " "),
                        " work:", length(cells), " layer:", length(layer))
                flush(io)
            end
        end
        mv(out * ".part", out)
    elseif ARGS[1] == "batch"
        # CELLS.txt: fixed-width records "%9d %7d %2d %+.17e %+.17e %+.17e %+.17e\n" (ID, JOB, LEVEL, θ; CELLREC
        # bytes each, ID = line number, ρ = π/2^LEVEL).  One block of lines per cell: its leaf records, then
        # {"cell":ID,"done":...}.  A killed task resumes from OUT.part, skipping completed cells.
        cf = resolve(ARGS[2]); a, b = parse(Int, ARGS[3]), parse(Int, ARGS[4]); out = resolve(ARGS[5])
        isfile(out) && exit(0)
        done = Set{Int}()
        if isfile(out * ".part")
            for l in eachline(out * ".part")
                m = match(r"^\{\"cell\":(\d+),\"done\":true", l); m === nothing || push!(done, parse(Int, m[1]))
            end
        end
        cells = Dict{Int,Tuple{Vector{Float64},Int}}()
        open(cf) do io
            seek(io, (a - 1) * CELLREC)
            for id in a:b
                eof(io) && break
                f = split(readline(io)); parse(Int, f[1]) == id || error("cell file record $(id) is out of place")
                cells[id] = (parse.(Float64, f[4:7]), parse(Int, f[3]))
            end
        end
        host = gethostname(); cpu = Sys.cpu_info()[1].model; h = code_hash()
        open(out * ".part", "a") do io
            println(io, "{\"header\":true,\"code\":", jl(h), ",\"host\":", jl(host), ",\"cpu\":", jl(strip(cpu)), ",\"accelerated_cover\":", ACCELERATED_COVER,
                    ",\"budget\":", BUDGET, ",\"cellmax\":", jl(CELLMAX), ",\"certmax\":", jl(CERTMAX), ",\"fastmax\":", jl(FASTMAX), ",\"coverbudget\":", COVERBUDGET, ",\"cover_mindepth\":", COVER_MINDEPTH, ",\"cover0\":", jl(COVER0), ",\"child_fastmax\":", jl(CHILD_FASTMAX), ",\"fastverify\":", FASTVERIFY, ",\"cover_rcap\":", jl(RCAP), ",\"cover_widths\":", jl(collect(COVER_WIDTHS)), ",\"maxdepth\":", MAXDEPTH, ",\"enlarge\":", jl(ENLARGE), ",\"worklevel\":", WORKLEVEL, ",\"julia\":", jl(string(VERSION)), "}")
            flush(io)
            for id in sort(collect(keys(cells)))
                id in done && continue
                θ, lev = cells[id]
                t = @elapsed recs = certify_leaf(θ, pi / 2^lev, 0)
                buf = IOBuffer()
                for rec in recs
                    println(buf, "{\"cell\":", id, ",\"theta\":", jl(rec.θ), ",\"rho\":", jl(rec.ρ), ",\"depth\":", rec.depth,
                            ",\"status\":", jl(rec.status), ",\"method\":", jl(rec.method), ",\"rays\":", rec.rays, ",\"nV\":", rec.nV, ",\"t\":", jl(rec.t), "}")
                end
                nf = count(r -> startswith(r.status, "FAILED"), recs)
                println(buf, "{\"cell\":", id, ",\"done\":true,\"failed\":", nf, ",\"t\":", jl(t), "}")
                write(io, take!(buf)); flush(io)
            end
        end
        mv(out * ".part", out)
    end
end
