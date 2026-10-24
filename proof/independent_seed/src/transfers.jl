# Claim C2 (SPEC §4): boundary transfers of seed balls (T0, T1, T2) and of records (rec, T1'), and the coverage of
# each boundary (the sphere ||w|| = r of a seed ball, the shell of a record) by the certificate's closed boxes.
#
# Every transfer is decided in interval arithmetic.  A box whose transfer fails as a whole is split into its 16 halves
# (all into the same target), down to `split_depth` levels: the claim is universal over the box, so it may be proved
# piece by piece.

# ---------------------------------------------------------------- linear algebra helpers

"""Interval enclosure of M^{-1} for a float matrix M: X = inv(M) in floats, E = I - X M in intervals, q = ||E||_inf;
if q < 1 then M^{-1} = sum_k E^k X lies entrywise within q/(1 - q) ||X||_inf of X."""
function inv_enclosure(M::Matrix{Float64})
    n = size(M, 1)
    X = inv(M)
    Mi = iv.(M); Xi = iv.(X)
    E = [iv(i == k ? 1.0 : 0.0) for i in 1:n, k in 1:n] - Xi * Mi
    q = maximum(sup(sum(iv(mag(E[i, k])) for k in 1:n)) for i in 1:n)
    q < 1 || return nothing
    nX = maximum(sup(sum(iv(abs(X[i, k])) for k in 1:n)) for i in 1:n)
    d = sup(iv(q) / (iv(1.0) - iv(q)) * iv(nX))
    [Xi[i, k] + interval(-d, d) for i in 1:n, k in 1:n]
end

"""Box {lo <= w <= hi} as an interval centre and half-widths h_j >= (hi_j - lo_j)/2."""
function box_dom(lo::NTuple{4,Float64}, hi::NTuple{4,Float64})
    wc = ntuple(j -> (iv(lo[j]) + iv(hi[j])) / iv(2.0), 4)
    h = ntuple(j -> sup((iv(hi[j]) - iv(lo[j])) / iv(2.0)), 4)
    wc, h
end

"""The 16 halves of a box (exact: the midpoints are floats and the halves share them)."""
function split_box(lo::NTuple{4,Float64}, hi::NTuple{4,Float64})
    m = ntuple(j -> (lo[j] + hi[j]) / 2, 4)
    out = Tuple{NTuple{4,Float64},NTuple{4,Float64}}[]
    for ch in 0:15
        bits = ntuple(j -> (ch >> (j - 1)) & 1 == 1, 4)
        push!(out, (ntuple(j -> bits[j] ? m[j] : lo[j], 4), ntuple(j -> bits[j] ? hi[j] : m[j], 4)))
    end
    out
end

"""Model matrix from 36 row-major models."""
mat6(Q::Vector{TM{T}}) where {T} = [Q[6(a-1)+b] for a in 1:6, b in 1:6]

"""g . (phase matrix): id, conj (negate), T (transpose), conjT."""
function gact(X::Matrix{TM{T}}, g::Symbol) where {T}
    Y = g in (:T, :conjT) ? permutedims(X) : X
    g in (:conj, :conjT) ? map(-, Y) : Y
end

"""Dephased corner seed of the phase matrix X at rows I = (i0, i1, i2), columns J = (j0, j1, j2):
theta'_1 <-> (i1, j1), theta'_2 <-> (i1, j2), theta'_3 <-> (i2, j1), theta'_4 <-> (i2, j2)."""
function corner_seed(X::Matrix{TM{T}}, I::NTuple{3,Int}, J::NTuple{3,Int}) where {T}
    d(a, b) = X[I[a], J[b]] - X[I[a], J[1]] - X[I[1], J[b]] + X[I[1], J[1]]
    [d(2, 2), d(2, 3), d(3, 2), d(3, 3)]
end

"""K[I, J^c] (horizontal side block) and K[I^c, J] (vertical side block) of a phase matrix."""
function corner_blocks(X::Matrix{TM{T}}, I::NTuple{3,Int}, J::NTuple{3,Int}) where {T}
    Ic = [k for k in 1:6 if !(k in I)]; Jc = [k for k in 1:6 if !(k in J)]
    X[collect(I), Jc], X[Ic, collect(J)]
end

