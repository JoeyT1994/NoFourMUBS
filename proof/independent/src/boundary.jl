# Step 4: the boundary tree (Lemma 4.1 / COVERAGE.md) and nonemptiness (F6).
#
# The frame is used exactly (interval enclosure of the rational h(Tint/2^30)), so n' = n: no frame-rounding term.
# A float pass chooses what to try; every acceptance (off-ball, off-shell, transfer) is then re-decided in interval
# arithmetic, and only the interval decision counts.

"""A(X) = sign * (tr ? X^T : X)[rp, cp]   (entry (i,j) = sign * Y[rp[i], cp[j]])."""
function align(X::AbstractMatrix, sign::Int, tr::Bool, rp, cp)
    Y = tr ? permutedims(X) : X
    [sign * Y[rp[i], cp[j]] for i in 1:6, j in 1:6]
end

col6(v) = [v[6(j-1)+c] for j in 1:6, c in 1:6]          # 36-vector -> 6x6 (e = 6*row + col)
vec36(X) = [X[j, c] for j in 1:6 for c in 1:6]          # 6x6 -> 36-vector, row-major

hproj_f(X) = hproj(X)

"""Choose an integer winding N making ||h(D + 2 pi N)|| small (float heuristic; any integer N is valid).
D is dephased against a reference row r0 and column c0 (a row-plus-column pattern, which h kills), so that
D' = D - D[:,c0] - D[r0,:] + D[r0,c0] is close to 2 pi * integers when the two classes are close; N = round(-D'/2pi).
All 36 references are tried and the best is kept."""
function choose_winding(D::Matrix{Float64})
    best = zeros(6, 6); bestn = Inf
    for r0 in 1:6, c0 in 1:6
        Dp = [D[j, c] - D[j, c0] - D[r0, c] + D[r0, c0] for j in 1:6, c in 1:6]
        N = round.(-Dp ./ (2π))
        nrm = sqrt(sum(abs2, hproj_f(D .+ 2π .* N)))
        nrm < bestn && (bestn = nrm; best = N)
    end
    best, bestn
end

struct Transfer
    t::Int                    # target index (0-based)
    Rt::Float64
    cf::Vector{Float64}; Mf::Matrix{Float64}     # float centre / matrix (for choosing)
    ci::Vector{I64}; Mi::Matrix{I64}             # interval enclosures (for deciding)
    Mnorm::Float64                               # upper bound of ||M||_2
    Mrow::Vector{Float64}                        # upper bounds of sum_k |M_ek|
    Mrowf::Vector{Float64}
    cnorm::Float64
end

function make_transfer(src::Rec, Ti::Matrix{I64}, tg::Target, dst::Rec)
    AP = align(src.P, tg.sign, tg.tr, tg.rp, tg.cp)          # exact (sign flip and permutation)
    Df = AP .- dst.P
    N, _ = choose_winding(Df)
    Di = [iv(AP[j, c]) - iv(dst.P[j, c]) + TWOPI_I * iv(N[j, c]) for j in 1:6, c in 1:6]
    ci = vec36(hproj(Di))
    Mi = Matrix{I64}(undef, 36, 4)
    for k in 1:4
        Xk = col6(Ti[:, k])
        Mi[:, k] = vec36(hproj(align(Xk, tg.sign, tg.tr, tg.rp, tg.cp)))
    end
    Mnorm = opnorm_upper(Mi)
    Mrow = [sup(sum(abs(Mi[e, k]) for k in 1:4)) for e in 1:36]
    cf = mid.(ci)
    Transfer(tg.t, dst.R, cf, mid.(Mi), ci, Mi, Mnorm, Mrow, [sum(abs(mid(Mi[e, k])) for k in 1:4) for e in 1:36], sqrt(sum(abs2, cf)))
end

# sup over the box (centre z, half-side hs, half-diagonal 2 hs) of ||v0 + A(eta - z)||, two valid forms, min taken.
@inline function supnorm_f(v::Vector{Float64}, Anorm::Float64, Arow::Vector{Float64}, hs::Float64)
    nv = 0.0; comp = 0.0
    @inbounds for e in eachindex(v)
        nv += v[e]^2; comp += (abs(v[e]) + hs * Arow[e])^2
    end
    min(sqrt(nv) + Anorm * 2hs, sqrt(comp))
