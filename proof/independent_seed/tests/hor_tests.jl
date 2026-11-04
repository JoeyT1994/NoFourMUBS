# Tests of the horizontal gauge (SPEC §11, "gauge": "hor"): corrupted horizontal-gauge seed balls must be rejected, a few
# harmless changes (positive controls) must still pass.
#
#   julia --startup-file=no -t 4 --project=../independent/jlenv tests/hor_tests.jl CERT.txt
#
# CERT.txt is the converted tests/data/hor_test_certificate.json.gz: seed 0 (gauge hor) passes C1, Stage C and C2
# (T0 -> seed 1, gauge hor; T1 -> seed 2, gauge dephased; T2 -> record 0).
using IntervalArithmetic, LinearAlgebra, Printf, Random
include(joinpath(@__DIR__, "..", "src", "IndepSeed.jl"))
using .IndepSeed
const S = IndepSeed

C0 = S.read_seed_certificate(ARGS[1])
s0 = C0.seeds[1]
s0.gauge == :hor && C0.seeds[2].gauge == :hor && C0.seeds[3].gauge == :dephased || error("test premise: the gauges")

function with(x::T; kw...) where {T}
    vals = [haskey(kw, f) ? kw[f] : getfield(x, f) for f in fieldnames(T)]
    T(vals...)
end
setseed(C, i, s) = S.SeedCert([j == i ? s : C.seeds[j] for j in eachindex(C.seeds)], C.records, C.fourier, C.tao)
rec_ok_all(t) = true

function runc1(C, i=1; maxdepth=4)
    r = S.check_c1(C.seeds[i]; maxdepth=maxdepth)
    (r.ok, r.ok ? @sprintf("bound %.6g <= n %.6g (%d boxes)", r.bound, C.seeds[i].n, r.nleaf) : r.msg)
end
runsc(C) = (r = first(S.seed_stage_c(C.seeds[1])); (r.ok, r.ok ? "ok" : r.msg))
runc2(C) = (r = S.check_c2_seed(C.seeds[1], S.XferCtx(C), rec_ok_all); (r.ok, r.msg))

"""hor(X) for a 36-vector (row means, column means and the total mean removed)."""
function hor_f(x::AbstractVector)
    X = permutedims(reshape(collect(x), 6, 6))
    vec(permutedims(X .- sum(X; dims=2) ./ 6 .- sum(X; dims=1) ./ 6 .+ sum(X) / 36))
end
"""Float residual ||hor(Q_g) - P - U w|| at a point w (Q_g: the dephased phases, nearest P_g + U_g w).  A lower bound
for the true sup, so any n below it must be rejected."""
function residual_hor_f(s, root, w)
    th = S.theta_f(s.theta0, s.Mth, w)
    gh, gv = S.guess_at(root, w)
    ph = S.side_newton_f(gh, first(S.gammas_f(th))); pv = S.side_newton_f(gv, last(S.gammas_f(th)))
    a, b, c, d = cis.(th)
    E = ComplexF64[1 1 1; 1 a b; 1 c d]
    B = ComplexF64[1 1 1; cis(ph[1]) cis(ph[2]) cis(ph[3]); cis(ph[4]) cis(ph[5]) cis(ph[6])]
    Cm = ComplexF64[1 cis(pv[1]) cis(pv[4]); 1 cis(pv[2]) cis(pv[5]); 1 cis(pv[3]) cis(pv[6])]
    Dm = -Cm * E' * inv(Matrix(B'))
    H = [E B; Cm Dm]
    q = [angle(H[i, j]) for i in 1:6 for j in 1:6]
    ref = S.pg(s) .+ S.ug(s) * collect(w)
    qg = q .+ 2π .* round.((ref .- q) ./ (2π))
    norm(hor_f(qg) .- s.P .- s.U * collect(w))
end
root0 = S.root_predictor(s0)
rng = MersenneTwister(7)
sampled = maximum(begin v = randn(rng, 4); residual_hor_f(s0, root0, Tuple(s0.r .* v ./ norm(v))) end for _ in 1:400)
c1 = S.check_c1(s0)
@printf("seed 0 (gauge hor): certified C1 bound %.6g, n %.6g, %d boxes (%.1f s); sampled ||hor(Q_g) - P - U w|| on the sphere %.6g\n",
        c1.bound, s0.n, c1.nleaf, c1.seconds, sampled)
