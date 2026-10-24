# Negative tests: corrupted seed balls, transfers and record boxes must be rejected; a few harmless changes (positive
# controls) must still pass.
#
#   julia --startup-file=no -t 4 --project=../independent/jlenv tests/negative.jl CERT.txt
#
# CERT.txt is the converted test certificate (tests/data/seed_test_certificate.json.gz through convert_seed.py), whose
# seed 0 passes C1, Stage C and C2 (T0 -> seed 1, T1 -> seed 2, T2 -> record 0) and whose record 1 passes Step 3 and
# C2 (T1' -> seed 1).  Each case changes one thing and runs the check it concerns.
using IntervalArithmetic, LinearAlgebra, Printf, Random
include(joinpath(@__DIR__, "..", "src", "IndepSeed.jl"))
using .IndepSeed
const S = IndepSeed
const IA = S.IA

C0 = S.read_seed_certificate(ARGS[1])

"""A copy of a struct with some fields replaced."""
function with(x::T; kw...) where {T}
    vals = [haskey(kw, f) ? kw[f] : getfield(x, f) for f in fieldnames(T)]
    T(vals...)
end
setseed(C, i, s) = S.SeedCert([j == i ? s : C.seeds[j] for j in eachindex(C.seeds)], C.records, C.fourier)
setrec(C, i, r) = S.SeedCert(C.seeds, [j == i ? r : C.records[j] for j in eachindex(C.records)], C.fourier)

const NB = Dict{Int,IA.NormalBound}()
nbof(C, i) = IA.normal_bound(C.records[i+1].rec)
rec_ok_all(t) = true            # Step 3 of records 0 and 1 is checked separately below

function runc1(C; maxdepth=3)
    r = S.check_c1(C.seeds[1]; maxdepth=maxdepth)
    (r.ok, r.ok ? @sprintf("bound %.6g <= n %.6g", r.bound, C.seeds[1].n) : r.msg)
end
function runsc(C)
    r, _ = S.seed_stage_c(C.seeds[1])
    (r.ok, r.ok ? "ok" : r.msg)
end
function runc2(C)
    r = S.check_c2_seed(C.seeds[1], S.XferCtx(C), rec_ok_all)
    (r.ok, r.msg)
end
function runrec(C, i)
    nb = nbof(C, i)
    nb.ok || return (false, "normal bound: " * nb.msg)
    r = S.check_c2_record(C.records[i+1], nb, S.XferCtx(C), rec_ok_all)
    (r.ok, r.msg)
end
function runrec3(C, i)
    nb = nbof(C, i)
    nb.ok || return (false, "normal bound: " * nb.msg)
    sc = IA.stage_c(C.records[i+1].rec, nb; replay=true)
    (sc.ok, sc.ok ? "ok" : sc.msg)
end

s0 = C0.seeds[1]
c1 = S.check_c1(s0)
nc = c1.bound
x0 = s0.xfers
iT0 = findfirst(x -> x.kind == :T0, x0); iT1 = findfirst(x -> x.kind == :T1, x0); iT2 = findfirst(x -> x.kind == :T2, x0)
setx(s, i, x) = with(s; xfers=[j == i ? x : s.xfers[j] for j in eachindex(s.xfers)])
dropx(s, i) = with(s; xfers=[s.xfers[j] for j in eachindex(s.xfers) if j != i])
bumpP(s, e, d) = with(s; P=[k == e ? s.P[k] + d : s.P[k] for k in 1:36])
bumpU(s, e, j, d) = with(s; U=[(a, b) == (e, j) ? s.U[a, b] + d : s.U[a, b] for a in 1:36, b in 1:4])
r1 = C0.records[2]
setbx(r, i, x) = S.SRecord(r.rec, [j == i ? x : r.xfers[j] for j in eachindex(r.xfers)])
withR(r, R) = S.SRecord(IA.Rec(r.rec.idx, r.rec.closed, R, r.rec.lr, r.rec.P, r.rec.Tint, r.rec.targets), r.xfers)
withPhi(r, a, b, d) = S.SRecord(IA.Rec(r.rec.idx, r.rec.closed, r.rec.R, r.rec.lr,
                                       [(i, j) == (a, b) ? r.rec.P[i, j] + d : r.rec.P[i, j] for i in 1:6, j in 1:6],
                                       r.rec.Tint, r.rec.targets), r.xfers)