"""sup over the box of ||Minv (theta' - theta0_t + 2 pi N)||, for seed models theta' (4 models), plus `extra`."""
function seed_landing(thp::Vector{TM{I64}}, t::Seed, Minv::Matrix{I64}, D::Dom)
    N = [round((t.theta0[k] - mid(thp[k].c)) / (2π)) for k in 1:4]
    v = [addc(thp[k], TWOPI_I * iv(N[k]) - iv(t.theta0[k])) for k in 1:4]
    w = [lincomb(Minv[i, :], v) for i in 1:4]
    vecnorm_sup(w, D)
end

# ---------------------------------------------------------------- seed-sphere transfers

struct XferCtx
    seeds::Vector{Seed}
    records::Vector{SRecord}
    minv::Vector{Union{Nothing,Matrix{I64}}}       # enclosures of Mth^{-1}, per seed
end

XferCtx(C::SeedCert) = XferCtx(C.seeds, C.records, Union{Nothing,Matrix{I64}}[inv_enclosure(s.Mth) for s in C.seeds])

"""T0: all 16 vertices of the parallelotope theta_s(box) satisfy ||Mth_t^{-1}(theta - theta0_t + 2 pi N)|| < r_t for one
N in Z^4, and o_t = o_s.  E_t is convex, so the whole parallelotope then lies in int E_t."""
function check_T0(s::Seed, lo, hi, t::Seed, Minv::Matrix{I64})
    s.o == t.o || return false, "T0: orientation of the target differs", Inf
    wm = ntuple(j -> (lo[j] + hi[j]) / 2, 4)
    thc = theta_f(s.theta0, s.Mth, wm)
    N = [round((t.theta0[k] - thc[k]) / (2π)) for k in 1:4]
    worst = 0.0
    for vb in 0:15
        v = ntuple(j -> (vb >> (j - 1)) & 1 == 1 ? hi[j] : lo[j], 4)
        th = [iv(s.theta0[k]) + sum(iv(s.Mth[k, j]) * iv(v[j]) for j in 1:4) for k in 1:4]
        d = [th[k] - iv(t.theta0[k]) + TWOPI_I * iv(N[k]) for k in 1:4]
        w = Minv * d
        worst = max(worst, sup(sqrt(sum(x^2 for x in w))))
    end
    worst < t.r ? (true, "ok", worst) : (false, @sprintf("T0: %.6g >= r_t = %.6g", worst, t.r), worst)
end

"""T1: with K = g . H_{o_s}(theta), theta in the box: the corner seed of K at (I, J) lands in int E_t, and the sides of K
at that corner have orientation o_t and are matched."""
function check_T1(Q::Vector{TM{I64}}, D::Dom, x::Xfer, t::Seed, Minv::Matrix{I64})
    K = gact(mat6(Q), x.g)
    thp = corner_seed(K, x.rows, x.cols)
    land = seed_landing(thp, t, Minv, D)
    land < t.r || return false, @sprintf("T1: landing %.6g >= r_t = %.6g", land, t.r), land
    Bh, Bv = corner_blocks(K, x.rows, x.cols)
    imsign(psi_model(Bh, D), D) == t.o || return false, "T1: orientation of K's horizontal side != o_t", land
    imsign(psi_model(Bv, D), D) == -t.o || return false, "T1: K's vertical side not matched", land
    true, "ok", land
end

"""A(X) = sign (tr ? X^T : X)[rp, cp], entry (i, j) = sign Y[rp[i], cp[j]]."""
function align_models(X::Matrix{TM{T}}, sign::Int, tr::Bool, rp, cp) where {T}
    Y = tr ? permutedims(X) : X
    [sign == 1 ? Y[rp[i], cp[j]] : -Y[rp[i], cp[j]] for i in 1:6, j in 1:6]
end

"""h of a 6 x 6 matrix of models (row means, column means and the total mean removed), in interval coefficients."""
function hproj_models(Z::Matrix{TM{I64}})
    s6 = iv(1.0) / iv(6.0); s36 = iv(1.0) / iv(36.0)
    rs = [reduce(+, Z[a, :]) for a in 1:6]; cs = [reduce(+, Z[:, b]) for b in 1:6]
    tot = reduce(+, rs)
    [Z[a, b] - scale(rs[a], s6) - scale(cs[b], s6) + scale(tot, s36) for a in 1:6, b in 1:6]