end
@inline function infnorm_f(v::Vector{Float64}, Anorm::Float64, Arow::Vector{Float64}, hs::Float64)
    nv = 0.0; comp = 0.0
    @inbounds for e in eachindex(v)
        nv += v[e]^2; comp += max(0.0, abs(v[e]) - hs * Arow[e])^2
    end
    max(sqrt(nv) - Anorm * 2hs, sqrt(comp))
end
function supnorm_i(v::Vector{I64}, Anorm::Float64, Arow::Vector{Float64}, hs::Float64)
    nv = iv(0.0); comp = iv(0.0); h = iv(hs)
    for e in eachindex(v)
        nv += v[e]^2; comp += (abs(v[e]) + h * iv(Arow[e]))^2
    end
    min(sup(sqrt(nv) + iv(Anorm) * 2h), sup(sqrt(comp)))
end
function infnorm_i(v::Vector{I64}, Anorm::Float64, Arow::Vector{Float64}, hs::Float64)
    nv = iv(0.0); comp = iv(0.0); h = iv(hs)
    for e in eachindex(v)
        nv += v[e]^2
        d = abs(v[e]) - h * iv(Arow[e])
        comp += max(iv(0.0), d)^2
    end
    max(inf(sqrt(nv) - iv(Anorm) * 2h), inf(sqrt(comp)))
end

struct BoundaryResult
    ok::Bool
    msg::String
    nboxes::Int; noffball::Int; noffshell::Int; ntransfer::Int; maxdepth::Int
    targets_used::Vector{Int}
    seconds::Float64
end

