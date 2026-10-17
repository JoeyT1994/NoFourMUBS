# Negative tests: the independent checker must accept the small sub-certificate and the F6 Record, and reject each
# targeted corruption of them (apart from the documented 'accept' cases).  The corrupted certificates, and why each
# must be rejected, come from tests/corruptions.py at the repository root:
#
#   python3 tests/negative_atlas.py --write DIR
#   julia --startup-file=no -t 4 --project=proof/independent/jlenv proof/independent/tests/negative.jl DIR
#
# The verdict per case is check.jl's per-Record verdict: every closed Record passes Step 3 (normal bound, Stage C with
# the interval replay) and Step 4 (boundary tree into targets that pass Step 3).  For the nonemptiness cases it is the
# F6 search of check.jl, run here on the one Record of the certificate (check.jl runs it on closed Records that pass
# Step 3).  Step 3 results are shared between cases with an identical Record (same P, R, label radius and frame).
# Exits nonzero on any unexpected verdict.
using IntervalArithmetic, LinearAlgebra, Printf
include(joinpath(@__DIR__, "..", "src", "IndepAtlas.jl"))
const IA = IndepAtlas

dir = ARGS[1]
cases = [split(l, '\t') for l in readlines(joinpath(dir, "cases.tsv")) if !startswith(l, "#")]
certs = Dict(c[1] => IA.read_certificate(joinpath(dir, c[1] * ".txt")) for c in cases)

key(r) = (r.P, r.R, r.lr, r.Tint)
function step3(r)
    nb = IA.normal_bound(r)
    nb.ok || return (false, "normal bound: " * nb.msg)
    sc = IA.stage_c(r, nb; replay=true)
    sc.ok ? (true, "ok") : (false, "Stage C: " * sc.msg)
end

# every Record that needs Step 3 in some case, once
jobs = Dict{Any,IA.Rec}()
for c in cases
    c[3] == "nonemptiness" && continue
    recs = certs[c[1]]
    for r in recs
        r.closed || continue
        jobs[key(r)] = r
        for tg in r.targets
            jobs[key(recs[tg.t+1])] = recs[tg.t+1]
        end
    end
end
ks = collect(keys(jobs))
res3 = Vector{Tuple{Bool,String}}(undef, length(ks))
t0 = time()
lk = ReentrantLock()
Threads.@threads :greedy for i in eachindex(ks)
    t = time()
    res3[i] = step3(jobs[ks[i]])
    lock(lk) do
        @printf("  Step 3, Record %d (R = %g, label radius %g): %s  %.0f s\n", jobs[ks[i]].idx, jobs[ks[i]].R, jobs[ks[i]].lr,
                res3[i][1] ? "PASS" : "FAIL", time() - t)
        flush(stdout)
    end
end
done3 = Dict(zip(ks, res3))
@printf("Step 3 on %d distinct Records: %.0f s (%d threads)\n", length(ks), time() - t0, Threads.nthreads())

function verdict(name, what)
    recs = certs[name]
    if what == "nonemptiness"
        ne = IA.nonempty_F6(recs, collect(1:length(recs)))
        ok = any(x -> x[4], ne)
        return ok, ok ? "F6 certified in Record $(ne[findfirst(x -> x[4], ne)][1])" : "F6 not certified in any Record"
    end
    for r in recs
        r.closed || continue
        s3 = done3[key(r)]
        s3[1] || return false, "record $(r.idx) step3: " * s3[2]
        pass3(t) = done3[key(recs[t+1])][1]
        br = IA.boundary_tree(r, IA.normal_bound(r), recs, pass3)
        br.ok || return false, "record $(r.idx) boundary: " * br.msg
    end
    true, "all closed Records PASS"
end

bad = 0
for c in cases
    name, expect, what = c
    t = time()
    ok, why = verdict(name, what)
    good = ok == (expect == "accept")
    global bad += !good
    @printf("%s  %-25s expect %-6s (%s)  %.1fs\n        %s\n", good ? "ok  " : "BAD ", name, expect, what, time() - t,
            ok ? "accepted" : "rejected: " * first(why, 110))
end
@printf("negative atlas tests (Julia): %d / %d as expected\n", length(cases) - bad, length(cases))
exit(bad == 0 ? 0 : 1)