end

"""T2: sup over the box of ||h(A(g . Q) + 2 pi N - P_t)|| < R_t.  The polynomial part is projected and bounded by
vecnorm_sup; the remainders enter as ||(r_e)||_2, since ||h(e)|| <= ||e||."""
function check_T2(Q::Vector{TM{I64}}, D::Dom, x::Xfer, rec::IA.Rec)
    A = align_models(mat6(Q), x.sign, x.tr, x.rp, x.cp)
    Pt = rec.P
    if length(x.wind) == 36
        N = [Float64(x.wind[6(a-1)+b]) for a in 1:6, b in 1:6]
    else
        N, _ = IA.choose_winding([mid(A[a, b].c) - Pt[a, b] for a in 1:6, b in 1:6])
    end
    Z = [addc(polypart(A[a, b]), TWOPI_I * iv(N[a, b]) - iv(Pt[a, b])) for a in 1:6, b in 1:6]
    Xh = hproj_models(Z)
    rem = sup(sqrt(sum(iv(A[a, b].r)^2 for a in 1:6, b in 1:6)))
    val = sup(iv(vecnorm_sup(vec(permutedims(Xh)), D)) + iv(rem))
    val < rec.R ? (true, "ok", val) : (false, @sprintf("T2: %.6g >= R_t = %.6g", val, rec.R), val)
end

"""Check one seed-sphere transfer on the box [lo, hi] (no splitting).  rec_ok(t): record t passed Step 3."""
function check_seed_xfer_box(s::Seed, root::BoxMap, x::Xfer, lo, hi, X::XferCtx, rec_ok::Function)
    if x.kind == :T0
        (0 <= x.target < length(X.seeds)) || return false, "T0: no such seed", Inf
        Mi = X.minv[x.target+1]; Mi === nothing && return false, "T0: target Mth not invertible", Inf
        return check_T0(s, lo, hi, X.seeds[x.target+1], Mi)
    end
    wc, h = box_dom(lo, hi)
    wcm = ntuple(j -> mid(wc[j]), 4)
    gh, gv = guess_at(root, wcm)
    bm = box_map(s.theta0, s.Mth, s.o, s.P, wc, h, gh, gv)
    bm.ok || return false, string(x.kind) * ": " * bm.why, Inf
    D = Dom(h)
    if x.kind == :T1
        (0 <= x.target < length(X.seeds)) || return false, "T1: no such seed", Inf
        Mi = X.minv[x.target+1]; Mi === nothing && return false, "T1: target Mth not invertible", Inf
        return check_T1(bm.Q, D, x, X.seeds[x.target+1], Mi)
    elseif x.kind == :T2
        (0 <= x.target < length(X.records)) || return false, "T2: no such record", Inf
        rec_ok(x.target) || return false, "T2: target record did not pass Step 3", Inf
        return check_T2(bm.Q, D, x, X.records[x.target+1].rec)
    end
    false, "unknown kind", Inf
end

"""Check a transfer, splitting its box into halves (same target) where the whole box fails."""
function check_with_split(f::Function, lo, hi, depth::Int, split_depth::Int, stats)
    ok, msg, val = f(lo, hi)
    stats[1] += 1
    ok && return true, msg, val
    depth < split_depth || return false, msg, val
    stats[2] += 1
    worst = 0.0
    for (lo2, hi2) in split_box(lo, hi)
        ok2, msg2, v2 = check_with_split(f, lo2, hi2, depth + 1, split_depth, stats)
        ok2 || return false, msg2, v2
        worst = max(worst, v2)
    end
    true, "ok (split)", worst
end

# ---------------------------------------------------------------- coverage of a boundary by closed boxes

struct Box4
    lo::NTuple{4,Float64}
    hi::NTuple{4,Float64}
end
contains(B::Box4, C::Box4) = all(B.lo[j] <= C.lo[j] && C.hi[j] <= B.hi[j] for j in 1:4)
overlaps(B::Box4, C::Box4) = all(B.lo[j] < C.hi[j] && C.lo[j] < B.hi[j] for j in 1:4)
withlo(C::Box4, d, v) = Box4(ntuple(j -> j == d ? v : C.lo[j], 4), C.hi)
withhi(C::Box4, d, v) = Box4(C.lo, ntuple(j -> j == d ? v : C.hi[j], 4))