swaprows(x::S.Xfer) = with(x; rows=(x.rows[1], x.rows[3], x.rows[2]))
swaprp(x::S.Xfer) = with(x; rp=[x.rp[2], x.rp[1], x.rp[3:6]...])
seed1_flipped = with(C0.seeds[2]; o=-C0.seeds[2].o)

"""Float residual ||Q(theta(w)) - P - U w|| (best winding) at a point w: sides by Newton from the root predictor,
D = -C E* (B*)^-1.  A lower bound for the true sup, so any n below it must be rejected."""
function residual_f(s, root, w)
    th = S.theta_f(s.theta0, s.Mth, w)
    gh, gv = S.guess_at(root, w)
    ghf, gvf = S.gammas_f(th)
    ph = S.side_newton_f(gh, ghf); pv = S.side_newton_f(gv, gvf)
    a, b, c, d = cis.(th)
    E = ComplexF64[1 1 1; 1 a b; 1 c d]
    B = ComplexF64[1 1 1; cis(ph[1]) cis(ph[2]) cis(ph[3]); cis(ph[4]) cis(ph[5]) cis(ph[6])]
    Cm = ComplexF64[1 cis(pv[1]) cis(pv[4]); 1 cis(pv[2]) cis(pv[5]); 1 cis(pv[3]) cis(pv[6])]
    Dm = -Cm * E' * inv(Matrix(B'))
    H = [E B; Cm Dm]
    x = [angle(H[i, j]) for i in 1:6 for j in 1:6] .- s.P .- s.U * collect(w)
    sqrt(sum(abs2, x .- 2π .* round.(x ./ (2π))))
end
root0 = S.root_predictor(s0)
function sampled_residual(s, root, r; npts=400)
    rng = MersenneTwister(5); m = 0.0
    for _ in 1:npts
        v = randn(rng, 4); w = Tuple(r .* v ./ norm(v))
        m = max(m, residual_f(s, root, w))
    end
    m
end
sampled = sampled_residual(s0, root0, s0.r)
sampled3 = sampled_residual(s0, root0, 3 * s0.r)
@printf("seed 0: certified C1 bound %.6g, n %.6g; sampled true residual on the sphere %.6g, on the sphere of radius 3r %.6g\n",
        nc, s0.n, sampled, sampled3)
sampled3 > s0.n || error("test premise: the residual at 3r should exceed n")

# the T2 transfer's own winding (as check_T2 chooses it), and a wrong one
function t2_winding(s, x)
    wc, h = S.box_dom(x.lo, x.hi)
    bm = S.box_map(s.theta0, s.Mth, s.o, s.P, wc, h, S.guess_at(root0, ntuple(j -> mid(wc[j]), 4))...)
    A = S.align_models(S.mat6(bm.Q), x.sign, x.tr, x.rp, x.cp)
    N, _ = IA.choose_winding([mid(A[a, b].c) - C0.records[x.target+1].rec.P[a, b] for a in 1:6, b in 1:6])
    [Int(N[a, b]) for a in 1:6 for b in 1:6]
end

