# Claim C1 for one seed ball (SPEC §2): for every w with ||w|| <= r, theta = theta0 + Mth w lies in Omega and some
# representative of f_o(theta) has phases Q with ||Q - P - U w - 2 pi N|| <= n.
#
# The ball is covered by boxes {wc + u : |u_j| <= h}.  The first level is the certificate's k^4 partition of
# [-r, r]^4 (centres -r + (2i+1) r/k enclosed in intervals, h >= r/k); a box whose bound exceeds n, or whose
# certification fails, is split into its 16 halves, down to `maxdepth` extra levels.  A box is dropped if it misses
# the ball (certified in intervals).  On each kept box the residual Q - P - U (wc + u) is a vector of second-order
# models (box_map), bounded by vecnorm_sup.  The certified bound is the maximum over the accepted boxes; the ball
# passes iff every box is accepted with bound <= n.

struct C1Result
    ok::Bool
    msg::String
    bound::Float64        # max over accepted boxes (when ok: the certified n)
    nleaf::Int            # accepted boxes
    nvisit::Int           # boxes evaluated
    nsplit::Int
    maxdepth::Int
    seconds::Float64
end

"""Does the box {wc + u : |u_j| <= h} (wc an interval vector) certainly miss the ball ||w|| <= r?"""
function misses_ball(wc::NTuple{4,I64}, h::Float64, r::Float64)
    s = iv(0.0)
    for j in 1:4
        d = max(iv(0.0), iv(mig(wc[j])) - iv(h))
        s += d^2
    end
    inf(s) > sup(iv(r)^2)
end

"""The residual Q + 2 pi N - P - U (wc + u) as 36 models; N is chosen entrywise (any integers are valid)."""
function residual_models(Q::Vector{TM{I64}}, P::Vector{Float64}, U::Matrix{Float64}, wc::NTuple{4,I64})
    res = Vector{TM{I64}}(undef, 36)
    for e in 1:36
        t = Q[e]
        uw = sum(iv(U[e, j]) * wc[j] for j in 1:4)
        N = round((P[e] + mid(uw) - mid(t.c)) / (2π))
        c = t.c + TWOPI_I * iv(N) - iv(P[e]) - uw
        res[e] = TM{I64}(c, ntuple(j -> t.g[j] - iv(U[e, j]), 4), t.q, t.r)
    end
    res
end

"""Float side predictors at w = 0 over [-r, r]^4 (guesses for the first-level boxes)."""
function root_predictor(s::Seed)
    gh0, gv0 = guess_from_P(s.P)
    th = collect(s.theta0)
    ghf, gvf = gammas_f(th)
    phc = side_newton_f(gh0, ghf); pvc = side_newton_f(gv0, gvf)
    (phc === nothing || pvc === nothing) && return nothing
    D = Dom((s.r, s.r, s.r, s.r))
    thf = theta_models_f(s.theta0, s.Mth, (0.0, 0.0, 0.0, 0.0))
    ghF, gvF = gammas(thf, D)
    phF = side_predictor_f(phc, ghF, inv(sideJ_f(phc)), D)
    pvF = side_predictor_f(pvc, gvF, inv(sideJ_f(pvc)), D)
    BoxMap(true, "root", TM{I64}[], phF, pvF, (0.0, 0.0, 0.0, 0.0))
end

"""The first-level boxes of the k^4 partition of [-r, r]^4: (interval centre, half-width)."""
function first_level(r::Float64, k::Int)
    rI = iv(r); kI = iv(Float64(k))
    cen = [-rI + iv(Float64(2i + 1)) * rI / kI for i in 0:k-1]
    h = sup(rI / kI)
    [((cen[a], cen[b], cen[c], cen[d]), h) for a in 1:k for b in 1:k for c in 1:k for d in 1:k]
end

children(wc::NTuple{4,I64}, h::Float64) =
    [(ntuple(j -> wc[j] + ((ch >> (j - 1)) & 1 == 1 ? iv(h / 2) : -iv(h / 2)), 4), h / 2) for ch in 0:15]

function check_c1(s::Seed; maxdepth::Int=3)
    t0 = time()
    root = root_predictor(s)
    root === nothing && return C1Result(false, "no float side solution at theta0", Inf, 0, 0, 0, 0, time() - t0)
    stack = [(wc, h, 0, root) for (wc, h) in first_level(s.r, s.k)]
    worst = 0.0; nleaf = 0; nvisit = 0; nsplit = 0; md = 0
    while !isempty(stack)
        wc, h, depth, parent = pop!(stack)
        misses_ball(wc, h, s.r) && continue
        nvisit += 1; md = max(md, depth)
        wcm = ntuple(j -> mid(wc[j]), 4)
        gh, gv = guess_at(parent, wcm)
        bm = box_map(s.theta0, s.Mth, s.o, s.P, wc, (h, h, h, h), gh, gv)
        why = bm.why
        if bm.ok
            b = vecnorm_sup(residual_models(bm.Q, s.P, s.U, wc), Dom((h, h, h, h)))
            if b <= s.n
                worst = max(worst, b); nleaf += 1
                continue
            end
            why = @sprintf("bound %.6g > n = %.6g", b, s.n)
        end
        if depth < maxdepth
            nsplit += 1
            nxt = bm.ok ? bm : parent
            for (wc2, h2) in children(wc, h)
                push!(stack, (wc2, h2, depth + 1, nxt))
            end
        else
            msg = @sprintf("box at depth %d, centre %s, half-width %.4g: %s", depth, string(round.(wcm, sigdigits=6)), h, why)
            return C1Result(false, msg, Inf, nleaf, nvisit, nsplit, md, time() - t0)
        end
    end
    C1Result(true, "ok", worst, nleaf, nvisit, nsplit, md, time() - t0)
end
