# Independent replay of a seed-atlas certificate (proof/seed_atlas/SPEC.md).  See README.md.
#
# julia --startup-file=no -t N --project=../independent/jlenv check_seed.jl CERT OUTDIR [options]
#   CERT    the .json.gz certificate (converted by convert_seed.py) or an already converted .txt
#   OUTDIR  results: records.tsv, seeds.tsv, recbound.tsv (all resumable), BINDING.txt, RESULT.txt
# options:
#   --fast            Stage C float decisions with the existing checker's margin only (no interval replay)
#   --limit K         only the first K seed balls (smoke tests; never a complete verdict)
#   --only i,j,...    only these seed balls (0-based)
#   --partial         exit 0 when every checked object passed its own checks, without claiming a complete atlas
#   --shard k/m       only the seed balls i with i mod m = k; records are given Step 3 only (for T2 targets), and the
#                     run ends after the seed balls (a shard is never a verdict; see --import)
#   --import D1,D2,.. take the seed-ball receipts of shard runs D1, D2, ... (same certificate, checker and options
#                     apart from --shard, checked through their BINDING.txt), then finish the whole run here
#   --c1-depth D      extra halving levels allowed in the C1 box cover (default 3)
#   --split-depth S   halving levels allowed for a transfer box that fails as a whole (default 2)
#
# Exit status 0 only for a complete certificate in which every check passed (or, with --partial, every checked object
# passed); 1 otherwise.  A run resumes from OUTDIR only if BINDING.txt there matches this run exactly.

using IntervalArithmetic, LinearAlgebra, Printf, SHA
include(joinpath(@__DIR__, "src", "IndepSeed.jl"))
using .IndepSeed
const S = IndepSeed
const IA = S.IA

filehash(f) = bytes2hex(open(sha256, f))

function binding(cert, opts)
    files = [joinpath(@__DIR__, "check_seed.jl"); joinpath(@__DIR__, "convert_seed.py");
             sort([joinpath(d, f) for (d, _, fs) in walkdir(joinpath(@__DIR__, "src")) for f in fs if endswith(f, ".jl")]);
             sort([joinpath(d, f) for (d, _, fs) in walkdir(joinpath(@__DIR__, "..", "independent", "src")) for f in fs if endswith(f, ".jl")])]
    proj = Base.active_project()
    man = joinpath(dirname(proj), "Manifest.toml")
    lines = ["format\tnofour-indep-seed-binding-v1", "certificate\t" * filehash(cert), "julia\t" * string(VERSION),
             "options\t" * opts, "Project.toml\t" * filehash(proj), "Manifest.toml\t" * (isfile(man) ? filehash(man) : "missing")]
    append!(lines, [relpath(f, @__DIR__) * "\t" * filehash(f) for f in files])
    join(lines, '\n') * '\n'
end

function read_receipts(f)
    done = Dict{Int,Tuple{Bool,String}}()
    for l in readlines(f)
        startswith(l, "#") && continue
        p = split(l, '\t'); i = parse(Int, p[1])
        haskey(done, i) && error("$f: object $i appears twice")
        done[i] = (p[2] == "PASS", String(p[end]))
    end
    done
end

function receipts!(f, header)
    isfile(f) && return read_receipts(f)
    open(f, "w") do io; println(io, header); end
    Dict{Int,Tuple{Bool,String}}()
end

