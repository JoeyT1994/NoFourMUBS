# Tests of the edge balls (SPEC §10): sampling checks of C1e against BigFloat, and negative tests.
#
#   julia --startup-file=no -t 4 --project=../independent/jlenv tests/edge_tests.jl EDGE_CERT.txt
#
# EDGE_CERT.txt is tests/data/edge_test_certificate.json.gz converted: edge ball 0 at F6 (r = 0.05); seed 0 (inside it,
# its whole sphere T3 into the edge ball); seed 1 (on its sphere; the target of the edge ball's few T1 boxes).
# (a) Sampling: on random C1e leaves, the augmented systems solved in BigFloat (Newton from the leaf's predictor) give
#     solutions within the enclosure, t = t', a Hadamard matrix (H H* = 6 I), and phases inside the 36 models.
# (a2) The chart derivative of SPEC §10.1 (D): finite differences of eta(H(p(w))) at random points of random C1e boxes lie
#      inside the certified enclosure of d eta/dw.
# (b) Negative tests: corrupted edge-ball data, T3 and T1 data, and (G)/(D) data (SPEC §10.1-10.2) must be rejected;
#     controls must pass.
using IntervalArithmetic, LinearAlgebra, Printf, Random
include(joinpath(@__DIR__, "..", "src", "IndepSeed.jl"))
using .IndepSeed
const S = IndepSeed
const IA = S.IA

nfail = 0
check(ok, what) = (ok || (global nfail += 1; println("FAIL: ", what)); ok)
C0 = S.read_seed_certificate(ARGS[1])
eb0 = C0.edges[1]
rng = MersenneTwister(3)

# ---------------------------------------------------------------- (a) sampling
setprecision(BigFloat, 200)
function aug_big(p, x0, vert)
    x = big.(x0)
    pb = big.(p)
    for _ in 1:60
        H, J, _, _ = S.aug_system([S.TM{BigFloat}(v, ntuple(_ -> big(0.0), 4), ntuple(_ -> big(0.0), 10), 0.0) for v in x],
                                  [S.TM{BigFloat}(v, ntuple(_ -> big(0.0), 4), ntuple(_ -> big(0.0), 10), 0.0) for v in pb],
                                  vert, S.Dom((0.0, 0.0, 0.0, 0.0)))
        F = [h.c for h in H]
        maximum(abs, F) < big(10)^-50 && break
        x = x - Float64.([j.c for j in J]) \ F
    end
    x