"""Every point of the region inside `cell` lies in the union of the closed boxes.  `meets(cell)` must return false
only when the cell certainly misses the region.  Box subtraction: take a box overlapping the cell, recurse on the (at
most 8) slabs of the cell outside it, with the other boxes; a cell inside one box is covered.  A cell that meets the
region but overlaps no box is bisected (the region test may be loose) down to `bisect` levels before failing."""
function covered(cell::Box4, boxes::Vector{Box4}, cand::Vector{Int}, meets::Function, bisect::Int, stats)
    stats[1] += 1
    stats[1] > 50_000_000 && return false
    meets(cell) || return true
    cand2 = [i for i in cand if overlaps(boxes[i], cell)]
    for i in cand2
        contains(boxes[i], cell) && return true
    end
    if isempty(cand2)
        bisect > 0 || return false
        d = argmax([cell.hi[j] - cell.lo[j] for j in 1:4])
        m = (cell.lo[d] + cell.hi[d]) / 2
        (cell.lo[d] < m < cell.hi[d]) || return false
        return covered(withhi(cell, d, m), boxes, cand2, meets, bisect - 1, stats) &&
               covered(withlo(cell, d, m), boxes, cand2, meets, bisect - 1, stats)
    end
    b = boxes[cand2[1]]
    rest = cand2[2:end]
    cur = cell
    for d in 1:4
        if b.lo[d] > cur.lo[d]
            covered(withhi(cur, d, b.lo[d]), boxes, rest, meets, bisect, stats) || return false
            cur = withlo(cur, d, b.lo[d])
        end
        if b.hi[d] < cur.hi[d]
            covered(withlo(cur, d, b.hi[d]), boxes, rest, meets, bisect, stats) || return false
            cur = withhi(cur, d, b.hi[d])
        end
    end
    true
end

"""Does the closed box possibly meet the sphere ||w|| = r?  (false only if certainly not)"""
function meets_sphere(c::Box4, r::Float64)
    lo2 = iv(0.0); hi2 = iv(0.0)
    for j in 1:4
        a = iv(c.lo[j]); b = iv(c.hi[j])
        dmin = c.lo[j] > 0 ? a : c.hi[j] < 0 ? -b : iv(0.0)
        lo2 += dmin^2
        hi2 += max(a^2, b^2)
    end
    r2 = iv(r)^2
    !(inf(lo2) > sup(r2) || sup(hi2) < inf(r2))
end

"""Does the closed box possibly meet the shell {eta : R^2 - n^2 <= ||T eta||^2 <= R^2}?"""
function meets_shell(c::Box4, Ti::Matrix{I64}, R::Float64, n::Float64)
    zc = ntuple(j -> (iv(c.lo[j]) + iv(c.hi[j])) / iv(2.0), 4)
    h = ntuple(j -> (iv(c.hi[j]) - iv(c.lo[j])) / iv(2.0), 4)
    # upper: max over the vertices (||T eta|| is convex)
    up = 0.0
    for vb in 0:15
        v = ntuple(j -> iv((vb >> (j - 1)) & 1 == 1 ? c.hi[j] : c.lo[j]), 4)
        up = max(up, sup(sqrt(sum((sum(Ti[e, j] * v[j] for j in 1:4))^2 for e in 1:36))))
    end
    # lower: entrywise |(T eta)_e| >= |(T zc)_e| - sum_j |T_ej| h_j
    lo2 = iv(0.0)
    for e in 1:36
        x = sum(Ti[e, j] * zc[j] for j in 1:4)
        s = sum(iv(mag(Ti[e, j])) * h[j] for j in 1:4)
        lo2 += max(iv(0.0), iv(mig(x)) - s)^2
    end
    lo = inf(sqrt(lo2))
    inner = iv(R)^2 - iv(n)^2
    !(lo > R || (inf(inner) > 0 && up^2 < inf(inner)))
end

# ---------------------------------------------------------------- C2 for a seed ball

struct C2Result
    ok::Bool
    msg::String
    nxfer::Int
    counts::Dict{Symbol,Int}
    nchecks::Int          # transfer checks run (including split halves)
    nsplit::Int
    worst::Dict{Symbol,Float64}   # worst landing value per kind (T0/T1: ||w_t|| vs r_t; T2: vs R_t)
    cover_nodes::Int
    seconds::Float64
