# Independent certifier for the nofour-atlas-v1 certificate.  See README.md.
#
# julia --startup-file=no -t 10 --project=<jlenv_cluster> check.jl CERT OUTDIR [--fast] [--limit K] [--partial]
#   CERT    the .json.gz certificate (converted with convert.py) or an already converted .txt
#   OUTDIR  results: step3.tsv, step4.tsv (both resumable), BINDING.txt, RESULT.txt
#   --fast  float Stage C decisions with MARGIN = 1e-8 only (no interval replay of each rejection)
#   --limit K   only certify the first K closed records (and their targets), for smoke tests
#   --partial   exit 0 when every checked record passes, without claiming a complete atlas (sub-certificates)
#
# Exit status 0 only for a complete certificate in which every check passed (or, with --partial, every checked
# record passed); 1 otherwise.  A run resumes from OUTDIR only if BINDING.txt there matches this run exactly: the
# certificate, the checker sources, the Julia environment and version, and the options.  Otherwise it stops.

using IntervalArithmetic, LinearAlgebra, Printf, SHA
include(joinpath(@__DIR__, "src", "IndepAtlas.jl"))
using .IndepAtlas
const IA = IndepAtlas

filehash(f) = bytes2hex(open(sha256, f))

# What a set of receipts in OUTDIR certifies: one line per bound input.
function binding(cert, fast, limit)
    src = joinpath(@__DIR__, "src")
    files = [joinpath(@__DIR__, "check.jl"); joinpath(@__DIR__, "convert.py");
             sort([joinpath(d, f) for (d, _, fs) in walkdir(src) for f in fs if endswith(f, ".jl")])]
    proj = Base.active_project()
    man = joinpath(dirname(proj), "Manifest.toml")
    lines = ["format\tnofour-indep-binding-v1", "certificate\t" * filehash(cert),
             "julia\t" * string(VERSION), "mode\t" * (fast ? "fast" : "interval-replay"),
             "limit\t" * (limit == typemax(Int) ? "none" : string(limit)),
             "Project.toml\t" * filehash(proj), "Manifest.toml\t" * (isfile(man) ? filehash(man) : "missing")]
    append!(lines, [relpath(f, @__DIR__) * "\t" * filehash(f) for f in files])
    join(lines, '\n') * '\n'
end

# Receipts are keyed by record index; a repeated index means the file is not one run's output.
function read_receipts(f)
    done = Dict{Int,Tuple{Bool,String}}()
    for l in readlines(f)
        startswith(l, "#") && continue
        p = split(l, '\t'); i = parse(Int, p[1])
        haskey(done, i) && error("$f: record $i appears twice")
        done[i] = (p[2] == "PASS", String(p[end]))
    end
    done
end

function main(args)
    cert = args[1]; outdir = args[2]
    fast = "--fast" in args
    partial = "--partial" in args
    li = findfirst(==("--limit"), args)
    limit = li === nothing ? typemax(Int) : parse(Int, args[li+1])
    mkpath(outdir)
    bind = binding(cert, fast, limit)
    fb = joinpath(outdir, "BINDING.txt")
    f3 = joinpath(outdir, "step3.tsv"); f4 = joinpath(outdir, "step4.tsv")
    if isfile(f3) || isfile(f4)
        if !isfile(fb) || read(fb, String) != bind
            println("ERROR: $outdir holds receipts from a different run (certificate, checker, environment or options ",
                    "differ, or BINDING.txt is missing). Use an empty OUTDIR.")
            return false
        end
        println("Resuming: BINDING.txt matches this run.")
    else
        write(fb, bind)
    end
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
    done3 = Dict{Int,Tuple{Bool,String}}()
    if isfile(f3)
        done3 = read_receipts(f3)
    else
        open(f3, "w") do io
            println(io, "#idx\tstatus\tR\tsigma\te0\tj1\tlam_max\trH\tn\trcol\trF\tbins12\tbins24\tbins48\tbins96\tlabels\tmax_s\tO\tU\tO_joint\tU_joint\toverruled\tcore\tcliquesA\tsteps\tseconds\tmsg")
        end
    end
    lk = ReentrantLock()
    todo = [i for i in need if !haskey(done3, i)]
    t0 = time(); ndone = Threads.Atomic{Int}(0)
    Threads.@threads :greedy for i in todo         # one Record at a time per thread (load balance)
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
    done4 = Dict{Int,Tuple{Bool,String}}()
    if isfile(f4)
        done4 = read_receipts(f4)
    else
        open(f4, "w") do io
            println(io, "#idx\tstatus\tntargets\tntargets_step3ok\tnboxes\toffball\toffshell\ttransferred\tmaxdepth\tnused\tnused_not_closed\tseconds\tmsg")
        end
    end
    todo4 = [i for i in closed if !haskey(done4, i)]
    t0 = time(); ndone = Threads.Atomic{Int}(0)
    Threads.@threads :greedy for i in todo4
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
    t0 = time()
    ne = IA.nonempty_F6(recs, cands)
    @printf("  nonemptiness: %d candidate Records searched in %.0f s\n", length(cands), time() - t0); flush(stdout)
    neok = any(x -> x[4], ne)

    # ---------------- report
    allclosed_targets = all(recs[tg.t+1].closed for i in closed for tg in recs[i+1].targets)
    allchecked = length(closed) == count(r -> r.closed, recs)      # not truncated by --limit
    npass = 0; complete = false; passed = false
    open(joinpath(outdir, "RESULT.txt"), "w") do io
        println(io, "Independent certifier (proof/independent), certificate: ", cert)
        println(io, "Bound inputs (BINDING.txt): certificate sha256 ", split(split(bind, '\n')[2], '\t')[2])
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
        passed = npass == length(closed) && all(pass3, need)
        complete = passed && neok && allclosed_targets && allchecked
        if complete
            println(io, "VERDICT: the certificate is complete and every check passed (Steps 3-4 and nonemptiness).")
        elseif partial && passed
            println(io, "VERDICT (partial): every checked record passed; this is not a complete-atlas certificate.")
        else
            println(io, "VERDICT: not a complete certificate of Steps 3-4 (see above).",
                    allchecked ? "" : "  Only $(length(closed)) of $(count(r -> r.closed, recs)) closed records were checked (--limit).")
        end
    end
    print(read(joinpath(outdir, "RESULT.txt"), String))
    complete || (partial && passed)
end

exit(main(ARGS) ? 0 : 1)