end
let c1 = S.check_c1e(eb0)
    check(c1.ok, "C1e of the test edge ball: " * c1.msg)
    npts = 0; worst = 0.0
    for lf in c1.leaves[randperm(rng, length(c1.leaves))[1:6]]
        h = lf.h
        em = S.edge_box_map(eb0, lf.wc, h, S.edge_guess(S.edge_root(eb0), lf.wc)...)
        check(em.ok, "edge box map")
        for _ in 1:4
            u = ntuple(j -> h[j] * (2rand(rng) - 1), 4)
            w = lf.wc .+ u
            p = eb0.Mth * collect(w)
            xh0 = [mid(S.peval(t, [interval(x) for x in u])) for t in lf.xh]
            xv0 = [mid(S.peval(t, [interval(x) for x in u])) for t in lf.xv]
            xh = aug_big(p, xh0, false); xv = aug_big(p, xv0, true)
            dh = maximum(abs.(xh .- big.(xh0))); dv = maximum(abs.(xv .- big.(xv0)))
            check(all(abs(xh[i] - xh0[i]) < lf.rho_h[i] for i in 1:7), "horizontal solution outside the tube")
            check(all(abs(xv[i] - xv0[i]) < lf.rho_v[i] for i in 1:7), "vertical solution outside the tube")
            check(abs(xh[1] - xv[1]) < 1e-40, "t != t'")
            # the completion in BigFloat
            th = [big(k) * big(pi) / 3 for k in S.TH0K] .+ [p[1], p[2], p[3], xh[1]]
            ph = [big(k) * big(pi) / 3 for k in S.PH0K] .+ xh[2:7]; pv = [big(k) * big(pi) / 3 for k in S.PH0K] .+ xv[2:7]
            a, b, c, d = cis.(th)
            E = [1 1 1; 1 a b; 1 c d]
            B = [1 1 1; cis(ph[1]) cis(ph[2]) cis(ph[3]); cis(ph[4]) cis(ph[5]) cis(ph[6])]
            Cm = [1 cis(pv[1]) cis(pv[4]); 1 cis(pv[2]) cis(pv[5]); 1 cis(pv[3]) cis(pv[6])]
            Dm = -Cm * E' * inv(Matrix(B'))
            Hm = [E B; Cm Dm]
            check(maximum(abs.(Hm * Hm' - 6I)) < 1e-30, "H(p) is not Hadamard in BigFloat")
            for e in 1:36
                q = S.peval(em.Q[e], [interval(x) for x in u])
                v = angle(Hm[(e-1)÷6+1, (e-1)%6+1])
                v += 2 * big(pi) * round((mid(q) - Float64(v)) / (2π))
                check(inf(q) - em.Q[e].r - 1e-13 <= v <= sup(q) + em.Q[e].r + 1e-13, "phase $e outside its model")
            end
            worst = max(worst, Float64(max(dh, dv)))
            npts += 1
        end
    end
    @printf("(a) edge ball: %d points; solutions within the tubes (max distance to the predictor %.2g), t = t', Hadamard, phases in their models\n", npts, worst)
end

LEAVES = S.check_c1e(eb0).leaves
# ---------------------------------------------------------------- (a2) the chart derivative of (D) against finite differences
function Qfloat(eb, root, w)
    p = eb.Mth * collect(w)
    gh, gv = S.edge_guess(root, w)
    xh, _ = S.aug_newton_f(p, gh, false); xv, _ = S.aug_newton_f(p, gv, true)
    th = [k * π / 3 for k in S.TH0K] .+ [p[1], p[2], p[3], xh[1]]
    ph = [k * π / 3 for k in S.PH0K] .+ xh[2:7]; pv = [k * π / 3 for k in S.PH0K] .+ xv[2:7]
    a, b, c, d = cis.(th)
    E = ComplexF64[1 1 1; 1 a b; 1 c d]
    B = ComplexF64[1 1 1; cis(ph[1]) cis(ph[2]) cis(ph[3]); cis(ph[4]) cis(ph[5]) cis(ph[6])]
    Cm = ComplexF64[1 cis(pv[1]) cis(pv[4]); 1 cis(pv[2]) cis(pv[5]); 1 cis(pv[3]) cis(pv[6])]
    Hm = [E B; Cm (-Cm * E' * inv(Matrix(B')))]
    [angle(Hm[i, j]) for i in 1:6, j in 1:6]
end
let gc = S.graph_ctx(eb0, eb0.graph), root = S.edge_root(eb0), npts = 0, worst = 0.0
    Tp = mid.(gc.Tplus)
    eta(w) = (X = S.galign(Qfloat(eb0, root, w), gc); X = X .- mid.(gc.PF); X .-= 2π .* round.(X ./ (2π));
              Tp * vec(permutedims(S.IA.hproj(X))))
    for lf in LEAVES[randperm(rng, length(LEAVES))[1:5]]
        em = S.edge_box_map(eb0, lf.wc, lf.h, S.edge_guess(root, lf.wc)...)
        A = S.edge_deta(eb0, em, lf.h, gc)
        for _ in 1:3
            w = lf.wc .+ ntuple(j -> lf.h[j] * (2rand(rng) - 1), 4)
            fd = zeros(4, 4)
            for j in 1:4
                e = ntuple(k -> k == j ? 1e-6 : 0.0, 4)
                fd[:, j] = (eta(w .+ e) .- eta(w .- e)) ./ 2e-6
            end
            ok = all(inf(A[i, j]) - 1e-6 <= fd[i, j] <= sup(A[i, j]) + 1e-6 for i in 1:4, j in 1:4)
            check(ok, "(D): finite-difference derivative outside the enclosure")
            worst = max(worst, maximum(abs.(fd .- mid.(A)) ./ max.(radius.(A), 1e-12)))
            npts += 1
        end
    end
    @printf("(a2) chart derivative: %d points inside the certified enclosures of d eta/dw (max |fd - mid| / radius = %.3f)\n", npts, worst)
end

# ---------------------------------------------------------------- (b) negative tests
function with(x::T; kw...) where {T}
    T([haskey(kw, f) ? kw[f] : getfield(x, f) for f in fieldnames(T)]...)
end
setedge(C, e) = S.SeedCert(C.seeds, C.records, C.fourier, C.tao, [e])
setseed(C, i, s) = S.SeedCert([j == i ? s : C.seeds[j] for j in eachindex(C.seeds)], C.records, C.fourier, C.tao, C.edges)
function c1e(C)
    r = S.check_c1e(C.edges[1])
    (r.ok, r.ok ? @sprintf("bound %.6g <= n %.6g", r.bound, C.edges[1].n) : r.msg)
end
function ctx(C)
    X = S.XferCtx(C)
    r = S.check_c1e(C.edges[1])
    r.ok && (X.edge_leaves[1] = r.leaves)
    X
end
function t3(C)
    r = S.check_c2_seed(C.seeds[1], ctx(C), t -> true)
    (r.ok, r.msg)
end
function t1e(C)
    r = S.check_c2_edge(C.edges[1], ctx(C), S.edge_root(C.edges[1]); cover=false)
    (r.ok, r.ok ? "ok ($(r.nbox) boxes, worst landing $(round(r.worst[:T1], sigdigits=4)))" : r.msg)
end
sampled = let m = 0.0
    root = S.edge_root(eb0)
    for _ in 1:200
        v = randn(rng, 4); w = Tuple(eb0.r .* v ./ norm(v))
        gh, gv = S.edge_guess(root, w)
        xh, _ = S.aug_newton_f(eb0.Mth * collect(w), gh, false); xv, _ = S.aug_newton_f(eb0.Mth * collect(w), gv, true)
        p = eb0.Mth * collect(w)
        th = [k * π / 3 for k in S.TH0K] .+ [p[1], p[2], p[3], xh[1]]
        ph = [k * π / 3 for k in S.PH0K] .+ xh[2:7]; pv = [k * π / 3 for k in S.PH0K] .+ xv[2:7]
        a, b, c, d = cis.(th)
        E = ComplexF64[1 1 1; 1 a b; 1 c d]
        B = ComplexF64[1 1 1; cis(ph[1]) cis(ph[2]) cis(ph[3]); cis(ph[4]) cis(ph[5]) cis(ph[6])]
        Cm = ComplexF64[1 cis(pv[1]) cis(pv[4]); 1 cis(pv[2]) cis(pv[5]); 1 cis(pv[3]) cis(pv[6])]
        Hm = [E B; Cm (-Cm * E' * inv(Matrix(B')))]
        x = [angle(Hm[i, j]) for i in 1:6 for j in 1:6] .- eb0.P .- eb0.U * collect(w)
        m = max(m, sqrt(sum(abs2, x .- 2π .* round.(x ./ (2π)))))
    end
    m