# (name, expect_pass, thunk)
cases = Any[
    # positive controls
    ("control: the certificate as is (C1)", true, () -> runc1(C0)),
    ("control: the certificate as is (C2 of seed 0)", true, () -> runc2(C0)),
    ("control: the certificate as is (C2 of record 1)", true, () -> runrec(C0, 1)),
    ("control: P[2,4] + 2 pi (windings are free)", true, () -> runc1(setseed(C0, 1, bumpP(s0, 10, 2π)))),
    ("control: P[5,6] (a D entry) - 2 pi", true, () -> runc1(setseed(C0, 1, bumpP(s0, 30, -2π)))),
    ("control: k = 1 (coarser start; C1 refines)", true, () -> runc1(setseed(C0, 1, with(s0; k=1)))),
    ("control: n = certified bound (accepted with equality)", true, () -> runc1(setseed(C0, 1, with(s0; n=nc)))),
    # C1: corrupted n, r, P, U, theta0, orientation, Mth
    ("n = 0.99 x sampled true residual", false, () -> runc1(setseed(C0, 1, with(s0; n=0.99 * sampled)))),
    ("n = prevfloat(certified bound), no refinement", false, () -> runc1(setseed(C0, 1, with(s0; n=prevfloat(nc))); maxdepth=0)),
    ("control: r x 1.5 (n is loose enough; C1 refines)", true, () -> runc1(setseed(C0, 1, with(s0; r=1.5 * s0.r)))),
    ("r x 3 (sampled residual > n)", false, () -> runc1(setseed(C0, 1, with(s0; r=3 * s0.r)))),
    ("P[3,5] + 0.01 (a B entry)", false, () -> runc1(setseed(C0, 1, bumpP(s0, 17, 0.01)))),
    ("P[6,6] + 0.01 (a D entry)", false, () -> runc1(setseed(C0, 1, bumpP(s0, 36, 0.01)))),
    ("P[1,1] + 0.01 (gauge entry)", false, () -> runc1(setseed(C0, 1, bumpP(s0, 1, 0.01)))),
    ("U[20,2] + 0.1", false, () -> runc1(setseed(C0, 1, bumpU(s0, 20, 2, 0.1)))),
    ("U[8,1] (an E entry) + 0.1", false, () -> runc1(setseed(C0, 1, bumpU(s0, 8, 1, 0.1)))),
    ("theta0[3] + 1e-3", false, () -> runc1(setseed(C0, 1, with(s0; theta0=(s0.theta0[1], s0.theta0[2], s0.theta0[3] + 1e-3, s0.theta0[4]))))),
    ("orientation o flipped", false, () -> runc1(setseed(C0, 1, with(s0; o=-s0.o)))),
    ("Mth column 1 x 1.1", false, () -> runc1(setseed(C0, 1, with(s0; Mth=s0.Mth .* [1.1 1 1 1])))),
    # Stage C
    ("label_radius = 0.2", false, () -> runsc(setseed(C0, 1, with(s0; lr=0.2)))),
    # C2 of seed 0: targets and boxes
    ("T0 target -> seed 3 (another matrix)", false, () -> runc2(setseed(C0, 1, setx(s0, iT0, with(x0[iT0]; target=3))))),
    ("T0 target -> seed 99 (no such seed)", false, () -> runc2(setseed(C0, 1, setx(s0, iT0, with(x0[iT0]; target=99))))),
    ("T0 target with the other orientation", false, () -> runc2(setseed(setseed(C0, 1, s0), 2, seed1_flipped))),
    ("T0 target -> seed 0 itself (its own sphere)", false, () -> runc2(setseed(C0, 1, setx(s0, iT0, with(x0[iT0]; target=0))))),
    ("T1 corner rows i1, i2 swapped", false, () -> runc2(setseed(C0, 1, setx(s0, iT1, swaprows(x0[iT1]))))),
    ("T1 with g = conj", false, () -> runc2(setseed(C0, 1, setx(s0, iT1, with(x0[iT1]; g=:conj))))),
    ("T1 with g = T", false, () -> runc2(setseed(C0, 1, setx(s0, iT1, with(x0[iT1]; g=:T))))),
    ("T1 target -> seed 1 (wrong corner)", false, () -> runc2(setseed(C0, 1, setx(s0, iT1, with(x0[iT1]; target=1))))),
    ("T2 rows 1, 2 of the permutation swapped", false, () -> runc2(setseed(C0, 1, setx(s0, iT2, swaprp(x0[iT2]))))),
    ("T2 with sign -1 (conj)", false, () -> runc2(setseed(C0, 1, setx(s0, iT2, with(x0[iT2]; sign=-1))))),
    ("T2 target -> record 1 (R = 0.015)", false, () -> runc2(setseed(C0, 1, setx(s0, iT2, with(x0[iT2]; target=1))))),
    ("T2 target -> record 5 (no such record)", false, () -> runc2(setseed(C0, 1, setx(s0, iT2, with(x0[iT2]; target=5))))),
    ("control: T2 winding given (the checker's own choice)", true, () -> runc2(setseed(C0, 1, setx(s0, iT2, with(x0[iT2]; wind=t2_winding(s0, x0[iT2])))))),
    ("T2 winding given and wrong (one entry + 1)", false, () -> runc2(setseed(C0, 1, setx(s0, iT2, with(x0[iT2]; wind=t2_winding(s0, x0[iT2]) .+ [e == 8 ? 1 : 0 for e in 1:36]))))),
    ("one sphere box removed", false, () -> runc2(setseed(C0, 1, dropx(s0, 100)))),
    ("one sphere box shrunk to half", false, () -> runc2(setseed(C0, 1, setx(s0, 7, with(x0[7]; hi=ntuple(j -> (x0[7].lo[j] + x0[7].hi[j]) / 2, 4)))))),
    ("all sphere boxes shrunk by r/1000 (gaps between them)", false, () -> runc2(setseed(C0, 1, with(s0; xfers=[with(x; lo=x.lo .+ s0.r / 1000) for x in x0])))),
    ("sphere transfers of a larger r (r x 1.1)", false, () -> runc2(setseed(C0, 1, with(s0; r=1.1 * s0.r)))),
    # records
    ("record 1: T1' target -> seed 3", false, () -> runrec(setrec(C0, 2, setbx(r1, 5, with(r1.xfers[5]; target=3))), 1)),
    ("record 1: T1' target -> seed 2 (other corner)", false, () -> runrec(setrec(C0, 2, setbx(r1, 5, with(r1.xfers[5]; target=2))), 1)),
    ("record 1: T1' corner rows swapped", false, () -> runrec(setrec(C0, 2, setbx(r1, 5, swaprows(r1.xfers[5]))), 1)),
    ("record 1: T1' with g = conj", false, () -> runrec(setrec(C0, 2, setbx(r1, 5, with(r1.xfers[5]; g=:conj))), 1)),
    ("record 1: T1' target with the other orientation", false, () -> runrec(setseed(C0, 2, seed1_flipped), 1)),
    ("record 1: one shell box removed", false, () -> runrec(setrec(C0, 2, S.SRecord(r1.rec, r1.xfers[[1:299; 301:end]])), 1)),
    ("record 1: R x 2 (shell not covered)", false, () -> runrec(setrec(C0, 2, withR(r1, 2 * r1.rec.R)), 1)),
    ("record 1: phi[2,3] + 0.3 (Step 3)", false, () -> runrec3(setrec(C0, 2, withPhi(r1, 2, 3, 0.3)), 1)),
    ("record 0: no shell boxes", false, () -> runrec(C0, 0)),
]

npass = 0; nbad = 0
for (name, expect, f) in cases
    t = time()
    ok, msg = try
        f()
    catch err
        (false, "exception: " * sprint(showerror, err)[1:min(end, 200)])
    end
    good = ok == expect
    global npass += good; global nbad += !good
    @printf("%-58s %-8s %s  (%.1f s)  %s\n", name, ok ? "accepted" : "REJECTED", good ? "as expected" : "UNEXPECTED", time() - t,
            first(msg, 110))
end
println()
println(nbad == 0 ? "NEGATIVE TESTS PASS: $npass / $(length(cases)) cases as expected" :
        "NEGATIVE TESTS FAIL: $nbad of $(length(cases)) cases not as expected")
exit(nbad == 0 ? 0 : 1)