"""C1, Stage C on the enclosure and C2 for one seed ball: (ok, msg, receipt line)."""
function seed_line(s, X, rec_ok, fast, c1depth, splitdepth)
    i = s.idx
    c1 = S.check_c1(s; maxdepth=c1depth)
    t1 = time()
    sc, si = S.seed_stage_c(s; replay=!fast)
    tsc = time() - t1
    c2 = S.check_c2_seed(s, X, rec_ok; split_depth=splitdepth)
    ok = c1.ok && sc.ok && c2.ok
    msg = ok ? "ok" : join(filter(!isempty, [c1.ok ? "" : "C1: " * c1.msg, sc.ok ? "" : "Stage C: " * sc.msg,
                                             c2.ok ? "" : "C2: " * c2.msg]), "; ")
    line = @sprintf("%d\t%s\t%.6g\t%d\t%.10g\t%.10g\t%d\t%d\t%.2f\t%s\t%d\t%.6g\t%d\t%.2f\t%.10g\t%.10g\t%.10g\t%s\t%d\t%s\t%d\t%d\t%.6g\t%.6g\t%.6g\t%d\t%.2f\t%s",
                    i, ok ? "PASS" : "FAIL", s.r, s.o, s.n, c1.bound, c1.nleaf, c1.nsplit, c1.seconds,
                    sc.ok ? "PASS" : "FAIL", sc.nlabels, sc.maxs, sc.bins.overruled + sc.overruled_edges, tsc,
                    si.nprime, si.rcol, si.rF, c2.ok ? "PASS" : "FAIL", c2.nbox, kindstr(c2.counts), c2.nchecks,
                    c2.nsplit, c2.worst[:T0], c2.worst[:T1], c2.worst[:T2], c2.cover_nodes, c2.seconds, clean(msg))
    ok, msg, line
end

kindstr(d) = join(["$(k)=$(d[k])" for k in sort(collect(keys(d)))], ",")
clean(s) = replace(s, '\t' => ' ', '\n' => ' ')