end

function check_c2_seed(s::Seed, X::XferCtx, rec_ok::Function; split_depth::Int=2, bisect::Int=8)
    t0 = time()
    counts = Dict(:T0 => 0, :T1 => 0, :T2 => 0); worst = Dict(:T0 => 0.0, :T1 => 0.0, :T2 => 0.0)
    nx = length(s.xfers)
    fail(msg, cn=0) = C2Result(false, msg, nx, counts, 0, 0, worst, cn, time() - t0)
    # coverage of the sphere ||w|| = r by the closed boxes
    boxes = [Box4(x.lo, x.hi) for x in s.xfers]
    cst = [0]
    cov = covered(Box4(ntuple(_ -> -s.r, 4), ntuple(_ -> s.r, 4)), boxes, collect(1:nx), c -> meets_sphere(c, s.r), bisect, cst)
    cov || return fail("the transfer boxes do not cover the sphere ||w|| = r", cst[1])
    root = root_predictor(s)
    root === nothing && return fail("no float side solution at theta0", cst[1])
    st = [0, 0]
    for (i, x) in enumerate(s.xfers)
        f = (lo, hi) -> check_seed_xfer_box(s, root, x, lo, hi, X, rec_ok)
        ok, msg, val = check_with_split(f, x.lo, x.hi, 0, x.kind == :T0 ? 0 : split_depth, st)
        ok || return C2Result(false, "transfer $(i-1) ($(x.kind) -> $(x.target)): " * msg, nx, counts, st[1], st[2], worst, cst[1], time() - t0)
        counts[x.kind] += 1; worst[x.kind] = max(worst[x.kind], val)
    end
    C2Result(true, "ok", nx, counts, st[1], st[2], worst, cst[1], time() - t0)
end

# ---------------------------------------------------------------- C2 for a record (rec and T1' boxes)

"""Record data used by its boundary checks: the exact frame (interval), n, r_H, and ||Minv_t L||-type constants."""
struct RecCtx
    Ti::Matrix{I64}
    n::Float64
    rH::Float64
end

"""The corner map L (4 x 36, entries 0, +-1) of the corner (I, J): theta' = L vec(X) (row-major)."""
function corner_L(I::NTuple{3,Int}, J::NTuple{3,Int})
    L = zeros(4, 36)
    at(a, b) = 6(a - 1) + b
    for (k, (a, b)) in enumerate(((2, 2), (2, 3), (3, 2), (3, 3)))
        L[k, at(I[a], J[b])] += 1; L[k, at(I[a], J[1])] -= 1; L[k, at(I[1], J[b])] -= 1; L[k, at(I[1], J[1])] += 1
    end
    L
end
"""g acting on a row-major 36-vector of phases, as a signed permutation matrix (36 x 36)."""
function g_matrix(g::Symbol)
    G = zeros(36, 36)
    for a in 1:6, b in 1:6
        src = g in (:T, :conjT) ? 6(b - 1) + a : 6(a - 1) + b
        G[6(a-1)+b, src] = g in (:conj, :conjT) ? -1.0 : 1.0
    end
    G
end

"""T1': every K = e^{i(P + T eta + nu)}, eta in the box, ||nu|| <= n: the corner seed of g . K at (I, J) lands in
int E_t, and its sides there have orientation o_t and are matched.  The phases of g . K are g(P + T eta) + g nu; the
models carry the per-entry remainder |nu_e| <= n (for Psi), and the landing adds ||Minv_t L g||_2 n for the nu part
of theta' (no assumption on nu beyond ||nu|| <= n)."""
function check_T1p(rec::IA.Rec, rc::RecCtx, lo, hi, x::Xfer, t::Seed, Minv::Matrix{I64})
    zc, h = box_dom(lo, hi)
    D = Dom(h)
    Q = [TM{I64}(iv(rec.P[a, b]) + sum(rc.Ti[6(a-1)+b, j] * zc[j] for j in 1:4), ntuple(j -> rc.Ti[6(a-1)+b, j], 4),
                 ntuple(_ -> iv(0.0), 10), rc.n) for a in 1:6 for b in 1:6]
    K = gact(mat6(Q), x.g)
    thp = corner_seed(map(polypart, K), x.rows, x.cols)
    land0 = seed_landing(thp, t, Minv, D)
    ML = Minv * iv.(corner_L(x.rows, x.cols) * g_matrix(x.g))
    land = sup(iv(land0) + iv(IA.opnorm_upper(ML)) * iv(rc.n))
    land < t.r || return false, @sprintf("T1': landing %.6g >= r_t = %.6g", land, t.r), land
    Bh, Bv = corner_blocks(K, x.rows, x.cols)
    imsign(psi_model(Bh, D), D) == t.o || return false, "T1': orientation of K's horizontal side != o_t", land
    imsign(psi_model(Bv, D), D) == -t.o || return false, "T1': K's vertical side not matched", land
    true, "ok", land
