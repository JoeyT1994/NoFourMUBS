# Julia cap verifier on return ZC's sample seeds, with tampered controls.
#   julia --project=../independent/jlenv caps_test.jl CERT.txt CAPSDIR    (CAPSDIR/seed_<j>.txt from caps_to_txt.py)
using IntervalArithmetic, LinearAlgebra, Printf
include(joinpath(@__DIR__, "src", "IndepSeed.jl"))
using .IndepSeed
const S = IndepSeed
C = S.read_seed_certificate(ARGS[1]); X = S.XferCtx(C)
for j in (6, 37, 96)
    caps = S.read_caps(readlines(joinpath(ARGS[2], "seed_$j.txt")))
    t = time(); ok, msg, n = S.HP.check_seed_caps(C.seeds[j+1], X, caps)
    @printf("%d %s %s %d caps %.1fs\n", j, ok ? "PASS" : "FAIL", msg, n, time() - t)
    bad = deepcopy(caps); bad["caps"][1]["h"] = repr(parse(Float64, bad["caps"][1]["h"]) / 2)   # enlarged cap (shortest decimal repr is exact)
    ok2, msg2, _ = try S.HP.check_seed_caps(C.seeds[j+1], X, bad) catch e; (false, sprint(showerror, e)[1:min(end, 80)], 0) end
    println(j, ok2 ? " enlarged cap ACCEPTED (bad)" : " enlarged cap rejected: " * msg2)
    bad = deepcopy(caps); bad["caps"] = bad["caps"][2:end]
    ok3, msg3, _ = try S.HP.check_seed_caps(C.seeds[j+1], X, bad) catch e; (false, sprint(showerror, e)[1:min(end, 80)], 0) end
    println(j, ok3 ? " dropped cap ACCEPTED (bad)" : " dropped cap rejected: " * msg3)
end
