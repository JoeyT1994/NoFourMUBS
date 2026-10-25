# Sampling checks of the Taylor-model calculus and of box_map (soundness sanity checks, not a proof).
#
#   julia --startup-file=no --project=../independent/jlenv tests/enclosure.jl CERT.txt [nseeds]
#
# (a) Model operations: for random models x, y (random coefficients and a random function inside the remainder), the
#     true values of x y, e^{ix}, x + y at random points u lie inside the result's polynomial part +- remainder.
# (b) box_map: on random boxes of each seed ball, the matched completion at random points (computed independently in
#     BigFloat: Newton on the side equations from the box's own float predictor, D = -C E* (B*)^-1) has phases inside
#     the 36 models (mod 2 pi), and the residual against P + U w is below the box's certified bound (in the seed's
#     gauge: ||hor(Q_g) - P - U w|| for "gauge": "hor", SPEC §11).
using IntervalArithmetic, LinearAlgebra, Printf, Random
include(joinpath(@__DIR__, "..", "src", "IndepSeed.jl"))
using .IndepSeed
const S = IndepSeed
const I64 = Interval{Float64}

nfail = 0
check(ok, what) = (ok || (global nfail += 1; println("FAIL: ", what)); ok)

# ---------------------------------------------------------------- (a)
rng = MersenneTwister(1)
randtm(rng, sc) = S.TM{I64}(interval(randn(rng)), ntuple(_ -> interval(sc * randn(rng)), 4),
                            ntuple(_ -> interval(sc^2 * randn(rng)), 10), sc^3 * rand(rng))
"""A point function inside model t: p(u) + e with |e| <= r (e fixed per draw)."""
pt(t, u, e) = S.peval(S.TM{Float64}(mid(t.c), mid.(t.g), mid.(t.q), 0.0), u) + e
inside(t::S.TM{I64}, u, val::Real) = (p = S.peval(t, interval.(u)); inf(p) - t.r - 1e-14 <= val <= sup(p) + t.r + 1e-14)
function inside(t::S.TM{Complex{I64}}, u, val::Complex)
    p = S.peval(t, [interval(x) for x in u])
    d = sqrt((interval(real(val)) - real(p))^2 + (interval(imag(val)) - imag(p))^2)
    inf(d) <= t.r + 1e-14
end
let nops = 0
    for trial in 1:300
        sc = 0.3 * rand(rng)
        h = ntuple(_ -> 0.5 * rand(rng), 4)
        D = S.Dom(h)
        x = randtm(rng, sc); y = randtm(rng, sc)
        xy = S.mul(x, y, D); ex = S.exp_i(x, D); sm = x + y
        for _ in 1:20
            u = ntuple(j -> h[j] * (2rand(rng) - 1), 4)
            ex_ = x.r * (2rand(rng) - 1); ey_ = y.r * (2rand(rng) - 1)
            xv = pt(x, u, ex_); yv = pt(y, u, ey_)
            check(inside(xy, u, xv * yv), "mul trial $trial")
            check(inside(ex, u, cis(xv)), "exp_i trial $trial")
            check(inside(sm, u, xv + yv), "add trial $trial")
            nops += 3
        end
    end
    println("(a) model operations: $nops point checks, failures so far: $nfail")
end

# ---------------------------------------------------------------- (b)
setprecision(BigFloat, 200)
function complete_big(theta, phh, phv)
    th = BigFloat.(theta)
    a, b, c, d = cis.(th)
    gh = (1 + conj(a) + conj(b), 1 + conj(c) + conj(d), 1 + a * conj(c) + b * conj(d))
    gv = (1 + conj(a) + conj(c), 1 + conj(b) + conj(d), 1 + a * conj(b) + c * conj(d))
    function newton(phi, gam)
        phi = BigFloat.(phi)
        for _ in 1:60
            F = S.sideF_f(phi, gam)
            maximum(abs, F) < big(10)^-50 && break
            phi = phi - S.sideJ_f(phi) \ F
        end
        phi
    end
    ph = newton(phh, gh); pv = newton(phv, gv)
    E = [1 1 1; 1 a b; 1 c d]
    B = [1 1 1; cis(ph[1]) cis(ph[2]) cis(ph[3]); cis(ph[4]) cis(ph[5]) cis(ph[6])]
    C = [1 cis(pv[1]) cis(pv[4]); 1 cis(pv[2]) cis(pv[5]); 1 cis(pv[3]) cis(pv[6])]
    Dm = -C * E' * inv(Matrix(B'))
    H = [E B; C Dm]
    [angle(H[a, b]) for a in 1:6 for b in 1:6], maximum(abs.(abs.(Dm) .- 1))
end