end
@printf("edge ball: certificate n %.6g; sampled true residual on its sphere %.6g\n", eb0.n, sampled)
gd0 = eb0.graph
function graphcase(gd)
    r = S.check_graph(eb0, LEAVES, gd)
    (r.ok, r.ok ? @sprintf("sigma(F6) >= %.5g, R_G = %.3g, sigma_D >= %.4g, image ||delta|| <= %.4g", r.sigma, r.RG, r.sigmaD, r.delta_sup) : r.msg)
end
# the atlas's F6 record (877), as written by tests/make_edge_cert.py into tests/data/f6_record_877.txt
R877 = let l = readlines(joinpath(@__DIR__, "data", "f6_record_877.txt"))
    phi = parse.(Float64, split(l[1])[2:end]); t = parse.(Int64, split(l[2])[2:end])
    (phi=phi, Tint=[t[4(e-1)+k] for e in 1:36, k in 1:4])
end
gwith(; kw...) = with(gd0; kw...)
g3 = C0.seeds[1].groups[1]
gT1 = eb0.groups[1]
function swap(v, i, j)
    w = copy(v)
    w[i] = v[j]; w[j] = v[i]
    w
end
cases = Any[
    ("control: the edge ball (C1e)", true, () -> c1e(C0)),
    ("control: seed 0's T3 sphere cover", true, () -> t3(C0)),
    ("control: the edge ball's T1 boxes (coverage not required)", true, () -> t1e(C0)),
    ("control: edge Stage C", true, () -> (r = S.seed_stage_c(eb0)[1]; (r.ok, r.msg))),
    ("edge n = 0.99 x sampled true residual", false, () -> c1e(setedge(C0, with(eb0; n=0.99 * sampled)))),
    ("edge r x 3", false, () -> c1e(setedge(C0, with(eb0; r=3 * eb0.r)))),
    ("edge P[4,5] (a D entry) + 0.01", false, () -> c1e(setedge(C0, with(eb0; P=[e == 23 ? eb0.P[e] + 0.01 : eb0.P[e] for e in 1:36])))),
    ("edge P[2,5] (a B entry) + 0.01", false, () -> c1e(setedge(C0, with(eb0; P=[e == 11 ? eb0.P[e] + 0.01 : eb0.P[e] for e in 1:36])))),
    ("edge U[9,4] + 0.1", false, () -> c1e(setedge(C0, with(eb0; U=[(a, b) == (9, 4) ? eb0.U[a, b] + 0.1 : eb0.U[a, b] for a in 1:36, b in 1:4])))),
    ("edge Mth row 4 (y) x 1.1", false, () -> c1e(setedge(C0, with(eb0; Mth=eb0.Mth .* [1, 1, 1, 1.1])))),
    ("edge Stage C at r = 0.2, n = 0.03 (SPEC §10: fails from 0.15)", false, () -> (r = S.seed_stage_c(with(eb0; r=0.2, n=0.03))[1]; (r.ok, r.msg))),
    ("T3 target -> edge ball 5", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; target=5)])))),
    ("T3 into an edge ball that fails C1e (n = sampled / 2)", false, () -> t3(setedge(C0, with(eb0; n=0.5 * sampled)))),
    ("T3 with g = conj", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; g=:conj)])))),
    ("T3 with g = T", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; g=:T)])))),
    ("T3 corner rows i1, i2 swapped", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; rows=swap(g3.rows, 2, 3))])))),
    ("T3 complement rows 1, 2 swapped (vertical side order)", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; rows=swap(g3.rows, 4, 5))])))),
    ("T3 complement columns 2, 3 swapped (horizontal side order)", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; cols=swap(g3.cols, 5, 6))])))),
    ("control: T3 complements sorted (they are increasing here)", true, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; rows=[g3.rows[1:3]; sort(g3.rows[4:6])], cols=[g3.cols[1:3]; sort(g3.cols[4:6])])])))),
    ("T3 wind + 1 in theta'_2", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; wind=[k == 2 ? w + 1 : w for (k, w) in enumerate(g3.wind)])])))),
    ("T3 wind_h + 1 in its 5th angle", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; wind=[k == 4 + 5 ? w + 1 : w for (k, w) in enumerate(g3.wind)])])))),
    ("T3 wind_v - 1 in its 2nd angle", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; wind=[k == 10 + 2 ? w - 1 : w for (k, w) in enumerate(g3.wind)])])))),
    ("control: T3 windings not stored (the checker chooses)", true, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; wind=Int[])])))),
    ("T3 sphere box removed", false, () -> t3(setseed(C0, 1, with(C0.seeds[1]; groups=[with(g3; boxes=g3.boxes[2:end])])))),
    ("edge T1 target -> seed 0", false, () -> t1e(setedge(C0, with(eb0; groups=[with(gT1; target=0)])))),
    ("edge T1 rows swapped", false, () -> t1e(setedge(C0, with(eb0; groups=[with(gT1; rows=swap(gT1.rows, 2, 3))])))),
    ("edge T1 with g = conj", false, () -> t1e(setedge(C0, with(eb0; groups=[with(gT1; g=:conj)])))),
    ("edge T1 winding + 1", false, () -> t1e(setedge(C0, with(eb0; groups=[with(gT1; wind=gT1.wind .+ [1, 0, 0, 0])])))),
    ("control: (G) and (D) as given (R_G = 0.45, sigma = 1.7, sigma_D = 0.15)", true, () -> graphcase(gd0)),
    ("control: (G) and (D) with the defaults", true, () -> graphcase(S.GraphData())),
    ("control: (G) and (D) at the atlas's F6 record (877: phi, Tint)", true, () -> graphcase(S.GraphData(0.45, NaN, NaN, R877.phi, R877.Tint))),
    ("(G) sigma = 1.8 (above sqrt 3)", false, () -> graphcase(gwith(sigma=1.8))),
    ("(G) R_G = 0.5 (L R_G >= sigma = 1.7)", false, () -> graphcase(gwith(R=0.5))),
    ("(G) R_G = 0.05 (the image is not inside)", false, () -> graphcase(gwith(R=0.05))),
    ("(D) sigma_D = 0.5", false, () -> graphcase(gwith(sigmaD=0.5))),
    ("control: centre 877 with phi[2,3] + 0.3 (the argument needs no Hadamard centre)", true, () -> graphcase(S.GraphData(0.45, NaN, NaN, [e == 9 ? R877.phi[e] + 0.3 : R877.phi[e] for e in 1:36], R877.Tint))),
    ("(G) that centre with R_G = 0.2 (the image reaches 0.27)", false, () -> graphcase(S.GraphData(0.2, NaN, NaN, [e == 9 ? R877.phi[e] + 0.3 : R877.phi[e] for e in 1:36], R877.Tint))),
    ("edge sphere not covered (the test ball's boxes)", false, () -> (r = S.check_c2_edge(eb0, ctx(C0), S.edge_root(eb0)); (r.ok, r.msg))),
]
nbad = 0
for (name, expect, f) in cases
    t = time()
    ok, msg = try
        f()
    catch err
        (false, "exception: " * sprint(showerror, err)[1:min(end, 200)])
    end
    good = ok == expect
    global nbad += !good
    @printf("%-62s %-8s %s  (%.1f s)  %s\n", name, ok ? "accepted" : "REJECTED", good ? "as expected" : "UNEXPECTED", time() - t, first(msg, 110))
end
println()
println(nbad == 0 && nfail == 0 ? "EDGE TESTS PASS: $(length(cases)) / $(length(cases)) cases as expected; sampling checks pass" :
        "EDGE TESTS FAIL: $nbad unexpected cases, $nfail sampling failures")
exit(nbad == 0 && nfail == 0 ? 0 : 1)