"""Boundary tree for record `src` with normal bound nb.  `tgt_ok(t)` says whether target t passed Step 3."""
function boundary_tree(src::Rec, nb::NormalBound, recs::Vector{Rec}, tgt_ok::Function; minfrac=64)
    t0 = time()
    Ti = frame_interval(nb.T36)
    Tf = mid.(Ti)
    Tnorm = sup(sqrt(iv(nb.lam_max)))
    Trow = [sup(sum(abs(Ti[e, k]) for k in 1:4)) for e in 1:36]
    Trowf = [sum(abs(Tf[e, k]) for k in 1:4) for e in 1:36]
    n = nb.n; R = src.R; rH = nb.rH
    trs = Transfer[]
    for tg in src.targets
        tgt_ok(tg.t) || continue
        push!(trs, make_transfer(src, Ti, tg, recs[tg.t+1]))
    end
    # cube [-rho, rho]^4 with rho >= rH a short dyadic, so that every box centre and half-side is an exact float
    rho = ceil(rH * 2.0^20) / 2.0^20
    @assert rho >= rH
    minside = R / minfrac * (1 - 1e-6)
    nboxes = noffball = noffshell = ntransfer = 0; maxdepth = 0
    used = Set{Int}()
    failmsg = ""
    v = zeros(36); zf = zeros(4); zi = fill(iv(0.0), 4)
    tv = zeros(36); snorm = zeros(length(trs)); fkey = zeros(length(trs)); order = collect(1:length(trs))
    # stack of (centre, half-side, depth, hint)
    stack = Tuple{NTuple{4,Float64},Float64,Int,Int}[]
    hs0 = rho / 4
    for a in 0:3, b in 0:3, c in 0:3, d in 0:3
        z = (-rho + (2a + 1) * hs0, -rho + (2b + 1) * hs0, -rho + (2c + 1) * hs0, -rho + (2d + 1) * hs0)
        push!(stack, (z, hs0, 0, 0))
    end
    while !isempty(stack)
        z, hs, depth, hint = pop!(stack)
        nboxes += 1; maxdepth = max(maxdepth, depth)
        # (i) outside the ball ||eta|| <= rH
        dist2 = sum(max(0.0, abs(z[k]) - hs)^2 for k in 1:4)
        if dist2 > rH^2 * (1 + 1e-12)
            di = sum(max(iv(0.0), abs(iv(z[k])) - iv(hs))^2 for k in 1:4)
            if inf(di) > sup(iv(rH)^2)
                noffball += 1; continue
            end
        end
        # (ii) off the shell R - n <= ||T eta|| <= R + n
        for k in 1:4
            zf[k] = z[k]; zi[k] = iv(z[k])
        end
        mul!(v, Tf, zf)
        lo = infnorm_f(v, Tnorm, Trowf, hs); hi = supnorm_f(v, Tnorm, Trowf, hs)
        if lo > R + n + 1e-12 || hi < R - n - 1e-12
            vi = Ti * zi
            loi = infnorm_i(vi, Tnorm, Trow, hs); hii = supnorm_i(vi, Tnorm, Trow, hs)
            if loi > sup(iv(R) + iv(n)) || hii < inf(iv(R) - iv(n))
                noffshell += 1; continue
            end
        end
        # (iii) transfer: sup ||c + M eta|| + n < R_t
        # float sup bound per target (the order in which targets are tried)
        for (k, tr) in enumerate(trs)
            mul!(tv, tr.Mf, zf)                     # the product tr.Mf * zf
            tv .= tr.cf .+ tv
            snorm[k] = supnorm_f(tv, tr.Mnorm, tr.Mrowf, hs)
            fkey[k] = snorm[k] + n - tr.Rt
        end
        sortperm!(order, fkey)
        done = false
        for k in order
            tr = trs[k]
            fv = snorm[k] + n
            fv < tr.Rt - 1e-12 || break
            vi = tr.ci .+ tr.Mi * zi
            s = supnorm_i(vi, tr.Mnorm, tr.Mrow, hs)
            if sup(iv(s) + iv(n)) < tr.Rt
                ntransfer += 1; push!(used, tr.t); done = true; break
            end
        end
        done && continue
        # refine
        if hs >= minside   # child side = hs >= R/minfrac
            h2 = hs / 2
            for ch in 0:15
                zc = ntuple(k -> z[k] + (((ch >> (k - 1)) & 1) == 1 ? h2 : -h2), 4)
                push!(stack, (zc, h2, depth + 1, 0))
            end
        else
            failmsg = "box at depth $depth centre $(z) side $(2hs) neither off-shell nor transferred"
            return BoundaryResult(false, failmsg, nboxes, noffball, noffshell, ntransfer, maxdepth, sort(collect(used)), time() - t0)
        end
    end
    BoundaryResult(true, "ok", nboxes, noffball, noffshell, ntransfer, maxdepth, sort(collect(used)), time() - t0)
end

# ---------------------------------------------------------------- nonemptiness

using Base.Iterators: product

function permutations6()
    out = Vector{Int}[]
    function rec(p, rest)
        isempty(rest) && (push!(out, copy(p)); return)
        for x in rest
            push!(p, x); rec(p, setdiff(rest, [x])); pop!(p)
        end
    end
    rec(Int[], collect(1:6))
    out
end

"""Pre-filter for the F6 search of `nonempty_F6` (a float minimum; it only decides which Records get the full search).

For an alignment (rp, cp) that search takes D = A F6 - P, its dephasing D' = D - D[:,1] - D[1,:] + D[1,1], the winding
N = round(D'/2 pi) and the float value of ||h(D - 2 pi N)||.  Since h kills row-plus-column patterns this is ||h(W)|| with
W = D' - 2 pi N, i.e. D' wrapped entrywise into [-pi, pi].  With a = rp - 1 and b = cp - 1 (0-based), F6 has entries
(2 pi/6) a_j b_c mod 2 pi, so (A F6)'[j,c] = (2 pi/6)(a_j - a_1)(b_c - b_1) mod 2 pi: W depends only on
alpha = a - a_1 and beta = b - b_1 mod 6, two permutations of 0:5 that fix 0.  So 120 x 120 classes replace the 720^2
alignments.  Returns the least float ||h(W)|| over the classes, computed as ||W||^2 - sum_j r_j^2/6 - sum_c s_c^2/6 + t^2/36
(r, s, t the row, column and total sums of W), and whether some D'/2 pi lay within 1e-9 of a half-integer, where the
rounding of N could go either way.  Away from such ties the two float evaluations of each ||h(W)|| differ by rounding
errors of order 1e-13."""
function f6_class_min(P::Matrix{Float64}, cls=[p .- 1 for p in permutations6() if p[1] == 1])   # cls: perms fixing 0
    Pp = [P[j, c] - P[j, 1] - P[1, c] + P[1, 1] for j in 1:6, c in 1:6]
    F6v = [k * (2π / 6) for k in 0:5]
    best = Inf; tie = false
    W = zeros(6, 6)
    for al in cls, be in cls
        n2 = 0.0
        @inbounds for j in 1:6, c in 1:6
            d = F6v[mod(al[j] * be[c], 6)+1] - Pp[j, c]
            x = d / (2π); r = round(x)
            abs(abs(x - r) - 0.5) < 1e-9 && (tie = true)
            W[j, c] = d - 2π * r
            n2 += W[j, c]^2
        end
        t = 0.0
        @inbounds for j in 1:6
            rj = 0.0; sj = 0.0
            for c in 1:6
                rj += W[j, c]; sj += W[c, j]
            end
            n2 -= (rj^2 + sj^2) / 6; t += rj
        end
        best = min(best, sqrt(max(0.0, n2 + t^2 / 36)))
    end
    best, tie