C = S.read_seed_certificate(ARGS[1])
nseeds = length(ARGS) >= 2 ? parse(Int, ARGS[2]) : length(C.seeds)
for s in C.seeds[1:min(end, nseeds)]
    root = S.root_predictor(s)
    npts = 0; worst_ratio = 0.0
    for trial in 1:12
        # a random box inside the cube, of a random size
        h = s.r / (2 + 4rand(rng))
        wcm = ntuple(_ -> (s.r - h) * (2rand(rng) - 1) * 0.6, 4)
        wc = ntuple(j -> interval(wcm[j]), 4)
        gh, gv = S.guess_at(root, wcm)
        bm = S.box_map(s.theta0, s.Mth, s.o, S.pg(s), wc, (h, h, h, h), gh, gv)
        bm.ok || (println("  seed $(s.idx) box $trial: $(bm.why) (skipped)"); continue)
        D = S.Dom((h, h, h, h))
        bnd = S.c1_box_bound(bm.Q, s, wc, D)
        for _ in 1:6
            u = ntuple(_ -> h * (2rand(rng) - 1), 4)
            w = wcm .+ u
            theta = S.theta_f(s.theta0, s.Mth, w)
            g1, g2 = S.guess_at(bm, w)
            Q, flat = complete_big(theta, g1, g2)
            check(flat < 1e-40, "seed $(s.idx): |D| != 1 in BigFloat")
            dev = 0.0
            for e in 1:36
                p = S.peval(bm.Q[e], interval.(u))
                m = mid(p)
                k = round((m - Float64(Q[e])) / (2π))
                v = Q[e] + 2 * big(π) * k
                ok = inf(p) - bm.Q[e].r - 1e-13 <= v <= sup(p) + bm.Q[e].r + 1e-13
                check(ok, @sprintf("seed %d box %d entry %d: true phase outside its model", s.idx, trial, e))
            end
            # residual against P + U w (any winding; in the hor gauge, ||hor(Q_g) - P - U w|| with Q_g nearest P_g + U_g w)
            r2 = 0.0
            if s.gauge == :hor
                ref = S.pg(s) .+ S.ug(s) * collect(w)
                q = [Float64(Q[e]) for e in 1:36]
                q .+= 2π .* round.((ref .- q) ./ (2π))
                X = permutedims(reshape(q, 6, 6))
                Xh = vec(permutedims(X .- sum(X; dims=2) ./ 6 .- sum(X; dims=1) ./ 6 .+ sum(X) / 36))
                r2 = sum(abs2, Xh .- s.P .- s.U * collect(w))
            else
                for e in 1:36
                    x = Float64(Q[e]) - s.P[e] - sum(s.U[e, j] * w[j] for j in 1:4)
                    x -= 2π * round(x / (2π)); r2 += x^2
                end
            end
            check(sqrt(r2) <= bnd, "seed $(s.idx) box $trial: residual above the box bound")
            worst_ratio = max(worst_ratio, sqrt(r2) / bnd)
            npts += 1
        end
    end
    @printf("(b) seed %d: %d points inside their models; max residual / box bound = %.3f\n", s.idx, npts, worst_ratio)
end
# ---------------------------------------------------------------- (c)
for sr in C.records
    any(g -> g.kind == :T1p, sr.groups) || continue
    nb = S.IA.normal_bound(sr.rec)
    nb.ok || continue
    rc = S.RecCtx(sr, nb)
    rc.nc === nothing && (check(false, "record $(sr.rec.idx): no normal coordinates"); continue)
    Mf = rc.nc.Mf; Tf = mid.(rc.Ti)
    Pv = [sr.rec.P[a, b] for a in 1:6 for b in 1:6]
    boxes = [b for g in sr.groups if g.kind == :T1p for b in g.boxes]
    npts = 0; worst = 0.0; worstb = 0.0
    for b in boxes[1:max(1, length(boxes) ÷ 6):end][1:min(end, 6)]
        lo, hi = S.ubox(b)
        zc, h = S.scaled_dom(lo, hi, sr.eta_scale)
        tb = S.normal_tube(sr.rec.P, rc.Ti, rc.nc, zc, h)
        check(tb.ok, "record $(sr.rec.idx) box $b: " * tb.why)
        tb.ok || continue
        zcm = [mid(z) for z in zc]
        for _ in 1:5
            u = ntuple(j -> h[j] * (2rand(rng) - 1), 4)
            xp = [Float64(mid(S.peval(t, [interval(x) for x in u]))) for t in tb.x]
            # true point: Gauss-Newton in BigFloat on Phi(P + T eta + M x) = 0, from the predictor
            eta = big.(zcm .+ collect(u))
            x = big.(xp)
            for _ in 1:40
                Q = big.(Pv) .+ big.(Tf) * eta .+ big.(Mf) * x
                F = S.Phi_f(Q)
                maximum(abs, F) < big(10)^-40 && break
                x = x - pinv(Float64.(S.J_phases(Q) * big.(Mf))) * F
            end
            Q = big.(Pv) .+ big.(Tf) * eta .+ big.(Mf) * x
            check(maximum(abs, S.Phi_f(Q)) < 1e-30, "record $(sr.rec.idx): Gauss-Newton did not converge")
            d = Float64(sqrt(sum((x .- big.(xp)) .^ 2)))
            check(d <= tb.rho, @sprintf("record %d box %s: true normal coordinates %.3g from the predictor > rho %.3g", sr.rec.idx, b, d, tb.rho))
            worst = max(worst, d / tb.rho)
            # ||Y Phi|| along the predictor at u (floats) against beta
            Yf = pinv(S.J_phases(Pv .+ Tf * zcm .+ Mf * [Float64(mid(t.c)) for t in tb.x]) * Mf)
            bv = norm(Yf * S.Phi_f(Pv .+ Tf * Float64.(eta) .+ Mf * xp))
            worstb = max(worstb, bv / tb.beta)
            npts += 1
        end
    end
    @printf("(c) record %d: %d points; max distance to the predictor / rho = %.3f, max sampled ||Y Phi|| / beta = %.3f\n",
            sr.rec.idx, npts, worst, worstb)
end

println(nfail == 0 ? "ENCLOSURE CHECKS PASS" : "ENCLOSURE CHECKS: $nfail FAILURES")
exit(nfail == 0 ? 0 : 1)
