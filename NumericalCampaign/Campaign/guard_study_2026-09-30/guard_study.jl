# Study (not production): for guarded layer cells absent from the unguarded run, how does the D0 test end, and
# what happens if a guard failure refines the cell instead of sending it to the layer?
#   julia guard_study.jl PKG SAMPLE.txt FIRST LAST OUT.jsonl
PKG = ARGS[1]
include(isfile(joinpath(PKG, "code", "Campaign", "driver.jl")) ? joinpath(PKG, "code", "Campaign", "driver.jl") : joinpath(PKG, "Campaign", "driver.jl"))
get(ENV, "SCALED", "0") == "1" && include(joinpath(@__DIR__, "scaled_intrinsics.jl"))
function d0_g(θ0, ρ; q = 4)
    HT = try hplus_tm(θ0, ρ; q = q) catch e
        e isa ErrorException || rethrow()
        return startswith(e.msg, "invariant") ? (:guard, e.msg) : (:singular, e.msg)
    end
    Rs = try corner_R_all(HT.H) catch e
        e isa ErrorException && startswith(e.msg, "invariant") ? (return (:guard_R, e.msg)) : rethrow()
    end
    R0 = Rs[1, 1]
    for c in eachindex(Rs)
        c == 1 && continue
        v = try inf(fbound(Rs[c] - R0)) catch e
            e isa ErrorException && startswith(e.msg, "invariant") ? (return (:guard_R, e.msg)) : rethrow()
        end
        v > 0 && return (:out, "")
    end
    (:maybe, "")
end
function prune_g(θ, ρ)
    ρe = enl(ρ)
    (try f_test(θ, ρe) catch; :maybe end) == :out && return (:F_out, "")
    (try r_test(θ, ρe) catch; :maybe end) == :out && return (:R_out, "")
    (try bc_test(θ, ρe) catch; :maybe end) == :out && return (:BC_out, "")
    d, m = d0_g(θ, ρe; q = ρ > 0.0065 ? 6 : 4)
    d == :out && return (:D0_out, "")
    d == :maybe && return (:keep, "")
    (d, m)
end
# volume fractions (relative to the root cell) by outcome, refining guard failures down to level 11
function study!(acc, msgs, θ, level, w)
    p, m = prune_g(θ, pi / 2^level)
    if p in (:guard, :guard_R) && level < 11
        msgs[m] = get(msgs, m, 0) + 1
        for c in children(θ, pi / 2^level); study!(acc, msgs, c, level + 1, w / 16); end
        return
    end
    p in (:guard, :guard_R) && (msgs[m] = get(msgs, m, 0) + 1)
    k = p in (:F_out, :R_out, :BC_out, :D0_out) ? "pruned" : p == :keep ? "work" : p in (:guard, :guard_R) ? "guard_leaf" : "singular"
    acc[k * "_vol"] = get(acc, k * "_vol", 0.0) + w
    acc[k * "_n"] = get(acc, k * "_n", 0.0) + 1
end
recs = readlines(ARGS[2]); first_, last_ = parse(Int, ARGS[3]), parse(Int, ARGS[4])
open(ARGS[5], "w") do io
    for i in first_:min(last_, length(recs))
        g = split(recs[i]); id = parse(Int, g[1]); level = parse(Int, g[3]); θ = parse.(Float64, g[4:7])
        t = @elapsed begin
            root = prune_g(θ, pi / 2^level)
            acc = Dict{String,Float64}(); msgs = Dict{String,Int}()
            study!(acc, msgs, θ, level, 1.0)
        end
        println(io, "{\"id\":", id, ",\"level\":", level, ",\"root\":\"", root[1], "\",\"root_msg\":\"", root[2], "\",",
                join(["\"$k\":$v" for (k, v) in sort(collect(acc))], ","), ",\"msgs\":{",
                join(["\"$k\":$v" for (k, v) in msgs], ","), "},\"t\":", round(t; digits = 2), "}")
        flush(io)
    end
end