end

"""Find (t, alignment, N) with ||h(A F6 + 2 pi N - P_t)|| < R_t, certified in intervals.  `cands` = record indices
(1-based) allowed (closed records whose Step 3 passed)."""
function nonempty_F6(recs::Vector{Rec}, cands::Vector{Int})
    F6k = [mod(j * k, 6) for j in 0:5, k in 0:5]
    F6f = F6k .* (2π / 6)
    perms = permutations6()
    cls = [p .- 1 for p in perms if p[1] == 1]
    results = []
    lk = ReentrantLock()
    # Threaded over candidate records, one Record at a time per thread: only the search is parallel; each acceptance
    # is the interval test below.
    Threads.@threads :greedy for ti in cands
        P = recs[ti].P
        # The exhaustive search below reports a Record only if its float minimum is < R_t.  The class minimum equals that
        # minimum up to rounding (f6_class_min), so a Record with class minimum >= R_t + 1e-6 and no rounding tie
        # would not be reported, and is skipped.  (This replaces a screen on the dephased phases, |rem(P', 2 pi/6)| < 1,
        # which never excluded anything: |rem(x, 2 pi/6, RoundNearest)| <= pi/6 < 1.)
        cmin, tie = f6_class_min(P, cls)
        (tie || cmin < recs[ti].R + 1e-6) || continue
        best = (Inf, 0, false, Int[], Int[])
        # F6 is symmetric and its conjugate is a column permutation of it (mod 2 pi), so sign = +1, tr = false
        # lose nothing; the certified check below uses whatever alignment is found.
        for sign in (1,), tr in (false,), rp in perms, cp in perms
            AF = align(F6f, sign, tr, rp, cp)
            D = AF .- P
            Dp = [D[j, c] - D[j, 1] - D[1, c] + D[1, 1] for j in 1:6, c in 1:6]
            nrm = sqrt(sum(abs2, hproj_f(D .- 2π .* round.(Dp ./ (2π)))))
            nrm < best[1] && (best = (nrm, sign, tr, rp, cp))
        end
        best[1] < recs[ti].R || continue
        _, sign, tr, rp, cp = best
        AFk = align(F6k, sign, tr, rp, cp)       # integer numerators, sign applied
        AFi = [TWOPI_I * iv(AFk[j, k]) / iv(6.0) for j in 1:6, k in 1:6]
        Df = mid.(AFi) .- P
        N, _ = choose_winding(Df)
        Di = [AFi[j, k] - iv(P[j, k]) + TWOPI_I * iv(N[j, k]) for j in 1:6, k in 1:6]
        c = hproj(Di)
        d = sqrt(sum(x^2 for x in c))
        lock(lk) do
            push!(results, (ti - 1, sup(d), recs[ti].R, sup(d) < recs[ti].R, sign, tr, rp .- 1, cp .- 1))
        end
    end
    sort!(results, by = x -> x[1])
    results
end