ishor(x) = norm(hor_f(x) .- x) <= 1e-12 * max(1, norm(x))
(ishor(s0.P) && all(ishor(s0.U[:, j]) for j in 1:4)) || error("test premise: P and U of seed 0 are horizontal")

e(a, b) = [(i, j) == (a, b) ? 1.0 : 0.0 for i in 1:6 for j in 1:6]
rowc(a) = [i == a ? 1.0 : 0.0 for i in 1:6 for j in 1:6]
withP(s, d) = with(s; P=s.P .+ d)
withU1(s, d) = with(s; U=hcat(s.U[:, 1] .+ d, s.U[:, 2:4]))
gs0 = s0.groups
iT0 = findfirst(g -> g.kind == :T0, gs0)
setg(s, i, g) = with(s; groups=[j == i ? g : s.groups[j] for j in eachindex(s.groups)])
hdir = hor_f(e(3, 5)); hdir = hdir ./ norm(hdir)

# (name, expect_pass, thunk)
cases = Any[
    ("control: seed 0 as is (C1)", true, () -> runc1(C0)),
    ("control: seed 0 as is (Stage C, stored P and U)", true, () -> runsc(C0)),
    ("control: seed 0 as is (C2: T0 hor, T1 dephased, T2)", true, () -> runc2(C0)),
    ("control: P + 2 pi hor(e_34) (the horizontal lattice)", true, () -> runc1(setseed(C0, 1, withP(s0, 2π .* hor_f(e(3, 4)))))),
    ("control: n = certified bound", true, () -> runc1(setseed(C0, 1, with(s0; n=c1.bound)))),
    ("control: seed 2 (dephased gauge) C1", true, () -> runc1(C0, 3)),
    ("control: T1 target seed 2 flagged hor (transfers ignore it)", true,
     () -> runc2(setseed(C0, 3, with(C0.seeds[3]; gauge=:hor)))),
    ("n = 0.99 x sampled hor residual", false, () -> runc1(setseed(C0, 1, with(s0; n=0.99 * sampled)))),
    ("gauge flag dropped (hor P, U read as dephased)", false, () -> runc1(setseed(C0, 1, with(s0; gauge=:dephased)))),
    ("gauge flag added to seed 2 (dephased P, U read as hor)", false, () -> runc1(setseed(C0, 3, with(C0.seeds[3]; gauge=:hor)), 3)),
    ("P + 2 pi e_34 (not in the horizontal lattice)", false, () -> runc1(setseed(C0, 1, withP(s0, 2π .* e(3, 4))))),
    ("P + 0.01 on row 2 (gauge(P) unchanged)", false, () -> runc1(setseed(C0, 1, withP(s0, 0.01 .* rowc(2))))),
    ("P + 3n along hor(e_35)", false, () -> runc1(setseed(C0, 1, withP(s0, 3 * s0.n .* hdir)))),
    ("U[:,1] x 1.1", false, () -> runc1(setseed(C0, 1, with(s0; U=hcat(1.1 .* s0.U[:, 1], s0.U[:, 2:4]))))),
    ("U[:,1] + 0.1 on row 2 (gauge(U) unchanged)", false, () -> runc1(setseed(C0, 1, withU1(s0, 0.1 .* rowc(2))))),
    ("U[:,1] + 0.1 hor(e_35)", false, () -> runc1(setseed(C0, 1, withU1(s0, 0.1 .* hdir)))),
    ("theta0[2] + 0.01", false, () -> runc1(setseed(C0, 1, with(s0; theta0=Tuple(s0.theta0 .+ (0, 0.01, 0, 0)))))),
    ("T0 -> seed 1 with r_t x 0.5", false, () -> runc2(setseed(C0, 2, with(C0.seeds[2]; r=0.5 * C0.seeds[2].r)))),
    ("T0 group dropped (sphere not covered)", false,
     () -> runc2(setseed(C0, 1, with(s0; groups=[g for (j, g) in enumerate(gs0) if j != iT0])))),
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
println(nbad == 0 ? "HOR TESTS PASS: $npass / $(length(cases)) cases as expected" :
        "HOR TESTS FAIL: $nbad of $(length(cases)) cases not as expected")
exit(nbad == 0 ? 0 : 1)
