# Independent certifier for the nofour-atlas-v1 certificate.  See README.md.
#
# julia --startup-file=no -t 10 --project=<jlenv_cluster> check.jl CERT OUTDIR [--fast] [--limit K]
#   CERT    the .json.gz certificate (converted with convert.py) or an already converted .txt
#   OUTDIR  results: step3.tsv, step4.tsv (both resumable), RESULT.txt
#   --fast  float Stage C decisions with MARGIN = 1e-8 only (no interval replay of each rejection)
#   --limit K   only certify the first K closed records (and their targets), for smoke tests

using IntervalArithmetic, LinearAlgebra, Printf
include(joinpath(@__DIR__, "src", "IndepAtlas.jl"))
using .IndepAtlas
const IA = IndepAtlas

function main(args)
    cert = args[1]; outdir = args[2]
    fast = "--fast" in args
    li = findfirst(==("--limit"), args)
    limit = li === nothing ? typemax(Int) : parse(Int, args[li+1])
    mkpath(outdir)
    txt = cert
    if endswith(cert, ".gz")
        txt = joinpath(outdir, "certificate.txt")
        run(`python3 $(joinpath(@__DIR__, "convert.py")) $cert $txt`)
    end
    recs = IA.read_certificate(txt)
    closed = [r.idx for r in recs if r.closed]
    closed = closed[1:min(end, limit)]
    need = Set{Int}(closed)
    for i in closed, tg in recs[i+1].targets
        push!(need, tg.t)
    end
    need = sort(collect(need))
    @printf("%d records, %d closed (checking %d), %d need Step 3; threads = %d; replay = %s\n",
            length(recs), count(r -> r.closed, recs), length(closed), length(need), Threads.nthreads(), !fast)
    flush(stdout)

    # ---------------- Step 3 (sigma, normal bound, Stage C), resumable
    f3 = joinpath(outdir, "step3.tsv")
    done3 = Dict{Int,Tuple{Bool,String}}()
    if isfile(f3)
        for l in readlines(f3)
            startswith(l, "#") && continue
            p = split(l, '\t'); done3[parse(Int, p[1])] = (p[2] == "PASS", String(p[end]))
        end
    else
        open(f3, "w") do io
            println(io, "#idx\tstatus\tR\tsigma\te0\tj1\tlam_max\trH\tn\trcol\trF\tbins12\tbins24\tbins48\tbins96\tlabels\tmax_s\tO\tU\tO_joint\tU_joint\toverruled\tcore\tcliquesA\tsteps\tseconds\tmsg")
        end
    end
    lk = ReentrantLock()
    todo = [i for i in need if !haskey(done3, i)]
    t0 = time(); ndone = Threads.Atomic{Int}(0)
    Threads.@threads :dynamic for i in todo
        r = recs[i+1]
        nb = IA.normal_bound(r)
        line = ""
        if !nb.ok
            line = @sprintf("%d\tFAIL\t%.6g\t%s", i, r.R, join(fill("", 23), '\t')) * "\tnormal bound: " * nb.msg
            ok = false; msg = "normal bound: " * nb.msg
        else
            sc = IA.stage_c(r, nb; replay=!fast)
            ok = sc.ok; msg = sc.ok ? "ok" : "Stage C: " * sc.msg
            b = sc.bins
            line = @sprintf("%d\t%s\t%.6g\t%.10g\t%.3e\t%.3e\t%.12g\t%.10g\t%.10g\t%.10g\t%.10g\t%d\t%d\t%d\t%d\t%d\t%.6g\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%.2f\t%s",
                            i, ok ? "PASS" : "FAIL", r.R, nb.sigma, nb.e0, nb.j1, nb.lam_max, nb.rH, nb.n, nb.rcol, nb.rF,
                            b.kept[1], b.kept[2], b.kept[3], b.kept[4], sc.nlabels, sc.maxs, sc.nO, sc.nU, sc.nO_joint, sc.nU_joint,
                            b.overruled + sc.overruled_edges, sc.ncore, sc.ncliqueA, sc.steps, sc.seconds, msg)
        end
        lock(lk) do
            done3[i] = (ok, msg)
            open(f3, "a") do io; println(io, line); end
            k = Threads.atomic_add!(ndone, 1) + 1
            if k % 10 == 0 || k == length(todo)
                @printf("  step3 %d/%d  (%.0f s)\n", k, length(todo), time() - t0); flush(stdout)
            end
        end
    end
    pass3(t) = get(done3, t, (false, ""))[1]

    # ---------------- Step 4 (boundary trees), resumable
    f4 = joinpath(outdir, "step4.tsv")
    done4 = Dict{Int,Tuple{Bool,String}}()
    if isfile(f4)
        for l in readlines(f4)
            startswith(l, "#") && continue
            p = split(l, '\t'); done4[parse(Int, p[1])] = (p[2] == "PASS", String(p[end]))
        end
    else
        open(f4, "w") do io
            println(io, "#idx\tstatus\tntargets\tntargets_step3ok\tnboxes\toffball\toffshell\ttransferred\tmaxdepth\tnused\tnused_not_closed\tseconds\tmsg")
        end
    end
    todo4 = [i for i in closed if !haskey(done4, i)]
    t0 = time(); ndone = Threads.Atomic{Int}(0)
    Threads.@threads :dynamic for i in todo4
        r = recs[i+1]
        nb = IA.normal_bound(r)
        if !nb.ok
            ok = false; msg = "no normal bound"; line = @sprintf("%d\tFAIL\t%d\t\t\t\t\t\t\t\t\t\t%s", i, length(r.targets), msg)
        else
            br = IA.boundary_tree(r, nb, recs, pass3)
            nok = count(tg -> pass3(tg.t), r.targets)
            nnc = count(t -> !recs[t+1].closed, br.targets_used)
            ok = br.ok; msg = br.ok ? "ok" : br.msg
            line = @sprintf("%d\t%s\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%.2f\t%s", i, ok ? "PASS" : "FAIL", length(r.targets), nok,
                            br.nboxes, br.noffball, br.noffshell, br.ntransfer, br.maxdepth, length(br.targets_used), nnc, br.seconds, msg)
        end
        lock(lk) do
            done4[i] = (ok, msg)
            open(f4, "a") do io; println(io, line); end
            k = Threads.atomic_add!(ndone, 1) + 1
            if k % 10 == 0 || k == length(todo4)
                @printf("  step4 %d/%d  (%.0f s)\n", k, length(todo4), time() - t0); flush(stdout)
            end
        end
    end

    # ---------------- nonemptiness
    cands = [i + 1 for i in closed if pass3(i)]
    ne = IA.nonempty_F6(recs, cands)
    neok = any(x -> x[4], ne)

    # ---------------- report
    allclosed_targets = all(recs[tg.t+1].closed for i in closed for tg in recs[i+1].targets)
    npass = 0
    open(joinpath(outdir, "RESULT.txt"), "w") do io
        println(io, "Independent certifier (proof/independent), certificate: ", cert)
        println(io, "Stage C rejections: ", fast ? "float with MARGIN = 1e-8 (--fast)" : "float, each re-decided in interval arithmetic")
        println(io, "Closed records checked: ", length(closed), "   records needing Step 3 (closed + targets): ", length(need))
        println(io)
        println(io, "Per closed record (PASS = Step 3 [sigma, normal bound, Stage C] and Step 4 [boundary tree into Step-3-certified targets]):")
        for i in closed
            s3 = get(done3, i, (false, "not run")); s4 = get(done4, i, (false, "not run"))
            ok = s3[1] && s4[1]; npass += ok
            why = ok ? "" : (s3[1] ? "boundary: " * s4[2] : "step3: " * s3[2])
            println(io, @sprintf("record %5d  %s  %s", i, ok ? "PASS" : "FAIL", why))
        end
        println(io)
        nt = [i for i in need if !recs[i+1].closed]
        println(io, "Non-closed records used as targets: ", length(nt), "; Step 3 PASS for ", count(pass3, nt), " of them.")
        for i in nt
            pass3(i) || println(io, @sprintf("  target %5d  Step 3 FAIL: %s", i, done3[i][2]))
        end
        println(io)
        println(io, "Nonemptiness (F6):")
        for x in ne
            println(io, @sprintf("  record %d: ||h(A F6 + 2 pi N - P_t)|| <= %.9f vs R_t = %.6g  %s  (sign %d, tr %s, rowperm %s, colperm %s)",
                                 x[1], x[2], x[3], x[4] ? "CERTIFIED" : "not certified", x[5], x[6], x[7], x[8]))
        end
        isempty(ne) && println(io, "  no closed, Step-3-certified record contains F6")
        println(io)
        println(io, @sprintf("SUMMARY: %d / %d closed records PASS.  F6 nonemptiness: %s.  All targets closed (complete atlas): %s.",
                             npass, length(closed), neok ? "CERTIFIED" : "NOT certified", allclosed_targets ? "yes" : "NO"))
        if npass == length(closed) && neok && allclosed_targets && all(pass3, need)
            println(io, "VERDICT: the certificate is complete and every check passed (Steps 3-4 and nonemptiness).")
        else
            println(io, "VERDICT: not a complete certificate of Steps 3-4 (see above).")
        end
    end
    print(read(joinpath(outdir, "RESULT.txt"), String))
end

main(ARGS)