function main(args)
    cert = args[1]; outdir = args[2]
    fast = "--fast" in args; partial = "--partial" in args
    getopt(name, default) = (i = findfirst(==(name), args); i === nothing ? default : args[i+1])
    limit = parse(Int, getopt("--limit", string(typemax(Int))))
    only = getopt("--only", "")
    c1depth = parse(Int, getopt("--c1-depth", "3")); splitdepth = parse(Int, getopt("--split-depth", "2"))
    shard = getopt("--shard", ""); imports = getopt("--import", "")
    shard_k, shard_m = isempty(shard) ? (0, 1) : parse.(Int, split(shard, '/'))
    (0 <= shard_k < shard_m) || error("--shard k/m needs 0 <= k < m")
    base = "fast=$fast limit=$(limit == typemax(Int) ? "none" : limit) only=$(isempty(only) ? "all" : only) c1depth=$c1depth splitdepth=$splitdepth"
    opts = base * " shard=$(isempty(shard) ? "none" : shard)"
    mkpath(outdir)
    bind = binding(cert, opts)
    fb = joinpath(outdir, "BINDING.txt")
    fr3 = joinpath(outdir, "records.tsv"); fs = joinpath(outdir, "seeds.tsv"); frb = joinpath(outdir, "recbound.tsv")
    if any(isfile, (fr3, fs, frb))
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
        run(`python3 $(joinpath(@__DIR__, "convert_seed.py")) $cert $txt`)
    end
    C = S.read_seed_certificate(txt)
    ns = length(C.seeds); nr = length(C.records)
    sel = isempty(only) ? collect(0:min(ns, limit)-1) : sort(parse.(Int, split(only, ',')))
    all(0 .<= sel .< ns) || error("--only: no such seed")
    sel = [i for i in sel if i % shard_m == shard_k]
    @printf("%d seed balls (checking %d), %d records, F6 record %d; threads = %d; Stage C replay = %s\n",
            ns, length(sel), nr, C.fourier, Threads.nthreads(), !fast)
    flush(stdout)
    lk = ReentrantLock()

    # ---------------- records: Step 3 (normal bound and Stage C of the existing checker)
    done3 = receipts!(fr3, "#idx\tstatus\tR\tsigma\tn\trcol\trF\tlabels\tmax_s\toverruled\tseconds\tmsg")
    nbs = Dict{Int,IA.NormalBound}()
    t0 = time()
    Threads.@threads :greedy for i in 0:nr-1
        rec = C.records[i+1].rec
        nb = try
            IA.normal_bound(rec)
        catch err
            IA.NormalBound(false, "exception: " * clean(sprint(showerror, err))[1:min(end, 300)], NaN, NaN, NaN, NaN, NaN,
                           NaN, NaN, NaN, NaN, NaN, NaN, zeros(Int64, 36, 4))
        end
        lock(lk) do; nbs[i] = nb; end
        haskey(done3, i) && continue
        t1 = time()
        ok, msg, line = try
            if !nb.ok
                m = "normal bound: " * nb.msg
                (false, m, @sprintf("%d\tFAIL\t%.6g\t\t\t\t\t\t\t\t%.2f\t%s", i, rec.R, time() - t1, clean(m)))
            else
                sc = IA.stage_c(rec, nb; replay=!fast)
                m = sc.ok ? "ok" : "Stage C: " * sc.msg
                (sc.ok, m, @sprintf("%d\t%s\t%.6g\t%.10g\t%.10g\t%.10g\t%.10g\t%d\t%.6g\t%d\t%.2f\t%s", i, sc.ok ? "PASS" : "FAIL",
                                    rec.R, nb.sigma, nb.n, nb.rcol, nb.rF, sc.nlabels, sc.maxs, sc.bins.overruled + sc.overruled_edges,
                                    time() - t1, clean(m)))
            end
        catch err
            m = "exception: " * clean(sprint(showerror, err))[1:min(end, 300)]
            (false, m, @sprintf("%d\tFAIL\t%.6g\t\t\t\t\t\t\t\t%.2f\t%s", i, rec.R, time() - t1, m))
        end
        lock(lk) do
            done3[i] = (ok, msg)
            open(fr3, "a") do io; println(io, line); end
        end
    end
    @printf("  records Step 3: %d / %d PASS (%.0f s)\n", count(i -> get(done3, i, (false,))[1], 0:nr-1), nr, time() - t0)
    flush(stdout)
    rec_ok(t) = get(done3, t, (false, ""))[1]

    # ---------------- seed balls: C1, Stage C on the enclosure, C2 (sphere transfers)
    X = S.XferCtx(C)
    doneS = receipts!(fs, "#idx\tstatus\tr\to\tn_cert\tn_certified\tc1_boxes\tc1_splits\tc1_s\tstagec\tlabels\tmax_s\toverruled\tstagec_s\tn_frame\trcol\trF\tc2\tnboxes\tkinds\tchecks\tsplits\tworst_T0\tworst_T1\tworst_T2\tcover_nodes\tc2_s\tmsg")
    if !isempty(imports)
        mine = split(bind, '\n')
        for d in split(imports, ',')
            theirs = split(read(joinpath(d, "BINDING.txt"), String), '\n')
            same = length(theirs) == length(mine) &&
                   all(a == b || (startswith(a, "options\t") && startswith(b, "options\t") &&
                                  replace(a, r" shard=\S+" => "") == replace(b, r" shard=\S+" => "")) for (a, b) in zip(mine, theirs))
            same || error("--import: $d was made with a different certificate, checker, environment or options")
            n_in = 0
            for l in readlines(joinpath(d, "seeds.tsv"))
                startswith(l, "#") && continue
                i = parse(Int, split(l, '\t')[1])
                (i in sel && !haskey(doneS, i)) || continue
                p = split(l, '\t')
                doneS[i] = (p[2] == "PASS", String(p[end])); n_in += 1
                open(fs, "a") do io; println(io, l); end
            end
            println("  imported $n_in seed receipts from $d")
        end
    end
    todo = [i for i in sel if !haskey(doneS, i)]
    t0 = time(); ndone = Threads.Atomic{Int}(0)
    Threads.@threads :greedy for i in todo
        ok, msg, line = try
            seed_line(C.seeds[i+1], X, rec_ok, fast, c1depth, splitdepth)
        catch err
            m = "exception: " * clean(sprint(showerror, err))[1:min(end, 300)]
            (false, m, @sprintf("%d\tFAIL%s\t%s", i, repeat("\t", 26), m))
        end
        lock(lk) do
            doneS[i] = (ok, msg)
            open(fs, "a") do io; println(io, line); end
            k = Threads.atomic_add!(ndone, 1) + 1
            if k % 10 == 0 || k == length(todo)
                @printf("  seeds %d/%d  (%.0f s)\n", k, length(todo), time() - t0); flush(stdout)
            end
        end
    end
    seed_ok(i) = get(doneS, i, (false, ""))[1]
    if shard_m > 1
        np = count(seed_ok, sel)
        open(joinpath(outdir, "RESULT.txt"), "w") do io
            println(io, "Shard $shard of the independent seed-atlas replay, certificate: ", cert)
            println(io, @sprintf("SHARD: %d / %d seed balls PASS (seed balls i with i mod %d = %d). Not a verdict: finish with --import.",
                                 np, length(sel), shard_m, shard_k))
        end
        print(read(joinpath(outdir, "RESULT.txt"), String))
        return np == length(sel)
    end

    # ---------------- records: C2 (shell boxes: rec and T1')
    doneB = receipts!(frb, "#idx\tstatus\tnboxes\tkinds\tchecks\tsplits\tworst_rec\tworst_T1p\tcover_nodes\tseconds\tmsg")
    t0 = time()
    Threads.@threads :greedy for i in 0:nr-1
        haskey(doneB, i) && continue
        ok, msg, line = try
            nb = nbs[i]
            if !nb.ok
                (false, "no normal bound", @sprintf("%d\tFAIL\t\t\t\t\t\t\t\t\t%s", i, "no normal bound"))
            else
                c2 = S.check_c2_record(C.records[i+1], nb, X, rec_ok; split_depth=splitdepth)
                (c2.ok, c2.msg, @sprintf("%d\t%s\t%d\t%s\t%d\t%d\t%.6g\t%.6g\t%d\t%.2f\t%s", i, c2.ok ? "PASS" : "FAIL", c2.nbox,
                                       kindstr(c2.counts), c2.nchecks, c2.nsplit, c2.worst[:rec], c2.worst[:T1p], c2.cover_nodes,
                                       c2.seconds, clean(c2.msg)))
            end
        catch err
            m = "exception: " * clean(sprint(showerror, err))[1:min(end, 300)]
            (false, m, @sprintf("%d\tFAIL\t\t\t\t\t\t\t\t\t%s", i, m))
        end
        lock(lk) do
            doneB[i] = (ok, msg)
            open(frb, "a") do io; println(io, line); end
        end
    end
    @printf("  records C2: %d / %d PASS (%.0f s)\n", count(i -> get(doneB, i, (false,))[1], 0:nr-1), nr, time() - t0)

    # ---------------- F6 nonemptiness: F6's record contains F6
    ne = []
    if 0 <= C.fourier < nr && rec_ok(C.fourier)
        ne = IA.nonempty_F6([r.rec for r in C.records], [C.fourier + 1])
    end
    f6ok = any(x -> x[4], ne)

    # ---------------- Tao's record
    tao = nothing
    if C.tao !== nothing
        tao = try
            S.check_tao(C.tao[1], C.tao[2]; replay=!fast)
        catch err
            S.TaoResult(false, "exception: " * clean(sprint(showerror, err))[1:min(end, 300)], NaN, NaN, NaN, nothing)
        end
        @printf("  Tao: %s (sigma >= %.6g, n <= %.3g)\n", tao.ok ? "PASS" : "FAIL: " * tao.msg, tao.sigma, tao.n)
    end
    taook = tao !== nothing && tao.ok

    # ---------------- report
    seedpass = count(seed_ok, sel)
    recpass = count(i -> rec_ok(i) && get(doneB, i, (false,))[1], 0:nr-1)
    allchecked = length(sel) == ns
    # targets named by the checked seeds and records
    tseeds = Set{Int}(); trecs = Set{Int}()
    for i in sel, x in C.seeds[i+1].groups
        x.kind in (:T0, :T1) ? push!(tseeds, x.target) : push!(trecs, x.target)
    end
    for r in C.records, x in r.groups
        x.kind == :T1p ? push!(tseeds, x.target) : push!(trecs, x.target)
    end
    passed = seedpass == length(sel) && recpass == nr && (tao === nothing || taook)
    complete = passed && allchecked && f6ok && taook
    stats = [x for x in (split(l, '\t') for l in readlines(fs) if !startswith(l, "#")) if length(x) >= 28 && x[9] != "" && x[14] != ""]
    open(joinpath(outdir, "RESULT.txt"), "w") do io
        println(io, "Independent seed-atlas replay (proof/independent_seed), certificate: ", cert)
        println(io, "Bound inputs (BINDING.txt): certificate sha256 ", split(split(bind, '\n')[2], '\t')[2])
        println(io, "Options: ", opts)
        println(io, "Stage C rejections: ", fast ? "float with the existing margin (--fast)" : "float, each re-decided in interval arithmetic")
        println(io)
        println(io, "Seed balls (PASS = C1 bound <= n, Stage C on P + U w + nu, and C2: sphere covered, every transfer certified):")
        for i in sel
            st = get(doneS, i, (false, "not run"))
            println(io, @sprintf("seed %6d  %s  %s", i, st[1] ? "PASS" : "FAIL", st[1] ? "" : st[2]))
        end
        println(io)
        println(io, "Records (PASS = Step 3 [normal bound, Stage C] and C2 [shell covered, every box certified]):")
        for i in 0:nr-1
            a = get(done3, i, (false, "not run")); b = get(doneB, i, (false, "not run"))
            println(io, @sprintf("record %4d  %s  %s", i, a[1] && b[1] ? "PASS" : "FAIL",
                                 a[1] ? (b[1] ? "" : "C2: " * b[2]) : "Step 3: " * a[2]))
        end
        println(io)
        println(io, "Nonemptiness (F6 in the record fourier_record = $(C.fourier)):")
        for x in ne
            println(io, @sprintf("  record %d: ||h(A F6 + 2 pi N - P_t)|| <= %.9f vs R_t = %.6g  %s", x[1], x[2], x[3], x[4] ? "CERTIFIED" : "not certified"))
        end
        isempty(ne) && println(io, "  not certified (no fourier_record, or it did not pass Step 3, or F6 is not inside it)")
        if tao === nothing
            println(io, "Tao's record: none in the certificate.")
        else
            println(io, @sprintf("Tao's record (R = %.6g, label radius %.6g): %s  (sigma >= %.10g, e0 <= %.3g, n <= %.3g, isolation L R < sigma)",
                                 C.tao[1], C.tao[2], tao.ok ? "PASS" : "FAIL: " * tao.msg, tao.sigma, tao.e0, tao.n))
        end
        println(io)
        if !isempty(stats)
            c1s = [parse(Float64, x[9]) for x in stats]; scs = [parse(Float64, x[14]) for x in stats]; c2s = [parse(Float64, x[27]) for x in stats]
            ratio = [parse(Float64, x[6]) / parse(Float64, x[5]) for x in stats if x[6] != "Inf"]
            println(io, @sprintf("Timing per seed ball (s): C1 mean %.2f max %.2f; Stage C mean %.2f max %.2f; C2 mean %.2f max %.2f",
                                 sum(c1s) / length(c1s), maximum(c1s), sum(scs) / length(scs), maximum(scs), sum(c2s) / length(c2s), maximum(c2s)))
            isempty(ratio) || println(io, @sprintf("C1: certified bound / certificate n: max %.4f, mean %.4f", maximum(ratio), sum(ratio) / length(ratio)))
        end
        println(io, "Targets named: $(length(tseeds)) seed balls, $(length(trecs)) records.",
                allchecked ? "" : "  (Only $(length(sel)) of $ns seed balls checked; targets outside them are not checked here.)")
        println(io)
        println(io, @sprintf("SUMMARY: %d / %d seed balls PASS.  %d / %d records PASS.  F6 nonemptiness: %s.  Tao: %s.",
                             seedpass, length(sel), recpass, nr, f6ok ? "CERTIFIED" : "NOT certified",
                             tao === nothing ? "absent" : tao.ok ? "PASS" : "FAIL"))
        if complete
            println(io, "VERDICT: the certificate is complete and every check passed (C1, Stage C, C2 for every seed ball; Step 3 and C2 for every record; F6; Tao).")
        elseif partial && passed
            println(io, "VERDICT (partial): every checked object passed; this is not a complete-atlas certificate.")
        else
            println(io, "VERDICT: not a complete certificate (see above).",
                    allchecked ? "" : "  Only $(length(sel)) of $ns seed balls were checked.")
        end
    end
    print(read(joinpath(outdir, "RESULT.txt"), String))
    complete || (partial && passed)
end

exit(main(ARGS) ? 0 : 1)