end

"""rec: the current record-to-record transfer, sup_box ||c + M eta|| + n_s < R_t (COVERAGE.md lemma), with c and M from
the existing make_transfer (its own winding); the sup of the affine norm is taken over the 16 vertices (exact)."""
function check_rec(src::IA.Rec, rc::RecCtx, lo, hi, x::Xfer, dst::IA.Rec)
    tr = IA.make_transfer(src, rc.Ti, IA.Target(x.target, x.sign, x.tr, x.rp, x.cp), dst)
    worst = 0.0
    for vb in 0:15
        v = [iv((vb >> (j - 1)) & 1 == 1 ? hi[j] : lo[j]) for j in 1:4]
        y = tr.ci .+ tr.Mi * v
        worst = max(worst, sup(sqrt(sum(z^2 for z in y))))
    end
    val = sup(iv(worst) + iv(rc.n))
    val < dst.R ? (true, "ok", val) : (false, @sprintf("rec: %.6g >= R_t = %.6g", val, dst.R), val)
end

function check_c2_record(sr::SRecord, nb::IA.NormalBound, X::XferCtx, rec_ok::Function; split_depth::Int=2, bisect::Int=12)
    t0 = time()
    rec = sr.rec
    rc = RecCtx(IA.frame_interval(nb.T36), nb.n, nb.rH)
    counts = Dict(:rec => 0, :T1p => 0); worst = Dict(:rec => 0.0, :T1p => 0.0)
    nx = length(sr.xfers)
    boxes = [Box4(x.lo, x.hi) for x in sr.xfers]
    rho = sup(iv(nb.rH)) * (1 + 1e-12)
    cst = [0]
    cov = covered(Box4(ntuple(_ -> -rho, 4), ntuple(_ -> rho, 4)), boxes, collect(1:nx),
                  c -> meets_shell(c, rc.Ti, rec.R, nb.n), bisect, cst)
    cov || return C2Result(false, "the boxes do not cover the shell", nx, counts, 0, 0, worst, cst[1], time() - t0)
    st = [0, 0]
    for (i, x) in enumerate(sr.xfers)
        if x.kind == :rec
            (0 <= x.target < length(X.records)) || return C2Result(false, "box $(i-1): no such record", nx, counts, st[1], st[2], worst, cst[1], time() - t0)
            rec_ok(x.target) || return C2Result(false, "box $(i-1): target record $(x.target) did not pass Step 3", nx, counts, st[1], st[2], worst, cst[1], time() - t0)
            f = (lo, hi) -> check_rec(rec, rc, lo, hi, x, X.records[x.target+1].rec)
        else
            (0 <= x.target < length(X.seeds)) || return C2Result(false, "box $(i-1): no such seed", nx, counts, st[1], st[2], worst, cst[1], time() - t0)
            Mi = X.minv[x.target+1]
            Mi === nothing && return C2Result(false, "box $(i-1): target Mth not invertible", nx, counts, st[1], st[2], worst, cst[1], time() - t0)
            f = (lo, hi) -> check_T1p(rec, rc, lo, hi, x, X.seeds[x.target+1], Mi)
        end
        ok, msg, val = check_with_split(f, x.lo, x.hi, 0, split_depth, st)
        ok || return C2Result(false, "box $(i-1) ($(x.kind) -> $(x.target)): " * msg, nx, counts, st[1], st[2], worst, cst[1], time() - t0)
        counts[x.kind] += 1; worst[x.kind] = max(worst[x.kind], val)
    end
    C2Result(true, "ok", nx, counts, st[1], st[2], worst, cst[1], time() - t0)
end
